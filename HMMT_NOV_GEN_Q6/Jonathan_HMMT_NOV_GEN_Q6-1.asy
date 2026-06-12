if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="Jonathan_HMMT_NOV_GEN_Q6-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

/* Geogebra to Asymptote conversion, documentation at artofproblemsolving.com/Wiki go to User:Azjps/geogebra */
import graph; size(130);
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -0.148317663962672, xmax = 2.8495529768213816, ymin = -1.7315642208694166, ymax = 1.749754082680477; /* image dimensions */
pen ududff = rgb(0.30196078431372547,0.30196078431372547,1.);
pair A = (0.,0.), B = (2.,-1.5), C = (2.,1.5);
pair m_AC = (1, 0.75), m_AB = (1, -0.75), m_BC = (2, 0);

filldraw(arc(A,0.26506675908800126,323.130102354156,396.869897645844)--(0.,0.)--cycle, ududff + opacity(0.30000001192092896) + ududff);
/* draw figures */
draw(A--C);
draw(C--B);
draw(B--A);
/* dots and labels */
//dot(A, dotstyle);
//dot(B,dotstyle);
//dot(C,dotstyle);
label("$1$", m_AC, NW * labelscalefactor);
label("$1$", m_AB, SW * labelscalefactor);
label("$\sqrt{a}$", m_BC, NE * labelscalefactor);

label("$\theta$", (0.3297286905226872,-0.04713626954620386), NE * labelscalefactor,ududff);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
