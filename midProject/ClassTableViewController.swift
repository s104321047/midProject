//
//  ClassTableViewController.swift
//  midProject
//
//  Created by csie on 2018/5/3.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class ClassTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //navigationController?.navigationBar.prefersLargeTitles = true
        UIApplication.shared.statusBarStyle = .lightContent
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        //navigationItem.largeTitleDisplayMode = .never
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    var tag:Int = 0
    var plantSets0:[plantSet] = [
        plantSet(CName: "油菜", SName: "Brassica campestris L.", AName: "蕓苔(唐本草)、 、青菜、小白菜、江門白菜", location: "彰化縣栽培最盛，台中、苗栗、嘉義、雲林、南投亦栽培不少。", characteristic: "油菜為十字花科蕓苔屬越年生或一年生草本植物，莖高約 1 公尺左右，開花時多分枝，顏色有綠色和紫色，視品種而定。葉脈明顯，葉端成圓形，葉片長約 20~30 公分，視肥力和水份充足與否而定。十字花序，多為黃色，是蜜蜂很好的蜜源植物。果實為短角果，由兩片莢殼組成，中間有一隔膜，兩側各有 10 個左有的種子；種子的顏色呈深紅色或黑色。台灣的油菜花季約在十二月底至次年二月。這段期間，農民趁著水稻秋割後至春耕前的空檔，在農田撒種油菜仔，因此冬天時，全省各處都可到油菜花田。農民最主要目的是把油菜當成施肥植物、有機肥料來使用。當油菜花繁花盛開後，在春耕前，油菜隨著整地犁田而掩埋滲入春泥，而成為促進稻米生長的養份。", resourceLink: "http://kplant.biodiv.tw/%E6%B2%B9%E8%8F%9C/%E6%B2%B9%E8%8F%9C.htm", picLink: "https://butterfly-foodplants.blogspot.tw/2013/12/blog-post_2972.html", image: "油菜"),
        plantSet(CName: "葶藶", SName: "Rorippa indica (L.)", AName: "山芥菜、白骨山葛菜、水芥菜、風花菜、甜葶藶、丁藶、麥藍菜、山划菜、田葛菜、辣米菜、蔊菜、印度蔊菜、塘葛菜、江剪刀草、香薺菜、野油菜、乾油菜、野菜子、天菜子、Sunburu", location: "分布於台灣全島各地之荒田、路邊、溝旁等潮濕地。", characteristic: "多年生草本植物，全株光滑無毛，綠色或帶紅色高 15~50 公分，常見於平地路邊庭園中。根生葉有柄，平舖地面，倒披針形或長橢圓披針形，長 5~15 公分，寬 1~3 公分，羽狀中裂，或鋸齒緣；莖生葉無柄，互生，小而呈披針形。花序頂生及腋生；著生枝端，花數多，總狀花序，一花有一短梗，花黃色，十字形，萼片線狀長橢圓形，花瓣狹倒卵形，四強雄蕊、雌蕊一。圓柱形長角果，長約 2 公分，種子黃色，細小。花期春天。葶藶煎水代茶飲，在暑熱的夏季裡，可清熱解喉乾，若配生魚、瘦肉、蜜棗堡燙，不但美味，亦能潤肺。葶藶因為甘淡，性涼。故有清熱解毒、利尿、鎮咳。通常藥用取齊全草，洗淨、曬乾後備用。", resourceLink: "http://kplant.biodiv.tw/%E8%91%B6%E8%97%B6/%E8%91%B6%E8%97%B6.htm", picLink: "https://butterfly-foodplants.blogspot.tw/2013/02/blog-post_1.html", image: "葶藶"),
        plantSet(CName: "蔊菜", SName: "Cardamine arisanensis Hayata", AName: "焊菜、彎曲碎米薺、細葉碎米薺、小葉碎米薺、碎米薺", location: "台灣全島平野常見的雜草。", characteristic: "多年生草本。莖自基部處多分枝，被粗毛，被毛往植物體上部漸稀。葉呈羽狀分裂，基生葉不簇生，羽狀複葉，側生羽片 3~6 對，羽片長 0.2~1 公分，全緣。花白色，為台灣平野常見雜草，繁殖期在春天與秋天。蔊菜能在乾燥的社區公園堤壁上見，因此陸地上隨處可見，其實只要在清澈的河溝中，就可發現它沉浸在水中生長。其葉片可當野菜食用。蔊菜的果實為長角果，成熟的果實黃色，如果輕輕碰一下，兩邊的果皮會由下往上卷，因為速度很快，常常會將種子與果皮，『啪』一聲的彈出去。", resourceLink: "http://kplant.biodiv.tw/%E8%94%8A%E8%8F%9C/%E8%94%8A%E8%8F%9C.htm", picLink: "https://butterfly-foodplants.blogspot.tw/2013/02/blog-post.html", image: "蔊菜"),
        plantSet(CName: "獨行菜", SName: "Lepidium apetalum", AName: "北美獨行菜、美洲獨行菜、葶藶子", location: "分佈北部低地、沿海，台灣全島平地。常生長在路邊、鐵路邊，荒地及海邊，常見成片生長。", characteristic: "一年生草本。莖直立，高 30~50 公分，上端分枝，無毛或有細柔毛。根生葉多數，平鋪地面，狹橢圓形，羽狀全裂，粗鋸齒緣，長 1.5~5 公分，寬 0.2~1 公分，有光澤，頂端急尖，邊緣有鋸齒，基部漸狹，兩面無毛，開花時枯死；莖上葉倒披針形至線狀長橢圓形，有銳鋸齒，長 2~5 公分，寬 0.2~1 公分，幾無柄。花綠白色，小型，排成總狀花序，花序可以長達十公分，花萼 4 片，綠色，卵形，花瓣 4 枚，白色，倒披針形，雄蕊 2；花期 3~5月。果為短角果，扁圓形，先端凹入，徑約 0.3 公分，果梗 0.4~0.6 公分，果邊緣具狹翼，果實中有一縱裂，將之分成兩片，每片內含種子 1 粒。種子扁圓形，紅褐色，長約 0.15公分，寬約 0.075公分。一端鈍圓，他端漸尖而微凹，種臍位凹入處，表面多顆粒狀細小突起，並有二條縱列淺槽，邊緣有透明之狹翼；果期 4~6 月。", resourceLink: "http://kplant.biodiv.tw/%E7%8D%A8%E8%A1%8C%E8%8F%9C/%E7%8D%A8%E8%A1%8C%E8%8F%9C.htm", picLink: "https://butterfly-foodplants.blogspot.tw/2014/05/blog-post_8716.html", image: "獨行菜"),
        plantSet(CName: "薺", SName: "Capsella bursa-pastoris", AName: "薺菜、菱角菜、護生草、地菜、地米菜、菱閘菜、只只菜、薺只菜、雞心菜、淨腸草、枕頭菜、粽子菜、牧人的錢包、扇子草、芊菜、假水菜、香扇菜", location: "台灣全境及澎湖，分佈於低至中海拔地區的荒地、田園、路旁、溝邊或菜圃也有它的蹤跡。", characteristic: "薺菜是越年生草本。全株被有不甚明顯的單毛或星狀毛。有根生葉及莖生葉的區別，前者呈羽狀深裂，較長而大；後者呈披針狀，葉緣有稀疏鋸齒，且較短小。二到三月間開白色小花，總狀花序，十字形花冠。果實呈綠色扁平倒三角形，頂端之中央部分內凹，果梗甚纖細。", resourceLink: "http://kplant.biodiv.tw/%E8%96%BA%E8%8F%9C/%E8%96%BA%E8%8F%9C.htm", picLink: "https://butterfly-foodplants.blogspot.tw/2014/01/blog-post_7173.html", image: "薺")
    ]
    
    var plantSets1:[plantSet] = [
        plantSet(CName: "山黃麻", SName: "Trema orientalis (L.) Blume", AName: "山羊麻、麻布樹、檨仔葉公、山王麻、山油麻，異色山黃麻、Garahon、Pohada", location: "臺灣全島海拔 500 公尺以下山麓或崩塌區。", characteristic: "山黃麻為自生平地或海拔五百公尺以下最常見的落葉大喬木，為生長快速的陽性先驅樹種，在全台低海拔的山坡崩塌地或干擾地裡，樹形擴張快速，常形成次生林冠層的樹種。樹皮平滑，呈灰褐色，小枝有短柔毛。葉互生，卵形，頭尖腳鈍，有細齒，兩面具剛毛。花為聚繖花序，腋生，花被黃綠色。核果，內果皮堅硬，徑約 0.3 公分，黑熟。", resourceLink: "http://kplant.biodiv.tw/%E5%B1%B1%E9%BB%83%E9%BA%BB/%E5%B1%B1%E9%BB%83%E9%BA%BB920104.htm", picLink: "https://butterfly-foodplants.blogspot.tw/2013/03/blog-post_8995.html", image: "山黃麻"),
        plantSet(CName: "石朴", SName: "Celtis formosana Hayata", AName: "臺灣朴樹、石朴樹、石博，四蕊朴、昆明朴、西藏朴、鳳慶朴", location: "生長於台灣全島低海拔闊葉林中或次森林中。", characteristic: "落葉喬木；幹皮幾乎不開裂，具脫落性之圓形痂狀凸起；當年生的小枝疏生短柔毛，或幾近光滑，毛不久後脫落。單葉，互生，托葉早落；葉片紙質，3 出脈，葉上表面光滑，翠綠色，下表面幾近光滑，銀綠色，僅葉脈上具極疏之伏毛，長卵形，長約 7 公分，寬約 3.3 公分，全緣或細齒緣，稀粗鋸齒緣，先端呈銳尖至尾尖（當年生小枝基部者除外），基部明顯歪斜。花雜性同株，雄花簇生，雌花單生；花與葉同開，果成熟於秋季但常遺留到落葉後。萼片 4~5 枚；無花瓣；雄蕊 4~5 枚，與萼片對生；雌蕊子房上位。核果卵形而具堅實外皮，成熟時橙黃色，可食，梗長約 1 公分。本種與沙朴很像，惟其幾近光滑之葉面、銳尖至尾尖之葉先端可與之區別。", resourceLink: "http://kplant.biodiv.tw/%E7%9F%B3%E6%9C%B4/%E7%9F%B3%E6%9C%B4.htm", picLink: "https://butterfly-foodplants.blogspot.tw/2013/02/blog-post_326.html", image: "石朴"),
        plantSet(CName: "朴樹/沙朴", SName: "Celtis sinensis Personn", AName: "黃果朴、紫荊朴、小葉朴、青朴、朴仔、毛朴、粕仔、朴仔樹、千粒樹、樸樹、桑仔、榎、爆仔子樹、Sakabagiyu", location: "台灣全島低海拔地區常見的植物。", characteristic: "落葉大喬木，樹皮呈黑褐色，粗糙不開裂，皮孔顯著；高可達 20 公尺，樹冠寬闊，枝條富變化，呈彎曲狀。葉互生，長 5~7 公分，寬 3~4 公分，卵狀至卵狀長橢圓形，主脈三條，脈紋向下表面隆起而顯著，葉基歪斜，基部有點歪形稱之「歪基」，是榆科植物之特徵；葉緣下半部全緣，上半部有粗鋸齒；托葉線形，早落；嫩葉及嫩枝均被細毛。1 月下旬至 4 月開淡綠色的小花，不太醒目，雌花單生或叢生，雄花呈聚繖花序，花開時全株呈白靄一片。核果圓形或卵形，徑約 0.5~0.6 公分，9 月成熟時呈橙黃色或帶紅褐色，鳥愛吃。", resourceLink: "http://kplant.biodiv.tw/%E6%9C%B4%E6%A8%B9/%E6%9C%B4%E6%A8%B9.htm", picLink: "https://butterfly-foodplants.blogspot.tw/2013/05/blog-post_8700.html", image: "沙朴"),
        plantSet(CName: "沙楠子樹", SName: "Celtis biondii", AName: "紫彈朴、異葉紫彈、 毛果朴、全緣葉紫彈樹、 黑彈朴", location: "分布在朝鮮、日本、台灣島以及中國大陸的安徽、湖北、福建、廣東、江西、貴州、四川、河南、陝西、浙江、雲南、江蘇、廣西、甘肅等地，生長於海拔50米至2,000米的地區，常生長在雜木林中、山地灌叢及石灰岩上，目前尚未由人工引種栽培。", characteristic: "落葉小喬木，芽鱗與幼枝被柔毛，葉卵形或卵狀橢圓形，長2.5~8cm，寬2~3.5cm，基部圓鈍，略歪斜，先端漸尖至長尾狀，淺齒緣，兩面略被糙毛，葉柄長3~7mm。花單性或雜性；雄花簇生於新枝基部，兩性花則單生於上部葉腋。花被片4或5。核果近球形，徑4~6mm，橙紅色或帶紫色；果梗長1~2cm，被毛；核兩側稍扁壓，表面具明顯網孔。", resourceLink: "https://zh.wikipedia.org/wiki/%E7%B4%AB%E5%BC%B9%E6%9C%B4", picLink: "https://butterfly-foodplants.blogspot.tw/2013/05/blog-post_5308.html", image: "沙楠子樹"),
        plantSet(CName: "阿里山榆", SName: "Ulmus uyematsui Hayata", AName: "臺灣榆、水雞油", location: "生長於中部及東部中至高海拔山地約 1,600~2,500 公尺處，森林的邊緣或針闊葉林混淆林處常可見其蹤跡。", characteristic: "落葉喬木，幹皮灰褐色，不規則縱向細淺短溝裂，薄片狀剝落。葉橢圓形或長橢圓形，長 6~15 公分，寬 3~5 公分，中部以上最寬，先端短尾狀突尖，基部歪斜，表面殆平滑，重鋸齒緣，側脈 11~15 對，葉柄長 0.4~~0.5 公分。翅果扁倒卵形，除先端花柱部份有毛外，餘平滑，徑 1~1.5 公分，果核位於翅果中部，上端不接近缺口，果梗長約 0.2 公分。", resourceLink: "http://kplant.biodiv.tw/%E9%98%BF%E9%87%8C%E5%B1%B1%E6%A6%86/%E9%98%BF%E9%87%8C%E5%B1%B1%E6%A6%86.htm", picLink: "https://butterfly-foodplants.blogspot.tw/2018/04/ulmus-uyematsui-hayata.html", image: "阿里山榆")
    ]
    
    //茜草科
    var plantSets2:[plantSet] = [
        plantSet(CName: "山黃梔", SName: "Gardenla jasminoides Ellis", AName: "梔子、水橫枝、黃果子、黃葉下、山黃枝、黃梔子、黃梔、山梔子、山梔、水梔子、林蘭、越桃、木丹、梔、山枝子、紅梔子、黃枝、巵子、支子、枝子、木丹、小梔子、野桂花、白蟾花、林蘭、越桃、薝葡、恆春梔、Kyaba、Kayunabbu", location: "全島低海拔平原及闊葉叢林中。", characteristic: "常綠灌木或小喬木，高約 3 公尺，葉對生或 3 片輪生，葉形有長、橢圓形、倒披針形，葉質具光澤，葉深綠色，全緣；花為繖型花序，以 3~4 朵腋生或頂生全株，花瓣 6 枚深裂，花香清雅，初開出期呈白色，花謝時漸轉為乳黃色，為中國典型香花植物之一。一般有單瓣花及重瓣花品種，花期在 4~6 月的春末至夏季；果實黃紅色，俗稱山梔子，呈兩端尖瑞的橢圓形，有六條綾線，具肉質，長約 3 公分，是解毒、染劑和外傷之良藥。果實含黃色素稱為藏紅花素(crocin)，因作黃色染料而得名「黃梔」，為古老的天然染料及食品的黃色著色劑；據神農本草經記載，自古即列入藥用及染料之用，其果實、葉、花、根亦可供藥劑。", resourceLink: "http://kplant.biodiv.tw/%E9%BB%83%E6%A2%94%E5%AD%90/%E9%BB%83%E6%A2%94%E5%AD%90.htm", picLink: "https://butterfly-foodplants.blogspot.tw/2013/01/blog-post_29.html", image: "山黃梔"),
        plantSet(CName: "水金京", SName: "Wendlandia formosana Cowan", AName: "紅木、水金定、水金驚、水魂仔、假雞納樹", location: "台灣生長於全島低海拔山地闊葉林之下部，約 300~800 公尺處的叢生或森林邊緣，中北部的山麓常見。", characteristic: "灌木或喬木，高 2~8 公尺；嫩枝被短柔毛，赤褐色。葉紙質，橢圓形或橢圓狀披針形，長 6~14 公分，寬 2~5 公分，頂端驟然漸尖或短漸尖，有時短尖，基部漸狹，兩面無毛，或僅在下面中脈和側脈上有微柔毛；側脈 5~6 對，纖細，彎拱，疏，在下面稍明顯；葉柄長 0.7~2.5 公分，薄被微柔毛或無毛；托葉闊三角形，外面被微柔毛，長約 0.35 公分，頂端銳尖，直立。圓錐狀聚繖花序頂生，擴展，多花，被褐色短柔毛；花小，有或無短花梗；花萼無毛，長約 0.15 公分，裂片長約 0.05 公分，邊緣有時有短緣毛，頂端稍鈍；花冠白色，管狀，在冠管近頂部稍擴大，長 0.55~0.6 公分，外面無毛，喉部有白色柔毛，冠管長 0.35~0.4 公分，裂片長約 0.2 公分，開放時外反；花絲長約 0.08 公分，花藥線狀披針形，長約 0.2 公分，伸出；柱頭 2 裂，伸出。蒴果球形，無毛，直徑約 0.2 公分，頂部有宿存萼裂片。花期 4~7 月，果期 7~8 月。", resourceLink: "http://kplant.biodiv.tw/%E6%B0%B4%E9%87%91%E4%BA%AC/%E6%B0%B4%E9%87%91%E4%BA%AC.htm", picLink: "https://butterfly-foodplants.blogspot.tw/2013/02/blog-post_2028.html", image: "水金京"),
        plantSet(CName: "水錦樹", SName: "Wendlandia uvariifolia Hance", AName: "毛水錦樹、紅木、雙耳蛇、豬血木、飯湯木、牛伴木、黃麖芽、假雞納樹、Tyamazi", location: "台灣生長於全島低至中海拔山約400~1,400 公尺處。", characteristic: "常綠小喬木，小枝具褐色長毛。葉對生，橢圓形，長 10~20 公分，先端銳形或漸尖，兩面被密毛，托葉廣圓形或腎形，反捲。圓錐花序花密集，萼有短柔毛，5 裂，花冠裂片 5，圓形，開展不反捲。蒴果球形，徑約 0.2 公分，被粗毛。水錦樹與水金京外形類似，但水錦樹之枝葉被有長毛，托葉腎形﹔而水金京之枝葉均光滑無毛，托葉較小且呈三角形，兩者之區別甚明顯。", resourceLink: "http://kplant.biodiv.tw/%E6%B0%B4%E9%8C%A6%E6%A8%B9/%E6%B0%B4%E9%8C%A6%E6%A8%B9.htm", picLink: "https://butterfly-foodplants.blogspot.tw/2013/03/blog-post_1.html", image: "水錦樹"),
        plantSet(CName: "玉葉金花", SName: "Mussaenda parviflora Matsum.", AName: "毛玉葉金花、白紙扇、白紙角、白頭公、白甘草、野白紙扇、山甘草、土甘草、涼口茶、仙甘藤、蝴蝶藤、蜻蜓翅、生肌藤、黃蜂藤、白葉子、涼藤子、涼茶藤、大涼藤、小涼藤、黏滴草、白茶、白梅、臺北玉葉金花、紅心穿山龍、Bantsarisun", location: "分佈於山麓至低海拔山區灌叢中或路旁，以中北部地區較常見。向陰植物，溝谷及溪旁可見。", characteristic: "蔓性灌木，小枝略有短柔毛。單葉，對生，有短柄，橢圓形至闊卵形，長 8~11 公分，寬 3~4 公分，先端漸尖，基部鈍至銳，托葉成對，鑿形。聚撒花序預生，單性花，雌雄異株；花冠漏斗形，雄花中具有雄蕊5 枚及短短的退化花柱，雌花中具有細長的二叉狀花柱，但沒有雄蕊，常具 1~2 枚大型葉狀苞片；圓形或廣卵形，長 3~5 公分；白色或淡黃白色，而最醒目的就是那片由花苞片增大變成的白色葉狀瓣。種子繁殖。屬陽性植物，全日照、半日照均理想。", resourceLink: "http://kplant.biodiv.tw/%E7%8E%89%E8%91%89%E9%87%91%E8%8A%B1/%E7%8E%89%E8%91%89%E9%87%91%E8%8A%B1.htm", picLink: "https://butterfly-foodplants.blogspot.tw/2013/11/blog-post_1632.html", image: "玉葉金花"),
        plantSet(CName: "南投涼喉茶", SName: "Hedyotis hedyotidea (DC.) Merr.", AName: "蟬仔翼、上加藤、阿婆茶、牛白藤、有毛雞屎藤、膿見消、癍痧藤、涼茶藤、大葉龍膽草、土加藤、甜茶、甜甘草，亞婆巢、接骨丹、排骨連、山甘草、腳白藤、半路哮、白束、大號山甘草、白藤草、土五加皮、塗藤頭，杜藤、塗藤、甘茶", location: "台灣中部台中、南投、嘉義低海拔山區之山谷、山麓山坡地、疏林內或灌叢中。", characteristic: "藤狀灌木，長 3~5 公尺，觸之有粗糙感，白色；嫩枝近方柱形，被粉末狀柔毛，老時圓柱形。葉對生，膜質，長卵形或卵形，長 4~10 公分，寬 2.5~4 公分，頂端短尖或短漸尖，基部楔形或鈍，上面粗糙，下面被柔毛；側脈每邊 4~5 條，柔弱斜向上伸，在上面下陷，在下面微凸；葉柄長 0.3~1.0 公分，上面有槽；托葉長 0.4~0.6 公分，頂部截平，有 4~6 條刺狀毛。花序腋生和頂生，由 10~20 朵花集聚而成一繖形花序；總花梗長 2.5 公分或稍過之，被微柔毛；花 4 數，有長約 0.2 公分的花梗；花萼被微柔毛，萼管陀螺形，長約 0.15 公分，萼簷裂片線狀披針形，長約 0.25 公分，短尖，外反，在裂罅處常有 2~3 條不很明顯的刺毛；花冠白色，管形，長 1.0~1.5 公分，裂片披針形，長 0.4~0.45 公分，外反，外面無毛，裏面被疏長毛；雄蕊二型，內藏或伸出，在長柱花中內藏，在短柱花中突出；花絲基部具須毛，花藥線形，基部 2 裂；柱頭 2 裂，裂片長 0.1 公分，被毛。蒴果近球形，長約 0.3 公分，直徑 0.2 公分，宿存萼簷裂片外反，成熟時室間開裂為 2 果爿，果爿腹部直裂，頂部高出萼簷裂片；種子數粒，微小，具稜。花期 4~7 月。南頭涼喉茶的莖藤白色，柔軟帶有韌性，一般稱之為牛白藤，它的葉子形狀及脈紋全形很像蟬的翼翅，因此又有蟬仔翅的別名。", resourceLink: "http://kplant.biodiv.tw/%E5%8D%97%E6%8A%95%E6%B6%BC%E5%96%89%E8%8C%B6/%E5%8D%97%E6%8A%95%E6%B6%BC%E5%96%89%E8%8C%B6.htm", picLink: "https://butterfly-foodplants.blogspot.tw/2013/09/blog-post_9.html", image: "南投涼喉茶")
    ]
    
    //馬鞭草科
    var plantSets3:[plantSet] = [
        plantSet(CName: "大青", SName: "Clerodendrum cyrtophyllum Turcz.", AName: "路邊青、土地骨皮、山靛青、鴨公青、臭沖柴、青心草、淡婆婆、山尾花、山漆、牛耳青、野靛青、臭葉樹、豬屎青、雞屎青、臭腥公、臭腥仔、細葉臭牡丹、臭婆婆、路邊青、野地青、土地骨邊、觀音串、觀音燦、兇葉大青、猺子菜、雞鵤胎", location: "生於全島低至中海拔山地，最高可達 1,000 公尺處，是台灣山麓、原野很普遍的植物。", characteristic: "小型灌木，高約 3~5 公尺，枝葉有股臭腥味。葉正面深綠色，背面淡綠色，長約 10~13 公分，寬約 5~7 公分，有葉柄約 2~3 公分。花是白色的，雄蕊四枚，其長約為花冠的二倍左右，常挺出花外。每年六-八月開花，有五片花瓣。果實為核果，球形，徑 0.6~0.7 公分，由殘存的花萼所包被，未熟青綠色，熟後變為紫黑色。大青是山麓、原野很普遍的植物，每年 6~8 月開花，是蝴蝶喜歡的蜜源植物。", resourceLink: "http://kplant.biodiv.tw/%E5%A4%A7%E9%9D%92/%E5%A4%A7%E9%9D%92.htm", picLink: "https://butterfly-foodplants.blogspot.tw/2013/08/blog-post.html", image: "大青"),
        plantSet(CName: "杜虹花", SName: "Callicarpa formosana Rolfe", AName: "粗糠仔、老蟹眼、毛將軍、大丁黃、臺灣紫珠、白粗糠仔、白粗糠樹、粗糠樹、黃襖婆、燈黃、山檳榔、螃蟹花", location: "台灣全島各地低海拔亞熱帶次生林1800公尺以下山區。", characteristic: "常綠性灌木，小枝、葉及花序均密被星狀毛茸，葉對生，卵形至長橢圓形，鋸齒緣，花小型，排列成腋生的聚繖花序，花序梗並作二歧分叉，花萼 4 淺裂，花冠管狀，粉紅或紫紅，雄蕊 4 枚，伸出花外，長度約為花冠的三倍，子房為不完全的兩室，果實為漿質核果，球形，徑約 0.2~0.3 公分，成熟時紫色。每年春季，特別是四月間，杜虹花會在台灣全島各地的郊野裡披上粉紅的彩衣，錦簇的花團由許多的小花密集而成，對生的葉腋裡成雙點，且一節接一節地開滿了枝頭，讓人不停的讚賞；初夏來臨，滿樹的粉紅換上了團團的新綠，幼嫩的果實形成，果實由新綠變成淡紫最後變成深紫色，杜虹花深紫色的果實能長久高掛枝頭。本屬植物約有 140 種，台灣有 9 種及 3 變種。", resourceLink: "http://kplant.biodiv.tw/%E6%9D%9C%E8%99%B9%E8%8A%B1/%E6%9D%9C%E8%99%B9%E8%8A%B1.htm", picLink: "https://butterfly-foodplants.blogspot.tw/2013/05/blog-post_4305.html", image: "杜虹花"),
        plantSet(CName: "金露花", SName: "Duranta repens Linn.", AName: "金露華、假連翹、台灣連翹、苦林盤、小本苦林盤、洋刺、番仔刺、花牆刺、如意草、籬笆樹、苦樂槃", location: "台灣本島普遍栽培為綠籬。陽明山區多少呈馴化狀態。", characteristic: "常綠灌木、葉對生或叢生、夏秋開花，花色紫色、球形果實。分枝多，小枝方形，長而下垂。夏秋季開花，花淺紫色，能結果，成熟果色鮮黃，聚生成串，觀花賞果，逸趣橫生。容易被小孩誤食，會造成腹痛腹瀉、昏昏欲睡、發燒、痙攣等症狀。花卻可做為興奮劑，是一種中藥材。此類植物園藝栽培種，尚有白花金露花及斑葉金露花。性耐修剪而分枝力強，因此常用作綠籬樹。", resourceLink: "http://kplant.biodiv.tw/%E9%87%91%E9%9C%B2%E8%8A%B1/%E9%87%91%E9%9C%B2%E8%8A%B1.htm", picLink: "https://butterfly-foodplants.blogspot.tw/2013/09/blog-post_16.html", image: "金露花"),
        plantSet(CName: "海州常山", SName: "Clerodendrum trichotomum Thunb.", AName: "臭梧桐、泡火桐、臭梧、追骨風、後庭花、香楸、山豬枷、臭牡丹、臭桐、臭芙蓉、海桐、臭桐柴、八角梧桐、芙蓉根、地梧桐、楸葉常山、楸茶葉、秋葉、矮桐子、百日紅、鳳眼子、泡花桐、Zibara'kk", location: "台灣全境山麓至低海拔地區之荒野、灌叢中或疏林內。", characteristic: "海州常山為灌木至小喬木，高可達 10 公尺；莖直立，小枝、葉柄被白或銹褐色毛，老枝灰白色，有皮孔，髓部白色。單葉對生，葉柄長 2~8 公分，葉片紙質，卵形、寬卵形或三角狀卵形，長 6~20 公分，寬 3.5~12 公分，先端銳尖，基部截形、淺心形或楔形，全緣或疏齒緣，兩面疏或密被毛，側脈 3~5 對，具臭味。複聚繖花序，腋生或腋生，具 3 至多朵花。花冠白色，5 裂；花苞先端膨大；花冠筒細長；雄蕊 4 枚，突出花冠外；子房 4 室，柱頭 2 裂。核果近球形，熟時藍色。花、果期 6~11 月。", resourceLink: "http://kplant.biodiv.tw/%E6%B5%B7%E5%B7%9E%E5%B8%B8%E5%B1%B1/%E6%B5%B7%E5%B7%9E%E5%B8%B8%E5%B1%B1.htm", picLink: "https://butterfly-foodplants.blogspot.tw/2013/04/blog-post_22.html", image: "海州常山果"),
        plantSet(CName: "臭娘子", SName: "Premna serratifolia Linn.", AName: "牛骨仔樹、牛骨仔、鈍葉魚臭木、臺灣魚臭木、厚殼仔、腐婢、繖序臭黃荊、壽娘子、Patti'tu", location: "台灣全島平野、山麓及濱海叢林內。台北、高雄、屏東、恆春平野、山麓及濱海叢林內。", characteristic: "小喬木或灌木，常綠或落葉性，嫩枝、葉及花序均被毛，具臭味。單葉，對生，具葉柄，柄長 3~7 公分；葉片長 6~12 公分，寬 4~8 公分，闊卵形、橢圓形或闊長橢圓形，葉基圓形或近心形，葉尖短突尖，葉緣全緣或不規則小鋸齒，側脈 4~7 對，下表面密佈腺點。花序為繖房狀聚繖花序，頂生或腋生；苞片長約 0.2 公分，對生，三角形；花萼闊鐘形，長約 0.16 公分，2 唇裂，先端 5 細齒裂；花冠長約 0.3 公分，黃綠色，闊圓筒形，2 唇裂，上唇闊圓而短，微凹，下唇 3 裂；雄蕊 4 枚，呈二強雄蕊；子房 4 室。果實為核果，球形，徑約 0.4 公分，黃黑色，內藏種子 4 顆。", resourceLink: "http://kplant.biodiv.tw/%E8%87%AD%E5%A8%98%E5%AD%90/%E8%87%AD%E5%A8%98%E5%AD%90.htm", picLink: "https://butterfly-foodplants.blogspot.tw/2013/06/blog-post_2715.html", image: "臭娘子")
    ]
    
    //桑科
    var plantSets4:[plantSet] = [
        plantSet(CName: "九重吹", SName: "Ficus nervosa Heyne", AName: "九丁榕、九丁樹、九重榕、九重樹、大葉九重樹、Rozyo'tto", location: "產臺灣全島平地原野及低海拔山地，最高可達 1,600 公尺處，叢林內或路旁，較常見。", characteristic: "常綠大喬木，樹皮暗褐色，枝條紅棕色，嫩枝被短毛。單葉，互生，具葉柄，柄長 1.5~3 公分；葉片長 9~23 公分，寬 3.5~10 公分，長橢圓形、倒披針形或長卵形，葉基鈍形，葉尖漸尖或鈍形，葉緣全緣，上下表面平滑，側脈8~12對，在下表面特別凸起；托葉膜質，被細毛。隱花果有梗，腋出或生於老葉痕之上，單立或 2~3個叢生，球形，徑長 1~1.2 公分。花期 1~8月。九丁榕的特色為葉面閉鎖脈明顯、托葉遺痕清晰可見，尤其特別的是：透明的乳汁和榕屬其他家族成員白色乳汁大大不同，這點更為特別。", resourceLink: "http://kplant.biodiv.tw/%E4%B9%9D%E4%B8%81%E6%A6%95/%E4%B9%9D%E4%B8%81%E6%A6%95.htm", picLink: "https://butterfly-foodplants.blogspot.com/2014/03/blog-post_16.html", image: "九重吹"),
        plantSet(CName: "小葉桑", SName: "Morus australis Poir.", AName: "小桑樹、桑樹、蠶仔樹、蠶仔葉樹、桑材子、桑仔樹、梁樹、鹽桑仔、雞桑、桑白、娘子樹、野桑、島桑，集桑、山桑、Teroi、Tigoutu、Ajizumu、Zusu、Diisu", location: "台灣全島低中海拔向陽之地。", characteristic: "落葉性大灌木或小喬木。樹皮灰白色，枝條沒有毛但有皮孔（增加氣體交換用）。葉互生，具柄，三出脈，葉片卵圓形或寬卵形，長 7~15 公分，寬 5~12 公分，先端尖或長尖，基部近心形。葉子形狀變化大，葉緣有鋸齒有時裂有時不裂，膜質但表面粗糙；花雌雄異株，雄花為下垂的葇夷花序，雌花花序下垂或斜上，花柱有毛柱頭 2 裂；果實為多花聚合果，由紅而變成紫黑色方成熟才有甜味，普通稱它為 「桑葚」，可生食。樹皮灰白色，常有黃褐色的皮目作為通氣用。", resourceLink: "http://kplant.biodiv.tw/%E5%B0%8F%E8%91%89%E6%A1%91/%E5%B0%8F%E8%91%89%E6%A1%91.htm", picLink: "https://butterfly-foodplants.blogspot.com/2013/04/blog-post_20.html", image: "小葉桑"),
        plantSet(CName: "天仙果", SName: "Ficus formosana Maxim.", AName: "羊乳頭、小號牛乳埔、細本牛奶埔、山芭樂、山拔仔、羊奶埔、流乳根、流乳仔、山金棗、台灣榕、台灣天仙果，長葉牛奶樹、水牛奶、狗奶木、羊屎木、長葉牛乳樹、羊乳子、羊奶子、牛奶、大同木、天星木、水檳榔、仙人桃、玉角帶、Kaayahu、Nobikibiki", location: "台灣全島低海拔至高海拔的山地疏林中或曠野、路旁、溪邊。", characteristic: "小灌木，小枝幼時疏被柔毛。葉形多變，常倒披針形至長橢圓形，長 4-11 公分，先端漸尖或尾狀，基部窄楔形，全緣或中部以上疏生鈍齒，偶有裂缺，兩面無毛，裡面蒼綠，有斑點。榕果單獨腋生，卵形，徑約 1 - 2 公分，微凸頭，綠色，有白斑，頂部臍狀突起；基苞 3 枚。天仙果分大號、小號二種，以小號較多人用，且效果較好。現市面上乾品大都為大陸進口，本地產較少。生長環境：台灣山區林蔭樹下，北部山區陽明山、五指山、石碇等品質較優。", resourceLink: "http://kplant.biodiv.tw/%E5%A4%A9%E4%BB%99%E6%9E%9C/%E5%A4%A9%E4%BB%99%E6%9E%9C.htm", picLink: "https://butterfly-foodplants.blogspot.com/2014/04/blog-post_26.html", image: "天仙果"),
        plantSet(CName: "牛奶榕", SName: "Ficus erecta Thunb. var. beecheyana", AName: "牛乳榕、牛乳房、牛乳婆、牛乳楠、牛奶柴、牛乳埔、牛奶珠、假枇杷、毛天仙果、三麴、鹿飯、天仙果、大丁癀、鹿飯、鹿飯水摃仔、小摃仔、野枇杷、乳漿仔、Baujivakku、Bana'kk", location: "臺灣全島海拔 1.800 公尺以下之山野村落附近均可見到，多見於多陽光的開闊地或森林的邊緣，極為普遍。", characteristic: "落葉性或半落葉性小喬木，高可達七公尺，全體被有短毛；葉互生，廣菱形、長倒卵形、倒卵形或披針形，紙質，長 8~25 公分，全緣或波狀緣，托葉紅棕色；隱花果腋出，單立或成對著生，徑約 1.5~2 公分，表面有毛，成熟時紫紅色。在台灣全島平地的野外，牛奶榕是最常見的樹種之一，因其果實內含白色乳汁故有「牛奶榕」之名，又形似牛之乳房而有「牛乳房」之稱，且果可食亦可入藥又被稱為「天仙果」，故俗名極多。", resourceLink: "http://kplant.biodiv.tw/%E7%89%9B%E5%A5%B6%E6%A6%95/%E7%89%9B%E5%A5%B6%E6%A6%95.htm", picLink: "https://butterfly-foodplants.blogspot.com/2013/05/blog-post_1238.html", image: "牛奶榕"),
        plantSet(CName: "雀榕", SName: "Ficus  wightiana  Wallich", AName: "大葉榕、赤榕、山榕、紅肉榕、鳥榕、鳥屎榕、筆管樹(瓊)", location: "分佈於台灣全島的平野、山麓", characteristic: "產於台灣全島各地低海拔地區，市區及郊野都很普遍。落葉大喬木，每年落葉 2 到 4 次，全珠平滑，具有氣根。", resourceLink: "http://kplant.biodiv.tw/%E9%9B%80%E6%A6%95/%E9%9B%80%E6%A6%950/%E9%9B%80%E6%A6%950.htm", picLink: "https://butterfly-foodplants.blogspot.com/2014/01/blog-post_27.html", image: "雀榕"),
        plantSet(CName: "菲律檳榕", SName: "icus ampelas Burm.f.", AName: "金氏榕", location: "台灣全島中、低海拔地區之次生闊葉樹林中，喜水濕但陽光充裕之處。", characteristic: "小喬木或中喬木，小枝光滑，具乳狀汁液。單葉，互生，革質、薄革質或厚紙質，3 出脈，側脈 5~9 對，托葉 2，早落，兩面粗糙，卵形、橢圓形或披針形，長 5~12 公分，寬 2~5 公分，全緣，尖頭，楔腳，基部微歪斜，少數具耳狀突出，具短柄，柄長 0.6~1 公分。雌雄異株，花序腋生。隱頭花序外方為反曲中空的花托壓壁，先端有一孔，內具多數苞片。雄花具花被片及雄蕊，偶具退化雌蕊；雌花具花被片及子房；蟲癭花具花被片及子房；假兩性花具花被片、子房及1枚雄蕊；中性花僅具數枚匙狀之花被片。瘦果細小，聚合為隱花果；隱花果腋生成對，球形，半熟成金黃色，熟時橙紅色，徑約 0.5~0.8 公分，果柄具基苞 2~3 枚，果梗長 0.4~0.8 公分。", resourceLink: "http://kplant.biodiv.tw/%E8%8F%B2%E5%BE%8B%E8%B3%93%E6%A6%95/%E8%8F%B2%E5%BE%8B%E8%B3%93%E6%A6%95.htm", picLink: "https://butterfly-foodplants.blogspot.com/2014/07/ficus-ampelas-burm-f-1768.html", image: "菲律檳榕"),
        plantSet(CName: "稜果榕", SName: "Ficus septica Burm. f.", AName: "大冇榕、大冇樹、常綠榕、豬母乳、豬母乳舅、大葉冇、大葉榕、蜊仔葉、樠樹", location: "低海拔的地區，以靠近山邊或溪邊。", characteristic: "常綠喬木，小枝光滑粗壯。葉為互生，全緣葉厚紙質，葉表很光滑，呈橢圓形至闊卵形，大型葉長約 15~25 公分，葉痕明顯，常叢生於枝條頂端；隱頭花序為綠色，雄花有柄呈內旋狀花絲短小，雌花有長柄柱頭棒狀，花柱長且側生，扁球形隱花果，葉腋間生長，外表有白色斑點，由於表有稜，故稱之為稜果榕。稜果榕的隱花果成熟時黃綠色，表面有有明顯的縱稜及白斑。雌雄異株，當榕果小蜂的雌蜂遇到雌株的隱花果時，因為雌花的花柱太長，雌蜂不易產卵，傳粉後便會死亡。如果遇到的是雄株，隱花果中有蟲癭花及雄花，花柱都不長，雌蜂會在蟲癭花上產卵。卵孵化後幼蟲以蟲癭花為食物，雄蜂會先羽化，趕在雌蜂羽化前去交配，交配 2~3 次之後，雄蜂死亡。雌蜂羽化後要出隱花果時，雄花恰巧成熟產生花粉，雌蜂便沾滿花粉的離開隱花果。", resourceLink: "http://kplant.biodiv.tw/%E7%A8%9C%E6%9E%9C%E6%A6%95/%E7%A8%9C%E6%9E%9C%E6%A6%95.htm", picLink: "https://butterfly-foodplants.blogspot.com/2013/05/blog-post_26.html", image: "稜果榕"),
        plantSet(CName: "榕樹", SName: "Ficus microcarpa Linn. f.", AName: "正榕、榕、鳥松、老公鬚、細葉榕、鳥榕、松仔、松榕、根樹、倒吊榕根、倒生樹、倒生木、不死樹、細葉榕、小葉榕、細葉榕、萬年青、Ayazyara'ppu", location: "在台灣榕樹是常見的植物", characteristic: "常綠大喬木，高可達 20 公尺以上，樹皮光滑，全株具白色乳汁；常有懸垂氣生根。葉單一，互生，橢圓至倒卵形，長 6~12 公分，寬 3~6 公分，革質或肉質狀紙質，全緣，兩面光滑。花序是隱頭花序，雄花、雌花及蟲癭花生長於一花托內；雌花花被片深 3~4 裂雄花、雌花及蟲癭花生長於一花托內；子房歪卵形雄花、雌花及蟲癭花生長於一花托內；花柱側生雄花、雌花及蟲癭花生長於一花托內；柱頭細棒狀；雄花花被裂片 3~4 枚雄花、雌花及蟲癭花生長於一花托內；雄蕊 1 枚雄花、雌花及蟲癭花生長於一花托內；無退化子房；蟲癭花與雌花相似。隱花果腋生，成對或單生，球形；內壁上附著有無數的瘦果，瘦果肉質，種子懸垂。徑約 1 公分，無梗，成熟時顏色由綠轉紅褐色。因樹冠寬廣，枝葉濃綠，能容人納蔭；故名為榕樹。", resourceLink: "http://kplant.biodiv.tw/%E6%A6%95%E6%A8%B9/%E6%A6%95%E6%A8%B9.htm", picLink: "https://butterfly-foodplants.blogspot.com/2013/12/blog-post_15.html", image: "榕樹"),
        plantSet(CName: "澀葉榕", SName: "Ficus irisana Elm.", AName: "糙葉榕、九重吹、細葉澀榕、早田氏榕、澀仔樹、西布雅榕", location: "臺灣全島海拔 1,000 公尺以下山麓，喜陰濕溪谷。桃園、南投、屏東、台東海拔 1,000 公尺以下濕潤闊葉林中。", characteristic: "澀葉榕為桑科常綠喬木，株高可達 20 公尺以上，小枝下垂。葉薄革質，兩面粗糙，卵狀長橢圓形，長 6~12 公分，寬 3~6 公分，先端頭鈍尖，基部鈍或楔形，全緣，基脈 3 條，側脈 5~6 對，葉柄長 0.4~0.8 公分；托葉卵狀披針形，膜質，長 0.8~1.0 公分，早落。隱頭花序，其中有雄花及雌花聚生。榕果單獨或成對腋生，徑 0.5~1 公分，熟時紅色，佈黃色斑點，基苞 3 枚，膜質，柄長約 1 公分。澀葉榕因葉兩面均密生剛毛，故極粗糙，乃有澀葉榕之稱。", resourceLink: "http://kplant.biodiv.tw/%E6%BE%80%E8%91%89%E6%A6%95/%E6%BE%80%E8%91%89%E6%A6%95.htm", picLink: "https://butterfly-foodplants.blogspot.com/2013/02/blog-post_24.html", image: "澀葉榕")
    ]
    
    //芸香科
    var plantSets5:[plantSet] = [
        plantSet(CName: "三腳鱉", SName: "Melicope pteleifolia (Champ. ex Benth.) T. Hartley", AName: "三叉虎、三腳鱉、白馬屎、細葉山刈葉、三丫苦、三叉苦、三丫虎、三椏虎、小黃散、雞骨樹、三枝槍、斑鳩花、百樹仔、三椏苦、三支槍、白芸香、石蛤骨、三岔葉、消黃散、郎晚、Kuran", location: "臺灣全島低海拔闊葉樹林下極為常見，無論在林下或向陽處均可見。", characteristic: "常綠灌木或小喬木，高 2~8 公尺，全株味苦。樹皮灰白色，有長圓形皮孔。葉具長柄，對生，三出複葉，葉柄長 3~10 公分，基部略膨大；小葉紙質，披針形或倒卵狀披針形，全緣或不規則淺波狀，長約 6~12 公分，寬約 2~6 公分，先端鈍尖，光滑，葉上面深綠色，下面黃綠色，有腺點，小葉柄短。圓錐聚繖花序腋生，花軸及花梗初時被短柔毛，花後漸脫落。花小，單性，黃白色，略芳香；萼深裂，廣卵形，長約 0.5 公分；花瓣 4，卵圓形至長圓形，長 0.15~0.2 公分，有腺點；雄花有雄蕊 4，較花瓣長，花絲線形，花藥卵狀長圓形，退化子房短小；雌花子房密被毛，退化雄蕊 4，較花瓣短，花藥不育。蓇突果常 2~3，稀 1 或 2，外果皮暗黃褐色至紅褐色，有乳點；種子黑色有光澤，卵狀球形。中名三叉虎，三椏苦，三腳虌或三腳鱉應是描述葉三出複葉。三腳虌在合適的自然條件下，本種可長至高約 20 公尺，胸徑 40 公分。枝、葉、樹皮等都有類似柑橘葉的香氣。樹皮的韌皮纖維不甚發達，故剝離時不呈條狀。散孔材，木材淡黃色，紋理通直，結構細緻，材質稍硬而輕，乾後稍開裂，但不變形，加工易，不耐腐，適作小型家具、文具或箱板材。", resourceLink: "http://kplant.biodiv.tw/%E4%B8%89%E5%8F%89%E8%99%8E/%E4%B8%89%E5%8F%89%E8%99%8E.htm", picLink: "https://butterfly-foodplants.blogspot.com/2013/09/blog-post_8.html", image: "三腳鱉"),
        plantSet(CName: "山黃皮", SName: "Murraya euchrestifolia Hayata", AName: "山豆葉月橘、野黃皮、豆葉九里香、山豆根葉九里香、過山香、千只眼", location: "台灣中、南部中海拔溪岸及崩壞地有強烈陽光處。", characteristic: "常綠灌木或小喬木，枝條細長，光滑或疏被毛。羽狀複葉，互生，具葉柄，柄長 10~20 公分，小葉 4~8 片；小葉片長 5~8 公分，寬 2~3 公分，具短柄，對生或亞對生，橢圓形，葉基鈍而略歪斜，葉尖漸尖或突尖，表面光滑，側脈 5~7 對。花序為聚繖花序，生於枝梢之葉腋；花梗被毛；花萼 4~5 片，狹卵形；花瓣 4~5 片，長約 0.5 公分，寬約 0.2 公分，長橢圓形；雄蕊 5~10 枚，不等長；子房長卵形，基部具粗肥之柄，1~2 室。果實為柑果，徑約 1 公分，球形，成熟時呈橙紅色，外具黑色小點；種子 1~2 粒，長約 0.8 公分。", resourceLink: "http://kplant.biodiv.tw/%E5%B1%B1%E9%BB%83%E7%9A%AE/%E5%B1%B1%E9%BB%83%E7%9A%AE.htm", picLink: "https://butterfly-foodplants.blogspot.com/2014/10/murraya-euchrestifolia-hayata-1916.html", image: "山黃皮"),
        plantSet(CName: "石苓舅", SName: "Glycosmis parviflora var. erythrocarpa", AName: "小山橘、山橘、山柑仔、山橘、山柑、酒柄葉、小金橘、山橘樹、亂桃、長果山桔", location: "台灣全島平地至低海拔山地約 800 公尺處，森林下的灌木或路旁；較常見。台北、台中、南投、屏東，低海拔闊葉林內。", characteristic: "不具針刺的常綠灌木或小喬木，小枝與芽被毛。複葉具 1 小葉，或 3~5 小葉；小葉長橢圓狀披針形或披針形，先端漸尖具鈍頭。圓錐花序，花萼 4~5 裂；花瓣 4~5 枚；雄蕊 8~10 枚；子房 2~5 室。漿果，橢圓形，長 0.8~1.2 公分，徑 0.5~0.8 公分，光滑；熟時帶透明的淡黃色至緋紅色，果皮肉質；有 1 枚種子，種子長橢圓形，綠色，長 0.6~0.9 公分，徑約 0.5 公分，有點肉質。本種葉似柑橘葉，果如金橘而小，故名小山橘、山小橘、小金橘；台灣僅此 1 屬約 2 種。石苓舅有長果(Glycosmis parviflora var. erythrocarpa (長果山桔))、圓果(Glycosmis parviflora var. parviflora (山桔-圓果))兩種，主要區別為：山桔：果實圓球形，子房圓形，雄蕊 10 枚等長；長果山桔：果實長橢圓形，子房長橢圓形，雄蕊 10 枚不等長(5 長 5 短)。", resourceLink: "http://kplant.biodiv.tw/%E7%9F%B3%E8%8B%93%E8%88%85/%E7%9F%B3%E8%8B%93%E8%88%85.htm", picLink: "https://butterfly-foodplants.blogspot.com/2014/03/blog-post_15.html", image: "石苓舅"),
        plantSet(CName: "胡椒木", SName: "Zanthoxylum beecheyanum K.Koch", AName: "胡椒樹，鰭山椒、岩山椒", location: "台灣於民國 88 年前後引進，大量出現於花市則是民國 93 年前後的事，最早作為盆景材料，也慢慢變成庭園整形樹與小品盆栽，因為葉片光亮細緻且芳香而受到歡迎。廣被種植為庭園美化、綠籬、盆栽 。", characteristic: "胡椒木為芸香科山椒屬常綠灌木；莖部有疏刺。奇數羽狀複葉，葉基有二枚短刺，葉軸有狹翼；小葉對生，倒卵形，長 0.7~1 公分，革質，葉面濃綠富光澤，全葉密生腺體。雌雄異株，雄花黃色，雌花紅橙；開花期夏季，花朵小。果實橢圓形，綠褐色。全株具濃烈胡椒香味。枝葉清翠，宜於春季修剪整枝。生長環境為陽光曝曬處，耐貧瘠及潮風吹拂，根系不耐積水。適肥沃之砂質壤土，排水、日照需良好。性喜溫暖至高溫冬季忌長期陰濕。分枝繁茂，株型低矮主要作為綠籬及盆景欣賞用。", resourceLink: "http://kplant.biodiv.tw/%E8%83%A1%E6%A4%92%E6%9C%A8/%E8%83%A1%E6%A4%92%E6%9C%A8.htm", picLink: "https://butterfly-foodplants.blogspot.com/2013/12/blog-post_31.html", image: "胡椒木"),
        plantSet(CName: "飛龍掌血", SName: "Toddalia asiatica (L.) Lamarck", AName: "黃肉樹、三百棒、大救駕、三文藤、牛麻簕、雞爪簕、黃大金根、簕鉤、入山虎、小金藤、爬山虎、抽皮簕、油婆簕、畫眉跳、散血飛、散血丹、燒酒鉤、貓爪簕、溫答、亦雷 、八大王、見血飛、黃椒根、溪椒、刺米通、見血散、血見愁、下山虎、小葉黃肉樹、細葉黃肉刺、黃樹根藤、飛龍塹血、黃椒見血飛、Tatukao", location: "台灣全境平野、山麓至高山地區。台中、南投、嘉義、屏東、蘭嶼的山間溝谷叢林中或山坡闊葉林中。野生品，尚無人栽培。", characteristic: "常綠木質半藤本攀緣有刺灌木，攀附於其他植物上，高可達 5~10 公尺。根粗壯，外皮褐黃色，內部赤紅色。枝及分枝常有向下彎的皮刺；小枝常被有褐銹色的短柔毛和白色圓形皮孔。葉互生，三出複葉，柄長約 3~4 公分，小葉無柄；小葉倒卵形、橢圓形或倒卵狀矩圓形，長 3~9 公分，寬 1.5~3.5 公分，先端急尖，基部窄楔形，邊緣有細鈍鋸齒，兩面無毛，下面中脈上有倒鉤刺，齒縫處及葉片均有透明腺點，揉之有香氣。夏季開白色、青色或黃色花，單性；萼片同花瓣均為 4~5；花絲被毛；子房 2~7 室；雄花排成腋生繖房狀圓錐花序；雌花排成聚繖狀圓錐花序，花較少。核果(漿果)近球形，徑約 0.5 公分，熟時橙黃色至朱紅色，有明顯的腺點，果皮肉質，有 3~5 條微凹的肋紋。種子腎形，黑色，有光澤。", resourceLink: "http://kplant.biodiv.tw/%E9%A3%9B%E9%BE%8D%E6%8E%8C%E8%A1%80/%E9%A3%9B%E9%BE%8D%E6%8E%8C%E8%A1%80.htm", picLink: "https://butterfly-foodplants.blogspot.com/2013/02/blog-post_27.html", image: "飛龍掌血"),
        plantSet(CName: "賊仔樹", SName: "Tetradium glabrifolium (Champ. ex Benth.) T. Hartley", AName: "辣樹、山漆、檫樹，臭辣吳萸、臭辣樹、臭吳萸、野吳萸、臭桐子樹、野茶辣、Garake、Bazyakeitu", location: "生長於低至中海拔山地，最高可達 2,000 公尺處，森林邊緣或路旁，較常見。", characteristic: "賊仔樹為陽性樹種，不拘土質，生長迅速，為半落葉喬木，高可達 20 公尺，具有多數分枝；嫩枝及花序具向上性之倒伏細毛。因其樹葉有特殊的臭味，故名，又因其葉形酷似野漆，故亦被稱為山漆。葉對生，奇數羽狀複葉，長 15~33 公分；有小葉 4~9 對，長 7~9 公分，寬 2.5~3.5 公分，歪卵形，紙質，全緣，表面呈有光澤的暗綠色，背面略帶灰白色，光滑無毛。圓錐聚繖花序頂生；花序長 10~20 公分，花小，淡黃色或黃綠色。蓇葖果由 4~5 枚分果組成，有側生倒伏性毛茸，三角形，長 0.35~0.5 公分；內果皮散生或密生毛茸；每分果中種子僅有 1 枚，卵形或闊橢圓形，長 0.25~0.35 公分。", resourceLink: "http://kplant.biodiv.tw/%E8%B3%8A%E4%BB%94%E6%A8%B9/%E8%B3%8A%E4%BB%94%E6%A8%B9.htm", picLink: "https://butterfly-foodplants.blogspot.com/2014/07/blog-post.html", image: "賊仔樹"),
        plantSet(CName: "過山香", SName: "Clausena excavata Burm. f.", AName: "假黃皮、山黃皮、雞母黃、大棵、臭皮樹、野黃皮、小葉臭黃皮、番仔香草、龜裡椹、凹葉黃皮、假樟仔、Kyaromatya", location: "恆春半島叢林、中南部平野自生，有作景觀栽培。", characteristic: "過山香除是有名的蛇藥外，其果實亦芳香可食，具特殊風味。尤其莖葉經久不散的香氣，難怪過了一座山頭還覺得神清氣爽。其形態為落葉性灌木或小喬木，高 1~數公尺；葉為單數羽狀複葉，披針形，全緣或具不明顯之齒緣；圓錐花序，頂生；漿果長橢圓形，成熟時紅色，味甜可食。惟成熟漿果不可多食，以免頭暈中毒。", resourceLink: "http://kplant.biodiv.tw/%E9%81%8E%E5%B1%B1%E9%A6%99/%E9%81%8E%E5%B1%B1%E9%A6%99.htm", picLink: "https://butterfly-foodplants.blogspot.com/2013/05/blog-post_9632.html", image: "過山香"),
        plantSet(CName: "橘柑", SName: "Citrus tachibana (Makino) Tanaka", AName: "立花橘", location: "產於日本、琉球、台灣", characteristic: "樹高約三公尺，分枝多，小枝細長， 具短刺，長約三公釐，單身複葉，互生，葉長橢圓形、卵狀橢圓形、橢圓形，先端鈍或微凹，基部闊楔形，葉緣細鋸齒或細鈍裂齒，葉長六、七公分，寬三、四公分，具油性腺點，側脈不明顯，托葉線形，葉柄長約七公釐，略具翼，兩性花，花單出、簇生或聚繖花序，腋生，花梗長約二公釐，花萼杯狀或壺狀，三至五裂，花冠近圓球形，花徑十二至十四公釐，具香味，花瓣四至八枚，覆瓦狀排列，白色，略帶紫紅，頂端略反折，雄蕊多數，約二十枚，離生、部分或基部合生，花絲各式合生，花盤環形，具蜜腺體，雌蕊心皮多枚，合生，柱頭略低於花藥，子房上位，子房多室，約四至十八室，中軸胎座，柑果，圓球形、扁圓形，尾端略突出，果面平滑，熟果黃、淡黃色，果皮厚一、二公釐，具腺體，瓤囊約七至九瓣，果肉淡黃色，果實可食，酸苦，種子五、六粒，闊卵形，長約一公分，近平滑，子葉淡綠色，多胚。", resourceLink: "http://blog.xuite.net/smile27/flower/43534873-%E6%9F%91%E6%A9%98%E9%A1%9E%EF%BC%9A%E6%A9%98%E6%9F%91", picLink: "https://butterfly-foodplants.blogspot.com/2014/05/blog-post_21.html", image: "橘柑"),
        plantSet(CName: "檸檬", SName: "Citrus limon Burm.", AName: "洋檸檬、西檸檬、香檬", location: "臺灣全島普遍栽培是經濟果樹，中國大陸長江以南地區亦廣泛栽種。", characteristic: "常綠小喬木，高 3~5 公尺，有硬刺，枝少刺或近無刺。嫩葉及花芽暗紫紅色；翼葉寬或狹，葉厚紙質，卵形或橢圓形，長  8~12 公分，寬 4~6 公分，先端常呈短凸尖，邊緣有明顯鈍鋸齒。花單一或數朵簇生葉腋，花瓣長橢圓形，外面淡紫紅色，內面白色。柑果橢圓形或卵形，頂端常有乳頭狀凸尖，果皮厚，粗糙，難剝離，富含油點。", resourceLink: "http://kplant.biodiv.tw/%E6%AA%B8%E6%AA%AC/%E6%AA%B8%E6%AA%AC.htm", picLink: "https://butterfly-foodplants.blogspot.com/2014/01/blog-post_25.html", image: "檸檬"),
        plantSet(CName: "雙面刺", SName: "Zanthoxylum nitidum (Roxb.) DC.", AName: "兩面針、釘板刺、入山虎、麻藥藤、入地金牛、葉下穿針、紅倒鈎簕、大葉貓爪簕、崖椒、崕椒、花椒、黃根、胡根、山胡椒、古月娘、白馬屎、鳥不宿、鳥踏刺、上山虎、崖根、鱟殼刺、碌碡藤、蔓椒、豕椒、豬椒、豨椒、狗椒、金椒、入地金牛、古月根、胡根、黃根、雞雉卵、光葉花椒、Zyabansaru", location: "常生長於全島海邊至低海拔山地，最高可達 700 公尺處，叢林或路旁，甚為普遍。", characteristic: "攀緣性藤本灌木，枝條有倒鉤刺，老莖有脊骨突起；小枝，葉軸及小葉均具刺。羽狀複葉，小葉 3~5 枚甚至可達 7 枚，雙面有刺，葉質地略厚且有光澤，長橢圓形，長 6~8 公分，寬 2~3公分，有短柄，小葉柄長 0.2~0.4 公分，葉肉上有油點。花序總狀腋生，花梗暗紅色，花淡黃白色。果球形，徑 0.4~0.5 公分，成熟時開裂，種子黑色並有麻辣味。但也一些植株，有的是單面有刺、甚至是雙面都沒有刺。雙面刺葉呈羽狀複葉，橢圓形，它的名字便是因葉中肋兩面都長有暗紫紅色的刺而來，不過有些植株只在葉背面有刺。但也一些植株，有的是單面有刺、甚至是雙面都沒有刺。", resourceLink: "http://kplant.biodiv.tw/%E9%9B%99%E9%9D%A2%E5%88%BA/%E9%9B%99%E9%9D%A2%E5%88%BA.htm", picLink: "https://butterfly-foodplants.blogspot.com/2013/02/blog-post_23.html", image: "雙面刺"),
        plantSet(CName: "藤花椒", SName: "Zanthoxylum scandens Blume", AName: "藤山椒、藤崖椒、藤巖椒、大葉越椒、花椒簕、尖葉花椒、花椒藤、烏口簕、Rakurai", location: "台灣全境中海拔(1,800 公尺)以下山區之灌叢中或疏林內，較為常見。", characteristic: "木質藤夲，老莖常具刺瘤，枝及葉總柄軸均具硬皮刺。葉互生，具長柄，為奇數羽狀複葉，小葉 15~25 枚，互生或近對生，小葉卵狀矩圓形、長橢圓形或廣披針形，長 2.5~6 公分，寬 1~3 公分，基部狹尖形或楔形，稍歪斜，先端尾狀漸尖形，全緣，兩面光滑。繖房狀圓錐花序，腋生；花單性，花萼、花瓣、雄蕊均約 4 數；雄花退化心皮 2 叉裂，雌花常具 1 鱗片狀退化雄蕊。蓇葖果 1~4 室，熟紅或紅褐色；種子 1~4 粒，黑色。花期春、夏間。果期夏、秋間。", resourceLink: "http://kplant.biodiv.tw/%E8%97%A4%E8%8A%B1%E6%A4%92/%E8%97%A4%E8%8A%B1%E6%A4%92.htm", picLink: "https://butterfly-foodplants.blogspot.com/2016/05/zanthoxylum-scandens-blume.html", image: "藤花椒")
    ]
        
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return plantSets0.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "ClassList"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ClassTableViewCell
        if tag == 0 {
            cell.CNameLabel.text = plantSets0[indexPath.row].CName
            //cell.SNameLabel.text = plantSets0[indexPath.row].SName
            cell.ViewImage.image = UIImage(named: plantSets0[indexPath.row].image)
        }
        else if tag == 1 {
            cell.CNameLabel.text = plantSets1[indexPath.row].CName
            cell.ViewImage.image = UIImage(named: plantSets1[indexPath.row].image)
        }
        else if tag == 2 {
            cell.CNameLabel.text = plantSets2[indexPath.row].CName
            cell.ViewImage.image = UIImage(named: plantSets2[indexPath.row].image)
        }
        else if tag == 3 {
            cell.CNameLabel.text = plantSets3[indexPath.row].CName
            cell.ViewImage.image = UIImage(named: plantSets3[indexPath.row].image)
        }
        else if tag == 4 {
            cell.CNameLabel.text = plantSets4[indexPath.row].CName
            cell.ViewImage.image = UIImage(named: plantSets4[indexPath.row].image)
        }
        else if tag == 5 {
            cell.CNameLabel.text = plantSets5[indexPath.row].CName
            cell.ViewImage.image = UIImage(named: plantSets5[indexPath.row].image)
        }
        //cell.CNameLabel.text = plantSets[indexPath.row].CName
        //cell.SNameLabel.text = plantSets[indexPath.row].SName
        //cell.ANameLabel.text = plantSets[indexPath.row].AName
        //cell.locationLabelLabel.text = plantSets[indexPath.row].location
        //cell.characteristicLabel.text = plantSets[indexPath.row].characteristic
        //cell.resourceLinkLabel.text = plantSets[indexPath.row].resourceLink
        //cell.picLinkLabel.text = plantSets[indexPath.row].picLink
        //cell.imageView?.image = UIImage(named: plantSets[indexPath.row].image)

        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! DetailViewController
                if tag == 0 {
                    destinationController.plant = plantSets0[indexPath.row]
                }
                else if tag == 1 {
                    destinationController.plant = plantSets1[indexPath.row]
                }
                else if tag == 2 {
                    destinationController.plant = plantSets2[indexPath.row]
                }
                else if tag == 3 {
                    destinationController.plant = plantSets3[indexPath.row]
                }
                else if tag == 4 {
                    destinationController.plant = plantSets4[indexPath.row]
                }
                else if tag == 5 {
                    destinationController.plant = plantSets5[indexPath.row]
                }
                
            }
        }
        
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
