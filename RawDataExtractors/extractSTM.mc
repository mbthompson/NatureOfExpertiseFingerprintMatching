REVO2700     extractMatt  P�function readFile theFileName
  -- answer file "Read what text file?" of type text
  -- if (it is empty) or (it is "Cancel") then return empty
  -- put it into theFileName
  open file theFileName
  repeat forever
    read from file theFileName for 16384
    if it is empty then exit repeat
    put it after theData
  end repeat
  close file theFileName
  return theData
end readFile
       O �/��         extractMatt     ����     U 
Helvetica   U 
Helvetica   U Helvetica Neue  
 U Helvetica Neue   U Lucida Grande   W 
helvetica  
 U Helvetica Neue,Unicode   U Helvetica,Unicode   U Helvetica,Unicode   U Lucida Grande   U Lucida Grande   U 
helvetica   U 
helvetica   W 
helvetica   W 
Helvetica   W 
Helvetica   U Monaco   W Monaco   �    	@          /��          
   out  �)`        �        � 62_MemoryExpV2_print_80668972695.txt	0.444444	0.777778  14_MemoryExpV2_print_80694855789.txt	0.5	0.833333  66_MemoryExpV2_print_80695114512.txt	0.666667	0.388889  18_MemoryExpV2_print_80695310024.txt	0.5	0.444444         	`       �  �   Confidence �E�p9on mouseUp
  put empty into fld "out"
  answer folder "Where are the data?"
  put it into TangenDataDir
  set the defaultFolder to TangenDataDir
  put the files into FilesInTangenData
  replace ".DS_Store"&linefeed with "" in FilesInTangenData
  set the itemDelimiter to "j"
  sort lines of FilesInTangenData numeric by item 2 of each
  put the number of lines of FilesInTangenData into NumFilesInTangenData
  put FilesInTangenData
  put empty into out
  put 1 into j
  repeat until j>NumFilesInTangenData
    set the itemdelimiter to tab
    put readfile(TangenDataDir&"/"&line j of FilesInTangenData) into x -- x is the entire data file
    ------------
    
    put item 2 of line 7 of x after oldItems -- grab the Mean Recognition Accuracy for Old Items
    put item 2 of line 8 of x after newItems -- grab the Mean Recognition Accuracy for New Items
    put line j of FilesInTangenData&tab&oldItems&tab&newItems&linefeed after fld "out" -- output to window
    put empty into oldItems
    put empty into newItems
    
    ------------
    add 1 to j
  end repeat
end mouseUp
        4 \ Q         	        Raw �E�p�on mouseUp
  put empty into fld "out"
  answer folder "Where are the data?"
  put it into TangenDataDir
  set the defaultFolder to TangenDataDir
  put the files into FilesInTangenData
  replace ".DS_Store"&linefeed with "" in FilesInTangenData
  set the itemDelimiter to "j"
  sort lines of FilesInTangenData numeric by item 2 of each
  put the number of lines of FilesInTangenData into NumFilesInTangenData
  put FilesInTangenData
  put empty into out
  put 1 into j
  repeat until j>NumFilesInTangenData
    set the itemdelimiter to tab
    put readfile(TangenDataDir&"/"&line j of FilesInTangenData) into x -- x is the entire data file
    ------------
    put empty into fred
    put 57 into cnt
    repeat until cnt>102
      put item 9 of line cnt of x&tab after fred
      add 1 to cnt
    end repeat
    put line j of FilesInTangenData&tab&fred&linefeed after fld "out"
    ------------
    add 1 to j
  end repeat
end mouseUp
        |T \ S         	        RT �E�pEon mouseUp
  put empty into fld "out"
  answer folder "Where are the data?"
  put it into TangenDataDir
  set the defaultFolder to TangenDataDir
  put the files into FilesInTangenData
  replace ".DS_Store"&linefeed with "" in FilesInTangenData
  set the itemDelimiter to "j"
  sort lines of FilesInTangenData numeric by item 2 of each
  put the number of lines of FilesInTangenData into NumFilesInTangenData
  put FilesInTangenData
  put empty into out
  put 1 into j
  repeat until j>NumFilesInTangenData
    set the itemdelimiter to tab
    put readfile(TangenDataDir&"/"&line j of FilesInTangenData) into x -- x is the entire data file
    ------------
    put 57 into cnt
    repeat until cnt>71 -- random
      put item 9 of line cnt of x&comma after randomDist
      add 1 to cnt
    end repeat
    
    put 72 into cnt
    repeat until cnt>86 -- similar
      put item 9 of line cnt of x&comma after simDist
      add 1 to cnt
    end repeat
    
    put 87 into cnt
    repeat until cnt>101 -- target
      put item 9 of line cnt of x&comma after targ
      add 1 to cnt
    end repeat
    
    put average(randomDist) into randomMean
    put average(simDist) into simMean
    put average(targ) into targMean
    
    put targMean&tab&simMean&tab&randomMean&linefeed after fld "out"
    ------------
    add 1 to j
  end repeat
