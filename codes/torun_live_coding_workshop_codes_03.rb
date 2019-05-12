# generates looping sounds
use_bpm 120

"live_loop :foo do
  play :g4,sustain:0.5
  sleep 1
  play :E5
  sleep 1
  play :G6
  sleep 1
  play :C3
  sleep 5
end"

# generates looping sounds
"3.times do
  play :C4
  sleep 1
  play :E4
  sleep 1
  play :G4
  sleep 1
  play :C5
  sleep 1
end
"











#sample :loop_amen


################################################
#jungle?
#sample :loop_amen, rate:1.5

################################################
# chop it up
#sample :loop_amen, onset:2

################################################
# loop it, time is important
# everything depends on time
"loop do
  sample :loop_amen, onset:2
  sleep 0.125
end
"
################################################
# loop it with randomness
"live_loop :loopa do
  sample :loop_amen, onset:pick
  sleep 0.25
end"

################################################
# loop it with randomness, add envelopes ADSR
"loop do
  sample :loop_amen, onset:pick, sustain: 0, release: 0.1
  sleep 0.125
end"


# fine? How about adding synths?
"live_loop :sinthh do
  synth :tb303, note: :e3, release:0.16
  sleep 0.5
end"

################################################
# play it together?
"live_loop :drums do
  sample :loop_amen, onset:pick, sustain: 0, release: 0.1
  sleep 0.125
end"


"live_loop :melody do
  synth :tb303, note: :e1, release:0.3
  sleep 0.5
end"

################################################
# loops are boring! so, add some randomness
"live_loop :drums do
  sample :loop_amen, onset:pick, sustain: 0, release: 0.1
  sleep 0.25
end
"
"
live_loop :melody do
  #synth :tb303, note: :e1, release:0.3,cutoff: rrand(70,130),amp:0.4
  synth :tb303, note: (octs :e1, 3).tick, release:0.3,cutoff: rrand(70,130), amp:0.4
  #synth :tb303, note: (octs :e1, 3).tick - 047), release:0.3,cutoff: rrand(70,130), amp:0.4
  sleep 0.125
end
"
################################################
# loops are boring! so, add some randomness
"live_loop :drums do
  sample :loop_amen, onset:pick, sustain: 0, release: 0.1,amp:0
  sleep 0.125
end

live_loop :guit do
  with_fx :ixi_techno , room:0 do
    sample :guit_em9, onset:[0,1,2,3,4,5,6,7,8,9].tick, sustain: 0, release: 0.1, amp:1
    sleep 0.125
  end
end

live_loop :melody do
  with_fx :echo do
    synth :piano, note: (octs [:e3,:g3,:c3].choose, 3).tick - rrand(0,8), sustain: 1,release:0.7,cutoff: rrand(70,130), amp:0
    sleep 0.125
  end

end"

'ses = "/Users/alptugan/Google Drive/Dirt-Samples/speechdark/deamon1.wav"

live_loop :kk do
  #with_fx :echo, mix:rand do
  with_fx :gverb do
    with_fx :bitcrusher,mix:rand,bits:rand do
      sample ses, onset: pick, rate:1
      sleep 0.5
    end
    # end
  end

end'

