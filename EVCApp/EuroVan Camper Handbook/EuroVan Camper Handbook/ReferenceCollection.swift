//
//  ReferenceCollection.swift
//  EuroVan Camper Handbook
//
//  Created by Mike Laursen on 9/26/18.
//  Copyright © 2018 Appamajigger. All rights reserved.
//

import Foundation

struct ReferenceCollection {
    let manuals: Array<Reference>
    let sites: Array<Reference>
    
    init() {
        // TODO Use the localized reference names.
        
        var manuals = Array<Reference>()
        manuals.append(Reference(name: "1995 EuroVan Camper", url: URL(string: "https://winnebagoind.com/resources/manuals/pdfs/Operator1995/95EuroVan.pdf")!))
        manuals.append(Reference(name: "1995 EuroVan Camper (Canadian)", url: URL(string: "https://winnebagoind.com/resources/manuals/pdfs/Operator1995/95EuroVanCanadian.pdf")!))
        manuals.append(Reference(name: "1997 EuroVan Camper", url: URL(string: "https://winnebagoind.com/resources/manuals/pdfs/Operator1997/97Eurovan.pdf")!))
        manuals.append(Reference(name: "2002 EuroVan Camper", url: URL(string: "https://winnebagoind.com/resources/manuals/pdfs/Operator2002/02Eurovan.pdf")!))
        self.manuals = manuals
        
        var sites = Array<Reference>()
        sites.append(Reference(name: "Eurovan Rescue", url: URL(string: "http://www.eurovanrescue.com")!))
        self.sites = sites;
    }
}
