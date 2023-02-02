%experimental data
a=[150,180,250]; %Striking Velocity
b=[45,102,184]; %Residual Velocity
plot(a,b,'bo','MarkerSize',8,'MarkerFaceColor','r','LineWidth',1.5)
hold on 
%lambert jonas fit curve and plotting piecewise 
vbl=143.24
syms vi;
vr=piecewise(vi<vbl,0, vi>=vbl,0.8596*(vi.^2.216-vbl.^2.216).^(1/2.2160));
t=linspace(0,500,1000);
plot(t,subs(vr,vi,t),'LineWidth',1.5,'Color','b');
hold on
% 
 %
%fplot(@(x) (0.859*x-24.235))
% 
% fplot(@(vi) 0.8596*(vi.^2.216-vbl.^2.216).^(1/2.2160))
% hold on
AI=[150,180,250,300,400,500]
AR=[101.7,130.9,191.56,234.73,319.73,403]
% c = polyfit(AI,AR,1);
% y_est = polyval(c,AI);
% % x_est = polyval(c,AR)
% plot(AI,y_est,'r--','LineWidth',0.5)
plot(AI,AR,'k','Marker','*','Linestyle','none','MarkerSize',8)
x1= @(x) (0.859*x-24.235);
fplot(x1,[0,500],'k','LineWidth',1);
hold on

% hold off
xlabel('Striking velocity (m/s)',"Color",'k','FontName','Times New Roman','FontWeight','normal', 'FontSize',12)
ylabel('Residual velocity (m/s)',"Color",'k','FontName','Times New Roman','FontWeight','normal', 'FontSize',12)
lgd = legend({'Experimental data[37,38]','Lambert Jonas curve ','Hashin model-Ansys','Hashin model- Ansys linear fit'},'Location','northeast','Orientation','vertical','FontName','Times New Roman','FontSize',10,"Box","off")
H=gca;
H.LineWidth=1.5;
H.FontName='Times New Roman';
H.FontSize=12;

xlim([0 500])
ylim([0 500])

%Vr-0.8596*(vi.^2.216-143.24.^2.216).^(1/2.2160)