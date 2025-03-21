REVO2700    X MemoryExpV1  �     � L ,��   	fixstack  true  �on preopenStack -- prepare to run subjects
  centreStack
  set the fixstack of this stack to false -- use to block all sorts of stuff from subjects
  hide menubar
  set the decorations of this stack to empty
  set the backdrop to black
  close stack "Home"
  close stack "Tools"
  close stack "Message Box"
  set the height of this stack to 900
  set the width of this stack to 1440
end preopenStack

on fixstack -- to edit the stack: call from anywhere (including msg box)
  set the decorations of this stack to default
  set the backdrop to none
  set the fixstack of this stack to true
  show menubar
  palette "tools"
  palette "message box"
  palette "Control Brower"
  -- set locs
  set the loc of stack "Tools" to 38,178
  set the loc of this stack to 796,494
  set the loc of stack "Message Box" to 327,981
end fixstack

on centreStack
  set the loc of this stack to the screenloc
end centreStack

on cs
  set the loc of the selObj to the width of this stack/2&comma&the height of this stack/2
end cs

on ps
  send playStopped to player "inst1"
end ps

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

# on keyDown theKey
# if the visible of grp "ratingScale" is true then
# switch theKey
# case 1
# send mouseUp to btn "resp1"
# break
# case 2
# send mouseUp to btn "resp2"
# break
# case 3
# send mouseUp to btn "resp3"
# break
# case 4
# send mouseUp to btn "resp4"
# break
# case 5
# send mouseUp to btn "resp5"
# break
# end switch
# else
# pass keyDown
# end if
# end keyDown

# on enterKey
# if the visible of grp "ratingScale" is true then
# if the hilitedButton of grp "ratingScale" = 0 then
# answer "Please make a rating between 1 and 5"
# pass enterKey
# else
# send mouseUp to btn "OK"
# end if
# else
# pass enterKey
# end if
# end enterKey
    4a �         MemoryExpV1    6  U 
Helvetica   U 
Helvetica   W 
Helvetica   U Lucida Grande   U 
Helvetica   U 
Helvetica   W 
Helvetica   U Lucida Grande   U Lucida Grande   U 
Helvetica   U Lucida Grande   U Helvetica CE,Polish  0 U Lucida Grande  0 U 
Helvetica  U Lucida Grande    U 
Helvetica   U 
Helvetica   W 
Helvetica   W 
Helvetica  $ U 
Helvetica   U 
Helvetica   U Symbol   U Symbol   U Helvetica,Unicode   U Corbel   U Corbel  H U 
Helvetica   U 
Helvetica   U Helvetica Neue  
 U Helvetica Neue   U Helvetica,Unicode   U Helvetica,Unicode   U Monaco   U Monaco   U Arial  
 U Arial   U Times  
 U Times   U Lucida Grande   U 
helvetica   U 
helvetica   W 
helvetica   W 
helvetica   U 
helvetica   W 
helvetica   W 
helvetica  
 W Helvetica Neue  
 U Helvetica Neue,Unicode   U Courier   U Courier   W Courier    U Helvetica Neue   U Courier   W Courier  cREVGeneral    	scriptChecksum  ��ek1�ռ�H<�۳�debugObjects   handlerList  @preopenStack
fixstack
returnKey
enterKey
arrowkey
commandKeyDownscriptSelection  char 2064 to 2063
bookmarks   prevHandler  arrowkeytempScript   stackfileversion  2.7script �<p>on preopenStack -- prepare to run subjects</p>
<p>  get the screenrect</p>
<p>  put item 3 of it into x</p>
<p>  put item 4 of it into y</p>
<p>  set the loc of this stack to x/2,y/2</p>
<p>  set the fixstack of this stack to false -- use to block all sorts of stuff from subjects</p>
<p>  hide menubar</p>
<p>  set the decorations of this stack to empty</p>
<p>  set the backdrop to black</p>
<p>  hide stack &quot;revDocs&quot;</p>
<p>  hide stack &quot;revMenubar&quot;</p>
<p>  hide stack &quot;revTools&quot;</p>
<p>  hide stack &quot;revApplicationOverview&quot;</p>
<p>  choose browse tool</p>
<p>end preopenStack</p>
<p></p>
<p>on fixstack -- to edit the stack: call from anywhere (including msg box)</p>
<p>  set the decorations of this stack to default</p>
<p>  set the backdrop to none</p>
<p>  set the fixstack of this stack to true</p>
<p>  show menubar</p>
<p>  show stack &quot;revDocs&quot;</p>
<p>  show stack &quot;revMenubar&quot;</p>
<p>  show stack &quot;revTools&quot;</p>
<p>  show stack &quot;revApplicationOverview&quot;</p>
<p>end fixstack</p>
<p></p>
<p>on returnKey x</p>
<p>  if the fixstack of this stack is true then pass returnKey</p>
<p>  -- don't pass while running subjects</p>
<p>end returnKey</p>
<p></p>
<p>on enterKey x</p>
<p>  if the fixstack of this stack is true then pass enterKey</p>
<p>  -- don't pass while running subjects</p>
<p>end enterKey</p>
<p></p>
<p>on arrowkey x</p>
<p>  if the fixstack of this stack is true then pass arrowkey</p>
<p>  -- don't pass while running subjects</p>
<p>end arrowkey</p>
<p></p>
<p>on commandKeyDown theKey -- make Command-t speak text</p>
<p>  if theKey = &quot;q&quot; then pass commandKeyDown</p>
<p>  <font color="#980517">if</font> theKey = &quot;w&quot; <font color="#980517">then</font> <font color="#0000FF">pass</font> commandKeyDown</p>
<p>  <font color="#980517">if</font> theKey = &quot;u&quot; and the <font color="#FF0000">visible</font> of image &quot;funnyFace.png&quot; is true <font color="#980517">then</font></p>
<p><font color="#980517">    </font><font color="#0000FF">hide </font>stack &quot;faceRater&quot;</p>
<p>    <font color="#0000FF">open </font>stack &quot;stephPigeonV1b&quot;</p>
<p>  <font color="#980517">else</font></p>
<p><font color="#980517">    </font><font color="#0000FF">pass</font> commandKeyDown</p>
<p>  <font color="#980517">end if</font></p>
<p><font color="#980517">end</font> commandKeyDown</p>
<p></p>
<p><font color="#68228B">--on keyDown theKey</font></p>
<p><font color="#68228B">--  if the visible of btn &quot;9&quot; is true and the disabled of grp &quot;photoGrp&quot; is false then</font></p>
<p><font color="#68228B">--    switch theKey</font></p>
<p><font color="#68228B">--    case 1</font></p>
<p><font color="#68228B">--      send mouseUp to btn &quot;1&quot;</font></p>
<p><font color="#68228B">--      break</font></p>
<p><font color="#68228B">--    case 2</font></p>
<p><font color="#68228B">--      send mouseUp to btn &quot;2&quot;</font></p>
<p><font color="#68228B">--      break</font></p>
<p><font color="#68228B">--    case 3</font></p>
<p><font color="#68228B">--      send mouseUp to btn &quot;3&quot;</font></p>
<p><font color="#68228B">--      break</font></p>
<p><font color="#68228B">--    case 4</font></p>
<p><font color="#68228B">--      send mouseUp to btn &quot;4&quot;</font></p>
<p><font color="#68228B">--      break</font></p>
<p><font color="#68228B">--    case 5</font></p>
<p><font color="#68228B">--      send mouseUp to btn &quot;5&quot;</font></p>
<p><font color="#68228B">--      break</font></p>
<p><font color="#68228B">--    case 6</font></p>
<p><font color="#68228B">--      send mouseUp to btn &quot;6&quot;</font></p>
<p><font color="#68228B">--      break</font></p>
<p><font color="#68228B">--    case 7</font></p>
<p><font color="#68228B">--      send mouseUp to btn &quot;7&quot;</font></p>
<p><font color="#68228B">--      break</font></p>
<p><font color="#68228B">--    case 8</font></p>
<p><font color="#68228B">--      send mouseUp to btn &quot;8&quot;</font></p>
<p><font color="#68228B">--      break</font></p>
<p><font color="#68228B">--    case 9</font></p>
<p><font color="#68228B">--      send mouseUp to btn &quot;9&quot;</font></p>
<p><font color="#68228B">--      break</font></p>
<p><font color="#68228B">--    end switch</font></p>
<p><font color="#68228B">--  else</font></p>
<p><font color="#68228B">--    pass keyDown</font></p>
<p><font color="#68228B">--  end if</font></p>
<p><font color="#68228B">--end keyDown</font></p>
<p></p> cREVGeometryCache    stackID  1137  � brandRater   	P1�global expStartTime,subjectNum,cond,imagePath,dataPath,instPath,studyEvSeq,testEvSeq,studyCnt,recognitionCnt,waitPresentPicTime,startRecognitionMS,fillerTimeTotal,scrambleSolved

on preOpenCard
  set the label of btn "age" to "- How old are you? -"
  set the label of btn "gender" to "- Gender? -"
  set the label of btn "subjectNum" to "- Subject -"
  set the label of btn "waitPresentPicTime" to "5000"
  set the label of btn "fillerTime" to "5"
  show btn "subjectNum"
  show btn "okCond"
  show btn "waitPresentPicTime"
  show btn "fillerTime"
  
  set the itemDelimiter to "/"
  get the filename of this stack
  delete the last item of it
  put it&"/images/" into imagePath
  put it&"/data/" into dataPath
  put it&"/inst/" into instPath
end preOpenCard

on createEvSeq
  -- 01
  set the defaultFolder to imagePath&"setA/01/"
  put the files into picsInImageFolder01
  replace ".DS_Store"&linefeed with "" in picsInImageFolder01
  put scramble(picsInImageFolder01) into picsInImageFolder01
  put 1 into cnt
  repeat until cnt>5
    put "old"&tab&"01"&tab&line cnt of picsInImageFolder01&tab&imagePath&"setB/01/"&line cnt of picsInImageFolder01&linefeed after oldEvSeq
    add 1 to cnt
  end repeat
  
  repeat until cnt>10
    put "new"&tab&"01"&tab&line cnt of picsInImageFolder01&tab&imagePath&"setB/01/"&line cnt of picsInImageFolder01&linefeed after newEvSeq
    add 1 to cnt
  end repeat
  
  -- 02
  set the defaultFolder to imagePath&"setA/02/"
  put the files into picsInImageFolder02
  replace ".DS_Store"&linefeed with "" in picsInImageFolder02
  put scramble(picsInImageFolder02) into picsInImageFolder02
  put 1 into cnt
  repeat until cnt>5
    put "old"&tab&"02"&tab&line cnt of picsInImageFolder02&tab&imagePath&"setB/02/"&line cnt of picsInImageFolder02&linefeed after oldEvSeq
    add 1 to cnt
  end repeat
  
  repeat until cnt>10
    put "new"&tab&"02"&tab&line cnt of picsInImageFolder02&tab&imagePath&"setB/02/"&line cnt of picsInImageFolder02&linefeed after newEvSeq
    add 1 to cnt
  end repeat
  
  -- 03
  set the defaultFolder to imagePath&"setA/03/"
  put the files into picsInImageFolder03
  replace ".DS_Store"&linefeed with "" in picsInImageFolder03
  put scramble(picsInImageFolder03) into picsInImageFolder03
  put 1 into cnt
  repeat until cnt>5
    put "old"&tab&"03"&tab&line cnt of picsInImageFolder03&tab&imagePath&"setB/03/"&line cnt of picsInImageFolder03&linefeed after oldEvSeq
    add 1 to cnt
  end repeat
  
  repeat until cnt>10
    put "new"&tab&"03"&tab&line cnt of picsInImageFolder03&tab&imagePath&"setB/03/"&line cnt of picsInImageFolder03&linefeed after newEvSeq
    add 1 to cnt
  end repeat
  
  -- 04
  set the defaultFolder to imagePath&"setA/04/"
  put the files into picsInImageFolder04
  replace ".DS_Store"&linefeed with "" in picsInImageFolder04
  put scramble(picsInImageFolder04) into picsInImageFolder04
  put 1 into cnt
  repeat until cnt>5
    put "old"&tab&"04"&tab&line cnt of picsInImageFolder04&tab&imagePath&"setB/04/"&line cnt of picsInImageFolder04&linefeed after oldEvSeq
    add 1 to cnt
  end repeat
  
  repeat until cnt>10
    put "new"&tab&"04"&tab&line cnt of picsInImageFolder04&tab&imagePath&"setB/04/"&line cnt of picsInImageFolder04&linefeed after newEvSeq
    add 1 to cnt
  end repeat
  
  -- 05
  set the defaultFolder to imagePath&"setA/05/"
  put the files into picsInImageFolder05
  replace ".DS_Store"&linefeed with "" in picsInImageFolder05
  put scramble(picsInImageFolder05) into picsInImageFolder05
  put 1 into cnt
  repeat until cnt>5
    put "old"&tab&"05"&tab&line cnt of picsInImageFolder05&tab&imagePath&"setB/05/"&line cnt of picsInImageFolder05&linefeed after oldEvSeq
    add 1 to cnt
  end repeat
  
  repeat until cnt>10
    put "new"&tab&"05"&tab&line cnt of picsInImageFolder05&tab&imagePath&"setB/05/"&line cnt of picsInImageFolder05&linefeed after newEvSeq
    add 1 to cnt
  end repeat
  
  -- 06
  set the defaultFolder to imagePath&"setA/06/"
  put the files into picsInImageFolder06
  replace ".DS_Store"&linefeed with "" in picsInImageFolder06
  put scramble(picsInImageFolder06) into picsInImageFolder06
  put 1 into cnt
  repeat until cnt>5
    put "old"&tab&"06"&tab&line cnt of picsInImageFolder06&tab&imagePath&"setB/06/"&line cnt of picsInImageFolder06&linefeed after oldEvSeq
    add 1 to cnt
  end repeat
  
  repeat until cnt>10
    put "new"&tab&"06"&tab&line cnt of picsInImageFolder06&tab&imagePath&"setB/06/"&line cnt of picsInImageFolder06&linefeed after newEvSeq
    add 1 to cnt
  end repeat
  
  -- 07
  set the defaultFolder to imagePath&"setA/07/"
  put the files into picsInImageFolder07
  replace ".DS_Store"&linefeed with "" in picsInImageFolder07
  put scramble(picsInImageFolder07) into picsInImageFolder07
  put 1 into cnt
  repeat until cnt>5
    put "old"&tab&"07"&tab&line cnt of picsInImageFolder07&tab&imagePath&"setB/07/"&line cnt of picsInImageFolder07&linefeed after oldEvSeq
    add 1 to cnt
  end repeat
  
  repeat until cnt>10
    put "new"&tab&"07"&tab&line cnt of picsInImageFolder07&tab&imagePath&"setB/07/"&line cnt of picsInImageFolder07&linefeed after newEvSeq
    add 1 to cnt
  end repeat
  
  -- 08
  set the defaultFolder to imagePath&"setA/08/"
  put the files into picsInImageFolder08
  replace ".DS_Store"&linefeed with "" in picsInImageFolder08
  put scramble(picsInImageFolder08) into picsInImageFolder08
  put 1 into cnt
  repeat until cnt>5
    put "old"&tab&"08"&tab&line cnt of picsInImageFolder08&tab&imagePath&"setB/08/"&line cnt of picsInImageFolder08&linefeed after oldEvSeq
    add 1 to cnt
  end repeat
  
  repeat until cnt>10
    put "new"&tab&"08"&tab&line cnt of picsInImageFolder08&tab&imagePath&"setB/08/"&line cnt of picsInImageFolder08&linefeed after newEvSeq
    add 1 to cnt
  end repeat
  
  -- 09
  set the defaultFolder to imagePath&"setA/09/"
  put the files into picsInImageFolder09
  replace ".DS_Store"&linefeed with "" in picsInImageFolder09
  put scramble(picsInImageFolder09) into picsInImageFolder09
  put 1 into cnt
  repeat until cnt>5
    put "old"&tab&"09"&tab&line cnt of picsInImageFolder09&tab&imagePath&"setB/09/"&line cnt of picsInImageFolder09&linefeed after oldEvSeq
    add 1 to cnt
  end repeat
  
  repeat until cnt>10
    put "new"&tab&"09"&tab&line cnt of picsInImageFolder09&tab&imagePath&"setB/09/"&line cnt of picsInImageFolder09&linefeed after newEvSeq
    add 1 to cnt
  end repeat
  
  -- 10
  set the defaultFolder to imagePath&"setA/10/"
  put the files into picsInImageFolder10
  replace ".DS_Store"&linefeed with "" in picsInImageFolder10
  put scramble(picsInImageFolder10) into picsInImageFolder10
  put 1 into cnt
  repeat until cnt>5
    put "old"&tab&"10"&tab&line cnt of picsInImageFolder10&tab&imagePath&"setB/10/"&line cnt of picsInImageFolder10&linefeed after oldEvSeq
    add 1 to cnt
  end repeat
  
  repeat until cnt>10
    put "new"&tab&"10"&tab&line cnt of picsInImageFolder10&tab&imagePath&"setB/10/"&line cnt of picsInImageFolder10&linefeed after newEvSeq
    add 1 to cnt
  end repeat
  
  put oldEvSeq into studyEvSeq
  
  replace "old" with "study" in studyEvSeq
  replace "setB" with "setA" in studyEvSeq
  
  put oldEvSeq&newEvSeq into testEvSeq
  
  put scramble(studyEvSeq) into studyEvSeq
  put scramble(testEvSeq) into testEvSeq
  
  set the loc of image "printPic" to 720,450
  
  put 1 into studyCnt
