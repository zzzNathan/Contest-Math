if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="Jonathan_ICMC_2022_RD1_P1-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

/* Geogebra to Asymptote conversion, documentation at artofproblemsolving.com/Wiki go to User:Azjps/geogebra */
import graph; size(100);
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -3.365825512563786, xmax = 2.912545802957398, ymin = -2.5070460973012123, ymax = 1.870713201303435; /* image dimensions */
pen xdxdff = rgb(0.49019607843137253,0.49019607843137253,1.); pen ffqqtt = rgb(1.,0.,0.2);
pair A = (-1.,1.), B = (1.,1.), C = (1.,-1.), D = (-1.,-1.), P_1 = (-1.,-0.5), P_2 = (1.,0.5), Q_1 = (-0.5,1.), Q_2 = (0.1275873205861335,-1.), gamma = (-0.16095328023618855,-0.08047664011809427);

filldraw(A--B--C--D--cycle, xdxdff + opacity(0.10000000149011612), xdxdff);
/* draw figures */
draw(A--B, xdxdff);
draw(B--C, xdxdff);
draw(C--D, xdxdff);
draw(D--A, xdxdff);
draw(P_1--P_2, linetype("4 4") + ffqqtt);
draw(Q_1--Q_2, linetype("4 4") + ffqqtt);
/* dots and labels */
dot(A,dotstyle);
label("$A$", (-0.9815101802880369,1.0498833328150634), NE * labelscalefactor);
dot(B,dotstyle);
label("$B$", (1.0217055701895397,1.0498833328150634), NE * labelscalefactor);
dot(C,dotstyle);
label("$C$", (1.0217055701895397,-0.9533324176625092), NE * labelscalefactor);
dot(D,dotstyle);
label("$D$", (-0.9815101802880369,-0.9533324176625092), NE * labelscalefactor);
dot(P_1,dotstyle);
label("$P_1$", (-0.9815101802880369,-0.45008553400594825), NE * labelscalefactor);
dot(P_2,dotstyle);
label("$P_2$", (1.0217055701895397,0.5466364491585025), NE * labelscalefactor);
dot(Q_1,dotstyle);
label("$Q_1$", (-0.47826329663147504,1.0498833328150634), NE * labelscalefactor);
dot(Q_2,dotstyle);
label("$Q_2$", (0.14713088888347572,-0.9533324176625092), NE * labelscalefactor);
dot(gamma ,dotstyle);
label("$\gamma$", (-0.1411367435023219,-0.039670599761762654), NE * labelscalefactor);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
