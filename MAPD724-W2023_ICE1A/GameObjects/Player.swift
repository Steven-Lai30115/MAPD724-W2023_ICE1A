import GameplayKit
import SpriteKit

class Player: GameObject {
    init() {
        super.init(imageString: "plane", initialScale: 2.0)
        Start()
        Reset()
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder) has not been implemented")
    }
    
    override func Start() {
        zPosition = 2
    }
    
    override func Update() {
        CheckBounds()
    }
    
    override func Reset() {
        position.x = 0
        position.y = -495
    }
    
    override func CheckBounds() {
        if position.x <= -255 {
            position.x = -255
        }
        
        if position.x >= 255 {
            position.x = 255
        }
    }
    
    func TouchMove(newPos: CGPoint) {
        position = newPos
    }
}
