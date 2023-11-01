Return-Path: <devicetree+bounces-13408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7861A7DDFCB
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 11:52:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A96451C209E2
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 10:52:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4B4A107B5;
	Wed,  1 Nov 2023 10:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=dm.renesas.com header.i=@dm.renesas.com header.b="JmrS3/KC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3910110794
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 10:52:13 +0000 (UTC)
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on2091.outbound.protection.outlook.com [40.107.114.91])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD2A8139;
	Wed,  1 Nov 2023 03:51:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U0XMgZRfiYiQ6+e45392cWixnurx9Sox2JMbzM2yEUx1jy6Y5pNOasV4m+cViUF5Ki9aZugw8fTFppk4nSobclQ7/TfgTZuu1/v9T+3OjcSPylWi+UoJMuaPBQcoGK7JIhZV6G0lH080/ZXxfRiRfBQHupf9kCXlh5rvNgwOj+XC550icu98oD2c5pA8A72o8WanQOj8zTceaU1BQqMZ92/yz/9P7NxzV/CvCTxAGx1EkI7rWpNeAsV/yILgUyRDJhC90dwzXYT00EbRVMir+zG2ykcynzZzDcW1PDJDD1Rwzu9Ql4NsahBE9gFs786WzCYtYvLt+vg0kZhegRI7eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gWDT/0GPAasSakCxy+CjfGi+7vuMLKCe40e1mF0tR1o=;
 b=Fn7O4iozGhD9udYDd1eK1Ql1jBFtS19C1Dpk89W9BSeereJrsxrpgsh1T1QBIHw7v7xTaNqDQrLwgn4oOUk/8KLIDq6pD87CIFUzu2H49NztO25Z4hzpG+72cDgLMZIq3eK4PTU4Og/YERH9UH2d/Qq2bRZWCPs3TgwKWlJvLNfZSQ54cZQ0FrI7lU0Htm667cDU2kNn/Vk2WlV4D0yJOxzTcGVVnGoGgS2vxpNlNgsz2KCW4ATUVSzr/E2rLFiYUREfcTWBsB3XbJduvmGVAk0xNxcPN9UJlqY29lMFy3ThZ0+PUWdXRWHf8+I4e2NoFTq92sZaRr33ISuIGrH1HQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dm.renesas.com; dmarc=pass action=none
 header.from=dm.renesas.com; dkim=pass header.d=dm.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dm.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gWDT/0GPAasSakCxy+CjfGi+7vuMLKCe40e1mF0tR1o=;
 b=JmrS3/KCZLt+DvNiEUxFc1Zi8tqKE8wTc2cbH19zsXJfpJtfTsWv8PcjyOFRgMRs2lekmSSdfzYVL5XmNmFt/oTeb1jQl7b3yO6XzFOiRQtrwknSahzWYYRzYGu3lPmH92Rzc65WT3BZ1xcdo2ZzPdlk8C3d3PZHuBGCxfiFcJg=
