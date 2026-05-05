#!/usr/bin/env bash

ja_icon="あ"
us_icon="U.S."

main() {
  local _input
  _input=$(defaults read com.apple.HIToolbox AppleSelectedInputSources | tr "[:upper:]" "[:lower:]")

  case $_input in
    *japanese*)
      printf '%s' "$ja_icon"
      ;;
    *)
      printf '%s' "$us_icon"
      ;;
  esac
}

main
