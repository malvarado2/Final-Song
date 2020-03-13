#----------------variables-------------------#
ineedit ="C:/Users/marcell_alvarado/Documents/Audacity/ineedit.wav"
oh= "C:/Users/marcell_alvarado/Downloads/DTH123.wav"
ending="C:/Users/marcell_alvarado/Downloads/ending.wav"
bells="C:/Users/marcell_alvarado/Downloads/bells.wav"
chew="C:/Users/marcell_alvarado/Downloads/chew.wav"
scream="C:/Users/marcell_alvarado/Downloads/r2d2.wav"
intro="C:/Users/marcell_alvarado/Downloads/Luke Confronts Darth Vader - Return of the Jedi [1080p HD].wav"
ohtini="C:/Users/marcell_alvarado/Downloads/ohtini.wav"
a=1
x=0.80
#----------------Functions-------------------#
define :bass do |note1, note2, note3, note4, note5, note6|
  play note1, amp: a
  sleep 0.75
  play note2, amp: a
  play note3, amp: a
  sleep 0.75
  play note4, amp: a
  sleep 0.75
  play note5, amp: a
  play note6, amp: a
  sleep 0.75
end

define :df do
  play :d6
  play :a5
end

define :af do
  play :a5
  play :f5
end
#----------------Array-------------------#
sleeps=[1,0.9,0.8,0.7,0.6,0.5,0.4,0.4,0.3,0.2,0.2,0.2,0.2,0.2,0.2,0.2]

use_bpm 78
use_synth :piano
#----------------begining of song-------------------#
sample ineedit
sleep 26
live_loop :halls do
  sample oh
  2.times do
    play :g3
    play :c3, sustain: 1
    play :e3, sustain: 1
    sleep 0.75
    play :f3
    sleep 0.25
    play :e3
    sleep 0.5
    play :d3
    sleep 0.5
    play :c3
    play :g3, sustain: 1
    play :e3, sustain: 1
    sleep 0.5
    play :d3
    sleep 0.5
    play :e3
    sleep 0.5
    play :c3
    sleep 0.5
    play :d3
    play :f3, sustain: 1
    sleep 0.25
    play :e3
    sleep 0.25
    play :f3
    sleep 0.25
    play :d3
    sleep 0.25
    play :e3
    play :g3, sustain: 1
    sleep 0.75
    play :d3
    sleep 0.25
    play :c3
    sleep 0.5
    play :b2
    sleep 0.5
    play :c3
    sleep 1
  end
  
  #----------------bell fade out-------------------#
  live_loop:bells do
    4.times do
      sample bells, amp: x
      sleep 4.8
      x=x-0.25
      print x
    end
    stop
  end
  1.times do
    sleep 0.25
    play :d3
    sleep 0.75
    play :e3
    sleep 0.25
    play :f3
    sleep 0.5
    play :d3
    sleep 0.5
    play :e3
    sleep 0.75
    play :f3
    sleep 0.25
    play :g3
    sleep 0.5
    play :d3
    sleep 0.75
    play :e3
    sleep 0.25
    play 54
    sleep 0.25
    play :g3
    sleep 0.5
    play :a3
    sleep 0.25
    play :b3
    sleep 0.25
    play :c4
    sleep 0.5
    play :b3
    sleep 0.5
    play :a3
    sleep 0.5
    play :g3
    sleep 1
    play :g3
    sleep 0.75
    play :f3
    sleep 0.25
    play :e3
    sleep 0.5
    play :d3
    sleep 0.5
    play :c3
    sleep 0.5
    play :d3
    sleep 0.5
    play :e3
    sleep 0.5
    play :c3
    sleep 0.5
    play :a3
    sleep 0.32
    play :a3
    sleep 0.32
    play :a3
    sleep 0.32
    play :a3
    sleep 0.32
    play :g3
    sleep 0.75
    play :f3
    sleep 0.25
    play :e3
    sleep 0.5
    play :d3
    sleep 0.5
    play :c3
    sleep 1
  end
  stop
end
sleep 37.5
sample intro
sleep 43
use_bpm 175
x=0
live_loop:speed do
  15.times do
    play :f2
    sleep sleeps[x]
    play :f3
    sleep sleeps[x]
    x=x+1
  end
  stop
