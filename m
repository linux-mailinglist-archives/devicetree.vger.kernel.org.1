Return-Path: <devicetree+bounces-29364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3EE82287E
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 07:42:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D4D161C22F56
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 06:42:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 840A314F72;
	Wed,  3 Jan 2024 06:42:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="IhXZ4FMr";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="Aljwc8Dq"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3474514F6C;
	Wed,  3 Jan 2024 06:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 32434b74aa0311eea2298b7352fd921d-20240103
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=mmw2MnjS9B9b5ywl4v1QQvG4Fq3LiZBR3DU5QggdfgY=;
	b=IhXZ4FMrZltnwi/7GHhS6PMpbtQn4AqbZnUbNW49B4ch7mxeUb8S+F2KtDDs9OyaK0y2OqG3mPEH97PkImKiTd81aJ0XqIR7tx2wvRx8VgiT40h5JUNnwerSItMgMyC2hzxiCOPv9whgX5Ivtj9n1j3PT+xeX4IQHnKHMAlWjw0=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.35,REQID:c04975a0-1a0a-4c0b-a53f-aaead2f3a564,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5d391d7,CLOUDID:f433d68d-e2c0-40b0-a8fe-7c7e47299109,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULS
X-UUID: 32434b74aa0311eea2298b7352fd921d-20240103
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw02.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1511126820; Wed, 03 Jan 2024 14:41:59 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Wed, 3 Jan 2024 14:41:58 +0800
Received: from APC01-SG2-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Wed, 3 Jan 2024 14:41:58 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QxpPKwZGKD+vTlimg9LGKeQfb15Vsc+JARF/7fKl1ZvwD9h6mzbdzWHirUXhJ/o2BzzPXNGIab3MJptsdzEW6Z/p1Tl4Nv8yywX7VLQDuv49f5VTxpPgszdcOwQRVk5TtODhdNIkGxrgZAvNSQatCGVVz0cLWrWtnTtrLLsbPljzIjSMkc3v41sul7FgR96bESVABeBjEePG9Z0BA+fJ7Gm+ctUPiSz4tHLSGepPNr5AErnLLncA7xlmrU0si3iBhl3vzMGt2rPpfCarQy3fFPx2nG81MdiUqFteLUMnd+CzIYWZ53as9n4/fHxLeCaqqZ3iz2k3CeUMUE/zubdPEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mmw2MnjS9B9b5ywl4v1QQvG4Fq3LiZBR3DU5QggdfgY=;
 b=cWtg90HMjVrrTUeHvqi/jpezdY0Kk0XhkgW7kUqFLkoktpWY2Jk4fgLIdwuQsq10SPRo2lP0nlumB5xdNvxaYkTBud9XXDxK+c4gcheyuDZnUSiItA2xEnnpMLuDCAPeJxRcneH7kJi2Emdd9HU2q5FogDTQ+WrV/wuGhjE3C0KQplvmHYJBENvOIw7rWTmaSAVUFsCVlF7MQnW1Y48++PNzT0a/r4ozWaG2a2hOq7LGR7Kg5VrhfaRUaDwDFtP8pgyyzyybJmy5h8FWGTlONe3lk6yZCY5pwUQQjYBTO5IJUDSSZAHoSDI6HeRBmpmhmuffX68f8PvAW1FZc80t4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mmw2MnjS9B9b5ywl4v1QQvG4Fq3LiZBR3DU5QggdfgY=;
 b=Aljwc8DqHtHCYiq0MK56gmximsiuOvhEf8+LN5CkpRiGe7KnrsAkjkp84D6TKsSGb3FOPtGHjijUUTEOOfjCxoh0zwyyId/87zceQzj9gTJmb0STAH8y67ud9x93U9MZhBsnXuIvywYI7cRSqp4cOgbKMS4G/TlocP1HhppexFc=
Received: from SEYPR03MB7682.apcprd03.prod.outlook.com (2603:1096:101:149::11)
 by SI2PR03MB6808.apcprd03.prod.outlook.com (2603:1096:4:1ef::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.25; Wed, 3 Jan
 2024 06:41:54 +0000
Received: from SEYPR03MB7682.apcprd03.prod.outlook.com
 ([fe80::d006:ec9c:ff42:ff60]) by SEYPR03MB7682.apcprd03.prod.outlook.com
 ([fe80::d006:ec9c:ff42:ff60%4]) with mapi id 15.20.7159.013; Wed, 3 Jan 2024
 06:41:54 +0000
From: =?utf-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>
To: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>, "chunkuang.hu@kernel.org"
	<chunkuang.hu@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	=?utf-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>,
	=?utf-8?B?Sm9obnNvbiBXYW5nICjnjovogZbpkasp?= <Johnson.Wang@mediatek.com>,
	"linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
	"jason-jh.lin@mediatek.corp-partner.google.com"
	<jason-jh.lin@mediatek.corp-partner.google.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>,
	=?utf-8?B?SmFzb24tY2ggQ2hlbiAo6Zmz5bu66LGqKQ==?=
	<Jason-ch.Chen@mediatek.com>, =?utf-8?B?U2hhd24gU3VuZyAo5a6L5a2d6KyZKQ==?=
	<Shawn.Sung@mediatek.com>, =?utf-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?=
	<Nancy.Lin@mediatek.com>, "jkardatzke@google.com" <jkardatzke@google.com>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v3 00/11] Add mediate-drm secure flow for SVP
