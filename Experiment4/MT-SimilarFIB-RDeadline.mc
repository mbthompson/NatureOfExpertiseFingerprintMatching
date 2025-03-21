REVO2700    P MT-SimilarFIB-RDeadline  P�global

on preopenStack -- hides all the crap so just the experiment is visible
  centreStack
  set the fixstack of this stack to false
  hide menubar
  set the decorations of this stack to empty
  set the backdrop to black
  close stack "Home"
  close stack "Tools"
  close stack "Message Box"
  -- set the randomseed to the ticks -- ensure a random start
  pass preopenstack
end preopenStack

function scramble x -- scramble lines or items in a row
  put the number of lines of x into z
  if z = 1 then put the number of items of x into n
  else put the number of lines of x into n
  repeat with i=n down to 2
    put random(i) into k
    if z=1 then put item k of x into t
    else put line k of x into t
    if z=1 then put item i of x into item k of x
    else put line i of x into line k of x
    if z=1 then put t into item i of x
    else put t into line i of x
  end repeat
  return x
end scramble

on fixstack -- shows all the crap so you can edit while running
  set the decorations of this stack to default
  set the backdrop to none
  set the fixstack of this stack to true
  show menubar
  palette "tools"
  palette "message box"
end fixstack

on arrowkey x -- don't pass while running subjects
  if the fixstack of this stack is true then pass arrowkey
end arrowkey

on centreStack
  set the loc of this stack to the screenloc
end centreStack

on cs
  set the loc of the selObj to the width of this stack/2&comma&the height of this stack/2
end cs
  b ||||||  ������  ������  �  
 ��   	numstims  80	fixstack  true�         MT-SimilarFIB-RDeadline      U Lucida Grande   W Geneva   W 
helvetica   U Comic Sans MS  0 U Comic Sans MS   U Brush Script MT  @ U Brush Script MT  ` U Brush Script MT  ` W Brush Script MT   U Geneva   U Geneva   U Geneva  U Geneva  U Geneva   U Monaco   U Monaco  0 U Lucida Blackletter  0 U 
Helvetica   W Courier   U Courier   U Courier   U 
Helvetica   W 
Helvetica   U 
Helvetica   U 
Helvetica   U Helvetica Neue  
 U Helvetica Neue   �    	PC�global thePath,latentsPath,similarPath,randomPath,dataPath,similarPathFiles,similarPathFilesNum,trialCnt,latentsPathFiles,latentsPathFilesNum,randomPathFiles,randomPathFilesNum,trialType,instPath,outputFile,expStartTime,originalSequence,time1,time2,deadlineInterval,played,latentsMasksPath,similarMasksPath,randomMasksPath,similarMasksPathFiles,latentsMasksPath,latentsMasksPathFiles,randomMasksPath,randomMasksPathFiles,maskInverval,deadlineIntervalLong,speedType


on preOpenCard
  --  Get/Set Paths
  put the filename of this stack into thePath
  set the itemdelimiter to "/"
  delete the last item of thePath
  put thePath&"/data/" into dataPath
  put thePath&"/latents/" into latentsPath
  put thePath&"/latentsMasks/" into latentsMasksPath
  put thePath&"/similar/" into similarPath
  put thePath&"/similarMasks/" into similarMasksPath
  put thePath&"/random/" into randomPath
  put thePath&"/randomMasks/" into randomMasksPath
  put thePath&"/inst/" into instPath
  set the filename of player "inst1" to instPath&"inst1.mov"
  -- read the similar candidates filenames into to field
  set the defaultFolder to similarPath
  put the files into similarPathFiles
  replace ".DS_Store"&linefeed with "" in similarPathFiles -- remove the Mac line
  put the number of lines of similarPathFiles into similarPathFilesNum
  
  -- read the similar candidates masks filenames into the field
  set the defaultFolder to similarMasksPath
  put the files into similarMasksPathFiles
  replace ".DS_Store"&linefeed with "" in similarMasksPathFiles -- remove the Mac line
  -- put the number of lines of similarPathFiles into similarPathFilesNum -- Don't need it
  
  -- read the latent filenames into the field
  set the defaultFolder to latentsPath
  put the files into latentsPathFiles
  replace ".DS_Store"&linefeed with "" in latentsPathFiles -- remove the Mac line
  put the number of lines of latentsPathFiles into latentsPathFilesNum
  
  -- read the latent masks filenames into the field
  set the defaultFolder to latentsMasksPath
  put the files into latentsMasksPathFiles
  replace ".DS_Store"&linefeed with "" in latentsMasksPathFiles -- remove the Mac line
  -- put the number of lines of latentsPathFiles into latentsPathFilesNum
  
  -- read the random candidates filenames into to field
  set the defaultFolder to randomPath
  put the files into randomPathFiles
  replace ".DS_Store"&linefeed with "" in randomPathFiles -- remove the Mac line
  put the number of lines of randomPathFiles into randomPathFilesNum
  
  -- read the random candidates masks filenames into to field
  set the defaultFolder to randomMasksPath
  put the files into randomMasksPathFiles
  replace ".DS_Store"&linefeed with "" in randomMasksPathFiles -- remove the Mac line
  -- put the number of lines of randomPathFiles into randomPathFilesNum
  
  -- Put the deadline value veriable
  put the label of btn "deadlineVal" into deadlineInterval
  put the label of btn "deadlineValLong" into deadlineIntervalLong
  
  -- Set default demographic info options
  set the label of btn "gender" to "- Gender? -"
  set the label of btn "age" to "- How old are you? -"
  set the label of btn "subjectNum" to "- Subject -"
  set the label of btn "deadlineVal" to "- Deadline Value -"
  set the label of btn "deadlineValLong" to "- Deadline Value -"
  set the label of btn "yearJoined" to "- Year you joined Fingerprints -"
  set the label of btn "yearExpert" to "- Year you received your Expert -"
  set the label of btn "counterBal" to "- Counter Balance Type -"
  
  
  -- show subject number options and hide others
  hide btn "yearJoined"
  hide btn "yearExpert"
  hide fld "doneExp"
  hide btn "clickWhenReady"
  hide fld "imagesField"
  hide fld "randomDistractorField"
  hide btn "Begin Instructions"
  hide btn "Done"
  show btn "subjectNum"
  show btn "deadlineVal"
  show btn "counterBal"
  show grp "DeadlineLong"
  hide player "inst1"
  hide btn "age"
  hide btn "gender"
  hide btn "OKdemog"
  hide grp "rateFace"
  hide image "latentImage"
  hide image "candidateImage"
  hide grp "fixate"
  
  -- Trial counter
  put 1 into trialCnt
  put 0 into played
  put 2 into maskInverval
