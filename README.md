# F23-Exercise

Shared repository for the F-23 Web Data Science exercises @Aalborg University 2023




## Preparation

- [ ] Ask to be added to the repository
- [ ] Clone the repository on your computer
- [ ] Add your name, github user, and email to the list below
- [ ] Commit and push
- [ ] Install the necessary software (see below)
- [ ] Test if everything works


## Participants


- Name - @GithubUser - <email@student.aau.dk>

- Matteo Lissandrini - @Kuzeko - <matteo@cs.aau.dk>
- Daniele Dell'Aglio - @dellaglio - <dade@cs.aau.dk>




## Instructions


**Use a bash/unix terminal, if you never used it, [this is your chance to learn](https://fileadmin.cs.lth.se/cs/education/edaf05/terminal.pdf), your life will get easier!**

**These instructions are focused on GNU/Linux or Mac systems.** 
If you use Windows you should be aware that things can work differently depending on the version you use.
You are expected to learn how the system you decide to use works.


1 - Clone the repository and enter it:

 ```bash
 git clone git@github.com:AAU-WebDataScience/F22-Exercise.git
 cd F23-Exercise
 ```

2 - Install Jupyter Lab, there are 2 options

  a - Install [Anaconda](https://docs.conda.io/projects/conda/en/latest/user-guide/install/) then install as described [on the documentation](https://jupyterlab.readthedocs.io/en/stable/getting_started/installation.html). Make sure to be using Python 3

   ```bash
   conda install -c conda-forge jupyterlab
   ```

  b - [Install Docker Desktop](https://docs.docker.com/engine/install/#desktop) and then download the docker image

   ```bash
   docker pull jupyter/datascience-notebook
   ```

3 - Create a directory with your github user name, 

  ```bash
  mkdir your_directory
  cd your_directory

  # If you used conda, the follwing should work
  conda activate
  jupyter-lab

  # If you used docker, the following should work
  docker run  --name exp_notebook --rm -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -v "$PWD":/home/jovyan jupyter/datascience-notebook
  ```


4 - Create an empty notebook and test it. Write the following code

  ```python
  import pandas as pd
  import numpy as np

  d  = {'col1': [1, 2], 'col2': [3, 4]}
  df = pd.DataFrame(data=d)

  df['col1'].sum()
  ```



## Exercises


### The Small Web
We will build a small web, which will be published at [smallweb-f23.netlify.app](https://smallweb-f23.netlify.app/)

#### Exercise:
Fill the web pages in `data/web` and add new pages, according to the instructions you find in the slides.

### Data analysis
From lecture 2 you will be anayzing the contents of the `data/web`  directory.



