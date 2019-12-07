data.world.kaya = xlsread("ChallengeData.xlsx",1,'C6:AU6')
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
plot(co2ea)

co2ppm = co2ea/7.81
plot(co2ppm)
for i=2:45
    co2ppm(i)=co2ppm(i-1)*exp(-1/500)+co2ppm(i)
end
plot (co2ppm)
temp = 14.2+2*log2((co2ppm+326)/326)
tempx = temp'