end preOpenCard

function makeName x -- Creates a fileName from a number where x is a number
  if x<10 then -- only add leading zero if less than 10
    return "Latent0" &x &".jpg"
  else
    return "Latent" &x &".jpg"
  end if
end makename

on nextTrial
  put the label of btn "deadlineVal" of cd 1 of this stack into deadlineInterval
  put the label of btn "deadlineValLong" of cd 1 of this stack into deadlineIntervalLong
  -- set up the next trial
  set the itemdelimiter to tab
  
  -- Only show the first half of the trials
  if trialCnt<=the number of lines of fld "imagesField"/2 then -- continue until trials are complete
    put line trialCnt of fld "imagesField" into x -- get the images to display
    -- put item 1 of fld "imagesField" into latentImage -- get the latent image filename
    put item 1 of x into latentImage
    put item 2 of x into candidateImage -- get the candidate image filename
    put item 3 of x into trialType
    put item 4 of x into speedType
    
    -- Set the mask paths
    set the filename of image "latentImage" to latentsMasksPath &latentImage
    if trialType = "similarDistractor" then -- decide which mask images to use based on the type of trial
      set the filename of image "candidateImage" to similarMasksPath &candidateImage
    else if trialType = "randomDistractor" then
      set the filename of image "candidateImage" to randomMasksPath &candidateImage
    else if trialType = "target" then
      set the filename of image "candidateImage" to randomMasksPath &candidateImage
    end if
    
    set the thumbPosition of scrollbar "confidence" to 6.5
    hide btn "Done" of grp "rateFace"
    
    -- Show the fixation cross
    show grp "fixate"
    wait maskInverval seconds
    
    -- show the masks
    set lockscreen to true
    hide grp "fixate"
    show image "candidateImage"
    show image "latentImage"
    set lockscreen to false
    wait maskInverval seconds
    
    -- show the images
    set lockscreen to true
    set the filename of image "latentImage" to latentsPath &latentImage
    if trialType = "similarDistractor" then
      set the filename of image "candidateImage" to similarPath &candidateImage
    else if trialType = "randomDistractor" then
      set the filename of image "candidateImage" to randomPath &candidateImage
    else if trialType = "target" then
      set the filename of image "candidateImage" to randomPath &candidateImage
    end if
    set lockscreen to false
    -- wait depending on the trial speed
    if speedType = "short" then
      wait deadlineInterval milliseconds
    else if speedType = "long" then
      wait deadlineIntervalLong milliseconds
    end if
    -- show masks again
    set lockscreen to true
    set the filename of image "latentImage" to latentsMasksPath &latentImage
    if trialType = "similarDistractor" then
      set the filename of image "candidateImage" to similarMasksPath &candidateImage
    else if trialType = "randomDistractor" then
      set the filename of image "candidateImage" to randomMasksPath &candidateImage
    else if trialType = "target" then
      set the filename of image "candidateImage" to randomMasksPath &candidateImage
    end if
    set lockscreen to false
    wait maskInverval seconds
    
    -- show confidence slider
    set lockscreen to true
    hide image "candidateImage"
    hide image "latentImage"
    show grp "rateFace"
    set lockscreen to false
    put the milliseconds into time1
    
    -- Now show the new instructions and the second half of the trials
  else if trialCnt<=the number of lines of fld "imagesField" then
    
    -- show new instructions if they haven't been played
    if played = 0 then
      -- Decide which instructions to play
      if the label of btn "counterBal" = "Long1st" then
        -- play short instructions
        set the filename of player "inst1" to instPath&"MT-SimilarFIB-RDeadlineShort.mov"
        show player "inst1"
        start player "inst1"
      else if the label of btn "counterBal" = "Short1st" then
        -- play long instructions
        set the filename of player "inst1" to instPath&"MT-SimilarFIB-RDeadlineLong.mov"
        show player "inst1"
        start player "inst1"
      end if
      wait 90 seconds -- wait for video to finish
      hide player "inst1"
      put 1 into played
      hide btn "clickWhenReady"
    end if
    hide btn "clickWhenReady"
    put line trialCnt of fld "imagesField" into x -- get the images to display
    -- put item 1 of fld "imagesField" into latentImage -- get the latent image filename
    put item 1 of x into latentImage
    put item 2 of x into candidateImage -- get the candidate image filename
    put item 3 of x into trialType
    put item 4 of x into speedType
    
    -- Set the mask paths
    set the filename of image "latentImage" to latentsMasksPath &latentImage
    if trialType = "similarDistractor" then -- decide which mask images to use based on the type of trial
      set the filename of image "candidateImage" to similarMasksPath &candidateImage
    else if trialType = "randomDistractor" then
      set the filename of image "candidateImage" to randomMasksPath &candidateImage
    else if trialType = "target" then
      set the filename of image "candidateImage" to randomMasksPath &candidateImage
    end if
    
    set the thumbPosition of scrollbar "confidence" to 6.5
    hide btn "Done" of grp "rateFace"
    
    -- Show the fixation cross
    show grp "fixate"
    wait maskInverval seconds
    
    -- show the masks
    set lockscreen to true
    hide grp "fixate"
    show image "candidateImage"
    show image "latentImage"
    set lockscreen to false
    wait maskInverval seconds
    
    -- show the images
    set lockscreen to true
    set the filename of image "latentImage" to latentsPath &latentImage
    if trialType = "similarDistractor" then
      set the filename of image "candidateImage" to similarPath &candidateImage
    else if trialType = "randomDistractor" then
      set the filename of image "candidateImage" to randomPath &candidateImage
    else if trialType = "target" then
      set the filename of image "candidateImage" to randomPath &candidateImage
    end if
    set lockscreen to false
    
    -- wait depending on the trial speed
    if speedType = "short" then
      wait deadlineInterval milliseconds
    else if speedType = "long" then
      wait deadlineIntervalLong milliseconds
    end if
    
    -- show masks again
    set lockscreen to true
    set the filename of image "latentImage" to latentsMasksPath &latentImage
    if trialType = "similarDistractor" then
      set the filename of image "candidateImage" to similarMasksPath &candidateImage
    else if trialType = "randomDistractor" then
      set the filename of image "candidateImage" to randomMasksPath &candidateImage
    else if trialType = "target" then
      set the filename of image "candidateImage" to randomMasksPath &candidateImage
    end if
    set lockscreen to false
    wait maskInverval seconds
    
    -- show confidence slider
    set lockscreen to true
    hide image "candidateImage"
    hide image "latentImage"
    show grp "rateFace"
    set lockscreen to false
    put the milliseconds into time1
    
  else
    doOut
  end if
