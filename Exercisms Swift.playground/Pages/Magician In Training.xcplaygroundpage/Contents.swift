func getCard(at index: Int, from stack: [Int]) -> Int {
    return stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
    guard index > 0 && index < stack.count else {
        return stack
    }
    var newStack = stack
    newStack[index] = newCard
    return newStack
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
    var newStack = stack
    newStack.append(newCard)
    return newStack
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
    guard index > 0 && index < stack.count else {
            return stack
        }
    var newStack = stack
    newStack.remove(at: index)
    return newStack
}

func removeTopCard(_ stack: [Int]) -> [Int] {
    guard stack.count > 0 else{
        return stack
    }
    var newStack = stack
    newStack.remove(at: stack.count - 1)
    return newStack
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
    var newStack = stack
    newStack.insert(newCard, at: 0)
    return newStack
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
    var newStack = stack
    newStack.remove(at: 0)
    return newStack
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
    if stack.count == size {
        return true
    }
    return false
}

func evenCardCount(_ stack: [Int]) -> Int {
    var n = 0
    for i in 0 ... stack.count - 1 {
        if stack[i] % 2 == 0 {
            n+=1
        }
    }
    return n
}

