# Bells Studies I

# Coded by Jessy Lavictoire


use_bpm 24
use_random_seed 1986

live_loop :bell, delay: 3 do
  with_fx :reverb do
    sample :perc_bell, rate: 0.4
    sleep 3
  end
end
live_loop :bell2, delay: 3 do
  with_fx :reverb do
    sample :perc_bell, rate: 0.1
    sleep 1
  end
end
live_loop :bell3 do
  6.times do
    sample :perc_bell, rate: 3
    sleep 0.5
  end
end
live_loop :bell4 do
  2.times do
    sample :perc_bell, rate: 2
    sleep 3
  end
end
live_loop :bell5, delay: 5 do
  with_fx :reverb do
    sample :perc_bell, rate: 0.8
    3.times do
      sample :perc_bell, rate: 0.2
      sleep 0.5
    end
    sleep 2
  end
end
8.times do
  live_loop :arvo do
    with_fx :reverb, mix: 1 do
      synth :pretty_bell, amp: rrand(0.5, 1.5), attack: rrand(0, 4), sustain: rrand(0, 2), release: rrand(1, 5), cutoff_slide: rrand(0, 5), cutoff: rrand(60, 100), pan: rrand(-1, 1), pan_slide: rrand(1, 5), amp: rrand(0.5, 1)
      play :D5
      sleep rrand(3, 5)
      play :D3
      sleep rrand(1, 5)
      play :A5
      sleep rrand(0.25, 3)
      play ([:A3, :B2, :F5]).choose
      sleep rrand(0.5, 1)
    end
  end
end
live_loop :abel do
  with_fx :reverb, cutoff: 90 do
    with_fx :slicer, mix: 0.5 do
      with_fx :distortion, distort: 0.4 do
        use_random_seed 24
        sample :perc_bell, beat_stretch: 1, rate: [2, 3, 4, -1].choose / 2.0, finish: 0.5
        sleep 1
      end
    end
  end
end

