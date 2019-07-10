CREATE TABLE IF NOT EXISTS synonyms (synonym JSONB);

/* synonyms.json*/
WITH json_array AS (
    SELECT jsonb_array_elements('[
["abn","australian business number"],
["abr","australian business register"],
["ato","australian taxation office"],
["bas","business activity statement"],
["cfd","contracts for difference"],
["cfi","conduit foreign income"],
["cgt","capital gains tax"],
["csi","common use signing interface"],
["dasp","departing australia superannuation payment"],
["dgr","deductible gift recipients"],
["drp","dividend reinvestment plans"],
["eci","electronic commerce interface"],
["els","electronic lodgment service"],
["ess","employee share schemes"],
["etf","exchange traded funds"],
["etp","employment termination payment"],
["fbt","fringe benefits tax","fringe benefit tax"],
["fmds","farm management development scheme"],
["foi","freedom of information"],
["ftc","fuel tax credits"],
["gdp","gross domestic product"],
["gic","general interest charge"],
["gnr","GST not registered"],
["gst","goods and services tax","good and services tax","good and service tax","goods and service tax"],
["help","higher education loans programme","higher education loan program","higher education loans program","hec","hecs","hex","higher ed loans","HECS or HELP benefit","higher education loan programme","higher education contribution scheme","higher education contributions scheme"],
["iar","individual auto registration"],
["ias","instalment activity statements"],
["icp","integrated core processing"],
["itcs","indirect tax concession scheme"],
["itwv","PAYG income tax withholding variation"],
["lafha","living away from home allowance"],
["lct","luxury car tax"],
["lsl","long service leave"],
["mis","managed investment scheme"],
["mrrt","minerals resource rent tax"],
["nmeto","net medical expenses tax offset"],
["noa","notice of assessment"],
["npo","non profit organisation","non profit organisations"],
["payg","pay as you go"],
["paygw","pay as you go withholding"],
["pbi","public benevolent institution"],
["poi","proof of identity"],
["ppor","principal place of residence", "ppr","main residence"],
["prrt","petroleum resource rent tax"],
["r&d","research and development","research & development"],
["rbl","superannuaton reasonable benefit limit","superannuation reasonable benefit limits","reasonable benefit limit","reasonable benefit limits"],
["rit","reforms to income tax"],
["ritc","reduced input tax credits"],
["sap","substituted accounting periods"],
["sapto","senior australians and pensioner tax offset"],
["sato","senior australians tax offset"],
["sbe","sb","small business","small business entity","small business entities"],
["sfss","student financial supplement scheme"],
["sgc","superannuation guarantee charge"],
["sha","superannuation holding accounts"],
["sic","shortfall interest charge"],
["soa","statement of account"],
["tcc","tax concession charities"],
["ties","tax issues entry scheme"],
["tofa","taxation of financial arrangements"],
["wet","wine equalisation tax"],
["7a","div 7a","division 7a"],
["abn lookup","abn look up","abn finder","abn search"],
["assessable","assessible"],
["asset sales","selling and transferring assets", "asset transfers"],
["asset write-off","asset disposal","involuntary disposal of an asset"],
["phone","telephone"],
["auskey","askey","ozkey","oz key","ausskey","austkey","aus key","auzkey"],
["authorised contacts","authorised representative","nominated representative"],
["back payments of salary or wages","backpay"],
["code","codes"],
["benchmark","benchmarks"],
["book keeper","bookkeeper","bookeeper","bookkeepers","bookeepers","bookkeeping","bookeeping","bookkeep","bookeep"],
["calculating","calculations","calculator"],
["capital works deductions","capital improvements"],
["car","cars","motor car","motor vehicle","motor vehicles"],
["cents per kilometre deductions","mileage","mileage rates","mileage reimbursement rates","mv mileage rates","vehicle km rates","cents per km","cents per kms","cents per kilometer"],
["CGT exemptions","capital exempt payments"],
["child support","maintenance payment","maintenance payments","spousal maintenance"],
["choice of superannuation fund","super choice"],
["commissioner of taxation","taxation commissioner","tax commissioner"],
["committee","committees"],
["forum","forums"],
["compulsory employer contributions","employer superannuation contributions","employer contributions","reportable employer superannuation contributions","RESC"],
["consolidations","consolidated group","deconsolidation","deconsolidated group"],
["deceased estate","executors"],
["deduction","deductions","claim","claims","expense"],
["deferred GST","GST deferrals","defer gst","gst deferral"],
["depreciation","deprecation"],
["dividend deductions","franked","unfranked"],
["due date","due dates","deadline","deadlines"],
["eligible termination payments","employment termination payments"],
["families","family"],
["family tax benefit","family allowance","ftb"],
["foreign income","foreign exchange gains","forex","foreign exchange income","foreign exchange losses","overseas income","foreign exchange"],
["foreign resident","non-resident"],
["franking credits","tax credits","franking units"],
["general employee entitlements redundancy scheme","employee entitlement support scheme", "geers"],
["guest speaker","guest speakers","guest presenter","guest presenters","keynote speaker","keynote speakers"],
["hecs debt","hex debt","help debt","HECS or HELP debt","deferring repayment","FEE HELP"],
["instalment","instalments","installment","installments"],
["international agreements","double taxing","double taxation","tax treaties"],
["judgment","judgement"],
["kid","child"],
["levi","levy"],
["lodgment","lodgement"],
["lost members register","LMR"],
["low income tax offset","low income earners","low income rebate","lito"],
["magnetic media facility","EMPDUPE"],
["managed investment schemes","managed investment funds"],
["not-for-profit","non-profit","not for profit","non-profit organisations","NPOs","non profit","non profits","non-profit organisation","NPO","NFP","NFPs"],
["offset","rebate","tax offset","tax rebate","tax offsets","tax rebates","tax offsets and rebates"],
["overseas","foreign"],
["PAYG instalments","provisional tax"],
["PAYG instalment concessions","PAYG concessions"],
["workers","employees"],
["worker","employee"],
["personal services income","income from personal services","psi"],
["property","real estate"],
["redundancy","retrenchment","termination"],
["rulings","tax advice"],
["salary sacrifice","salary sacrificing","salary package","salary packaging","salarypackaging","income sacrifices"],
["senior Australians tax offset","senior Australians and pensioner tax offset","SATO","SAPTO"],
["senior","seniors","retiree","retirees"],
["shares","capital purchases","share investments"],
["spouse","husband","wife"],
["subdividing","subdivisions"],
["superannuation fund","super fund","superfund supa fund"],
["superannuation guarantee","superannuagion guarantee charge","super guarantee","super guarantee charge"],
["superannuation lodgment","superannuation assessment"],
["superannuation","sup","supa","supp","supper","super","supperannuation","superanuation","supperanuation"],
["superseeker","super seeker","superseeka","supper seeker"],
["tfn", "tax file number","taxfile number","taxfileno","taxfilenumber"],
["tax haven","tax havens","tax shelter","tax shelters"],
["tax-free","tax free"],
["temporary resident","457 visa"],
["travel allowance","travel allowances","per diem"],
["voluntary disclosure","VDP","voluntary disclosure program"],
["withholding","withheld"],
["written evidence","substantiation"],
["zone","zone offset","zone rebate","remote area zones","remote areas","zones"],
["self managed superannuation fund","self-managed superannuation fund","self managed super","self-managed super","smsf"]
]
'::jsonb) AS synonym
)
INSERT INTO synonyms (synonym)
SELECT * FROM json_array;