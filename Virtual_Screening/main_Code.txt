#!/bin/bash
cd ~/Desktop/Virtual_Screening
~/ADFRsuite-1.0/bin/prepare_receptor -r FjTAL_1_AF2.pdb
obabel -isdf metabolites_edited.sdf -opdb -O lig.pdb -m -p 7.4

mkdir selected
mv lig2*.pdb selected/
mv lig3*.pdb selected/
mv lig4*.pdb selected/

rm lig*.pdb

mv ./selected/lig*.pdb .
rmdir selected

for f in lig*.pdb
do
~/ADFRsuite-1.0/bin/prepare_ligand -l $f
done


touch res.txt

for f in lig*.pdbqt
do
vina --receptor FjTAL_1_AF2.pdbqt --ligand $f --center_x -14.854 --center_y -4.687 --center_z 23.802 --size_x 19 --size_y 19 --size_z 19 --num_modes 3 >> res.txt
done

Rscript Analyze.R
