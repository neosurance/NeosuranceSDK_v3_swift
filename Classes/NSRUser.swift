//
//  NSRUser.swift
//  NSR SDK
//
//  Created by ok_neosurance on October 2020.
//

import Foundation
import UIKit

class NSRUser: NSObject{
    
    var code: String!
    var email: String!
    var firstname: String!
    var lastname: String!
    var mobile: String!
    var fiscalCode: String!
    var gender: String!
    var birthday: Date!
    var address: String!
    var zipCode: String!
    var city: String!
    var stateProvince: String!
    var country: String!
    var extra: NSDictionary!
    var locals: NSDictionary!
    
    override init(){
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initWithDict(dict: NSDictionary)->NSRUser{
        
        if(dict.object(forKey: "code") != nil) {
            self.code = (dict.object(forKey:"code") as! String)
        }
        if(dict.object(forKey:"email") != nil) {
            self.email = (dict.object(forKey:"email") as! String)
        }
        if(dict.object(forKey:"firstname") != nil) {
            self.firstname = (dict.object(forKey:"firstname") as! String)
        }
        if(dict.object(forKey:"lastname") != nil) {
            self.lastname = (dict.object(forKey:"lastname") as! String)
        }
        if(dict.object(forKey:"mobile") != nil) {
            self.mobile = (dict.object(forKey:"mobile") as! String)
        }
        if(dict.object(forKey:"fiscalCode") != nil) {
            self.fiscalCode = (dict.object(forKey:"fiscalCode") as! String)
        }
        if(dict.object(forKey:"gender") != nil) {
            self.gender = (dict.object(forKey:"gender") as! String)
        }
        if(dict.object(forKey:"birthday") != nil) {
            self.birthday = (dict.object(forKey:"birthday") as! Date)
        }
        if(dict.object(forKey:"address") != nil) {
            self.address = (dict.object(forKey:"address") as! String)
        }
        if(dict.object(forKey:"zipCode") != nil) {
            self.zipCode = (dict.object(forKey:"zipCode") as! String)
        }
        if(dict.object(forKey:"city") != nil) {
            self.city = (dict.object(forKey:"city") as! String)
        }
        if(dict.object(forKey:"stateProvince") != nil) {
            self.stateProvince = (dict.object(forKey:"stateProvince") as! String)
        }
        if(dict.object(forKey:"country") != nil) {
            self.country = (dict.object(forKey:"country") as! String)
        }
        if(dict.object(forKey:"extra") != nil) {
            self.extra = (dict.object(forKey:"extra") as! NSDictionary)
        }
        if(dict.object(forKey:"locals") != nil) {
            self.locals = (dict.object(forKey:"locals") as! NSDictionary)
        }
        
        return self
        
    }
    
    func toDict(withLocals: Bool)->NSDictionary{
        
        let dict = NSMutableDictionary()
    
        
        if(self.code != nil) {
            dict.setObject(self.code ?? "", forKey: "code" as NSCopying)
        }
        if(self.email != nil) {
            dict.setObject(self.email ?? "", forKey: "email" as NSCopying)
        }
        if(self.firstname != nil) {
            dict.setObject(self.firstname ?? "", forKey: "firstname" as NSCopying)
        }
        if(self.lastname != nil) {
            dict.setObject(self.lastname ?? "", forKey: "lastname" as NSCopying)
        }
        if(self.mobile != nil) {
            dict.setObject(self.mobile ?? "", forKey: "mobile" as NSCopying)
        }
        if(self.fiscalCode != nil) {
            dict.setObject(self.fiscalCode ?? "", forKey: "fiscalCode" as NSCopying)
        }
        if(self.gender != nil) {
            dict.setObject(self.gender ?? "", forKey: "gender" as NSCopying)
        }
        if(self.birthday != nil) {
            dict.setObject(self.birthday ?? "", forKey: "birthday" as NSCopying)
        }
        if(self.address != nil) {
            dict.setObject(self.address ?? "", forKey: "address" as NSCopying)
        }
        if(self.zipCode != nil) {
            dict.setObject(self.zipCode ?? "", forKey: "zipCode" as NSCopying)
        }
        if(self.city != nil) {
            dict.setObject(self.city ?? "", forKey: "city" as NSCopying)
        }
        if(self.stateProvince != nil) {
            dict.setObject(self.stateProvince ?? "", forKey: "stateProvince" as NSCopying)
        }
        if(self.country != nil) {
            dict.setObject(self.country ?? "", forKey: "country" as NSCopying)
        }
        if(self.extra != nil) {
            dict.setObject(self.extra ?? "", forKey: "extra" as NSCopying)
        }
        if(self.locals != nil && withLocals) {
            dict.setObject(self.locals ?? "", forKey: "locals" as NSCopying)
        }
        return dict
    }
    
}
