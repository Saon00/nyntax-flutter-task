class CarRentModel {
  String? status;
  List<Data>? data;
  String? message;

  CarRentModel({this.status, this.data, this.message});

  CarRentModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    message = json['message'];
  }

  get type => null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = message;
    return data;
  }
}

class Data {
  String? id;
  String? make;
  String? model;
  int? year;
  String? type;
  int? seats;
  int? bags;
  List<String>? features;
  Rates? rates;
  String? imageURL;

  Data(
      {this.id,
      this.make,
      this.model,
      this.year,
      this.type,
      this.seats,
      this.bags,
      this.features,
      this.rates,
      this.imageURL});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    make = json['make'];
    model = json['model'];
    year = json['year'];
    type = json['type'];
    seats = json['seats'];
    bags = json['bags'];
    features = json['features'].cast<String>();
    rates = json['rates'] != null ? Rates.fromJson(json['rates']) : null;
    imageURL = json['imageURL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['make'] = make;
    data['model'] = model;
    data['year'] = year;
    data['type'] = type;
    data['seats'] = seats;
    data['bags'] = bags;
    data['features'] = features;
    if (rates != null) {
      data['rates'] = rates!.toJson();
    }
    data['imageURL'] = imageURL;
    return data;
  }
}

class Rates {
  int? hourly;
  int? daily;
  int? weekly;

  Rates({this.hourly, this.daily, this.weekly});

  Rates.fromJson(Map<String, dynamic> json) {
    hourly = json['hourly'];
    daily = json['daily'];
    weekly = json['weekly'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['hourly'] = hourly;
    data['daily'] = daily;
    data['weekly'] = weekly;
    return data;
  }
}
