struct Size {
    var width = 80
    var height = 60
    
    mutating func resize(newWidth: Int, newHeight: Int) {
        width = newWidth
        height = newHeight
    }
}

struct Position {
    var x = 0
    var y = 0
    
    mutating func moveTo(newX: Int, newY: Int){
        x = newX
        y = newY
    }
}

class Window {
    var title : String = "New Window"
    let screenSize = Size(width: 800, height: 600)
    var size = Size()
    var position = Position()
    var contents : String? = nil
    
    func resize(to: Size) {
        var reSize = to
        
        if to.height < 1 && to.width < 1 {
            size.height = 1
            size.width = 1
            return
        }
        
        if to.height < 1 {
            reSize.height = 1
        }
        
        if to.width < 1 {
            reSize.width = 1
        }
        let maxH = screenSize.height - position.y
        let maxW = screenSize.width - position.x
        
        if maxH - reSize.height < 0 {
            size.height = maxH
        } else {
            size.height = to.height
        }
        if maxW - reSize.width < 0 {
            size.width = maxW
        } else {
            size.width = to.width
        }
        
        
    }
    
    func move(to: Position) {
        guard to.y >= 0 && to.x >= 0 else { return }
        
        if ((to.x + size.width) > screenSize.width) {
            position.x = screenSize.width - size.width
        } else {
            position.x = to.x
        }
        
        if ((to.y + size.height) > screenSize.height) {
            position.y = screenSize.height - size.height
        } else {
            position.y = to.y
        }
    }
    
    func update(title: String) {
        self.title = title
    }
    
    func update(text: String?) {
        self.contents = text
    }
    
    func display() -> String {
        return "\(title)\nPosition: (\(position.x), \(position.y)), Size: (\(size.width) x \(size.height))\n\(contents ?? "[This window intentionally left blank]")\n"
    }
}
let mainWindow: Window = {
    let window = Window()
    window.title = "Main Window"
    window.size = Size(width: 400, height: 300)
    window.position = Position(x: 100, y: 100)
    window.contents = "This is the main window"
    return window
}()


