
import UIKit

class howToPlayView: UIViewController {


    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if L102Language.currentAppleLanguage() == "en" {
            label.text = """
            Object
                Roll dice for scoring combinations, and get the highest total score.
            Game Summary
            On each turn, click the animated cup to roll the dice up to three times to get the highest scoring combination for one of the 13 categories on the scoreboard. Once you have finished rolling, you must enter a score in one of the 13 boxes on the scoreboard. The game will end when all players have filled each of their 13 boxes. The player with the highest
            total score (plus any bonuses) wins.
            How to Play
            Players decides who will go first. Once the first player has filled in all 13 boxes, the mobile device is passed to the next player, and so on, until all players have filled in all boxes.
            Taking a Turn
            On your turn, you may click the cup to roll the dice up to three times, although you may stop and score after the first or second roll.
            First Roll: Roll all five dice. Click any dice you would like to keep. You may stop and score now, or roll again. Second Roll: After selecting keepers, click the cup again to roll the remaining dice. You don’t need to declare which combination you are going for, you may change your mind after any roll. You may stop and score after your second roll, or roll a third time.
            Third (Final) Roll: Roll any remaining dice not selected as keepers. After your third roll, you must fill in a box on the scoreboard with either a score or a zero. After you fill in a box, your turn is over.
            Scoring
            When you have finished rolling, decide which box to fill in on the scoreboard. For each game, there is a column of 13 boxes. You must fill in a box on each turn; if you can’t
            (or don’t want to) enter a score, you must enter a zero. Fill in each box only once, in any order, depending on the best scoring option.
            The scoreboard is divided into an Upper Section and a Lower Section. Scoring combinations for each section are explained in detail below.
            To score the Upper Section, add only the dice with the same number and enter the total in the appropriate box.
            Your goal in the Upper Section is to score a total of at least 63 points, in order to earn a 35 point bonus. The bonus points are based on scoring three of each number. However, you may earn the bonus with any combination of scores totaling 63 points or more.
            3 of a kind: Score in this box only if the dice include 3 or more of the same number. 4 of a kind: Score in this box only if the dice include 4 or more of the same number. Full House: Score in this box only if the dice show three of one number and two of a different number. Any full house is worth 25 points. Small Straight: Score in this box only if the dice show any sequence of four numbers. Any small straight is worth 30 points.
            Large Straight: Score in this box only if the dice show any sequence of five numbers. Any large straight is worth 40 points.
            YAHTZEE: Score in this box only if the dice show five of the same number (5 of a kind). The first YAHTZEE you enter in the YAHTZEE box is worth 50 points. Each
            additional YAHTZEE you roll, you earn a bonus (see YAHTZEE BONUS below). Chance: Score the total of any five dice in this box. This catch-all category comes in handy when you can’t (or don’t want to) score in another category, and don’t want to enter a zero.
            YAHTZEE Bonus: If you roll a YAHTZEE and you have already filled in the YAHTZEE box with a 50, you get a 100 point bonus. Place an “x” in the YAHTZEE BONUS box on the scoreboard. Then fill in one of the 13 boxes on the scoreboard according to the JOKER RULES (see below). As long as you’ve scored 50 in the Yahtzee box, you get a YAHTZEE bonus for each additional YAHTZEE you roll (there is no limit).
            If you roll a YAHTZEE and have already entered a zero in the YAHTZEE box, you do
            not earn a YAHTZEE bonus; however, you must fill in one of the 13 boxes on your scoreboard according to the JOKER RULES (below).
            JOKER RULES: Score the total of all five dice in the appropriate Upper Section box. If this box has already been filled in, score as follow in any Lower Section box.
            3 of a kind: Total of all 5 dice 4 of a kind: Total of all 5 dice Full House: 25 points Small Straight: 30 points Large Straight: 40 points Chance: Total of all 5 dice
            If the appropriate Upper Section box and all Lower Section boxes are filled in, you must enter a zero in any Upper Section box.
            Ending a Game
            Once each player has filled in all 13 category boxes, the
            game ends. The application will automatically total the scores of each player and declare a winner.
            How to Win
            After the scores are totaled, the player with the highest Grand Total wins the game.
            """
        }
        if L102Language.currentAppleLanguage() == "ja" {
            label.text = """
            オブジェクト
            する必要があります。 す 組み合わせをスコアリング べてのプレイヤーが
            するためにサイコロを振っ
            て、最高の総合スコアを得
            る。
            ゲームの概要
            それぞれのターンで、アニ メーションカップをクリッ クしてサイコロを最大3回 転がして、スコアボード上 の13のカテゴリのうちの1 つのスコアリングの組み合 わせを最高にします。 ロ ーリングが終了したら、ス コアボードの13個のボッ クスの1つにスコアを入力
            それらの13個のボックス のそれぞれを埋める。 最 初のプレーヤーがすべての 13個のボックスに入ったら 、すべてのプレーヤーがす べてのボックスを埋めるま で、モバイルデバイスは次 のプレーヤーに移動します 。
            遊び方
            プレーヤーは誰が最初に行 くかを決めます。 ターン が変わると、モバイルデバ イスはプレーヤーからプレ ーヤーに渡されます。
            ターンを取る
            回目にロールしたりするこ とができます。 第3(最終)ロール:キー パーとして選択されていな い残りのダイスをロールす る。 3回目のロールの後、 スコアボード上のボックス にスコアまたはゼロを記入 する必要があります。 箱 に記入したら、あなたの番 は終わった。
            あなたのターンでは、カッ プをクリックしてサイコロ を3回まで回すことができ ますが、1回目または2回 目のロールバック後に停止 してスコアリングすること もできます。 最初のロール:5つのサイ コロをすべてロールする。 あなたが保持したいサイコ ロをクリックしてください 。 今停止してスコアを付 けたり、ロールバックした スコアボードに記入するボ
            りすることができます。 2番目のロール:キーパー を選択した後、もう一度カ ップをクリックして残りの は各ターンの箱を記入しな ダイスをロールします。 ければなりません。 スコ あなたはあなたが行ってい アを入力できない(または る組み合わせを宣言する必 したくない)場合は、ゼロ 要はありません、あなたは を入力する必要があります 任意のロールの後にあなた 。 最良のスコアリングオ の心を変更することができ プションに応じて、各ボッ ます。 2回目のロールを止 クスを任意の順序で1回だ めてスコアをつけたり、3 け入力します。
            スコアリング
            ローリングが終わったら、
            ックスを決めます。 各ゲ ームには13個のボックス の列があります。 あなた
            スコアボードは、上部セク  上段のあなたのゴールは、
            ションと下部セクションに 分かれています。 各セク ションのスコアリングの組 み合わせについては、後で 詳しく説明します。
            35ポイントのボーナスを 獲得するために合計で少な くとも63ポイントを獲得 することです。 ボーナス ポイントは、各番号の3つ の得点に基づいています。 ただし、合計63ポイント 以上の組み合わせでボーナ スを獲得することができま す。
            上段にスコアを付けるには
            、同じ番号のダイスのみを
            追加し、該当するボックス
            に合計を入力します。
            3種類の場合:サイコロが 同じ数の3以上を含む場合 にのみ、このボックスに スコアを入れます。 4種類:この欄には、同じ 数の4以上のサイコロが含 まれている場合にのみス コアを付けます。 フルハウス:このボック スのスコアは、サイコロ が3つの数字のうちの3つ と異なる数字の2つを表示 する場合にのみ得点しま す。 フルハウスは25ポイ ントの価値があります。 スモールストレート:こ のボックスには、ダイス に4つの数字の連続が表示 されている場合にのみス コアを付けます。 小さな ストレートは30ポイント の価値があります。
            Large Straight:このボック スには、サイコロが5つの 数字のシーケンスを表示
            する場合にのみスコアを 付けます。 大きなストレ ートは40ポイントの価値 があります。 YAHTZEE:このボックスで は、サイコロが同じ数字 (5種類)のうちの5つを 表示する場合にのみスコ アを付けます。 最初の YAHTZEEは、YAHTZEEボッ クスに入力すると50ポイ ントの価値があります。 あなたが追加したYAHTZEE を1枚追加すると、ボーナ スを得ることができます (下のYAHTZEEボーナスを 参照)。 チャンス:このボックス に5つのサイコロの合計を スコアします。 このキャ ッチオールカテゴリは、 別のカテゴリにスコアを つけることができない( またはしたくない)とき に役立ちます。また、ゼ ロを入力する必要もあり ません。
            YAHTZEEボーナス: YAHTZEEをロールし、すで にYAHTZEEボックスに50を 入力している場合は、100 ポイントのボーナスを得 ることができます。スコ アボード上のYAHTZEE BONUSボックスに「x」を 置きます。次に、ジョー カールール(下記参照) に従って、スコアボード 上の13個のボックスの1つ を記入します。 あなたがYahtzeeボックス で50点を獲得している限 り、あなたがロールする 追加のYAHTZEEごとに YAHTZEEボーナスを得ます (制限はありません)。 YAHTZEEを転がして YAHTZEEボックスにゼロを 入力した場合、YAHTZEEボ ーナスは得られません。 ただし、ジョーカールー ル(下記)に従ってスコ アボード上の13のボック
            スの1つを記入する必要が あります。
            ジョーカールール:適切 なアッパーセクションボ ックスに5つのサイコロの 合計をスコアリングしま す。このボックスがすで に入力されている場合は 、下段のボックスに以下 のように記入してくださ い。
            3種類のダイス:合計5つ のダイスの合計 種類の4つ:すべての5つ のサイコロの合計 フルハウス:25ポイント スモールストレート:30 ポイント 大ストレート:40ポイン ト チャンス:5つのサイコロ の合計
            適切なボックスとすべて
            のボックスが入力されて
            いる場合は、ボックスに
            ゼロを入力する必要があ
            ります。
            ゲームを終了する 一度各プレイヤーが13の カテゴリーボックスをす べて記入すると、ゲーム は終了します。アプリケ ーションは自動的に各プ レイヤーのスコアを集計 し、勝者を宣言します。
            勝つ方法
            得点が合計された後、総
            得点が最も高いプレーヤ
            ーがゲームに勝利します
            """
        }
        if L102Language.currentAppleLanguage() == "zh-Hans" {
            label.text = """
            目的
            掷骰子得分组合，并获得最 高的总分。
            游戏摘要
            在每个回合中，单击动画杯 以掷骰子最多三次，以获得 记分牌上13个类别之一的 最高得分组合。 完成滚动 后，您必须在记分板上的 13个框之一中输入分数。 当所有玩家都填满他们的 13个盒子时，游戏将结束
            。 总得分最高(加上任何 奖金)的玩家获胜。
            怎么玩
            玩家决定谁先出发。 最初
            のプレーヤーがすべての13 个のボックスに入ったら， すべてのプレーヤーがすべ てのボックスを埋めるまで ，モバイルデバイスは次の
            プレーヤーに移动します。 转弯
            在你的回合中，你可以点击 杯子掷骰子三次，尽管你可
            以在第一次或第二次滚动后 停下来并得分。 第一卷:滚动所有五个骰
            子。 点击你想要保留的任 何骰子。 您可以立即停止 并获得分数，或者再次滚
            动。
            第二次滚动:选择保持器
            后，再次单击杯子以滚动 剩余的骰子。 你不需要声
            明你想要的组合，你可以 在任何滚动之后改变主意
            。 您可以在第二次滚动后 停止并得分，或者第三次
            滚动。
            第三(最终)掷骰:掷出
            未被选为守门员的剩余骰
            子。 第三次滚动后，您必
            须在记分牌上填写一个得 分或零的框。 填完一个方
            框后，轮到你了。
            评分
            完成滚动后，决定在记分板
            上填写哪个框。 对于每个
            游戏，有一个13列的列。
            你必须在每个回合处填上一 个盒子; 如果您不能(或不
            想)输入分数，则必须输入 零。 根据最佳评分选项，
            按任意顺序仅填写每个方框 一次。
            记分牌分为上部和下部。 下面详细解释每个部分的评 分组合。
            要对上半部分进行评分，请
            仅添加具有相同编号的骰子
            ，并在相应的框中输入总数 。
            你在上段的目标是总得分至
            少63分，以获得35分的奖
            金。 奖励积分基于每个数 字中的三个得分。 但是，
            您可以通过任何总分为63
            分或以上的分数组合获得奖 金。
            三种:只有当骰子包含三
            个或更多相同数字时，才 能在此框中打分。
            四种:只有当骰子包含四
            个或更多相同数字时才在 此框中打分。
            满屋:只有当骰子显示一 个数字中的三个和不同数
            字中的两个时，才能在此
            框中得分。 任何满屋都值 25分。 小直:只有当骰子显示任
            意四个数字的序列时才在 此框中得分。 任何小直道
            都值三十分。 大直:仅当骰子显示五个 数字的任何序列时才在此
            框中得分。 任何大型直道 都值得一试。
            YAHTZEE:只有当骰子显示
            五个相同的数字(5种)时 ，才能在此框中打分。 你 进入YAHTZEE盒子的第一个
            YAHTZEE值得五十分。 每滚 动YAHTZEE，你都会获得奖
            金(见下面的YAHTZEE BONUS)。
            机会:在这个方框中得分 任意五个骰子。 当你不能
            (或不想)在另一个类别 中得分，并且不想输入零 时，这个包罗万象的类别 会派上用场。
            YAHTZEE红利:如果你滚动 一个YAHTZEE并且你已经用 分装满了YAHTZEE盒子，你
            将得到100分奖励。 在记分 牌的YAHTZEE BONUS框中放
            置一个“x”。 然后根据 JOKER RULES填写记分牌上
            的十三个方框之一(见下 文)。
            只要你在Yahtzee盒中得到 分，你就可以获得YAHTZEE
            奖金，每增加一个YAHTZEE (没有限制)。 如果你滚动YAHTZEE并且已
            经在YAHTZEE框中输入了零
            ，那么你就不会获得
            YAHTZEE奖金; 但是，您必
            须根据JOKER RULES(下面
            )填写记分牌上的13个方 框中的一个。
            JOKER规则:在相应的
            Upper Section框中对所有五
            个骰子的总数进行评分。
            如果此框已填写，则在任
            何“下部”框中得分如下 。
            三种:总共五个骰子 四种:总共五个骰子
            满屋:二十五分 小直:三十分
            大直:四十分
            机会:所有五个骰子的总 数
            如果填写了相应的“上部”
            框和所有“下部”框，则必
            须在任何“上部”框中输入 零。
            结束游戏 一旦每个玩家填写了所有 13个类别框，游戏就结束
            了。 该应用程序将自动累 计每个玩家的分数并宣布获 胜者。
            如何取胜 在总计得分之后，具有最高
            总计的玩家赢得游戏。
            """
        }
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