end createEvSeq

on studyTask
  set the itemDel to tab
  if line studyCnt of studyEvSeq is empty then
    doDistractorTask
  else
    set the filename of image "printPic" to item 4 of line studyCnt of studyEvSeq
    show image "printPic"
    send hidePrintPic to me in waitPresentPicTime milliseconds
  end if
end studyTask

on hidePrintPic
  hide image "printPic"
  add 1 to studyCnt
  send studyTask to me in 500 milliseconds
end hidePrintPic

on doDistractorTask
  show fld "inst2"
  wait 10 seconds
  hide fld "inst2"
  wait 1 second
  show fld "ready"
  wait 2 seconds
  hide fld "ready"
  send mouseUp to btn "countDownFiller"
  send mouseUp to btn "resetFiller"
end doDistractorTask

on endFillerTask
  set the itemDel to tab
  hide fld "scrambledWord"
  hide fld "unscrambledWord"
  set the filename of player "Instructions2" to instPath&"inst2.mov"
  show player "Instructions2"
  start player "Instructions2"
end endFillerTask

on presentRecognition
  set the itemDel to tab
  if line recognitionCnt of testEvSeq is empty then
    doOut
  else
    set lockscreen to true
    set the filename of image "printPic" to item 4 of line recognitionCnt of testEvSeq
    set the loc of the image "printPic" to 720,388
    show image "printPic"
    show fld "printRecLabel"
    show btn "seenPrint"
    show btn "notSeenPrint"
    set lockscreen to false
    put the milliseconds into startRecognitionMS
  end if
end presentRecognition


on doOut
  hide image "printPic"
  hide fld "printRecLabel"
  hide btn "seenPrint"
  hide btn "notSeenPrint"
  show grp "doneExp"
  set the itemDel to tab
  put "Matt's experiment testing long term memory for fingerprints"&linefeed&"Subject Number:"&tab&the label of btn "subjectNum"&linefeed&"Print Time (ms):"&tab&the label of btn "waitPresentPicTime"&linefeed&"Filler Task Time (ms):"&tab&the label of btn "fillerTime"&linefeed&"Qualification:"&tab&the label of btn "qualification"&linefeed&"Experience:"&tab&the label of btn "experience"&linefeed&"Age:"&tab&the label of btn "age"&linefeed&"Gender:"&tab&the label of btn "gender"&linefeed&linefeed after outVar
  put "Experiment Started:"&tab&expStartTime&linefeed&"Experiment Finished:"&tab&the long date&tab&the long time&linefeed&linefeed after outVar
  put "Study Phase (as presented)"&linefeed&"Trial Type"&tab&"Finger"&tab&"Image Number"&tab&"Filename"&linefeed&studyEvSeq&linefeed&linefeed after outVar
  
  put 1 into cnt
  repeat until cnt>the number of lines of testEvSeq
    if item 1 of line cnt of testEvSeq = item 5 of line cnt of testEvSeq then
      put tab&1 after item 5 of line cnt of testEvSeq
    else
      put tab&0 after item 5 of line cnt of testEvSeq
    end if
    add 1 to cnt
  end repeat
  
  put "Recognition Phase (as presented)"&linefeed&"Trial Type"&tab&"Finger"&tab&"Image Number"&tab&"Filename"&tab&"Judgement"&tab&"Correct (1) or Incorrect (0)"&tab&"RT (ms)"&linefeed&testEvSeq&linefeed&linefeed after outVar
  
  put studyEvSeq into studyEvSeqSorted
  sort studyEvSeqSorted by item 3 of each
  
  put testEvSeq into testEvSeqSorted
  sort testEvSeqSorted by item 1 of each&item 3 of each
  
  put 1 into cnt
  repeat until cnt>50
    put item 6 of line cnt of testEvSeqSorted&comma after meanRecAccuracyNew
    put item 7 of line cnt of testEvSeqSorted&comma after meanRecRTnew
    add 1 to cnt
  end repeat
  
  repeat until cnt>100
    put item 6 of line cnt of testEvSeqSorted&comma after meanRecAccuracyOld
    put item 7 of line cnt of testEvSeqSorted&comma after meanRecRTold
    add 1 to cnt
  end repeat
  
  put average(meanRecAccuracyNew) into meanRecAccuracyNew
  put average(meanRecRTnew) into meanRecRTnew
  put average(meanRecAccuracyOld) into meanRecAccuracyOld
  put average(meanRecRTold) into meanRecRTold
  
  put linefeed&linefeed&"Mean Recognition Accuracy for Old Items"&tab&meanRecAccuracyOld&linefeed&"Mean Recognition Accuracy for New Items"&tab&meanRecAccuracyNew&linefeed&"Mean Recognition RT for Old Items"&tab&meanRecRTold&linefeed&"Mean Recognition RT for New Items"&tab&meanRecRTnew after line 6 of outVar
  
  put "Study Phase (sorted)"&linefeed&"Trial Type"&tab&"Finger"&tab&"Image Number"&tab&"Filename"&linefeed&studyEvSeqSorted&linefeed&linefeed after outVar
  put "Recognition Phase (sorted)"&linefeed&"Trial Type"&tab&"Finger"&tab&"Image Number"&tab&"Filename"&tab&"Judgement"&tab&"Correct (1) or Incorrect (0)"&tab&"RT (ms)"&linefeed&testEvSeqSorted&linefeed&linefeed after outVar
  
  put "Filler Task Results"&linefeed&scrambleSolved after outVar
  
  set the itemdelimiter to "/"
  get the filename of this stack
  delete the last item of it
  put it&"/data/" into path2
  -------------------------
  put the label of btn "subjectNum"&"_"&"MemoryExpV1_print"&"_"&the ticks into fname
  put outVar into url ("file:"&path2&fname&".txt")
  send quitMC to me in 5 seconds
end doOut

on quitMC
  quit MetaCard
end quitMC

function scramble x
  put the number of lines of x into r
  put the number of items of line 1 of x into c
  if r=1 then
    repeat with i=c down to 2
      put random(i) into v
      put item v of x into t
      put item i of x into item v of x
      put t into item i of x
    end repeat
  else
    repeat with i= r down to 2
      put random(i) into v
      put line v of x into t
      put line i of x into line v of x
      put t into line i of x
    end repeat
  end if
  return x
end scramble
     �     ��    � cREVGeneral    scriptChecksum  ��7V�^<�r���;�
bookmarks   breakPoints   handlerList  7openCard
hideAll
init
startExp
nextTrial
doOut
scrambletempScript   prevHandler  doOutscriptSelection  char 6282 to 6281script ;�<p>global expStartTime,brandCnt,qOrder,qOrderLine</p>
<p></p>
<p>on openCard</p>
<p>  <font color="#0000FF">set</font><font color="#000000"></font> the<font color="#000000"></font> <font color="#FF0000">label</font><font color="#000000"></font> of<font color="#000000"></font> btn<font color="#000000"></font> &quot;age&quot; to<font color="#000000"></font> &quot;- How old are you? -&quot;</p>
<p>  set the label of btn &quot;gender&quot; to &quot;- Gender? -&quot;</p>
<p>  </p>
<p>  hideAll</p>
<p>  </p>
<p>  show btn &quot;age&quot;</p>
<p>  show btn &quot;gender&quot;</p>
<p>  show btn &quot;OKdemog&quot;</p>
<p>  </p>
<p>  put scramble(fld &quot;brandList&quot;) into fld &quot;brandList&quot;</p>
<p>  put scramble(fld &quot;qOrder&quot;) into fld &quot;qOrder&quot;</p>
<p>  </p>
<p>  put 1 into brandCnt</p>
<p>  </p>
<p>  put empty into fld &quot;genderRatings&quot;</p>
<p>  put empty into fld &quot;prestigeRatings&quot;</p>
<p>  put empty into fld &quot;familiarityRatings&quot;</p>
<p>  init</p>
<p>end openCard</p>
<p></p>
<p>on hideAll</p>
<p>  hide fld &quot;brandList&quot;</p>
<p>  </p>
<p>  hide grp &quot;genderGrp&quot;</p>
<p>  hide grp &quot;genderRate&quot;</p>
<p>  hide btn &quot;dunnog&quot;</p>
<p>  hide btn &quot;brandForFemales&quot;</p>
<p>  hide btn &quot;brandForAnyone&quot;</p>
<p>  hide btn &quot;brandForMales&quot;</p>
<p>  </p>
<p>  hide grp &quot;prestigiousGrp&quot;</p>
<p>  hide grp &quot;prestigiousRate&quot;</p>
<p>  hide btn &quot;dunnop&quot;</p>
<p>  hide fld &quot;np&quot;</p>
<p>  hide btn &quot;1p&quot;</p>
<p>  hide btn &quot;2p&quot;</p>
<p>  hide btn &quot;3p&quot;</p>
<p>  hide btn &quot;4p&quot;</p>
<p>  hide btn &quot;5p&quot;</p>
<p>  hide fld &quot;vp&quot;</p>
<p>  </p>
<p>  hide grp &quot;familiarGrp&quot;</p>
<p>  hide grp &quot;familiarRate&quot;</p>
<p>  hide fld &quot;nf&quot;</p>
<p>  hide btn &quot;1f&quot;</p>
<p>  hide btn &quot;2f&quot;</p>
<p>  hide btn &quot;3f&quot;</p>
<p>  hide btn &quot;4f&quot;</p>
<p>  hide btn &quot;5f&quot;</p>
<p>  hide fld &quot;vf&quot;</p>
<p>  </p>
<p>  hide fld &quot;brandFld&quot;</p>
<p>  hide grp &quot;brandGrp&quot;</p>
<p>  </p>
<p>  hide grp &quot;instGrp&quot;</p>
<p>  hide fld &quot;inst&quot;</p>
<p>  </p>
<p>  hide fld &quot;qOrder&quot;</p>
<p>  </p>
<p>  hide fld &quot;genderRatings&quot;</p>
<p>  hide fld &quot;prestigeRatings&quot;</p>
<p>  hide fld &quot;familiarityRatings&quot;</p>
<p>  </p>
<p>  hide btn &quot;Begin&quot;</p>
<p>  </p>
<p>  hide fld &quot;doneExp&quot;</p>
<p>  hide grp &quot;doneExp&quot;</p>
<p>end hideAll</p>
<p></p>
<p>on init</p>
<p>  enable btn &quot;Begin&quot;</p>
<p>  </p>
<p>  enable grp &quot;genderGrp&quot;</p>
<p>  enable grp &quot;genderRate&quot;</p>
<p>  enable btn &quot;dunnog&quot;</p>
<p>  enable btn &quot;brandForFemales&quot;</p>
<p>  enable btn &quot;brandForAnyone&quot;</p>
<p>  enable btn &quot;brandForMales&quot;</p>
<p>  </p>
<p>  enable grp &quot;prestigiousGrp&quot;</p>
<p>  enable grp &quot;prestigiousRate&quot;</p>
<p>  enable btn &quot;dunnop&quot;</p>
<p>  enable fld &quot;np&quot;</p>
<p>  enable btn &quot;1p&quot;</p>
<p>  enable btn &quot;2p&quot;</p>
<p>  enable btn &quot;3p&quot;</p>
<p>  enable btn &quot;4p&quot;</p>
<p>  enable btn &quot;5p&quot;</p>
<p>  enable fld &quot;vp&quot;</p>
<p>  </p>
<p>  enable grp &quot;familiarGrp&quot;</p>
<p>  enable grp &quot;familiarRate&quot;</p>
<p>  enable fld &quot;nf&quot;</p>
<p>  enable btn &quot;1f&quot;</p>
<p>  enable btn &quot;2f&quot;</p>
<p>  enable btn &quot;3f&quot;</p>
<p>  enable btn &quot;4f&quot;</p>
<p>  enable btn &quot;5f&quot;</p>
<p>  enable fld &quot;vf&quot;</p>
<p>  </p>
<p>  set the hilite of btn &quot;Begin&quot; to false</p>
<p>  </p>
<p>  set the hilite of btn &quot;dunnog&quot; to false</p>
<p>  set the hilite of btn &quot;brandForFemales&quot; to false</p>
<p>  set the hilite of btn &quot;brandForAnyone&quot; to false</p>
<p>  set the hilite of btn &quot;brandForMales&quot; to false</p>
<p>  set the hilite of btn &quot;dunnop&quot; to false</p>
<p>  set the hilite of btn &quot;1p&quot; to false</p>
<p>  set the hilite of btn &quot;2p&quot; to false</p>
<p>  set the hilite of btn &quot;3p&quot; to false</p>
<p>  set the hilite of btn &quot;4p&quot; to false</p>
<p>  set the hilite of btn &quot;5p&quot; to false</p>
<p>  set the hilite of btn &quot;1f&quot; to false</p>
<p>  set the hilite of btn &quot;2f&quot; to false</p>
<p>  set the hilite of btn &quot;3f&quot; to false</p>
<p>  set the hilite of btn &quot;4f&quot; to false</p>
<p>  set the hilite of btn &quot;5f&quot; to false</p>
<p>end init</p>
<p></p>
<p>on startExp</p>
<p>  hide btn &quot;Begin&quot;</p>
<p>  put line 1 of fld &quot;qOrder&quot; into qOrder</p>
<p>  put 1 into qOrderLine</p>
<p>  nextTrial</p>
<p>end startExp</p>
<p></p>
<p>on nextTrial</p>
<p>  if brandCnt&gt;the number of lines of fld &quot;brandList&quot; then</p>
<p>    hideAll</p>
<p>    doOut</p>
<p>  else </p>
<p>    set lockscreen to true</p>
<p>    hideAll</p>
<p>    init</p>
<p>    if qOrderLine = 1 then</p>
<p>      put line 2 of fld &quot;qOrder&quot; into qOrder</p>
<p>      switch qOrder</p>
<p>      case &quot;gender&quot;</p>
<p>        show btn &quot;dunnog&quot;</p>
<p>        show btn &quot;brandForFemales&quot;</p>
<p>        show btn &quot;brandForAnyone&quot;</p>
<p>        show btn &quot;brandForMales&quot;</p>
<p>        show grp &quot;genderGrp&quot;</p>
<p>        show grp &quot;genderRate&quot;</p>
<p>        break</p>
<p>      case &quot;prestige&quot;</p>
<p>        show btn &quot;dunnop&quot;</p>
<p>        show fld &quot;np&quot;</p>
<p>        show btn &quot;1p&quot;</p>
<p>        show btn &quot;2p&quot;</p>
<p>        show btn &quot;3p&quot;</p>
<p>        show btn &quot;4p&quot;</p>
<p>        show btn &quot;5p&quot;</p>
<p>        show fld &quot;vp&quot;</p>
<p>        show grp &quot;prestigiousGrp&quot;</p>
<p>        show grp &quot;prestigiousRate&quot;</p>
<p>        break</p>
<p>      case &quot;familiarity&quot;</p>
<p>        show fld &quot;nf&quot;</p>
<p>        show btn &quot;1f&quot;</p>
<p>        show btn &quot;2f&quot;</p>
<p>        show btn &quot;3f&quot;</p>
<p>        show btn &quot;4f&quot;</p>
<p>        show btn &quot;5f&quot;</p>
<p>        show fld &quot;vf&quot;</p>
<p>        show grp &quot;familiarGrp&quot;</p>
<p>        show grp &quot;familiarRate&quot;</p>
<p>        break</p>
<p>      end switch</p>
<p>       </p>
<p>      put line brandCnt of fld &quot;brandList&quot; into fld &quot;brandFld&quot;</p>
<p>      show fld &quot;brandFld&quot;</p>
<p>      show grp &quot;brandGrp&quot;</p>
<p>      add 1 to qOrderLine</p>
<p>      set lockscreen to false</p>
<p>      break</p>
<p>    end if</p>
<p>     </p>
<p>    if  qOrderLine = 2 then</p>
<p>      put line 3 of fld &quot;qOrder&quot; into qOrder</p>
<p>      switch qOrder</p>
<p>      case &quot;gender&quot;</p>
<p>        show btn &quot;dunnog&quot;</p>
<p>        show btn &quot;brandForFemales&quot;</p>
<p>        show btn &quot;brandForAnyone&quot;</p>
<p>        show btn &quot;brandForMales&quot;</p>
<p>        show grp &quot;genderGrp&quot;</p>
<p>        show grp &quot;genderRate&quot;</p>
<p>        break</p>
<p>      case &quot;prestige&quot;</p>
<p>        show btn &quot;dunnop&quot;</p>
<p>        show fld &quot;np&quot;</p>
<p>        show btn &quot;1p&quot;</p>
<p>        show btn &quot;2p&quot;</p>
<p>        show btn &quot;3p&quot;</p>
<p>        show btn &quot;4p&quot;</p>
<p>        show btn &quot;5p&quot;</p>
<p>        show fld &quot;vp&quot;</p>
<p>        show grp &quot;prestigiousGrp&quot;</p>
<p>        show grp &quot;prestigiousRate&quot;</p>
<p>        break</p>
<p>      case &quot;familiarity&quot;</p>
<p>        show fld &quot;nf&quot;</p>
<p>        show btn &quot;1f&quot;</p>
<p>        show btn &quot;2f&quot;</p>
<p>        show btn &quot;3f&quot;</p>
<p>        show btn &quot;4f&quot;</p>
<p>        show btn &quot;5f&quot;</p>
<p>        show fld &quot;vf&quot;</p>
<p>        show grp &quot;familiarGrp&quot;</p>
<p>        show grp &quot;familiarRate&quot;</p>
<p>        break</p>
<p>      end switch</p>
<p>       </p>
<p>      put line brandCnt of fld &quot;brandList&quot; into fld &quot;brandFld&quot;</p>
<p>      show fld &quot;brandFld&quot;</p>
<p>      show grp &quot;brandGrp&quot;</p>
<p>      add 1 to qOrderLine</p>
<p>      set lockscreen to false</p>
<p>      break</p>
<p>    end if</p>
<p>     </p>
<p>    if  qOrderLine = 3 then</p>
<p>      put line 1 of fld &quot;qOrder&quot; into qOrder</p>
<p>      switch qOrder</p>
<p>      case &quot;gender&quot;</p>
<p>        show btn &quot;dunnog&quot;</p>
<p>        show btn &quot;brandForFemales&quot;</p>
<p>        show btn &quot;brandForAnyone&quot;</p>
<p>        show btn &quot;brandForMales&quot;</p>
<p>        show grp &quot;genderGrp&quot;</p>
<p>        show grp &quot;genderRate&quot;</p>
<p>        break</p>
<p>      case &quot;prestige&quot;</p>
<p>        show btn &quot;dunnop&quot;</p>
<p>        show fld &quot;np&quot;</p>
<p>        show btn &quot;1p&quot;</p>
<p>        show btn &quot;2p&quot;</p>
<p>        show btn &quot;3p&quot;</p>
<p>        show btn &quot;4p&quot;</p>
<p>        show btn &quot;5p&quot;</p>
<p>        show fld &quot;vp&quot;</p>
<p>        show grp &quot;prestigiousGrp&quot;</p>
<p>        show grp &quot;prestigiousRate&quot;</p>
<p>        break</p>
<p>      case &quot;familiarity&quot;</p>
<p>        show fld &quot;nf&quot;</p>
<p>        show btn &quot;1f&quot;</p>
<p>        show btn &quot;2f&quot;</p>
<p>        show btn &quot;3f&quot;</p>
<p>        show btn &quot;4f&quot;</p>
<p>        show btn &quot;5f&quot;</p>
<p>        show fld &quot;vf&quot;</p>
<p>        show grp &quot;familiarGrp&quot;</p>
<p>        show grp &quot;familiarRate&quot;</p>
<p>        break</p>
<p>      end switch</p>
<p>       </p>
<p>      put line brandCnt of fld &quot;brandList&quot; into fld &quot;brandFld&quot;</p>
<p>      show fld &quot;brandFld&quot;</p>
<p>      show grp &quot;brandGrp&quot;</p>
<p>      put 1 into qOrderLine</p>
<p>      add 1 to brandCnt</p>
<p>      set lockscreen to false</p>
<p>      break</p>
<p>    end if</p>
<p>  end if</p>
<p>end nextTrial</p>
<p></p>
<p>on doOut</p>
<p>  <font color="#0000FF">put</font><font color="#000000"> </font>&quot;Brand Name Rating Task&quot;&amp;<font color="#000000">linefeed&amp;the</font> <font color="#FF0000">label</font><font color="#000000"></font> of<font color="#000000"></font> btn<font color="#000000"></font> &quot;age&quot;&amp;<font color="#000000">linefeed&amp;the </font><font color="#FF0000">label</font><font color="#000000"> </font>of<font color="#000000"> </font>btn<font color="#000000"> </font>&quot;gender&quot;&amp;<font color="#000000">linefeed </font>after<font color="#000000"> </font>outVar<font color="#000000"></font></p>
<p>  <font color="#0000FF">put</font><font color="#000000"></font> expStartTime<font color="#000000">&amp;linefeed&amp;the</font> <font color="#FF0000">long</font><font color="#000000"></font> <font color="#F88017">date</font><font color="#000000">&amp;tab&amp;the</font> <font color="#FF0000">long</font><font color="#000000"></font> <font color="#F88017">time</font><font color="#000000">&amp;linefeed&amp;linefeed</font> after<font color="#000000"></font> outVar<font color="#000000"></font></p>
<p>  put &quot;Alphabetised Brands&quot;&amp;tab&amp;&quot;Familiarity&quot;&amp;tab&amp;&quot;Prestige&quot;&amp;tab&amp;&quot;Gender&quot;&amp;linefeed after outVar</p>
<p>  </p>
<p>  put 1 into j</p>
<p>  repeat until j&gt;the number of lines of fld &quot;brandList&quot;</p>
<p>    <font color="#0000FF">put</font> line j of fld &quot;brandList&quot;&amp;<font color="#000000">tab&amp;line</font> j of fld &quot;familiarityRatings&quot;&amp;<font color="#000000">tab&amp;line</font> j of fld &quot;prestigeRatings&quot;&amp;<font color="#000000">tab&amp;line</font> j of fld &quot;genderRatings&quot;&amp;<font color="#000000">linefeed </font>after outRatings</p>
<p>    add 1 to j</p>
<p>  end repeat</p>
<p>  </p>
<p>  <font color="#0000FF">set</font> the <font color="#FF0000">itemDel</font> to tab</p>
<p><font color="#000000">  </font><font color="#0000FF">put</font><font color="#000000"> </font>outRatings<font color="#000000"> </font>into<font color="#000000"> </font>outAlpha</p>
<p>  <font color="#0000FF">sort</font> lines of outAlpha ascending by item 1 of each</p>
<p><font color="#000000">  </font></p>
<p><font color="#000000">  </font><font color="#0000FF">put</font><font color="#000000"> </font>line<font color="#000000"> </font>2<font color="#000000"> </font>of<font color="#000000"> </font>fld<font color="#000000"> </font>&quot;qOrder&quot;&amp;<font color="#000000">linefeed&amp;line </font>3<font color="#000000"> </font>of<font color="#000000"> </font>fld<font color="#000000"> </font>&quot;qOrder&quot;&amp;<font color="#000000">linefeed&amp;line </font>1<font color="#000000"> </font>of<font color="#000000"> </font>fld<font color="#000000"> </font>&quot;qOrder&quot; into<font color="#000000"> </font>qOrderOut</p>
<p>  </p>
<p>  <font color="#0000FF">put</font> outAlpha<font color="#000000">&amp;linefeed&amp;linefeed&amp;</font>&quot;Brands as Presented&quot;<font color="#000000">&amp;tab&amp;&quot;Familiarity&quot;&amp;tab&amp;&quot;Prestige&quot;&amp;tab&amp;&quot;Gender&quot;&amp;linefeed&amp;outRatings&amp;linefeed&amp;linefeed&amp;&quot;Question</font> Order<font color="#000000">:</font>&quot;<font color="#000000">&amp;linefeed&amp;qOrderOut</font> after outVar</p>
<p></p>
<p>  set the itemdelimiter to &quot;/&quot;</p>
<p>  get the filename of this stack</p>
<p>  delete the last item of it</p>
<p>  put it&amp;&quot;/data/&quot; into path2</p>
<p>  -------------------------</p>
<p>  put &quot;brandRatings&quot;&amp;&quot;_&quot;&amp;the ticks into fname</p>
<p>  put outVar into url (&quot;file:&quot;&amp;path2&amp;fname&amp;&quot;.txt&quot;)</p>
<p>  --</p>
<p>  set lockscreen to true</p>
<p>  show fld &quot;doneExp&quot;</p>
<p>  show grp &quot;doneExp&quot;</p>
<p>  unlock screen with visual effect dissolve very fast</p>
<p>  <font color="#68228B">--</font></p>
<p>  <font color="#68228B">-----------------------------</font></p>
<p><font color="#68228B">  </font><font color="#0000FF">wait</font><font color="#000000"> </font>5<font color="#000000"> </font><font color="#F88017">seconds</font></p>
<p><font color="#000000">  </font><font color="#0000FF">quit</font><font color="#000000"> </font>Revolution</p>
<p>end doOut</p>
<p></p>
<p><font color="#0000FF">function</font> scramble x</p>
<p>  put the number of lines of x into r</p>
<p>  put the number of items of line 1 of x into c</p>
<p>  if r=1 then</p>
<p>    repeat with i=c down to 2</p>
<p>      put random(i) into v</p>
<p>      put item v of x into t</p>
<p>      put item i of x into item v of x</p>
<p>      put t into item i of x</p>
<p>    end repeat</p>
<p>  else</p>
<p>    repeat with i= r down to 2</p>
<p>      put random(i) into v</p>
<p>      put line v of x into t</p>
<p>      put line i of x into line v of x</p>
<p>      put t into line i of x</p>
<p>    end repeat</p>
<p>  end if</p>
<p>  return x</p>
<p><font color="#980517">end</font> scramble</p>
<p></p> cREVGeometryCacheIDs    )1211605380832  10641211605946579  11201211606098007  11231183612271714  10711211605121603  11081183632171942  10571183615772484  10751183615761328  10731211601658734  10951183634586188  10601211605597734  11111211605597735  11121211604984170  11071211605597736  11131211605597737  11141211606007428  11211211605597738  11151211605597740  11171211605597739  11161211605597741  11181211605597742  11191211605592901  11101211606117976  10931211600686604  10871211607768148  11331183620122468  10481183615767878  10741211606033995  11221211605385961  10701211607634612  11271183619489970  10831183615756962  10721211606712614  11241183620042220  10451211607764129  11311183620042221  10461211608742612  11351211606585341  11031211609434444  11361183619566789  10411211606128623  1102 cREVGeometrycache    total  41order  
  o           P        y  x  J  L      !  "  H  )  *  -  Q  %  W  X  � brandRater   	P�global expStartTime,brandCnt,qOrder,qOrderLine

