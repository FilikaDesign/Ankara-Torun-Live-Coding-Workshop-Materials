# Dedicated to haylaz Tarçın
live_loop :havsub do
  with_fx :reverb,mix:1,room:1 do
    use_synth :fm
    #sync :hav
    play :b2
    sleep 1.01
    play :a2
    sleep 1.01
    play :c3
    sleep 2.01
    play :b2
    sleep 2.01
  end
end



live_loop :hav5liler do
  sync :hav
  use_synth :subpulse
  with_fx :echo, mix:1,phase:0.175,decay:10 do
    with_fx :slicer, phase:0.175,amp:1 do
      play :fs
      sleep 1
      play :ds
      sleep 1
      play :g5
      sleep 2
      play :fs
      sleep 2
    end
  end
end



live_loop :hav do
  
  use_synth :subpulse
  with_fx :echo, mix:1,phase:0.35,decay:10 do
    with_fx :slicer, phase:0.35,amp:1 do
      play :b
      sleep 1
      play :a
      sleep 1
      play :c5
      sleep 2
      play :b
      sleep 2
    end
  end
end
