# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


FactoryGirl.create(:user) if User.where(email: "test@dreamyourweb.nl").first.nil?

Aspect.delete_all
FactoryGirl.create(:aspect, id: 0, title: "Beveiliging", answer_type: "mc")
FactoryGirl.create(:aspect, id: 1, title: "Mogelijkheden", answer_type: "mc")
FactoryGirl.create(:aspect, id: 2, title: "Continuïteit", answer_type: "mc")
FactoryGirl.create(:aspect, id: 3, title: "Kosten", answer_type: "cash")

Indicator.delete_all
FactoryGirl.create(:indicator, id: 0, aspect: Aspect.where(title: "Beveiliging").first, title: "Databescherming", pass_threshold: 6, image_name: "virusscanner.png", description: "Veel organisaties hebben kritische data verspreid staan over verschillende servers binnen de organisatie waardoor IT afdelingen geen of weinig inzage hebben in: Wie creëert de data; Wie is de eigenaar van de data; Wie heeft toegang gehad tot deze data en wie heeft wanneer inzage gehad in deze data. Wanneer u dit inzichtelijk heeft kunt u bepalen wie wel en wie geen toegang heeft tot deze gegevens.", example: "Het laatste wat je wil is dat een medewerker met vertrouwelijke data de deur uit loopt. We zouden niet de eerste zijn waarvan de data op straat beland. Door samen een duidelijke analyse van de data gemaakt te hebben, en hier de beveiliging op aan te passen. Is er voorkomen dat dit in de verkeerde handen terecht kon komen.")
FactoryGirl.create(:indicator, id: 1, aspect: Aspect.where(title: "Beveiliging").first, title: "Spam filter", pass_threshold: 6, image_name: "spamfilter.png", description: "Bijna 90% van alle verzonden e-mail is spam. Dit is niet alleen hinderlijk, maar neemt ook onnodig productieve tijd van werknemers in beslag. De steeds grotere wordende stroom van spam-berichten vraagt daarnaast veel servercapaciteit. Dit zorgt voor extra kosten en kan ten koste gaan van de snelheid van het mailverkeer.", example: "Ook wij weten dat spam nooit helemaal te voorkomen is, maar met de juiste maatregelen is de overlast wel tot een minimum te beperken. Door gebruik te maken van de spamfilter is het inderdaad beperkt tot een minimum. En de tijd die het kostte om de spamberichten te verwijderen kunnen we nu besteden aan nuttige zaken.")
FactoryGirl.create(:indicator, id: 2, aspect: Aspect.where(title: "Beveiliging").first, title: "Tokens", pass_threshold: 6, image_name: "token.png", description: "De zwakste schakel bij toegangsbeveiliging is de mens: vaste wachtwoorden zorgen voor een groot beveiligingsprobleem, omdat alles gekoppeld is aan internet. Dat probleem kan opgelost worden door gebruik te maken van tokens, een apparaat wat telkens een andere code genereert, welke u gebruikt in combinatie met uw wachtwoord.", example: "Binnen onze organisatie hebben we verschillende oplossing geprobeerd, om onze omgeving goed te beveiligen. Maar vaak had men uiteindelijk toch nog de gele briefjes nodig om de wachtwoorden te onthouden. Met de tokens is dit beveiligingsrisico verleden tijd, het security gat is hiermee gedicht.")
FactoryGirl.create(:indicator, id: 3, aspect: Aspect.where(title: "Beveiliging").first, title: "Open poorten", pass_threshold: 6, image_name: "openpoorten.png", description: "Uw netwerk is niet alleen kwetsbaar voor hackers, ook virussen, trojaanse paarden en wormen kunnen u veel schade berokkenen. Een firewall is daarom noodzakelijk om de deuren (poorten) naar en van het internet te beheren. Door poorten dicht te zetten die u doorgaans toch niet gebruikt, is uw computer beter beschermd tegen computerinbraak.", example: "Neem als voorbeeld je huis, je hebt een voor- en een achterdeur. Als je de achterdeur nooit gebruikt kun je deze beter blokkeren, waarom? Het is een potentieel risico voor een dief om binnen te komen. Met een firewall doen we hetzelfde , we blokkeren elke poort die we niet nodig hebben.")

