Return-Path: <devicetree+bounces-28567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AE52281EBDA
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 04:19:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 138531F21760
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 03:19:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B87EB23D2;
	Wed, 27 Dec 2023 03:19:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="fg6hFtnU";
	dkim=pass (1024-bit key) header.d=mediateko365.onmicrosoft.com header.i=@mediateko365.onmicrosoft.com header.b="fwesvFY4"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7F0290B;
	Wed, 27 Dec 2023 03:19:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: b2c21bbaa46611eea2298b7352fd921d-20231227
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=f4MtgewfpBIWxF2u7cmisyRPjbrCskiwqWGggllnPIE=;
	b=fg6hFtnUHUPuDzoByQgP17Ows0le7B4rEsi2c02ZGe8zHC2rB+C0yyrsR/jY5MgUup1lkvXj+fsYjiAi5C6FrnVxUcvhVM99NLmOggf2UHGs/hXTD+Hhu3xNa+OzHqrMnT7Q0BpqnJ5UegDi0hIyqishNVDS86Oqbl0AYPOpEmA=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.35,REQID:dc204e38-5120-457e-a819-52deebe7916a,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5d391d7,CLOUDID:6ad2b47e-4f93-4875-95e7-8c66ea833d57,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: b2c21bbaa46611eea2298b7352fd921d-20231227
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw02.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1927011386; Wed, 27 Dec 2023 11:19:08 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Wed, 27 Dec 2023 11:19:07 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Wed, 27 Dec 2023 11:19:07 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H0U32y25EFMqQmKAgDajEK1ONbGBiS2uyM+a4eF7FWqpGflPqaKRlkY53bSjcAVmNpTew+FBRioyPMUGojv6gid+q4PueQjH5lrkQ6cTNf3d1qS/BhdETA0U3vB4ornFrq/PQlixahSWHWk9rxaxtKCO/k4s+M6lplsFH4zaUZOic5gmOxDvKOMvfDrYAEtcVhJ4E7Tus+siS0uDWAiK9OyMFjADd/gvwzMxyywMiFTMhEOe8s1hPP7palaTCg6l2Ehf79Yhe4tUwxp8NX8ODZXQG0nw8Vaw0/wxbdm7G4gjUq9hHU7aebI9+0mTUUSIaKH/tEQZ3ULwv0MwjIpgAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f4MtgewfpBIWxF2u7cmisyRPjbrCskiwqWGggllnPIE=;
 b=iVYKli0ELTnkG2BxlLwSzlSe9Mmk9pqCLNpIBcB/P3Vak/mlfLuLU7o/84pukoVXAzHACXvUDfF944ivIUG5nmKqO1T6uKCMF/giZGbd8Huhu43ZMyVrgsPNTl/RmsUQlugTu7TOOhHyyHMuPZSY1Qw3+ul5IvYRK9vGzdBT5NRePZumV9ZxSrnE7molx6ftiQ/FfWbUXjGMah/p75HEQOGXBAu8x+eCjaoogTghlLOLIQVJYvGuonKDS4bF1hG1p8btquwATvNRueo6IhruFBaxu6L6HF3+gf1VZRG+HjWyppweIpcg2HlONJw8T1WbbIGNWk67kA8SVoaFL4YNIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f4MtgewfpBIWxF2u7cmisyRPjbrCskiwqWGggllnPIE=;
 b=fwesvFY4qVmgOxS4G7yWPCJaFs1ZxpgeoL3behLkt5sezqmJX9+YuH5UjF3phXX9sAD5+o3GFDRHhCZArUAxj0uBD3WsJuiQI9sWT84SrDYLSiazxZVXjbfar3Hl34TauAiNgoX5/hmg89U9daNtCw5hWBbBhkwDNKVCO/6HwsQ=
