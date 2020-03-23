import os

#display vagrant status
print ("********** vagrant: STATUS **********")
os.system('vagrant global-status --prune')

print ("********** connect to: kv-master-0 **********")
os.system('vagrant ssh kv-master-0')

print ("********** show nodes: kv-master-0 **********")
os.system('kubectl get nodes -o wide')
