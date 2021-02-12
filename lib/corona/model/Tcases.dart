class Tcases{


  var cases;
  var deaths;
  var recovered;
  var actived;

  Tcases({this.cases,this.deaths,this.recovered,this.actived});

  factory Tcases.fromJson(var json){

    return Tcases(
      cases: json['cases'],
      deaths: json['deaths'],
      recovered: json['recovered'],
        actived: json['active']
    );
  }


}