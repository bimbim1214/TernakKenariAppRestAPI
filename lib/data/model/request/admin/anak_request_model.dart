import 'dart:convert';

class AnakRequestModel {
    final String? noRing;
    final DateTime? tanggalLahir;
    final String? jenisKelamin;
    final String? jenisKenari;
    final String? gambarAnak;
    final String? ayahId;
    final String? ibuId;

    AnakRequestModel({
        this.noRing,
        this.tanggalLahir,
        this.jenisKelamin,
        this.jenisKenari,
        this.gambarAnak,
        this.ayahId,
        this.ibuId,
    });

}