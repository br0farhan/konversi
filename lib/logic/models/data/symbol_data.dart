class SymbolsData {
  bool? success;
  Symbols? symbols;
  SymbolsData({
    this.symbols,
    this.success,
  });

  static SymbolsData fromJson(Map<String, dynamic> json) {
    return SymbolsData(
      success: json["success"],
      symbols:
          json["symbols"] != null ? Symbols.fromJson(json["symbols"]) : null,
    );
  }
}

class Symbols {
  late String aed;
  late String afn;
  late String all;
  late String amd;
  late String ang;
  late String aoa;
  late String ars;
  late String aud;
  late String awg;
  late String azn;
  late String bam;
  late String bbd;
  late String bdt;
  late String bgn;
  late String bhd;
  late String bif;
  late String bmd;
  late String bnd;
  late String bob;
  late String brl;
  late String bsd;
  late String btc;
  late String btn;
  late String bwp;
  late String byn;
  late String byr;
  late String bzd;
  late String cad;
  late String cdf;
  late String chf;
  late String clf;
  late String clp;
  late String cny;
  late String cop;
  late String crc;
  late String cuc;
  late String cup;
  late String cve;
  late String czk;
  late String djf;
  late String dkk;
  late String dop;
  late String dzd;
  late String egp;
  late String ern;
  late String etb;
  late String eur;
  late String fjd;
  late String fkp;
  late String gbp;
  late String gel;
  late String ggp;
  late String ghs;
  late String gip;
  late String gmd;
  late String gnf;
  late String gtq;
  late String gyd;
  late String hkd;
  late String hnl;
  late String hrk;
  late String htg;
  late String huf;
  late String idr;
  late String ils;
  late String imp;
  late String inr;
  late String iqd;
  late String irr;
  late String isk;
  late String jep;
  late String jmd;
  late String jod;
  late String jpy;
  late String kes;
  late String kgs;
  late String khr;
  late String kmf;
  late String kpw;
  late String krw;
  late String kwd;
  late String kyd;
  late String kzt;
  late String lak;
  late String lbp;
  late String lkr;
  late String lrd;
  late String lsl;
  late String ltl;
  late String lvl;
  late String lyd;
  late String mad;
  late String mdl;
  late String mga;
  late String mkd;
  late String mmk;
  late String mnt;
  late String mop;
  // late String mrq;
  late String mur;
  late String mvr;
  late String mwk;
  late String mxn;
  late String myr;
  late String mzn;
  late String nad;
  late String ngn;
  late String nio;
  late String nok;
  late String npr;
  late String nzd;
  late String omr;
  late String pab;
  late String pen;
  late String pgk;
  late String php;
  late String pkr;
  late String pln;
  late String pyg;
  late String qar;
  late String ron;
  late String rsd;
  late String rub;
  late String rwf;
  late String sar;
  late String sbd;
  late String scr;
  late String sdg;
  late String sek;
  late String sgd;
  late String shp;
  late String sll;
  late String sos;
  late String srd;
  late String std;
  late String svc;
  late String syp;
  late String szl;
  late String thb;
  late String tjs;
  late String tmt;
  late String tnd;
  late String top;
  late String tryy;
  late String ttd;
  late String twd;
  late String tzs;
  late String uah;
  late String ugx;
  late String usd;
  late String uyu;
  late String uzs;
  late String vef;
  late String vnd;
  late String vuv;
  late String wst;
  late String xaf;
  late String xag;
  late String xau;
  late String xcd;
  late String xdr;
  late String xof;
  late String xpf;
  late String yer;
  late String zar;
  late String zmk;
  late String zmw;
  late String zwl;

