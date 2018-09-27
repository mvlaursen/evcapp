//
//  ReferenceCollection.swift
//  EuroVan Camper Handbook
//
//  Created by Mike Laursen on 9/26/18.
//  Copyright © 2018 Appamajigger. All rights reserved.
//

import Foundation

struct ReferenceCollection {
    static let shared = ReferenceCollection()
    
    let manuals: Array<Reference>
    let sites: Array<Reference>
    
    private init() {        
        var manuals = Array<Reference>()
        manuals.append(Reference(name: NSLocalizedString("1995EVC", value: "1995 EuroVan Camper", comment: ""), url: URL(string: "https://winnebagoind.com/resources/manuals/pdfs/Operator1995/95EuroVan.pdf")!))
        manuals.append(Reference(name: NSLocalizedString("1995EVC-CA", value: "1995 EuroVan Camper (Canadian)", comment: ""), url: URL(string: "https://winnebagoind.com/resources/manuals/pdfs/Operator1995/95EuroVanCanadian.pdf")!))
        manuals.append(Reference(name: NSLocalizedString("1997EVC", value: "1997 EuroVan Camper", comment: ""), url: URL(string: "https://winnebagoind.com/resources/manuals/pdfs/Operator1997/97Eurovan.pdf")!))
        manuals.append(Reference(name: NSLocalizedString("2002EVC", value: "2002 EuroVan Camper", comment: ""), url: URL(string: "https://winnebagoind.com/resources/manuals/pdfs/Operator2002/02Eurovan.pdf")!))
        self.manuals = manuals
        
        var sites = Array<Reference>()
        sites.append(Reference(name: NSLocalizedString("EVCRescue", value: "Eurovan Rescue", comment: ""), url: URL(string: "http://www.eurovanrescue.com")!))
        self.sites = sites;
    }
}
