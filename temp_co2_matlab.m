data.world.kaya = xlsread("ChallengeData.xlsx",1,'C6:AU6')
<<<<<<< HEAD
%ref = 1990
data.ref.ei = xlsread("ChallengeData.xlsx",4,'U6') % TPES (PJ)E15
data.ref.ci = xlsread("ChallengeData.xlsx",5,'U6') % CO2/TPES (Tonnes/TJ)E12
co2he_ref = data.ref.ei*data.ref.ci/1E6 %Gigatonnes
co2he = (data.world.kaya*co2he_ref)/100 %world data (from 1971 to 2015)Step 1
co2ea = co2he*0.5 %Step 2; Airborne Factor of 0.4
=======
data.ref.ei = xlsread("ChallengeData.xlsx",4,'U6')
data.ref.ci = xlsread("ChallengeData.xlsx",5,'U6')
co2he_ref = data.ref.ei*data.ref.ci/1E8


co2he = data.world.kaya*co2he_ref
% 
% kayapast.world = xlsread("ChallengeData.xlsx",1,'C6:AU6')
% 
% fig_kaya = figure
% hold on
% plot (kaya.world)
% plot(kayapast.world)

co2ea = co2he*0.4
>>>>>>> 80436f7d0ae723f829f7fec70820f74b82259110
plot(co2ea)

co2ppm = co2ea/7.81
plot(co2ppm)
for i=2:45
    co2ppm(i)=co2ppm(i-1)*exp(-1/500)+co2ppm(i) %step 3 time constant = 500
end
plot (co2ppm)
<<<<<<< data.world.kaya = xlsread("ChallengeData.xlsx",1,'C6:AU6')
data.ref.ei = xlsread("ChallengeData.xlsx",4,'U6')
data.ref.ci = xlsread("ChallengeData.xlsx",5,'U6')
co2he_ref = data.ref.ei*data.ref.ci/1E8

co2he = data.world.kaya*co2he_ref

co2ea = co2he*0.4
plot(co2ea)

co2ppm = co2ea/7.81
plot(co2ppm)
for i=2:45
    co2ppm(i)=co2ppm(i-1)*exp(-1/500)+co2ppm(i)
end
plot (co2ppm)
temp = 14.2+2*log2((co2ppm+326)/326)
<<<<<<< HEAD
=======
tempx = temp'HEAD
temp = 14.2+4*log2((co2ppm+326)/326)
plot(temp)
=======
temp = 14.2+2*log2((co2ppm+326)/326)
tempx = temp'
>>>>>>> 80436f7d0ae723f829f7fec70820f74b82259110
>>>>>>> 8a63da2a4d3a90d7a2d3a95e9e707aecdf870007
