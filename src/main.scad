use <hawaii.scad>
use <maui.scad>
use <molokai.scad>
use <kahoolawe.scad>
use <kauai.scad>
use <lanai.scad>
use <maui.scad>
use <niihau.scad>
use <oahu.scad>


part = "";


if (part == "hawaii_punch") {
    hawaii_punch();
}
else if (part == "hawaii_base") {
    hawaii();
} else if (part == "hawaii_cut_district") {
    hawaii_cut_district();
} else {
    // default is a family picture
    color("red")
    hawaii();
    color("pink")
    maui();
    color("green")
    molokai();
    translate([0, 100, 0])
    color("gray")
    kahoolawe();
    translate([-100, 100, 0])
    color("purple")
    kauai();
    color("orange")
    lanai();
    color("white")
    niihau();
    color("yellow")
    translate([-150, -250, 0])
    oahu();
}
