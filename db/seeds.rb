# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(email: "cb@gmail.com", password: "password", password_confirmation: "password", first_name: "Candice", last_name: "Birdsong")


tasting1 = Tasting.create!(name: "Tour de France", description: "Take a journey to discover some of France's most loved regions", photo: "https://s3.us-east-2.amazonaws.com/wine-tasting-at-home/france.jpg", user: user1)
tasting2 = Tasting.create!(name: "Rose All Day", description: "It's rosé season! Perfect for any Summer gathering", photo: "https://s3.us-east-2.amazonaws.com/wine-tasting-at-home/rose+(1).jpg", user: user1)
tasting3 = Tasting.create!(name: "Sippin'Bubbly", description: "Try some of France's sparklers. Perfect for any occasion!", photo: "https://s3.us-east-2.amazonaws.com/wine-tasting-at-home/bubbly.jpg", user: user1)
tasting4 = Tasting.create!(name: "Not Moscato", description: "Love a little sweetness? You don't want to miss these beauties", photo: "https://s3.us-east-2.amazonaws.com/wine-tasting-at-home/notmoscato.jpg", user: user1)
tasting5 = Tasting.create!(name: "Red Remix", description: "A mix of reds from some of France's top regions", photo: "https://s3.us-east-2.amazonaws.com/wine-tasting-at-home/red.jpg", user: user1)
tasting6 = Tasting.create!(name: "White on White", description: "A mix of whites from some of France's top regions", photo: "https://s3.us-east-2.amazonaws.com/wine-tasting-at-home/white.jpg", user: user1)


Wine.create(name: "Laurent-Perrier Brut", appellation: "Champagne", varietal: "Chardonnay - Pinot Noir - Meunier", year: "NV", tasting: tasting1)
Wine.create(name: "Patient Cottat Sancerre Anciennes Vignes", appellation: "Sancerre", varietal: "Sauvignon Blanc", year: "2015", tasting: tasting1)
Wine.create(name: "Louis Latour Montagny Premier Cru La Grande Roche", appellation: "Montagny Premier Cru ", varietal: "Chardonnay", year: "2015", tasting: tasting1)
Wine.create(name: "Domaine Faiveley Bourgogne", appellation: "Bourgogne Blanc ", varietal: "Pinot Noir", year: "2014", tasting: tasting1)
Wine.create(name: "Chateau La Cardonne", appellation: "Medoc", varietal: "Cabernet Franc - Cabernet Sauvignon - Merlot", year: "2009", tasting: tasting1)
Wine.create(name: "Domaine du Gour de Chaule Gigondas Cuvee Tradition", appellation: "Gigondas", varietal: "Grenache - Syrah - Mourvedre", year: "2013", tasting: tasting1)

Wine.create(name: "Domaine des Nouelles Rose d'Anjou", appellation: "Rose d'Anjou", varietal: "Cabernet Franc", year: "2016", tasting: tasting2)
Wine.create(name: "Louis Jadot Rose", appellation: "Macon", varietal: "Gamay", year: "2016", tasting: tasting2)
Wine.create(name: "Jean-Luc Colombo Cape Bleue Rose", appellation: "Provence", varietal: "Syrah - Mourvèdre", year: "2016", tasting: tasting2)
Wine.create(name: "Domaine Eugene Carrel & Fils Jongieux Rose de Savoie", appellation: "Vin de Savoie", varietal: "Gamay", year: "2016", tasting: tasting2)
Wine.create(name: "JCB No. 69 Brut Rose", appellation: "Cremant de Bourgogne", varietal: "Pinot Noir", year: "NV", tasting: tasting2)
Wine.create(name: "Domaine Lafond Roc-Epine Tavel Rose", appellation: "Tavel", varietal: "Grenache - Syrah", year: "2016", tasting: tasting2)

