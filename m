Return-Path: <devicetree+bounces-1250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD67D7A57BC
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 05:05:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE8DD1C20859
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 03:05:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED5B531A9C;
	Tue, 19 Sep 2023 03:05:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50AF52AB2C
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:05:00 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CEE2103;
	Mon, 18 Sep 2023 20:04:57 -0700 (PDT)
X-UUID: 4c790b7c569911ee8051498923ad61e6-20230919
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=20/tpTmQhd4U+uYjsTJOxjWIlo8l32/jVzBj8aEsp9M=;
	b=KYw98cN+AR4ExaBl3VNIGRUswSACAUwhNLszICA80XNo6T3PfT4oxWVp57x+qLQox858dQ3S2YPce+GNXkrL73112E2YrHcZZolRh8hqI0HXyPOhYsqNchPAdfaX9+EPEaNiTL26bj2fptmlnpUWf3I/va8U5rrJXkfUccCg/+4=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.31,REQID:e2afacab-b7ee-4194-8c83-b5ea45727a97,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:0ad78a4,CLOUDID:fb212fc3-1e57-4345-9d31-31ad9818b39f,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 4c790b7c569911ee8051498923ad61e6-20230919
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw02.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 390539628; Tue, 19 Sep 2023 11:04:50 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 19 Sep 2023 11:04:48 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 19 Sep 2023 11:04:48 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gASeqkrjIgRfZbETPqubnz+Vw5lA6UrK7am2ZxXAcLB1Un98V4okFJZUz8frcQkyIcw69VzJsYSEB9ruPgzqz9yQn5r0QG51VDLo0+2c19KqSQqRVmV6J+wqNaET/llGcXOXlSKETy1f/OChp08M8SZFpkfo5YdBaS4ll9d1ZUPwy7An1MLwwlOrffgLg1aaWy+0qz7rUmbKKe4cjtZh3ocSLJezZmGTJskC5I3rssISSY0QiXL/v6ipLQr7o/VKSmStVCKP+nrs3beFrHSTuGIKTb9J09J6EELSAefSAJ9yz1oWlrhz8u+dTa8rs28hvov7d3M0qgPM+L/CEk6c3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=20/tpTmQhd4U+uYjsTJOxjWIlo8l32/jVzBj8aEsp9M=;
 b=WRE5nTNoLsNFqT0x6Bf3ozHyS4mDzWS9DMTuj3Jgedccv4a1Z2MTgOGpAOvZ2KRv9vGGmCNXnrzLNuK6p5zAcRCkF+Eg3RS5sUGfuLYCNyKM7KeKR85kYlncyMRA72p1AdNw0StjmnVIBjvGjfpOWDSMgak4PxIkV5e13fYpJRKO9XIgRR+IEafswUANntsY5t3hNnXjxUHfnS+dJp59eBN9bQ84MaaqdeI4Zqo+esWXDBHdqdEu1uW+AINZG8SSdrUj5H3Mb8L5jrcXm6SFqswgprfo71+ZTSipoVGvPKq3x2+JqdbZimXfquwDnAz2vbw9DakKhCh0XUftsv+bKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=20/tpTmQhd4U+uYjsTJOxjWIlo8l32/jVzBj8aEsp9M=;
 b=Klb5VlqhzFvRDM6KEqstgjzMkEbrcTWHHOATOhm/MYjIq5C6eQI5tSBDImgiM3WclVs0+nnIjRNVqoWnU0xvbe47auMcoweO8SKNf/TKXDggkL/cmv7OpVqL+dbWDl+NwA8tKHYfNH1FVXUWMmTRkNi2QCWoEnHYIji5gvmmDm4=
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by SG2PR03MB6455.apcprd03.prod.outlook.com (2603:1096:4:1c3::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.27; Tue, 19 Sep
 2023 03:04:46 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9c2c:c08a:212f:e984]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::9c2c:c08a:212f:e984%6]) with mapi id 15.20.6792.026; Tue, 19 Sep 2023
 03:04:46 +0000
From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
To: "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	=?utf-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>,
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	=?utf-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>,
	=?utf-8?B?Sm9obnNvbiBXYW5nICjnjovogZbpkasp?= <Johnson.Wang@mediatek.com>,
	=?utf-8?B?SmFzb24tY2ggQ2hlbiAo6Zmz5bu66LGqKQ==?=
	<Jason-ch.Chen@mediatek.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, =?utf-8?B?U2hhd24gU3VuZyAo5a6L5a2d6KyZKQ==?=
	<Shawn.Sung@mediatek.com>, "linux-mediatek@lists.infradead.org"
	<linux-mediatek@lists.infradead.org>,
	=?utf-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?= <Nancy.Lin@mediatek.com>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	=?utf-8?B?RWx2aXMgV2FuZyAo546L5YabKQ==?= <Elvis.Wang@mediatek.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>