end nextTrial

on doOut
  set the itemDelimiter to tab
  -- hide the stimuli and buttons
  show fld "doneExp"
  hide grp "rateFace"
  hide image "latentImage"
  hide image "candidateImage"
  
  put fld "imagesField" into imagesVar
  sort lines of imagesVar by item 3 of each
  
  put "Subject Number"&tab&the label of btn "subjectNum"&linefeed&"Short Deadline Value"&tab&the label of btn "DeadlineVal"&linefeed&"Long Deadline Value"&tab&the label of btn "deadlineValLong"&linefeed&"Age"&tab&the label of btn "age"&linefeed&"Year Joined"&tab&the label of btn "yearJoined"&linefeed&"Year Expert"&tab&the label of btn "yearExpert"&linefeed&"Gender"&tab&the label of btn "gender"&linefeed &"Experiment Began:"&tab&expStartTime&linefeed&"Experiment Finished:"&tab&the long date&tab&the long time&linefeed&linefeed&"Sequence as Presented"&linefeed&"Latent image"&tab&"Candidate image"&tab&"Trial type"&tab&"Trial speed"&tab&"Confidence"&tab&"Latent image path"&tab&"Candidate image path" &tab&"Trial start time" &tab&"Trial end time" &tab&"Reaction time" &linefeed&fld "imagesField" &linefeed&linefeed &"Sorted Sequence"&linefeed &imagesVar into outExp
  put the label of btn "subjectNum"&"_"&the ticks into fname
  put outExp into url ("file:"&dataPath&fname&"_MT-SimilarFIB-RDeadline.txt")
  
  
  put "finish"
  -- put "Subject Number"&tab
end doOut

on doRating -- Activates when the done button is pressed.
  put the milliseconds into time2
  hide btn "Done"
  hide grp "rateFace"
  hide image "latentImage"
  hide image "candidateImage"
  put the thumbPosition of sb "confidence"&tab after line trialCnt of fld "imagesField"
  put the filename of image "latentImage"&tab after line trialCnt of fld "imagesField"
  put the filename of image "candidateImage"&tab after line trialCnt of fld "imagesField"
  put time1&tab after line trialCnt of fld "imagesField"
  put time2&tab after line trialCnt of fld "imagesField"
  put time2-time1 after line trialCnt of fld "imagesField"
  add 1 to trialCnt
  nextTrial
end doRating


on eventSequence -- event sequence
  set the itemDelimiter to tab
  put empty into fld "imagesField" -- empty the field
  put empty into fld "randomDistractorField" -- empty the field
  put scramble(latentsPathFiles) into latentsPathFiles -- scrable the latent filenames
  -- get the first 3rd of the latent filenames (to allocate to targets)
  put 1 into j
  repeat until j>latentsPathFilesNum/3 -- first 3rd
    put line j of latentsPathFiles &tab &line j of latentsPathFiles &tab &"target" &tab &linefeed after fld "imagesField"
    add 1 to j
  end repeat
  
  -- get the second 3rd of the latent filenames (to allocate to random distractors)
  put latentsPathFilesNum/3+1 into j -- second 3rd
  set the itemDelimiter to tab
  repeat until j>((latentsPathFilesNum/3)+(latentsPathFilesNum/3))
    put line j of latentsPathFiles&linefeed after fld "randomDistractorField"
    add 1 to j
  end repeat
  -- find a random distractor
  put the number of lines of fld "randomDistractorField" into randomDistractorFieldNum
  put 1 into j
  repeat until j>(randomDistractorFieldNum-1)
    put item 1 of line j of fld "randomDistractorField" into item 2 of line j+1 of fld "randomDistractorField" --swap each line (except the first and last)
    add 1 to j
  end repeat
  put item 1 of line randomDistractorFieldNum of fld "randomDistractorField" into item 2 of line 1 of fld "randomDistractorField" -- swap item 2 in the last line with the first
  
  -- Put the randomDistractorField into the image list
  put 1 into j
  set the itemDelimiter to tab
  repeat until j>(latentsPathFilesNum/3)
    put line j of fld "randomDistractorField" &tab &"randomDistractor" &tab &linefeed after fld "imagesField"
    add 1 to j
  end repeat
  
  -- get the third 3rd of the latent filesnames (to allocate to similar distractors)
  put ((latentsPathFilesNum/3)+(latentsPathFilesNum/3)+1) into j -- final 3rd
  repeat until j>(latentsPathFilesNum)
    put line j of latentsPathFiles &tab &line j of latentsPathFiles &tab &"similarDistractor" &tab &linefeed after fld "imagesField"
    add 1 to j
  end repeat
  
  -- Put the first half of all three groups into short or long
  
  put 1 into j
  put latentsPathFilesNum/3/2 into balanceNum
  repeat until j>balanceNum -- 6
    put "short"&tab into item 4 of line j of fld "imagesField"
    add 1 to j
  end repeat
  repeat until j>balanceNum*2 -- 12
    put "long"&tab into item 4 of line j of fld "imagesField"
    add 1 to j
  end repeat
  repeat until j>balanceNum*3 -- 18
    put "short"&tab into item 4 of line j of fld "imagesField"
    add 1 to j
  end repeat
  repeat until j>balanceNum*4 -- 24
    put "long"&tab into item 4 of line j of fld "imagesField"
    add 1 to j
  end repeat
  repeat until j>balanceNum*5 -- 30
    put "short"&tab into item 4 of line j of fld "imagesField"
    add 1 to j
  end repeat
  repeat until j>balanceNum*6 -- 36
    put "long"&tab into item 4 of line j of fld "imagesField"
    add 1 to j
  end repeat
  
  put scramble(fld "imagesField") into fld "imagesField" -- I've stopped the final sequence from being scrambled while I work on deviding it into 2.
  -- sort fld "imagesField" on item 4
  if the label of btn "counterBal" = "Long1st" then
    sort lines of field "imagesField" ascending by item 4 of each -- sort on long first
    
  else if the label of btn "counterBal" = "Short1st" then
    sort lines of field "imagesField" descending by item 4 of each -- sort on short first
  end if
  
  put fld "imagesField" into originalSequence -- Original sequence for the output file
  -- Final scramble of the eventSequence
  
end eventSequence

on monkey
  repeat until trialCnt = latentsPathFilesNum-2
    set the thumbPosition of sb "confidence" to random(12)
    send mouseUp to btn "Done"
  end repeat
end monkey

on ps
  send playstopped to player inst1
end ps
           ��    !  (  )  4  8  9  :  ;  =  %  &  5  6  7  D  E  G  H  K  P      	@          ���      � Main   	P
\global thePath,fp1path,fp2path,fp2bpath,datapath,data,curtrial,TargetSets,deadlineInterval,expStartTime,fp1maskPath,fp2maskPath,maskInterval

on openCard
  hide grp "Scale"
  put the label of btn "deadlineOption" of cd 1 of this stack into deadlineInterval
  put 1000 into maskInterval
  set the angle of image "match" to 0
  -- set the angle of image "overlay" to 0
  -- overlayhide image "overlay"
  put fld "TargetSets" into TargetSets
  put 1 into curtrial
  nexttrial
end openCard

function makename x
  --where x is a number
  put x+10000 into x
  put "fp"&char 2 to 5 of x into x
  return x&".gif"
end makename


