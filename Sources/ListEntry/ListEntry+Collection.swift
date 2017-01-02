/*
 * Copyright 2017 Tris Foundation and the project authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License
 *
 * See LICENSE.txt in the project root for license information
 * See CONTRIBUTORS.txt for the list of the project authors
 */

import Foundation

extension ListEntry: BidirectionalCollection {
    public typealias Index = UnsafeMutablePointer<ListEntry<T>>
    public var startIndex: Index {
        var head = self
        return head.next
    }

    public var endIndex: Index {
        var head = self
        return head.originalPointer
    }

    public subscript(position: Index) -> UnsafeMutablePointer<ListEntry<T>> {
        return position
    }

    public func index(after index: Index) -> Index {
        return index.pointee.next
    }

    public func index(before index: Index) -> Index {
        return index.pointee.prev
    }
}