on preOpenCard
  set the label of btn "age" to "- How old are you? -"
  set the label of btn "gender" to "- Gender? -"
  
  hideAll
  
  show btn "age"
  show btn "gender"
  show btn "OKdemog"
  
  put scramble(fld "brandList") into fld "brandList"
  put scramble(fld "qOrder") into fld "qOrder"
  
  put 1 into brandCnt
  
  put empty into fld "genderRatings"
  put empty into fld "prestigeRatings"
  put empty into fld "familiarityRatings"
  init
end preOpenCard

on hideAll
  hide fld "brandList"
  
  hide grp "genderGrp"
  hide grp "genderRate"
  hide btn "dunnog"
  hide btn "brandForFemales"
  hide btn "brandForAnyone"
  hide btn "brandForMales"
  
  hide grp "prestigiousGrp"
  hide grp "prestigiousRate"
  hide btn "dunnop"
  hide fld "np"
  hide btn "1p"
  hide btn "2p"
  hide btn "3p"
  hide btn "4p"
  hide btn "5p"
  hide fld "vp"
  
  hide grp "familiarGrp"
  hide grp "familiarRate"
  hide fld "nf"
  hide btn "1f"
  hide btn "2f"
  hide btn "3f"
  hide btn "4f"
  hide btn "5f"
  hide fld "vf"
  
  hide fld "brandFld"
  hide grp "brandGrp"
  
  hide grp "instGrp"
  hide fld "inst"
  
  hide fld "qOrder"
  
  hide fld "genderRatings"
  hide fld "prestigeRatings"
  hide fld "familiarityRatings"
  
  hide btn "Begin"
  
  hide fld "doneExp"
  hide grp "doneExp"
end hideAll

on init
  enable btn "Begin"
  
  enable grp "genderGrp"
  enable grp "genderRate"
  enable btn "dunnog"
  enable btn "brandForFemales"
  enable btn "brandForAnyone"
  enable btn "brandForMales"
  
  enable grp "prestigiousGrp"
  enable grp "prestigiousRate"
  enable btn "dunnop"
  enable fld "np"
  enable btn "1p"
  enable btn "2p"
  enable btn "3p"
  enable btn "4p"
  enable btn "5p"
  enable fld "vp"
  
  enable grp "familiarGrp"
  enable grp "familiarRate"
  enable fld "nf"
  enable btn "1f"
  enable btn "2f"
  enable btn "3f"
  enable btn "4f"
  enable btn "5f"
  enable fld "vf"
  
  set the hilite of btn "Begin" to false
  
  set the hilite of btn "dunnog" to false
  set the hilite of btn "brandForFemales" to false
  set the hilite of btn "brandForAnyone" to false
  set the hilite of btn "brandForMales" to false
  set the hilite of btn "dunnop" to false
  set the hilite of btn "1p" to false
  set the hilite of btn "2p" to false
  set the hilite of btn "3p" to false
  set the hilite of btn "4p" to false
  set the hilite of btn "5p" to false
  set the hilite of btn "1f" to false
  set the hilite of btn "2f" to false
  set the hilite of btn "3f" to false
  set the hilite of btn "4f" to false
  set the hilite of btn "5f" to false
end init

on startExp
  hide btn "Begin"
  put line 1 of fld "qOrder" into qOrder
  put 1 into qOrderLine
  nextTrial
end startExp

on nextTrial
  if brandCnt>the number of lines of fld "brandList" then
    hideAll
    doOut
  else
    set lockscreen to true
    hideAll
    init
    if qOrderLine = 1 then
      put line 2 of fld "qOrder" into qOrder
      switch qOrder
      case "gender"
        show btn "dunnog"
        show btn "brandForFemales"
        show btn "brandForAnyone"
        show btn "brandForMales"
        show grp "genderGrp"
        show grp "genderRate"
        break
      case "prestige"
        show btn "dunnop"
        show fld "np"
        show btn "1p"
        show btn "2p"
        show btn "3p"
        show btn "4p"
        show btn "5p"
        show fld "vp"
        show grp "prestigiousGrp"
        show grp "prestigiousRate"
        break
      case "familiarity"
        show fld "nf"
        show btn "1f"
        show btn "2f"
        show btn "3f"
        show btn "4f"
        show btn "5f"
        show fld "vf"
        show grp "familiarGrp"
        show grp "familiarRate"
        break
      end switch
      
      put line brandCnt of fld "brandList" into fld "brandFld"
      show fld "brandFld"
      show grp "brandGrp"
      add 1 to qOrderLine
      set lockscreen to false
      break
    end if
    
    if  qOrderLine = 2 then
      put line 3 of fld "qOrder" into qOrder
      switch qOrder
      case "gender"
        show btn "dunnog"
        show btn "brandForFemales"
        show btn "brandForAnyone"
        show btn "brandForMales"
        show grp "genderGrp"
        show grp "genderRate"
        break
      case "prestige"
        show btn "dunnop"
        show fld "np"
        show btn "1p"
        show btn "2p"
        show btn "3p"
        show btn "4p"
        show btn "5p"
        show fld "vp"
        show grp "prestigiousGrp"
        show grp "prestigiousRate"
        break
      case "familiarity"
        show fld "nf"
        show btn "1f"
        show btn "2f"
        show btn "3f"
        show btn "4f"
        show btn "5f"
        show fld "vf"
        show grp "familiarGrp"
        show grp "familiarRate"
        break
      end switch
      
      put line brandCnt of fld "brandList" into fld "brandFld"
      show fld "brandFld"
      show grp "brandGrp"
      add 1 to qOrderLine
      set lockscreen to false
      break
    end if
    
    if  qOrderLine = 3 then
      put line 1 of fld "qOrder" into qOrder
      switch qOrder
      case "gender"
        show btn "dunnog"
        show btn "brandForFemales"
        show btn "brandForAnyone"
        show btn "brandForMales"
        show grp "genderGrp"
        show grp "genderRate"
        break
      case "prestige"
        show btn "dunnop"
        show fld "np"
        show btn "1p"
        show btn "2p"
        show btn "3p"
        show btn "4p"
        show btn "5p"
        show fld "vp"
        show grp "prestigiousGrp"
        show grp "prestigiousRate"
        break
      case "familiarity"
        show fld "nf"
        show btn "1f"
        show btn "2f"
        show btn "3f"
        show btn "4f"
        show btn "5f"
        show fld "vf"
        show grp "familiarGrp"
        show grp "familiarRate"
        break
      end switch
      
      put line brandCnt of fld "brandList" into fld "brandFld"
      show fld "brandFld"
      show grp "brandGrp"
      put 1 into qOrderLine
      add 1 to brandCnt
      set lockscreen to false
      break
    end if
  end if
end nextTrial