  Symbols(
      {required this.aed,
      required this.afn,
      required this.all,
      required this.amd,
      required this.ang,
      required this.aoa,
      required this.ars,
      required this.aud,
      required this.awg,
      required this.azn,
      required this.bam,
      required this.bbd,
      required this.bdt,
      required this.bgn,
      required this.bhd,
      required this.bif,
      required this.bmd,
      required this.bnd,
      required this.bob,
      required this.brl,
      required this.bsd,
      required this.btc,
      required this.btn,
      required this.bwp,
      required this.byn,
      required this.byr,
      required this.bzd,
      required this.cad,
      required this.cdf,
      required this.chf,
      required this.clf,
      required this.clp,
      required this.cny,
      required this.cop,
      required this.crc,
      required this.cuc,
      required this.cup,
      required this.cve,
      required this.czk,
      required this.djf,
      required this.dkk,
      required this.dop,
      required this.dzd,
      required this.egp,
      required this.ern,
      required this.etb,
      required this.eur,
      required this.fjd,
      required this.fkp,
      required this.gbp,
      required this.gel,
      required this.ggp,
      required this.ghs,
      required this.gip,
      required this.gmd,
      required this.gnf,
      required this.gtq,
      required this.gyd,
      required this.hkd,
      required this.hnl,
      required this.hrk,
      required this.htg,
      required this.huf,
      required this.idr,
      required this.ils,
      required this.imp,
      required this.inr,
      required this.iqd,
      required this.irr,
      required this.isk,
      required this.jep,
      required this.jmd,
      required this.jod,
      required this.jpy,
      required this.kes,
      required this.kgs,
      required this.khr,
      required this.kmf,
      required this.kpw,
      required this.krw,
      required this.kwd,
      required this.kyd,
      required this.kzt,
      required this.lak,
      required this.lbp,
      required this.lkr,
      required this.lrd,
      required this.lsl,
      required this.ltl,
      required this.lvl,
      required this.lyd,
      required this.mad,
      required this.mdl,
      required this.mga,
      required this.mkd,
      required this.mmk,
      required this.mnt,
      required this.mop,
      // required this.mrq,
      required this.mur,
      required this.mvr,
      required this.mwk,
      required this.mxn,
      required this.myr,
      required this.mzn,
      required this.nad,
      required this.ngn,
      required this.nio,
      required this.nok,
      required this.npr,
      required this.nzd,
      required this.omr,
      required this.pab,
      required this.pen,
      required this.pgk,
      required this.php,
      required this.pkr,
      required this.pln,
      required this.pyg,
      required this.qar,
      required this.ron,
      required this.rsd,
      required this.rub,
      required this.rwf,
      required this.sar,
      required this.sbd,
      required this.scr,
      required this.sdg,
      required this.sek,
      required this.sgd,
      required this.shp,
      required this.sll,
      required this.sos,
      required this.srd,
      required this.std,
      required this.svc,
      required this.syp,
      required this.szl,
      required this.thb,
      required this.tjs,
      required this.tmt,
      required this.tnd,
      required this.top,
      required this.tryy,
      required this.ttd,
      required this.twd,
      required this.tzs,
      required this.uah,
      required this.ugx,
      required this.usd,
      required this.uyu,
      required this.uzs,
      required this.vef,
      required this.vnd,
      required this.vuv,
      required this.wst,
      required this.xaf,
      required this.xag,
      required this.xau,
      required this.xcd,
      required this.xdr,
      required this.xof,
      required this.xpf,
      required this.yer,
      required this.zar,
      required this.zmk,
      required this.zmw,
      required this.zwl});

