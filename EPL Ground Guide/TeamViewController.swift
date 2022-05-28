//
//  TeamViewController.swift
//  EPL Ground Guide
//
//  Created by Daniel Earl on 22/07/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit


class TeamViewController: UITabBarController {
    // MARK: Vars
    var teamName = ""
    var stationCode = ""
    var stadiumLat = 0.0
    var stadiumLon = 0.0
    var teamCarInfo = ""
    var teamTrainInfo = ""
    var teamDrinkInfo = ""
    var teamFixtures = ""
    
    func loadTeamData() {
        if teamName == "Arsenal" {
            stationCode = "FPK"
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/arsenal/scores-fixtures"
            stadiumLat = 51.5550526
            stadiumLon = -0.105846
            teamCarInfo = "Sat Nav Postcode: N5 1BU\n\nFrom M1, Junction 2, take the A1, towards Central London. Keep on the A1 until you see Holloway Road Tube Station on your right.  After the Tube Station turn left at the traffic lights into Hornsey Road, keep going until you reach the stadium. There is no parking at the ground or in nearby streets."
            teamTrainInfo = "Take the Piccadilly line to Arsenal, exit the station and turn right, follow Drayton Park Road and use one of the large bridges to the ground. Alternatively take the Train or Piccadilly line to Finsbury Park and follow St Thomas' Road down to Arsenal Tube Station."
            teamDrinkInfo = "The traditional away pub is the Drayton Arms near Arsenal tube station and Drayton Park railway station. Another option is the Twelve Pins or the The Blackstock near Finsbury Park Tube Station.\n\nAlcohol is also available inside the stadium."
        } else if teamName == "Aston Villa" {
            stationCode = "WTT"
            stadiumLat = 52.5088714
            stadiumLon = -1.8848723
            teamCarInfo = "Sat Nav Postcode: B6 6HE\n\nLeave the M6 at Junction 6, following the signs for Birmingham (NE) and the ground is well signposted. When on Lichfield Road, turn right into Aston Hall Road and keep going until you reach the ground."
            teamTrainInfo = "Take a local train from New Street Station to Witton. Turn left out of the station and walk down to the roundabout, then left again into Witton Lane."
            teamDrinkInfo = "Most of the pubs near the ground are for home fans only. The Witton Arms does, however, admit away fans. A bit further way is the Barton Arms on High Street Aston.\n\nAlcohol is not available inside the away end of the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/aston-villa/scores-fixtures"
        } else if teamName == "Bournemouth" {
            stationCode = "BMH"
            stadiumLat = 50.734901
            stadiumLon = -1.8389888
            teamCarInfo = "Sat Nav Postcode: BH7 7AF\n\nFrom the A31 take the A338 towards Bournemouth. Turn off the A338 (signposted Kings Park, Football Traffic), and at the roundabout turn left into Littledown Avenue and then the first right into Thistlebarrow Road. The ground is straight ahead."
            teamTrainInfo = "From Bournemouth Station walk down to Holdenhurst Road. Turn left and walk down Holdenhurst Road (along side the Dual Carriage way) until you reach Littledown Avenue. From Littledown Avenue turn right into Thistlebarrow Road and follow this down to the ground. It should take about 30 minutes."
            teamDrinkInfo = "The Cherry's Bar at the stadium allows away fans into the ground floor bar. Otherwise on Christchurch Street, in Boscombe, there is a Wetherspoons and the Mello Mello bar which both admit away fans.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/afc-bournemouth/scores-fixtures"
        } else if teamName == "Brentford" {
            stationCode = "KWB"
            stadiumLat = 51.490775
            stadiumLon = -0.288715
            teamCarInfo = "Sat Nav Postcode: TW8 9QT\n\nLeave the M4 at Junction 2 and join the A4, following the A4 as it goes under the M4 to Chiswick roundabout. At the Chiswick roundabout take the fourth exit onto Chiswick High Road (A205).  The ground is on the first right you can take, down Lionel Road South."
            teamTrainInfo = "From Kew Bridge Station, leave the station onto Chiswick High Road and turn left. Take the immediate next left down Lionel Road South, the ground is down this road."
            teamDrinkInfo = "The old Griffin Park had a pub on every corner of the ground, with the New Inn the popular away supporters pub.  Griffin Park is a fifteen-minute walk away down Chiswick High Road.  Turn right when you reach the McDonalds onto Ealing Road.\n\nAlternatively, there are a number of pubs towards the river along Strand-on-the-Green and Thames Road."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/brentford/scores-fixtures"
        } else if teamName == "Brighton" {
            stationCode = "FMR"
            stadiumLat = 50.86185
            stadiumLon = -0.08248
            teamCarInfo = "Sat Nav Postcode: BN1 8ZF\n\nPlease note there will be no parking in the area of the stadium on match days. From the A23 southbound, take the A27 East towards Lewes / Newhaven. At the University of Sussex site leave the A27 onto the B2123 (signposted Rottingdean / Falmer). At the roundabout turn left and cross over the A27 for the ground. If travelling by car head into Brighton on the A23 or A270 and follow the signs for the football park and ride."
            teamTrainInfo = "Take the train to Falmer Station, the ground is right next to the station."
            teamDrinkInfo = "There aren't really any pubs near the ground so drinking in Brighton City Centre, by the station before catching the train to Falmer, is the best bet.\n\nAlcohol should be available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/brighton-and-hove-albion/scores-fixtures"
        } else if teamName == "Chelsea" {
            stationCode = "WBP"
            stadiumLat = 51.4820072
            stadiumLon = -0.1907663
            teamCarInfo = "Sat Nav Postcode: SW6 1HS\n\nTake the M4 towards London, which becomes the A4. After the Hammersmith flyover turn right into Earls Court Road. Go past Earls Court station and keep going until you reach the junction with Fulham Road. Turn right onto Fulham Road, and you should see the ground on your right."
            teamTrainInfo = "Take the District line to Fulham Broadway, and follow the signs to the ground. After the game it is easier to walk to Earls Court Station, come out of the ground onto Fulham Road, turn right and keep walking until you reach Finborough Road. Keep walking up Finborough Road, over Old Brompton Road until you reach Earls Court."
            teamDrinkInfo = "Most of the pubs near Stamford Bridge are really for home fans only, although several pubs further up the Kings Road (towards Slone Square) should be fine. A better option is the White Horse near Parsons Green Tube Station (one stop further on from Fulham Broadway).\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/chelsea/scores-fixtures"
        } else if teamName == "Crystal Palace" {
            stationCode = "SRS"
            stadiumLat = 51.3978941
            stadiumLon = -0.0859235
            teamCarInfo = "Sat Nav Postcode: SE25 6PU\n\nFrom the M25 take the M23 towards London, this becomes the A23. Follow the A23 (Purley Way) through Croydon and eventually you reach Thornton Heath Pond. Go all the way round, turning down London Road and then taking the first left (after Barclays Bank) into the B266 (Brigstock Road). Follow Brigstock Road past Thornton Heath Station and the Leisure Centre to the end and turn left into White Horse Lane. The ground is down here on the right."
            teamTrainInfo = "Take the train to Selhurst Station, come out of the station onto Selhurst Road and turn left. Walk up Selhurst Road until you reach Park Road, go down here to the ground."
            teamDrinkInfo = "If you get the train to Thornton Heath rather than Selhurst you have the choice between The Flora Sandes right opposite the station or The Railway Telegraph, which is right out of the station down Brigstock.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/crystal-palace/scores-fixtures"
        } else if teamName == "Everton" {
            stationCode = "SDL"
            stadiumLat = 53.4391966
            stadiumLon = -2.9670169
            teamCarInfo = "Sat Nav Postcode: L4 4EL\n\nAt the end of the M62 take the A5058 towards Liverpool. Follow this road until you reach Walton Lane (A580), turn left onto Walton Lane and keep going until you reach the ground on your right."
            teamTrainInfo = "Take a local train to Sandhills Station, from here there special football buses to the ground. Alternatively you can walk from Kirkdale station, turn right cross the railway bridge, walk up Westminster Road and turn left into Goodall Street, walk up to end of the road, crossing the junction with Carisbrooke Road and into Harlech Street. At the end of Harlech Street you will reach the main County Road (A59). Cross over County Road and go down Andrew Street. At the top of Andrew Street you can see the ground."
            teamDrinkInfo = "The Thomas Frost on Walton Road is about a 15 minute walk away, or Bradleys Wine Bar a bit further down Walton Road. There are also a few pubs on Walton Lane, or a better bet would be to drink in Liverpool City Centre before heading to the ground.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/everton/scores-fixtures"
        } else if teamName == "Fulham" {
            stationCode = "PUT"
            stadiumLat = 51.4740754
            stadiumLon = -0.2215902
            teamCarInfo = "Sat Nav Postcode: SW6 6HH\n\nTake the M4 towards London, which becomes the A4. Just before the Hammersmith Flyover turn off the A4 onto Hammersmith Broadway, and follow the road around central Hammersmith, once almost all the way round turn onto the A219 (Fulham Palace Road). Keep on the A219 and then turn right into Crabtree Lane, following this down to the ground."
            teamTrainInfo = "Take the District line to Putney Bridge, for afternoon games walk through Bishops Park along the river to the ground. For evening games the park is closed so you have to walk along Fulham High Street, turning left at Bishops Park Road. At the end of Bishops Park Road follow Stevenage Road round to the ground."
            teamDrinkInfo = "The Eight Bells by Putney Bridge Tube Station is always popular with away fans, as well as the Zulu Bar, The Kings Arms, and O'Neill's on Fulham High Street."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/fulham/scores-fixtures"
        } else if teamName == "Leeds Utd" {
            stationCode = "LDS"
            stadiumLat = 53.7771779
            stadiumLon = -1.5715315
            teamCarInfo = "Sat Nav Postcode: LS11 0ES\n\nThe ground is well signposted. From the M621 Junction 2 take the A634, which becomes Elland Road, to the ground."
            teamTrainInfo = "From Leeds Station the easiest way the ground is using the shuttle buses. Leave the station from the main entrance, cross the road and walk down the steps the street below, the buses go from here to the ground."
            teamDrinkInfo = "The best bet is to drink in the City Centre before heading to the ground as the pubs by the stadium are not recommended for away fans.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/leeds-united/scores-fixtures"
        } else if teamName == "Leicester" {
            stationCode = "LEI"
            stadiumLat = 52.6200439
            stadiumLon = -1.1414997
            teamCarInfo = "Sat Nav Postcode: LE2 7FL\n\nFrom the M1 Junction 21 take the A5460 (Narborough Road) towards Leicester. After going under the railway bridge turn right into Upperton Road, cross the river and turn right into Eastern Boulevard following this to the ground."
            teamTrainInfo = "From Leicester Station cross over London Road and head down Waterloo Way. At the end of Waterloo Way turn left into Welford Road, then right into Almond Road. At the end of Almond Road turn left into Aylestone Road and then take the next right into Raws Dykes Road to the ground."
            teamDrinkInfo = "The best bet is to drink in the City Centre before heading to the ground as the pubs near the stadium are not recommended for away fans.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/leicester-city/scores-fixtures"
        } else if teamName == "Liverpool" {
            stationCode = "SDL"
            stadiumLat = 53.4316023
            stadiumLon = -2.9605416
            teamCarInfo = "Sat Nav Postcode: L4 0TH\n\nAt the end of the M62 take the A5058 towards Liverpool. Follow this road until you reach Utting Avenue, turn left here and follow Utting Avenue to Anfield Road. Turn right on to Anfield Road for the ground."
            teamTrainInfo = "Take a local train to Sandhills Station, from here there special football buses to the ground. Alternatively you can walk from Kirkdale station, turn right cross the railway bridge, walk up Westminster Road and turn left into Goodall Street, walk up Goodall Street to the junction with Carisbrooke Road and turn right. At the end of Carisbrooke Road you will reach the main County Road (A59). Cross over County Road and walk down Spellow Lane to Stanley Park. From here either walk through Stanley Park to Anfield Road or follow the road around Stanley Park to the ground."
            teamDrinkInfo = "The traditional away pub is the Arkles near the ground. If that is too busy the Flat Iron (on the corner of Walton Breck Road and Valley Road) is a good option.  Otherwise a better bet would be to drink in Liverpool City Centre before heading to the ground.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/liverpool/scores-fixtures"
        } else if teamName == "Man City" {
            stationCode = "ABY"
            stadiumLat = 53.4838763
            stadiumLon = -2.1992886
            teamCarInfo = "Sat Nav Postcode: M11 3FF\n\nLeave the M60 at Junction 23 and take the A635 towards Manchester. Turn off the A635 onto the Ashton New Road (A662). Stay on the A662 and the stadium is on the right just after the A6010."
            teamTrainInfo = "Take the train from Manchester Piccadilly to Ashburys Station, on leaving the station turn left and walk up the A6010 for about 15 minutes to the ground."
            teamDrinkInfo = "There are very few pubs near the ground, and most are for home fans only. The Stanley, on Pottery Lane towards Ashburys Railway Station, does admit away fans. A better bet would be to drink in Manchester City Centre before heading to the ground.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/manchester-city/scores-fixtures"
        } else if teamName == "Man Utd" {
            stationCode = "MUF"
            stadiumLat = 53.4632114
            stadiumLon = -2.2911967
            teamCarInfo = "Sat Nav Postcode: M16 0RA\n\nLeave the M60 at Junction 9 and take the A5081 towards Manchester. Stay on the A5081 as it becomes Village Way, Wharfside Way, and finally Trafford Park Road. The ground is on the right hand side."
            teamTrainInfo = "Either take the train from Manchester Piccadilly to Manchester United Station, or the Metrolink to Lancashire County Cricket Ground. The Manchester United Station is right by the away turnstiles. If using the Metrolink come out of the station and walk up Warwick Road to the ground."
            teamDrinkInfo = "The pubs nearest the ground do not admit away fans. A better bet would be to drink in Manchester City Centre before heading to the ground.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/manchester-united/scores-fixtures"
        } else if teamName == "Newcastle" {
            stationCode = "NCL"
            stadiumLat = 54.9752008
            stadiumLon = -1.622355
            teamCarInfo = "Sat Nav Postcode: NE1 4ST\n\nFrom the A1, take the A184 towards Newcastle. Stay on the dual carriageway, taking the Redheugh Bridge over the Tyne. Carry straight up on Blenheim Street towards the ground."
            teamTrainInfo = "Come out of Newcastle station and walk up Pink Lane. Cross Westgate Road and walk up Bath Lane (keeping the old city walls to your right). Turn right on to Stowell Street and at the end bear left up St Andrews Street, finally go left up Gallowgate to the ground."
            teamDrinkInfo = "As the ground is right in the City Centre there are plenty of pubs to choose from. Generally, however, away fans tend to drink in the pubs by Newcastle Railway Station.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/newcastle-united/scores-fixtures"
        } else if teamName == "Southampton" {
            stationCode = "SOU"
            stadiumLat = 50.9065298
            stadiumLon = -1.3908231
            teamCarInfo = "Sat Nav Postcode: SO14 5FP\n\nLeave the M27 at Junction 5 and take the A335 towards Southampton. Just past Swaythling Station turn left (staying on the A335) onto Thomas Lewis Way. Continue on the A335 until you reach the junction with the A3024 (Northam Road) and turn left towards Northam. Turn right after going over the railway bridge onto the B3038 (Britannia Road) for the ground."
            teamTrainInfo = "From Southampton Station exit onto Western Esplande, turn left and walk up the hill to Havelock Road, continue straight on, over Havelock Road, onto New Road. Walk along New Road through the parks to Northam Road, continuing along Northam Road to the ground."
            teamDrinkInfo = "Near to the ground the traditional away pub is the King Alfred on Northam Road, which you pass walking from the City Centre. Otherwise the only other option is Yates Wine Lodge in the City Centre really.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/southampton/scores-fixtures"
        } else if teamName == "Tottenham" {
            stationCode = "WHL"
            stadiumLat = 51.6031464
            stadiumLon = -0.0676001
            teamCarInfo = "Sat Nav Postcode: N17 0BX\n\nLeave the M25 at Junction 25 and take the A10 south into London. At the North Circular (A406) turn left onto the A406, and then turn off at the next junction onto Sterling Way.  After Silver Street Station turn right onto Fore Road (A1010) and keep on this road to the ground."
            teamTrainInfo = "Take the train to either White Hart Lane or Northumberland Park. From White Hart Lane come out of the station on to White Hart Lane, turn right and walk down White Hart Lane to the High Road, then right again following the High Road down to the ground. From Northumberland Park come out of the station on to Park Lane, turn left and follow Park Lane down to the ground."
            teamDrinkInfo = "There aren't too many 'away' pubs around the ground. The best options are the Harringey Irish Club on Pretoria Road (across from White Hart Lane Railway Station) or the Elmhust pub on Lordship lane (south of the ground, off the High Road). Otherwise drinking in Central London before heading to North London is a better bet.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/tottenham-hotspur/scores-fixtures"
        } else if teamName == "West Ham" {
            stationCode = "SRA"
            stadiumLat = 51.53867
            stadiumLon = -0.01649
            teamCarInfo = "Sat Nav Postcode: E20 2ST\n\nTake the A12 towards London, and follow the signs to Stratford and Westfield. Turn off the A12 onto the A106, at the traffic lights keep left and staying in the left lane you automatically filter into Waterden Road. Stay on Waterden Road and follow the signs to Westfield Stratford City.\nThere is no official parking at the ground but you can park in the shopping centre."
            teamTrainInfo = "Take the train, tube, or DLR to Stratford Station or take the Southeastern High-speed to Stratford International. From both Stations the ground is well sign posted and marshalled.\n\nAfter the game queuing systems are in use back to the stations and you can't walk through the shopping Centre."
            teamDrinkInfo = "There aren't really any pubs near the ground, but there are several pubs in Stratford although most are home fans only. Away fans are best drinking in Central London before making their way out to Stratford or trying some of the venues around the Westfield Shopping Centre.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/west-ham-united/scores-fixtures"
        } else if teamName == "Wolves" {
            stationCode = "WVH"
            stadiumLat = 52.5908129
            stadiumLon = -2.130635
            teamCarInfo = "Sat Nav Postcode: WV1 4QR\n\nFrom the South leave the M6 at Junction 10 and take the A454 towards Wolverhampton. Follow the A454 to Wolverhampton ring road and then turn right onto the ring road.  Follow the ring road round to Waterloo Road, the ground is on the right. From the North leave the M6 at Junction 12, take the A5 towards Telford and then turn onto the A449 towards Wolverhampton. Before you reach the ring road turn right at the roundabout on to Waterloo Road."
            teamTrainInfo = "Wolverhampton Station is a 15 minute walk to the ground, head towards the town centre and when you reach the ring road turn right and follow it round until you reach the ground."
            teamDrinkInfo = "There are almost no away fan friendly pubs in Wolverhampton, with the only option currently the bar inside the Premier Inn Hotel by the Railway Station.\n\nAlcohol is also available inside the stadium."
            teamFixtures = "https://www.bbc.co.uk/sport/football/teams/wolverhampton-wanderers/scores-fixtures"
        } else {
            stationCode = "VIC"
            stadiumLat = 0.0
            stadiumLon = 0.0
            teamCarInfo = "ERROR"
            teamTrainInfo = "ERROR"
            teamDrinkInfo = "ERROR"
            teamFixtures = "https://www.bbc.co.uk/sport/football/"
        }
    }
    
    override func viewDidLoad() {
     
        navigationItem.title = teamName
        
        super.viewDidLoad()
        loadTeamData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
