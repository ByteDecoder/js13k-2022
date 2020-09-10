package music;

class ReverseArrayKeyValueIterator<T> {
	final arr:Array<T>;
	var i:Int;

	public inline function new(arr:Array<T>) {
		this.arr = arr;
		this.i = this.arr.length - 1; 
	}

	public inline function hasNext() return i > -1;
	public inline function next() {
		return {value: arr[i], key: i--};
	}

	public static inline function iterateReversed<T>(arr:Array<T>) {
		return new ReverseArrayKeyValueIterator(arr);
	}
}