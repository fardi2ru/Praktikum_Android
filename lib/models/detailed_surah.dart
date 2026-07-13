import 'ayah.dart';

class DetailedSurah {

  final int nomor;
  final String nama;
  final String namaLatin;
  final int jumlahAyat;
  final String tempatTurun;
  final String arti;
  final String deskripsi;
  final Map<String, String> audioFull;
  final List<Ayah> ayat;

  DetailedSurah({
    required this.nomor,
    required this.nama,
    required this.namaLatin,
    required this.jumlahAyat,
    required this.tempatTurun,
    required this.arti,
    required this.deskripsi,
    required this.audioFull,
    required this.ayat,
  });

  factory DetailedSurah.fromJson(Map<String, dynamic> json) {

    return DetailedSurah(
      nomor: json['nomor'] ?? 0,

      nama: json['nama'] ?? '',

      namaLatin: json['namaLatin'] ?? '',

      jumlahAyat: json['jumlahAyat'] ?? 0,

      tempatTurun: json['tempatTurun'] ?? '',

      arti: json['arti'] ?? '',

      deskripsi: json['deskripsi'] ?? '',

      audioFull: (json['audioFull'] as Map<String, dynamic>? ?? {})
          .map((key, value) => MapEntry(key, value.toString()))
          .cast<String, String>(),

      ayat: (json['ayat'] as List<dynamic>? ?? [])
          .map((e) => Ayah.fromJson(e))
          .toList(),
    );
  }
}