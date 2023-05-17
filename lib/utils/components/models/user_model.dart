
class UserModel {
  String? email;
  String? phone;
  String? uId;
  bool? isEmailVerified;
  String? fname;
  String? lname;
  String? city;
  String? address;
  List<customerOrders>? orders=[];

  UserModel({
    this.fname,
    this.lname,
    this.email,
    this.phone,
    this.uId,
    this.city,
    this.address,
    this.isEmailVerified,
    this.orders
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    fname = json['fname'];
    lname = json['lname'];
    phone = json['phone'];
    uId = json['uId'];
    address = json['address'];
    city = json['city'];
    isEmailVerified = json['isEmailVerified'];
    if (json['orders'] != null) {
      orders = List<customerOrders>.from(json['orders'].map((x) => customerOrders.fromJson(x)));
    }
  }

  Map<String, dynamic> toJson(){
    return {
      'fname': fname,
      'lname': lname,
      'email': email,
      'phone': phone,
      'address': address,
      'uId': uId,
      'city': city,
      'isEmailVerified': isEmailVerified,
      'orders': orders!.map((x) => x.toJson()).toList(),
    };
  }
}
class customerOrders{
  String? name;
  String? phone;
  String? uId;
  bool? isapprove;
  String? date;
  String? address;

  customerOrders({
    this.name,
    this.phone,
    this.uId,
    this.date,
    this.address,
    this.isapprove,
  });

  customerOrders.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    date = json['date'];
    phone = json['phone'];
    uId = json['uId'];
    address = json['address'];
    isapprove = json['isapprove'];
  }

  Map<String, dynamic> toJson(){
    return {
      'name': name,
      'date': date,
      'phone': phone,
      'address': address,
      'uId': uId,
      'isapprove': isapprove,
    };
  }
}