# POE-Timeless-Jewel-Finder
Find the best timeless Jewel seed for your needs in POE


    This is still in beta, so if you encounter any bugs or mistakes please feel free to let me know. You need all 5 CSV files and 
    source file .au3 to run the program.

After initial discovery of how Timeless Jewels work https://github.com/majorregal/TimelessEmulator here, all the seeds and their effects have been brute forced.

Using that dataset and this application, you can easily find the best code for your needs.

Here is the little preview of how the program works..

https://user-images.githubusercontent.com/98942518/177046427-117a2be9-1689-4403-8dc5-45ceb6c1b578.mp4

All the files needed to run are in the Zip format. It includes 5 CSV dataset for 5 different Jewels and 1 .au3 file which contains source code.


Direct running: (Not possible for latest and future releases)
        
        After downloading the zip file and extracting the data, you can just double click ".exe" to run it directly.
        
        I have decided to remove executable file from future releases for below reasons
            -AutoHotKey and AutoIt both are frequently used by script kiddies and hackers for easy malicious apps
            -This causes many false positives in various anti-viruses and people panic over it (rightfully so)
            -This false positives can lead to banning of my Github profile, it happened last month with other tool dev

      
Source Code running: (This is the only way to run latest releases)

        It is written in AutoIt3, it is like AHK but I know better about AutoIt3 than AHK so I chose this. 
        Here is the link to the page to download AutoIt3 official https://www.autoitscript.com/site/autoit/downloads/
        After installing, just double click .au3 file to run the program.



NOTE: (For old releases)

        As I do not have my own license to distribute [it costs like 300-600$ per year] the .exe file provided is un-signed. That means 
        that windows firewall or antiviruses will not be able to identify it as legit .exe file from some company. That will lead to 
        False positive in both cases. 
        
        This is known issue with unsigned applications especially in AutoIt language.

        I think the reason why previous versions were not flagged and this latest ones will be flagged is because I added functionality of 
        Saving and Loading Configs, which is basically modifying local files to save and reading them to load. So that Windows Defender is  
        alerted that an unsigned/unknown application is trying to read or modify our local files and gives out warning.

        In any case, it is good practise to not run .exe from unknown sources so I don't blame you. If you don't trust the app, you can 
        always run the Source Code itself after reading through it.
        


DOWNLOAD:

        POE.Timeless.Jewel.Finder.zip in https://github.com/KeshHere/POE-Timeless-Jewel-Finder/releases
        
PS: If someone wants to make a cute icon for the exe, I am all ears. Msg me at Kesh#3236 :D
