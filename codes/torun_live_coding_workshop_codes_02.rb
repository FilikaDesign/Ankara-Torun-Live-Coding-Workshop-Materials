"use_bpm 90
use_debug false
live_loop :amen_break do
  p = [0.125, 0.25, 0.5].choose
  with_fx :slicer, phase: p, wave: 0, mix: rrand(0.7, 1),
  reps: 4 do
    r = [1, -1, 1, 1 ,1].choose #, -1
    sample :loop_amen, beat_stretch: 2, rate: r , amp: 2
    sleep 2
  end
end

live_loop :bass_drum do
  sample :bd_haus, cutoff: 50, amp: 1.5
  sleep 0.5
end


live_loop :landing do
  bass_line = (knit :e1, 3, [:c1, :c2,:d3].choose, 1)
  with_fx :slicer, phase: [0.25, 0.5].choose,
  invert_wave: 1, wave: 0 do
    s = synth :square, note: bass_line.tick, sustain: 4,cutoff: 60
    control s, cutoff_slide: 4, cutoff: 120
  end
  sleep 4
end"


live_loop :ko do
  with_fx :octaver do
    with_fx :echo do
      with_fx :reverb, mix:1,room:0.5 do
        use_synth :piano
        play chord(:g4, :sus4).choose
        sleep 0.5
        play chord(:d4, :sus4).choose
        sleep 0.5
      end
    end
  end
end
