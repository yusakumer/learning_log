// 「01 配列と条件分岐：合格者を数える」の解答をここに書きます。
const scores = [72, 58, 90, 64, 41];

let passers = 0;

for(const score of scores) {
    if (score >= 60) {
        passers += 1;
    }
}

console.log("合格者:" + passers + "人")