on nexttrial
  set the itemdelimiter to tab
  if curtrial <= (the numstims of this stack) then
    hide grp "Scale"
    hide grp "comp" -- Hide everything
    show grp "fixate" -- Show the fixation cross for 1 second
    wait 1 second
    -- lock screen
    set the thumbPosition of scrollbar "confidence" to 6.5
    set the cursor to none -- Hide the cursor
    put line curtrial of TargetSets into x
    put any line of TargetSets into y
    put any line of TargetSets into z
    put makename(item 4 of y) into t
    set the filename of image "target" to fp1maskPath&t
    put makename(item 5 of z) into t
    set the filename of image "match" to fp1maskPath&t
    -- set the filename of image "overlay" to fp2bpath&t
    -- unlock screen
    hide grp "fixate" -- Hide the fixation cross
    show grp "comp" -- Show the prints
    wait maskInterval milliseconds -- wait
    
    put makename(item 4 of x) into t
    set the filename of image "target" to fp1path&t
    put makename(item 5 of x) into t
    set the filename of image "match" to fp2path&t
    wait deadlineInterval milliseconds -- wait
    
    put makename(item 4 of y) into t
    set the filename of image "target" to fp1maskPath&t
    put makename(item 5 of z) into t
    set the filename of image "match" to fp1maskPath&t
    wait maskInterval milliseconds -- wait
    
    hide grp "comp" -- Hide the prints
    set the cursor to arrow
    show grp "Scale" -- Show the response scale
  else
    -- save the data file
    put "Experiment Began:"&tab&expStartTime&tab&"Experiment Finished:"&tab&the long date&tab&the long time into x
    put "fpDeadline_"&"DI_"&deadlineInterval&"_"&"MI_"&maskInterval&"_"&the ticks&".txt" into theName
    put "file:"&datapath&theName into theName
    put x & return & data into url theName
    go next cd
    wait 5 seconds
    quit
  end if
end nexttrial

on savedata resp
  hide grp "Scale"
  put line curtrial of TargetSets&tab&resp into line curtrial of data
  add 1 to curtrial
  -- wait 2 seconds
  nexttrial