FactoryGirl.create(:indicator, id: 4, aspect: Aspect.where(title: "Mogelijkheden").first, title: "Mobiele werkplek", pass_threshold: 6, image_name: "overalonline.png", description: "Als professional zit u nooit stil en dus is het belangrijk dat uw werkomgeving met u meereist. Deze indicator geeft aan hoe goed u bent ingespeeld op het thuis- of op locatie werken. Overal dezelfde werkomgeving en altijd toegang tot uw gegevens, dat is het streven voor u en uw personeel.", example: %Q(Hoe zou het zijn om 's ochtends uitgerust op te staan, de kinderen op het gemak naar school te brengen, om daarna de eerste e-mail van de dag in alle rust te beantwoorden? Aan het eind van de dag doe je nog even een boodschap in de supermarkt, en de wachttijd in de rij voor de kassa benut je om een aantal korte e-mails te beantwoorden met je smartphone. Dat helpt om straks weer tijd over te houden voor andere zaken.))
FactoryGirl.create(:indicator, id: 5, aspect: Aspect.where(title: "Mogelijkheden").first, title: "Apparaat synchronisatie", pass_threshold: 6, image_name: "apparaatsync.png", description: "Als professional kunt u het zich niet veroorloven om kansen te missen. U zit overal meteen bovenop en daar heeft u verschillende (mobiele) apparaten voor. Even snel een vervolg-afspraak maken gaat niet als uw gegevens verspreid staan. Daarom is het belangrijk gegevens te synchroniseren over al uw apparaten.", example: "Mijn agenda deel ik met mijn collega en hij zijn agenda met mij. Daardoor weten we - wanneer het nodig is - welke afspraken de ander heeft. Geen gedoe meer met een keer per week de agenda's naast elkaar leggen. Je hebt immers toegang tot elkaars agenda: waar je ook bent en wanneer je wilt. Verrassend praktisch als je allebei nogal eens op pad bent.")
FactoryGirl.create(:indicator, id: 6, aspect: Aspect.where(title: "Mogelijkheden").first, title: "Controle op ICT-beheer", pass_threshold: 6, image_name: "controleopIT.png", description: "Een klant die u moet vertellen dat uw systeem niet werkt, dat is wel het laatste waar u op zit te wachten. Daarom is het belangrijk dat uw systeem bediend wordt door continu processen te monitoren en te controleren. Zo wordt vooraf ingespeeld op kritieke gebeurtenissen, terwijl anders achter de feiten aangelopen wordt.", example: %Q(Een aantal weken geleden ontving onze helpdesk een melding dat één  van de harde schijven van een server corrupt was. Dezelfde dag is een harde schijf uit voorraad geleverd en geïnstalleerd. Dankzij deze manier van pro-actieve monitoring wordt voorkomen dat er gegevens verloren gaan.))
FactoryGirl.create(:indicator, id: 7, aspect: Aspect.where(title: "Mogelijkheden").first, title: "Andere mogelijkheden", pass_threshold: 6, image_name: "anderemogelijkheden.png", description: "Niemand weet precies wat de toekomst over een aantal jaar gaat brengen, maar dat wil niet zeggen dat u er niet op voorbereid kunt zijn. Daarom is het goed om uw schaalbaarheid en nieuwe technische mogelijkheden in het oog te houden. Zo kunt u zich nu al voorbereiden op een gastnetwerk, of bijvoorbeeld het printen via uw iPhone of iPad.", example: "Sterknetwerk denkt veelal mee met de verwachte en de beoogde groei van haar klanten. Een aantal van onze klanten zijn hierdoor in staat geweest binnen een aantal jaar te groeien van 5 naar 50 medewerkers. Zonder dat ze daarbij zijn geremd in hun technische mogelijkheden en altijd voorop lopen met technische ontwikkeling. Dat heeft hen er toe in staat gesteld om te groeien tot voorloper binnen hun branche.")

FactoryGirl.create(:indicator, id: 8, aspect: Aspect.where(title: "Continuïteit").first, title: "Serviceaanvragen", pass_threshold: 6, image_name: "helpdesk.png", description: "Wanneer het onverhoopt voorkomt dat er iets met het netwerk of een werkplek mis is, dan wilt u direct geholpen worden. Elke minuut offline heeft immers gevolgen voor uw bedrijfsvoering. Zodoende worden serviceaanvragen binnen een afgesproken tijdspannen geanalyseerd en opgelost.", example: "Wat ons vooral bevalt is dat de mensen echt meedenken en ons het gevoel geven dat ze er voor  ons zijn. En dan het gemak dat we ervan hebben; als een van ons belt dat er iets is dan komen ze direct opdraven. Pas nog met een laptop die kapot ging, het was zo geregeld.")
FactoryGirl.create(:indicator, id: 9, aspect: Aspect.where(title: "Continuïteit").first, title: "Backup", pass_threshold: 6, image_name: "back-up.png", description: "Aan computers wordt tegenwoordig steeds meer informatie toevertrouwd. Trouwfoto's, zakelijke documenten, belangrijke e-mails... Hoe betrouwbaar een computer vandaag de dag ook is, er is een kans dat de harde schijf defect raakt. Als dat gebeurt bent u een gedeelte van of zelfs al uw data kwijt. Daarom is het belangrijk om ten allen tijden over een goede back-up te beschikken, zodat u uw bestanden binnen no-time weer bij de hand heeft.", example: "Een brand in een van onze kantoren had funest kunnen zijn voor onze bedrijfsvoering. Tot voor kort was de back-up van de locatie namelijk niet gekoppeld aan het internet maar aan een externe harde schijf. Bij de brand was die externe harde schrijf vernietigd, maar door de online back-up waren we letterlijk uit de brand.")
FactoryGirl.create(:indicator, id: 10, aspect: Aspect.where(title: "Continuïteit").first, title: "Defecte hardware", pass_threshold: 6, image_name: "defectehardware.png", description: 'Bij hardware defecten valt te denken aan een gescheurd scherm, kapotte harde schijf of een toetsenbord dat niet meer werkt. Maar ook essentiële onderdelen van fysieke servers kunnen defect raken. Het is daarom van groot belang om ervoor te zorgen dat u altijd een snelle oplossing/vervanging achter de hand heeft.', example: 'Een aantal weken geleden ontving onze helpdesk een melding dat één van de harde schijven van een server corrupt was. Dezelfde dag is een harde schijf uit voorraad geleverd en geïnstalleerd. Dankzij deze manier van pro-actieve monitoring wordt voorkomen dat er gegevens verloren gaan.')
FactoryGirl.create(:indicator, id: 11, aspect: Aspect.where(title: "Continuïteit").first, title: "Stabiel netwerk", pass_threshold: 6, image_name: "stabielnetwerk.png", description: "Naast een correct ingerichte werkplek is een stabiele verbinding met het internet van groot belang, al uw digitale communicatie loopt via dit medium. Een kleine onderneming met 5 medewerkers heeft vaak een hele andere behoefte aan een internet verbinding dan een organisatie met 50 medewerkers. Het is daarom belangrijk om voor uw onderneming de juiste internetverbinding te kiezen.", example: "Na een paar jaar sukkelen met de internetverbinding, en verschillende klachten van onze klanten (voornamelijk over de snelheid en regelmatig verlies van de verbinding). Besloten we advies te vragen bij Sterknetwerk. Zij kwamen met een duidelijk voorstel en binnen de kortste tijd lag er een nieuwe internetlijn. Sindsdien hebben we geen klachten meer gehad, en kan iedereen probleemloos werken.")

Question.delete_all
#Beveiliging 0-7
Question.create!(id: 0, title: "Moet u inloggen met een token of smartcard?", indicator: Indicator.where(title: "Tokens").first, aspect: Aspect.where(title: "Beveiliging").first, answers: ["Ja", "Nee", "Weet niet"], answer_scores: [8,2,2])
Question.create!(id: 1, title: "Kunt u op uw bedrijfsnetwerk door middel van wifi?", indicator: Indicator.where(title: "Open poorten").first, aspect: Aspect.where(title: "Beveiliging").first, answers: ["Ja","Alleen op internet", "Weet niet"], answer_scores: [3,8,5])
Question.create!(id: 2, title: "Uw mobiele telefoon is gestolen. Heeft u nog controle over uw data/e-mail/contacten op dit apparaat? Kunt u uw data op afstand vernietigen?", indicator: Indicator.where(title: "Databescherming").first, aspect: Aspect.where(title: "Beveiliging").first, answers: ["Ja", "Nee", "Weet niet"], answer_scores: [8,3,5])
Question.create!(id: 3, title: "Hoeveel spamberichten ontvangt u per week?", indicator: Indicator.where(title: "Spam filter").first, aspect: Aspect.where(title: "Beveiliging").first, answers: ["0 - 2", "3 - 8", ">8"], answer_scores: [7,3,1])
Question.create!(id: 4, title: "Staan er poorten open? Is uw firewall binnen u omgeving goed afgesteld?", indicator: Indicator.where(title: "Open poorten").first, aspect: Aspect.where(title: "Beveiliging").first, answers: ["Ja, alleen https:433 open", "Weet niet, kijk evt. op http://whatsmyip.org/port-scanner/"], answer_scores: [8,2])
Question.create!(id: 5, title: "Is vertrouwelijke data afgeschermd voor uw collega’s?", indicator: Indicator.where(title: "Databescherming").first, aspect: Aspect.where(title: "Beveiliging").first, answers: ["Ja", "Nee", "Weet niet"], answer_scores: [8,2,4])
Question.create!(id: 6, title: "Zijn de werkstations/laptops zo beschermd dat er geen data mee “naar buiten” kan worden genomen?", indicator: Indicator.where(title: "Databescherming").first, aspect: Aspect.where(title: "Beveiliging").first, answers: ["Ja", "Nee", "Weet niet"], answer_scores: [8,3,3])
Question.create!(id: 7, title: "Kunt u via een beveiligde verbinding rechtstreeks verbinden met uw systeem?", indicator: Indicator.where(title: "Tokens").first, aspect: Aspect.where(title: "Beveiliging").first, answers: ["Ja", "Nee", "Nee, niet nodig"], answer_scores: [8,3,6])

#Mogelijkheden 8-14
Question.create!(id: 8, title: "Heeft u overal en altijd toegang tot uw e-mail en agenda (mobiele telefoon / webmail)?", indicator: Indicator.where(title: "Apparaat synchronisatie").first, aspect: Aspect.where(title: "Mogelijkheden").first, answers: ["Ja", "Nee", "Geen behoefte"], answer_scores: [8,3,6])
Question.create!(id: 9, title: "Zou uw automatiseringsoplossing beter functioneren dan wel een hoger rendement bieden als verdere IT-dienstverlening kosteloos was?", indicator: Indicator.where(title: "Andere mogelijkheden").first, aspect: Aspect.where(title: "Mogelijkheden").first, answers: ["Ja", "Nee"], answer_scores: [3,8])
Question.create!(id: 10, title: "Stel ik vraag u: kunt u even snel een documentje voor me scannen, wat antwoordt u dan?", indicator: Indicator.where(title: "Apparaat synchronisatie").first, aspect: Aspect.where(title: "Mogelijkheden").first, answers: ["Geen probleem!", "Ojee!", "Kan niet"], answer_scores: [8,4,3])
Question.create!(id: 11, title: "Heeft u overal en altijd (bij beschikking over internetverbinding) toegang tot uw kantoorwerkplek (o.a. office documenten, bedrijfsapplicatie(s), boekhouding)?", indicator: Indicator.where(title: "Mobiele werkplek").first, aspect: Aspect.where(title: "Mogelijkheden").first, answers: ["Ja", "Nee", "Geen behoefte"], answer_scores: [8,3,6])
Question.create!(id: 12, title: "Heeft u uw automatiseringskosten onder controle: is dit momenteel vooraf budgetteerbaar?", indicator: Indicator.where(title: "Controle op ICT-beheer").first, aspect: Aspect.where(title: "Mogelijkheden").first, answers: ["Ja", "Nee"], answer_scores: [8,2])
Question.create!(id: 13, title: "Mogen uw medewerkers zelfstandig service calls aanmelden?", indicator: Indicator.where(title: "Controle op ICT-beheer").first, aspect: Aspect.where(title: "Mogelijkheden").first, answers: ["Ja, onbeperkt", "Ja, beperkt", "Nee"], answer_scores: [8,4,5])
Question.create!(id: 14, title: "Is thuiswerken op dit moment mogelijk?", indicator: Indicator.where(title: "Mobiele werkplek").first, aspect: Aspect.where(title: "Mogelijkheden").first, answers: ["Ja", "Nee", "Geen behoefte"], answer_scores: [8,2,6])

#Continuïteit 15-22
Question.create!(id: 15, title: "Als uw mobiel defect is, zijn uw mobiele contacten dan ook verdwenen?", indicator: Indicator.where(title: "Backup").first, aspect: Aspect.where(title: "Continuïteit").first, answers: ["Ja", "Nee", "Weet niet"], answer_scores: [3,8,3])
Question.create!(id: 16, title: "Een component in een van uw belangrijke servers raakt defect. Wat nu?", indicator: Indicator.where(title: "Defecte hardware").first, aspect: Aspect.where(title: "Continuïteit").first, answers: ["Vooraf vervangen", "1 dag gerepareerd", "Weet niet"], answer_scores: [8,5,3])
Question.create!(id: 17, title: "Uw PC is defect en u neemt een andere PC. Kunt u hier met volledige functionaliteit verder werken?", indicator: Indicator.where(title: "Defecte hardware").first, aspect: Aspect.where(title: "Continuïteit").first, answers: ["Ja", "Nee", "Weet niet"], answer_scores: [8,3,3])
Question.create!(id: 18, title: "Heeft u ooit last van internetstoringen?", indicator: Indicator.where(title: "Stabiel netwerk").first, aspect: Aspect.where(title: "Continuïteit").first, answers: ["Tot 1x per per maand", "Tot 1x per half jaar", "Vaker"], answer_scores: [4,7,2])
Question.create!(id: 19, title: "U verwijderd per ongeluk een e-mail (ook uit verwijderde items) wanneer heeft u deze weer beschikbaar?", indicator: Indicator.where(title: "Backup").first, aspect: Aspect.where(title: "Continuïteit").first, answers: ["Weet niet", "Binnen 2 uur", "Binnen 1 a 2 dagen"], answer_scores: [2,8,5])
Question.create!(id: 20, title: "Heeft u direct inzicht in de status van serviceaanvragen van uw medewerkers?", indicator: Indicator.where(title: "Serviceaanvragen").first, aspect: Aspect.where(title: "Continuïteit").first, answers: ["Ja", "Nee", "Geen behoefte"], answer_scores: [8,3,6])
Question.create!(id: 21, title: "Uw internetverbinding ligt plat en u verwacht een belangrijke e-mail. Komt deze binnen?", indicator: Indicator.where(title: "Stabiel netwerk").first, aspect: Aspect.where(title: "Continuïteit").first, answers: ["Ja, direct", "Ja, na lijnherstel", "Weet niet"], answer_scores: [8,5,3])
Question.create!(id: 22, title: "De bestandsserver is defect. Kunt u toch bij uw data?", indicator: Indicator.where(title: "Backup").first, aspect: Aspect.where(title: "Continuïteit").first, answers: ["Ja, direct", "Ja, binnen 2 dagen", "Later/onbekend"], answer_scores: [8,4,2])

#Kosten 
Question.create!(id: 23, title: "Hoeveel beleidsmedewerkers IT heeft uw bedrijf?", answer_type: "number", factor: 50000, aspect: Aspect.where(title: "Kosten").first, cash_sterknetwerk: false)
Question.create!(id: 24, title: "Hoeveel systeembeheerders heeft uw bedrijf?", answer_type: "number", factor: 40000, aspect: Aspect.where(title: "Kosten").first, cash_sterknetwerk: false)
Question.create!(id: 25, title: "Hoeveel service medewerkers heeft uw bedrijf?", answer_type: "number", factor: 30000, aspect: Aspect.where(title: "Kosten").first, cash_sterknetwerk: false)
Question.create!(id: 26, title: "Hoeveel werkplekken heeft uw bedrijf?", answer_type: "number", factor: 400, aspect: Aspect.where(title: "Kosten").first, cash_sterknetwerk: true)
Question.create!(id: 27, title: "Hoeveel fysieke servers heeft uw bedrijf?", answer_type: "number", factor: 2700, aspect: Aspect.where(title: "Kosten").first, cash_sterknetwerk: true)
Question.create!(id: 28, title: "Hoeveel virtuele servers heeft uw bedrijf?", answer_type: "number", factor: 1500, aspect: Aspect.where(title: "Kosten").first, cash_sterknetwerk: true)