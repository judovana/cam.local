#!/bin/bash
set -e
#PGM=espeak-ng
PGM=espeak
T="$1"
VOICE="$2"  #cs, en...
AMPLITUDE=100 # a bit more laud..laudest actually
PITCH_HIGH=100
PITCH_LOW=10
SPEED=130 # a bit slower
WORD_BREAKS=10 # abit slower 

if [ "x$VOICE" == "x" ] ; then
  $PGM --voices
  VOICE="cs"
fi

$PGM  "$T" -v $VOICE -a $AMPLITUDE -p $PITCH_LOW   -s $SPEED  -g $WORD_BREAKS  -w f1  
$PGM  "$T" -v $VOICE -a $AMPLITUDE -p $PITCH_HIGH  -s $SPEED  -g $WORD_BREAKS  -w f2 
# some espekas on some platforms have issue to dected output device
# thuis saving them to file and playing separately
aplay  --device plughw:UACDemoV10 f2 &
aplay  --device plughw:UACDemoV10 f1
# mixing the two pitches have disputable effect

