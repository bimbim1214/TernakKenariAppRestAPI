import 'dart:convert';

class BuyerProfileRequestModel {
    final String? name;
    final String? address;
    final String? phone;
    final String? photo;

    BuyerProfileRequestModel({
        this.name,
        this.address,
        this.phone,
        this.photo,
    });

}