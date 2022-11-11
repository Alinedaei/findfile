
import os

path_of_the_directory = '/home/ali/Desktop/vagrant'
ext = ('.jpg','.jpeg','.gif','.png')
for files in os.listdir(path_of_the_directory):
    if files.endswith(ext):
        print(files)
    else:
        continue
import glob
for i in glob.glob('/home/**/*.jpeg', recursive=True):

    print(i)