on doOut
  put "Brand Name Rating Task"&linefeed&the label of btn "age"&linefeed&the label of btn "gender"&linefeed after outVar
  put expStartTime&linefeed&the long date&tab&the long time&linefeed&linefeed after outVar
  put "Alphabetised Brands"&tab&"Familiarity"&tab&"Prestige"&tab&"Gender"&linefeed after outVar
  
  put 1 into j
  repeat until j>the number of lines of fld "brandList"
    put line j of fld "brandList"&tab&line j of fld "familiarityRatings"&tab&line j of fld "prestigeRatings"&tab&line j of fld "genderRatings"&linefeed after outRatings
    add 1 to j
  end repeat
  
  set the itemDel to tab
  put outRatings into outAlpha
  sort lines of outAlpha ascending by item 1 of each
  
  put line 2 of fld "qOrder"&linefeed&line 3 of fld "qOrder"&linefeed&line 1 of fld "qOrder" into qOrderOut
  
  put outAlpha&linefeed&linefeed&"Brands as Presented"&tab&"Familiarity"&tab&"Prestige"&tab&"Gender"&linefeed&outRatings&linefeed&linefeed&"Question Order:"&linefeed&qOrderOut after outVar
  
  set the itemdelimiter to "/"
  get the filename of this stack
  delete the last item of it
  put it&"/data/" into path2
  -------------------------
  put "brandRatings"&"_"&the ticks into fname
  put outVar into url ("file:"&path2&fname&".txt")
  --
  set lockscreen to true
  show fld "doneExp"
  show grp "doneExp"
  unlock screen with visual effect dissolve very fast
  --
  -----------------------------
  wait 5 seconds
  quit Revolution
end doOut

function scramble x
  put the number of lines of x into r
  put the number of items of line 1 of x into c
  if r=1 then
    repeat with i=c down to 2
      put random(i) into v
      put item v of x into t
      put item i of x into item v of x
      put t into item i of x
    end repeat
  else
    repeat with i= r down to 2
      put random(i) into v
      put line v of x into t
      put line i of x into line v of x
      put t into line i of x
    end repeat
  end if
  return x
end scramble
     �     �X    � cREVGeneral    scriptChecksum  ��7V�^<�r���;�
bookmarks   handlerList  7openCard
hideAll
init
startExp
nextTrial
doOut
scramblebreakPoints   scriptSelection  char 6282 to 6281prevHandler  doOuttempScript   script ;�<p>global expStartTime,brandCnt,qOrder,qOrderLine</p>
<p></p>
<p>on openCard</p>
<p>  <font color="#0000FF">set</font><font color="#000000"></font> the<font color="#000000"></font> <font color="#FF0000">label</font><font color="#000000"></font> of<font color="#000000"></font> btn<font color="#000000"></font> &quot;age&quot; to<font color="#000000"></font> &quot;- How old are you? -&quot;</p>
<p>  set the label of btn &quot;gender&quot; to &quot;- Gender? -&quot;</p>
<p>  </p>
<p>  hideAll</p>
<p>  </p>
<p>  show btn &quot;age&quot;</p>
<p>  show btn &quot;gender&quot;</p>
<p>  show btn &quot;OKdemog&quot;</p>
<p>  </p>
<p>  put scramble(fld &quot;brandList&quot;) into fld &quot;brandList&quot;</p>
<p>  put scramble(fld &quot;qOrder&quot;) into fld &quot;qOrder&quot;</p>
<p>  </p>
<p>  put 1 into brandCnt</p>
<p>  </p>
<p>  put empty into fld &quot;genderRatings&quot;</p>
<p>  put empty into fld &quot;prestigeRatings&quot;</p>
<p>  put empty into fld &quot;familiarityRatings&quot;</p>
<p>  init</p>
<p>end openCard</p>
<p></p>
<p>on hideAll</p>
<p>  hide fld &quot;brandList&quot;</p>
<p>  </p>
<p>  hide grp &quot;genderGrp&quot;</p>
<p>  hide grp &quot;genderRate&quot;</p>
<p>  hide btn &quot;dunnog&quot;</p>
<p>  hide btn &quot;brandForFemales&quot;</p>
<p>  hide btn &quot;brandForAnyone&quot;</p>
<p>  hide btn &quot;brandForMales&quot;</p>
<p>  </p>
<p>  hide grp &quot;prestigiousGrp&quot;</p>
<p>  hide grp &quot;prestigiousRate&quot;</p>
<p>  hide btn &quot;dunnop&quot;</p>
<p>  hide fld &quot;np&quot;</p>
<p>  hide btn &quot;1p&quot;</p>
<p>  hide btn &quot;2p&quot;</p>
<p>  hide btn &quot;3p&quot;</p>
<p>  hide btn &quot;4p&quot;</p>
<p>  hide btn &quot;5p&quot;</p>
<p>  hide fld &quot;vp&quot;</p>
<p>  </p>
<p>  hide grp &quot;familiarGrp&quot;</p>
<p>  hide grp &quot;familiarRate&quot;</p>
<p>  hide fld &quot;nf&quot;</p>
<p>  hide btn &quot;1f&quot;</p>
<p>  hide btn &quot;2f&quot;</p>
<p>  hide btn &quot;3f&quot;</p>
<p>  hide btn &quot;4f&quot;</p>
<p>  hide btn &quot;5f&quot;</p>
<p>  hide fld &quot;vf&quot;</p>
<p>  </p>
<p>  hide fld &quot;brandFld&quot;</p>
<p>  hide grp &quot;brandGrp&quot;</p>
<p>  </p>
<p>  hide grp &quot;instGrp&quot;</p>
<p>  hide fld &quot;inst&quot;</p>
<p>  </p>
<p>  hide fld &quot;qOrder&quot;</p>
<p>  </p>
<p>  hide fld &quot;genderRatings&quot;</p>
<p>  hide fld &quot;prestigeRatings&quot;</p>
<p>  hide fld &quot;familiarityRatings&quot;</p>
<p>  </p>
<p>  hide btn &quot;Begin&quot;</p>
<p>  </p>
<p>  hide fld &quot;doneExp&quot;</p>
<p>  hide grp &quot;doneExp&quot;</p>
<p>end hideAll</p>
<p></p>
<p>on init</p>
<p>  enable btn &quot;Begin&quot;</p>
<p>  </p>
<p>  enable grp &quot;genderGrp&quot;</p>
<p>  enable grp &quot;genderRate&quot;</p>
<p>  enable btn &quot;dunnog&quot;</p>
<p>  enable btn &quot;brandForFemales&quot;</p>
<p>  enable btn &quot;brandForAnyone&quot;</p>
<p>  enable btn &quot;brandForMales&quot;</p>
<p>  </p>
<p>  enable grp &quot;prestigiousGrp&quot;</p>
<p>  enable grp &quot;prestigiousRate&quot;</p>
<p>  enable btn &quot;dunnop&quot;</p>
<p>  enable fld &quot;np&quot;</p>
<p>  enable btn &quot;1p&quot;</p>
<p>  enable btn &quot;2p&quot;</p>
<p>  enable btn &quot;3p&quot;</p>
<p>  enable btn &quot;4p&quot;</p>
<p>  enable btn &quot;5p&quot;</p>
<p>  enable fld &quot;vp&quot;</p>
<p>  </p>
<p>  enable grp &quot;familiarGrp&quot;</p>
<p>  enable grp &quot;familiarRate&quot;</p>
<p>  enable fld &quot;nf&quot;</p>
<p>  enable btn &quot;1f&quot;</p>
<p>  enable btn &quot;2f&quot;</p>
<p>  enable btn &quot;3f&quot;</p>
<p>  enable btn &quot;4f&quot;</p>
<p>  enable btn &quot;5f&quot;</p>
<p>  enable fld &quot;vf&quot;</p>
<p>  </p>
<p>  set the hilite of btn &quot;Begin&quot; to false</p>
<p>  </p>
<p>  set the hilite of btn &quot;dunnog&quot; to false</p>
<p>  set the hilite of btn &quot;brandForFemales&quot; to false</p>
<p>  set the hilite of btn &quot;brandForAnyone&quot; to false</p>
<p>  set the hilite of btn &quot;brandForMales&quot; to false</p>
<p>  set the hilite of btn &quot;dunnop&quot; to false</p>
<p>  set the hilite of btn &quot;1p&quot; to false</p>
<p>  set the hilite of btn &quot;2p&quot; to false</p>
<p>  set the hilite of btn &quot;3p&quot; to false</p>
<p>  set the hilite of btn &quot;4p&quot; to false</p>
<p>  set the hilite of btn &quot;5p&quot; to false</p>
<p>  set the hilite of btn &quot;1f&quot; to false</p>
<p>  set the hilite of btn &quot;2f&quot; to false</p>
<p>  set the hilite of btn &quot;3f&quot; to false</p>
<p>  set the hilite of btn &quot;4f&quot; to false</p>
<p>  set the hilite of btn &quot;5f&quot; to false</p>
<p>end init</p>
<p></p>
<p>on startExp</p>
<p>  hide btn &quot;Begin&quot;</p>
<p>  put line 1 of fld &quot;qOrder&quot; into qOrder</p>
<p>  put 1 into qOrderLine</p>
<p>  nextTrial</p>
<p>end startExp</p>
<p></p>
<p>on nextTrial</p>
<p>  if brandCnt&gt;the number of lines of fld &quot;brandList&quot; then</p>
<p>    hideAll</p>
<p>    doOut</p>
<p>  else </p>
<p>    set lockscreen to true</p>
<p>    hideAll</p>
<p>    init</p>
<p>    if qOrderLine = 1 then</p>
<p>      put line 2 of fld &quot;qOrder&quot; into qOrder</p>
<p>      switch qOrder</p>
<p>      case &quot;gender&quot;</p>
<p>        show btn &quot;dunnog&quot;</p>
<p>        show btn &quot;brandForFemales&quot;</p>
<p>        show btn &quot;brandForAnyone&quot;</p>
<p>        show btn &quot;brandForMales&quot;</p>
<p>        show grp &quot;genderGrp&quot;</p>
<p>        show grp &quot;genderRate&quot;</p>
<p>        break</p>
<p>      case &quot;prestige&quot;</p>
<p>        show btn &quot;dunnop&quot;</p>
<p>        show fld &quot;np&quot;</p>
<p>        show btn &quot;1p&quot;</p>
<p>        show btn &quot;2p&quot;</p>
<p>        show btn &quot;3p&quot;</p>
<p>        show btn &quot;4p&quot;</p>
<p>        show btn &quot;5p&quot;</p>
<p>        show fld &quot;vp&quot;</p>
<p>        show grp &quot;prestigiousGrp&quot;</p>
<p>        show grp &quot;prestigiousRate&quot;</p>
<p>        break</p>
<p>      case &quot;familiarity&quot;</p>
<p>        show fld &quot;nf&quot;</p>
<p>        show btn &quot;1f&quot;</p>
<p>        show btn &quot;2f&quot;</p>
<p>        show btn &quot;3f&quot;</p>
<p>        show btn &quot;4f&quot;</p>
<p>        show btn &quot;5f&quot;</p>
<p>        show fld &quot;vf&quot;</p>
<p>        show grp &quot;familiarGrp&quot;</p>
<p>        show grp &quot;familiarRate&quot;</p>
<p>        break</p>
<p>      end switch</p>
<p>       </p>
<p>      put line brandCnt of fld &quot;brandList&quot; into fld &quot;brandFld&quot;</p>
<p>      show fld &quot;brandFld&quot;</p>
<p>      show grp &quot;brandGrp&quot;</p>
<p>      add 1 to qOrderLine</p>
<p>      set lockscreen to false</p>
<p>      break</p>
<p>    end if</p>
<p>     </p>
<p>    if  qOrderLine = 2 then</p>
<p>      put line 3 of fld &quot;qOrder&quot; into qOrder</p>
<p>      switch qOrder</p>
<p>      case &quot;gender&quot;</p>
<p>        show btn &quot;dunnog&quot;</p>
<p>        show btn &quot;brandForFemales&quot;</p>
<p>        show btn &quot;brandForAnyone&quot;</p>
<p>        show btn &quot;brandForMales&quot;</p>
<p>        show grp &quot;genderGrp&quot;</p>
<p>        show grp &quot;genderRate&quot;</p>
<p>        break</p>
<p>      case &quot;prestige&quot;</p>
<p>        show btn &quot;dunnop&quot;</p>
<p>        show fld &quot;np&quot;</p>
<p>        show btn &quot;1p&quot;</p>
<p>        show btn &quot;2p&quot;</p>
<p>        show btn &quot;3p&quot;</p>
<p>        show btn &quot;4p&quot;</p>
<p>        show btn &quot;5p&quot;</p>
<p>        show fld &quot;vp&quot;</p>
<p>        show grp &quot;prestigiousGrp&quot;</p>
<p>        show grp &quot;prestigiousRate&quot;</p>
<p>        break</p>
<p>      case &quot;familiarity&quot;</p>
<p>        show fld &quot;nf&quot;</p>
<p>        show btn &quot;1f&quot;</p>
<p>        show btn &quot;2f&quot;</p>
<p>        show btn &quot;3f&quot;</p>
<p>        show btn &quot;4f&quot;</p>
<p>        show btn &quot;5f&quot;</p>
<p>        show fld &quot;vf&quot;</p>
<p>        show grp &quot;familiarGrp&quot;</p>
<p>        show grp &quot;familiarRate&quot;</p>
<p>        break</p>
<p>      end switch</p>
<p>       </p>
<p>      put line brandCnt of fld &quot;brandList&quot; into fld &quot;brandFld&quot;</p>
<p>      show fld &quot;brandFld&quot;</p>
<p>      show grp &quot;brandGrp&quot;</p>
<p>      add 1 to qOrderLine</p>
<p>      set lockscreen to false</p>
<p>      break</p>
<p>    end if</p>
<p>     </p>
<p>    if  qOrderLine = 3 then</p>
<p>      put line 1 of fld &quot;qOrder&quot; into qOrder</p>
<p>      switch qOrder</p>
<p>      case &quot;gender&quot;</p>
<p>        show btn &quot;dunnog&quot;</p>
<p>        show btn &quot;brandForFemales&quot;</p>
<p>        show btn &quot;brandForAnyone&quot;</p>
<p>        show btn &quot;brandForMales&quot;</p>
<p>        show grp &quot;genderGrp&quot;</p>
<p>        show grp &quot;genderRate&quot;</p>
<p>        break</p>
<p>      case &quot;prestige&quot;</p>
<p>        show btn &quot;dunnop&quot;</p>
<p>        show fld &quot;np&quot;</p>
<p>        show btn &quot;1p&quot;</p>
<p>        show btn &quot;2p&quot;</p>
<p>        show btn &quot;3p&quot;</p>
<p>        show btn &quot;4p&quot;</p>
<p>        show btn &quot;5p&quot;</p>
<p>        show fld &quot;vp&quot;</p>
<p>        show grp &quot;prestigiousGrp&quot;</p>
<p>        show grp &quot;prestigiousRate&quot;</p>
<p>        break</p>
<p>      case &quot;familiarity&quot;</p>
<p>        show fld &quot;nf&quot;</p>
<p>        show btn &quot;1f&quot;</p>
<p>        show btn &quot;2f&quot;</p>
<p>        show btn &quot;3f&quot;</p>
<p>        show btn &quot;4f&quot;</p>
<p>        show btn &quot;5f&quot;</p>
<p>        show fld &quot;vf&quot;</p>
<p>        show grp &quot;familiarGrp&quot;</p>
<p>        show grp &quot;familiarRate&quot;</p>
<p>        break</p>
<p>      end switch</p>
<p>       </p>
<p>      put line brandCnt of fld &quot;brandList&quot; into fld &quot;brandFld&quot;</p>
<p>      show fld &quot;brandFld&quot;</p>
<p>      show grp &quot;brandGrp&quot;</p>
<p>      put 1 into qOrderLine</p>
<p>      add 1 to brandCnt</p>
<p>      set lockscreen to false</p>
<p>      break</p>
<p>    end if</p>
<p>  end if</p>
<p>end nextTrial</p>
<p></p>
<p>on doOut</p>
<p>  <font color="#0000FF">put</font><font color="#000000"> </font>&quot;Brand Name Rating Task&quot;&amp;<font color="#000000">linefeed&amp;the</font> <font color="#FF0000">label</font><font color="#000000"></font> of<font color="#000000"></font> btn<font color="#000000"></font> &quot;age&quot;&amp;<font color="#000000">linefeed&amp;the </font><font color="#FF0000">label</font><font color="#000000"> </font>of<font color="#000000"> </font>btn<font color="#000000"> </font>&quot;gender&quot;&amp;<font color="#000000">linefeed </font>after<font color="#000000"> </font>outVar<font color="#000000"></font></p>
<p>  <font color="#0000FF">put</font><font color="#000000"></font> expStartTime<font color="#000000">&amp;linefeed&amp;the</font> <font color="#FF0000">long</font><font color="#000000"></font> <font color="#F88017">date</font><font color="#000000">&amp;tab&amp;the</font> <font color="#FF0000">long</font><font color="#000000"></font> <font color="#F88017">time</font><font color="#000000">&amp;linefeed&amp;linefeed</font> after<font color="#000000"></font> outVar<font color="#000000"></font></p>
<p>  put &quot;Alphabetised Brands&quot;&amp;tab&amp;&quot;Familiarity&quot;&amp;tab&amp;&quot;Prestige&quot;&amp;tab&amp;&quot;Gender&quot;&amp;linefeed after outVar</p>
<p>  </p>
<p>  put 1 into j</p>
<p>  repeat until j&gt;the number of lines of fld &quot;brandList&quot;</p>
<p>    <font color="#0000FF">put</font> line j of fld &quot;brandList&quot;&amp;<font color="#000000">tab&amp;line</font> j of fld &quot;familiarityRatings&quot;&amp;<font color="#000000">tab&amp;line</font> j of fld &quot;prestigeRatings&quot;&amp;<font color="#000000">tab&amp;line</font> j of fld &quot;genderRatings&quot;&amp;<font color="#000000">linefeed </font>after outRatings</p>
<p>    add 1 to j</p>
<p>  end repeat</p>
<p>  </p>
<p>  <font color="#0000FF">set</font> the <font color="#FF0000">itemDel</font> to tab</p>
<p><font color="#000000">  </font><font color="#0000FF">put</font><font color="#000000"> </font>outRatings<font color="#000000"> </font>into<font color="#000000"> </font>outAlpha</p>
<p>  <font color="#0000FF">sort</font> lines of outAlpha ascending by item 1 of each</p>
<p><font color="#000000">  </font></p>
<p><font color="#000000">  </font><font color="#0000FF">put</font><font color="#000000"> </font>line<font color="#000000"> </font>2<font color="#000000"> </font>of<font color="#000000"> </font>fld<font color="#000000"> </font>&quot;qOrder&quot;&amp;<font color="#000000">linefeed&amp;line </font>3<font color="#000000"> </font>of<font color="#000000"> </font>fld<font color="#000000"> </font>&quot;qOrder&quot;&amp;<font color="#000000">linefeed&amp;line </font>1<font color="#000000"> </font>of<font color="#000000"> </font>fld<font color="#000000"> </font>&quot;qOrder&quot; into<font color="#000000"> </font>qOrderOut</p>
<p>  </p>
<p>  <font color="#0000FF">put</font> outAlpha<font color="#000000">&amp;linefeed&amp;linefeed&amp;</font>&quot;Brands as Presented&quot;<font color="#000000">&amp;tab&amp;&quot;Familiarity&quot;&amp;tab&amp;&quot;Prestige&quot;&amp;tab&amp;&quot;Gender&quot;&amp;linefeed&amp;outRatings&amp;linefeed&amp;linefeed&amp;&quot;Question</font> Order<font color="#000000">:</font>&quot;<font color="#000000">&amp;linefeed&amp;qOrderOut</font> after outVar</p>
<p></p>
<p>  set the itemdelimiter to &quot;/&quot;</p>
<p>  get the filename of this stack</p>
<p>  delete the last item of it</p>
<p>  put it&amp;&quot;/data/&quot; into path2</p>
<p>  -------------------------</p>
<p>  put &quot;brandRatings&quot;&amp;&quot;_&quot;&amp;the ticks into fname</p>
<p>  put outVar into url (&quot;file:&quot;&amp;path2&amp;fname&amp;&quot;.txt&quot;)</p>
<p>  --</p>
<p>  set lockscreen to true</p>
<p>  show fld &quot;doneExp&quot;</p>
<p>  show grp &quot;doneExp&quot;</p>
<p>  unlock screen with visual effect dissolve very fast</p>
<p>  <font color="#68228B">--</font></p>
<p>  <font color="#68228B">-----------------------------</font></p>
<p><font color="#68228B">  </font><font color="#0000FF">wait</font><font color="#000000"> </font>5<font color="#000000"> </font><font color="#F88017">seconds</font></p>
<p><font color="#000000">  </font><font color="#0000FF">quit</font><font color="#000000"> </font>Revolution</p>
<p>end doOut</p>
<p></p>
<p><font color="#0000FF">function</font> scramble x</p>
<p>  put the number of lines of x into r</p>
<p>  put the number of items of line 1 of x into c</p>
<p>  if r=1 then</p>
<p>    repeat with i=c down to 2</p>
<p>      put random(i) into v</p>
<p>      put item v of x into t</p>
<p>      put item i of x into item v of x</p>
<p>      put t into item i of x</p>
<p>    end repeat</p>
<p>  else</p>
<p>    repeat with i= r down to 2</p>
<p>      put random(i) into v</p>
<p>      put line v of x into t</p>
<p>      put line i of x into line v of x</p>
<p>      put t into line i of x</p>
<p>    end repeat</p>
<p>  end if</p>
<p>  return x</p>
<p><font color="#980517">end</font> scramble</p>
<p></p> cREVGeometryCacheIDs    )1211605946579  11201211605380832  10641211606098007  11231183612271714  10711211605121603  11081183632171942  10571183615772484  10751183615761328  10731211601658734  10951183634586188  10601211605597734  11111211604984170  11071211605597735  11121211605597736  11131211606007428  11211211605597737  11141211605597738  11151211605597739  11161211605597740  11171211605597741  11181211605592901  11101211605597742  11191211606117976  10931211600686604  10871183615767878  10741183620122468  10481211607768148  11331211606033995  11221211607634612  11271211605385961  10701183619489970  10831183615756962  10721211606712614  11241211607764129  11311183620042220  10451183620042221  10461211608742612  11351211609434444  11361211606585341  11031183619566789  10411211606128623  1102 cREVGeometrycache    order  
total  41  z  {  |  }  ~    �  �  �  �  .  �  �  �  �  o doneExp  a     � �� `    � cREVGeneral    revUniqueID  1211608742612
  $ doneExp        � �� T    �       
cREVTable    currentview  PYou have finished the experiment.
Please tell the experimenter that you're done. cREVGeneral    revUniqueID  1183634586188     "You have finished the experiment.  /Please tell the experimenter that you�re done.   z Begin �E�x   �global expStartTime

on mouseUp
  put the long date&tab&the long time into expStartTime
  hide grp "instGrp"
  hide fld "inst"
  startExp
end mouseUp
     � �� \ &    5          cREVGeneral    scriptChecksum  �F�h{�]�Z%/G�
bookmarks   revUniqueID  1183619566789handlerList  mouseUpscriptSelection  char 138 to 137prevHandler  mouseUptempScript   script �<p><font color="#0000FF">global </font>expStartTime</p>
<p></p>
<p><font color="#980517">on</font> mouseUp</p>
<p>  <font color="#0000FF">put</font> the <font color="#FF0000">long</font> <font color="#F88017">date</font><font color="#000000">&amp;tab&amp;the</font> <font color="#FF0000">long</font> <font color="#F88017">time </font>into expStartTime</p>
<p>  <font color="#0000FF">hide </font>grp &quot;instGrp&quot;</p>
<p>  <font color="#0000FF">hide</font><font color="#000000"></font><font color="#0000FF"> </font>fld<font color="#000000"></font> &quot;inst&quot;</p>
<p>  startExp<font color="#000000"></font></p>
<p><font color="#980517">end</font><font color="#000000"></font> mouseUp<font color="#000000"></font></p>	       { OKdemog �e�x  �on mouseUp
  if the label of btn "age" = "- How old are you? -" then
    answer "Please specify your age"
  else
    if the label of btn "gender" = "- Gender? -" then
      answer "Please specify your gender"
    else
       hide btn "age"
       hide btn "gender"
       hide btn "OKdemog"
       show fld "inst"
       show grp "instGrp"
       show btn "Begin"
    end if
  end if
end mouseUp
     � �L : "    5 OK           cREVGeneral    scriptChecksum  !7\�-�^O����
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
<p><font color="#980517">end</font> mouseUp</p>	       | age ��m      � Z � � "    3 - How old are you? -   - How old are you? -
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
100         cREVGeneral    revUniqueID  1183620042220	       } gender ��m      � Z � "    3 - Gender? -    - Gender? -
Male
Female         cREVGeneral    revUniqueID  1183620042221	     
  ~ qOrder  �!`    �   b .    �       cREVGeneral    revUniqueID  1211607634612  � healthy  affordable   �    	`      X   ,�
   healthyRatings  �!`    � $  .    �       cREVGeneral    revUniqueID  1211607764129  �    �    	`      A  �
  � affordableRatings  �!`    � T  .    �       cREVGeneral    revUniqueID  1211607768148  �    �    	`      q  �  � instGrp  a     �  a �      � cREVGeneral    revUniqueID  1211609434444
  � inst        �  � �v �    �       
cREVTable    currentview D<p>You are about to be presented with several brand names. You will be asked to rate how familiar you are with each brand, how prestigious they are, and whether the brand is directed at females, males or anyone. If you have any questions, please ask the experimenter. Otherwise, click the &quot;Begin&quot; button below.</p> cREVGeneral    revUniqueID  1183619489970    4You are about to be presented with several brand names. You will be asked to rate how familiar you are with each brand, how prestigious they are, and whether the brand is directed at females, males or anyone. If you have any questions, please ask the experimenter. Otherwise, click the "Begin" button below.   � doneExp  a     �  � �      � cREVGeneral    revUniqueID  1211608742612
  � doneExp        �  � T    �       
cREVTable    currentview  PYou have finished the experiment.
Please tell the experimenter that you're done. cREVGeneral    revUniqueID  1183634586188     "You have finished the experiment.  /Please tell the experimenter that you're done.   � 	brandGrp  a(       �  � �F f    � cREVGeneral    revUniqueID  1211606585341
  � 	brandFld   @    �  � �: Z    �       cREVGeneral    revUniqueID  1211600686604      
  � affordableList  �!`    �    �B    �       
