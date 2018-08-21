use_bpm 120

live_loop :bass_line do
  use_synth :prophet

  play (ring :e2, :e2, :e2, :e2, :r, :r,
        :e2, :e2, :e2, :e2, :r, :r,
        :e2, :e2, :e2, :e2, :r, :r,
        :g2, :r, :g2, :r, :g2, :r,

        :e2, :e2, :e2, :e2, :r, :r,
        :e2, :e2, :e2, :e2, :r, :r,
        :e2, :e2, :e2, :e2, :r, :r,
        :g2, :r, :g2, :r, :d2, :r,
        ).tick
  sleep 0.25
end

live_loop :amen_break do
  8.times do
    sample :loop_amen, beat_stretch: 3
    sleep 3
  end

  2.times do
    sample :loop_amen, beat_stretch: 6
    sleep 6
  end
end

s=1.0/8
sq=1*s # semiquaver, to md dotted minim
q=2*s
c=4*s
cd=6*s
m=8*s
md=12*s

live_loop :tune do
  with_fx :reverb, room: 0.8 do
    with_synth :zawa do
      tr=[:r,:b4,:c6,:b5,:d5,:a4,:b4,
          :b5,:g5,:b4,:b4,:d5,:c5,:b4,
          :b4,:a3,:b3,:c4,:d4,:b3,:c5,:b4]
      td=[6*7.5*c,cd,cd,c*9,cd,cd,c*12,
          cd,cd,cd+c,q,cd+c,q,md,cd,
          cd,cd+q,q,q,cd+c,q,c*15]
      pl(tr,td)
    end
  end
end

live_loop :swooshy do
  with_fx :level, amp: 2 do
    sample :ambi_lunar_land, rate: 1
    sleep 12
    sample :ambi_lunar_land, rate: -1
    sleep 12
  end
end
