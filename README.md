# Yuol-DevOps-Linux
This a Devops system for Linux Servers of Yangtze University Online, I'm the Author of this System.

This system is based on bash.

## Following is note of this repo.
1. My meaning is that the scripts can automatically run in bash with Service crond.

2. There will be help of crond & permissions.

3. And all of the code you can modify & use them as you wish.

4. Following are my plans:
- [x] backup som important files & folders
- [ ] Run a check to check the Performance of your servers or vitrual machines
- [ ] Create a trash bin on the linux
- [ ] ~~*etc...*~~~

5. Some help of Permissions...
> You should give the Permission X to scripts before using them.
>
> As well konwn, everything is file in the linux, and all of files have three basic permissions, there is the list of them.
>
>> Read -> r -> 4
>> Write -> w -> 2
>> Excution -> x -> 1
>
> In fact, these numbers are Octal, so we can write them as (0421)<sub>o</sub> or (0421)<sub>8</sub>.
>
> How to view the permissions of files?
>
>> In the linux, we can run command <code>ls -l</code> in the bash, and we can see Following Output.
>>
>> <code>
>> ls -l
>>
>> -rw-r--r-- 1 user usergroup 0 Mar 22 23:05 example.txt
>></code>
>>
>
