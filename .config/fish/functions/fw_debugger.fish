function fw_debugger
 kubectl.exe -n mc port-forward "$argv" 5005; 
end