Received: from SEYPR03MB7682.apcprd03.prod.outlook.com (2603:1096:101:149::11)
 by TYSPR03MB8563.apcprd03.prod.outlook.com (2603:1096:405:53::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.27; Wed, 27 Dec
 2023 03:19:04 +0000
Received: from SEYPR03MB7682.apcprd03.prod.outlook.com
 ([fe80::ebb9:e872:cb84:4a88]) by SEYPR03MB7682.apcprd03.prod.outlook.com
 ([fe80::ebb9:e872:cb84:4a88%5]) with mapi id 15.20.7113.027; Wed, 27 Dec 2023
 03:19:04 +0000
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
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	=?utf-8?B?SmFzb24tY2ggQ2hlbiAo6Zmz5bu66LGqKQ==?=
	<Jason-ch.Chen@mediatek.com>, =?utf-8?B?U2hhd24gU3VuZyAo5a6L5a2d6KyZKQ==?=
	<Shawn.Sung@mediatek.com>, =?utf-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?=
	<Nancy.Lin@mediatek.com>, "jkardatzke@google.com" <jkardatzke@google.com>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v3 06/11] drm/mediatek: Add get_sec_port interface to
 mtk_ddp_comp
Thread-Topic: [PATCH v3 06/11] drm/mediatek: Add get_sec_port interface to
 mtk_ddp_comp
Thread-Index: AQHaNc4JEgDC7gN0zEGvGXV3SIDVl7C7DAaAgAFvQIA=
Date: Wed, 27 Dec 2023 03:19:04 +0000
Message-ID: <9508ff90e84a47865c982a5978d144ecacd4010f.camel@mediatek.com>
References: <20231223182932.27683-1-jason-jh.lin@mediatek.com>
	 <20231223182932.27683-7-jason-jh.lin@mediatek.com>
	 <4165d71dd9d0043346ca57d1a556f21639885d18.camel@mediatek.com>
