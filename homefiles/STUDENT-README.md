## BYTE GPU STUDENT README

#### Step 1 - set up the script: 
SCP ssh-tunnel.sh script from your home dir
```
$ chmod 755 ssh-tunnel.sh
```

#### Step 2 - run the script:
```
$ ssh-tunnel.sh username ip_address
```
the script takes 2 arguments a username and the ip of the gpu-machine
the ip should be 192.168.1.200 but that could change under certain circumstances

#### step 3 - clone your git repo and transfer your data set:
$ git clone repository_name 

to copy your data set from your local computer use scp 

Copy file from local host to a remote host SCP example:
```
$ scp file.txt username@to_host:/remote/directory/
```

Copy directory from local host to a remote hos SCP example:
```
$ scp -r /local/directory/ username@to_host:/remote/directory/
```

#### step 4 - start jupyter notebook: 
```
$ jupyter notbook 
```
```
Output
[I 20:35:17.004 NotebookApp] Writing notebook server cookie secret to /run/user/1000/jupyter/notebook_cookie_secret
[I 20:35:17.314 NotebookApp] Serving notebooks from local directory: /home/sammy
[I 20:35:17.314 NotebookApp] 0 active kernels
[I 20:35:17.315 NotebookApp] The Jupyter Notebook is running at:
[I 20:35:17.315 NotebookApp] http://localhost:8888/?token=3cadb8b8b7005d9a46ca4d6675
[I 20:35:17.315 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[W 20:35:17.315 NotebookApp] No web browser found: could not locate runnable browser.
[C 20:35:17.316 NotebookApp]
```

#### step 4 - copy token and connect 

copy the token from the jupyter notebook output 

navigate to: http:localhost:8000 in your local web browser 

paste the token into the jupyter notebook window to access the jupyter notebook server 

you should now have access to your files on the gpu-machine
