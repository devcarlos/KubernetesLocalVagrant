import os
from pathlib import Path

path = os.getcwd()

print ("********** Local Kubernetes Cluster **********")
print ("The current working directory is %s" % path)
os.system('ls -l')

#show vagrant file
print ("********** VAGRANT FILE **********")
os.system('cat VagrantFile')
print ("********** END VAGRANT FILE **********")

#setup vagrant up
print ("")
print ("Setting Up Vagrant...")
print ("********** vagrant: UP **********")
os.system('vagrant up')

#display vagrant status
print ("********** vagrant: STATUS **********")
os.system('python3 status.py')
