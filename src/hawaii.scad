// Hawaii Island

// cut out Hawaii island from the raw terrain file
module hawaii_punch() {
    difference() {
        import("../models/raw/hawaii.stl");
        color("blue")
        translate([0, -900, -41])
        cube([850, 900, 50]);
    }
}

// base module for the cut out Hawaii island
module hawaii() {
    import("../models/islands/hawaii.stl");
}

// split the base model into districts
module hawaii_cut_district() {
    difference() {
        hawaii();
        color("blue")
        translate([88, -867, -50])
        linear_extrude(100)
        scale([7, 7, 1])
        import("../SVG/district_topo.svg");
    }
}

// write the town names on the district pieces
module hawaii_town_name() {
    import("../models/intermediete/hawaii/current_directory.stl");
}
