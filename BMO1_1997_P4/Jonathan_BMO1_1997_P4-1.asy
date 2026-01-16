if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="Jonathan_BMO1_1997_P4-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

/* Geogebra to Asymptote conversion, documentation at artofproblemsolving.com/Wiki go to User:Azjps/geogebra */
import graph; size(140);
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -7.587127707435243, xmax = 9.499352361738403, ymin = -6.174428887520138, ymax = 5.739568110129332; /* image dimensions */
pen xdxdff = rgb(0.49019607843137253,0.49019607843137253,1.); pen ccqqqq = rgb(0.8,0.,0.);
pair A = (-3.,1.), B = (5.,4.), C = (6.,-2.), D = (-1.,-2.), P = (1.,2.5), Q = (5.5,1.), R = (2.5,-2.);
/* draw figures */
draw(A--B, xdxdff);
draw(B--C, xdxdff);
draw(C--D, xdxdff);
draw(D--A, xdxdff);
draw(P--Q, linetype("4 4") + ccqqqq);
draw(Q--R, linetype("4 4") + ccqqqq);
draw(R--(-2.,-0.5), linetype("4 4") + ccqqqq);
draw((-2.,-0.5)--P, linetype("4 4") + ccqqqq);
/* dots and labels */
dot(A,dotstyle);
label("$A$", (-2.9465195018775767,1.1388505195191572), NE * labelscalefactor);
dot(B,dotstyle);
label("$B$", (5.058197230918168,4.130646640580687), NE * labelscalefactor);
dot(C,dotstyle);
label("$C$", (6.055462604605346,-1.866242473191535), NE * labelscalefactor);
dot(D,dotstyle);
label("$D$", (-0.9519887545032217,-1.866242473191535), NE * labelscalefactor);
dot(P, dotstyle);
label("$P$", (1.0558388645202956,2.601506400927016), NE * labelscalefactor);
dot(Q,dotstyle);
label("$Q$", (5.550181481937176,1.1122567762208324), NE * labelscalefactor);
dot(R, dotstyle);
label("$R$", (2.558385360875643,-1.8928362164898596), NE * labelscalefactor);
dot((-2.,-0.5),dotstyle);
label("$S$", (-1.9492541281903992,-0.39028972013451363), NE * labelscalefactor);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