Received: from TYCPR01MB8471.jpnprd01.prod.outlook.com (2603:1096:400:15d::10)
 by TYWPR01MB8314.jpnprd01.prod.outlook.com (2603:1096:400:165::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.27; Wed, 1 Nov
 2023 10:51:53 +0000
Received: from TYCPR01MB8471.jpnprd01.prod.outlook.com
 ([fe80::5cef:817a:e68a:9c24]) by TYCPR01MB8471.jpnprd01.prod.outlook.com
 ([fe80::5cef:817a:e68a:9c24%6]) with mapi id 15.20.6933.025; Wed, 1 Nov 2023
 10:51:53 +0000
From: DLG Adam Ward <DLG-Adam.Ward.opensource@dm.renesas.com>
To: Conor Dooley <conor@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>
CC: Support Opensource <Support.Opensource@diasemi.com>, Liam Girdwood
	<lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring
	<robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	David.Rau.opensource <David.Rau.opensource@dm.renesas.com>, Adam Ward
	<Adam.Ward.opensource@diasemi.com>
Subject: RE: [PATCH] dt-bindings: regulator: dlg,da9210: Convert to
 json-schema
Thread-Topic: [PATCH] dt-bindings: regulator: dlg,da9210: Convert to
 json-schema
Thread-Index: AQHaBaPKLhyYD1J3lE+D2j6IvZe2NrBXjemAgAAb+ICAAXqWAIAMJtng
Date: Wed, 1 Nov 2023 10:51:53 +0000
Message-ID:
 <TYCPR01MB8471AC396C9A621904D101D6C2A7A@TYCPR01MB8471.jpnprd01.prod.outlook.com>
References:
 <bfd1cf9d620a8229f5a5e62e6fe9e59c153d0830.1698051619.git.geert+renesas@glider.be>
 <20231023-sulfate-babble-695b239f52b5@spud>
 <CAMuHMdW7UQ=c9V6rjpZdcaNPSXLOu5aEiLhreirPP6NXN0Ke2Q@mail.gmail.com>
 <51a56a92254444d094b446c30637da71@AM7PR10MB3685.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To:
 <51a56a92254444d094b446c30637da71@AM7PR10MB3685.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dm.renesas.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYCPR01MB8471:EE_|TYWPR01MB8314:EE_
x-ms-office365-filtering-correlation-id: f3f03f49-5667-4d97-b767-08dbdac88f1b
x-ms-exchange-sharedmailbox-routingagent-processed: True
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 /UuUOmv5E0vwH9vbcbSbyRwKG4w9kvSvDimkiDST9Lk/AOlyAKGIZh+hSjbuN4z3WgTnxeRg3Y+NxZe6EaqbBhBQDl0KY6w2aRmPCJRyo9sBsFwR3v+jXpqbgw1CAfLfKE59TuPC4E8WyllAd+jISe6av2zwKBY7FE5il2IN8X2aPeVaG2KjXECDC+5FnZQnDJEMFd0y0NX/XlQIWBliD0U2GjFna+uxqpQL8nixthTzlvc3powExtrPnLOc0nUYA3C9EMLKtAZWeRScSLbE2Y3iohlw1xM6KnP1Rj/gQyd8Jt0UDt2YgAsHdYzUXf6EjCw1mT5+H5Gy/Rg6LBPUJKXGtTlatYao7r+9VMKcpkxhcXzl6HA59uDtsp7c6w2ifgG59HxdGeGdGVkuT+8F0vhPnIhDtbhtKFY52nmmCsipOODcBqpTit41GSB/VmHWEzbGBfAlFuM47g4Gi96KFwFqvwCkY0wBKjWKhT3ye5P+ded4AlHBaBfN2C9adl287JvvGDeJBFcNjTjrGaTTU8G23PKerRkbEFvXPibwFOrMnPb5Xmurduddam3/AXePn9jzqJnF3YyOUP8WN+tjqbMvzwFonGNJQTCWKuJ6fUspAxO5Tm/Sjtf/avXdYTkm
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB8471.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(346002)(376002)(366004)(396003)(39860400002)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(9686003)(55016003)(71200400001)(6506007)(122000001)(38100700002)(7696005)(478600001)(76116006)(66946007)(26005)(83380400001)(53546011)(66556008)(64756008)(66446008)(66476007)(316002)(54906003)(55236004)(8936002)(4326008)(8676002)(7416002)(5660300002)(2906002)(33656002)(110136005)(86362001)(41300700001)(52536014)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?RTdwNXh1T04vUHo0YXkwemhUYUNrZFVKR0hTamdSbDE0cldxYnVvcFBxYWl5?=
 =?utf-8?B?RVQ0WEYrRW9IVnZJdGpDVDVCR05pZkFqVEg0VzlDWFJOTzFqckhYZzJOVHRx?=
 =?utf-8?B?VGJEMU5WMzFhV0NQd2Zaa21vc2tleStaK3lxcGsxYi9aYmF1em0yUzBpTzZL?=
 =?utf-8?B?RkVjZUM1MmlySHF3aXArMjdrc1V4QnpDNjdweGxTRWtEMW9lNEYxSk1hcFR2?=
 =?utf-8?B?d1VYZTlHRHpDVS9ONml4K2tKRlByN0t3S3hVUHUzMU55Y09nTmE1V1dFOFh2?=
 =?utf-8?B?K05BMi9HRDBFaWxzVnpzWDRtTXB5RnJjWHc3MFBNKzNIUEROdWdwN1lvbHlq?=
 =?utf-8?B?alR2SlY3WTV0WFJNeUVPbWJ5bjdYcXZIQ0IzSVZiZWpFYWFYU1YzOU42dTFB?=
 =?utf-8?B?MjlMNSt1V01sNmpyRmppc3VNU1JPSEdhY0tJeTBsUTkyV3g5NG5jazBHVVNr?=
 =?utf-8?B?M0lQUVhjcUZOaVdhdHZzZU0vV1RKMVpzR3RVa3hlQkY3NHdLc200WFBNSzdP?=
 =?utf-8?B?WFBPRi80MHphclFlUnVEUzRwRzhWTEE1WkFjVU90QjM4aUVUeWphcWV1SFJo?=
 =?utf-8?B?M3dQRW1kdXNYOFBmZDVIb1lDVjZwcDdJRlFsU3FORFgwREVDazVpUGV6Q1NC?=
 =?utf-8?B?aS9ScytDT2NTWFJPWXFXUjJSOFFRZnM1cmRmcitFamFDanlLTE9qUE94VzNQ?=
 =?utf-8?B?QW50cjhTY3BQN0lIek5ubzNmVjNtcU8wbS9LYi9CaTJzanhmREZIRXJ4SXE5?=
 =?utf-8?B?d0NHYWNDSnh0VWNRblFTWmFiSnpsa2pnOWJmajFNRkFqamswTUZzTk1CZWlu?=
 =?utf-8?B?eDlZbFdncVRVUy8vNGNFWWFOQ1d0ZUpSRjdTaXlpQVVEUTd6UC9GRmNua0wr?=
 =?utf-8?B?Vjk2VTcrU0RNNGEzZUhzNkhLZkxFcFhEZ2pQQnZXaFdJbjMvTGxyM244Ylpw?=
 =?utf-8?B?b2tTMHJvdWJ3OEtENUx1ditIWUFweDFiTmcwdjc2Qk1NUzhTS1pDQU82RW0z?=
 =?utf-8?B?R0pRNlh1N014K0lETDZxQ1FLaWM4aVBsUG5EWE1vbnkvcEExU0xMc2ViYm5J?=
 =?utf-8?B?MWovaGhKdG1PYlhVYjJVZFY2ZkhIbGgySEJ5VlVLTXY3dC9EMWhzTThPNTBE?=
 =?utf-8?B?cDFCMkwxL3lrOERCUFZ0cDNSSkdDZGd1c2YwV1dHb2dHS1JwWUNOZVk3dGls?=
 =?utf-8?B?cVFXTVcxcWZWQWhvdTd6ckRuMlNjNVEzYkxtK2h5dklnTld6T3EzVndxV3Rx?=
 =?utf-8?B?RC83blZBb2ZHQXpYR1RLZTNLa3p2aERIUEZzUVdyV25yNjNLU01vdU9FeU1M?=
 =?utf-8?B?bjVxdkwxRjNOaHBTSjZsR3lIV1UyU3FENklDSHNHaVczL1FhV2x1WWhSV3B2?=
 =?utf-8?B?bDFsVVRiUngzQ2tBeVlpbk90QVJlQ0czQ0VFUEkzVmFPbXIxV3JXeTFVb2xZ?=
 =?utf-8?B?WDQ4SVFoK1o4R3Z1eEtKM1BOZkhHc0lWM0hLWXU3TFM2d3dYZEZvM0FTQVNp?=
 =?utf-8?B?NXdxMHo5Rlh3aEhBRFZWNUtWczhzSndRZUhQZmIvdjNVZWs5dWpWWVhpK2RO?=
 =?utf-8?B?S1RPelpWVWJQT09USVhxOURlb3RnL0FTWnZjTWRUVzhXR0J0NTU3emM0WXFC?=
 =?utf-8?B?dFdkcFYyVEpNNUpzbm5mOXZQTkMwaTgvM3dwUkdPUHYzM0xpZkV3WFJaSy9Y?=
 =?utf-8?B?bytGNDdCK29DY2NQd1RWOGR3aWNLSW8yb0xYWHpOZnpxY0p4eml5S1UwTVJ4?=
 =?utf-8?B?ejRIOWxUWFFMT2FZN2kyWjFJSi9lUHkzaGlOR1Vic1NvNTFNTW50QU1Rc2Nk?=
 =?utf-8?B?TzBrYnB4ejdBclRPOVozYnZ5Y0MzL1U2bE1nU2xyenM0eUw3VWdzNWhId1Nn?=
 =?utf-8?B?NEcvZ3Yrb1VUNnZ2ZzVHMWVybGhJRWI2emdHUnRVSzJYUFVPaXdiYTYzcHJy?=
 =?utf-8?B?dGgvRlFDaGF2TDFGNkt1ZTFuSStwVjRMV29abjdCcDJzU1FFR1RaTXN6QnVP?=
 =?utf-8?B?RHg2dDBmNTROa0tMTEJKSElQOTBraWxqYmVVeStieDhPNXNneklVa0hQTFRp?=
 =?utf-8?B?S3lkYzRFTXgwUmw0bnhDaTZsTzBacTZ4WHdsRGE1L2tuU0htL0xQb2NqU0gw?=
 =?utf-8?B?S3hhdktLUDFVajhHdTVRTW40WFhtYXNqSjh0U3VudHhyeTNxeFpEYjczc1Nv?=
 =?utf-8?B?Rnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: dm.renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB8471.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3f03f49-5667-4d97-b767-08dbdac88f1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2023 10:51:53.2231
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qlUpq3Bwq2ft2c9UPMZRBE5Ng+T9vvsjZyDxZVcbCR79xqYM9CMagyQ7p4YGL1mf+C8ZFaNMIab7jyZbzeYJ1JArunEW69fF3H75EVC3Jn0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYWPR01MB8314

T24gVHVlcywgT2N0IDI0LCAyMDIzIGF0IDU6MzQgUE0sIENvbm9yIERvb2xleSB3cm90ZToNCj4g
T24gTW9uLCBPY3QgMjMsIDIwMjMgYXQgMDc6NTg6NTFQTSArMDIwMCwgR2VlcnQgVXl0dGVyaG9l
dmVuIHdyb3RlOg0KPiA+IENDIERhdmlkLCBBZGFtDQo+ID4gDQo+ID4gT24gTW9uLCBPY3QgMjMs
IDIwMjMgYXQgNjoxOOKAr1BNIENvbm9yIERvb2xleSA8Y29ub3JAa2VybmVsLm9yZz4gd3JvdGU6
DQo+ID4gPiBPbiBNb24sIE9jdCAyMywgMjAyMyBhdCAxMTowNDo0NUFNICswMjAwLCBHZWVydCBV
eXR0ZXJob2V2ZW4gd3JvdGU6DQo+DQo+ID4gPiA+ICttYWludGFpbmVyczoNCj4gPiA+ID4gKyAg
LSBTdXBwb3J0IE9wZW5zb3VyY2UgPHN1cHBvcnQub3BlbnNvdXJjZUBkaWFzZW1pLmNvbT4NCj4g
PiA+DQo+ID4gPiBUaGlzIHNob3VsZCByZWFsbHkgYmUgYSBwZXJzb24uLi4gRG9lcyB5b3VyIHdv
cmsgd2l0aCBSZW5lc2FzIGNvdmVyIHlvdQ0KPiA+ID4gZm9yIGRpYWxvZyBzdHVmZiB0b28/DQo+
ID4gDQo+ID4gSSdtIG5vdCByZWFsbHkgaW50byB0aGUgUE1JQ3MgZGVwYXJ0bWVudCwgb25seSBp
bnRvIG1ha2luZyBkdGJzX2NoZWNrDQo+ID4gZm9yICJteSIgRFRTIGZpbGVzIGNsZWFuIDstKQ0K
PiA+IEkgaG9wZSBvbmUgb2YgdGhlIERpYWxvZy9SZW5lc2FzIFBNSUMgcGVvcGxlIGNhbiBwb2lu
dCBtZSB0byBhIGJldHRlcg0KPiA+IGFkZHJlc3MuICBTdGV2ZSBUd2lzcyBzZW50IGEgZ29vZGJ5
ZSBtZXNzYWdlIHRvIHNvbWUga2VybmVsIHBlb3BsZQ0KPiA+IGFuZCBsa21sIHRocmVlIHllYXJz
IGFnbywgYnV0IGl0IGlzIG5vdCBvbiBsb3JlLCBhcyBpdCBjb250YWluZWQgSFRNTC4NCj4gPiAN
Cj4gPiBBaCwgYWNjb3JkaW5nIHRvIGdpdCBsb2csIERhdmlkIGFuZCBBZGFtIHRvdWNoZWQgc29t
ZSBvZiB0aGUgZmlsZXMNCj4gPiBsYXRlbHksIHNvIHBlcmhhcHMgdGhleSBjYW4gaGVscD8NCj4N
Cj4gSXQnZCBiZSBncmVhdCBpZiBvbmUgb2YgdGhlbSBjb3VsZCB2b2x1bnRlZXIsIGF5ZS4gSSBk
byBmZWVsIGxpa2UgSQ0KPiByZWNhbGwgc2VlaW5nIG9uZSBvZiB0aGUgZm9sa3MgaW52b2x2ZWQg
d2l0aCB0aGUgZGlhbG9nIHN0dWZmIGluDQo+IG1haW5saW5lIHN0ZXBwaW5nIGRvd24gc2hvcnRs
eSBhZnRlciB0aGUgbWVyZ2VyIHRob3VnaCAgOnwNCg0KWWVzLCBBZGFtIFRob21zb24gYWxzbyBs
ZWZ0IHRoZSBjb21wYW55LCBsZWF2aW5nIFBNSUMgZXhwZXJpZW5jZS9zdXBwb3J0IHJhdGhlciB0
aGluLg0KVGhlIG1lcmdlciBpbXBsaWVkIHNlcnZlciBjaGFuZ2VzLCBhbmQgdGhlIGRpYXNlbWku
Y29tIFVSTCBpcyBsaWtlbHkgdG8gYmUgZW5kLW9mLWxpZmVkLiANCkFkYW0gYXR0ZW1wdGVkIHRv
IHVwZGF0ZSBNQUlOVEFJTkVSUyB3aXRoIHRoZSBzdXN0YWluYWJsZSBtYWlsaW5nIGxpc3QgYWRk
cmVzcywgYnV0IHRoaXMgd2FzIHJlamVjdGVkLg0KDQpJIGFwcHJlY2lhdGUgdGhlIGRlc2lyZSBm
b3IgYW4gYWNjb3VudGFibGUgbmFtZSwgYnV0IGl0J3Mgbm90IHRoYXQgY2xlYXItY3V0IHdobyBt
YXkgYmUgYWJsZSB0byBwaWNrIHVwIGVmZm9ydC4NClRoZSBtYWlsaW5nIGxpc3Qgd2FzIGNyZWF0
ZWQgYXMgYSBiYWNrc3RvcCBhZ2FpbnN0IGVtcGxveWVlIGNodXJuL2xlYXZlLCBzbyB3b3J0aCBr
ZWVwaW5nIC0gYWxiZWl0IHVwZGF0ZWQuDQpXZSBkbyBoYXZlIGEgbmV3IGVtcGxveWVlIHdobyBp
cyBzbG93bHkgZ2V0dGluZyBmYW1pbGlhciB3aXRoIHZhcmlvdXMgYXNwZWN0cywgYnV0IE1yIFQg
bGVmdCBkZWNhZGUgc2l6ZWQgYm9vdHMgdG8gZmlsbCENCkF0IHRoZSByaXNrIG9mIHJlY2Vpdmlu
ZyBldmVyeSBlbWFpbCB0d2ljZSwgSSBzdWdnZXN0Og0KDQorbWFpbnRhaW5lcnM6DQorICAtIEF0
aWYgRW1yZSBPZmx1b2dsdSA8RExHLUF0aWYuT2ZsdW9nbHUub3BlbnNvdXJjZUBkbS5yZW5lc2Fz
LmNvbT4NCisgIC0gQWRhbSBXYXJkIDxETEctQWRhbS5XYXJkLm9wZW5zb3VyY2VAZG0ucmVuZXNh
cy5jb20+DQorICAtIERMRyBTdXBwb3J0IE9wZW5zb3VyY2UgPERMRy1TdXBwb3J0Lk9wZW5zb3Vy
Y2VAbG0ucmVuZXNhcy5jb20+DQoNCkJ1dCwgZnJhbmtseSwgaGF2aW5nIGEgc3BlY2lmaWMgbmFt
ZSB0byBuYWcgd2lsbCBub3QgaW5jcmVhc2UgcmVzb3VyY2VzIG5vciBhZGp1c3QgcHJpb3JpdGll
czsgdGhlIGluY3JlYXNlIGluIHZpc2liaWxpdHkgaXMgaWxsdXNvcnkuDQpJJ2QgcmF0aGVyIGtl
ZXAgdG8ganVzdCB0aGUgbWFpbGluZyBsaXN0LCBidXQgdGhpcyBpcyB0aGUgc2Vjb25kIHRpbWUg
aXQncyBiZWVuIHJlYnVmZmVkLCBzby4uLg0KDQpJJ2xsIHRyeSB0byBnZXQgdGhlIGFib3ZlIGlu
dG8gTUFJTlRBSU5FUlMgZm9yIFBNSUNzIChzcGxpdHRpbmcgb2ZmIEF1ZGlvIHByb2R1Y3RzIHRv
IERhdmlkIFJhdSksIG9uY2UgSSBoYXZlIHRpbWUgdG8gZ2V0IG15IExpbnV4L0xLTUwgaGF0IHBy
b3Blcmx5IG9uIGFnYWluLg0KUmlnaHQgbm93IEknbSBmaWdodGluZyBvdGhlciBmaXJlcy4uLg0K
DQpBbnl3YXksIHRoYW5rcyBDb25vciBmb3IgdGFraW5nIHRoaXMgb24sIGFuZCBzb3JyeSBmb3Ig
dGhlIHNsb3cgcmVzcG9uc2UuDQoNCg==

