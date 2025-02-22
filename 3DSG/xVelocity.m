clear all 
clc
M1=dlmread('probex57/0/U','',118,0); %reads the entire scalar field
M2=dlmread('probex86/0/U','',118,0);
M3=dlmread('probex100/0/U','',118,0);
M4=dlmread('probex5786/0/U','',118,0);
M5=dlmread('probex57100/0/U','',118,0);
M6=dlmread('probex57108/0/U','',118,0);
M11=M1(end-140000:end,2:3:end);
M22=M2(end-140000:end,2:3:end);
M33=M3(end-140000:end,2:3:end);
M44=M4(end-140000:end,2:3:end);
M55=M5(end-140000:end,2:3:end);
M66=M6(end-140000:end,2:3:end);
mM1=smooth(mean(M11),.7);
sM1=smooth(std(M11),.7);
sM2=smooth(std(M22),.7);
sM3=smooth(std(M33),.7);
sM4=smooth(std(M44),.7);
sM5=smooth(std(M55),.7);
sM6=smooth(std(M66),.7);
x=(0:length(sM1)-1)*576/length(sM1);
h1=figure(1);
plot(x,100*sM1,'LineWidth',2,'DisplayName','(y,z)=(0,0)','Color',[1 0 0])
hold on
plot(x,100*sM2,'LineWidth',2,'DisplayName','(y,z)=(28.8,28.8)','LineStyle',':','Color',[0 1 1])
plot(x,100*sM3,'LineWidth',2,'DisplayName','(y,z)=(43.2,43.2)','LineStyle',':','Color',[0 0 0])
plot(x,100*sM4,'LineWidth',2,'DisplayName','(y,z)=(0,28.8)','LineStyle',':','Color',[0 1 0])
plot(x,100*sM5,'LineWidth',2,'DisplayName','(y,z)=(0,43.2)','LineStyle',':','Color',[0 0 1])
plot(x,100*sM6,'LineWidth',2,'DisplayName','(y,z)=(0,50.4)','LineStyle','-.','Color',[1 0 1])
hold off
set(gcf,'units','points','position',[1,1,500,500])
set(gca,'fontsize',24,'fontweight','bold','fontname','times','fontangle','italic','linewidth',3)
pbaspect([1 1 1])
xlim([14 450])
ylim([0 75])
xlabel('x/d_{min}','fontsize',24,'fontweight','bold','fontname','times','fontangle','italic')
ylabel(' (u ^,^2)^{1/2}  / U_{\infty}%','fontsize',24,'fontweight','bold','fontname','times','fontangle','italic')
legend off;
legend boxoff   
saveas(h1,'3DS1_xur.fig')
saveas(h1,'3DS1_xur.tif')
saveas(h1,'3DS1_xur.jpg')
saveas(h1,'3DS1_xur.eps')
h2=figure(2);
plot(x,10*mM1,'LineWidth',2,'LineStyle','-.','DisplayName','10 \times U/U_{\infty}','Color',[0 1 0])
hold on
plot(x,100*sM1,'LineWidth',2,'DisplayName',' {({u^{,}}^2)}^{1/2}  / U_{\infty} %','Color',[1 0 0])
hold off
set(gcf,'units','points','position',[1,1,500,500])
set(gca,'fontsize',24,'fontweight','bold','fontname','times','fontangle','italic','linewidth',3)
pbaspect([1 1 1])
xlim([14 450])
ylim([0 50])
xlabel('x/d_{min}','fontsize',24,'fontweight','bold','fontname','times','fontangle','italic')
legend off;
legend boxoff   
saveas(h2,'3DS1_xUur.fig')
saveas(h2,'3DS1_xUur.tif')
saveas(h2,'3DS1_xUur.jpg')
saveas(h2,'3DS1_xUur.eps')

h3=figure(3);
plot(x,100*sM1,'LineWidth',2,'DisplayName','(y,z)=(0,0)','Color',[1 0 0])
hold on
plot(x,100*sM2,'LineWidth',2,'DisplayName','(y,z)=(28.8,28.8)','LineStyle',':','Color',[0 1 1])
plot(x,100*sM3,'LineWidth',2,'DisplayName','(y,z)=(43.2,43.2)','LineStyle',':','Color',[0 0 0])
plot(x,100*sM4,'LineWidth',2,'DisplayName','(y,z)=(0,28.8)','LineStyle',':','Color',[0 1 0])
plot(x,100*sM5,'LineWidth',2,'DisplayName','(y,z)=(0,43.2)','LineStyle',':','Color',[0 0 1])
plot(x,100*sM6,'LineWidth',2,'DisplayName','(y,z)=(0,50.4)','LineStyle','-.','Color',[1 0 1])
hold off
set(gcf,'units','points','position',[1,1,500,500])
set(gca,'fontsize',24,'fontweight','bold','fontname','times','fontangle','italic','linewidth',3)
pbaspect([1 1 1])
xlim([14 575])
ylim([0 75])
xlabel('x/d_{min}','fontsize',24,'fontweight','bold','fontname','times','fontangle','italic')
ylabel(' (u ^,^2)^{1/2}  / U_{\infty}%','fontsize',24,'fontweight','bold','fontname','times','fontangle','italic')
legend off;
legend boxoff   
saveas(h3,'3DS2_xur.fig')
saveas(h3,'3DS2_xur.tif')
saveas(h3,'3DS2_xur.jpg')
saveas(h3,'3DS2_xur.eps')
h4=figure(4);
plot(x,10*mM1,'LineWidth',2,'LineStyle','-.','DisplayName','10 \times U/U_{\infty}','Color',[0 1 0])
hold on
plot(x,100*sM1,'LineWidth',2,'DisplayName',' {({u^{,}}^2)}^{1/2}  / U_{\infty} %','Color',[1 0 0])
hold off
set(gcf,'units','points','position',[1,1,500,500])
set(gca,'fontsize',24,'fontweight','bold','fontname','times','fontangle','italic','linewidth',3)
pbaspect([1 1 1])
xlim([14 575])
ylim([0 50])
xlabel('x/d_{min}','fontsize',24,'fontweight','bold','fontname','times','fontangle','italic')
legend off;
legend boxoff   
saveas(h4,'3DS2_xUur.fig')
saveas(h4,'3DS2_xUur.tif')
saveas(h4,'3DS2_xUur.jpg')
saveas(h4,'3DS2_xUur.eps')