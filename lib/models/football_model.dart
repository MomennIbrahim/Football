class FootballModel {
  Filters? filters;
  ResultSet? resultSet;
  Aggregates? aggregates;
  List<Matches>? matches;

  FootballModel({this.filters, this.resultSet, this.aggregates, this.matches});

  FootballModel.fromJson(Map<String, dynamic> json) {
    filters =
    json['filters'] != null ?  Filters.fromJson(json['filters']) : null;
    resultSet = json['resultSet'] != null
        ?  ResultSet.fromJson(json['resultSet'])
        : null;
    aggregates = json['aggregates'] != null
        ?  Aggregates.fromJson(json['aggregates'])
        : null;
    if (json['matches'] != null) {
      matches = <Matches>[];
      json['matches'].forEach((v) {
        matches!.add( Matches.fromJson(v));
      });
    }
  }
}

class Filters {
  int? limit;
  String? permission;

  Filters({this.limit, this.permission});

  Filters.fromJson(Map<String, dynamic> json) {
    limit = json['limit'];
    permission = json['permission'];
  }
}

class ResultSet {
  int? count;
  String? competitions;
  String? first;
  String? last;

  ResultSet({this.count, this.competitions, this.first, this.last});

  ResultSet.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    competitions = json['competitions'];
    first = json['first'];
    last = json['last'];
  }


}

class Aggregates {
  int? numberOfMatches;
  int? totalGoals;
  HomeTeam? homeTeam;
  AwayTeam? awayTeam;

  Aggregates(
      {this.numberOfMatches, this.totalGoals, this.homeTeam, this.awayTeam});

  Aggregates.fromJson(Map<String, dynamic> json) {
    numberOfMatches = json['numberOfMatches'];
    totalGoals = json['totalGoals'];
    homeTeam = json['homeTeam'] != null
        ?  HomeTeam.fromJson(json['homeTeam'])
        : null;
    awayTeam = json['awayTeam'] != null
        ?  AwayTeam.fromJson(json['awayTeam'])
        : null;
  }

}

class HomeTeam {
  int? id;
  String? name;
  String? crest;
  String? shortName;
  String? tla;


  HomeTeam.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    crest = json['crest'];
    shortName = json['shortName'];
    tla = json['tla'];
  }
}

class Matches {
  Area? area;
  Competition? competition;
  Season? season;
  int? id;
  String? utcDate;
  String? status;
  int? matchday;
  String? stage;
  Null? group;
  String? lastUpdated;
  HomeTeam? homeTeam;
  AwayTeam? awayTeam;
  Score? score;
  Odds? odds;
  List<Referees>? referees;

  Matches.fromJson(Map<String, dynamic> json) {
    area = json['area'] != null ?  Area.fromJson(json['area']) : null;
    competition = json['competition'] != null
        ?  Competition.fromJson(json['competition'])
        : null;
    season =
    json['season'] != null ?  Season.fromJson(json['season']) : null;
    id = json['id'];
    utcDate = json['utcDate'];
    status = json['status'];
    matchday = json['matchday'];
    stage = json['stage'];
    group = json['group'];
    lastUpdated = json['lastUpdated'];
    homeTeam = json['homeTeam'] != null
        ?  HomeTeam.fromJson(json['homeTeam'])
        : null;
    awayTeam = json['awayTeam'] != null
        ?  AwayTeam.fromJson(json['awayTeam'])
        : null;
    score = json['score'] != null ?  Score.fromJson(json['score']) : null;
    odds = json['odds'] != null ?  Odds.fromJson(json['odds']) : null;
    if (json['referees'] != null) {
      referees = <Referees>[];
      json['referees'].forEach((v) {
        referees!.add( Referees.fromJson(v));
      });
    }
  }
}

class Area {
  int? id;
  String? name;
  String? code;
  String? flag;

  Area({this.id, this.name, this.code, this.flag});

  Area.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    code = json['code'];
    flag = json['flag'];
  }
}

class Competition {
  int? id;
  String? name;
  String? code;
  String? type;
  String? emblem;

  Competition({this.id, this.name, this.code, this.type, this.emblem});

  Competition.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    code = json['code'];
    type = json['type'];
    emblem = json['emblem'];
  }
}

class Season {
  int? id;
  String? startDate;
  String? endDate;
  int? currentMatchday;
  Winner? winner;

  Season(
      {this.id,
        this.startDate,
        this.endDate,
        this.currentMatchday,
        this.winner});

  Season.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    currentMatchday = json['currentMatchday'];
    winner =
    json['winner'] != null ?  Winner.fromJson(json['winner']) : null;
  }
}

class Winner {
  int? id;
  String? name;
  String? shortName;
  String? tla;
  String? crest;
  String? address;
  String? website;
  int? founded;
  String? clubColors;
  String? venue;
  String? lastUpdated;

  Winner(
      {this.id,
        this.name,
        this.shortName,
        this.tla,
        this.crest,
        this.address,
        this.website,
        this.founded,
        this.clubColors,
        this.venue,
        this.lastUpdated});

  Winner.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    shortName = json['shortName'];
    tla = json['tla'];
    crest = json['crest'];
    address = json['address'];
    website = json['website'];
    founded = json['founded'];
    clubColors = json['clubColors'];
    venue = json['venue'];
    lastUpdated = json['lastUpdated'];
  }

}

class AwayTeam {
  int? id;
  String? name;
  String? shortName;
  String? tla;
  String? crest;


  AwayTeam.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    shortName = json['shortName'];
    tla = json['tla'];
    crest = json['crest'];
  }

}

class Score {
  String? winner;
  String? duration;
  FullTime? fullTime;
  FullTime? halfTime;

  Score({this.winner, this.duration, this.fullTime, this.halfTime});

  Score.fromJson(Map<String, dynamic> json) {
    winner = json['winner'];
    duration = json['duration'];
    fullTime = json['fullTime'] != null
        ?  FullTime.fromJson(json['fullTime'])
        : null;
    halfTime = json['halfTime'] != null
        ?  FullTime.fromJson(json['halfTime'])
        : null;
  }
}

class FullTime {
  int? home;
  int? away;

  FullTime({this.home, this.away});

  FullTime.fromJson(Map<String, dynamic> json) {
    home = json['home'];
    away = json['away'];
  }
}

class Odds {
  String? msg;

  Odds({this.msg});

  Odds.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
  }
}
class Referees {
  int? id;
  String? name;
  String? type;
  String? nationality;

  Referees({this.id, this.name, this.type, this.nationality});

  Referees.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    nationality = json['nationality'];
  }
}