end
sleep 14.5
4.times do
  bass :d4, :a4, :f4, :a3, :f4, :a4
end
live_loop:sdfa do
  af
  sleep 0.75
  df
  sleep 0.75
  af
  sleep 0.75
  df
  sleep 0.75
  af
  sleep 0.375
  df
  sleep 0.75
  af
  sleep 0.75
  play:g5
  sleep 0.375
  play:a5
  sleep 0.75
  play:a5
  sleep 0.375
  play:gs5
  sleep 0.375
  play:a5
  sleep 0.375
  play:g5
  sleep 0.75
  play:fs5
  sleep 0.375
  play:g5
  sleep 0.375
  play:gb5
  sleep 0.375
  play:f5
  sleep 1.125
  play:d5,sustain: 1.125
  sleep 1.85
  af
  sleep 0.75
  df
  sleep 0.75
  af
  sleep 0.75
  df
  sleep 0.75
  af
  sleep 0.375
  df
  sleep 0.75
  af
  sleep 0.75
  play:g5
  sleep 0.375
  play:a5
  sleep 0.375
  play:g5
  sleep 0.75
  play:g5,sustain: 1.125
  sleep 0.75
  play:fs5
  sleep 0.375
  play:g5
  sleep 0.75
  play:c6
  play:e5
  sleep 0.375
  play:bb5
  play:d5
  sleep 0.75
  play:a5
  play:c5
  sleep 0.75
  play:g5
  play:c5
  sleep 1.125
  af
  sleep 0.75
  df
  sleep 0.75
  af
  sleep 0.75
  df
  sleep 0.75
  af
  sleep 0.375
  df
  sleep 0.75
  af
  sleep 0.75
  play:g5
  sleep 0.375
  play:a5
  sleep 0.75
  play:c6
  play:e5
  sleep 0.75
  play:c6
  play:e5
  sleep 0.75
  play:a5
  sleep 0.75
  play:g5
  sleep 0.75
  play:f5
  sleep 1.125
  play:d5,sustain: 1.125
  sleep 0.375
  play:d5
  sleep 1.5
  play :as4
  sleep 0.375
  play :d5
  sleep 0.375
  play :f5
  sleep 0.75
  play :b4
  sleep 0.375
  play :d5
  sleep 0.375
  play :f5
  sleep 0.75
  play :c5
  play :f5
  play :gs5
  sleep 0.75
  play :c5
  play :f5
  play :a5
  sleep 0.75
  play :fs5,sustain: 1.125
  play :a5,sustain: 1.125
  play :c6,sustain: 1.125
  sleep 1.125
  play :ds5
  play :g5
  play :ds6
  sleep 0.75
  play :d6
  play :fs5
  play :d5
  sleep 0.75
  play :gs5
  play :e5
  play :b4
  sleep 0.75
  play :a5
  play :c5
  play :a4
  sleep 0.375
  play :f5,sustain: 1.125
  play :c5,sustain: 1.125
  play :a4,sustain: 1.125
  stop
end
live_loop:rand do
  4.times do
    sample [chew, scream, ohtini].choose
    sleep 8
  end
  stop
end

live_loop:sdfaqa do
  bass :d4, :a4, :f4, :a3, :f4, :a4
  bass :d4, :a4, :f4, :a3, :f4, :a4
  play :d4
  sleep 0.75
  play :f4
  play :a4
  sleep 0.75
  play :c4
  sleep 0.75
  play :c5
  play :as4
  play :g4
  sleep 0.75
  play :f4
  sleep 0.75
  play :a4
  play :c5
  sleep 0.75
  play :c4
  sleep 0.75
  play :a4
  play :c5
  sleep 0.75
  play :d4
  sleep 0.75
  play :f4
  play :a4
  sleep 0.75
  play :a3
  sleep 0.75
  play :f4
  play :a4
  sleep 0.75
  play :d4
  sleep 0.75
  play :f4
  play :a4
  sleep 0.75
  stop
end
sleep 45
6.times do
  bass :d4, :a4, :f4, :a3, :f4, :a4
  a=a-0.15
end
sample ending