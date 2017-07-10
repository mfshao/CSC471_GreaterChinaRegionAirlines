//
//  Airport.swift
//  mshao Greater China Region Airline List
//
//  Created by Mingfei Shao on 3/5/17.
//  Copyright © 2017 Mingfei Shao. All rights reserved.
//

import Foundation

let airports = [
    Airport(name: "Beijing Capital International Airport",
            country: .CHN,
            iataCode: "PEK",
            icaoCode: "ZBAA",
            runway: ["18L/36R@3810m", "18R/36L@3445m", "01/19@3810m"]),
    
    Airport(name: "Chengdu Shuangliu International Airport",
            country: .CHN,
            iataCode: "CTU",
            icaoCode: "ZUUU",
            runway: ["02R/20L@3600m", "02L/20R@3600m"]),
    
    Airport(name: "Shanghai Hongqiao International Airport",
            country: .CHN,
            iataCode: "SHA",
            icaoCode: "ZSSS",
            runway: ["18L/36R@3400m", "18R/36L@3300m"]),
    
    Airport(name: "Shanghai Pudong International Airport",
            country: .CHN,
            iataCode: "PVG",
            icaoCode: "ZSPD",
            runway: ["17L/35R@4000m", "16R/34L@3800m", "17R/35L@3400m", "16L/34R@3800m"]),
    
    Airport(name: "Guangzhou Baiyun International Airport",
            country: .CHN,
            iataCode: "CAN",
            icaoCode: "ZGGG",
            runway: ["01R/19L@3600m", "02L/20R@3800m", "02R/20L@3800m"]),
    
    Airport(name: "Chongqing Jiangbei International Airport",
            country: .CHN,
            iataCode: "CKG",
            icaoCode: "ZUCK",
            runway: ["02L/20R@3200m", "02R/20L@3600m"]),
    
    Airport(name: "Hangzhou Xiaoshan International Airport",
            country: .CHN,
            iataCode: "HGH",
            icaoCode: "ZSHC",
            runway: ["07/25@3600m", "06/24@3400m"]),
    
    Airport(name: "Hohhot Baita International Airport",
            country: .CHN,
            iataCode: "HET",
            icaoCode: "ZBHH",
            runway: ["08R/26L@3600m"]),
    
    Airport(name: "Tianjin Binhai International Airport",
            country: .CHN,
            iataCode: "TSN",
            icaoCode: "ZBTJ",
            runway: ["16R/34L@3600m", "16L/34R@3400m"]),
    
    Airport(name: "Guiyang Longdongbao International Airport",
            country: .CHN,
            iataCode: "KWE",
            icaoCode: "ZUGY",
            runway: ["01/19@3200m"]),
    
    Airport(name: "Wuhan Tianhe International Airport",
            country: .CHN,
            iataCode: "WUH",
            icaoCode: "ZHHH",
            runway: ["04L/22R@3400m", "04R/22L@3600m"]),
    
    Airport(name: "Lhasa Gonggar Airport",
            country: .CHN,
            iataCode: "LXA",
            icaoCode: "ZULS",
            runway: ["09L/27R@4000m", "09R/27L@3600m"]),
    
    Airport(name: "Kunming Changshui International Airport",
            country: .CHN,
            iataCode: "KMG",
            icaoCode: "ZPPP",
            runway: ["03/21@4000m", "04/22@4500m"]),
    
    Airport(name: "Xi'an Xianyang International Airport",
            country: .CHN,
            iataCode: "XIY",
            icaoCode: "ZLXY",
            runway: ["05L/23R@3000m", "05R/23L@3800m"]),
    
    Airport(name: "Hefei Xinqiao International Airport",
            country: .CHN,
            iataCode: "HFE",
            icaoCode: "ZSOF",
            runway: ["15/33@3400m"]),
    
    Airport(name: "Nanjing Lukou International Airport",
            country: .CHN,
            iataCode: "NKG",
            icaoCode: "ZSNJ",
            runway: ["06/24@3600m", "07/25@3600m"]),
    
    Airport(name: "Ningbo Lishe International Airport",
            country: .CHN,
            iataCode: "NGB",
            icaoCode: "ZSNB",
            runway: ["13/31@3200m"]),
    
    Airport(name: "Sunan Shuofang International Airport",
            country: .CHN,
            iataCode: "WUX",
            icaoCode: "ZSWX",
            runway: ["03/21@3200m"]),
    
    Airport(name: "Taiyuan Wusu International Airport",
            country: .CHN,
            iataCode: "TYN",
            icaoCode: "ZBYN",
            runway: ["13/31@3600m"]),
    
    Airport(name: "Yancheng Nanyang International Airport",
            country: .CHN,
            iataCode: "YNZ",
            icaoCode: "ZSYN",
            runway: ["04/22@2800m"]),
    
    Airport(name: "Hong Kong International Airport",
            country: .HKG,
            iataCode: "HKG",
            icaoCode: "VHHH",
            runway: ["07R/25L@3800m", "07L/25R@3800m"]),
    
    Airport(name: "Qingdao Liuting International Airport",
            country: .CHN,
            iataCode: "TAO",
            icaoCode: "ZSQD",
            runway: ["17/35@3400m"]),
    
    Airport(name: "Shijiazhuang Zhengding International Airport",
            country: .CHN,
            iataCode: "SJW",
            icaoCode: "ZBSJ",
            runway: ["15/33@3400m"]),
    
    Airport(name: "Urumqi Diwopu International Airport",
            country: .CHN,
            iataCode: "URC",
            icaoCode: "ZWWW",
            runway: ["07/25@3600m"]),
    
    Airport(name: "Changchun Longjia International Airport",
            country: .CHN,
            iataCode: "CGQ",
            icaoCode: "ZYCC",
            runway: ["06/24@3200m"]),
    
    Airport(name: "Changsha Huanghua International Airport",
            country: .CHN,
            iataCode: "CSX",
            icaoCode: "ZGHA",
            runway: ["18/36@3200m"]),
    
    Airport(name: "Dalian Zhoushuizi International Airport",
            country: .CHN,
            iataCode: "DLC",
            icaoCode: "ZYTL",
            runway: ["10/28@3300m"]),
    
    Airport(name: "Harbin Taiping International Airport",
            country: .CHN,
            iataCode: "HRB",
            icaoCode: "ZYHB",
            runway: ["05/23@3200m"]),
    
    Airport(name: "Haikou Meilan International Airport",
            country: .CHN,
            iataCode: "HAK",
            icaoCode: "ZJHK",
            runway: ["09/27@3600m"]),
    
    Airport(name: "Incheon International Airport",
            country: .KOR,
            iataCode: "ICN",
            icaoCode: "RKSI",
            runway: ["15R/33L@3750m", "15L/33R@3750m", "16/34@4000m"]),
    
    Airport(name: "Jieyang Chaoshan International Airport",
            country: .CHN,
            iataCode: "SWA",
            icaoCode: "ZGOW",
            runway: ["04/22@2800m"]),
    
    Airport(name: "Shenyang Taoxian International Airport",
            country: .CHN,
            iataCode: "SHE",
            icaoCode: "ZYTX",
            runway: ["06/24@3200m"]),
    
    Airport(name: "Shenzhen Bao'an International Airport",
            country: .CHN,
            iataCode: "SZX",
            icaoCode: "ZGSZ",
            runway: ["15/33@3200m", "16/34@3800m"]),
    
    Airport(name: "Zhengzhou Xinzheng International Airport",
            country: .CHN,
            iataCode: "CGO",
            icaoCode: "ZHCC",
            runway: ["12R/30L@3400m", "12L/30R@3600m"]),
    
    Airport(name: "Zhuhai Jinwan Airport",
            country: .CHN,
            iataCode: "ZUH",
            icaoCode: "ZGSD",
            runway: ["05/23@4120m"]),
    
    Airport(name: "Jinan Yaoqiang International Airport",
            country: .CHN,
            iataCode: "TNA",
            icaoCode: "ZSJN",
            runway: ["01/19@3600m"]),
    
    Airport(name: "Xiamen Gaoqi International Airport",
            country: .CHN,
            iataCode: "XMN",
            icaoCode: "ZSAM",
            runway: ["05/23@3400m"]),
    
    Airport(name: "Yantai Penglai International Airport",
            country: .CHN,
            iataCode: "YNT",
            icaoCode: "ZSYT",
            runway: ["05/23@3400m"]),
    
    Airport(name: "Nanning Wuxu International Airport",
            country: .CHN,
            iataCode: "NNG",
            icaoCode: "ZGNN",
            runway: ["05/23@3200m"]),
    
    Airport(name: "Macau International Airport",
            country: .MAC,
            iataCode: "MFM",
            icaoCode: "VMMC",
            runway: ["16/34@3420m"]),
    
    Airport(name: "Fuzhou Changle International Airport",
            country: .CHN,
            iataCode: "FOC",
            icaoCode: "ZSFZ",
            runway: ["03/21@3610m"]),
    
    Airport(name: "Nanchang Changbei International Airport",
            country: .CHN,
            iataCode: "KHN",
            icaoCode: "ZSCN",
            runway: ["03/21@3400m"]),
    
    Airport(name: "Quanzhou Jinjiang International Airport",
            country: .CHN,
            iataCode: "JJN",
            icaoCode: "ZSQZ",
            runway: ["03/21@2600m"]),
    
    Airport(name: "Wuyishan Airport",
            country: .CHN,
            iataCode: "WUS",
            icaoCode: "ZSWY",
            runway: ["03/21@2400m"]),
    
    Airport(name: "Beijing Nanyuan Airport",
            country: .CHN,
            iataCode: "NAY",
            icaoCode: "ZBNY",
            runway: ["18/36@3200m"]),
    
    Airport(name: "Lijiang Sanyi Airport",
            country: .CHN,
            iataCode: "LJG",
            icaoCode: "ZPLJ",
            runway: ["02/20@2000m"]),
    
    Airport(name: "Taoyuan International Airport",
            country: .TWN,
            iataCode: "TPE",
            icaoCode: "RCTP",
            runway: ["05L/23R@3660m", "05R/23L@3800m"]),
    
    Airport(name: "Bangkok Suvarnabhumi Airport",
            country: .THA,
            iataCode: "BKK",
            icaoCode: "VTBS",
            runway: ["01R/19L@4000m", "01L/19R@3700m"]),
    
    Airport(name: "Ted Stevens Anchorage International Airport",
            country: .USA,
            iataCode: "ANC",
            icaoCode: "PANC",
            runway: ["7R/25L@3780m", "7L/25R@3231m", "15/33@3341m"]),
    
    Airport(name: "John F. Kennedy International Airport",
            country: .USA,
            iataCode: "JFK",
            icaoCode: "KJFK",
            runway: ["4L/22R@3682m", "4R/22L@2560m", "13L/31R@3048m", "13R/31L@4423m"]),
    
    Airport(name: "Kansai International Airport",
            country: .JPN,
            iataCode: "KIX",
            icaoCode: "RJBB",
            runway: ["06R/24L@3800m", "06L/24R@4000m"]),
    
    Airport(name: "Kaohsiung International Airport",
            country: .TWN,
            iataCode: "KHH",
            icaoCode: "RCKH",
            runway: ["09/27@3150m"]),
    
    Airport(name: "Taipei Songshan Airport",
           country: .TWN,
           iataCode: "TSA",
           icaoCode: "RCSS",
           runway: ["10/28@2605m"]),
    
    Airport(name: "Taichung International Airport",
            country: .TWN,
            iataCode: "TXG",
            icaoCode: "RCMQ",
            runway: ["18/36@3658m"]),
    
    Airport(name: "Sanya Phoenix International Airport",
            country: .CHN,
            iataCode: "SYX",
            icaoCode: "ZJSY",
            runway: ["08/26@3410m"]),
]


class Airport {
    enum Country: String {
        case CHN = "China"
        case HKG = "Hong Kong"
        case MAC = "Macau"
        case TWN = "Taiwan"
        case JPN = "Japan"
        case THA = "Thai"
        case USA = "USA"
        case KOR = "Korea"
    }
    
    var name: String
    var country: Country
    var iataCode: String
    var icaoCode: String
    var runway: [String]
    
    init(name: String, country: Country, iataCode: String, icaoCode: String, runway: [String]) {
        self.name = name
        self.country = country
        self.iataCode = iataCode
        self.icaoCode = icaoCode
        self.runway = runway
    }
    
    func toString() -> String {
        return self.iataCode + "/" + self.icaoCode + "/" + self.name.replacingOccurrences(of: " Airport", with: "", options: NSString.CompareOptions.literal, range:nil)
    }
}
