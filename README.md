# MSIannotator
Metabolites Annotation Tool for Mass Spectrometry Imaging
## Introduction
"MSIannotator" annotates processed MSI data. This Matlab code obtains annotation for metabolites and adducts of MSIdata based on Database supplied by us or user.
## Input files
- MSIdata - a preprocessed MSI dataset, which should contain measured m/z in the first column.
- Database - a metabolite database, which includes metabolites name in the first column and theoretical m/z in the specified adduct forms columns.
## Examples and usage
- MSIdata.xlsx - example input file containing the MSI data (MSI data of liver tissue in positive mode). 
- Database.xlsx - example input file containing the metabolite information of our established database (metabolite database of liver in positive mode). 
- MSIannotator.m - script to annotate the features in MSIdata with the Database.
