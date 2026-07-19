#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Navicat
# @raycast.mode compact
#
# Optional parameters:
# @raycast.icon 烙

# Documentation:
# @raycast.description To open navicat and reset trial
# @raycast.author Thuymm

set -e

VERBOSE=false
[[ "${1:-}" == "1" ]] && VERBOSE=true

echov() {
  $VERBOSE && echo "$@" || true
}

# ── 1. Detect version ──────────────────────────────────────────────────────
echov ""
echov "▶️  Step 1: Detecting Navicat Premium version..."

plist_file="/Applications/Navicat Premium.app/Contents/Info.plist"
if [[ ! -f "$plist_file" ]]; then
  echo "❌ Navicat Premium is not installed at /Applications" >&2
  exit 1
fi

raw=$(defaults read "$plist_file")
echov "   ✅ Info.plist read successfully"

regex='CFBundleShortVersionString = "([0-9]+)'
if [[ ! $raw =~ $regex ]]; then
  echo "❌ Could not extract version number" >&2
  exit 1
fi

version="${BASH_REMATCH[1]}"
echov "   ✅ Detected major version: $version"

# ── 2. Pick service name ──────────────────────────────────────────────────
echov ""
echov "▶️  Step 2: Selecting service name..."

case $version in
  18|17|16)
    svc="com.navicat.NavicatPremium"
    echov "   → Using: $svc"
    ;;
  15)
    svc="com.prect.NavicatPremium15"
    echov "   → Using: $svc"
    ;;
  *)
    echo "❌ Version '$version' not handled" >&2
    exit 1
    ;;
esac

prefs="$HOME/Library/Preferences/${svc}.plist"

# ── 3. Delete .plist hash ─────────────────────────────────────────────────
echov ""
echov "▶️  Step 3: Resetting preferences .plist..."

if [[ -f "$prefs" ]]; then
  content=$(defaults read "$prefs" 2>/dev/null || true)
  hash1=$(echo "$content" | grep -oE '\b[0-9A-Z]{32}\b' | head -1 || true)

  if [[ -n "$hash1" ]]; then
    echov "   🔑 Found hash: $hash1"
    defaults delete "$prefs" "$hash1" 2>/dev/null && echov "   ✅ Hash deleted" || echov "   ⚠️  Could not delete hash"
  else
    echov "   ℹ️  No 32-char hash found in .plist (already clean)"
  fi
else
  echov "   ℹ️  .plist file not found: $prefs"
fi

# ── 4. Delete Application Support hash file ───────────────────────────────
echov ""
echov "▶️  Step 4: Cleaning Application Support directory..."

support="$HOME/Library/Application Support/PremiumSoft CyberTech/Navicat CC/Navicat Premium/"

if [[ -d "$support" ]]; then
  hash2=$(ls -a "$support" 2>/dev/null | grep -oE '\.([0-9A-Z]{32})' | head -1 || true)

  if [[ -n "$hash2" ]]; then
    echov "   🔑 Found hash file: $hash2"
    rm -f "${support}${hash2}" && echov "   ✅ Hash file deleted" || echov "   ⚠️  Could not delete"
  else
    echov "   ℹ️  No hash file found in Application Support (already clean)"
  fi
else
  echov "   ℹ️  Directory not found: $support"
fi

# ── 5. Keychain cleanup (v17.3.7+) ────────────────────────────────────────
echov ""
echov "▶️  Step 5: Checking if keychain cleanup is needed..."

full_version=$(defaults read "$plist_file" CFBundleShortVersionString)
echov "   Full version string: $full_version"

if [[ "$version" == "17" ]]; then
  echov "   → Navicat 17 detected, checking minor/patch..."

  IFS='.' read -ra parts <<< "$full_version"
  minor="${parts[1]:-0}"
  patch="${parts[2]:-0}"
  echov "   Minor: $minor, Patch: $patch"

  if (( minor > 3 )) || { (( minor == 3 )) && (( patch >= 7 )); }; then
    echov "   ✅ v17.3.7+ detected — proceeding with keychain cleanup"

    keychain_db="$HOME/Library/Keychains/login.keychain-db"
    if [[ ! -f "$keychain_db" ]]; then
      echov "   ❌ Keychain database not found at $keychain_db"
    else
      dump=$(security dump-keychain "$keychain_db" 2>/dev/null || true)

      if [[ -z "$dump" ]]; then
        echov "   ⚠️  security dump-keychain returned empty (may need permissions)"
        $VERBOSE && echo "   💡 Try running: security dump-keychain '$keychain_db'"
        $VERBOSE && echo "   💡 If prompted, click 'Always Allow'"
      else
        echov "   ✅ Keychain dump obtained, searching for Navicat entries..."

        acct_hashes=$(echo "$dump" \
          | grep -A5 "$svc" \
          | grep "acct" \
          | grep -oE '\b[0-9A-F]{32}\b' \
          | sort -u || true)

        if [[ -n "$acct_hashes" ]]; then
          $VERBOSE && count=$(echo "$acct_hashes" | wc -l | tr -d ' ')
          echov "   🔑 Found $count keychain entries to delete:"
          while IFS= read -r h; do
            [[ -z "$h" ]] && continue
            echov "   → Deleting: $h"
            security delete-generic-password -s "$svc" -a "$h" 2>/dev/null && \
              echov "     ✅ Deleted" || echov "     ⚠️  Could not delete (may need permissions or already gone)"
          done <<< "$acct_hashes"
        else
          echov "   ℹ️  No keychain entries found for $svc (already clean)"
        fi
      fi
    fi
  else
    echov "   ℹ️  v17.0.x – v17.3.6 detected — keychain cleanup not needed"
  fi
else
  echov "   ℹ️  v$version detected — keychain cleanup only needed on v17.3.7+"
fi

# ── 6. Reopen & dismiss project window ────────────────────────────────────
echov ""
echov "▶️  Step 6: Reopening Navicat Premium..."

open -na 'Navicat Premium.app'
echov "   ⏳ Waiting for Navicat to launch..."

while ! pgrep -x "Navicat Premium" > /dev/null; do
  sleep 0.5
done

echov "   ✅ Navicat Premium is now running"
sleep 0.5

echov "   ⌨️  Dismissing project window (Cmd+W)..."
osascript -e 'tell application "System Events"
  tell application process "Navicat Premium"
    set frontmost to true
    delay 0.3
    keystroke "w" using {command down}
  end tell
end tell'

# ── Done ──────────────────────────────────────────────────────────────────
echov ""
echov "═══════════════════════════════════════════"
echov "✅ Done! Trial has been reset."
echov "═══════════════════════════════════════════"