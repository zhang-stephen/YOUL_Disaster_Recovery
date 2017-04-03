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
- [x] Create a trash bin on the linux
- [x] ~~*etc...*~~~

5. Some help of Permissions...
> You should give the Permission X to scripts before using them.
>
> As well konwn, everything is file in the linux, and all of files have three basic permissions, there is the list of them.
>
>> Read -> r -> 4
>>
>> Write -> w -> 2
>> 
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
> You can see the infomation of this file called example.txt, and the beginning of the output line is permission of this file. That means the Root user can read & write this file, but the Root UserGroup and the others only can read it, and no one can run it.
>>
>> if we replace the letters to numbers, it should be -42-4--4--(the first "-" is not useful for us now, we get the permission from the second letter), but we still have a simple way to express it.
>>
>> these are numbers, so we can add up them, and this permission can be expressed as 644, the rule is as Following:
>>
>>> above all, the command <code>ls -l</code> tell us the owner and the owner group are whom. 
>>>
>>> if the owner has this permission, the sum = 0 + permission1 + permission2 + permission3, if owner has permission as rwx, the sum = 4 + 2 + 1 =7, other calculating is similar to owner.
>>>
>>> so the permission of example.txt can be 644.
>>>
> But How to Change the Permission?
>> 
>> Run command <code>chmod</code>.
>>
>> for example, if we want to Change permission,we can run these command.
>>
>> If you want to change permission to -rwxr-xr-x,you can use <code>chmod 755 files</code>.
>>
>> we use 755 for files and 644 for folders, if you want to change permission of folder and files in it, you can use this command <code> chmod 755 -R folder </code>.
>>
>> If you think these ways aren't useful for you, you can use Google or Baidu to search with keyword "change permission".
>
> This help is over.
>
6. Some help of Crond...
> if your server had installed the service crond, look at __Following Information__        
> In the bash, you can exec some commands to view, modify even delete the crontab tasks, following are the Commands   
>> <code>crontab -l</code> is to list all crantab tasks   
>> <code>crontab -u root -l</code> is to view tasks of User root.
>> If you want to modify and delete tasks, use this command <code>crontab -e</code> or <code>crontab -u root -e</code>    
>> After using this command, you will get a interface that is alike to Vim, in fact, This is Vim, you can use it to modify your tasks.   
>> You can get some information like following.
>>> <code>
>>> * * * * * Some Commands...
>>> </code>
>> The first \* is meaning minutes, and following is help of it.
>>> you can use it as a number(0<\*<59), that means a firm minute in an hour   
>>> you can also use it as (\*/15), that means executing Command once every 15 minutes.
>>>
>>> as well as, other \* have same usage.
>>>
>>> and from left to right, they mean that minutes, hours, days, months and weeks.   
>>> This is an example.
>>> <code>
>>> \*/15 * 25 * * Exec command...
>>> </code>
>>>
>>> That means every 15 minutes exec minutes run command in 25th every months
> Help is over, if you need more help, please use Google or Baidu.     
>> <https://www.google.com>    
>> <https://www.baidu.com>

#### Copyright &copy; 2017 Yangtze University Online Stark-Zhang All Rights Reserved
About Author: Stark Zhang, a member of YUOL in 2015, in charge of the Linux servers of Yangtze University
<yicheng2623825899@gmail.com>