end savedata
            X�  �  �          	@          ���    � comp  a        � ��C�  �   i        � � �7�  � target  �D    �  � � �+   angel  30� R/Users/matthewt/Documents/PhD/Experiments/MT-SimiarAFIS/masks/fp1_mask/fp0123.gif         i       � � �7�  � match  �@    � � � �+    � R/Users/matthewt/Documents/PhD/Experiments/MT-SimiarAFIS/masks/fp1_mask/fp0916.gif   
  � TargetSets  !`       # � � ��        � 40	2	0	392	392  16	3	1	153	1173  122	3	0	1213	1213  69	7	1	687	837  70	4	1	694	754  39	1	0	381	381  54	8	1	538	518  102	4	0	1014	1014  109	1	0	1081	1081  65	6	1	646	66  87	6	1	866	916  46	5	1	455	565  56	6	0	556	556  85	8	0	848	848  5	10	0	50	50  82	2	1	812	252  80	2	1	792	892  50	5	1	495	1055  61	2	1	602	762  96	1	0	951	951  30	4	1	294	74  48	7	0	477	477  108	10	0	1080	1080  3	8	0	28	28  59	1	1	581	881  28	8	0	278	278  100	8	1	998	1208  9	10	1	90	180  97	6	0	966	966  33	8	1	328	348  20	2	1	192	132  83	5	1	825	205  10	9	0	99	99  67	7	1	667	1157  63	9	1	629	1129  24	2	0	232	232  68	7	0	677	677  66	4	0	654	654  64	4	1	634	144  94	1	1	931	1141  17	3	1	163	1023  43	4	1	424	1004  51	9	0	509	509  126	6	0	1256	1256  23	5	0	225	225  88	9	1	879	739  86	1	1	851	781  98	7	1	977	907  22	10	0	220	220  117	1	0	1161	1161  19	7	1	187	107  47	9	1	469	529  25	5	0	245	245  38	9	1	379	289  2	8	1	18	438  120	7	0	1197	1197  32	3	1	313	353  60	8	0	598	598  119	4	0	1184	1184  12	2	0	112	112  13	3	0	123	123  62	5	1	615	365  71	7	0	707	707  114	10	1	1140	450  95	5	0	945	945  4	9	0	39	39  34	4	0	334	334  
1	6	0	6	6  123	3	0	1223	1223  58	6	1	576	406  27	3	1	263	803  55	10	1	550	1070  73	5	0	725	725  72	6	1	716	1116  104	3	0	1033	1033  75	9	0	749	749  111	2	0	1102	1102  124	1	1	1231	1091  42	10	1	420	310  6	10	0	60	60    Scale  i     �  � � �   	response   �   confidence  �a                                     �*� $����EE 1  12          Done �M�p �on mouseUp
  if the thumbPosition of scrollbar "confidence" is 6.5 then
    beep
  else
    put the thumbPosition of scrollbar "confidence" into resp
    set the cursor to none
    saveData resp
  end if
end mouseUp
       cM [ S         	          I        � � @�      K      � �  (�     � ��!     i        � �� 4�
  	          � � @ (�        � Sure  
Different 
  
         G � @ (�        � Sure  Same 
           1 � @ (�        � Guess  
Different 
           � � @ (�        � Guess  Same 
   done 
  �  ||||||     < �� ��         
Thank you       
             D D���         Instructions          =In what follows are trials of pairs of fingerprints. Some of these pairs are of the same finger, printed on two different occasions.  Others, are of two different prints, obtained from the fingers of different people.  Your task is to discriminate the ``same'' pairs of prints from the ``different'' pairs of prints.   _To assist you, two tools are provided: (1) you can rotate one print (the one on the right) to attempt to match the orientation of the one on the left, and (2) you can drag a translucent overlay of the right print over the left print to check the quality of the match; it will track the rotations imposed on the right print.  Neither tool is required.    �You indicate your choice by adjusting a slider to the right to indicate a match, or the left to indicate a non-match---the degree of the left or right choice indicating your confidence.          New Button  @
 %on mouseUp
  go next cd
end mouseUp
       t � L�         	   	        fixate  a       P � � ��     K      � �  x�     � ��f     K      T* x �     V,�,
   imagesField  �!`         ���          iFIBR0008-time2-latent-bottle-01.pct	FIBR0008-time2-latent-bottle-01.pct	similarDistractor	short	7	/Users/matthewt/Documents/PhD/Experiments/MT-SimilarFIB-RDeadline/latentsMasks/FIBR0008-time2-latent-bottle-01.pct	/Users/matthewt/Documents/PhD/Experiments/MT-SimilarFIB-RDeadline/similarMasks/FIBR0008-time2-latent-bottle-01.pct	1302143601161	1302143604845	3684  _FIBR0007-time1-latent-knife-01.pct	FIBR0007-time1-latent-knife-01.pct	similarDistractor	short	  TFIBR0033-time1-latent-knife-02.pct	FIBR0033-time1-latent-knife-02.pct	target	short	  VFIBR0007-time1-latent-timber-08.pct	FIBR0007-time1-latent-timber-08.pct	target	short	  ^FIBR0001-time1-latent-knife-02.pct	FIBR0008-time1-latent-glass-02.pct	randomDistractor	short	  `FIBR0007-time2-latent-bottle-04.pct	FIBR0010-time1-latent-timber-10.pct	randomDistractor	short	  TFIBR0018-time1-latent-knife-03.pct	FIBR0018-time1-latent-knife-03.pct	target	short	  `FIBR0028-time1-latent-timber-09.pct	FIBR0007-time2-latent-bottle-03.pct	randomDistractor	short	  aFIBR0025-time1-latent-timber-06.pct	FIBR0025-time1-latent-timber-06.pct	similarDistractor	short	  _FIBR0021-time1-latent-glass-01.pct	FIBR0021-time1-latent-glass-01.pct	similarDistractor	short	  `FIBR0010-time1-latent-timber-10.pct	FIBR0028-time1-latent-timber-09.pct	randomDistractor	short	  _FIBR0005-time1-latent-knife-01.pct	FIBR0005-time1-latent-knife-01.pct	similarDistractor	short	  TFIBR0027-time2-latent-knife-01.pct	FIBR0027-time2-latent-knife-01.pct	target	short	  ^FIBR0024-time1-latent-knife-02.pct	FIBR0001-time1-latent-knife-02.pct	randomDistractor	short	  TFIBR0034-time1-latent-glass-02.pct	FIBR0034-time1-latent-glass-02.pct	target	short	  _FIBR0008-time1-latent-glass-02.pct	FIBR0007-time2-latent-bottle-04.pct	randomDistractor	short	  aFIBR0001-time1-latent-timber-04.pct	FIBR0001-time1-latent-timber-04.pct	similarDistractor	short	 ZFIBR0005-time1-latent-glass-07.pct	FIBR0005-time1-latent-glass-07.pct	target	short	7	/Users/matthewt/Documents/PhD/Experiments/MT-SimilarFIB-RDeadline/latentsMasks/FIBR0007-time1-latent-knife-01.pct	/Users/matthewt/Documents/PhD/Experiments/MT-SimilarFIB-RDeadline/similarMasks/FIBR0007-time1-latent-knife-01.pct	1302143611211	1302143620948	9737 bFIBR0001-time1-latent-glass-07.pct	FIBR0015-time1-latent-glass-01.pct	randomDistractor	long	7	/Users/matthewt/Documents/PhD/Experiments/MT-SimilarFIB-RDeadline/latentsMasks/FIBR0001-time1-latent-glass-07.pct	/Users/matthewt/Documents/PhD/Experiments/MT-SimilarFIB-RDeadline/randomMasks/FIBR0015-time1-latent-glass-01.pct	1302143718239	1302143726968	8729  _FIBR0007-time2-latent-bottle-03.pct	FIBR0003-time2-latent-bottle-06.pct	randomDistractor	long	  `FIBR0025-time1-latent-timber-10.pct	FIBR0025-time1-latent-timber-10.pct	similarDistractor	long	  ^FIBR0002-time2-latent-bottle-03.pct	FIBR0001-time1-latent-glass-07.pct	randomDistractor	long	  UFIBR0004-time2-latent-bottle-02.pct	FIBR0004-time2-latent-bottle-02.pct	target	long	  SFIBR0026-time1-latent-glass-03.pct	FIBR0026-time1-latent-glass-03.pct	target	long	  SFIBR0013-time1-latent-knife-03.pct	FIBR0013-time1-latent-knife-03.pct	target	long	  ]FIBR0015-time1-latent-glass-01.pct	FIBR0021-time1-latent-knife-02.pct	randomDistractor	long	  SFIBR0001-time1-latent-glass-06.pct	FIBR0001-time1-latent-glass-06.pct	target	long	  `FIBR0014-time2-latent-bottle-01.pct	FIBR0014-time2-latent-bottle-01.pct	similarDistractor	long	  ]FIBR0021-time1-latent-knife-02.pct	FIBR0024-time1-latent-knife-02.pct	randomDistractor	long	  UFIBR0024-time1-latent-timber-09.pct	FIBR0024-time1-latent-timber-09.pct	target	long	  _FIBR0003-time2-latent-bottle-06.pct	FIBR0002-time2-latent-bottle-03.pct	randomDistractor	long	  `FIBR0003-time2-latent-bottle-04.pct	FIBR0003-time2-latent-bottle-04.pct	similarDistractor	long	  ^FIBR0013-time1-latent-glass-08.pct	FIBR0013-time1-latent-glass-08.pct	similarDistractor	long	  `FIBR0006-time2-latent-bottle-01.pct	FIBR0006-time2-latent-bottle-01.pct	similarDistractor	long	  `FIBR0007-time1-latent-timber-07.pct	FIBR0007-time1-latent-timber-07.pct	similarDistractor	long	  UFIBR0033-time1-latent-timber-06.pct	FIBR0033-time1-latent-timber-06.pct	target	long	          	`      �  o�      	a       � �
  ! randomDistractorField  �!`      � 4@ ��        � HFIBR0028-time1-latent-timber-09.pct	FIBR0007-time2-latent-bottle-03.pct       $     $ # HFIBR0010-time1-latent-timber-10.pct	FIBR0028-time1-latent-timber-09.pct       $     $ # HFIBR0007-time2-latent-bottle-04.pct	FIBR0010-time1-latent-timber-10.pct       $     $ # GFIBR0008-time1-latent-glass-02.pct	FIBR0007-time2-latent-bottle-04.pct       #     # # FFIBR0001-time1-latent-knife-02.pct	FIBR0008-time1-latent-glass-02.pct       #     # " FFIBR0024-time1-latent-knife-02.pct	FIBR0001-time1-latent-knife-02.pct       #     # " FFIBR0021-time1-latent-knife-02.pct	FIBR0024-time1-latent-knife-02.pct       #     # " FFIBR0015-time1-latent-glass-01.pct	FIBR0021-time1-latent-knife-02.pct       #     # " FFIBR0001-time1-latent-glass-07.pct	FIBR0015-time1-latent-glass-01.pct       #     # " GFIBR0002-time2-latent-bottle-03.pct	FIBR0001-time1-latent-glass-07.pct       $     $ " HFIBR0003-time2-latent-bottle-06.pct	FIBR0002-time2-latent-bottle-03.pct       $     $ # HFIBR0007-time2-latent-bottle-03.pct	FIBR0003-time2-latent-bottle-06.pct       $     $ #    #    	`      � 5  ��  ( Done �M�p #on mouseUp
  doRating
