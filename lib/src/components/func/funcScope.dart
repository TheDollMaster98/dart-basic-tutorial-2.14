void funcScope() {
  var a = "A";
  void f() {
    var b = "B";
    print(" Funzione scope di b in f: $b");
    void g() {
      var c = "C";
      print(" Funzione scope in g: $c");
      void h() {
        var d = "D";

        print(" Funzione scope di a in D: $a");
        print(" Funzione scope di d in h: $d");
      }

      h();
    }

    g();
  }

  f();
}
