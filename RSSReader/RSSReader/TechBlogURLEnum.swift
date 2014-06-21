//
//  TechBlogURLEnum.swift
//  CocoapodSample01
//
//  Created by 福島 聖 on 2014/06/12.
//  Copyright (c) 2014年 fukushima takashi. All rights reserved.
//

enum TechBlogURL : Int{
    case Wantedly = 0
    case DeNA,CookPad,GREE,Hatena,KAYAC,CyberAgent,dwango,LINE
    case EndItem
    
    func name()->String{
        switch self{
        case .Wantedly:
            return "Wantedly"
        case .DeNA:
            return "DeNA"
        case .CookPad:
            return "CookPad"
        case .GREE:
            return "GREE"
        case .Hatena:
            return "Hatena"
        case .KAYAC:
            return "KAYAC"
        case .CyberAgent:
            return "CyberAgent"
        case .dwango:
            return "dwango"
        case .LINE:
            return "LINE"
        case .EndItem:
            return "end"
        default:
            return String(self.toRaw())
        }
    }

    func URL()->String{
        switch self{
        case .Wantedly:
            return "https://www.wantedly.com/projects.xml"
        case .DeNA:
            return "http://engineer.dena.jp/atom.xml"
        case .CookPad:
            return "http://techlife.cookpad.com/feed"
        case .GREE:
            return "http://labs.gree.jp/blog/feed"
        case .Hatena:
            return "http://d.hatena.ne.jp/hatenatech/rss"
        case .KAYAC:
            return "http://tech.kayac.com/index.rdf"
        case .CyberAgent:
            return "http://rssblog.ameba.jp/principia-ca/rss20.xml"
        case .dwango:
            return "http://info.dwango.co.jp/rd/?feed=rss2"
        case .LINE:
            return "http://developers.linecorp.com/blog/?feed=rss2"
        case .EndItem:
            return ""
        default:
            return String(self.toRaw())
        }
    }
}