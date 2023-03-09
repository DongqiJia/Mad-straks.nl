class NewsData {
  String? title;
  String? author;
  String? content;
  String? UrlToImage;
  String? date;

  NewsData(this.title, this.author, this.content, this.date, this.UrlToImage);

  static List<NewsData> breakingNewsData = [
    NewsData(
        "Bijna duizend meldingen gezondheidsklachten na borstimplantaten",
        "Isabella Simonetti",
        "Ongeveer duizend mensen hebben de afgelopen vijf jaar melding gemaakt van gezondheidsklachten na het plaastsen van borstimplantaten. De klachten varieren van pijn aan gewrichten tot concentratieproblemen",
        "08-03-2023",
        "https://cdn.nos.nl/image/2023/03/08/949998/1024x576a.jpg"),
    NewsData(
        "Planbureau:kabinet moet scherpere keuzes maken in de strijd om ruimte",
        "Judith van de Huisbeek",
        "Windmolens en zonneparken, op grote schaal nieuwe woningen bouwen en ruimte voor de natuur en het water om ons aan te passen aan klimaatverandering: het vraagt om grote ingrepen in onze leefomgeving.",
        "08-03-2023",
        "https://cdn.nos.nl/image/2023/03/08/950018/1024x576a.jpg"),
    NewsData(
        "Amerikaanse overnamekandidaat Vitesse in gesprek met eigenaar GelreDome",
        "Omroep Gelderland",
        "De eerste stappen naar rustiger vaarwater bij Vitesse zijn gezet. GelreDome-eigenaar Michael van de Kuit is voor het eerst in gesprek gegaan met Coley Parry, de Amerikaan die wacht op goedkeuring van de KNVB voor zijn overname van de noodlijdende club uit Arnhem.",
        "08-03-2023",
        "https://cdn.nos.nl/image/2023/03/08/949995/1024x576a.jpg"),
  ];
  static List<NewsData> recentNewsData = [
    NewsData(
        "Van tuinbroek tot orgasmekloof:drie vrouwen over het feminisme van nu",
        "Iris Houben",
        "In aanloop naar Internationale Vrouwendag gingen zondag in Amsterdam een paar duizend mensen de straat op voor de Feminist March. Voor het eerst onder een nieuwe naam, want tot dit jaar heette de mars nog de Women's March, vrouwenmars. Volgens de organisatie is dat hoog tijd, want feminisme is niet meer alleen voor vrouwen.",
        "07-03-2023",
        "https://cdn.nos.nl/image/2023/03/08/949936/1024x576a.jpg"),
    NewsData(
        "A12 bij Zevenaar weer open na ongeluk met twee vrachtwagens",
        "Omroep Gelderland",
        "De A12 ter hoogte van Zevenaar is weer open. Beide rijstroken in de richting van Arnhem werden eerder vandaag afgesloten na een ongeluk met twee vrachtwagens. Het is nog niet duidelijk of er slachtoffers bij het ongeluk zijn gevallen en hoe het heeft kunnen gebeuren.",
        "06-03-2023",
        "https://cdn.nos.nl/image/2023/03/08/949970/1024x576a.jpg"),
    NewsData(
        "Gemeente Texel wil filmopnames op het eiland kunnen verbieden",
        "NH Nieuws",
        "De aanleiding hiervoor zijn opnames van het tv-programma Hunted in 2020, waarbij in de ochtend onaangekondigd twee Apache-helikopters boven het eiland vlogen. Burgemeester Uitdehaag (D66) was destijds woest: Texel is geen speeltuin. Om soortgelijke situaties te voorkomen, stelt het college nu dus de meldplicht voor.",
        "06-03-2023",
        "https://cdn.nos.nl/image/2023/03/08/949919/1920x1080a.jpg"),
    NewsData(
        "Pleidooi in Tweede Kamer voor minder groei: 'Kapitalistische systeem werkt niet'",
        "Null",
        "Groei is goed, zo is de heersende gedachte. Maar lange rijen bij Schiphol, klaslokalen zonder leraar en de stikstofcrisis wijzen er volgens critici op dat Nederland tegen de grenzen van zijn groei aanloopt. Verschillende politieke partijen laten zich daarom vandaag inspireren door iemand die radicaal anders over groei denkt.",
        "07-03-2023",
        "https://cdn.nos.nl/image/2023/03/08/949972/1024x576a.jpg"),
  ];
}
