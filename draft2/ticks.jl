for i in 1:45
  secs = i * 16
  mins = secs ÷ 60 |> string
  secs = secs % 60 |> string
  println("s1 \\bar \"'\" s1")
  println("\\ticker #\"", lpad(mins, 2, "0"), ":", lpad(secs, 2, "0"), "\"")
  println("\\break")
end
