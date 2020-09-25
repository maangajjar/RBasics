# csv Import commands
istat = read.csv("istatsc.csv",TRUE,",")
class(istat)
head(istat)

##Using Basic R stastical functions mean, mode, median and other basic stats we can get through summary function.
summary(istat)

##Using plot we will see the different combination of plots that are avaliable
plot(istat)

##Using plot and giving argments $fistvariable and $secondvarible we can get scatter plt between them.
plot(istat$Release.date, istat$price, main="PRICE")
#plot(istat$Release.date, istat$Battery.size, main="BATTERYSCATTER")
#plot(istat$Release.date, istat$Single.core, main="SINGLESCATTER")
#plot(istat$Release.date, istat$Multi.Core, main="MULTISCATTER")


##Linear regression to predict 2020 iohone battery on release
imod = lm(istat$price ~ istat$Release.date)
#imod = lm(istat$Battery.size ~ istat$Release.date)
#imod = lm(istat$Single.core ~ istat$Release.date)
#imod = lm(istat$Multi.Core ~ istat$Release.date)
summary(imod)
attributes(imod)
abline(imod)