end mouseUp
        T \ Q         	        ROC �E�pTon mouseUp
  answer folder "Where are the data?"
  put it into TangenDataDir
  set the defaultFolder to TangenDataDir
  put the files into FilesInTangenData
  replace ".DS_Store"&linefeed with "" in FilesInTangenData
  put the number of lines of FilesInTangenData into NumFilesInTangenData
  put 1 into j
  repeat until j>NumFilesInTangenData
    set the itemdelimiter to tab
    put readfile(TangenDataDir&"/"&line j of FilesInTangenData) into x -- x is the entire data file
    
    set the itemdelimiter to tab
    ----------------
    put empty into confSummary
    put line 57 to 71 of x into evSeq
    put 1 into cnt
    repeat until cnt>the number of lines of evSeq
      put item 4 of line cnt of evSeq into confRating
      switch confRating
      case 1
        put line j of FilesInTangenData&tab&item 1 of line cnt of evSeq&tab&item 2 of line cnt of evSeq&tab&1&tab&0&tab&0&tab&0&tab&0&tab&0&tab&0&tab&0&tab&0&tab&0&tab&0&tab&0&linefeed after confSummary
        break
      case 2
        put line j of FilesInTangenData&tab&item 1 of line cnt of evSeq&tab&item 2 of line cnt of evSeq&tab&1&tab&1&tab&0&tab&0&tab&0&tab&0&tab&0&tab&0&tab&0&tab&0&tab&0&tab&0&linefeed after confSummary
        break
      case 3
        put line j of FilesInTangenData&tab&item 1 of line cnt of evSeq&tab&item 2 of line cnt of evSeq&tab&1&tab&1&tab&1&tab&0&tab&0&tab&0&tab&0&tab&0&tab&0&tab&0&tab&0&tab&0&linefeed after confSummary
        break
      case 4
        put line j of FilesInTangenData&tab&item 1 of line cnt of evSeq&tab&item 2 of line cnt of evSeq&tab&1&tab&1&tab&1&tab&1&tab&0&tab&0&tab&0&tab&0&tab&0&tab&0&tab&0&tab&0&linefeed after confSummary
        break
      case 5
        put line j of FilesInTangenData&tab&item 1 of line cnt of evSeq&tab&item 2 of line cnt of evSeq&tab&1&tab&1&tab&1&tab&1&tab&1&tab&0&tab&0&tab&0&tab&0&tab&0&tab&0&tab&0&linefeed after confSummary
        break
      case 6
        put line j of FilesInTangenData&tab&item 1 of line cnt of evSeq&tab&item 2 of line cnt of evSeq&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&0&tab&0&tab&0&tab&0&tab&0&tab&0&linefeed after confSummary
        break
      case 7
        put line j of FilesInTangenData&tab&item 1 of line cnt of evSeq&tab&item 2 of line cnt of evSeq&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&0&tab&0&tab&0&tab&0&tab&0&linefeed after confSummary
        break
      case 8
        put line j of FilesInTangenData&tab&item 1 of line cnt of evSeq&tab&item 2 of line cnt of evSeq&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&0&tab&0&tab&0&tab&0&linefeed after confSummary
        break
      case 9
        put line j of FilesInTangenData&tab&item 1 of line cnt of evSeq&tab&item 2 of line cnt of evSeq&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&0&tab&0&tab&0&linefeed after confSummary
        break
      case 10
        put line j of FilesInTangenData&tab&item 1 of line cnt of evSeq&tab&item 2 of line cnt of evSeq&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&0&tab&0&linefeed after confSummary
        break
      case 11
        put line j of FilesInTangenData&tab&item 1 of line cnt of evSeq&tab&item 2 of line cnt of evSeq&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&0&linefeed after confSummary
        break
      case 12
        put line j of FilesInTangenData&tab&item 1 of line cnt of evSeq&tab&item 2 of line cnt of evSeq&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&tab&1&linefeed after confSummary
        break
      end switch
      add 1 to cnt
    end repeat
    
    put confSummary after fld "out"
    ----------------
    add 1 to j
  end repeat
end mouseUp
        |4 \ Q         	      