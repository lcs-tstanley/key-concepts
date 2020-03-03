//: [Previous](@previous)
//: # Exercise - Loops and Conditionals
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Exercise
 
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image (the underlying image, not the planning grid):
 
 ![sloan-no-grid.png](sloan-no-grid.png "Sloan")
 ![sloan-with-grid.png](sloan-with-grid.png "Sloan")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * iteration (use of loops)
 * conditional (if statements)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
 
 Or, if you wish, you may use the color constants created below.
 
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLOR CONSTANTS
let deepOrange = Color(hue: 12, saturation: 78, brightness: 92, alpha: 100)
let lightBlue = Color(hue: 195, saturation: 63, brightness: 92, alpha: 100)
let neonGreen = Color(hue: 107, saturation: 61, brightness: 93, alpha: 100)

// HINT: Remember that all shapes have a fill and a border.
//       You can turn off the fill or border if desired.

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

canvas.fillColor = deepOrange

canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// Make blue rectangles
canvas.fillColor = lightBlue

canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true

for rectanglePosition in stride(from: 0, to: 350, by: 100) {
    canvas.drawRectangle(at: Point(x: rectanglePosition, y: 0), width: 50, height: 350)
}

// Make green rectangles
canvas.fillColor = neonGreen

for rectanglePosition in stride(from: 50, to: 400, by: 100) {
    canvas.drawRectangle(at: Point(x: rectanglePosition, y: 50), width: 50, height: 350)
}

// Make text
let white =  Color(hue: 0, saturation: 0, brightness: 100, alpha: 100)

canvas.textColor = white
canvas.drawText(message: "sloan", at: Point(x: 150, y: 408), size: 95, kerning: 0.0)

canvas.drawText(message: "saturday", at: Point(x: 17, y: 545), size: 10, kerning: 0.0)
