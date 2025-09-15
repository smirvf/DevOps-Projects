Over The Wire Bandit Walk Through & Notes.

I will be using a created EC2 instance from AWS to attempt Over the Wire.

Level 0 Login:
The goal of this level is for you to log into the game using SSH. 
The host to which you need to connect is bandit.labs.overthewire.org, on port 2220. 
The username is bandit0 and the password is bandit0. Once logged in, go to the Level 1 page to find out how to beat Level 1.

If we look into the ssh command it has a -p option which allows us to specify the port we will connect to. 
We can use the ssh command as in the following format: ssh <options> <username>@<server> 

So our command will be: ssh -p 2220 bandit0@bandit.labs.overthewire.org , password given to us which is bandit0 and allows us to login.

L0:
The password for the next level is stored in a file called readme located in the home directory. 
Use this password to log into bandit1 using SSH. Whenever you find a password for a level, use SSH (on port 2220) to log into that level and continue the game.

Commands you may need to solve this level
ls , cd , cat , file , du , find

After this we use the ls & cat commands to read our directory and output the readme file which contains the password.

This gives us the output: The password you are looking for is: ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If



L1:
Firstly we need to exit bandit0 and then enter bandit1 via the same code but changing the username and entering the password we discovered in the previous level.
ie:

ssh -p 2220 bandit0@bandit.labs.overthewire.org
ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If


The password for the next level is stored in a file called - located in the home directory.

If we use the ls command we can see that there is a file called - in our home directory. 
The issue is that we cannot use cat - as the cat command will not - as a file name.
To solve this issue we need to explicitly state that - is a file.

To do this we can use ./ in the cat command to show the system that we are talking about a file in our home directory ie: cat ./-

This gives us the password to the next level: 263JGJPfgU6LtdEvgfWU1XP5yac29mFx

L2:


