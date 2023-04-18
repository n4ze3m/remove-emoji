///This regular expression matches any non-ASCII character (i.e., any character with a Unicode code point greater than 127),
/// as well as any Unicode surrogate pair that represents an emoji character.
///  The third alternative, \uD83E[\uDD10-\uDDFF], matches a range of newly added emojis that don't
/// fit into the regular \uD83C range.
var r = '[^\x00-\x7F]|[\uD83C-\uDBFF][\uDC00-\uDFFF]|\uD83E[\uDD10-\uDDFF]';