cREVTable    currentview �<p>Ace</p>
<p>Advantage</p>
<p>Angle</p>
<p>Avenix</p>
<p>Caprol</p>
<p>Cedrin</p>
<p>Charter</p>
<p>Circle</p>
<p>Citro</p>
<p>Crank</p>
<p>Decree</p>
<p>Duty</p>
<p>Edge</p>
<p>Flag</p>
<p>Flakers</p>
<p>Foley</p>
<p>Frosh</p>
<p>Fruities</p>
<p>Garra</p>
<p>Giko </p>
<p>Harp</p>
<p>Hurri-Drain</p>
<p>Hygent</p>
<p>Jasil</p>
<p>Luxor</p>
<p>Mantec</p>
<p>Matu</p>
<p>Merin</p>
<p>Monarch</p>
<p>Monit</p>
<p>Panorama</p>
<p>Parade</p>
<p>Quest</p>
<p>Qwk-Job</p>
<p>Rega</p>
<p>Ronar</p>
<p>Salute</p>
<p>Samba</p>
<p>Scapa</p>
<p>Silx</p>
<p>Simplicity</p>
<p>Star</p>
<p>Tansafe</p>
<p>Tiddip</p>
<p>Tribute</p>
<p>Universe</p>
<p>Vesuvio</p>
<p>X-Rust</p>
<p>3M</p>
<p>ABB</p>
<p>Abercrombie &amp; Fitch</p>
<p>ABN AMRO</p>
<p>Accenture</p>
<p>Acer</p>
<p>adidas</p>
<p>AEGON</p>
<p>AIG</p>
<p>Alcatel-Lucent</p>
<p>Allianz</p>
<p>Altadis</p>
<p>Amazon.com</p>
<p>AMD</p>
<p>Amer Sports</p>
<p>American Eagle Outfitters</p>
<p>American Express</p>
<p>AOL</p>
<p>Apple</p>
<p>Aquascutum</p>
<p>Arcadia</p>
<p>Associated Press</p>
<p>Audi</p>
<p>Avis</p>
<p>Avon</p>
<p>AXA</p>
<p>Bank of America</p>
<p>Barclays</p>
<p>Barnes &amp; Noble</p>
<p>BearingPoint</p>
<p>Bloomberg L.P.</p>
<p>BMW</p>
<p>BP</p>
<p>British American Tobacco</p>
<p>Budget</p>
<p>Budweiser</p>
<p>Bulgari</p>
<p>Burberry</p>
<p>Burger King</p>
<p>Cadbury</p>
<p>Cajun Operating Company</p>
<p>Campbell Soup</p>
<p>Canon</p>
<p>Carrefour</p>
<p>Cartier</p>
<p>Caterpillar</p>
<p>CBS</p>
<p>Chanel</p>
<p>Chevron</p>
<p>Chick-fil-A</p>
<p>Christian Dior</p>
<p>Chrysler</p>
<p>Church &amp; Dwight</p>
<p>Cisco</p>
<p>Citi</p>
<p>Clorox</p>
<p>CNH</p>
<p>Coca-Cola</p>
<p>Colgate</p>
<p>Columbia House</p>
<p>ConAgra</p>
<p>Credit Suisse</p>
<p>Daimler</p>
<p>Danone</p>
<p>Dell</p>
<p>Deutsche Bank</p>
<p>Deutsche Post</p>
<p>Discover</p>
<p>Disney</p>
<p>Domino's</p>
<p>Dow Jones</p>
<p>Dr Pepper</p>
<p>Dunkin</p>
<p>Duracell</p>
<p>eBay</p>
<p>EDS</p>
<p>El Corte Ingl&eacute;s</p>
<p>Energizer</p>
<p>Enterprise Rent-A-Car</p>
<p>Ericsson</p>
<p>Est&eacute;e Lauder</p>
<p>Euromarket Designs</p>
<p>Exxon</p>
<p>FedEx</p>
<p>Fila</p>
<p>Ford</p>
<p>Fortune Brands</p>
<p>FUJIFILM</p>
<p>Galeries Lafayette</p>
<p>Galiform</p>
<p>Gap</p>
<p>General Electric</p>
<p>General Mills</p>
<p>General Motors</p>
<p>Georgia-Pacific</p>
<p>Gillette</p>
<p>Goldman Sachs</p>
<p>Google</p>
<p>Gucci</p>
<p>Harley-Davidson</p>
<p>Heineken</p>
<p>Heinz</p>
<p>Hennes &amp; Mauritz</p>
<p>Hennessy</p>
<p>Herm&egrave;s</p>
<p>Hershey</p>
<p>Hertz</p>
<p>Hewlett-Packard</p>
<p>Honda</p>
<p>House of Fraser</p>
<p>HSBC</p>
<p>Hyundai</p>
<p>IAC Search &amp; Media</p>
<p>IBM</p>
<p>Ikea</p>
<p>ING</p>
<p>Intel</p>
<p>J. Crew</p>
<p>Johnson &amp; Johnson</p>
<p>Jones Apparel</p>
<p>JPMorgan</p>
<p>Juniper Networks</p>
<p>Kellogg's</p>
<p>KFC</p>
<p>Kimberly-Clark</p>
<p>Kleenex</p>
<p>Kodak</p>
<p>Komatsu</p>
<p>Kraft</p>
<p>L'Or&eacute;al</p>
<p>Lenovo</p>
<p>Lexus</p>
<p>LG</p>
<p>Little Caesar's</p>
<p>Liz Claiborne</p>
<p>Louis Vuitton</p>
<p>Marlboro</p>
<p>Mary Kay</p>
<p>MasterCard</p>
<p>McDonald's</p>
<p>Mercedes</p>
<p>Merck</p>
<p>Merrill Lynch</p>
<p>Micron Technology</p>
<p>Microsoft</p>
<p>Mo&euml;t &amp; Chandon</p>
<p>Molson Coors</p>
<p>Morgan Stanley</p>
<p>Motorola</p>
<p>Movado</p>
<p>MSN</p>
<p>MTV</p>
<p>NBC Universal</p>
<p>Nescaf&eacute;</p>
<p>Nestl&eacute;</p>
<p>New Balance</p>
<p>News Corporation</p>
<p>Nike</p>
<p>Nintendo</p>
<p>Nissan</p>
<p>Nivea</p>
<p>Nokia</p>
<p>Nortel Networks</p>
<p>Novartis</p>
<p>Oracle</p>
<p>Panasonic</p>
<p>Papa John's</p>
<p>Pepsi</p>
<p>Perfetti Van Melle</p>
<p>Pernod Ricard</p>
<p>Philips</p>
<p>Pizza Hut</p>
<p>Polaris Industries</p>
<p>Polo Ralph Lauren</p>
<p>Popeyes</p>
<p>Porsche</p>
<p>PPR</p>
<p>Prada</p>
<p>Procter &amp; Gamble</p>
<p>R&eacute;my Cointreau</p>
<p>Reuters</p>
<p>Revlon</p>
<p>Reynolds American</p>
<p>Richemont</p>
<p>Ricoh</p>
<p>Rolex</p>
<p>Rossignol</p>
<p>Royal Bank of Scotland</p>
<p>Saab</p>
<p>SABMiller</p>
<p>Samsung</p>
<p>SANYO</p>
<p>SAP</p>
<p>Sara Lee</p>
<p>Schneider Electric</p>
<p>SEGA</p>
<p>Shell</p>
<p>Shiseido</p>
<p>Siemens</p>
<p>Smirnoff</p>
<p>Snapple</p>
<p>Sony</p>
<p>Starbucks</p>
<p>Subway</p>
<p>Talanx</p>
<p>Texas Instruments</p>
<p>Tiffany &amp; Co.</p>
<p>Time Warner</p>
<p>Tommy Hilfiger</p>
<p>Toyota</p>
<p>Triumph Motorcycles</p>
<p>UBS</p>
<p>Unilever</p>
<p>United Rentals</p>
<p>UPS</p>
<p>Visa</p>
<p>Volkswagen</p>
<p>Volvo</p>
<p>Wachovia Securities</p>
<p>Wal-Mart</p>
<p>Wrigley</p>
<p>Xerox</p>
<p>Yahoo!</p>
<p>YUM!</p>
<p>Zara</p>
<p>Zurich Financial Services</p> cREVGeneral    revUniqueID  1211606712614  � 	7-Eleven  Acer  AirAsia  Aldi  Apple  Armani  AVON  Balenciaga  Bentley  Big W  BlackBerry  BMW  
Body Shop  	Burberry  Bvlgari  Cadbury  Cartier  Chanel  Christian Louboutin  
Coca Cola  Coles  Colgate  Connoisseur Ice Cream  	Converse  
Cotton On  Crazy Clark  David Jones  DIOR  Diva  Domino's Pizza  Dove  Ducati  Estee Lauder  Fendi  Ferrari  Filofax  Ford  Fossil  French Connection UK  Garnier  General Pants Co.  	Givenchy  Godiva Chocolate  GUCCI  GUESS  Harley Davidson  Hermes  HuaWei  Hummer  Hungry Jacks  Hyundai  IGA  IKEA  Jaguar  	Jay Jays  Jean Paul Gaultier  JetStar  Jimmy Choo  Johnson & Johnson  KFC  Kmart  Lexus  LG  Lindt Chocolate  Loreal  Louis Vuitton  Manolo Blahnik  
Maseratti  Max Brenner  Maxmara  Maybach  Maybelline  
McDonalds  Mercedes-Benz  Mimco  
MontBlanc  Movenpick Ice Cream  Myer  Napoleon Perdis  Nescafe  Neutrogena  Nissan  Nivea  Nokia  OREO  Paddle Pop  
Palmolive  Panadol  Pantene  Pizza Capers  
Pizza Hut  Porsche  Prada  
Priceline  Ralph Lauren  Revlon  Rolex  Sportsgirl  Starbucks Caf�  Student Flights  Super A Mart  Supre  Suzuki  
Swarovski  Target  The Reject Shop  Tifanny & Co.  Tiger Airways  TimTams  Toyota  	Vaseline  
Vera Wang  Versace  	Vodafone  Volkswagen  Woolworths  Yves Saint Lauren   �    	`       q  @�
  � healthyList  �!`    �  �  �B    �       
