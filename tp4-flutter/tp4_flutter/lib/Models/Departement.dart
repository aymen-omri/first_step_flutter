class Departement {
  int? id ;
  String label ;
  String mission ;
  Departement({this.id , required this.label , required this.mission});

  factory Departement.fromJson(Map<String,dynamic>jsonData){
    int id = jsonData['id'];
    String label = jsonData['label'];
    String mission = jsonData['mission'];
    return Departement(id:id, label: label, mission: mission);
  }

  Map<String,dynamic> toJson(){
    return {
      'label':label,
      'mission':mission
    };
  }

}