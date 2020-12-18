//
//  weatherBarApp.swift
//  weatherBar
//
//  Created by rickey liao on 2020/12/18.
//

import SwiftUI

@main
struct weatherBarApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        Settings{
            Group{}
        }
    }
}

class AppDelegate: NSObject,NSApplicationDelegate{
    var popover = NSPopover.init()
    var statusBarItem: NSStatusItem?
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        let contentView = ContentView()
        
        popover.behavior = .transient
        popover.animates = false
        popover.contentViewController = NSViewController()
        popover.contentViewController?.view = NSHostingView(rootView: contentView)
        
        statusBarItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        statusBarItem?.button?.title = "BTL"
        statusBarItem?.button?.action = #selector(AppDelegate.togglePopover(_:))
//        statusBarItem?.button?.image
        
        
    }
    
    @objc func togglePopover(_ sender:AnyObject?){
        if popover.isShown{
            closePopover(sender)
        }else{
            showPopover(sender)
        }
    }
    
    @objc func showPopover(_ sender: AnyObject?){
        if let button = statusBarItem?.button{
            popover.show(relativeTo: button.bounds, of: button, preferredEdge: NSRectEdge.minY)
        }
    }
    
    @objc func closePopover(_ sender: AnyObject?){
        popover.performClose(sender)
    }
    
}
