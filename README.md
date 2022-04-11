# MSIannotator
Metabolites Annotation Tool for Mass Spectrometry Imaging
## Introduction
"MSIannotator" annotates processed MSI data. This MATLAB code obtains annotation for metabolites and adducts of MSIdata based on Database supplied by us or user.
## Input files
- MSIdata - a preprocessed MSI dataset, which should contain measured m/z in the first column.
- Database - a metabolite database, which includes metabolite names in the first column and theoretical m/z in the specified adduct forms columns.
## Output file
- Annotator - an annotated metabolite list, measured m/z in the first column, intermediate and ultimate annotated metabolites in the following columns.
## Usage
- MSIannotator.m - script to annotate the features in MSIdata with the Database.
- Organ specific metabolite database.xlsx - our established database, consisting of 1298 metabolites in positive mode (Sheet1), 515 metabolites in negative mode (Sheet2), divided by brain (Sheet3), liver (Sheet4), kidney (Sheet5), heart (Sheet6), spleen (Sheet7), lung (Sheet8), muscle (Sheet9), pancreas (Sheet10) and serum (Sheet11) metabolite database.
- The usage involves the following steps:
  - Import two sheets (one sheet is the preprocessed MSI dataset and the other is our provided database) into MATLAB in the format of a string array, and rename them as MSIdata and Database, respectively. The contents of sheets should meet the indicated requirements of input files above, users can refer to the following examples (MSIdata.xlsx and Database.xlsx) to prepare sheets.
  - To check whether the input Database is correct, the selected organ and the detection mode (positive or negative mode) should be consistent with that of MSIdata to be annotated.
  - Carry out the code (MSIannotator.m). It should be noted that in the code, the default value of m/z error range is 10 ppm, and if necessary users can reset it by modifying the line 25 code “if abs(theor-mea)/theor<10·10^(-6)%m/z error set as 10 ppm”. For example, users can write “if abs(theor-mea)/theor<5·10^(-6)%m/z error set as 5 ppm” to set 5 ppm as m/z error range.
  - Generate a new file (Annotator), consisting of annotated metabolite names and their adduct forms. Users can copy the metabolite annotation results or save them.
## Examples 
- MSIdata.xlsx - example input file containing the MSI data (MSI data of liver tissue in positive mode). 
- Database.xlsx - example input file containing the metabolite information of our established database (metabolite database of liver in positive mode).