end mouseUp
       c# [ w         	       4 subjectNum ��	u 2on mouseUp
  show btn "beginSubject"
end mouseUp
       >P p s - Subject -    �- Subject -
01
02
03
04
05
06
07
08
09
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80        	       8 beginSubject �e�p�on mouseUp
  if the label of btn "subjectNum" = "- Subject -" then
    answer "Please select a subject number"
  else if the label of btn "deadlineVal" = "- Deadline Value -" then
    answer "Please select deadline value"
  else if the label of btn "counterBal" = "- Counter Balance Type -" then
    answer "Please select a counter balance type"
  else
    hide btn "subjectNum"
    hide btn "beginSubject"
    hide btn "deadlineVal"
    hide btn "counterBal"
    hide grp "DeadlineLong"
    show btn "age"
    show btn "gender"
    show btn "OKdemog"
    show btn "yearJoined"
    show btn "yearExpert"
    eventSequence
  end if
end mouseUp
       `� ,  w OK          	       9 Begin Instructions �E�p�global expStartTime,instPath

on mouseUp
  put the long date&tab&the long time into expStartTime
  hide me
  if the label of btn "counterBal" = "Short1st" then
    set the filename of player "inst1" to instPath&"MT-SimilarFIB-RDeadlineShort.mov"
  else if the label of btn "counterBal" = "Long1st" then
    set the filename of player "inst1" to instPath&"MT-SimilarFIB-RDeadlineLong.mov"
  end if
  show player "inst1"
  start player "inst1"
  hide btn "clickWhenReady"
end mouseUp
       *\ � ,w         	       : inst1   �P �on playStopped
  hide me
  show btn "clickWhenReady"
end playStopped

on mouseup
  -- stop player "inst1"
  -- hide me
  -- show btn "clickWhenReady"
end mouseup
        � m
� ]/Users/matthewt/Dropbox/DocumentsDrop/PhD/Experiments/MT-SimilarFIB-RDeadline/inst/inst1.mov �����������    ; clickWhenReady �e�p �on mouseUp
  set the thumbPosition of scrollbar "confidence" to 6.5
  hide btn "clickWhenReady"
  -- show image "latentImage"
  -- show image "candidateImage"
  nextTrial
end mouseUp
       %R � @u Click to continue          	     
  = doneExp   @       � ޑ           fYou have finished the experiment. Thank you for your participation. Please let the experimenter know.   % latentImage 	�@         XX� s/Users/matthewt/Documents/PhD/Experiments/MT-SimilarFIB-RDeadline/latentsMasks/FIBR0007-time2-latent-bottle-03.pct     & candidateImage 	�@      |  XX� r/Users/matthewt/Documents/PhD/Experiments/MT-SimilarFIB-RDeadline/randomMasks/FIBR0003-time2-latent-bottle-06.pct     5 age ��m      �  � "    s - How old are you? -   - How old are you? -
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100  (       cREVGeneral    revUniqueID  1183620042220	       6 gender ��m      � 7 � "    q - Gender? -    - Gender? -
Male
Female         cREVGeneral    revUniqueID  1183620042221	       7 OKdemog �e�x  �global expStartTime

on mouseUp
  if the label of btn "age" = "- How old are you? -" then
    answer "Please specify your age"
  else if the label of btn "gender" = "- Gender? -" then
    answer "Please specify your gender"
  else if the label of btn "yearJoined" = "- Year you joined Fingerprints -" then
    answer "Please specify the year you joined"
  else if the label of btn "yearExpert" = "- Year you received your Expert -" then
    answer "Please specify the year you received your expert"
  else
    put the long date&tab&the long time into expStartTime
    hide btn "age"
    hide btn "gender"
    hide btn "OKdemog"
    hide btn "yearJoined"
    hide btn "yearExpert"
    show btn "Begin Instructions"
  end if
  
end mouseUp
     � Y� : "    q OK           cREVGeneral    scriptChecksum  !7\�-�^O����
bookmarks   revUniqueID  1183620122468handlerList  mouseUpscriptSelection  char 340 to 339prevHandler  mouseUptempScript   script <p><font color="#980517">on</font> mouseUp</p>
<p>  <font color="#980517">if </font>the <font color="#FF0000">label </font>of btn &quot;age&quot; = &quot;- How old are you? -&quot; <font color="#980517">then</font></p>
<p><font color="#980517">    </font><font color="#0000FF">answer </font>&quot;Please specify your age&quot;</p>
<p>  <font color="#980517">else</font></p>
<p><font color="#980517">    if </font>the <font color="#FF0000">label </font>of btn &quot;gender&quot; = &quot;- Gender? -&quot; <font color="#980517">then</font></p>
<p><font color="#980517">      </font><font color="#0000FF">answer </font>&quot;Please specify your gender&quot;</p>
<p>    <font color="#980517">else</font></p>
<p><font color="#980517">       </font><font color="#0000FF">hide </font>btn &quot;age&quot;</p>
<p>       <font color="#0000FF">hide </font>btn &quot;gender&quot;</p>
<p>       <font color="#0000FF">hide </font>btn &quot;OKdemog&quot;</p>
<p>       <font color="#0000FF">show </font>fld &quot;inst&quot;</p>
<p>       <font color="#0000FF">show </font>grp &quot;instGrp&quot;</p>
<p>       <font color="#0000FF">show </font>btn &quot;Begin&quot;</p>
<p><font color="#980517">    end if</font></p>
<p><font color="#980517">  end if</font></p>
<p><font color="#980517">end</font> mouseUp</p>	       ) 	rateFace  a     � h9 r   	response   �  * Done �M�p #on mouseUp
  doRating
end mouseUp
       N� [ u         	       +   I       l= j�  , confidence  �q @on mouseDown
  show btn "Done" of grp "rateFace"
end mouseDown
                                     �}� $����EE 1  12         -   i       rC 0�  .    K      yG  (�     {I{m
  /         vG @ (�        � Sure  
Different 
  0         MG ) (�        � Sure  Same 
  1         �G @ (�        � Guess  
Different 
  2         �G @ (�        � Guess  Same   D deadlineVal ��	u 2on mouseUp
  show btn "beginSubject"
end mouseUp
       )x �  - Deadline Value -    z- Deadline Value -
100
200
300
400
500
600
700
800
900
1000
2000
3000
5000
6000
10000
20000
30000
40000
50000
60000
12000        	       E yearJoined ��m      � �kF "     !- Year you joined Fingerprints -   k- Year you joined Fingerprints -
1950
1951
1952
1953
1954
1955
1956
1957
1958
1959
1960
1961
1962
1963
1964
1965
1966
1967
1968
1969
1970
1971
1972
1973
1974
1975
1976
1977
1978
1979
1980
1981
1982
1983
1984
1985
1986
1987
1988
1989
1990
1991
1992
1993
1994
1995
1996
1997
1998
1999
2000
2001
2002
2003
2004
2005
2006
2007
2008
2009
2010
2011
2012
2013
2014
2015  B       cREVGeneral    revUniqueID  1183620042221	       G yearExpert ��m      � ��F "     "- Year you received your Expert -   l- Year you received your Expert -
1950
1951
1952
1953
1954
1955
1956
1957
1958
1959
1960
1961
1962
1963
1964
1965
1966
1967
1968
1969
1970
1971
1972
1973
1974
1975
1976
1977
1978
1979
1980
1981
1982
1983
1984
1985
1986
1987
1988
1989
1990
1991
1992
1993
1994
1995
1996
1997
1998
1999
2000
2001
2002
2003
2004
2005
2006
2007
2008
2009
2010
2011
2012
2013
2014
2015  A       cREVGeneral    revUniqueID  1183620042221	       H fixate  a       6 � � ��  I   K      t �  x�     v �v^  J   K      :" x �     <$�$  K counterBal ��	u 2on mouseUp
  show btn "beginSubject"
end mouseUp
       � �  - Counter Balance Type -    *- Counter Balance Type -
Short1st
Long1st        	       P DeadlineLong  i       �p � P�  L deadlineValLong ��	u 2on mouseUp
  show btn "beginSubject"
end mouseUp
       )� �  - Deadline Value -    z- Deadline Value -
100
200
300
400
500
600
700
800
900
1000
2000
3000
5000
6000
10000
20000
30000
40000
50000
60000
12000        	     
  M   )`      �t < �        � Short 
  O   )`      �� 8 �        � Long  