Thread-Topic: [PATCH v3 00/11] Add mediate-drm secure flow for SVP
Thread-Index: AQHaNc3+7nX1yupbGU6kEXvTeFHqOrC+QiUAgAlyHoA=
Date: Wed, 3 Jan 2024 06:41:54 +0000
Message-ID: <6fa01d0434ffaca6d5bfdb2a06973ebfa2358c4f.camel@mediatek.com>
References: <20231223182932.27683-1-jason-jh.lin@mediatek.com>
	 <4fd704b3438e524362fada762b380bd18949cd0a.camel@mediatek.com>
In-Reply-To: <4fd704b3438e524362fada762b380bd18949cd0a.camel@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR03MB7682:EE_|SI2PR03MB6808:EE_
x-ms-office365-filtering-correlation-id: 3973d9da-dc82-44d4-1b39-08dc0c27132c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0xc5ip5VQi9RlYcipBx5sft9dIAY6wMxkOXFFd1awSwcQOEc5D9FASb2KiXP6Jvt0BzDz7FMeXKaJaiQpNR+EYwIKQ5wfTQcFDVgU2v+NgSwHgGJXWRnkaofvslhERBrP+VtBVOFClZmiMh+f45Vw5ouECGqeZgVbxLN2q1bSFummibIMUrucwNcQwcGaOXNCquv6HzWMgg6jZvon7X8ZYtMmuwuYySMqXk8G719wg29cBQEoAiQ9EDRjCKasXMLWHzNv4Gx1OG4AwzYpQ4oU5eEZrFBZpuctrkgdk6IUIsACZkVNmBDYfDxw3Ou1U+AMPwj6vzA5UsRYtm4+khhygxtH9TRDZ6V8q6gnxXZh0hICfQACtAzvEbNJQwZXU0iJUXm3uk7iGWSDY6Ch8GqPDBMSd2Chsz7bDBh56C57XlbUay6S7gupV4dlruaQQ8YDVzN3dnf31WYdTrmy7NNu+oth1H3iyHRmi3OKDR92fwrx2SMpKX2OPnNv7Oe9r7bZqrnUy0WwR1UY+HRrXlvtEdckI+tfWeWdSM+ty1Drl7cIKsWVtNLkz9NbFn1YHvVz5RksNFVLPXW84R4JuKBmbsClSVUsLsUS7K7IeaPuGVRtFtQbGv3u5hvRleWT9rlxa2WMXyDsoClM7+jNKNITg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEYPR03MB7682.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(346002)(376002)(39860400002)(136003)(396003)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(41300700001)(26005)(2616005)(38100700002)(122000001)(4001150100001)(83380400001)(8676002)(110136005)(54906003)(5660300002)(8936002)(316002)(7416002)(4326008)(2906002)(966005)(71200400001)(478600001)(91956017)(66556008)(76116006)(6486002)(38070700009)(6506007)(64756008)(66476007)(6512007)(66946007)(86362001)(66446008)(85182001)(36756003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RUlTMmRjdzE1eGlWZE1hUkszOS84Wm5XQ0w3ZzFKRUxBSzBnL3gvbUdXTGhW?=
 =?utf-8?B?YlVhVGR4N1NMTEE3UEdrNDF3U0ZkeXd0TkdWVWkvNFZqb3l3b3JnbkNjS0xI?=
 =?utf-8?B?S2dVdWdTUlpJd2VHNGJBRXZ0Ums3cEJnancxZkYzUkVsMmhxcCtyZkZtTVha?=
 =?utf-8?B?aGNSRGNyVjRsWVo3N0Y0dzRocUhaa3U0bkNGaEJaRkVzNE9LOFhuaWxuNlZ5?=
 =?utf-8?B?M0M2Y3BMZXhza3BPWVErYXlqNDlVdDNhRCtqVTgxU2dGNzhkeFJyWDY3OEk2?=
 =?utf-8?B?UVc2amw4RDNlb0M4alZ6NWtlQzZKQTJyMDk4dGQybURBWGdybS9kSm40RjQx?=
 =?utf-8?B?bGx3Ny9mamF0VGxkcWxjK2NOR2JwUGltRVVULzdHQ1FBK1h5MjNJLzk4dkZH?=
 =?utf-8?B?eFNPVHJQeEJMYkVXRHNVMEV3bFdQT3dNYzBBU3FINVBkVlQxZkdnTjAzc2Ji?=
 =?utf-8?B?MFU5NzY4VXZGMExkY3hxT3pTbmFMOXB5V291VzJBU1p2V3FPMDhKVXZJUUE1?=
 =?utf-8?B?ZGZ5dExySkZSUUVqczBKOUE1dFFML0RlRE02NjRLSndBNjVLU3VPSUwvQU53?=
 =?utf-8?B?TFkvbzA5Nkp6eUxTbDZIL21RNXViMG14QUFmbkwwdzRPeDQrckQ3b3VUSlE2?=
 =?utf-8?B?S2NHUDhTMXFEeEZ5ZnZZZ2RKRjJNRjh1a0J4ZDlPOHhPNDBQMS9ieHpnMWFz?=
 =?utf-8?B?VVNGNEQ4anE1YmE1ZXlXVUN3NjhNK2U2U05yd29RdmxHVlF2Q2Fic1o5WGJ2?=
 =?utf-8?B?SnNOTnBSN3poOFBJS1FBL1ZpajM0N0lCdlNycUpBaExqbnltdERlQVNlY1Ji?=
 =?utf-8?B?ZFM0cm1ZbzQrK0hocmVxV0NaSDRRRjFLQXRIL2d0Zm1XRXgwRkt4ZjJCOTV5?=
 =?utf-8?B?ZjI3anZZQ3lFbGVJZU02QkZSV1k5V2JjS1dWVzRBSGJ1UTR1SkI1SmtXOTFQ?=
 =?utf-8?B?Mkk3RHhRaHR5L1BiRzM0U1ZpRlk1S1QwZG9NYlZPUUVJc1RPU1BPSnA4Rktj?=
 =?utf-8?B?UVhPR0Mvald3bVREcGIvcXJOM3U5d3FxYjVxTlU3a09TRlltUUlKUndoVGRF?=
 =?utf-8?B?VlczYVVxM282Q0Yra1VieFh1T3NsTkxLZWFkRDJNWmkxT3R1bnBjRUsyV0ht?=
 =?utf-8?B?ZGFzOXNnZzVrYU1kcmE0UzRDbHErT1lMVGRaMlE4ekxabVh4NWR3ZXpZOWtE?=
 =?utf-8?B?WWFMVUNodHdmTklRT3Nzck45NzlZYm5UbnBNcUpEYVUrQ3hyU1BlN1ZMaDM2?=
 =?utf-8?B?MThlaklsTExMUVFkZ0h2em42My9NVVF4TnBFZ1BCV3VRbExDRU53dnBWR3pk?=
 =?utf-8?B?eXdDcHB6ZGlMQUdKWW40cE10OVExaWtZWEpWbGJxd1Q5Y2tOTXdOTTBWbkcw?=
 =?utf-8?B?Q29GaTkwUFNld2xUQlRUdXNSRzhjUWo5ZzRaeWVJNHlwdjltRzFpb1NpaDdh?=
 =?utf-8?B?MHlHRzlCVjRxS0NhQklEclNScHRoZ2NYSFFLVGFNcFR3U3hwVjNDaXc4RUZG?=
 =?utf-8?B?UHU3enVHYWhnUURUdHc4Rll4UXVJRjZFZkdZOXpZaHloTEhuSWhTU1lPRTJO?=
 =?utf-8?B?TmhqZjVCYkZ1R2pydStmeHFrd001RzNjVndOOXpNaC8xaUt1b0xBVFBUUVhx?=
 =?utf-8?B?empmT1VSTXhKOVQ1K0hacnhvN21jdHVJb1d2VnVvbnRTSXZpcVpBd1BaVTZ4?=
 =?utf-8?B?ZElTY2pKRG5YUTFUVzh0OXVEeUtsdkNTcHJ5bFNvR2dJelo2azJTcGpza2t2?=
 =?utf-8?B?UzY5YmdSYXVWNGl4bjUrUjdwbUdVeFJZNVZNS2EwQlJ1eU5CSHdwcnRZUHRV?=
 =?utf-8?B?emg1aUpZaDV1eDNtRWtEMVFydXFoRWoxWVhDMkJKMThnNE5GQ0dVWXFOeXNJ?=
 =?utf-8?B?TUNIRTB6VWpMbld6K29LSTZrTW14aWo3R3Q3RE96MkFOR0draHJpbk5EQ3Q1?=
 =?utf-8?B?OFNMc2FSeEdLcCswcXJlbUdUZ1JHTWVEeWw1VUVtZGRsQWE5YjU4YUk5UEFI?=
 =?utf-8?B?MFZOL1NMTUp3RUo0aWVDbjNnVElTL2t0K2kxUHc5MWhGVDZxV0YxNmwyVlJw?=
 =?utf-8?B?bE5nNjZTeVZwNlhzM2N6cUlHaXI4aEJwY3AvQVlkMEp1Y2hCYU91azROVGE5?=
 =?utf-8?B?dGJoMGV4STlGN1UwWFRybmEzUlpZaCtQZmxmM1hhNVR5ay9kYUk3OXUwa3hq?=
 =?utf-8?B?T1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6043DB840547A94C8E88E877802910CB@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR03MB7682.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3973d9da-dc82-44d4-1b39-08dc0c27132c
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2024 06:41:54.4411
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8FX+9F90KK7iN615Vzp4sXEh4gJH7kfRExZ/RKoLOv8ziivypFWsXFFfnrYQrn7FMSQ7aKh0mKRsSzFrw3YlFX8dQiRaAkKF6RWLQd7YHOY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI2PR03MB6808

SGkgQ0ssDQoNClRoYW5rcyBmb3IgdGhlIHJldmlld3MuDQoNCk9uIFRodSwgMjAyMy0xMi0yOCBh
dCAwNjoyNyArMDAwMCwgQ0sgSHUgKOiDoeS/iuWFiSkgd3JvdGU6DQo+IEhpLCBKYXNvbjoNCj4g
DQo+IE9uIFN1biwgMjAyMy0xMi0yNCBhdCAwMjoyOSArMDgwMCwgSmFzb24tSkguTGluIHdyb3Rl
Og0KPiA+IEZyb206IEphc29uLWpoIExpbiA8amFzb24tamgubGluQG1lZGlhdGVrLmNvcnAtcGFy
dG5lci5nb29nbGUuY29tPg0KPiA+IA0KPiA+IE1lbW9yeSBEZWZpbml0aW9uczoNCj4gPiBzZWN1
cmUgbWVtb3J5IC0gTWVtb3J5IGFsbG9jYXRlZCBpbiB0aGUgVEVFIChUcnVzdGVkIEV4ZWN1dGlv
bg0KPiA+IEVudmlyb25tZW50KSB3aGljaCBpcyBpbmFjY2Vzc2libGUgaW4gdGhlIFJFRSAoUmlj
aCBFeGVjdXRpb24NCj4gPiBFbnZpcm9ubWVudCwgaS5lLiBsaW51eCBrZXJuZWwvdXNlcnNwYWNl
KS4NCj4gPiBzZWN1cmUgaGFuZGxlIC0gSW50ZWdlciB2YWx1ZSB3aGljaCBhY3RzIGFzIHJlZmVy
ZW5jZSB0byAnc2VjdXJlDQo+ID4gbWVtb3J5Jy4gVXNlZCBpbiBjb21tdW5pY2F0aW9uIGJldHdl
ZW4gVEVFIGFuZCBSRUUgdG8gcmVmZXJlbmNlDQo+ID4gJ3NlY3VyZSBtZW1vcnknLg0KPiA+IHNl
Y3VyZSBidWZmZXIgLSAnc2VjdXJlIG1lbW9yeScgdGhhdCBpcyB1c2VkIHRvIHN0b3JlIGRlY3J5
cHRlZCwNCj4gPiBjb21wcmVzc2VkIHZpZGVvIG9yIGZvciBvdGhlciBnZW5lcmFsIHB1cnBvc2Vz
IGluIHRoZSBURUUuDQo+ID4gc2VjdXJlIHN1cmZhY2UgLSAnc2VjdXJlIG1lbW9yeScgdGhhdCBp
cyB1c2VkIHRvIHN0b3JlIGdyYXBoaWMNCj4gPiBidWZmZXJzLg0KPiA+IA0KPiA+IE1lbW9yeSBV
c2FnZSBpbiBTVlA6DQo+ID4gVGhlIG92ZXJhbGwgZmxvdyBvZiBTVlAgc3RhcnRzIHdpdGggZW5j
cnlwdGVkIHZpZGVvIGNvbWluZyBpbiBmcm9tDQo+ID4gYW4NCj4gPiBvdXRzaWRlIHNvdXJjZSBp
bnRvIHRoZSBSRUUuIFRoZSBSRUUgd2lsbCB0aGVuIGFsbG9jYXRlIGEgJ3NlY3VyZQ0KPiA+IGJ1
ZmZlcicgYW5kIHNlbmQgdGhlIGNvcnJlc3BvbmRpbmcgJ3NlY3VyZSBoYW5kbGUnIGFsb25nIHdp
dGggdGhlDQo+ID4gZW5jcnlwdGVkLCBjb21wcmVzc2VkIHZpZGVvIGRhdGEgdG8gdGhlIFRFRS4g
VGhlIFRFRSB3aWxsIHRoZW4NCj4gPiBkZWNyeXB0DQo+ID4gdGhlIHZpZGVvIGFuZCBzdG9yZSB0
aGUgcmVzdWx0IGluIHRoZSAnc2VjdXJlIGJ1ZmZlcicuIFRoZSBSRUUgd2lsbA0KPiA+IHRoZW4g
YWxsb2NhdGUgYSAnc2VjdXJlIHN1cmZhY2UnLiBUaGUgUkVFIHdpbGwgcGFzcyB0aGUgJ3NlY3Vy
ZQ0KPiA+IGhhbmRsZXMnIGZvciBib3RoIHRoZSAnc2VjdXJlIGJ1ZmZlcicgYW5kICdzZWN1cmUg
c3VyZmFjZScgaW50byB0aGUNCj4gPiBURUUgZm9yIHZpZGVvIGRlY29kaW5nLiBUaGUgdmlkZW8g
ZGVjb2RlciBIVyB3aWxsIHRoZW4gZGVjb2RlIHRoZQ0KPiA+IGNvbnRlbnRzIG9mIHRoZSAnc2Vj
dXJlIGJ1ZmZlcicgYW5kIHBsYWNlIHRoZSByZXN1bHQgaW4gdGhlICdzZWN1cmUNCj4gPiBzdXJm
YWNlJy4gVGhlIFJFRSB3aWxsIHRoZW4gYXR0YWNoIHRoZSAnc2VjdXJlIHN1cmZhY2UnIHRvIHRo
ZQ0KPiA+IG92ZXJsYXkNCj4gPiBwbGFuZSBmb3IgcmVuZGVyaW5nIG9mIHRoZSB2aWRlby4NCj4g
PiANCj4gPiBFdmVyeXRoaW5nIHJlbGF0aW5nIHRvIGVuc3VyaW5nIHNlY3VyaXR5IG9mIHRoZSBh
Y3R1YWwgY29udGVudHMgb2YNCj4gPiB0aGUNCj4gPiAnc2VjdXJlIGJ1ZmZlcicgYW5kICdzZWN1
cmUgc3VyZmFjZScgaXMgb3V0IG9mIHNjb3BlIGZvciB0aGUgUkVFDQo+ID4gYW5kDQo+ID4gaXMg
dGhlIHJlc3BvbnNpYmlsaXR5IG9mIHRoZSBURUUuDQo+ID4gDQo+ID4gRFJNIGRyaXZlciBoYW5k
bGVzIGFsbG9jYXRpb24gb2YgZ2VtIG9iamVjdHMgdGhhdCBhcmUgYmFja2VkIGJ5IGENCj4gPiAn
c2VjdXJlDQo+ID4gc3VyZmFjZScgYW5kIGZvciBkaXNwbGF5aW5nIGEgJ3NlY3VyZSBzdXJmYWNl
JyBvbiB0aGUgb3ZlcmxheQ0KPiA+IHBsYW5lLg0KPiA+IFRoaXMgaW50cm9kdWNlcyBhIG5ldyBm
bGFnIGZvciBvYmplY3QgY3JlYXRpb24gY2FsbGVkDQo+ID4gRFJNX01US19HRU1fQ1JFQVRFX0VO
Q1JZUFRFRCB3aGljaCBpbmRpY2F0ZXMgaXQgc2hvdWxkIGJlIGEgJ3NlY3VyZQ0KPiA+IHN1cmZh
Y2UnLiBBbGwgY2hhbmdlcyBoZXJlIGFyZSBpbiBNZWRpYVRlayBzcGVjaWZpYyBjb2RlLg0KPiAN
Cj4gSSB3b3VsZCBsaWtlIHRvIGRlY291cGxlIHNlY3VyZSBkaXNwbGF5IGFuZCBzZWN1cmUgZGVj
b2RlLiBPbmUgcmVhc29uDQo+IGlzIHRoYXQgSSB3b3VsZCBsaWtlIHNlY3VyZSBkaXNwbGF5IGNv
dWxkIGJlIHRlc3RlZCBpdHNlbGYgd2l0aG91dA0KPiBzZWN1cmUgZGVjb2RlLiBBbm90aGVyIHJl
YXNvbiBpcyB0aGF0IGlmIHNvbWVvbmUgaGFzIGRyYXcgYW4gaW1hZ2UNCj4gYW5kDQo+IHdhbnQg
dG8gZGlzcGxheSBzZWN1cmVseSwgdGhpcyBpcyBub3QgcmVsYXRlZCB0byBkZWNvZGUuDQo+IA0K
PiBUbyBhY2hpZXZlIHRoaXMsIG1lZGlhdGVrIGRybSBkcml2ZXIgc2hvdWxkIHByb3ZpZGUgcmVu
ZGVyIGZ1bmN0aW9uDQo+IG9uDQo+IHNlY3VyZSBzdXJmYWNlLiBUaGUgbW9zdCBzaW1wbGUgZnVu
Y3Rpb24gaXMgdG8gYml0Ymx0IGEgbm9ybWFsDQo+IHN1cmZhY2UNCj4gb250byBzZWN1cmUgc3Vy
ZmFjZS4gVXNlciBjb3VsZCBhbGxvY2F0ZSBib3RoIG5vcm1hbCBzdXJmYWNlIGFuZA0KPiBzZWN1
cmUNCj4gc3VyZmFjZSwgZHJhdyBvbiBub3JtYWwgc3VyZmFjZSBhbmQgYml0Ymx0IG5vcm1hbCBz
dXJmYWNlIG9udG8gc2VjdXJlDQo+IHN1cmZhY2UuIFdlIGNvdWxkIGhhdmUgbGltaXRhdGlvbiB0
aGF0IG5vcm1hbCBzdXJmYWNlIGFuZCBzZWN1cmUNCj4gc3VyZmFjZSBoYXZlIHRoZSBzYW1lIHdp
ZHRoLCBoZWlnaHQsIHBpdGNoLCBwaXhlbCBmb3JtYXQsIGFuZCB0aGUNCj4gYml0Ymx0IGlzIHRo
ZSBmdWxsIGltYWdlIGJpdGJsdC4gU28gbWVkaWF0ZWsgZHJtIGRyaXZlciBqdXN0IG5lZWQgYQ0K
PiBURUUNCj4gZnVuY3Rpb24gdGhhdCBkbyBtZW1vcnkgY29weSBmcm9tIG5vcm1hbCBzdXJmYWNl
IHRvIHNlY3VyZSBzdXJmYWNlLg0KPiANCj4gVGhpcyBpcyBub3QgYSBtdXN0LWJlIGZ1bmN0aW9u
LCBidXQgaXQgaGFzIHNvbWUgYmVuZWZpdCBmb3Igc2VjdXJlDQo+IGRpc3BsYXkuDQo+IA0KPiBS
ZWdhcmRzLA0KPiBDSw0KPiANCg0KT0ssIEknbGwgYWxzbyBhZGQgdGhpcyB0byBUT0RPLg0KDQpS
ZWdhcmRzLA0KSmFzb24tSkguTGluDQoNCj4gPiAtLS0NCj4gPiBUT0RPOg0KPiA+IDEpIFJlbW92
ZSBnZXQgc2VjIGxhcmIgcG9ydCBpbnRlcmZhY2UgaW4gZGRwX2NvbXAsIG92bCBhbmQNCj4gPiBv
dmxfYWRhcHRvci4NCj4gPiAyKSBWZXJpZnkgaW5zdHJ1Y3Rpb24gZm9yIGVuYWJsaW5nL2Rpc2Fi
bGluZyBkYXBjIGFuZCBsYXJiIHBvcnQgaW4NCj4gPiBURUUNCj4gPiAgICBkcm9wIHRoZSBzZWNf
ZW5naW5lIGZsYWdzIGluIG5vcm1hbCB3b3JsZCBhbmQuDQo+ID4gMykgTW92ZSBESVNQX1JFR19P
VkxfU0VDVVJFIHNldHRpbmcgdG8gc2VjdXJlIHdvcmxkIGZvcg0KPiA+IG10a19kaXNwX292bC5j
Lg0KPiA+IDQpIENoYW5nZSB0aGUgcGFyYW1ldGVyIHJlZ2lzdGVyIGFkZHJlc3MgaW4gbXRrX2Rk
cF9zZWNfd3JpdGUoKQ0KPiA+ICAgIGZyb20gInUzMiBhZGRyIiB0byAic3RydWN0IGNtZHFfY2xp
ZW50X3JlZyAqY21kcV9yZWciLg0KPiA+IDUpIEltcGxlbWVudCBzZXR0aW5nIG1tc3lzIHJvdXRp
bmcgdGFibGUgaW4gdGhlIHNlY3VyZSB3b3JsZA0KPiA+IHNlcmllcy4NCj4gPiAtLS0NCj4gPiBC
YXNlZCBvbiA1IHNlcmllcyBhbmQgMSBwYXRjaDoNCj4gPiBbMV0gdjMgZG1hLWJ1ZjogaGVhcHM6
IEFkZCBNZWRpYVRlayBzZWN1cmUgaGVhcA0KPiA+IC0gDQo+ID4gDQpodHRwczovL3VybGRlZmVu
c2UuY29tL3YzL19faHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LW1l
ZGlhdGVrL2xpc3QvP3Nlcmllcz04MDkwMjNfXzshIUNUUk5LQTl3TWcwQVJidyFsWUdXZmpqSUJs
eEp2d0JYV3l4SFR5YzJ2ZXc1WWFncVRfcUpacllPTlRIMjBoOTVxeEMzUEg5VjkxdmpwbFlVM1Mw
YXlzZXlIcHhSUUZTcUFUSGdEblUkDQo+ID4gIA0KPiA+IFsyXSB2MyBhZGQgZHJpdmVyIHRvIHN1
cHBvcnQgc2VjdXJlIHZpZGVvIGRlY29kZXINCj4gPiAtIA0KPiA+IA0KaHR0cHM6Ly91cmxkZWZl
bnNlLmNvbS92My9fX2h0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1t
ZWRpYXRlay9saXN0Lz9zZXJpZXM9ODA3MzA4X187ISFDVFJOS0E5d01nMEFSYnchbFlHV2ZqaklC
bHhKdndCWFd5eEhUeWMydmV3NVlhZ3FUX3FKWnJZT05USDIwaDk1cXhDM1BIOVY5MXZqcGxZVTNT
MGF5c2V5SHB4UlFGU3E5VFhNU0lRJA0KPiA+ICANCj4gPiBbM10gdjQgc29jOiBtZWRpYXRlazog
QWRkIHJlZ2lzdGVyIGRlZmluaXRpb25zIGZvciBHQ0UNCj4gPiAtIA0KPiA+IA0KaHR0cHM6Ly91
cmxkZWZlbnNlLmNvbS92My9fX2h0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9s
aW51eC1tZWRpYXRlay9wYXRjaC8yMDIzMTIxMjEyMTk1Ny4xOTIzMS0yLXNoYXduLnN1bmdAbWVk
aWF0ZWsuY29tL19fOyEhQ1RSTktBOXdNZzBBUmJ3IWxZR1dmampJQmx4SnZ3QlhXeXhIVHljMnZl
dzVZYWdxVF9xSlpyWU9OVEgyMGg5NXF4QzNQSDlWOTF2anBsWVUzUzBheXNleUhweFJRRlNxa080
XzBhYyQNCj4gPiAgDQo+ID4gWzRdIHYyIEFkZCBDTURRIGRyaXZlciBzdXBwb3J0IGZvciBtdDgx
ODgNCj4gPiAtIA0KPiA+IA0KaHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHBzOi8vcGF0
Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1tZWRpYXRlay9saXN0Lz9zZXJpZXM9ODEw
MzAyX187ISFDVFJOS0E5d01nMEFSYnchbFlHV2ZqaklCbHhKdndCWFd5eEhUeWMydmV3NVlhZ3FU
X3FKWnJZT05USDIwaDk1cXhDM1BIOVY5MXZqcGxZVTNTMGF5c2V5SHB4UlFGU3FjWGRLblhVJA0K
PiA+ICANCj4gPiBbNV0gQWRkIG1lZGlhdGVrLGdjZS1ldmVudHMgZGVmaW5pdGlvbiB0byBtZWRp
YXRlayxnY2UtbWFpbGJveA0KPiA+IGJpbmRpbmdzDQo+ID4gLSANCj4gPiANCmh0dHBzOi8vdXJs
ZGVmZW5zZS5jb20vdjMvX19odHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGlu
dXgtbWVkaWF0ZWsvbGlzdC8/c2VyaWVzPTgxMDkzOF9fOyEhQ1RSTktBOXdNZzBBUmJ3IWxZR1dm
ampJQmx4SnZ3QlhXeXhIVHljMnZldzVZYWdxVF9xSlpyWU9OVEgyMGg5NXF4QzNQSDlWOTF2anBs
WVUzUzBheXNleUhweFJRRlNxcUdNMDhhRSQNCj4gPiAgDQo+ID4gWzZdIHYzIEFkZCBDTURRIHNl
Y3VyZSBkcml2ZXIgZm9yIFNWUA0KPiA+IC0gDQo+ID4gDQpodHRwczovL3VybGRlZmVuc2UuY29t
L3YzL19faHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LW1lZGlhdGVr
L2xpc3QvP3Nlcmllcz04MTIzNzlfXzshIUNUUk5LQTl3TWcwQVJidyFsWUdXZmpqSUJseEp2d0JY
V3l4SFR5YzJ2ZXc1WWFncVRfcUpacllPTlRIMjBoOTVxeEMzUEg5VjkxdmpwbFlVM1MwYXlzZXlI
cHhSUUZTcV9ZWFRIOUEkDQo+ID4gIA0KPiA+IC0tLQ0KPiA+IENoYW5nZSBpbiB2MzoNCj4gPiAx
LiBmaXgga2VybmVsZG9jIHByb2JsZW1zDQo+ID4gMi4gZml4IHR5cG8gaW4gdGl0bGUgYW5kIGNv
bW1pdCBtZXNzYWdlDQo+ID4gMy4gYWRqdXN0IG5hbWluZyBmb3Igc2VjdXJlIHZhcmlhYmxlDQo+
ID4gNC4gYWRkIHRoZSBtaXNzaW5nIHBhcnQgZm9yIGlzX3N1ZWN1cmUgcGxhbmUgaW1wbGVtZW50
YXRpb24NCj4gPiA1LiB1c2UgQklUX1VMTCBtYWNybyB0byByZXBsYWNlIGJpdCBzaGlmdGluZw0K
PiA+IDYuIG1vdmUgbW9kaWZpY2F0aW9uIG9mIG92bF9hZGFwdG9yIHBhcnQgdG8gdGhlIGNvcnJl
Y3QgcGF0Y2gNCj4gPiA3LiBhZGQgVE9ETyBsaXN0IGluIGNvbW1pdCBtZXNzYWdlDQo+ID4gOC4g
YWRkIGNvbW1pdCBtZXNzYWdlIGZvciB1c2luZyBzaGFyZSBtZW1vcnkgdG8gc3RvcmUgZXhlY3V0
ZSBjb3VudA0KPiA+IA0KPiA+IENoYW5nZSBpbiB2MjoNCj4gPiANCj4gPiAxLiByZW1vdmUgdGhl
IERSSVZFUl9SRE5ERVIgZmxhZyBmb3IgbXRrX2RybV9pb2N0bA0KPiA+IDIuIG1vdmUgY21kcV9p
bnNlcnRfYmFja3VwX2Nvb2tpZSBpbnRvIGNsaWVudCBkcml2ZXINCj4gPiAzLiBtb3ZlIHNlY3Vy
ZSBnY2Ugbm9kZSBkZWZpbmUgZnJvbSBtdDgxOTUtY2hlcnJ5LmR0c2kgdG8NCj4gPiBtdDgxOTUu
ZHRzaQ0KPiA+IC0tLQ0KPiA+IENLIEh1ICgxKToNCj4gPiAgIGRybS9tZWRpYXRlazogQWRkIGlu
dGVyZmFjZSB0byBhbGxvY2F0ZSBNZWRpYVRlayBHRU0gYnVmZmVyLg0KPiA+IA0KPiA+IEphc29u
LUpILkxpbiAoMTApOg0KPiA+ICAgZHJtL21lZGlhdGVrL3VhcGk6IEFkZCBEUk1fTVRLX0dFTV9D
UkVBVEVfRU5DUllQVEVEIGZsYWcNCj4gPiAgIGRybS9tZWRpYXRlazogQWRkIHNlY3VyZSBidWZm
ZXIgY29udHJvbCBmbG93IHRvIG10a19kcm1fZ2VtDQo+ID4gICBkcm0vbWVkaWF0ZWs6IEFkZCBz
ZWN1cmUgaWRlbnRpZnkgZmxhZyBhbmQgZnVuY3V0aW9uIHRvDQo+ID4gbXRrX2RybV9wbGFuZQ0K
PiA+ICAgZHJtL21lZGlhdGVrOiBBZGQgbXRrX2RkcF9zZWNfd3JpdGUgdG8gY29uZmlnIHNlY3Vy
ZSBidWZmZXIgaW5mbw0KPiA+ICAgZHJtL21lZGlhdGVrOiBBZGQgZ2V0X3NlY19wb3J0IGludGVy
ZmFjZSB0byBtdGtfZGRwX2NvbXANCj4gPiAgIGRybS9tZWRpYXRlazogQWRkIHNlY3VyZSBsYXll
ciBjb25maWcgc3VwcG9ydCBmb3Igb3ZsDQo+ID4gICBkcm0vbWVkaWF0ZWs6IEFkZCBzZWN1cmUg
bGF5ZXIgY29uZmlnIHN1cHBvcnQgZm9yIG92bF9hZGFwdG9yDQo+ID4gICBkcm0vbWVkaWF0ZWs6
IEFkZCBzZWN1cmUgZmxvdyBzdXBwb3J0IHRvIG1lZGlhdGVrLWRybQ0KPiA+ICAgZHJtL21lZGlh
dGVrOiBBZGQgY21kcV9pbnNlcnRfYmFja3VwX2Nvb2tpZSBiZWZvcmUgc2VjdXJlIHBrdA0KPiA+
IGZpbmFsaXplDQo+ID4gICBhcm02NDogZHRzOiBtdDgxOTU6IEFkZCBzZWN1cmUgbWJveCBzZXR0
aW5ncyBmb3IgdmRvc3lzDQo+ID4gDQo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsv
bXQ4MTk1LmR0c2kgICAgICB8ICAgNiArLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsv
bXRrX2Rpc3BfZHJ2LmggICAgICAgfCAgIDMgKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0
ZWsvbXRrX2Rpc3Bfb3ZsLmMgICAgICAgfCAgMzEgKy0NCj4gPiAgLi4uL2dwdS9kcm0vbWVkaWF0
ZWsvbXRrX2Rpc3Bfb3ZsX2FkYXB0b3IuYyAgIHwgIDE1ICsNCj4gPiAgZHJpdmVycy9ncHUvZHJt
L21lZGlhdGVrL210a19kcm1fY3J0Yy5jICAgICAgIHwgMjc0DQo+ID4gKysrKysrKysrKysrKysr
KystDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2NydGMuaCAgICAgICB8
ICAgMSArDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2RkcF9jb21wLmMg
ICB8ICAzMCArKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9kZHBfY29t
cC5oICAgfCAgMTQgKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9kcnYu
YyAgICAgICAgfCAgMTMgKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9n
ZW0uYyAgICAgICAgfCAxMjIgKysrKysrKysNCj4gPiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVr
L210a19kcm1fZ2VtLmggICAgICAgIHwgIDE2ICsNCj4gPiAgZHJpdmVycy9ncHUvZHJtL21lZGlh
dGVrL210a19kcm1fcGxhbmUuYyAgICAgIHwgIDI2ICsrDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9t
ZWRpYXRlay9tdGtfZHJtX3BsYW5lLmggICAgICB8ICAgMiArDQo+ID4gIGRyaXZlcnMvZ3B1L2Ry
bS9tZWRpYXRlay9tdGtfbWRwX3JkbWEuYyAgICAgICB8ICAxMSArLQ0KPiA+ICBkcml2ZXJzL2dw
dS9kcm0vbWVkaWF0ZWsvbXRrX21kcF9yZG1hLmggICAgICAgfCAgIDIgKw0KPiA+ICBpbmNsdWRl
L3VhcGkvZHJtL21lZGlhdGVrX2RybS5oICAgICAgICAgICAgICAgfCAgNTkgKysrKw0KPiA+ICAx
NiBmaWxlcyBjaGFuZ2VkLCA2MDcgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pDQo+ID4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL3VhcGkvZHJtL21lZGlhdGVrX2RybS5oDQo+ID4g
DQo=

