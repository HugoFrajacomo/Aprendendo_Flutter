main() {
  SaudarAlguem mc = new SaudarAlguem();
  mc.saudardenovo(f: saudar, n: "Maria");
  saudar("Francisco");
  mc.saudardenovo(f: saudar);
}

saudar(String nome) {
  print("Olá, $nome");
}

class SaudarAlguem {
  saudardenovo({Function? f, String n = "Humano"}) {
    f!(n);
  }
}