In-Reply-To: <4165d71dd9d0043346ca57d1a556f21639885d18.camel@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mediatek.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR03MB7682:EE_|TYSPR03MB8563:EE_
x-ms-office365-filtering-correlation-id: f27bf229-c6f3-46e0-e6a4-08dc068a944e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T6Q0k+EtrPRes+r4/GdRpc/dvRm2qU8Tny4CKZLR9bbRKKBnFiDaj7G9FJ8DICJE/Y/TeyI0cSY4a3ad/9tH5MX3Yma0VNlb+pV2u3rUbPp8/aBnkfXQ9FgTuoW130ouRKQw3UC6ur3PpMwJMD3ApJqSRcjls26IpmVjJ6KAebJtFUdQXOXSgvJJSwn3LbbEOK5DiL1g+BQXUZQ0rJ0EN2Ln3TZ/RDIJo0kEJBXSJeXCH1bO9OT1s42SXctcMWLVwywgHS/VeZYoKkDhzx2NfK4YaotMfMIIMRqVWSTgvUkmWxXH7Kfr/wLWDu87G3ydYIcKTuogUI/N2msAlZejoPE+mKt57JthtWXZTQEoYv8LEqXmFvx45UHilYJNFJhwJ+2GrcZ/2/uzeA19J5jsd7xj3iYLu2VHRfAuay5v62+XK8cffpGQb3BrvgS0Js4BjvCtCQyCKSK8Ovjq4Ilidni//APhA1tJVa4VuMmaVEHlcWL5rutUds0cKTT6FZa0yvvhIl7cpeqKUhy3KP/Gz209b8IUqm7ERrCUXasfF8YpMP6K+uCmT7Mc+7OBgJ2Ng76JyY+zrsFSxNPMEoUmivgPd6iOrByhb/lM2pP5gUB3dPT+lZ6sGB7X2Ru9pQsH3oFyJukLRHvngKJ3RKYxg5Mkl5DFxFNc4PR4+ZQLc70=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEYPR03MB7682.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(39860400002)(136003)(396003)(376002)(346002)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(6506007)(26005)(2616005)(71200400001)(6512007)(83380400001)(5660300002)(7416002)(4326008)(8676002)(478600001)(4744005)(41300700001)(4001150100001)(6486002)(2906002)(8936002)(91956017)(110136005)(316002)(76116006)(54906003)(64756008)(66446008)(66476007)(66946007)(66556008)(86362001)(85182001)(36756003)(122000001)(38100700002)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SVZYNS9mSmNybDRNdHNRWUxSRjQ1QzA5aE5VMW9PZjFmL01MTzAvUGNiMC95?=
 =?utf-8?B?aXRvOU1yNWl0a2xGQ2tKMDRtbFduM0xSdnROT2xsazFZRUw2VEhWMGhVMWY4?=
 =?utf-8?B?czNDSWVOc2RUdkZhZkxxR2QxbFlYQzBkTGZmUHhKNlFnSmNjV3VRalRhWEFv?=
 =?utf-8?B?UlRkVlUyNXlScGd0OXZiYjVqeU8xTTltQkFWQ2JIOVYwa1JSVzRjb1hSbEs5?=
 =?utf-8?B?TVp1SnlKeGZqOG9WdjNtSHlDNFlzTFgrY1ByWU5jRXF5OWsrK2VjNHEwWUhW?=
 =?utf-8?B?NHFvbVVzVXVHK3FBUTlYQXZjM2VJanhxZmw4VGl6R0ZMbEt3UC8wR3hJR2U1?=
 =?utf-8?B?aG56bFp0K3VMYzREblpWeTVtL0swZTVnQ0tvdWlIRmVNOHpDUXRkTWlGS2JB?=
 =?utf-8?B?WDBxTldiK0FFdjRTcFA0SDRGRkgwMHhIaTlha2ExaWtPVmhZV2x1K1RzcUM4?=
 =?utf-8?B?bEhmTUwxK2VVd3FFWnVLUEJlUEJEWnp4aWtSMHBtMFdvQjE5Z3lSU3FYV25p?=
 =?utf-8?B?cFJvVjFUTURIVTNWS0d5eTNDSUJGTTlYOUlmU3M3TlcrTHp5WHg3RnZCYStr?=
 =?utf-8?B?Y29qeWtvQ2J5VUZCYXhzOXh2R3ZYdUNiWGgzTDd6UkpDWWQwV2hXQTVtU2Va?=
 =?utf-8?B?ZEV5Qjh4cEdrRkxrYkRVeUU1aG1GODFnL1ZwdmVqOWdENE1CWUdwWFM4eWJu?=
 =?utf-8?B?azY5ejZmbU85ZnB5Y05kSEZMeEp5NUlMN3BOdW5QRzd4VmJGOUlyN1ErZTRu?=
 =?utf-8?B?bVhnalQ1NTczbGd2TTlaYXQ3aDgzK1BjOUQ4bjAzQ0dDenhaNldaRFU1QWpy?=
 =?utf-8?B?OFlmSUcwZVVWSExKQlQ1Nk5lQXhRQ1FwM3N6NzNOOU9QTEV3ejkwbFU1bUJi?=
 =?utf-8?B?a1krQ2hJNm1SOHRGZFRSOXloVDlGaUpzSCtVZUc4RFBDK3ZxREFFTTZWb25i?=
 =?utf-8?B?S1NVV3JWeVZSbmZ2UThHbXJzMjhMbDV0YkZ4eWdDZlZFYzBDak5zSkF4bW5F?=
 =?utf-8?B?T01jQVRtZEswWGlSOWZtbkxuemlZL0hxSkJSSHlPRXV6dUp2amNodzV4aGh3?=
 =?utf-8?B?bUtKSkFGcW15ZzRVNjlMaG9KV21LeEdyNkxDelBQamMwWURQdmRiMkJlQjla?=
 =?utf-8?B?N1htYXJEUGcrcnhxZ2tZRTc2SkxVTjFPcTZMRTQvaUdFOUtHMktreGRzS1R5?=
 =?utf-8?B?Nlp3ZzRwb2Jtby9pVEc5NlFDS0s4akR2QWJ6NGVaMkQzd2Z4ekltaFBKenlU?=
 =?utf-8?B?Mnk0M1BCck5DSlpwVy8yVmUwNWpTS2FpakRaUEs0cldYdGxidnlaVU5acWF3?=
 =?utf-8?B?bVZjWGRNN2wwQjlyR2R6d09rYXNFVzdQb2RQNGlGYndaSUlWdlVsSlRkV2Zz?=
 =?utf-8?B?a2N6TXJxSGh0TUZsVXRZNXI5L1JZT3RrQ1FoK1I3aENzMCtseEg2OHdlSkMv?=
 =?utf-8?B?Y3U1Z2drN1hBRzRQbXEyQlA3NzRoSUtReEszSWNWMG5HeC9GNGpSZHJkZUhi?=
 =?utf-8?B?Zzh6dGE1RXhrMjROMzl2QlFGVjB3SGkwQXphWFliTnE0YjBhL0NOdGZPZmph?=
 =?utf-8?B?a01ycnVzOGxIUmE1UmF6YkFlUnhlay9zS2U3ZjNXWSsrY3VDR0t5QVlyZTJi?=
 =?utf-8?B?ejIxRmpOWXdHK01VWkk3eWFxbWdHbjA4eVdXSld0UXZsNStYZFVuWlVkc1hi?=
 =?utf-8?B?MG54TnB3OTNOb1luNUpUTDU3b2QvQ0RxVnJnejByZ3N3MXhscktHYXFiR211?=
 =?utf-8?B?UWthTll5WUNFZU9KdmJGOHJRNXpGSW5tYnNPU21icjN5eW9mSEhCK21hT3BU?=
 =?utf-8?B?dGJXbCs2U2dMNUxpWUZRdDFVYmVhSEc0M1Bjei9uSE1nOE5GaU53bkZ3ZVZs?=
 =?utf-8?B?eGg3b1lCRWs4cTBzSzV0ZjU3WGxPdCtNUmNtSUNObHJqOFU0VlFkRnpmbU1G?=
 =?utf-8?B?WVVnY0dUZDRuRXBQRjJMWnZobS9KQ21nVUU4TjhyeDFnOEorUWhvd2lSUkM0?=
 =?utf-8?B?NEg3Q0w1Y2xiRjRIb1lLdEt2UFljcTQyQlpXTnZrcXcvbDVmRnh4VHRyYXB1?=
 =?utf-8?B?WXNEdnp0ZnZwZldCL0RhVVlFbTh3VHpCUzlrQVczUktsdFpvcVRDZmRlbXpQ?=
 =?utf-8?B?YnhlMEdkSE5Rc1BuZkJibmpyQ1BoUHpVZnRQb1lVVnlFeFZCKzdMWnJ4QWlx?=
 =?utf-8?B?Y0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <726C03A23400A44D87E3F441EF71FCA0@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR03MB7682.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f27bf229-c6f3-46e0-e6a4-08dc068a944e
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Dec 2023 03:19:04.2614
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UTvcQel+fIMfmtRazb6yHlW7a+SWZBD+WMvlAXgDt+V88LjsqiTZHZFcx0wugKlxxrKNijNjB4gJ5oClt0+SJda72xSSMymMFWLFa0Y+g84=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYSPR03MB8563

