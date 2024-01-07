class Travel {
  String name;
  String location;
  String img;

  Travel(this.name, this.location, this.img);

  static List<Travel> travelInformation() {
    return [
      Travel("Tour 4_2", "Swizerland", "images/top2.jpg"),
      Travel("Tour 4_1", "Kashmir", "images/top3.jpg"),
      Travel("Tour 3_2", "Saint_martin", "images/top4.jpg"),
      Travel("Tour 3_1", "CoxBazar", "images/top2.jpg"),
    ];
  }

  static List<Travel> mostPopularTravelInfo() {
    return [
      Travel("Tour 2_2", "Lalbag", "images/bottom1.jpg"),
      Travel("Tour 2_1", "Panam", "images/bottom2.jpg"),
      Travel("Tour 1_2", "JU", "images/bottom3.jpg"),
      Travel("Tour 1_1", "Puran Dhaka", "images/bottom4.jpg"),
    ];
  }
}
