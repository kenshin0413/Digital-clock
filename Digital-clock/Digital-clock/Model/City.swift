//
//  City.swift
//  Digital-clock
//
//  Created by miyamotokenshin on R 7/10/02.
//

import Foundation

struct City: Identifiable {
    let id = UUID()
    let name: String
    let timeZoneID: String
}

// A–Z by English name for City Picker
let WorldCites: [City] = [
    // A
    City(name: NSLocalizedString("city.accra", comment: ""), timeZoneID: "Africa/Accra"),
    City(name: NSLocalizedString("city.adelaide", comment: ""), timeZoneID: "Australia/Adelaide"),
    City(name: NSLocalizedString("city.addis_ababa", comment: ""), timeZoneID: "Africa/Addis_Ababa"),
    City(name: NSLocalizedString("city.abu_dhabi", comment: ""), timeZoneID: "Asia/Dubai"),
    City(name: NSLocalizedString("city.algiers", comment: ""), timeZoneID: "Africa/Algiers"),
    City(name: NSLocalizedString("city.almaty", comment: ""), timeZoneID: "Asia/Almaty"),
    City(name: NSLocalizedString("city.amman", comment: ""), timeZoneID: "Asia/Amman"),
    City(name: NSLocalizedString("city.amsterdam", comment: ""), timeZoneID: "Europe/Amsterdam"),
    City(name: NSLocalizedString("city.andorra_la_vella", comment: ""), timeZoneID: "Europe/Andorra"),
    City(name: NSLocalizedString("city.ankara", comment: ""), timeZoneID: "Europe/Istanbul"),
    City(name: NSLocalizedString("city.anchorage", comment: ""), timeZoneID: "America/Anchorage"),
    City(name: NSLocalizedString("city.asuncion", comment: ""), timeZoneID: "America/Asuncion"),
    City(name: NSLocalizedString("city.athens", comment: ""), timeZoneID: "Europe/Athens"),
    City(name: NSLocalizedString("city.auckland", comment: ""), timeZoneID: "Pacific/Auckland"),
    // B
    City(name: NSLocalizedString("city.baghdad", comment: ""), timeZoneID: "Asia/Baghdad"),
    City(name: NSLocalizedString("city.baku", comment: ""), timeZoneID: "Asia/Baku"),
    City(name: NSLocalizedString("city.bangkok", comment: ""), timeZoneID: "Asia/Bangkok"),
    City(name: NSLocalizedString("city.barcelona", comment: ""), timeZoneID: "Europe/Madrid"),
    City(name: NSLocalizedString("city.beijing", comment: ""), timeZoneID: "Asia/Shanghai"),
    City(name: NSLocalizedString("city.beirut", comment: ""), timeZoneID: "Asia/Beirut"),
    City(name: NSLocalizedString("city.belgrade", comment: ""), timeZoneID: "Europe/Belgrade"),
    City(name: NSLocalizedString("city.berlin", comment: ""), timeZoneID: "Europe/Berlin"),
    City(name: NSLocalizedString("city.bengaluru", comment: ""), timeZoneID: "Asia/Kolkata"),
    City(name: NSLocalizedString("city.bogota", comment: ""), timeZoneID: "America/Bogota"),
    City(name: NSLocalizedString("city.boston", comment: ""), timeZoneID: "America/New_York"),
    City(name: NSLocalizedString("city.brasilia", comment: ""), timeZoneID: "America/Sao_Paulo"),
    City(name: NSLocalizedString("city.brisbane", comment: ""), timeZoneID: "Australia/Brisbane"),
    City(name: NSLocalizedString("city.brussels", comment: ""), timeZoneID: "Europe/Brussels"),
    City(name: NSLocalizedString("city.bucharest", comment: ""), timeZoneID: "Europe/Bucharest"),
    City(name: NSLocalizedString("city.budapest", comment: ""), timeZoneID: "Europe/Budapest"),
    City(name: NSLocalizedString("city.buenos_aires", comment: ""), timeZoneID: "America/Argentina/Buenos_Aires"),
    City(name: NSLocalizedString("city.busan", comment: ""), timeZoneID: "Asia/Seoul"),
    // C
    City(name: NSLocalizedString("city.cairo", comment: ""), timeZoneID: "Africa/Cairo"),
    City(name: NSLocalizedString("city.calgary", comment: ""), timeZoneID: "America/Edmonton"),
    City(name: NSLocalizedString("city.cape_town", comment: ""), timeZoneID: "Africa/Johannesburg"),
    City(name: NSLocalizedString("city.caracas", comment: ""), timeZoneID: "America/Caracas"),
    City(name: NSLocalizedString("city.casablanca", comment: ""), timeZoneID: "Africa/Casablanca"),
    City(name: NSLocalizedString("city.chicago", comment: ""), timeZoneID: "America/Chicago"),
    City(name: NSLocalizedString("city.colombo", comment: ""), timeZoneID: "Asia/Colombo"),
    City(name: NSLocalizedString("city.copenhagen", comment: ""), timeZoneID: "Europe/Copenhagen"),
    City(name: NSLocalizedString("city.costa_rica_san_jose", comment: ""), timeZoneID: "America/Costa_Rica"),
    // D
    City(name: NSLocalizedString("city.dakar", comment: ""), timeZoneID: "Africa/Dakar"),
    City(name: NSLocalizedString("city.dallas", comment: ""), timeZoneID: "America/Chicago"),
    City(name: NSLocalizedString("city.delhi", comment: ""), timeZoneID: "Asia/Kolkata"),
    City(name: NSLocalizedString("city.denver", comment: ""), timeZoneID: "America/Denver"),
    City(name: NSLocalizedString("city.dhaka", comment: ""), timeZoneID: "Asia/Dhaka"),
    City(name: NSLocalizedString("city.doha", comment: ""), timeZoneID: "Asia/Qatar"),
    City(name: NSLocalizedString("city.dublin", comment: ""), timeZoneID: "Europe/Dublin"),
    City(name: NSLocalizedString("city.dubai", comment: ""), timeZoneID: "Asia/Dubai"),
    City(name: NSLocalizedString("city.durban", comment: ""), timeZoneID: "Africa/Johannesburg"),
    // E
    City(name: NSLocalizedString("city.edmonton", comment: ""), timeZoneID: "America/Edmonton"),
    City(name: NSLocalizedString("city.el_paso", comment: ""), timeZoneID: "America/Denver"),
    // F
    City(name: NSLocalizedString("city.frankfurt", comment: ""), timeZoneID: "Europe/Berlin"),
    City(name: NSLocalizedString("city.fortaleza", comment: ""), timeZoneID: "America/Fortaleza"),
    // G
    City(name: NSLocalizedString("city.geneva", comment: ""), timeZoneID: "Europe/Zurich"),
    City(name: NSLocalizedString("city.guangzhou", comment: ""), timeZoneID: "Asia/Shanghai"),
    City(name: NSLocalizedString("city.guatemala_city", comment: ""), timeZoneID: "America/Guatemala"),
    // H
    City(name: NSLocalizedString("city.hanoi", comment: ""), timeZoneID: "Asia/Ho_Chi_Minh"),
    City(name: NSLocalizedString("city.havana", comment: ""), timeZoneID: "America/Havana"),
    City(name: NSLocalizedString("city.helsinki", comment: ""), timeZoneID: "Europe/Helsinki"),
    City(name: NSLocalizedString("city.ho_chi_minh", comment: ""), timeZoneID: "Asia/Ho_Chi_Minh"),
    City(name: NSLocalizedString("city.hong_kong", comment: ""), timeZoneID: "Asia/Hong_Kong"),
    City(name: NSLocalizedString("city.honolulu", comment: ""), timeZoneID: "Pacific/Honolulu"),
    City(name: NSLocalizedString("city.houston", comment: ""), timeZoneID: "America/Chicago"),
    // I
    City(name: NSLocalizedString("city.islamabad", comment: ""), timeZoneID: "Asia/Karachi"),
    City(name: NSLocalizedString("city.istanbul", comment: ""), timeZoneID: "Europe/Istanbul"),
    // J
    City(name: NSLocalizedString("city.jakarta", comment: ""), timeZoneID: "Asia/Jakarta"),
    City(name: NSLocalizedString("city.jeddah", comment: ""), timeZoneID: "Asia/Riyadh"),
    City(name: NSLocalizedString("city.jerusalem", comment: ""), timeZoneID: "Asia/Jerusalem"),
    City(name: NSLocalizedString("city.johannesburg", comment: ""), timeZoneID: "Africa/Johannesburg"),
    // K
    City(name: NSLocalizedString("city.kabul", comment: ""), timeZoneID: "Asia/Kabul"),
    City(name: NSLocalizedString("city.karachi", comment: ""), timeZoneID: "Asia/Karachi"),
    City(name: NSLocalizedString("city.kathmandu", comment: ""), timeZoneID: "Asia/Kathmandu"),
    City(name: NSLocalizedString("city.khartoum", comment: ""), timeZoneID: "Africa/Khartoum"),
    City(name: NSLocalizedString("city.kigali", comment: ""), timeZoneID: "Africa/Kigali"),
    City(name: NSLocalizedString("city.kingston", comment: ""), timeZoneID: "America/Jamaica"),
    City(name: NSLocalizedString("city.kyiv", comment: ""), timeZoneID: "Europe/Kyiv"),
    City(name: NSLocalizedString("city.kuala_lumpur", comment: ""), timeZoneID: "Asia/Kuala_Lumpur"),
    City(name: NSLocalizedString("city.kuwait_city", comment: ""), timeZoneID: "Asia/Kuwait"),
    // L
    City(name: NSLocalizedString("city.lagos", comment: ""), timeZoneID: "Africa/Lagos"),
    City(name: NSLocalizedString("city.lahore", comment: ""), timeZoneID: "Asia/Karachi"),
    City(name: NSLocalizedString("city.las_vegas", comment: ""), timeZoneID: "America/Los_Angeles"),
    City(name: NSLocalizedString("city.lima", comment: ""), timeZoneID: "America/Lima"),
    City(name: NSLocalizedString("city.lisbon", comment: ""), timeZoneID: "Europe/Lisbon"),
    City(name: NSLocalizedString("city.ljubljana", comment: ""), timeZoneID: "Europe/Ljubljana"),
    City(name: NSLocalizedString("city.london", comment: ""), timeZoneID: "Europe/London"),
    City(name: NSLocalizedString("city.los_angeles", comment: ""), timeZoneID: "America/Los_Angeles"),
    City(name: NSLocalizedString("city.luxembourg", comment: ""), timeZoneID: "Europe/Luxembourg"),
    // M
    City(name: NSLocalizedString("city.madrid", comment: ""), timeZoneID: "Europe/Madrid"),
    City(name: NSLocalizedString("city.malaga", comment: ""), timeZoneID: "Europe/Madrid"),
    City(name: NSLocalizedString("city.manchester", comment: ""), timeZoneID: "Europe/London"),
    City(name: NSLocalizedString("city.manila", comment: ""), timeZoneID: "Asia/Manila"),
    City(name: NSLocalizedString("city.melbourne", comment: ""), timeZoneID: "Australia/Melbourne"),
    City(name: NSLocalizedString("city.mexico_city", comment: ""), timeZoneID: "America/Mexico_City"),
    City(name: NSLocalizedString("city.miami", comment: ""), timeZoneID: "America/New_York"),
    City(name: NSLocalizedString("city.milan", comment: ""), timeZoneID: "Europe/Rome"),
    City(name: NSLocalizedString("city.minsk", comment: ""), timeZoneID: "Europe/Minsk"),
    City(name: NSLocalizedString("city.montreal", comment: ""), timeZoneID: "America/Montreal"),
    City(name: NSLocalizedString("city.moscow", comment: ""), timeZoneID: "Europe/Moscow"),
    City(name: NSLocalizedString("city.mumbai", comment: ""), timeZoneID: "Asia/Kolkata"),
    City(name: NSLocalizedString("city.munich", comment: ""), timeZoneID: "Europe/Berlin"),
    // N
    City(name: NSLocalizedString("city.nairobi", comment: ""), timeZoneID: "Africa/Nairobi"),
    City(name: NSLocalizedString("city.new_york", comment: ""), timeZoneID: "America/New_York"),
    City(name: NSLocalizedString("city.nicosia", comment: ""), timeZoneID: "Asia/Nicosia"),
    // O
    City(name: NSLocalizedString("city.osaka", comment: ""), timeZoneID: "Asia/Tokyo"),
    City(name: NSLocalizedString("city.oslo", comment: ""), timeZoneID: "Europe/Oslo"),
    City(name: NSLocalizedString("city.ottawa", comment: ""), timeZoneID: "America/Toronto"),
    // P
    City(name: NSLocalizedString("city.panama_city", comment: ""), timeZoneID: "America/Panama"),
    City(name: NSLocalizedString("city.paris", comment: ""), timeZoneID: "Europe/Paris"),
    City(name: NSLocalizedString("city.perth", comment: ""), timeZoneID: "Australia/Perth"),
    City(name: NSLocalizedString("city.philadelphia", comment: ""), timeZoneID: "America/New_York"),
    City(name: NSLocalizedString("city.phoenix", comment: ""), timeZoneID: "America/Phoenix"),
    City(name: NSLocalizedString("city.phnom_penh", comment: ""), timeZoneID: "Asia/Phnom_Penh"),
    City(name: NSLocalizedString("city.porto", comment: ""), timeZoneID: "Europe/Lisbon"),
    City(name: NSLocalizedString("city.prague", comment: ""), timeZoneID: "Europe/Prague"),
    // Q
    City(name: NSLocalizedString("city.quebec_city", comment: ""), timeZoneID: "America/Toronto"),
    City(name: NSLocalizedString("city.quito", comment: ""), timeZoneID: "America/Guayaquil"),
    // R
    City(name: NSLocalizedString("city.reykjavik", comment: ""), timeZoneID: "Atlantic/Reykjavik"),
    City(name: NSLocalizedString("city.riga", comment: ""), timeZoneID: "Europe/Riga"),
    City(name: NSLocalizedString("city.riyadh", comment: ""), timeZoneID: "Asia/Riyadh"),
    City(name: NSLocalizedString("city.rome", comment: ""), timeZoneID: "Europe/Rome"),
    // S
    City(name: NSLocalizedString("city.san_diego", comment: ""), timeZoneID: "America/Los_Angeles"),
    City(name: NSLocalizedString("city.san_francisco", comment: ""), timeZoneID: "America/Los_Angeles"),
    City(name: NSLocalizedString("city.san_juan", comment: ""), timeZoneID: "America/Puerto_Rico"),
    City(name: NSLocalizedString("city.san_salvador", comment: ""), timeZoneID: "America/El_Salvador"),
    City(name: NSLocalizedString("city.santiago", comment: ""), timeZoneID: "America/Santiago"),
    City(name: NSLocalizedString("city.santo_domingo", comment: ""), timeZoneID: "America/Santo_Domingo"),
    City(name: NSLocalizedString("city.sao_paulo", comment: ""), timeZoneID: "America/Sao_Paulo"),
    City(name: NSLocalizedString("city.seattle", comment: ""), timeZoneID: "America/Los_Angeles"),
    City(name: NSLocalizedString("city.seoul", comment: ""), timeZoneID: "Asia/Seoul"),
    City(name: NSLocalizedString("city.shanghai", comment: ""), timeZoneID: "Asia/Shanghai"),
    City(name: NSLocalizedString("city.shenzhen", comment: ""), timeZoneID: "Asia/Shanghai"),
    City(name: NSLocalizedString("city.singapore", comment: ""), timeZoneID: "Asia/Singapore"),
    City(name: NSLocalizedString("city.sofia", comment: ""), timeZoneID: "Europe/Sofia"),
    City(name: NSLocalizedString("city.stockholm", comment: ""), timeZoneID: "Europe/Stockholm"),
    City(name: NSLocalizedString("city.suva", comment: ""), timeZoneID: "Pacific/Fiji"),
    City(name: NSLocalizedString("city.sydney", comment: ""), timeZoneID: "Australia/Sydney"),
    // T
    City(name: NSLocalizedString("city.taipei", comment: ""), timeZoneID: "Asia/Taipei"),
    City(name: NSLocalizedString("city.tallinn", comment: ""), timeZoneID: "Europe/Tallinn"),
    City(name: NSLocalizedString("city.tashkent", comment: ""), timeZoneID: "Asia/Tashkent"),
    City(name: NSLocalizedString("city.tbilisi", comment: ""), timeZoneID: "Asia/Tbilisi"),
    City(name: NSLocalizedString("city.tehran", comment: ""), timeZoneID: "Asia/Tehran"),
    City(name: NSLocalizedString("city.tel_aviv", comment: ""), timeZoneID: "Asia/Jerusalem"),
    City(name: NSLocalizedString("city.tokyo", comment: ""), timeZoneID: "Asia/Tokyo"),
    City(name: NSLocalizedString("city.toronto", comment: ""), timeZoneID: "America/Toronto"),
    // U
    City(name: NSLocalizedString("city.ulaanbaatar", comment: ""), timeZoneID: "Asia/Ulaanbaatar"),
    // V
    City(name: NSLocalizedString("city.valletta", comment: ""), timeZoneID: "Europe/Malta"),
    City(name: NSLocalizedString("city.vancouver", comment: ""), timeZoneID: "America/Vancouver"),
    City(name: NSLocalizedString("city.vienna", comment: ""), timeZoneID: "Europe/Vienna"),
    City(name: NSLocalizedString("city.vientiane", comment: ""), timeZoneID: "Asia/Vientiane"),
    City(name: NSLocalizedString("city.vilnius", comment: ""), timeZoneID: "Europe/Vilnius"),
    // W
    City(name: NSLocalizedString("city.warsaw", comment: ""), timeZoneID: "Europe/Warsaw"),
    City(name: NSLocalizedString("city.washington", comment: ""), timeZoneID: "America/New_York"),
    City(name: NSLocalizedString("city.wellington", comment: ""), timeZoneID: "Pacific/Auckland"),
    City(name: NSLocalizedString("city.winnipeg", comment: ""), timeZoneID: "America/Winnipeg"),
    // Y
    City(name: NSLocalizedString("city.yangon", comment: ""), timeZoneID: "Asia/Yangon"),
    City(name: NSLocalizedString("city.yaounde", comment: ""), timeZoneID: "Africa/Douala"),
    // Z
    City(name: NSLocalizedString("city.zagreb", comment: ""), timeZoneID: "Europe/Zagreb"),
    City(name: NSLocalizedString("city.zurich", comment: ""), timeZoneID: "Europe/Zurich")
]
