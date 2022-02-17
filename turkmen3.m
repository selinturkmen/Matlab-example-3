% FIRST NAME, LAST NAME = Selin Türkmen

clear all
close all

%% Question 1
gnum =(randn(1,1000).*2)-15;
disp('The mean of numbers generated:')
disp(mean(gnum))

v = std(gnum)^2;
disp('The varience of numbers generated:')
disp(v)

y = (min(gnum):1:max(gnum));
histogram(gnum,y)
xlabel('Generated Random Numbers')
ylabel('Frequency of Generated Random Numbers')

% It can be said that the number in the histogram are normally distributed
% with the desired mean and varience. To call the distribution "normal"
% 68% of numbers should be in between [mean-variance, mean+variance] and
% 95% of the numbers should be in between [mean-(2*variance),mean+(2*variance)]. 
% In addition the shape of histogram should look like a "Bell". 
% Due to random generated numbers, mean and verience will differ with each
% run, however, each of them will meet the conditions. 

%% Question 2

%% Question 3
guess=randperm(100,1);

x=0;

while (x==0)

trial=input('Guess an integer between 1-100=');

if abs(trial-guess)==0 

disp('You won');

x=1;

elseif abs(trial-guess)<=3 
disp('Very close');

elseif abs(trial-guess)<=10 && abs(trial-guess)>=5 
disp('Getting close');

elseif abs(trial-guess)>10 
disp('Not close');

end 

end 

disp('The end')

%% HW END