cREVTable    currentview �<p>Ace</p>
<p>Advantage</p>
<p>Angle</p>
<p>Avenix</p>
<p>Caprol</p>
<p>Cedrin</p>
<p>Charter</p>
<p>Circle</p>
<p>Citro</p>
<p>Crank</p>
<p>Decree</p>
<p>Duty</p>
<p>Edge</p>
<p>Flag</p>
<p>Flakers</p>
<p>Foley</p>
<p>Frosh</p>
<p>Fruities</p>
<p>Garra</p>
<p>Giko </p>
<p>Harp</p>
<p>Hurri-Drain</p>
<p>Hygent</p>
<p>Jasil</p>
<p>Luxor</p>
<p>Mantec</p>
<p>Matu</p>
<p>Merin</p>
<p>Monarch</p>
<p>Monit</p>
<p>Panorama</p>
<p>Parade</p>
<p>Quest</p>
<p>Qwk-Job</p>
<p>Rega</p>
<p>Ronar</p>
<p>Salute</p>
<p>Samba</p>
<p>Scapa</p>
<p>Silx</p>
<p>Simplicity</p>
<p>Star</p>
<p>Tansafe</p>
<p>Tiddip</p>
<p>Tribute</p>
<p>Universe</p>
<p>Vesuvio</p>
<p>X-Rust</p>
<p>3M</p>
<p>ABB</p>
<p>Abercrombie &amp; Fitch</p>
<p>ABN AMRO</p>
<p>Accenture</p>
<p>Acer</p>
<p>adidas</p>
<p>AEGON</p>
<p>AIG</p>
<p>Alcatel-Lucent</p>
<p>Allianz</p>
<p>Altadis</p>
<p>Amazon.com</p>
<p>AMD</p>
<p>Amer Sports</p>
<p>American Eagle Outfitters</p>
<p>American Express</p>
<p>AOL</p>
<p>Apple</p>
<p>Aquascutum</p>
<p>Arcadia</p>
<p>Associated Press</p>
<p>Audi</p>
<p>Avis</p>
<p>Avon</p>
<p>AXA</p>
<p>Bank of America</p>
<p>Barclays</p>
<p>Barnes &amp; Noble</p>
<p>BearingPoint</p>
<p>Bloomberg L.P.</p>
<p>BMW</p>
<p>BP</p>
<p>British American Tobacco</p>
<p>Budget</p>
<p>Budweiser</p>
<p>Bulgari</p>
<p>Burberry</p>
<p>Burger King</p>
<p>Cadbury</p>
<p>Cajun Operating Company</p>
<p>Campbell Soup</p>
<p>Canon</p>
<p>Carrefour</p>
<p>Cartier</p>
<p>Caterpillar</p>
<p>CBS</p>
<p>Chanel</p>
<p>Chevron</p>
<p>Chick-fil-A</p>
<p>Christian Dior</p>
<p>Chrysler</p>
<p>Church &amp; Dwight</p>
<p>Cisco</p>
<p>Citi</p>
<p>Clorox</p>
<p>CNH</p>
<p>Coca-Cola</p>
<p>Colgate</p>
<p>Columbia House</p>
<p>ConAgra</p>
<p>Credit Suisse</p>
<p>Daimler</p>
<p>Danone</p>
<p>Dell</p>
<p>Deutsche Bank</p>
<p>Deutsche Post</p>
<p>Discover</p>
<p>Disney</p>
<p>Domino's</p>
<p>Dow Jones</p>
<p>Dr Pepper</p>
<p>Dunkin</p>
<p>Duracell</p>
<p>eBay</p>
<p>EDS</p>
<p>El Corte Ingl&eacute;s</p>
<p>Energizer</p>
<p>Enterprise Rent-A-Car</p>
<p>Ericsson</p>
<p>Est&eacute;e Lauder</p>
<p>Euromarket Designs</p>
<p>Exxon</p>
<p>FedEx</p>
<p>Fila</p>
<p>Ford</p>
<p>Fortune Brands</p>
<p>FUJIFILM</p>
<p>Galeries Lafayette</p>
<p>Galiform</p>
<p>Gap</p>
<p>General Electric</p>
<p>General Mills</p>
<p>General Motors</p>
<p>Georgia-Pacific</p>
<p>Gillette</p>
<p>Goldman Sachs</p>
<p>Google</p>
<p>Gucci</p>
<p>Harley-Davidson</p>
<p>Heineken</p>
<p>Heinz</p>
<p>Hennes &amp; Mauritz</p>
<p>Hennessy</p>
<p>Herm&egrave;s</p>
<p>Hershey</p>
<p>Hertz</p>
<p>Hewlett-Packard</p>
<p>Honda</p>
<p>House of Fraser</p>
<p>HSBC</p>
<p>Hyundai</p>
<p>IAC Search &amp; Media</p>
<p>IBM</p>
<p>Ikea</p>
<p>ING</p>
<p>Intel</p>
<p>J. Crew</p>
<p>Johnson &amp; Johnson</p>
<p>Jones Apparel</p>
<p>JPMorgan</p>
<p>Juniper Networks</p>
<p>Kellogg's</p>
<p>KFC</p>
<p>Kimberly-Clark</p>
<p>Kleenex</p>
<p>Kodak</p>
<p>Komatsu</p>
<p>Kraft</p>
<p>L'Or&eacute;al</p>
<p>Lenovo</p>
<p>Lexus</p>
<p>LG</p>
<p>Little Caesar's</p>
<p>Liz Claiborne</p>
<p>Louis Vuitton</p>
<p>Marlboro</p>
<p>Mary Kay</p>
<p>MasterCard</p>
<p>McDonald's</p>
<p>Mercedes</p>
<p>Merck</p>
<p>Merrill Lynch</p>
<p>Micron Technology</p>
<p>Microsoft</p>
<p>Mo&euml;t &amp; Chandon</p>
<p>Molson Coors</p>
<p>Morgan Stanley</p>
<p>Motorola</p>
<p>Movado</p>
<p>MSN</p>
<p>MTV</p>
<p>NBC Universal</p>
<p>Nescaf&eacute;</p>
<p>Nestl&eacute;</p>
<p>New Balance</p>
<p>News Corporation</p>
<p>Nike</p>
<p>Nintendo</p>
<p>Nissan</p>
<p>Nivea</p>
<p>Nokia</p>
<p>Nortel Networks</p>
<p>Novartis</p>
<p>Oracle</p>
<p>Panasonic</p>
<p>Papa John's</p>
<p>Pepsi</p>
<p>Perfetti Van Melle</p>
<p>Pernod Ricard</p>
<p>Philips</p>
<p>Pizza Hut</p>
<p>Polaris Industries</p>
<p>Polo Ralph Lauren</p>
<p>Popeyes</p>
<p>Porsche</p>
<p>PPR</p>
<p>Prada</p>
<p>Procter &amp; Gamble</p>
<p>R&eacute;my Cointreau</p>
<p>Reuters</p>
<p>Revlon</p>
<p>Reynolds American</p>
<p>Richemont</p>
<p>Ricoh</p>
<p>Rolex</p>
<p>Rossignol</p>
<p>Royal Bank of Scotland</p>
<p>Saab</p>
<p>SABMiller</p>
<p>Samsung</p>
<p>SANYO</p>
<p>SAP</p>
<p>Sara Lee</p>
<p>Schneider Electric</p>
<p>SEGA</p>
<p>Shell</p>
<p>Shiseido</p>
<p>Siemens</p>
<p>Smirnoff</p>
<p>Snapple</p>
<p>Sony</p>
<p>Starbucks</p>
<p>Subway</p>
<p>Talanx</p>
<p>Texas Instruments</p>
<p>Tiffany &amp; Co.</p>
<p>Time Warner</p>
<p>Tommy Hilfiger</p>
<p>Toyota</p>
<p>Triumph Motorcycles</p>
<p>UBS</p>
<p>Unilever</p>
<p>United Rentals</p>
<p>UPS</p>
<p>Visa</p>
<p>Volkswagen</p>
<p>Volvo</p>
<p>Wachovia Securities</p>
<p>Wal-Mart</p>
<p>Wrigley</p>
<p>Xerox</p>
<p>Yahoo!</p>
<p>YUM!</p>
<p>Zara</p>
<p>Zurich Financial Services</p> cREVGeneral    revUniqueID  1211606712614  � Be Natural  Berri Juice  Big Dad's Pie  Bird's Eye  Boost  
Bread Top  	Brumby's  Bucking Bull  Cadbury  	Carman's  	Cheerios  Cheetos  Chicken Tonight  
Coca Cola  
Coco Pops  Corona  Daily Farmers  Daily Juice  Domino's Pizza  Donut King  Doritos  Dreamy Donuts  Eagle Boys Pizza  Equal  Fanta  
Fantastic  Fasta Pasta  Flora  Fresh Cafe  	Frosties  	Gatorade  Go Natural  	Go Sushi  Golden Nuggets  Grain Waves  Grill'd  Healthy Habits  	Heineken  Heinz  
Hershey's  Hungry Jack's  Ingham  Kettle Chips  KFC  Kirks Creamy Soda  KitKat  Kraft Easy Mac and Cheese  Krispy Kreme  Lean Cuisine  Lift  Lipton  M&M's  Macro Natural  Maggi Noodle  Mars  Mars  McDonald's  Mie Goreng  Milo  Mothers  Mount Franklin  MYO  Nando's  Naturally Good  New York Pizza  New Zealand Natural Ice Cream  Noodle Bar  Nudie Juice  Nutrient water  Oporto  Outback Jack's  	Pie Face  Pizza Capers  
Pizza Hut  	Powerade  Quaker Oats  Raw Energy  	Red Bull  Red Rooster  Ribena  Sakata  Salsa's  Shapes  Sizzler  Skinny Cow  Slurpee  Smith's Chips  	Snickers  Solo  SPAM  
Special K  Splenda  Sprite  Subway  Sumo Salad  	Sun Rice  Sushi Hanaichi  Tea Centre  TGI Friday's  
Top Sushi  	Twisties  Twix  Uncle Toby's  Urban Burger  V  V8 Fruit & Veg Juice  Vaalia  
VegeChips  	Vegemite  	Vita Soy  Vita Wheat  Vitamin Water  	Weet-Bix  Weight Watcher  Wok Me  Yogen Fruz  Yoplait   �    	`       �  @�  � cond ��	e         �  S - Select Condition -    C- Select Condition -
affordable --> healthy
healthy --> affordable        	  � 	       � okCond �e�p non mouseUp
  hide me
  hide btn "cond"
  show btn "age"
  show btn "gender"
  show btn "OKdemog"
end mouseUp
        P 4 0 $Q OK          	       . rateGrp  i     �  �Uu C   qOrder   � cREVGeneral    revUniqueID  1211605385961  ( 	rateGrpB  i     � H[ � 7    � cREVGeneral    revUniqueID  1211605380832  � 1r �ex   on mouseUp
  set the hilite of btn "1f" to true
  put "1"&linefeed after fld "familiarityRatings"
  disable btn "2f"
  disable btn "3f"
  disable btn "4f"
  disable btn "5f"
  disable grp "familiarGrp"
  send nextTrial to this cd in 400 milliseconds
end mouseUp
     � Na + +    Q 1           cREVGeneral    scriptChecksum  ����H��C��\P\revUniqueID  1183612271714
bookmarks   handlerList  mouseUptempScript   prevHandler  mouseUpscriptSelection  char 234 to 249script  <p><font color="#980517">on</font> mouseUp</p>
<p>  <font color="#0000FF">set</font> the <font color="#FF0000">hilite</font> of btn &quot;1f&quot; to true</p>
<p>  <font color="#0000FF">put</font> &quot;1&quot;&amp;<font color="#000000">linefeed </font>after fld &quot;familiarityRatings&quot;</p>
<p>  <font color="#0000FF">disable</font> btn &quot;2f&quot;</p>
<p>  <font color="#0000FF">disable</font> btn &quot;3f&quot;</p>
<p>  <font color="#0000FF">disable</font> btn &quot;4f&quot;</p>
<p>  <font color="#0000FF">disable</font> btn &quot;5f&quot;</p>
<p>  <font color="#0000FF">disable</font> grp &quot;familiarGrp&quot;</p>
<p>  <font color="#0000FF">send</font><font color="#000000"> </font>nextTrial<font color="#000000"> </font>to<font color="#000000"> </font>this<font color="#000000"> </font>cd<font color="#000000"> </font>in<font color="#000000"> </font>400<font color="#000000"> </font><font color="#F88017">milliseconds</font><font color="#000000"></font></p>
<p><font color="#980517">end</font> mouseUp</p>	       � 2r �ex   on mouseUp
  set the hilite of btn "2f" to true
  put "2"&linefeed after fld "familiarityRatings"
  disable btn "1f"
  disable btn "3f"
  disable btn "4f"
  disable btn "5f"
  disable grp "familiarGrp"
  send nextTrial to this cd in 400 milliseconds
end mouseUp
     � a + +    Q 2           cREVGeneral    scriptChecksum  �H���j"��^b-revUniqueID  1183615756962
bookmarks   handlerList  mouseUptempScript   prevHandler  mouseUpscriptSelection  char 250 to 249script  <p><font color="#980517">on</font> mouseUp</p>
<p>  <font color="#0000FF">set</font> the <font color="#FF0000">hilite</font> of btn &quot;2f&quot; to true</p>
<p>  <font color="#0000FF">put</font> &quot;2&quot;&amp;<font color="#000000">linefeed </font>after fld &quot;familiarityRatings&quot;</p>
<p>  <font color="#0000FF">disable</font> btn &quot;1f&quot;</p>
<p>  <font color="#0000FF">disable</font> btn &quot;3f&quot;</p>
<p>  <font color="#0000FF">disable</font> btn &quot;4f&quot;</p>
<p>  <font color="#0000FF">disable</font> btn &quot;5f&quot;</p>
<p>  <font color="#0000FF">disable</font> grp &quot;familiarGrp&quot;</p>
<p>  <font color="#0000FF">send</font><font color="#000000"> </font>nextTrial<font color="#000000"> </font>to<font color="#000000"> </font>this<font color="#000000"> </font>cd<font color="#000000"> </font>in<font color="#000000"> </font>400<font color="#000000"> </font><font color="#F88017">milliseconds</font><font color="#000000"></font></p>
<p><font color="#980517">end</font> mouseUp</p>	       � 3r �ex   on mouseUp
  set the hilite of btn "3f" to true
  put "3"&linefeed after fld "familiarityRatings"
  disable btn "1f"
  disable btn "2f"
  disable btn "4f"
  disable btn "5f"
  disable grp "familiarGrp"
  send nextTrial to this cd in 400 milliseconds
end mouseUp
     � �a + +    W 3           cREVGeneral    scriptChecksum  |F����ΗNr���3�revUniqueID  1183615761328
bookmarks   handlerList  mouseUptempScript   prevHandler  mouseUpscriptSelection  char 250 to 249script  <p><font color="#980517">on</font> mouseUp</p>
<p>  <font color="#0000FF">set</font> the <font color="#FF0000">hilite</font> of btn &quot;3f&quot; to true</p>
<p>  <font color="#0000FF">put</font> &quot;3&quot;&amp;<font color="#000000">linefeed </font>after fld &quot;familiarityRatings&quot;</p>
<p>  <font color="#0000FF">disable</font> btn &quot;1f&quot;</p>
<p>  <font color="#0000FF">disable</font> btn &quot;2f&quot;</p>
<p>  <font color="#0000FF">disable</font> btn &quot;4f&quot;</p>
<p>  <font color="#0000FF">disable</font> btn &quot;5f&quot;</p>
<p>  <font color="#0000FF">disable</font> grp &quot;familiarGrp&quot;</p>
<p>  <font color="#0000FF">send</font><font color="#000000"> </font>nextTrial<font color="#000000"> </font>to<font color="#000000"> </font>this<font color="#000000"> </font>cd<font color="#000000"> </font>in<font color="#000000"> </font>400<font color="#000000"> </font><font color="#F88017">milliseconds</font><font color="#000000"></font></p>
<p><font color="#980517">end</font> mouseUp</p>	       � 4r �ex   on mouseUp
  set the hilite of btn "4f" to true
  put "4"&linefeed after fld "familiarityRatings"
  disable btn "1f"
  disable btn "2f"
  disable btn "3f"
  disable btn "5f"
  disable grp "familiarGrp"
  send nextTrial to this cd in 400 milliseconds
end mouseUp
     � �a + +    W 4           cREVGeneral    scriptChecksum  �o�BhHq��ㇴyrevUniqueID  1183615767878
bookmarks   handlerList  mouseUptempScript   prevHandler  mouseUpscriptSelection  char 250 to 249script  <p><font color="#980517">on</font> mouseUp</p>
<p>  <font color="#0000FF">set</font> the <font color="#FF0000">hilite</font> of btn &quot;4f&quot; to true</p>
<p>  <font color="#0000FF">put</font> &quot;4&quot;&amp;<font color="#000000">linefeed </font>after fld &quot;familiarityRatings&quot;</p>
<p>  <font color="#0000FF">disable</font> btn &quot;1f&quot;</p>
<p>  <font color="#0000FF">disable</font> btn &quot;2f&quot;</p>
<p>  <font color="#0000FF">disable</font> btn &quot;3f&quot;</p>
<p>  <font color="#0000FF">disable</font> btn &quot;5f&quot;</p>
<p>  <font color="#0000FF">disable</font> grp &quot;familiarGrp&quot;</p>
<p>  <font color="#0000FF">send</font><font color="#000000"> </font>nextTrial<font color="#000000"> </font>to<font color="#000000"> </font>this<font color="#000000"> </font>cd<font color="#000000"> </font>in<font color="#000000"> </font>400<font color="#000000"> </font><font color="#F88017">milliseconds</font><font color="#000000"></font></p>
<p><font color="#980517">end</font> mouseUp</p>	       � 5r �ex   on mouseUp
  set the hilite of btn "5f" to true
  put "5"&linefeed after fld "familiarityRatings"
  disable btn "1f"
  disable btn "2f"
  disable btn "3f"
  disable btn "4f"
  disable grp "familiarGrp"
  send nextTrial to this cd in 400 milliseconds
end mouseUp
     � a + +    U 5           cREVGeneral    scriptChecksum  �Y2pK�Qw�/y�`�revUniqueID  1183615772484
