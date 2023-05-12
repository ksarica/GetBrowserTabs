# GetBrowserTabs

Retrieves URL addresses of browser tabs by automating keyboard keys on both Python and AutoHotkey languages. Python version is run from the command line, Autohotkey version has it own .exe file to run. Both versions have slight differences on implementation.

My purpose for making this program is that sometimes you have too many tabs while surfing the web and you can't finish them all during the day and you want to save them somewhere and review them later, and it can be exhausting to manually save these addresses one by one.
 
## AutoHotkey (AHK) Version

Make sure you have an active web browser.

1- Click and run the getBrowserTabs.exe
2- Your URL addresses will be saved to Desktop as .txt file.
3- If you want to save it elsewhere, URL addresses also copied to the clipboard so you can paste it by CTRL + V keys.

NOTE: If the URL addresses are missing or not fully received, you may need to edit .ahk script and increase the amount of delay. 

* For this, you need to open the getBrowserTabs.ahk file with a text editor and increase the "Sleep 300" value in it. (Program waits 300 ms for all tabs by default)
* In addition, instead of running the program from the .exe file, you will have to download the Autohotkey software to run the .ahk file that you have edited.

## Python Version 
 
### BEFORE YOU USE THIS PROGRAM 

=> This program assumes that you have opened at least one web browser and it should be one of the 2 apps you last used.  
=> Since it uses ALT + TAB to switch to web browser.

=> Program uses delay parameter to get URL address properly, you can adjust the value as you want.  
=> If you have encountered problem when getting URL addresses, increase the delay value.


### HOW TO RUN THIS PROGRAM ? 

1- Python must be installed on your computer.  
2- Open terminal, locate to the project file folder.  
3- Download required packages with this command "pip install -r requirements.txt"  
4- Run the program with this command;  

```
"python url.py [tabs_count] [delay_time]" 
```

### Example Usages:

```
python url.py 5 1
python url.py 3 0.2
```
![getTabsPythonUsage](https://github.com/ksarica/GetBrowserTabs/assets/46609011/25840b04-630d-4d00-9931-021a7db222a1)

