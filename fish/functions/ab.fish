function ab
  if test -n "$argv"
    code $argv
  else
    code .
  end
end
