#!/usr/bin/env bash

set -e

# This file contains settings for mac which makes me happy.
# It is not a full list.
#
# The best resource of finding new settings for other users is:
# https://www.defaults-write.com
#
# Some parts are taken from:
# - https://github.com/rootbeersoup/dotfiles
# - https://github.com/skwp/dotfiles
#
# All values are sorted inside their blocks: newest are on the top.
#

echo 'Configuring your mac. Hang tight.'
osascript -e 'tell application "System Preferences" to quit'


# === General ===

# Hide remaining battery time; show percentage
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
defaults write com.apple.menuextra.battery ShowTime -string "NO"

# Disable dashboard:
defaults write com.apple.dashboard mcx-disabled -bool true

# Disable startup noise:
sudo nvram SystemAudioVolume=%01

# Scrollbars visible when scrolling:
defaults write NSGlobalDomain AppleShowScrollBars -string "WhenScrolling"

# Always use expanded save dialog:
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# This line deactivates rubber scrolling:
# http://osxdaily.com/2012/05/10/disable-elastic-rubber-band-scrolling-in-mac-os-x/
defaults write -g NSScrollViewRubberbanding -int 0

# Maximize windows on double clicking them:
defaults write -g AppleActionOnDoubleClick 'Maximize'

# Disable multitouch swipes:
defaults write -g AppleEnableSwipeNavigateWithScrolls -int 0

# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0


# === Dock ===

# Size:
defaults write com.apple.dock tilesize -int 56

# Show indicator lights for open apps in Dock:
defaults write com.apple.dock show-process-indicators -bool true

# Dock size and location:
defaults write com.apple.Dock size-immutable -bool yes

# Show Dock instantly:
defaults write com.apple.dock autohide-delay -float 0

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true


# === Menu bar ===

# Make status icons smaller, so they will take less space:
# https://flaky.build/built-in-workaround-for-applications-hiding-under-the-macbook-pro-notch
defaults write -globalDomain NSStatusItemSelectionPadding -int 12
defaults write -globalDomain NSStatusItemSpacing -int 12


# === Finder ===

# Keep folders on top when sorting by name:
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Show Finder path bar:
defaults write com.apple.finder ShowPathbar -bool false

# Do not show status bar in Finder:
defaults write com.apple.finder ShowStatusBar -bool true

# Show hidden files in Finder:
defaults write com.apple.finder AppleShowAllFiles -bool true

# Show file extensions in Finder:
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Allow quitting Finder via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Show Library folder
chflags nohidden ~/Library


# === Safari ===

# Privacy: don’t send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Improve Safari security
defaults write com.apple.Safari \
  com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaEnabled \
  -bool false
defaults write com.apple.Safari \
  com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaEnabledForLocalFiles \
  -bool false


# === Text editing ===

# Disable smart quotes:
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable autocorrect:
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Disable auto-capitalization:
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes:
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Diable automatic period substitution:
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false


# === Time Machine ===

# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true


# === Activity monitor ===

# Show the main window when launching Activity Monitor
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

# Visualize CPU usage in the Activity Monitor Dock icon
defaults write com.apple.ActivityMonitor IconType -int 5

# Show all processes in Activity Monitor
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# Restarting apps:
echo 'Restarting apps...'
killall Finder
killall Dock

echo 'Done!'