bookmarks   handlerList  mouseUptempScript   prevHandler  mouseUpscriptSelection  char 250 to 249script  <p><font color="#980517">on</font> mouseUp</p>
<p>  <font color="#0000FF">set</font> the <font color="#FF0000">hilite</font> of btn &quot;5f&quot; to true</p>
<p>  <font color="#0000FF">put</font> &quot;5&quot;&amp;<font color="#000000">linefeed </font>after fld &quot;familiarityRatings&quot;</p>
<p>  <font color="#0000FF">disable</font> btn &quot;1f&quot;</p>
<p>  <font color="#0000FF">disable</font> btn &quot;2f&quot;</p>
<p>  <font color="#0000FF">disable</font> btn &quot;3f&quot;</p>
<p>  <font color="#0000FF">disable</font> btn &quot;4f&quot;</p>
<p>  <font color="#0000FF">disable</font> grp &quot;familiarGrp&quot;</p>
<p>  <font color="#0000FF">send</font><font color="#000000"> </font>nextTrial<font color="#000000"> </font>to<font color="#000000"> </font>this<font color="#000000"> </font>cd<font color="#000000"> </font>in<font color="#000000"> </font>400<font color="#000000"> </font><font color="#F88017">milliseconds</font><font color="#000000"></font></p>
<p><font color="#980517">end</font> mouseUp</p>	     
  � nr       �  �d � $    �       
cREVTable    currentview  *not at all familiar
(never seen it before) cREVGeneral    
bookmarks   revUniqueID  1211604984170handlerList   scriptSelection  char 1 to 0prevHandler   tempScript   script        not at all affordable 
  � vr 	      � Gd � $    �       
cREVTable    currentview  "very familiar
(seen it many times) cREVGeneral    revUniqueID  1211605121603     very affordable    Instructions   P �on playStopped
  hide me
  show field "beginExperiment"
  show button "beginExperiment"
  get flushEvents("all")
end playStopped
     � �"8@    � U/Users/jtangen/Documents/Research/Matthew Thompson/MemoryExpV1/Prints/inst/inst1.mov �����������   cREVGeneral    scripteditorvscroll  0revUniqueID  1311572478806scripteditorselection  43   fillerControl  a         h S�
   scrambleList  �)`       
 
 � G�        � adult	laudt	tldau  advise	sivdea	dsvaei  alcohol	haloocl	lholoca  autumn	untamu	ntmauu  balance	aecbnal	aclnbae              ballot	lotabl	labolt  barrel	bralre	rlaebr  beef	febe	ebef  belly	lyelb	eybll  bench	henbc	hnbec  bishop	sbphio	pshobi  bloom	lobmo	lomob  bomb	obbm	ombb  boot	obot	otbo  branch	bcanhr	nhrabc  brass	sabrs	absrs  buck	cbuk	cbku  bunch	ubhcn	bcuhn  card	cdra	rcad  catcher	hrceact	hcacert  clerk	eckrl	klcer  climate	amtliec	lemtaci  closet	loctse	lotecs  compass	mpcoass	amspcso              costume	emsucto	touescm              creek	ecerk	recek  curb	urcb	cbru  cycle	eccly	leccy  diagram	mgidraa	daargmi              dill	lild	illd  dough	udhgo	odghu  drift	trfdi	ftird  emperor	prermeo	reporme              faint	nfati	aintf  fence	ceefn	necef  fever	verfe	rveef  finish	ihsifn	ihnfis  fluid	diulf	uifdl  fragile	laigerf	egarfil  frozen	rnzeof	oznref  gift	gfit	tgfi  gown	nogw	ngwo  harm	mrah	rmah  holder	hlerod	eorldh  hull	hlul	lluh  impulse	msieulp	iplemus              ivory	yvior	oriyv  label	bleal	belal  lagoon	olonag	lgonao  lobby	oylbb	ylbob  logic	ogcil	cgiol  lover	evlro	rvleo  loyalty	ltoalyy	atllyyo  lung	gnul	ugln  luxury	uruyxl	xruluy  melody	eymodl	myolde  mild	dlim	imld  monk	omkn	knom  motel	olmte	lemto  mustard	dstaumr	rdtamus              navy	yvna	nyva  neutral	tenular	antleru  notion	nioont	ootinn  parade	adprea	arpdea  parking	ikanprg	rapnikg  pepper	erpepp	reeppp  pint	tnpi	tipn  pony	noyp	onpy  possess	sosseps	opssess              potato	tptooa	tpaoot  prairie	iirrpea	areirip  prayer	areyrp	aerypr  profit	ifptro	oifrtp  quarrel	ulqerar	aerrluq  rabbit	rbtiab	biatrb  rake	erka	arke  ranch	ahcrn	ncarh  remedy	deremy	yeemrd  routine	eirntou	teuinor  ruin	unir	inru  surgeon	grenuso	rnsgeuo              survive	uviesrv	rueivvs  taxi	aitx	aixt  therapy	athpery	ypherat  tobacco	cctobao	ocacotb              tongue	onutge	uneotg  track	crtak	kctra  tribute	rttbieu	btturie  vague	gevua	aguev  violin	lvinio	nlviio  visitor	sotriiv	ioirsvt  weep	epwe	eewp  widow	dwiwo	dwiow  wound	wonud	oudwn       	`       �   E�   countDownFiller �E�p�global fillerTimeTotal,fillerTime,scrambleList,fillerCnt,scrambledWordCheck

on mouseUp
  resetFiller
  startFiller
  send frustrationRelease to me in 30 seconds
end mouseUp

on resetFiller
  put 60*fillerTimeTotal into fillerTime -- 60 seconds * X minutes
end resetFiller

on startFiller
  if fillerTime=1 then
    send endFiller to me in 1 second
  else
    send dropSecond to me in 1 second
  end if
end startFiller

on dropSecond
  put fillerTime-1 into fillerTime
  send startFiller to me
end dropSecond

on endFiller
  send endFillerTask to this cd
end endFiller

on frustrationRelease
  put fld "scrambledWord" into scrambledWordCheck
  send checkScramble to me in 20 seconds
end frustrationRelease

on checkScramble
  if scrambledWordCheck=fld "scrambledWord" then put word 1 of line fillerCnt of scrambleList into fld "unscrambledWord"
  send frustrationRelease to me in 10 seconds
end checkScramble
        �  �  T         	        resetFiller �E�p�global fillerCnt,scrambleList

on mouseUp
  resetFiller
end mouseUp

on resetFiller
  put 1 into fillerCnt
  put scramble(fld "scrambleList") into scrambleList
  put 2&linefeed&3 into itemScramble
  put any line of itemScramble into wordNum
  put word wordNum of line fillerCnt of scrambleList into fld "scrambledWord"
  put empty into fld "unscrambledWord"
  show fld "scrambledWord"
  show fld "unscrambledWord"
  focus on fld "unscrambledWord"
end resetFiller
        � - �  R         	     
   inst2          ~�� k�           �Now we�re going to present you with a scrambled word task. Your job is to simply unscramble each word on the screen by typing it correctly in the field below. Then press the return key. 
    ready   `      ��� ��           Ready?   P Instructions2   P won playStopped
  hide me
  show fld "beginRec"
  show button "OKrecognition"
  get flushEvents("all")
end playStopped
     � �"8@    � U/Users/jtangen/Documents/Research/Matthew Thompson/MemoryExpV1/Prints/inst/inst2.mov �����������   cREVGeneral    revUniqueID  1311572478806scripteditorvscroll  0scripteditorselection  43   OKdemog �e�x  �global instPath

on mouseUp
  if the label of btn "qualification" = "- How many years have you been a qualified fingerprint expert? -" then
    answer "Please indicate the number of years that you've been a qualified expert"
  else
    if the label of btn "experience" = "- How many years have you been analysing fingerprints? -" then
      answer "Please indicate the number of years that you've been analysing prints"
    else
      if the label of btn "age" = "- How old are you? -" then
        answer "Please specify your age"
      else
        if the label of btn "gender" = "- Gender? -" then
          answer "Please specify your gender"
        else
          hide btn "qualification"
          hide btn "experience"
          hide btn "age"
          hide btn "gender"
          hide btn "OKdemog"
          set the filename of player "instructions" to instPath&"inst1.mov"
          show player "instructions"
          start player "instructions"
        end if
      end if
    end if
  end if
end mouseUp
     � �� : "    W OK           cREVGeneral    scriptChecksum  !7\�-�^O����revUniqueID  1183620122468
bookmarks   handlerList  mouseUptempScript   prevHandler  mouseUpscriptSelection  char 340 to 339script <p><font color="#980517">on</font> mouseUp</p>
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
<p><font color="#980517">end</font> mouseUp</p>	        age ��m      � ^~ � "    S - How old are you? -   - How old are you? -
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
100         cREVGeneral    revUniqueID  1183620042220	        gender ��m      � ^� � "    Q - Gender? -    - Gender? -
Male
Female         cREVGeneral    revUniqueID  1183620042221	       y okCond �e�p�global subjectNum,waitPresentPicTime,fillerTimeTotal

on mouseUp
  if the label of btn "subjectNum" = "- Subject -" then
    answer "Please enter the subject number"
  else
    if the label of btn "waitPresentPicTime" = "- Print Time (ms) -" then
      answer "Please enter the milliseconds for the print presentation"
    else
      if the label of btn "fillerTime" = "- Filler Task Time (min) -" then
        answer "Please enter the seconds for the filler task"
      else
        hide me
        hide btn "subjectNum"
        hide btn "waitPresentPicTime"
        hide btn "fillerTime"
        show btn "qualification"
        show btn "experience"
        show btn "age"
        show btn "gender"
        show btn "OKdemog"
        put the label of btn "subjectNum" into subjectNum
        put the label of btn "waitPresentPicTime" into waitPresentPicTime
        put the label of btn "fillerTime" into fillerTimeTotal
        createEvSeq
      end if
    end if
  end if
end mouseUp
       �� 0 $7 OK          	       x subjectNum ��	e      {t �  7 - Subject -    �- Subject -
1
2
3
4
5
6
7
8
9
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
60        	  � 	       J waitPresentPicTime ��e      {� �   5000    4- Print Time (ms) -
1
1000
2000
3000
4000
5000
6000        	  � 	       L fillerTime ��e      {� �   5    j- Filler Task Time (min) -
2
3
4
5
6
7
8
9
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
30        	  � 	     
   beginExperiment  3 *    � YD� �    �       
cREVTable    currentview  �<p>Now you are ready for the experiment. If you have any questions, please ask the experimenter now. Otherwise, click the &quot;Begin Experiment&quot; button below to start the experiment.</p> cREVGeneral    revUniqueID  1311573937418     �Now, you are ready for the experiment. If you have any questions, please ask the experimenter now. Otherwise, click the �Begin Experiment� button below to start the experiment.    beginExperiment �e�p �global expStartTime

on mouseUp
  hide field "beginExperiment"
  hide button "beginExperiment"
  put the long date&tab&the long time into expStartTime
  studyTask
  get flushEvents("all")
end mouseUp
       � � 0Z Begin Experiment          	     
  ! scrambledWord (  `      �2� ��           henbc 
  " unscrambledWord  #x  `<global fillerCnt,scrambleList,scrambleSolved

on returnInField
  nextFillerWord
end returnInField

on nextFillerWord
  if fld "unscrambledWord"= word 1 of line fillerCnt of scrambleList then
    play "Tink.aiff"
    if word 1 of line fillerCnt of scrambleList is empty then
      resetFiller
      exit nextFillerWord
    else
      put word 1 of line fillerCnt of scrambleList&linefeed after scrambleSolved
      add 1 to fillerCnt
      put 2&linefeed&3 into itemScramble
      put any line of itemScramble into wordNum
      put word wordNum of line fillerCnt of scrambleList into fld "scrambledWord"
      put empty into fld "unscrambledWord"
      focus on fld "unscrambledWord"
    end if
  else
    play "Frog.aiff"
    put empty into fld "unscrambledWord"
    focus on fld "unscrambledWord"
  end if
end nextFillerWord
       ��� ��        � bench   H 	printPic  �@      Y K�� ]/Users/jtangen/Documents/Research/Matthew Thompson/MemoryExpV1/Prints/images/setB/05/065.jpg     ) 
seenPrint �e�x  �global recognitionCnt,testEvSeq,startRecognitionMS

on mouseUp
  get flushEvents("all")
  put tab&"old"&tab&the milliseconds-startRecognitionMS after line recognitionCnt of testEvSeq
  set lockscreen to true
  hide image "printPic"
  hide fld "printRecLabel"
  hide btn "seenPrint"
  hide btn "notSeenPrint"
  set lockscreen to false
  add 1 to recognitionCnt
  send presentRecognition to this cd in 500 milliseconds
end mouseUp
       #C � 0v Yes          	       * notSeenPrint �e�x  �global recognitionCnt,testEvSeq,startRecognitionMS

on mouseUp
  get flushEvents("all")
  put tab&"new"&tab&the milliseconds-startRecognitionMS after line recognitionCnt of testEvSeq
  set lockscreen to true
  hide image "printPic"
  hide fld "printRecLabel"
  hide btn "seenPrint"
  hide btn "notSeenPrint"
  set lockscreen to false
  add 1 to recognitionCnt
  send presentRecognition to this cd in 500 milliseconds
