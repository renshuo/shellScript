#!/usr/bin/python3

# check if (ping www.baidu.com) success, then start (emerge -uDNf @world)


import urllib.request as ur
import time
import os

def checknet():
    """ check if the net is ok."""
    try:
        res = ur.urlopen("http://www.baidu.com")
        return True;
    except:
        print("net error");
        time.sleep(1);
        return False;
    

def startEmerge():
    """ start emerge -uDNf @world """
    print("start emerge");
    os.execl("/bin/echo" , "abc");

    
if __name__=="__main__":
    print("start.")
    while(True):
        netst = checknet();
        if (not netst):
            startEmerge();
                        
        
