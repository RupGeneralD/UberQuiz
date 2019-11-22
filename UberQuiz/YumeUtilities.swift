import Foundation

extension Collection {
	func combinations(of n: Int) -> [[Element]] {
		guard n > 1 else { return map { [$0] } }
		guard let x = first else { return [] }
		let xs = dropFirst()
		return xs.combinations(of: n-1).map { [x] + $0 } + xs.combinations(of: n)
	}
	
	var pairs: [(Element, Element)] {
		guard let x = first else { return [] }
		let xs = dropFirst()
		return xs.map { (x, $0) } + xs.pairs
	}
	
	var array: [Element] {
		return Array(self)
	}
}

extension Collection where Element: Comparable {
	var maxSort: Element? {
		return sorted(by: >).first
	}

	var max: Element? {
		guard var m = first else { return nil }
		forEach { if $0 > m { m = $0 } }
		return m
	}
}

extension Array {
	func divided(at k: Int) -> (ArraySlice<Element>, ArraySlice<Element>) {
		return (self[startIndex..<k], self[k..<endIndex])
	}
	
	func filterM(where p: @escaping (Element) -> [Bool]) -> [[Element]] {
		func `return`<T>(_ t: T) -> [T] { return [t] }
		func go(r: [[Element]], x: Element) -> [[Element]] {
			return p(x).flatMap { flg in r.flatMap { ys in `return`(flg ? ys + [x] : ys) }}
		}
		return reduce(`return`([]), go)
	}
}
