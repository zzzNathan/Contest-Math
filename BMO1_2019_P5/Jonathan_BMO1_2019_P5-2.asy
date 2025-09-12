if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="Jonathan_BMO1_2019_P5-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(175);

// Radius of small circles
real r = 0.35;

// Radius of the hexagon
real R = 1.5;

// Draw 6 circles at hexagon vertices
for (int i = 0; i < 6; ++i) {
real angle = pi/3 * i; // 60° increments
pair pos = R * dir(degrees(angle)); // position on hexagon
draw(circle(pos, r));

// If this is the leftmost circle, add a label on top
if (i == 3) {
label("$n - 4k + a + b + c$", pos + (0, r + 0.05), N); // label above the circle
}

if (i == 4) label("$k-4a$", pos + (0, r+0.05), N);
if (i == 0) label("$k-4b$", pos + (0, r+0.05), N);
if (i == 2) label("$k-4c$", pos + (0, r+0.05), N);

if (i == 5) label("$a+b+c$", pos + (0, r+0.05), N);
if (i == 1) label("$a+b+c$", pos + (0, r+0.05), N);
}
