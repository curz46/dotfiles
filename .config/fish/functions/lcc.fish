function lcc --wraps='adb logcat -c -b all' --description 'alias lcc=adb logcat -c -b all'
  adb logcat -c -b all $argv
        
end
