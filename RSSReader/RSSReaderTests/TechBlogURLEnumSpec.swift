//
//  TechBlogURLEnumSpec.swift
//  RSSReader
//
//  Created by 福島 聖 on 2014/06/21.
//  Copyright (c) 2014年 fukushima takashi. All rights reserved.
//

import Quick
import Nimble
import RSSReader

class TechBlogURLEnumSpec: QuickSpec{
    override func spec(){
        describe("the enum items below"){
            it("has EndItem"){
                expect(TechBlogURL.EndItem.name()).to.equal("")
            }
            it("has blank URL of EndItem"){
                expect(TechBlogURL.EndItem.URL()).to.equal("")
            }
        }
    }
}