SGkgQ0ssDQoNClRoYW5rcyBmb3IgdGhlIHJldmlld3MuDQoNCk9uIFR1ZSwgMjAyMy0xMi0yNiBh
dCAwNToyNCArMDAwMCwgQ0sgSHUgKOiDoeS/iuWFiSkgd3JvdGU6DQo+IE9uIFN1biwgMjAyMy0x
Mi0yNCBhdCAwMjoyOSArMDgwMCwgSmFzb24tSkguTGluIHdyb3RlOg0KPiA+IEFkZCBnZXRfc2Vj
X3BvcnQgaW50ZXJmYWNlIHRvIGRkcF9jb21wIHRvIGdldCB0aGUgc2VjdXJlIHBvcnQNCj4gPiBz
ZXR0aW5ncw0KPiA+IGZyb20gb3ZsIGFuZCBvdmxfYWRhcHRvci4NCj4gPiBUaGVuIG1lZGlhdGVr
LWRybSB3aWxsIHVzZSBzZWN1cmUgY21kcSBkcml2ZXIgdG8gY29uZmlndXJlIERSQU0NCj4gPiBh
Y2Nlc3MNCj4gPiBwZXJtaXNzaW9uIGluIHNlY3VyZSB3b3JsZCBieSB0aGVpciBzZWN1cmUgcG9y
dCBzZXR0aW5ncy4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBKYXNvbi1KSC5MaW4gPGphc29u
LWpoLmxpbkBtZWRpYXRlay5jb20+DQo+ID4gLS0tDQo+IA0KPiBUT0RPOiBkcm9wIHRoaXMgcGF0
Y2guDQo+IA0KPiANCj4gUmVnYXJkcywNCj4gQ0sNCj4gDQpPSywgSSdsbCBkcm9wIHRoaXMuDQoN
ClJlZ2FyZHMsDQpKYXNvbi1KSC5MaW4NCg0K

