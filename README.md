# F22-Exercise

Shared repository for the F-22 Web Data Science exercises @Aalborg University 2022




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
- Kent Vugs Nielsen - @kent1325 - <kniels18@student.aau.dk>
- Anders Bøgh Hedegaard - @Andersbh - <ahedeg20@student.aau.dk>
- Frederik Hecter Kowalski - @Kowalski2332 - <fkowal20@student.aau.dk>
- Emil Marcus Buchberg - @EmilBuch - <ebuchb20@student.aau.dk>
- Rikke Tranholm Nielsen - @rtni20 - <rtni20@student.aau.dk>
- Kasper Riis Nielsen - @Kasper98-PNG - <krni20@student.aau.dk>
- Johnnie Pedersen -  @jrrp20 - <jrrp20@student.aau.dk>
- Richard Nygård - @rnygar20 - <rnygar20@student.aau.dk>
- Miriam Ida Pavlak - @mpavla20 - <mpavla20@student.aau.dk>
- Jeppe Berg Axelsen - @jaxels20 - <jaxels20@student.aau.dk>
- Marcus Austin - @marcusaustin78 - <mmdk09@gmail.com>
- Maja Pipaluk Ploumann - @pipaluk5 - pmpimann@gmail.com


## Instructions


**Use a bash/unix terminal, if you never used it, [this is your chance to learn](https://fileadmin.cs.lth.se/cs/education/edaf05/terminal.pdf), your life will get easier!**

1 - Clone the repository and enter it:

 ```bash
 git clone git@github.com:AAU-WebDataScience/F22-Exercise.git
 cd F22-Exercise
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

3 - Create a directory with your github user name, inside that directory put a [soft link](https://www.cyberciti.biz/faq/unix-creating-symbolic-link-ln-command/) you will start your Jupyter Lab

  ```bash
  mkdir your_directory
  cd your_directory
  ln -s ../data ./data

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


### Lecture 1: The Small Web
We will build a small web, which will be published at [smallweb-f22.netlify.app](https://smallweb-f22.netlify.app/)

#### Exercise 1:
Fill the web pages in data/web, according to the instructions you find in the slides

#### Exercise 2:
Add at least two new web pages on food, cities, monuments, or any of your hobbies, according to the instructions you find in the slides
