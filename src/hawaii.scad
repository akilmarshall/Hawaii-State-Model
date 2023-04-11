// Hawaii Island

module hawaii_punch() {
    difference() {
        import("../models/raw/hawaii.stl");
        color("blue")
        translate([0, -900, -41])
        cube([850, 900, 50]);
        //linear_extrude(100)
        //scale([5, 5, 1])
        //translate([-20, -250, -50])
        //import("../SVG/circle.svg");
    }
}

module hawaii() {
    //import("../models/islands/hawaii.stl");
    import("../models/islands/hawaii.stl");
}

// split the base model into districts
module hawaii_cut_district() {
    difference() {
        hawaii();
        color("blue")
        // translate([260, 181, -50])
        translate([125, -1350, -50])
        linear_extrude(100)
        scale([11, 11, 1])
        import("../SVG/district_topo.svg");
    }
}

// write the town names on the district pieces
module hawaii_town_name() {
    import("../models/intermediete/hawaii/current_directory.3mf");
}
