//
//  CustomTextEffect.swift
//  InvitesIntroPage
//
//  Created by Jesus Antonio Gil on 13/2/25.
//

import SwiftUI


struct TitleTextRenderer: TextRenderer, Animatable {
    var progress: CGFloat
    var animatableData: CGFloat {
        get { progress }
        set { progress = newValue }
    }
    
    
    func draw(layout: Text.Layout, in ctx: inout GraphicsContext) {
        let slices = layout.flatMap({ $0 }).flatMap({ $0 })
        
        for (index, slice) in slices.enumerated() {
            let slicesProgressIndex = CGFloat(slices.count) * progress
            let slicesProgress = max(min(slicesProgressIndex / CGFloat(index + 1), 1), 0)
            
            ctx.addFilter(.blur(radius: 5 - (5 * slicesProgress)))
            ctx.opacity = slicesProgress
            ctx.translateBy(x: 0, y: 5 - (5 * slicesProgress))
            ctx.draw(slice, options: .disablesSubpixelQuantization)
        }
    }
}
