function sleepless -d "What prevented my sleep?"
    pmset -g assertions | egrep '(PreventUserIdleSystemSleep|PreventUserIdleDisplaySleep)'
end
