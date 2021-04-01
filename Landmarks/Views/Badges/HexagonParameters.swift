//
//  HexagonParameters.swift
//  Landmarks
//
//  Created by Steve Mitchell on 4/1/21.
//

import CoreGraphics


struct HexagonParameters {

    struct Segment {

        let line: CGPoint

        let curve: CGPoint

        let control: CGPoint

    }


    static let adjustment: CGFloat = 0.085
    // Points representing a hexagon. This part of the IOS tutorial was poorly done. Far too many magic numbers and zero explanation as to how vectors work.
    // To make a vector image, we'll first create a Path and moveTo (moving the pencil in-air) to the top-right of a hexagon in a virtual 100*100 canvas
    // then for each segment, we'll addLine to draw a line to where the corner curve starts. segment.line is the endpoint of the line
    // we'll make a short line to where the curve ends. segment.curve is the endpoint of the curve.
    // This draws a path counter-clockwise, that sort of looks like a hexagon, but with flat corners.
    //
    // We should then scale and offset, etc. so that the hexagon looks correctly proportioned.
    // Then, we change the short lines to curves, using the existing endpoints and the segment.control point determines the curve shape.
    // Scale factor + adjustment + xOffset are still poorly separated concerns and it's not clear what effect each has.
    // also, the control points are not properly calculated to create a mooth curve (only the top and bottom points are set correctly)

    static let segments = [

        Segment(
            line:    CGPoint(x: 0.60, y: 0.05),
            curve:   CGPoint(x: 0.40, y: 0.05),
            control: CGPoint(x: 0.50, y: 0.00)
        ),
        Segment(
            line:    CGPoint(x: 0.05, y: 0.20 + adjustment),
            curve:   CGPoint(x: 0.00, y: 0.30 + adjustment),
            control: CGPoint(x: 0.00, y: 0.25 + adjustment)
        ),
        Segment(
            line:    CGPoint(x: 0.00, y: 0.70 - adjustment),
            curve:   CGPoint(x: 0.05, y: 0.80 - adjustment),
            control: CGPoint(x: 0.00, y: 0.75 - adjustment)
        ),
        Segment(
            line:    CGPoint(x: 0.40, y: 0.95),
            curve:   CGPoint(x: 0.60, y: 0.95),
            control: CGPoint(x: 0.50, y: 1.00)
        ),
        Segment(
            line:    CGPoint(x: 0.95, y: 0.80 - adjustment),
            curve:   CGPoint(x: 1.00, y: 0.70 - adjustment),
            control: CGPoint(x: 1.00, y: 0.75 - adjustment)
        ),
        Segment(
            line:    CGPoint(x: 1.00, y: 0.30 + adjustment),
            curve:   CGPoint(x: 0.95, y: 0.20 + adjustment),
            control: CGPoint(x: 1.00, y: 0.25 + adjustment)
        )
    ]

}
