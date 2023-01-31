import UIKit

/*
 PILHAS : São um tipo de estrutura de dados, do tipo LIFO(  last in, first out. Ou seja, ultimo a entrar, primeiro a sair).
 
#Operações de pilhas:
 
 #push(): Insere um elemento no top
 #pop(): Remove o elemento do top
 #top(): Observa o elemento do top
 #isEmpty: Checa se uma pilha esta vazia
 
 */

//Implementando uma pilha:

struct stack<Element> {
    private var arrayStack = [Element]()
    
    mutating func push(element: Element) {
        arrayStack.append(element)
    }
    
    mutating func pop() {
        arrayStack.popLast()
    }
    
    mutating func seeTop() -> Any {
        return arrayStack.last ?? "Pilha Vazia"
    }
    
    var isEmpty: Bool {
        return arrayStack.isEmpty
    }
}

var stackteste = stack<Any>()

print(stackteste.isEmpty)
stackteste.push(element: 1)
stackteste.push(element: 10)
stackteste.push(element: 23)
print(stackteste)
print(stackteste.isEmpty)

print(stackteste.seeTop())
stackteste.pop()
print(stackteste.seeTop())
