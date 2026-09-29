import 'dart:collection';

String cekPrioritas(String jenisKerusakan) {
  if (jenisKerusakan == "Listrik Mati") {
    return "Prioritas Tinggi (1 hari)";
  } else {
    return "Prioritas Normal (3 hari)";
  }
}

void validasiLaporan(String deskripsi) {
  if (deskripsi.length < 10) {
    throw Exception("Deskripsi terlalu singkat");
  }
  print("Laporan valid: $deskripsi");
}

void main() {
  String? namaPelapor;
  String namaTampil = namaPelapor ?? "Mahasiswa Anonim";
  print("Nama Pelapor: $namaTampil");

  Queue<String> antrean = Queue<String>();
  antrean.add("Andi");
  antrean.add("Budi");
  antrean.add("Citra");
  print("Antrean awal: $antrean");

  String selesai = antrean.removeFirst();
  print("Laporan selesai diproses: $selesai");
  print("Antrean setelah diproses: $antrean");

  print("Listrik Mati: ${cekPrioritas("Listrik Mati")}");
  print("Wi-Fi Terputus: ${cekPrioritas("Wi-Fi Terputus")}");
  print("AC Rusak: ${cekPrioritas("AC Rusak")}");

  try {
    validasiLaporan("AC mati");
  } catch (e) {
    print("Error: $e");
  }
}