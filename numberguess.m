Int = randi([1 99], 1, 1);
prompt = 'I am thinking of an integer at least 1 and at most 99. You get 5 tries to guess it.'
answer = inputdlg(prompt)
str = answer{[1, 1]}
userguess = str2num(str)
guesses = 1;
while guesses <= 5
  if userguess < Int && guesses < 5
    message = 'Your guess is too low. Try again.'
  f = msgbox(message)
  prompt = 'I am thinking of an integer at least 1 and at most 99. You get 5 tries to guess it.'
answer = inputdlg(prompt)
guesses++
str = answer{[1, 1]}
userguess = str2num(str)
end
if userguess > Int && guesses < 5
  message = 'Your guess is too high. Try again.' 
  f = msgbox(message) 
 prompt = 'I am thinking of an integer at least 1 and at most 99. You get 5 tries to guess it.'
answer = inputdlg(prompt)
guesses++ 
str = answer{[1, 1]}
userguess = str2num(str)
end
if userguess == Int
  message = 'you WON!!! you guessed the number!!'
  f = msgbox(message)
  break;
end
if guesses >= 5
  message = 'you LOSE!!! you failed to guess the number!!'
  f = msgbox(message)
  break;
endif
end


