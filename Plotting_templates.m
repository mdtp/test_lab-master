% Complilation of plotting templates from ALAM CEED Group

%% Plotting template 1 (he uses it for PPTs) (From Reza)

w=3;wp=7;mw=.5;FS=20;MS=7;
wa=.8;FSa=32;fname='Helvetica';fweight='normal';
FSxy=32;fnamexy='Helvetica';fweightxy='normal';
FLg=32;
tick_L=[.022 .022];
arrow_width=4;arrow_length=4;fsano=8;fnano='Helvetica';fwano='normal';lwano=.5;
Fig_Xoff=.11; Fig_Yoff=.13; Fig_Width=.35; Fig_Height=.35;
% line color
S='b';
% line style
G='-';
%% figure handle position
hfposition=[0,0,1270,649];
%% axis handle position
haposition=[0.174,0.182,0.740,0.732];
% xstringlabel='V (V)'

figure(1);
plot(x,y); %% Your plot here
xvariable='x label'; 
yvariable='y label'; 
set(gca,'linewidth',w,'fontsize',FSxy,'fontname',fname,'fontweight',fweight,'ticklength',tick_L)
set(gca,'position',haposition);
set(gcf,'position',hfposition);
% set(gca,'linewidth',w,'fontsize',FSxy,'fontname',fname,'fontweight',fweight,'ticklength',tick_L,'YTickMode','Manual','YTick',[-9 -8 -7 -6 -5 -4]);
% set(gca,'linewidth',w,'fontsize',FSxy,'fontname',fname,'fontweight',fweight,'ticklength',tick_L,'XTickMode','Manual','XTick',[0 1 2 3 4 5 6 7]);
xlabel(xvariable,'fontsize',FSxy,'fontname',fnamexy,'fontweight',fweightxy)
ylabel(yvariable,'fontsize',FSxy,'fontname',fnamexy,'fontweight',fweightxy)

%% From Reza
set(gca,'linewidth',2.5,'fontname','Helvetica','Fontsize',15,'ticklength',[0.025 0.025],'PlotBoxAspectRatio',[1.0 0.85 1],...
    'xgrid','off','ygrid','off');   %%% linewidth of the box and tick
xlabel('Array Tilt Angle(\beta ^o)')
ylabel('Optimum pitch/height')

%% From Reza (for specific colors from jet scheme)
n=10;

ColorOrder  = jet(n);

for ii=1:n

plot(x(ii),y(ii),'-s','linewidth',w,'MarkerSize',ms,'MarkerFaceColor',ColorOrder(ii,:,:),'Color', ColorOrder(ii,:,:)); hold on;

end

%% Plotting template 2 (for 2 column figures) (From Tahir)

%
% close all
% clear all
% clc

fz=12.0;
tl=[0.05 0.05];
lwb=2.0;
lwa=0.5;
lwp=1.5;

fig_size=[3 3 4 3];

fig = figure(1);
set(fig,'units','inches','position',fig_size,...
    'paperposition',fig_size)
ax1=axes('parent',fig,'position',[0.22 0.2 0.7 0.7],...
    'fontsize',fz,'linewidth',lwb,'ticklength',tl,...
    'yaxislocation','left','yscale','lin','xscale','lin' );
    %'xtick',[1e-33 1e-29 1e-25],'ytick',[1e-13 1e-9 1e-5],...
    %'ylim',[1e-14 1e-4],'xlim',[1e-34 1e-24],...
    %'ycolor', 'b');

    plot(x,y) %% Your plot here
box on
hold all
 
% ax2=axes('parent',fig1,'position',[0.22 0.2 0.6 0.7],...
%     'fontsize',fz,'linewidth',lwb,'ticklength',tl,...
%     'yaxislocation','right',...
%     'xaxislocation','top','yscale','log','xscale','log',...
%     'xticklabel',[],'color','none','ycolor','r',...
%     'xtick',[1e-34 1e-32 1e-29 1e-26 1e-24],'ytick',[1e15 1e19 1e23],'ylim',[1e14 1e24],'xlim',[1e-34 1e-24]);
% 
% ax3=axes('parent',fig1,'position',[0.25 0.2 0.6 0.7],...
%     'fontsize',fz,'linewidth',lwb,'ticklength',tl,...
%     'yaxislocation','left','yscale','log','xscale','log',...
%     'xtick',[1e-33 1e-29 1e-25],'ytick',[1e-13 1e-9 1e-5],...
%     'ylim',[1e-14 1e-4],'xlim',[1e-34 1e-24],...
%     'ycolor', 'k','xcolor','');
% 
% 
% box off
% hold all

