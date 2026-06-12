if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="Jonathan_Math_Prize_2025_P3-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

/* Geogebra to Asymptote conversion, documentation at artofproblemsolving.com/Wiki go to User:Azjps/geogebra */
import graph; size(160);
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -7.611861471861468, xmax = 16.959567099567092, ymin = -3.102943722943712, ymax = 13.887532467532468; /* image dimensions */
pen qqwuqq = rgb(0.,0.39215686274509803,0.);
pair A = (-5.,11.), B = (5.,11.), C = (0.,0.), D = (11.543227463323507,3.5712602439438603);

filldraw(arc(C,1.4964088269454114,425.55604521958344,474.44395478041656)--(0.,0.)--cycle, qqwuqq + opacity(0.10000000149011612), qqwuqq);
filldraw(arc(C,1.4964088269454114,377.1910965084706,425.55604521958344)--(0.,0.)--cycle, red + opacity(0.10000000149011612), red);
/* draw figures */
draw(A--C);
draw(C--B);
draw(A--B);
draw(B--D);
draw(D--C);
draw(A--D, linetype("4 4"));
/* dots and labels */
dot(A,dotstyle);
label("$A$", (-4.90268339140534,11.261189314750293), NE * labelscalefactor);
dot(B,dotstyle);
label("$B$", (5.109652032520323,11.261189314750293), NE * labelscalefactor);
dot(C,linewidth(4.pt) + dotstyle);
label("$C$", (0.10348432055749185,0.2149714285714362), NE * labelscalefactor);
label("$r$", (-3.6165407665505207,5.3299688734030255), NE * labelscalefactor);
label("$r$", (2.8786425087108007,5.3299688734030255), NE * labelscalefactor);
label("$10$", (-0.005345412311265355,11.281003484320561), NE * labelscalefactor);
dot(D,linewidth(4.pt) + dotstyle);
label("$D$", (11.639436004645756,3.779145180023235), NE * labelscalefactor);
label("$7\sqrt2$", (7.939225087108011,7.0168297328687625), NE * labelscalefactor);
label("$r$", (5.62659326364692,2.228321486643445), NE * labelscalefactor);
label("$\theta$", (-0.11417514518002256,1.793002555168416), NE * labelscalefactor,qqwuqq);
label("$\phi$", (1.2734039488966318,1.1672315911730617), NE * labelscalefactor,red);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