Subject: Re: [PATCH 11/15] soc: mediatek: Add cmdq_insert_backup_cookie before
 EOC for secure pkt
Thread-Topic: [PATCH 11/15] soc: mediatek: Add cmdq_insert_backup_cookie
 before EOC for secure pkt
Thread-Index: AQHZ6mWatWuIpgCb0E2T0O8v70XzkrAhd0qA
Date: Tue, 19 Sep 2023 03:04:46 +0000
Message-ID: <2d12673fbbd62a14e3108ce92230c90d4e5c75c2.camel@mediatek.com>
References: <20230918192204.32263-1-jason-jh.lin@mediatek.com>
	 <20230918192204.32263-12-jason-jh.lin@mediatek.com>
In-Reply-To: <20230918192204.32263-12-jason-jh.lin@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|SG2PR03MB6455:EE_
x-ms-office365-filtering-correlation-id: 7cbe046e-64b5-4813-5275-08dbb8bd2e14
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1VcBSrHDlnD70ZuBnTcZfxggi0t7715TtZYckMmJWd6un98R4mXVQlhBmHH8l8F8vGXPlWRGXpj1o5IPKB73Kz7zMCKd/vLMJ7VWb1Bh2gcOZD65biLICVEMrfOmyxQbWYHazJkfpcu0bZuJnoNu71NgPKj8/4KULo9fSYzs5Mtb1WYPF/FI9UXFeBcwTvNl13j708DCHFlsh+h2ph2gYmUDazLtpviAuxok9T4gWuL7bSOhS4yrhsrRYE+PBZN5yxOZF1HXDJMlNx13nTBpGOUIRrD0nZKaeNSX09O2c14XwI40sW2bpkAz2wytOPySH/Ux/Li9dbi0YGp93ITSHYyxbeLiadJscQRwSfP8TsKbQSOoTIrjwpHkMlhRsDLtJB3UriSHl72NXWejJ+JKKitdd0Gyy17Hr8F9w5H4YQ+n7DvLMshA3q9gOlTte8tPEF3ZBeFfMSL8rXa6ySN0kKpo3viOsKwl52fVQbn/wbczBxq+LgoH46nNPtIYo1EXpd7IEHzzff+zF1nf+aXtHuo0t1H1Yx7+oax9Df8qlvS4LM0JwuLsXOsmwQJu+6vn+8BlROqQeaRoRngb8wCcWH6C7gwwYKtjdrfwehdtHZH4e0MKrQpNKnpW35cg7bEBxqWvmJnlQ7mRt0Z9dryYv0ES8falYT1umAVNYesaoV4=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(396003)(366004)(346002)(376002)(39860400002)(451199024)(186009)(1800799009)(54906003)(76116006)(316002)(66446008)(86362001)(66476007)(64756008)(66556008)(66946007)(110136005)(2906002)(38070700005)(38100700002)(122000001)(85182001)(41300700001)(36756003)(7416002)(5660300002)(478600001)(71200400001)(6506007)(6486002)(6512007)(4326008)(8936002)(8676002)(107886003)(26005)(2616005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aGpXYVZxRFpXVzd5Q3FyVFdXWWpuRGJBR01BRjBvMkhpMUdBQTVEYjV1Z0Vu?=
 =?utf-8?B?VWRYSW4vRDJnWWJ6Mi9IZWEzVlNudWZxcFlQbTBlbUxpUEdEeE9yWkVaSW1I?=
 =?utf-8?B?RUtaVDFWdmNQWWFXZS9MNFBRQ0dBUzdDSnJac29ZK0FQVlNwRDkrM24rZjBN?=
 =?utf-8?B?N0hjM29mMllDcGg2YjBqaWk3L2x2ZlU1eGkxTGZpWnF5YW0vSXI4TSs5cFlB?=
 =?utf-8?B?TGt2VHpOOGNVYWIrNDJCc2RUZ0RUZ3JLNXRiSlp6cy81bGNpUnpOOVc4Uk1j?=
 =?utf-8?B?dGVvOVI4Z3hCa01xZWZXc3VhNy92TWlnNWRNTUpEUFRZQ29mcnNseWh6TmFJ?=
 =?utf-8?B?WkxzVklra1hVbyt1NitTbXlmUU5kZGRpZE1US04xVVJxblIxZ01TazIzRkdU?=
 =?utf-8?B?NTdsQm1hTUw5VUlvdVdnY0F3QW94LzhJbVFKb3FNUkJOc2dCQTVvVENUd3ZK?=
 =?utf-8?B?aFVSelhmZXdEejMzZWVMbVlNSVNoaVJWYjRqV3BKRFF6ZncxZlZ5R2J1TzFj?=
 =?utf-8?B?Um1YMCt1Yk1mMlY4bmhiVDlPelJMUW5jZzdNM3NUUCtJS0pyK2liRVNMSjlw?=
 =?utf-8?B?TEdiVHN2WWY2MEhiMlZZanpXdVZTWDB6TlcrTGc3S0x2UVVBTzBtUXFtYmcz?=
 =?utf-8?B?OUYzUnQyZUN3QWRvdnlRSmNWRHF3VXJmQk54L0V3endEWFFFeHo0SXlWaHNP?=
 =?utf-8?B?eFY5dU81bWgxNC9HNWRTT1BBcDFGMFBaTEU2TmFzUUg4Y1JRa21HaXQ1OHRN?=
 =?utf-8?B?c2JNNldZY1lOZGhQeGJFTmdWVEp2MEJoL0o3QUN2c2RSelNwQlk3M3dtZGh2?=
 =?utf-8?B?aWdSSDJ4OXZEWlVMeDAzWHdkbFhjSWZPWE9oR0QwZUoxa3Y1YlZEcnRUck1z?=
 =?utf-8?B?bHNqTmU2TXd5YUtJQXlCd2NTQVFBQXdyVDlCV2I2bWltejlwRUZWYkRDTVl0?=
 =?utf-8?B?Und5V1A3Qk1iY2RZZk9PRkZDVkt4eXJhVXpSYmV4Tk1Ib0tnVFJRRXRwTFM5?=
 =?utf-8?B?eFpjeU1lMCtROTZ2Uk96WlhlMEtBWU5qRXQyQktCYkl2VStvaFRRbHROVVlv?=
 =?utf-8?B?Nk5TWGxaWDMvaWJFOFkzSkF5U3lJWGNlMVZpdmpxV0duZ0ltY0RuVWh6b3VL?=
 =?utf-8?B?ZGtpbmVJMFNxQzhWZkMwZkJwV3ltemd4WTcyNWpFdWFvVkNTY000NVZZc0Y4?=
 =?utf-8?B?Z2d2UktYRE5iRmlMcE5TbHFFdXRSalpSWGVFT01WNHAxT1dNZ3VRUDFDcEdG?=
 =?utf-8?B?L0g1QWZLbEZtWlViTEM4bTFtV3FtWm1DM2tuRDJFODhwY1kzRG9xejh6YzhC?=
 =?utf-8?B?U3pNV0NIVTBodlJWMEJmNG9XSDYyVmhMbGUrZ3l6NmttWTdWUVQwN3dSVVpZ?=
 =?utf-8?B?RmV2QUpiaWszSzdsRmF4NkI3NUdFaG1HaGhLeDVmaWI1R3phK29IZC9mYi9I?=
 =?utf-8?B?eGEvYkxieWxXTUZoUEo3a216QkN5NHlUSVVhaWFVSXRvZC95MjZNb2NhbDU2?=
 =?utf-8?B?THpoS2VjTFh1bkprckxKdEFrM1J1WHgrQXhlMkRSVXRDbXRrcHRXZUFhbHo0?=
 =?utf-8?B?eHl0dVR4V2NsejFjekpnbWluaUVGTnRLR0YxOENJbkFoRDlpTVJQSzB4V3JJ?=
 =?utf-8?B?SS9LNVJGS0dodVlJQzRWWjZHTSszRzB6ck9NMjFnQ2grYUREeEdnckpGR1ho?=
 =?utf-8?B?elJic3BRY1BCU0FwczB4RFB2ZVQxM21IWkhOakhYRDM5R2Y5bFNOV3M0UlND?=
 =?utf-8?B?NXZ6UVN5SldMSHEyL3FxNVdlRFd4WTdtRldEbGRYK3owZlFDRUVoSTJxVlRn?=
 =?utf-8?B?a0R0V3ZyK0hib0tIUE9CWjdiQW5BaGlpQi9ZYitiRGFTdkcvaXp0TjNZaHJC?=
 =?utf-8?B?NGNUTzIyclhHTXc1TnppakxyZG1tekFWOFZEc0s1aTZDbnJnRjRmeVl3eHhh?=
 =?utf-8?B?MVFWellXS2pOdUZ0eFV6UHBzOFA5Sis5UEpvak00SCtxek1MdDZuTFZsYlpv?=
 =?utf-8?B?YjY3NCtEOWdvcXVWWGFlNFJTRHc0aVVnVTlCK1IyLzY2Q0VvYmpVL28rcDZa?=
 =?utf-8?B?eGJoZjVuWDlmV2FNSWtwMnlDajJYNkJpcDFRSlJ3amh2allSbGZCcEp5c2dF?=
 =?utf-8?B?WVhIcWF2N2FqbklndVRzb3ZZYW5adW55VjE0MG02bHZDaEgyb2NocnNUa1Nk?=
 =?utf-8?B?YXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <54122BBB0BED4442B22A3AB46AB44204@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cbe046e-64b5-4813-5275-08dbb8bd2e14
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2023 03:04:46.4360
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Px2eqNaNCr8unBUz8Vgh3c0vu6sAxnmE+dyTkFmaTkDeXuGUgMMtVlrQaKF6F2uGy0YjysYWNvd9mVpM20vVkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR03MB6455
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--10.002300-8.000000
X-TMASE-MatchedRID: QW5G6BKkLToOwH4pD14DsPHkpkyUphL9MZm0+sEE9muJoFTGeLN6N3LM
	RSx26gTi00qMv6F9X+45QwfdQ6pO4HwvP2dtBRFiAjTI/+6gf4M6VbUEB5u/MPt592eq2xoTB7X
	WBXOexYUL59Sz+RsOzWrpSxhrLECDVJTV35UngiOgx+na8dyT1buesBT0pDFRDpCUEeEFm7BCTN
	Fmsjt/Nt+rF9zKJaLKqaZYY+0jrEWgVtmaxVWDUWZUc2jtcaSdLoYOuiLW+uVpVFDnVbOsmqPFj
	JEFr+olFUew0Fl/1pH1MHKyrhxIFlZ0V5tYhzdWxEHRux+uk8h+ICquNi0WJKt0ezGukM6440Nz
	cy1ecdNipBLeh0hMN2oKtx40/sOfftwZ3X11IV0=
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--10.002300-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP:
	693288B1EC808D70DD056995B68C44E4703D8011216418ADD80778A51B5A9CDD2000:8
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_NONE,SPF_HELO_PASS,
	SPF_PASS,UNPARSEABLE_RELAY autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

SGksIEphc29uOg0KDQpPbiBUdWUsIDIwMjMtMDktMTkgYXQgMDM6MjIgKzA4MDAsIEphc29uLUpI
LkxpbiB3cm90ZToNCj4gQWRkIGNtZHFfaW5zZXJ0X2JhY2t1cF9jb29raWUgdG8gYXBwZW5kIHNv
bWUgY29tbWFuZHMgYmVmb3JlIEVPQzoNCj4gMS4gR2V0IEdDRSBIVyB0aHJlYWQgZXhlY3V0ZSBj
b3VudCBmcm9tIHRoZSBHQ0UgSFcgcmVnaXN0ZXIuDQo+IDIuIEFkZCAxIHRvIHRoZSBleGVjdXRl
IGNvdW50IGFuZCB0aGVuIHN0b3JlIGludG8gYSBzaGFyZWQgbWVtb3J5Lg0KPiAzLiBTZXQgYSBz
b2Z0d2FyZSBldmVudCBzaWdhbmwgYXMgc2VjdXJlIGlycSB0byBHQ0UgSFcuDQo+IA0KPiBTaW5j
ZSB0aGUgdmFsdWUgb2YgZXhlY3V0ZSBjb3VudCArIDEgaXMgc3RvcmVkIGluIGEgc2hhcmVkIG1l
bW9yeSwNCj4gQ01EUSBkcml2ZXIgaW4gdGhlIG5vcm1hbCB3b3JsZCBjYW4gdXNlIGl0IHRvIGhh
bmRsZSB0YXNrIGRvbmUgaW4gaXJxDQo+IGhhbmRsZXIgYW5kIENNRFEgZHJpdmVyIGluIHRoZSBz
ZWN1cmUgd29ybGQgd2lsbCB1c2UgaXQgdG8gc2NoZWR1bGUNCj4gdGhlIHRhc2sgc2xvdCBmb3Ig
ZWFjaCBzZWN1cmUgdGhyZWFkLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSmFzb24tSkguTGluIDxq
YXNvbi1qaC5saW5AbWVkaWF0ZWsuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvc29jL21lZGlhdGVr
L210ay1jbWRxLWhlbHBlci5jIHwgOSArKysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGlu
c2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9tZWRpYXRlay9tdGst
Y21kcS1oZWxwZXIuYw0KPiBiL2RyaXZlcnMvc29jL21lZGlhdGVrL210ay1jbWRxLWhlbHBlci5j
DQo+IGluZGV4IGJiYjEyNzYyMGJiMy4uN2I1MzkyODc4YWJhIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL3NvYy9tZWRpYXRlay9tdGstY21kcS1oZWxwZXIuYw0KPiArKysgYi9kcml2ZXJzL3NvYy9t
ZWRpYXRlay9tdGstY21kcS1oZWxwZXIuYw0KPiBAQCAtOCw2ICs4LDcgQEANCj4gICNpbmNsdWRl
IDxsaW51eC9tb2R1bGUuaD4NCj4gICNpbmNsdWRlIDxsaW51eC9tYWlsYm94X2NvbnRyb2xsZXIu
aD4NCj4gICNpbmNsdWRlIDxsaW51eC9vZi5oPg0KPiArI2luY2x1ZGUgPGxpbnV4L21haWxib3gv
bXRrLWNtZHEtc2VjLW1haWxib3guaD4NCj4gICNpbmNsdWRlIDxsaW51eC9zb2MvbWVkaWF0ZWsv
bXRrLWNtZHEuaD4NCj4gIA0KPiAgI2RlZmluZSBDTURRX1dSSVRFX0VOQUJMRV9NQVNLCUJJVCgw
KQ0KPiBAQCAtMTUzLDcgKzE1NCw5IEBAIHZvaWQgY21kcV9wa3RfZGVzdHJveShzdHJ1Y3QgY21k
cV9wa3QgKnBrdCkNCj4gIA0KPiAgCWRtYV91bm1hcF9zaW5nbGUoY2xpZW50LT5jaGFuLT5tYm94
LT5kZXYsIHBrdC0+cGFfYmFzZSwgcGt0LQ0KPiA+YnVmX3NpemUsDQo+ICAJCQkgRE1BX1RPX0RF
VklDRSk7DQo+ICsNCj4gIAlrZnJlZShwa3QtPnZhX2Jhc2UpOw0KPiArCWtmcmVlKHBrdC0+c2Vj
X2RhdGEpOw0KPiAgCWtmcmVlKHBrdCk7DQo+ICB9DQo+ICBFWFBPUlRfU1lNQk9MKGNtZHFfcGt0
X2Rlc3Ryb3kpOw0KPiBAQCAtNDU4LDYgKzQ2MSwxMiBAQCBpbnQgY21kcV9wa3RfZmluYWxpemUo
c3RydWN0IGNtZHFfcGt0ICpwa3QpDQo+ICAJc3RydWN0IGNtZHFfaW5zdHJ1Y3Rpb24gaW5zdCA9
IHsgezB9IH07DQo+ICAJaW50IGVycjsNCj4gIA0KPiArCWlmIChwa3QtPnNlY19kYXRhKSB7DQo+
ICsJCWVyciA9IGNtZHFfc2VjX2luc2VydF9iYWNrdXBfY29va2llKHBrdCk7DQo+ICsJCWlmIChl
cnIgPCAwKQ0KPiArCQkJcmV0dXJuIGVycjsNCj4gKwl9DQoNCkNsaWVudCBkcml2ZXIgY291bGQg
ZGlyZWN0bHkgY2FsbCBjbWRxX3NlY19pbnNlcnRfYmFja3VwX2Nvb2tpZSgpDQpiZWZvcmUgY2Fs
bCBjbWRxX3BrdF9maW5hbGl6ZSgpLiBJIHdvdWxkIGxpa2UgaGVscGVyIHByb3ZpZGUgc2ltcGxl
IEFQSQ0KYW5kIGNsaWVudCBkcml2ZXIgd291bGQgaW50ZWdyYXRlIHNpbXBsZSBBUEkgdG8gd2hh
dCB0aGV5IHdhbnQuDQoNClJlZ2FyZHMsDQpDSw0KDQo+ICsNCj4gIAkvKiBpbnNlcnQgRU9DIGFu
ZCBnZW5lcmF0ZSBJUlEgZm9yIGVhY2ggY29tbWFuZCBpdGVyYXRpb24gKi8NCj4gIAlpbnN0Lm9w
ID0gQ01EUV9DT0RFX0VPQzsNCj4gIAlpbnN0LnZhbHVlID0gQ01EUV9FT0NfSVJRX0VOOw0K