end mouseUp
       �C � 0t No          	     
  - printRecLabel H (        ^
� /�           !Have you seen this print before? 
  Q 	beginRec  3 *    � 7o3 ^    �       
cREVTable    currentview  �<p>Now you are ready for the experiment. If you have any questions, please ask the experimenter now. Otherwise, click the &quot;Begin Experiment&quot; button below to start the experiment.</p> cREVGeneral    revUniqueID  1311573937418     gIf you have any questions, please ask the experimenter now. Otherwise, click the �Begin� button below.   % OKrecognition �e�x   �global recognitionCnt

on mouseUp
  hide player "Instructions2"
  hide me
  hide fld "beginRec"
  put 1 into recognitionCnt
  send presentRecognition to this cd
end mouseUp
       �� h 2r Begin          	       W qualification ��m      � �4 "     A- How many years have you been a qualified fingerprint expert? -   - How many years have you been a qualified fingerprint expert? -
I�m not qualified yet
1
2
3
4
5
6
7
8
9
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
60         cREVGeneral    revUniqueID  1183620042220	       X experience ��m      � �J4 "     9- How many years have you been analysing fingerprints? -    �- How many years have you been analysing fingerprints? -
0
1
2
3
4
5
6
7
8
9
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
60         cREVGeneral    revUniqueID  1183620042220	       � 
Frog.aiff   	`              �  �         { {��		�������������	�	 � �PP	�	�

��	�	���������������	4	422dd��������� � ����������������
x
x�����;�;������FFTT����������������	�	�	�	��� n n N N��nn	I	I	�	�ss�� Z Z��������
^
^�������������(�(;;qq�����*�*����  ����
!
!���� � ��L�L�������������� � ��������� � �..		
Y
Yww##���������P�P � ���	�	�
�
���tt 
 
�������� � �cc����dd w w�������8�8 r r��LLKK�	�	�����������s�s����))�����������*�*�_�_ZZ��<<������������}}��������������������������22�� � ��������������~�~�����Y�Y�����
�
�������������d�d�������������h�h�����|�|�������/�/�;�;  ��  �����W�W�����G�G����YYxx����WW���������k�k�W�W�������� c c�������� � ���XX  ����yyii
]
]BB

@@����DD��DD	N	N	�	�ffYY�����T�T�/�/������������  �,�,�����������~�~�z�z Q Q Y Y���������>�>�{�{�b�b  QQ�����5�5�������������Y�Y��LL��

 � ��I�I�i�i������CC�����9�9�%�%�����c�c� �  * *55���U�U�~�~�����������H�H�g�gVV�� � ��������-�-������������ll r r�P�P�^�^�������������� � ��!�!�_�_�u�u������������ � ���hh�x�x�.�.�����X�X�]�]���G�G�����a�a��� � ���������������� � ��!�!�����g�g�p�p���������������3�3�u�u�3�3�$�$���'�'�������������'�'���T�T�#�#�s�s����	F	F���n�n�H�Hٗٗ҇҇�X�X���������A�A++BB�?�?�����/�/�������G�G�{�{�$�$�������������=�=�i�i���������������+�+�ͻ�δδ�	�	��#y#y++�������>�>�­µ��C�C��(l(lG�G�R1R1E�E�'�'�bb���4�4������ZZ+�+�@Q@QG6G6AA22 � ���	W	W99	�	�VV����mm��#F#F'�'�)�)�'�'� Z Z��tt���������_�_RR��"�"�**(X(X]]ss � ������h�h����==,,��XX�����*�*�����~�~((	�	���		��  ����	%	%
7
7''  �w�w��||	�	�DD	A	A�� � ��B�B������&&	�	���
�
�++���V�V������������55��55XX � ��������� � �����MM�����a�a���� w wKK��""��EE77������������66��yydd�� � ������*�*�&�&KK������ � ��d�d�8�8�����0�0hh++���� r r��������������������MMhh � ������������M�M����<<		 � �����������������WW�������n�n����,,�����������������!�!�����]�]���������z�z�I�I�������;�;�c�c�e�e���������A�A�����3�3�����p�p�:�:�������� E E � ��t�t�����������������s�s��<<�����������>�>�����r�r � �llbb33 � ��Y�Y��������&&��uuMMII����������^^��ee��������VV;;��FF�����V�V�E�E������  ��ww�� 4 4�����������������������[�[ D D ; ;�^�^�$�$�'�'������������ { {����))�����=�=�P�P�Z�Z�z�z D D--{{���� � ������k�k���������7�7 � �''@@FF�������>�>������������ D D``LL  �������_�_�(�(�G�G�a�a����[[�� � ��	�	�������w�w�%�%�������� � �[[ � ��V�V�����%�%�����h�h�������� � � � ��������������}�}�W�W������������``jj�����I�I�f�f�P�P���������7�7�� j j[[  �$�$�%�%�����:�:���������h�h���� Z Z  �[�[���������o�o�����������/�/�����&�&�����������2�2���������^�^55�� � �������������������� � ����]]OO��VV�L�L�P�P�����9�9�������0�0������:: k k�����c�c�������������$�$�����l�l���������x�x���������d�d�����]�]הה����ڊڊ���F�F��������

�t�t������ММ�����e�e����||"�"�-�-�-�-�#�#�oo � ��b�b�����$�$��������__%�%�(9(9$�$�'',,��66dd--��
�
���������JJ��77KK��
�
�OO�����
�
������		��aa����	�	�		�4�4������������ii	�	�qq11ff������������  ��������]]))--   H H��vv����44  ����  ����{{��rr##   � ��c�c����������vv&&����  �	�	��������jj������??�� � ������U�U���� � �����EE33  �F�F�&�&����  ZZ^^��''�� � ��[�[������  ���������� c c�_�_�
�
�{�{ a arrBBww�����	�	������������ � �nn���� � ����������������������� | |OO��SS � ������������=�=���� � �jj����   _ _�������� D D������pp�� w w�s�s���������^�^ A A>>����?? & &�����������������7�7�����������������y�y�����������x�x�����8�8�����5�5�P�P� � ���������x�x�����l�l�0�0���� _ _ k k  �j�j�����v�v�}�}�	�	���� � �jj��WW � ����������m�m�z�z������ � �KK��FF � � " "������������  77��<<FF		��������II����rr � � � ���//����--  �/�/�����~�~�������� ] ] � � � � � ����������=�=�������~�~�,�,����    �����U�U�������������t�t   � � � � � � & &�����������+�+���� g gll`` � �  �g�g���������,�,���� f f � � � � | |�����&�&�������������[�[     p p � � / /���������!�!�����$�$�������� H H � � � �  �=�=�����$�$�!�!�����A�A���� ] ] k k  ���������������������x�x   R R = =�����$�$�}�}�$�$�,�,�����f�f   � � j j�����������|�|�V�V���������}�} 4 4 g g  �V�V�h�h�����H�H�z�z�$�$� � ����      �s�s���������������z�z�9�9����  ���������*�*�����x�x������������ � � � �  �����������:�:�������� � ����� � ������������������{�{�������� � �?? � ��Q�Q�r�r�����1�1���������������m�m�������������i�i���������$�$�����{�{�8�8�����+�+�V�V�����������������b�b�H�H�i�i������������ a a77��	�	����������������!�!�����M�M��vvbb��  ����--$$ � � � �BB��oo��''������%% � ������[�[�g�g # #KK��jj��KKSS�����,�,���w�w A A&&����:: � �������������   r r � � � � � � � � A A       # # V V � � � � � � w w 9 9  ����   / / p p � � � � � � ] ] & &������������ / / L L r r x x c c D D      ��������   & & ; ; D D 7 7        ��������            ��������                                                                    V"  � 
Tink.aiff   	`              �  x        �������\�\jj0�0��������O�O����++%1%1�C�C�h�h������.t.t??޴޴�6�6�f�f(4(4#�#��"�"�'�'�T�T77,,���_�_���N�N%q%q"�"�������������)�)������������W�W"�"�!�!��l�l�H�H�T�T��'�'��4�4ڧڧ�� d d ` `����ۦۦ����%m%m&&�b�b�^�^����11�&�&�����{�{XX#b#b..�q�q��� � ���V�V������!l!l&&�X�Xߨߨ���������e�e����
B
B���#�#�;�;�������\�\���j�j������������������ 4 4�����������Y�Y�5�5�i�i``qq � �������xxhh���������)�)��YY���F�F�t�tii��GG����������BBJJCC�����(�(qqZZ���^�^�J�J������>>���P�P����������������������;;FF����������__������������HH@@�����;�;LL������������!!LL

�B�B����__���x�x������		aaUU�m�m�� � ���HH�O�O������



}}�����>�> < <�������"�"����		����������������������������77���������X�X���r�r�	�	��gg���n�n�$�$���������
�
�����=�=��3355�J�J����������QQ���������i�i��ttII���X�X�Q�Q
�
���������MM��UU����������
V
V
�
������[�[������YY�����{�{����	�	�
"
"����������%%aaYY�0�0��������	�	��L�L�����1�1��
�
�UU���������v�v;;	Z	Z�����n�n�i�i&&
&
&MM�_�_���R�R����������������	�	�==���������6�6�� 0 0��������SS		--�g�g�	�	��xx;; p p�5�5����{{���������
�
���� � ������P�P�����J�J��������yy�� � ��@�@����MMii�����������
�
���� � ���� �  � ���ww�D�D�^�^�2�2--22		�������� � ��������"�"�^�^���������?�? v v���'�'�������������*�*���� B BOOJJ������������xx++		�����Z�Z  ���������F�F���� � ��d�d����    ��mm�'�'�����Y�Y���� � �������������II���h�h��������!! � ������5�5������YY�������#�# � �CC j j�B�B������ � � ` `    V"   
Tink.aiff   	`              �  x        �������\�\jj0�0��������O�O����++%1%1�C�C�h�h������.t.t??޴޴�6�6�f�f(4(4#�#��"�"�'�'�T�T77,,���_�_���N�N%q%q"�"�������������)�)������������W�W"�"�!�!��l�l�H�H�T�T��'�'��4�4ڧڧ�� d d ` `����ۦۦ����%m%m&&�b�b�^�^����11�&�&�����{�{XX#b#b..�q�q��� � ���V�V������!l!l&&�X�Xߨߨ���������e�e����
B
B���#�#�;�;�������\�\���j�j������������������ 4 4�����������Y�Y�5�5�i�i``qq � �������xxhh���������)�)��YY���F�F�t�tii��GG����������BBJJCC�����(�(qqZZ���^�^�J�J������>>���P�P����������������������;;FF����������__������������HH@@�����;�;LL������������!!LL

�B�B����__���x�x������		aaUU�m�m�� � ���HH�O�O������



}}�����>�> < <�������"�"����		����������������������������77���������X�X���r�r�	�	��gg���n�n�$�$���������
�
�����=�=��3355�J�J����������QQ���������i�i��ttII���X�X�Q�Q
�
���������MM��UU����������
V
V
�
������[�[������YY�����{�{����	�	�
"
"����������%%aaYY�0�0��������	�	��L�L�����1�1��
�
�UU���������v�v;;	Z	Z�����n�n�i�i&&
&
&MM�_�_���R�R����������������	�	�==���������6�6�� 0 0��������SS		--�g�g�	�	��xx;; p p�5�5����{{���������
�
���� � ������P�P�����J�J��������yy�� � ��@�@����MMii�����������
�
���� � ���� �  � ���ww�D�D�^�^�2�2--22		�������� � ��������"�"�^�^���������?�? v v���'�'�������������*�*���� B BOOJJ������������xx++		�����Z�Z  ���������F�F���� � ��d�d����    ��mm�'�'�����Y�Y���� � �������������II���h�h��������!! � ������5�5������YY�������#�# � �CC j j�B�B������ � � ` `    V"  4 
Frog.aiff   	`              �  �         { {��		�������������	�	 � �PP	�	�

��	�	���������������	4	422dd��������� � ����������������
x
x�����;�;������FFTT����������������	�	�	�	��� n n N N��nn	I	I	�	�ss�� Z Z��������
^
^�������������(�(;;qq�����*�*����  ����
!
!���� � ��L�L�������������� � ��������� � �..		
Y
Yww##���������P�P � ���	�	�
�
���tt 
 
�������� � �cc����dd w w�������8�8 r r��LLKK�	�	�����������s�s����))�����������*�*�_�_ZZ��<<������������}}��������������������������22�� � ��������������~�~�����Y�Y�����
�
�������������d�d�������������h�h�����|�|�������/�/�;�;  ��  �����W�W�����G�G����YYxx����WW���������k�k�W�W�������� c c�������� � ���XX  ����yyii
]
]BB

@@����DD��DD	N	N	�	�ffYY�����T�T�/�/������������  �,�,�����������~�~�z�z Q Q Y Y���������>�>�{�{�b�b  QQ�����5�5�������������Y�Y��LL��

 � ��I�I�i�i������CC�����9�9�%�%�����c�c� �  * *55���U�U�~�~�����������H�H�g�gVV�� � ��������-�-������������ll r r�P�P�^�^�������������� � ��!�!�_�_�u�u������������ � ���hh�x�x�.�.�����X�X�]�]���G�G�����a�a��� � ���������������� � ��!�!�����g�g�p�p���������������3�3�u�u�3�3�$�$���'�'�������������'�'���T�T�#�#�s�s����	F	F���n�n�H�Hٗٗ҇҇�X�X���������A�A++BB�?�?�����/�/�������G�G�{�{�$�$�������������=�=�i�i���������������+�+�ͻ�δδ�	�	��#y#y++�������>�>�­µ��C�C��(l(lG�G�R1R1E�E�'�'�bb���4�4������ZZ+�+�@Q@QG6G6AA22 � ���	W	W99	�	�VV����mm��#F#F'�'�)�)�'�'� Z Z��tt���������_�_RR��"�"�**(X(X]]ss � ������h�h����==,,��XX�����*�*�����~�~((	�	���		��  ����	%	%
7
7''  �w�w��||	�	�DD	A	A�� � ��B�B������&&	�	���
�
�++���V�V������������55��55XX � ��������� � �����MM�����a�a���� w wKK��""��EE77������������66��yydd�� � ������*�*�&�&KK������ � ��d�d�8�8�����0�0hh++���� r r��������������������MMhh � ������������M�M����<<		 � �����������������WW�������n�n����,,�����������������!�!�����]�]���������z�z�I�I�������;�;�c�c�e�e���������A�A�����3�3�����p�p�:�:�������� E E � ��t�t�����������������s�s��<<�����������>�>�����r�r � �llbb33 � ��Y�Y��������&&��uuMMII����������^^��ee��������VV;;��FF�����V�V�E�E������  ��ww�� 4 4�����������������������[�[ D D ; ;�^�^�$�$�'�'������������ { {����))�����=�=�P�P�Z�Z�z�z D D--{{���� � ������k�k���������7�7 � �''@@FF�������>�>������������ D D``LL  �������_�_�(�(�G�G�a�a����[[�� � ��	�	�������w�w�%�%�������� � �[[ � ��V�V�����%�%�����h�h�������� � � � ��������������}�}�W�W������������``jj�����I�I�f�f�P�P���������7�7�� j j[[  �$�$�%�%�����:�:���������h�h���� Z Z  �[�[���������o�o�����������/�/�����&�&�����������2�2���������^�^55�� � �������������������� � ����]]OO��VV�L�L�P�P�����9�9�������0�0������:: k k�����c�c�������������$�$�����l�l���������x�x���������d�d�����]�]הה����ڊڊ���F�F��������

�t�t������ММ�����e�e����||"�"�-�-�-�-�#�#�oo � ��b�b�����$�$��������__%�%�(9(9$�$�'',,��66dd--��
�
���������JJ��77KK��
�
�OO�����
�
������		��aa����	�	�		�4�4������������ii	�	�qq11ff������������  ��������]]))--   H H��vv����44  ����  ����{{��rr##   � ��c�c����������vv&&����  �	�	��������jj������??�� � ������U�U���� � �����EE33  �F�F�&�&����  ZZ^^��''�� � ��[�[������  ���������� c c�_�_�
�
�{�{ a arrBBww�����	�	������������ � �nn���� � ����������������������� | |OO��SS � ������������=�=���� � �jj����   _ _�������� D D������pp�� w w�s�s���������^�^ A A>>����?? & &�����������������7�7�����������������y�y�����������x�x�����8�8�����5�5�P�P� � ���������x�x�����l�l�0�0���� _ _ k k  �j�j�����v�v�}�}�	�	���� � �jj��WW � ����������m�m�z�z������ � �KK��FF � � " "������������  77��<<FF		��������II����rr � � � ���//����--  �/�/�����~�~�������� ] ] � � � � � ����������=�=�������~�~�,�,����    �����U�U�������������t�t   � � � � � � & &�����������+�+���� g gll`` � �  �g�g���������,�,���� f f � � � � | |�����&�&�������������[�[     p p � � / /���������!�!�����$�$�������� H H � � � �  �=�=�����$�$�!�!�����A�A���� ] ] k k  ���������������������x�x   R R = =�����$�$�}�}�$�$�,�,�����f�f   � � j j�����������|�|�V�V���������}�} 4 4 g g  �V�V�h�h�����H�H�z�z�$�$� � ����      �s�s���������������z�z�9�9����  ���������*�*�����x�x������������ � � � �  �����������:�:�������� � ����� � ������������������{�{�������� � �?? � ��Q�Q�r�r�����1�1���������������m�m�������������i�i���������$�$�����{�{�8�8�����+�+�V�V�����������������b�b�H�H�i�i������������ a a77��	�	����������������!�!�����M�M��vvbb��  ����--$$ � � � �BB��oo��''������%% � ������[�[�g�g # #KK��jj��KKSS�����,�,���w�w A A&&����:: � �������������   r r � � � � � � � � A A       # # V V � � � � � � w w 9 9  ����   / / p p � � � � � � ] ] & &������������ / / L L r r x x c c D D      ��������   & & ; ; D D 7 7        ��������            ��������                                                                    V" 