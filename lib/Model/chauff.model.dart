class chauff{
  String id;
  String nom;
  String email;
  int telephone;
  String bus;

  chauff({
    this.id='',
    required this.nom,
    required this.email,
    required this.telephone,
    required this.bus
  });



  Map<String, dynamic> toJson(){
    return{
      'id':id,
      'non':nom,
      'email': email,
      'telephone': telephone,
      'bus': bus,
    };
  }
  //...............................................
  factory chauff.fromJson(Map<String, dynamic> json){
    return chauff(id:json['id'], nom:json['nom'] ,email:json['email'] ,telephone:json['telephon'], bus:json['bus']);

  }

}



