function fish_prompt
  # blue working directory
  set_color blue
  
  # function to get current working directory plus one level up
  echo -n (basename $PWD)
  
  # get the current git branch, using vcprompt (installed via homebrew)
  set branch (vcprompt -f '%b')
  
  if test -n "$branch"
    # we have a git branch

    set gitstatus (vcprompt -f '%m')
    set_color brblack

    if test -n "$gitstatus"
      # git status is dirty
      set_color yellow
    end
    
    # now that we have set our color, print the git branch.
    echo -n " [$branch]"
  end
  
  set_color purple
  echo -n " ❯ "
  set_color normal
end
