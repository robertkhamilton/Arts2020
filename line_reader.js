function readfile(filepath) {
    var f = new File(filepath, "read");
    if (f.isopen) {
        while (f.position < f.eof) {
            var line = f.readline();
            outlet(0, line); // Outputs the line raw
        }
        f.close();
    } else {
        error("Could not open file: " + filepath + "\n");
    }
}