# FjTAL_Virtual_Screening_QND
 A quick and dirty virtual screening task to find potential ligands of Flavobacterium johnsoniae Tyrosine Ammonia Lyase (FjTAL).

# Installation
The following software must be installed in the linux environment: *dplyr (R)*, *stringr (R)*, *R interpreter*, *Autodock vina*, *ADFR software suite*, *Open Babel*.

# Explanation
The ligands sdf file, was taken from [ZINC](https://zinc.docking.org/) database and the receptor pdb file was generated with the help of [ColabFold](https://colab.research.google.com/github/sokrypton/ColabFold/blob/main/AlphaFold2.ipynb).
The sdf file is first converted into the corresponding pdb (by Open Babel) and later pdbqt files (by ADFR). To show a demo of the script, only 33 ligands are chosen. 
The pdb file of the receptor is also converted to pdbqt format by ADFR. 
Next, the molecular docking task is executed by autodock vina. Then, the outputs of the vina command, which are stored in res.txt, are parsed and the id of ligands and their corresponding scores become tabulated by a short R script.