  static Symbols fromJson(Map<String, dynamic> json) {
    return Symbols(
        aed: json["AED"],
        afn: json["AFN"],
        all: json["ALL"],
        amd: json["AMD"],
        ang: json["ANG"],
        aoa: json["AOA"],
        ars: json["ARS"],
        aud: json["AUD"],
        awg: json["AWG"],
        azn: json["AZN"],
        bam: json["BAM"],
        bbd: json["BBD"],
        bdt: json["BDT"],
        bgn: json["BGN"],
        bhd: json["BHD"],
        bif: json["BIF"],
        bmd: json["BMD"],
        bnd: json["BND"],
        bob: json["BOB"],
        brl: json["BRL"],
        bsd: json["BSD"],
        btc: json["BTC"],
        btn: json["BTN"],
        bwp: json["BWP"],
        byn: json["BYN"],
        byr: json["BYR"],
        bzd: json["BZD"],
        cad: json["CAD"],
        cdf: json["CDF"],
        chf: json['CHF'],
        clf: json["CLF"],
        clp: json["CLP"],
        cny: json["CNY"],
        cop: json["COP"],
        crc: json["CRC"],
        cuc: json["CUC"],
        cup: json["CUP"],
        cve: json["CVE"],
        czk: json["CZK"],
        djf: json["DJF"],
        dkk: json["DKK"],
        dop: json["DOP"],
        dzd: json["DZD"],
        egp: json["EGP"],
        ern: json["ERN"],
        etb: json["ETB"],
        eur: json["EUR"],
        fjd: json["FJD"],
        fkp: json["FKP"],
        gbp: json["GBP"],
        gel: json["GEL"],
        ggp: json["GGP"],
        ghs: json["GHS"],
        gip: json["GIP"],
        gmd: json["GMD"],
        gnf: json["GNF"],
        gtq: json["GTQ"],
        gyd: json["GYD"],
        hkd: json["HKD"],
        hnl: json["HNL"],
        hrk: json["HRK"],
        htg: json["HTG"],
        huf: json["HUF"],
        idr: json["IDR"],
        ils: json["ILS"],
        imp: json["IMP"],
        inr: json["INR"],
        iqd: json["IQD"],
        irr: json["IRR"],
        isk: json["ISK"],
        jep: json["JEP"],
        jmd: json["JMD"],
        jod: json["JOD"],
        jpy: json["JPY"],
        kes: json["KES"],
        kgs: json["KGS"],
        khr: json["KHR"],
        kmf: json["KMF"],
        kpw: json["KPW"],
        krw: json["KRW"],
        kwd: json["KWD"],
        kyd: json["KYD"],
        kzt: json["KZT"],
        lak: json["LAK"],
        lbp: json["LBP"],
        lkr: json["LKR"],
        lrd: json["LRD"],
        lsl: json["LSL"],
        ltl: json["LTL"],
        lvl: json["LVL"],
        lyd: json["LYD"],
        mad: json["MAD"],
        mdl: json["MDL"],
        mga: json["MGA"],
        mkd: json["MKD"],
        mmk: json["MMK"],
        mnt: json["MNT"],
        mop: json["MOP"],
        // mrq: json["MRQ"],
        mur: json["MUR"],
        mvr: json["MVR"],
        mwk: json["MWK"],
        mxn: json["MXN"],
        myr: json["MYR"],
        mzn: json["MZN"],
        nad: json["NAD"],
        ngn: json["NGN"],
        nio: json["NIO"],
        nok: json["NOK"],
        npr: json["NPR"],
        nzd: json["NZD"],
        omr: json["OMR"],
        pab: json["PAB"],
        pen: json["PEN"],
        pgk: json["PGK"],
        php: json["PHP"],
        pkr: json["PKR"],
        pln: json["PLN"],
        pyg: json["PYG"],
        qar: json["QAR"],
        ron: json["RON"],
        rsd: json["RSD"],
        rub: json["RUB"],
        rwf: json["RWF"],
        sar: json["SAR"],
        sbd: json["SBD"],
        scr: json["SCR"],
        sdg: json["SDG"],
        sek: json["SEK"],
        sgd: json["SGD"],
        shp: json["SHP"],
        sll: json["SLL"],
        sos: json["SOS"],
        srd: json["SRD"],
        std: json["STD"],
        svc: json["SVC"],
        syp: json["SYP"],
        szl: json["SZL"],
        thb: json["THB"],
        tjs: json["TJS"],
        tmt: json["TMT"],
        tnd: json["TND"],
        top: json["TOP"],
        tryy: json["TRY"],
        ttd: json["TTD"],
        twd: json["TWD"],
        tzs: json["TZS"],
        uah: json["UAH"],
        ugx: json["UGX"],
        usd: json["USD"],
        uyu: json["UYU"],
        uzs: json["UZS"],
        vef: json["VEF"],
        vnd: json["VND"],
        vuv: json["VUV"],
        wst: json["WST"],
        xaf: json["XAF"],
        xag: json["XAG"],
        xau: json["XAU"],
        xcd: json["XCD"],
        xdr: json["XDR"],
        xof: json["XOF"],
        xpf: json["XPF"],
        yer: json["YER"],
        zar: json["ZAR"],
        zmk: json["ZMK"],
        zmw: json["ZMW"],
        zwl: json["ZWL"]);
  }
}
