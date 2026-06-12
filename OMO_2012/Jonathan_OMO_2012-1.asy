if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="Jonathan_OMO_2012-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

/* Geogebra to Asymptote conversion, documentation at artofproblemsolving.com/Wiki go to User:Azjps/geogebra */
import graph; size(170);
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -27.39094890611301, xmax = 26.96168859328205, ymin = -27.021936890795512, ymax = 27.305623302584824; /* image dimensions */
pen ffwwqq = rgb(1.,0.4,0.); pen wwzzff = rgb(0.4,0.6,1.);
pair O = (0.,0.), A = (10.,24.), B = (10.,-24.);

filldraw(circle(O, 26.), ffwwqq + opacity(0.05000000074505806), ffwwqq);
filldraw(circle((5.,0.), 5.), wwzzff + opacity(0.15000000596046448), wwzzff);
/* draw figures */
draw(O--A);
draw(O--B);
draw(A--B, linetype("4 4"));
/* dots and labels */
dot(O, dotstyle);
label("$O$", (0.33260533600915065,0.6327031463560191), NE * labelscalefactor);
dot(A, dotstyle);
label("$A$", (10.32322295441296,24.659725683178497), NE * labelscalefactor);
dot(B, dotstyle);
label("$B$", (10.32322295441296,-23.311752302711056), NE * labelscalefactor);
label("$26$", (6.194868566642791,11.531558730069309), NW * labelscalefactor);
label("$26$", (3.71785593398069,-12.49546380675317), NW * labelscalefactor);
dot((10.,0.), dotstyle);
label("$E$", (10.32322295441296,0.6327031463560191), NE * labelscalefactor);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
