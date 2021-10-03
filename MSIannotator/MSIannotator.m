%%
%MSIdata is the raw data have been prepossed, the first cloumn should be accurate m/z
%Database is the organ metabolites database,the first column is metabolites name,the columns of specified adduct forms are theoretical m/z
%%
r1=size(MSIdata,1)%the row number of MSIdata
c1=size(MSIdata,2)%the cloumn number of MSIdata
r2=size(Database,1)%the row number of Database
c2=size(Database,2)%the cloumn number of Database
Annotator = strings(r1,c2-3)
for i=1:r1 %the row number of MSIdata
Annotator(i,1)=MSIdata(i,1)
end
for j=5:c2 %the cloumn number of Database
Annotator(1,j-3)=Database(1,j)
end
%%
% intermediate annotated metabolites
for a=5:c2 %the cloumn number of Database
    for i=2:r1 %the row number of MSIdata
        str1=""
        str0=""
        for j=2:r2 %the row number of Database
        theor=str2num(Database(j,a))
        mea=str2num(MSIdata(i,1))
        if abs(theor-mea)/theor<10*10^(-6)%m/z error set as 10 ppm        
        str1=Database(j,1)
        str0=strcat(str0,str1,";") 
        Annotator(i,a-3)=str0
        end        
        end
    end
end
clear a i j str0 str1 mea theor
clc
%%
% ultimate annotated metabolites
Annotator(1,c2-2)="total"
for i=2:r1 %the row number of MSIdata
    str2adduct=""
    str3adduct=""
    str2=""
    for a=2:c2-3 %the cloumn number of Database 
    if Annotator(i,a)~=""
    str2=Annotator(i,a);
    str2adduct=strcat(str2,Annotator(1,a),"/")
    str3adduct=strcat(str3adduct,str2adduct)
    Annotator(i,c2-2)=str3adduct
    end
    end
end
%%
clear a c1 r1 c2 r2 i j str2 str2adduct str3adduct
clc