%% Plotting template 3 (for 2 column figures) (From Aida)

figure('Units','inches','Position',[3,3,3,2.8],'DefaultAxesFontSize',12,...
    'DefaultTextFontSize',12,'DefaultLineLineWidth',2,'DefaultAxesLineWidth',2,...
    'DefaultAxesTickLength',[0.015,0.03],'PaperPositionMode','auto');

plot(x,y) % Your plot here
set(gca, 'linewidth', 1.2)

print -dtiff -r600 HeaterProfileTempCRamp.tif


%% Plotting template 4 (For 1-D plots)(From Xin Jin and Xingshu)
clc; clear all; close all
s={'-b','-r','-g','-m','-c','-k','-y','ks-','bx-','r^-','mv-','go-','cs-','y*-','mp-','kp-','b*-','rs-','mo-','bv-','c^-','rx-','ms-','ks-.','bx-.'}; %%plot curve color

x=linspace(-6.24,6.24,50); y=10*sin(x);
plot(x,y,s{8},'markersize',12.0,'linewidth',3.0)      %%% linewidth of the curve
set(gca,'linewidth',2.5,'fontname','Helvetica','Fontsize',24,'ticklength',[0.025 0.025],'PlotBoxAspectRatio',[1 0.85 1],...
    'xgrid','off','ygrid','off');   %%% linewidth of the box and tick

xlabel('X_{position} [\mum]');ylabel('Y_{voltage} [V]');
axis([-6.24 6.24 -10 10]); set(gca,'XTick',[-6 -3 0 3 6]); set(gca,'YTick',[-10 -5 0 5 10]);


%% Plotting template 5 (For 2-D plots) (From Xin Jin and Xingshu)
clc; clear all; close all
x=linspace(-4,4,400); y=linspace(-2,2,100);
[X,Y]=meshgrid(x,y); Z=X.*exp(-X.^2-Y.^2);

figure(1)
[cv,ch]=contourf(X,Y,Z,50,'linestyle','none','edgecolor','none'); colorbar;
set(gca,'linewidth',2.5,'fontname','Helvetica','Fontsize',25,'ticklength',[0.025 0.025],'PlotBoxAspectRatio',[1 0.85 1],...
    'xscale','linear','yscale','linear','xgrid','off','ygrid','off');   %%% linewidth of the box and tick

xlabel('x (\mum)');ylabel('y (\mum)');
axis([-4 4 -2 2]); set(gca,'XTick',[-4 -2 0 2 4]); set(gca,'YTick',[-2 -1 0 1 2]);

figure(2)
[cv,ch]=contour(X,Y,Z,50); colorbar;
set(gca,'linewidth',2.5,'fontname','Helvetica','Fontsize',25,'ticklength',[0.025 0.025],'PlotBoxAspectRatio',[1 0.85 1],...
    'xscale','linear','yscale','linear','xgrid','off','ygrid','off');   %%% linewidth of the box and tick

xlabel('x (\mum)');ylabel('y (\mum)');
axis([-4 4 -2 2]); set(gca,'XTick',[-4 -2 0 2 4]); set(gca,'YTick',[-2 -1 0 1 2]);

figure(3)
hSurf=surf(X,Y,Z,'EdgeColor','none','LineStyle','none');
set(gca,'linewidth',2.5,'fontname','Helvetica','Fontsize',25,'ticklength',[0.005 0.005]);
xlabel('x (\mum)');ylabel('y (\mum)');zlabel('z (a.u)');
set(gca,'XTick',[-4 -2 0 2 4]); set(gca,'YTick',[-2 -1 0 1 2]); set(gca,'ZTick',[-0.5 -0.25 0 0.25 0.5]);

figure(4)
hmesh=mesh(X,Y,Z);
set(gca,'linewidth',2.5,'fontname','Helvetica','Fontsize',25,'ticklength',[0.005 0.005]);
xlabel('x (\mum)');ylabel('y (\mum)');zlabel('z (a.u)');
set(gca,'XTick',[-4 -2 0 2 4]); set(gca,'YTick',[-2 -1 0 1 2]); set(gca,'ZTick',[-0.5 -0.25 0 0.25 0.5]);

figure(5)
hmeshc=meshc(X,Y,Z);
set(gca,'linewidth',2.5,'fontname','Helvetica','Fontsize',25,'ticklength',[0.005 0.005]);
xlabel('x (\mum)');ylabel('y (\mum)');zlabel('z (a.u)');
set(gca,'XTick',[-4 -2 0 2 4]); set(gca,'YTick',[-2 -1 0 1 2]); set(gca,'ZTick',[-0.5 -0.25 0 0.25 0.5]);

