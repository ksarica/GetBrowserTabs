import pyautogui
import time
import pyperclip
import sys

# user inputs
tabs_count = int(sys.argv[1])
sleep_time = float(sys.argv[2])

# Switch to the Web Browser, We are assuming you have active web browser and you are running this code on console 
# and your last second active application is that web browser
pyautogui.hotkey("alt", "tab")

for i in range(tabs_count):
    # switch between tabs
    pyautogui.hotkey("ctrl", str(i+1))
    # sleep delay for page load
    time.sleep(sleep_time)
    # navigate to URL Adress part
    pyautogui.hotkey("ctrl", "l")
    # select all URL text
    pyautogui.hotkey("ctrl", "a")
    # copy URL text
    pyautogui.hotkey("ctrl", "c")

    # return copied URL to a variable to print it
    copied_data = pyperclip.paste()
    print(copied_data)