Wine.create(name: "Marquis de la Tour Brut", appellation: "Loire", varietal: "Cabernet Franc - Carignan - Grenache", year: "NV", tasting: tasting3)
Wine.create(name: "Jean-Jacques Vincent Cremant de Bourgogne Brut", appellation: "Cremant de Bourgogne ", varietal: "Chardonnay", year: "NV", tasting: tasting3)
Wine.create(name: "Lucien Albrecht Cremant d'Alsace Brut", appellation: "Cremant d'Alsace ", varietal: "Pinot Blanc", year: "NV", tasting: tasting3)
Wine.create(name: "Gerard Bertrand Cremant de Limoux Cuvee Thomas Jefferson Brut", appellation: "Cremant de Limoux ", varietal: "Chardonnay, Chenin, Pinot Noir, Mauzac ", year: "NV", tasting: tasting3)
Wine.create(name: "Nicolas Feuillatte Brut Rose", appellation: "Champagne", varietal: "Chardonnay - Pinot Noir - Pinot Meunier", year: "NV", tasting: tasting3)
Wine.create(name: "Lanson Black Label Brut", appellation: "Chamapagne", varietal: "Chardonnay - Pinot Noir - Pinot Meunier", year: "NV", tasting: tasting3)

Wine.create(name: "Chateau Coutet 2014", appellation: "Barsac ", varietal: "Semillon", year: "2014", tasting: tasting4)
Wine.create(name: "Clos Guirouilh Jurancon", appellation: "Jurancon ", varietal: "Gros Manseng - Petit Manseng ", year: "2011", tasting: tasting4)
Wine.create(name: "Domaine de la Taille Aux Loups Montlouis sur Loire Moelleux", appellation: "Montlouis Moelleux ", varietal: "Chenin Blanc", year: "2015", tasting: tasting4)
Wine.create(name: "Vidal-Fleury Beaumes de Venise Muscat", appellation: "Muscat de Beaumes-de-Venise  ", varietal: "Muscat Blanc a Petits Grains", year: "2014", tasting: tasting4)
Wine.create(name: "Chateau Bellevue Monbazillac", appellation: "Monbazillac", varietal: "Semillon", year: "2011", tasting: tasting4)
Wine.create(name: "Piper-Heidsieck Cuvee Sublime Demi-Sec", appellation: "Chamapagne", varietal: "Pinot Noir - Pinot Meunier", year: "NV", tasting: tasting4)

Wine.create(name: "Famille Perrin Cotes du Rhone Villages Rouge ", appellation: "Cotes du Rhone", varietal: "Grenache - Syrah - Mourvèdre", year: "2011", tasting: tasting5)
Wine.create(name: "Joseph Drouhin Cote de Nuits Villages", appellation: "Cote de Nuits-Villages ", varietal: "Pinot Noir", year: "2014", tasting: tasting5)
Wine.create(name: "Domaine du Bel Air Bourgueil Jour de Soif", appellation: "Bourgueil ", varietal: "Cabernet Franc", year: "2015", tasting: tasting5)
Wine.create(name: "Chateau Clos L'Eglise Cotes de Castillon", appellation: "Cotes de Bordeaux Castillon ", varietal: "Merlot - Cabernet Sauvignon - Cabernet Franc", year: "2005", tasting: tasting5)
Wine.create(name: "Gueissard Bandol Rouge", appellation: "Bandol", varietal: "Cinsaut - Grenache - Mourvedre", year: "2013", tasting: tasting5)
Wine.create(name: "Chateau de la Chaize Brouilly", appellation: "Brouilly", varietal: "Gamay", year: "2013", tasting: tasting5)

Wine.create(name: "Maison Nicolas Perrin Viognier", appellation: "Vin de France", varietal: "Viognier", year: "2014", tasting: tasting6)
Wine.create(name: "Joseph Drouhin Saint Veran", appellation: "Saint Veran", varietal: "Chardonnay", year: "2015", tasting: tasting6)
Wine.create(name: "Zind-Humbrecht Riesling", appellation: "Alsace", varietal: "Riesling", year: "2015", tasting: tasting6)
Wine.create(name: "Chateau Smith Haut Lafitte Les Hauts de Smith Blanc", appellation: "Pessac-Leognan ", varietal: "Sauvignon Blanc", year: "2015", tasting: tasting6)
Wine.create(name: "Lucien Crochet Sancerre", appellation: "Sancerre", varietal: "Sauvignon Blanc", year: "2014", tasting: tasting6)
Wine.create(name: "Les Costieres de Pomerols Beauvignac Picpoul de Pinet", appellation: "Picpoul de Pinet ", varietal: "Picpoul", year: "2016", tasting: tasting6)
