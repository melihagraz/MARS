
library(earth)
library(BGgraph)
library(qgraph)

data( geneExpression )

b<-geneExpression
all.data<-b
all.data<-data.frame(all.data)
size.all<-dim(all.data)
p<-size.all[2]
n<-size.all[1]

n
p

names(all.data)<-c("X1","X2","X3","X4","X5","X6","X7","X8","X9","X10",
                   "X11","X12","X13","X14","X15","X16","X17","X18","X19","X20",
                   "X21","X22","X23","X24","X25","X26","X27","X28","X29","X30",
                   "X31","X32","X33","X34","X35","X36","X37","X38","X39","X40",
                   "X41","X42","X43","X44","X45","X46","X47","X48","X49","X50",
                   "X51","X52","X53","X54","X55","X56","X57","X58","X59","X60",
                   "X61","X62","X63","X64","X65","X66","X67","X68","X69","X70",
                   "X71","X72","X73","X74","X75","X76","X77","X78","X79","X80",
                   "X81","X82","X83","X84","X85","X86","X87","X88","X89","X90",
                   "X91","X92","X93","X94","X95","X96","X97","X98","X99","X100")


########################################################
#
# True precision matrix (-0.4) and its binary form
#
########################################################




########################################################
#
# Start loop i1 to select each matrix out of 10000.
#
########################################################





X<-as.data.frame(all.data)
dim(X)
prec.mat<-matrix(0,p,p)

##################################################################################
#
# Fit the MARS model for each Vi, check the coefficients and determine precision matrix 
#
#################################################################################


for(i2 in 1:p){
  
  y<-X[,i2]
  x<-X[,-i2]
  
  fit1<-earth(y~.,data=x,degree=1,trace=3)
  qr1<-summary(fit1)$grsq
  fit2<-earth(y~.,data=x,degree=1,trace=4)
  qr2<-summary(fit2)$grsq
  
  if (qr1>=qr2)
  {best.fit<-fit1}
  if (qr1<qr2)
  {best.fit<-fit2}
  
  coef<-summary(best.fit)$coefficient
  rn<-row.names(coef)
  
  d<-NULL
  d[1]<-length(grep("\\bX1\\b", rn))
  d[2]<-length(grep("\\bX2\\b", rn))
  d[3]<-length(grep("\\bX3\\b", rn))
  d[4]<-length(grep("\\bX4\\b", rn))
  d[5]<-length(grep("\\bX5\\b", rn))
  d[6]<-length(grep("\\bX6\\b", rn))
  d[7]<-length(grep("\\bX7\\b", rn))
  d[8]<-length(grep("\\bX8\\b", rn))
  d[9]<-length(grep("\\bX9\\b", rn))
  d[10]<-length(grep("\\bX10\\b", rn))
  d[11]<-length(grep("\\bX11\\b", rn))
  d[12]<-length(grep("\\bX12\\b", rn))
  d[13]<-length(grep("\\bX13\\b", rn))
  d[14]<-length(grep("\\bX14\\b", rn))
  d[15]<-length(grep("\\bX15\\b", rn))
  d[16]<-length(grep("\\bX16\\b", rn))
  d[17]<-length(grep("\\bX17\\b", rn))
  d[18]<-length(grep("\\bX18\\b", rn))
  d[19]<-length(grep("\\bX19\\b", rn))
  d[20]<-length(grep("\\bX20\\b", rn))
  d[21]<-length(grep("\\bX21\\b", rn))
  d[22]<-length(grep("\\bX22\\b", rn))
  d[23]<-length(grep("\\bX23\\b", rn))
  d[24]<-length(grep("\\bX24\\b", rn))
  d[25]<-length(grep("\\bX25\\b", rn))
  d[26]<-length(grep("\\bX26\\b", rn))
  d[27]<-length(grep("\\bX27\\b", rn))
  d[28]<-length(grep("\\bX28\\b", rn))
  d[29]<-length(grep("\\bX29\\b", rn))
  d[30]<-length(grep("\\bX30\\b", rn))
  d[31]<-length(grep("\\bX31\\b", rn))
  d[32]<-length(grep("\\bX32\\b", rn))
  d[33]<-length(grep("\\bX33\\b", rn))
  d[34]<-length(grep("\\bX34\\b", rn))
  d[35]<-length(grep("\\bX35\\b", rn))
  d[36]<-length(grep("\\bX36\\b", rn))
  d[37]<-length(grep("\\bX37\\b", rn))
  d[38]<-length(grep("\\bX38\\b", rn))
  d[39]<-length(grep("\\bX39\\b", rn))
  d[40]<-length(grep("\\bX40\\b", rn))
  d[41]<-length(grep("\\bX41\\b", rn))
  d[42]<-length(grep("\\bX42\\b", rn))
  d[43]<-length(grep("\\bX43\\b", rn))
  d[44]<-length(grep("\\bX44\\b", rn))
  d[45]<-length(grep("\\bX45\\b", rn))
  d[46]<-length(grep("\\bX46\\b", rn))
  d[47]<-length(grep("\\bX47\\b", rn))
  d[48]<-length(grep("\\bX48\\b", rn))
  d[49]<-length(grep("\\bX49\\b", rn))
  d[50]<-length(grep("\\bX50\\b", rn))
  d[51]<-length(grep("\\bX51\\b", rn))
  d[52]<-length(grep("\\bX52\\b", rn))
  d[53]<-length(grep("\\bX53\\b", rn))
  d[54]<-length(grep("\\bX54\\b", rn))
  d[55]<-length(grep("\\bX55\\b", rn))
  d[56]<-length(grep("\\bX56\\b", rn))
  d[57]<-length(grep("\\bX57\\b", rn))
  d[58]<-length(grep("\\bX58\\b", rn))
  d[59]<-length(grep("\\bX59\\b", rn))
  d[60]<-length(grep("\\bX60\\b", rn))
  d[61]<-length(grep("\\bX61\\b", rn))
  d[62]<-length(grep("\\bX62\\b", rn))
  d[63]<-length(grep("\\bX63\\b", rn))
  d[64]<-length(grep("\\bX64\\b", rn))
  d[65]<-length(grep("\\bX65\\b", rn))
  d[66]<-length(grep("\\bX66\\b", rn))
  d[67]<-length(grep("\\bX67\\b", rn))
  d[68]<-length(grep("\\bX68\\b", rn))
  d[69]<-length(grep("\\bX69\\b", rn))
  d[70]<-length(grep("\\bX70\\b", rn))
  d[71]<-length(grep("\\bX71\\b", rn))
  d[72]<-length(grep("\\bX72\\b", rn))
  d[73]<-length(grep("\\bX73\\b", rn))
  d[74]<-length(grep("\\bX74\\b", rn))
  d[75]<-length(grep("\\bX75\\b", rn))
  d[76]<-length(grep("\\bX76\\b", rn))
  d[77]<-length(grep("\\bX77\\b", rn))
  d[78]<-length(grep("\\bX78\\b", rn))
  d[79]<-length(grep("\\bX79\\b", rn))
  d[80]<-length(grep("\\bX80\\b", rn))
  d[81]<-length(grep("\\bX81\\b", rn))
  d[82]<-length(grep("\\bX82\\b", rn))
  d[83]<-length(grep("\\bX83\\b", rn))
  d[84]<-length(grep("\\bX84\\b", rn))
  d[85]<-length(grep("\\bX85\\b", rn))
  d[86]<-length(grep("\\bX86\\b", rn))
  d[87]<-length(grep("\\bX87\\b", rn))
  d[88]<-length(grep("\\bX88\\b", rn))
  d[89]<-length(grep("\\bX89\\b", rn))
  d[90]<-length(grep("\\bX90\\b", rn))
  d[91]<-length(grep("\\bX91\\b", rn))
  d[92]<-length(grep("\\bX92\\b", rn))
  d[93]<-length(grep("\\bX93\\b", rn))
  d[94]<-length(grep("\\bX94\\b", rn))
  d[95]<-length(grep("\\bX95\\b", rn))
  d[96]<-length(grep("\\bX96\\b", rn))
  d[97]<-length(grep("\\bX97\\b", rn))
  d[98]<-length(grep("\\bX98\\b", rn))
  d[99]<-length(grep("\\bX99\\b", rn))
  d[100]<-length(grep("\\bX100\\b", rn))
  
  for(i3 in 1:p){
    if(d[i3]!=0)
    {prec.mat[i2,i3]<-1}
    if(d[i3]==0)
    {prec.mat[i2,i3]<-0}
  }#end of i3	
}#end of i2


########################################################
#
# Convert estimated prec. matrix to symmetric form with and rule
#
########################################################

diag(prec.mat)<-1
isSymmetric(prec.mat)
sym.prec.mat<-matrix(0,p,p)
if(isSymmetric(prec.mat)==TRUE)
{sym.prec.mat<-prec.mat}
if(isSymmetric(prec.mat)==FALSE)
{ for(i4 in 1:p){
  for(i5 in 1:p){
    if(prec.mat[i4,i5]==1 || prec.mat[i5,i4]==1)
    { sym.prec.mat[i4,i5]<-1
    sym.prec.mat[i5,i4]<-1}
  }#end of i5
}#end of i4
}
isSymmetric(sym.prec.mat)

epre<-sym.prec.mat
qgraph(round(epre,3),edge.labels=FALSE)