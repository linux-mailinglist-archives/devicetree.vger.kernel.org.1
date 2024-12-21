Return-Path: <devicetree+bounces-133254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C2C9FA0C9
	for <lists+devicetree@lfdr.de>; Sat, 21 Dec 2024 14:30:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 47B2A188858C
	for <lists+devicetree@lfdr.de>; Sat, 21 Dec 2024 13:30:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B8611F9EBA;
	Sat, 21 Dec 2024 13:30:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from CHN02-BJS-obe.outbound.protection.partner.outlook.cn (mail-bjschn02on2124.outbound.protection.partner.outlook.cn [139.219.17.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3DF1F6692;
	Sat, 21 Dec 2024 13:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.219.17.124
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734787814; cv=fail; b=uuwH7JnLsnh8oDL5FG7IBIHKVe9enYvr7lXv3Wd33AcB0pONnI9zqWKrWNkJVhiRlH2eRlxwYUpqB/LGMzIcYn4+E7cbe/6cYlM2tfiw5L24JBLy+Ga7S7crzHPNMcw+q0QQ01Y15WvptgwGKXiSMIK+bZa6H2zwNZLS++wEOLw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734787814; c=relaxed/simple;
	bh=eZLHKrn0kU2rhkvlyZVj/uHvJTZYRa4HBepFoPKsJZw=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=amP7AXS1OQM0GtRfv5s55Q8MA2rQMbv7qYn3R8i4ciPKefHBLIFumjSzlsD3oBKtKuhaxCVso0be2BPWTbOzmjBcl25imLdCpO2Ns6IlzBk8fMhfw7Ntw9dXBeC4b19NpB1s6V35n9vJbynEirMC0QG94K7ht7Qjpu497o4/g2s=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com; spf=pass smtp.mailfrom=starfivetech.com; arc=fail smtp.client-ip=139.219.17.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=starfivetech.com
Received: from ZQ2PR01MB1274.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:10::14) by NT0PR01MB1278.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:12::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.18; Sat, 21 Dec
 2024 13:14:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jRhwJMkFupctRgvylzOQrxYjy/oFInu7uEy1Jhy99ZFILV4Q1Le6CaYS4Mg01fgN9X+73gncxiem4MX6BAtKtFeyikiLsvdZtb1F27hYjO8FBeRtPO1a5K1FcWFOAsiRHY90SiKQYHR7i3cyOC0uAQ5IsJs694aoRx3e7STRicslNcUX3NI/PfZjdVwqG/Jm2znpKO2jQP5sIecFh2Onh2vu+GxiTSg1aANp2szy6K/HxzZU0npFEbN0WtJZIx0VaHNrQe0ck1FYamSNAffpO1lIMGzUIJeOb1WviucVnkztCCIV/CIvVDL16OzCSfaZdU5qlwE3tZ0N26i2Vq1pPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eZLHKrn0kU2rhkvlyZVj/uHvJTZYRa4HBepFoPKsJZw=;
 b=G2PccFHlPtCBn3LxhJj5X85bsiO15eO20fUOK9Hkv+7b02c2QvZMbncmELTf2wA048olLVWa0DRmNzs2iJiXsV3lMD/gOtJIO1k0IR851Q/WoeawZXFk5DVp5vEvaG22onVhVnsWghsjZSelCdGfRgV2De7zU8crzWxwBI5wswdsbbQd20+EPkpZn4H4Eao5yQ38RNgGlJZIA8qrPHipx8z+i9tO0/pHsAACBQ8xYP/wkAllsO+gOEYLXRXcaKrB6SEFbvrItTGQS9djDoJPNB86K6+0hdV94DOg2EPzaTctkq0gMdRF31Iii+jg6Bwq9gZXMlcXHA+pc0jIBNLvQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Received: from ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:7::14) by ZQ2PR01MB1274.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:10::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.17; Sat, 21 Dec
 2024 04:15:57 +0000
Received: from ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
 ([fe80::2595:ef4d:fae:37d7]) by ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
 ([fe80::2595:ef4d:fae:37d7%7]) with mapi id 15.20.8272.013; Sat, 21 Dec 2024
 04:15:56 +0000
From: Hal Feng <hal.feng@starfivetech.com>
To: E Shattow <e@freeshell.de>, Conor Dooley <conor@kernel.org>
CC: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>, Jianlong Huang <jianlong.huang@starfivetech.com>,
	Jisheng Zhang <jszhang@kernel.org>, Conor Dooley
	<conor.dooley@microchip.com>, "linux-riscv@lists.infradead.org"
	<linux-riscv@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, Emil Renner Berthing
	<emil.renner.berthing@canonical.com>
Subject: RE: [PATCH] riscv: dts: starfive: jh7110-common: Use named definition
 for mmc1 card detect
Thread-Topic: [PATCH] riscv: dts: starfive: jh7110-common: Use named
 definition for mmc1 card detect
Thread-Index: AQHbT/cItPZg0BYxikqmhcJqnrbnzLLpqmPAgAAcd4CAAP17AIACkCAAgAElwJA=
Date: Sat, 21 Dec 2024 04:15:56 +0000
Message-ID:
 <ZQ2PR01MB1307BD49C0A49DAD3AA76049E600A@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
References: <20241210040652.164030-1-e@freeshell.de>
 <20241216-elixir-cupped-f7a83bce4e12@spud>
 <ZQ2PR01MB1307F1FC7EEB8701525AC9DEE604A@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
 <bd4df536-0a5d-4ba9-ad0c-51a7828acd9c@freeshell.de>
 <20241217-strained-latch-52bf7d03716d@spud>
 <4ae45ee4-69ed-4fe8-9350-9f83c13a9c89@freeshell.de>
In-Reply-To: <4ae45ee4-69ed-4fe8-9350-9f83c13a9c89@freeshell.de>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic:
	ZQ2PR01MB1307:EE_|ZQ2PR01MB1274:EE_|NT0PR01MB1278:EE_
x-ms-office365-filtering-correlation-id: fe1c758f-6466-4c69-ead4-08dd21762afd
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|41320700013|7416014|1800799024|38070700018;
x-microsoft-antispam-message-info:
 JMQT5X8isnssoF9JIsgfdiDxIYWFH9LtN/LO/eNTW5m+Ml9lF8TSyvkg8BKV3EoAugh6uKaNZ0WLcd3P/zbKOf9pW2vMhdEdbFyENfwyZaTll4jRcB+h3vANq6E2oEP3/vvhahCFyKPAfp4ugi/5atm/7z4rU1Wtap0kIKjM5ObPXSg+Pd0XWDnmTKImwNyFSbSZ6lNOfPCoGVvbRfXf9IB0dOWswyhiUP7SPjg+EwCw8HvaILIJ/tOzmmv/a0TsbEFNKSiCybHYD+XyUSrpfW7HQVW/PQP2ny5MpXVkT3peLs+yVtQ0mnrHo07QqbQ026ExRxdJrJP/PsUrUbL2i7+FMedMVY+412GPzYRBKolbsxwnIxzIHQpEVGwe2m73rv4aPK9PqLOU2EtOBBPzvSECY8NNiowomN6LvSG2a4YA/FT88cubeGKHXz5JX4Z3+p+dtCHIS3XFitOWZQQsf8mHAHSsxU2u6c7joVBjMPR4uSE+9rM61IKFfzKBHhL3p4SHvTshegL87GvVqlY0jQrM6QRq9QaGcpL9Yjg3NviQWsYp1CGKJd3Cfv1V77LjQUoaP/WwJhG9E1RSKKMrMJQL2yU9lkR05x7S2uOcLA8=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230040)(366016)(41320700013)(7416014)(1800799024)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?OTFMakJ6eTRaL2oxdUVUdXlySzc4Q2kvM3Q1OWZpdFZDYWJqZk0yczZMYkhh?=
 =?utf-8?B?VFNFbnBkTlFOYTYrTlZjVTRkdnpMZzk1NUdWNGhINHJCYzlyd094WVZpeXR1?=
 =?utf-8?B?WXlsUjdMSUpLNHFpUU11V3Yra1g1YmYxWk9NTExSSVJES2xpNFd3NEZqbitR?=
 =?utf-8?B?U0tXMGczTlg3U0tIL2tETXhQQmtuc05sQk9GeFI0YS82amlwZTRxZ21HRHYw?=
 =?utf-8?B?QmxCcTMzbkEzWHV6WnU0YTBPS0xVL2MrVE1lMHZSQk9EWUE4V29tV1JLS3cr?=
 =?utf-8?B?S09LMXZibTJOWVNPc2F1UEpOQlZsQVd2ZU9JdkZiZWIwbkdtcjdzSWlreDQ3?=
 =?utf-8?B?blI0ZGFyRFFCK2NONDhIZ25wWUlld0dEWlJJTS90NlZ4UlZjS1F6Z2pCaVp6?=
 =?utf-8?B?Qk9oNUpDMEFFcGthZ3dJNzU2T25ta1lsTUtyUHo2aFJ0cUFOeUJPU3pCOFUv?=
 =?utf-8?B?SDNidTRISVVNallQSzBtVGJMTDF2UHFCTktndjNhNFhNT2wrcHd5RFdFa21v?=
 =?utf-8?B?OEUzS1ppeWdtamRVRlFJN2ZMVmR0SFpoM0t0WFV5SndJOWNVa2plN2xkYnRj?=
 =?utf-8?B?S1YxOWMzbjUwd2R4UWE0U2NOb3o4bStDUlRFTy92ZHRmZldJakVla0Jpa3JO?=
 =?utf-8?B?bzc5VHpxVHl6TFRiRmVMK1JCaUZNczRJRDc0REFnekF5WnNtak9GcWczSzZu?=
 =?utf-8?B?TVEwb1BmMCtYcXhzenA0THl2V215djhDSnorZ1dkNEVndndxYzVESzNCVDJI?=
 =?utf-8?B?WDJwSGlkd1JYL01mdllHV0FYYXY3QlFwNFBZQUE1RmQwaGxrcjlxcU5YS3h3?=
 =?utf-8?B?dTIzM3NCNU1nL0pHVWkwc3BHN3h6ZnpVeHdrMEJ6ejY2ZDkzSEIvMURVZUp1?=
 =?utf-8?B?RWl1eWoxQkpVM1hZcURrRnBhVlVkUm5RWkNVclllU1ZnK0xkVXkwNmt5RXk4?=
 =?utf-8?B?VjNZVHJ3N0tsZGR1bHhxMHN4dk1QQW0rT0hNRlZyYzNTc3FDUjFzcmNpaGlj?=
 =?utf-8?B?MWs0MldXZTFhN3R0TVpMZlBtd1pRaVVCNlJSemtXd0tkUzhIY3lzUUc5aWtZ?=
 =?utf-8?B?TTQwZDNXM3pnNjBZRFlyZFhRRTVHSDhja2YzK0N4bGZIUGhHSjgwWk0zdmds?=
 =?utf-8?B?bW9PSUR6a1Z1RHNHdzZoaGwxNERiS3FTQys5NEtrWTNyQjVieHVrMTc2TXhK?=
 =?utf-8?B?VG4wWkt3eEhjRHk4ajljZUtVcEszYUFmcW1aV1gxR1VXWlJTV0xvK3hYdWNv?=
 =?utf-8?B?bEFJdEFzaHJyN0VDSmZWK0FseitUNEVMck1RQmYwTHFZaFFPdzIzcnNBL0pH?=
 =?utf-8?B?dXEySjlza0JWRmN5YThBUzNRaUN5T3lYRkRkZXlJdlBzQmxSQ3VsSVdvOUM0?=
 =?utf-8?B?ZHRnTVNNaGVwc3pBQ0IvV2JZcEM2Nm9HQTN5alByWDRHN01NK2NPNWZuV2x5?=
 =?utf-8?B?b2pDRXRkMUNTVytETWJGTEZMd2lyMFVPZm9RMHVLNlJybnhBUFM2S0IyWFk0?=
 =?utf-8?B?dFAvZFVRRXhFNjQvZnV0MXN6ak11SmFqcHZmY3pDN0paL1Z3Y2s0YVdvQVlY?=
 =?utf-8?B?WE8vblNpVEd5ODh2bVpxT2wwQmR5SERJNlhPaGNTaVphT3JuczlxSE01MUZ5?=
 =?utf-8?B?RWUyR3d4S3lrRllvV3lRV3g5aDRZdnRsOXFxQUZTZEcrRHdROVNKNzYwdjFt?=
 =?utf-8?B?SXZ4ZzlGYlo0NTgrVFJJMFRXT3dOSyt6T3V6dU43emJEK3RHblRteEMwZFZW?=
 =?utf-8?B?NnBibTFJR3JpTXdFZ085TDU5RnlqMjhsQ2Vsd0s2dHhNYlYrNHJ2KzYrblpH?=
 =?utf-8?B?TjdHUXJ0V01LUjhBcWZmZnRad1pkL1dlaG1yUkQrR1ZybGkxOTZxWXpoMnEx?=
 =?utf-8?B?RWtycGxneTFNa3N6Z2tTa3l1ZGlKbFJKbFljZzE2SFR0WEd3bE41ZWNTRzd4?=
 =?utf-8?B?czhqMUpOOHNrRDh4bHBKUitVM3BoVmF4WUp5QkFIbTZ2M0ZmK2YxQXY1WXlW?=
 =?utf-8?B?eHNUV1kraUxOd1hXbFFDdUhCS1BxSjlnTFV4RVUvMDE0S2V0d3lTNVFnLzdI?=
 =?utf-8?B?V3A0K2lpbnB1Nm1ZSXJCVWJ4Tno3OHpIM1FhSGcyMVNuVUl3K0kxdG5RS1hr?=
 =?utf-8?Q?Bio1HT/n6Afh8jA2Eit+EosMh?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-Network-Message-Id: fe1c758f-6466-4c69-ead4-08dd21762afd
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2024 04:15:56.7129
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zVwIJMKHeH+xk4ZOO7TGOTHBDdZuiupftJbXRxaAJgSKOVHJolsaNCyXJ1318jQWNbvYCUzFzbrWW6ujBQ1BEdmo6w9OGlNisXNR6LYiI/U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZQ2PR01MB1274
X-OriginatorOrg: starfivetech.com

PiBPbiAxOS4xMi4yNCAxNzo0MiwgRSBTaGF0dG93IHdyb3RlOiANCj4gT24gMTIvMTcvMjQgMTA6
MzMsIENvbm9yIERvb2xleSB3cm90ZToNCj4gPiBPbiBNb24sIERlYyAxNiwgMjAyNCBhdCAwNzoy
NTo1OVBNIC0wODAwLCBFIFNoYXR0b3cgd3JvdGU6DQo+ID4+IEhpLCBIYWwNCj4gPj4NCj4gPj4g
T24gMTIvMTYvMjQgMTg6MDIsIEhhbCBGZW5nIHdyb3RlOg0KPiA+Pj4+IE9uIDE3LjEyLjI0IDA0
OjEzLCBDb25vciBEb29sZXkgd3JvdGU6DQo+ID4+Pj4gT24gTW9uLCAwOSBEZWMgMjAyNCAyMDow
Njo0NiAtMDgwMCwgRSBTaGF0dG93IHdyb3RlOg0KPiA+Pj4+PiBVc2UgbmFtZWQgZGVmaW5pdGlv
biBmb3IgbW1jMSBjYXJkIGRldGVjdCBHUElPIGluc3RlYWQgb2YgbnVtZXJpYw0KPiBsaXRlcmFs
Lg0KPiA+Pj4+Pg0KPiA+Pj4+Pg0KPiA+Pj4+DQo+ID4+Pj4gQXBwbGllZCB0byByaXNjdi1kdC1m
b3ItbmV4dCwgdGhhbmtzIQ0KPiA+Pj4+DQo+ID4+Pj4gWzEvMV0gcmlzY3Y6IGR0czogc3RhcmZp
dmU6IGpoNzExMC1jb21tb246IFVzZSBuYW1lZCBkZWZpbml0aW9uIGZvcg0KPiA+Pj4+IG1tYzEg
Y2FyZCBkZXRlY3QNCj4gPj4+PiAgICAgICAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvY29ub3Iv
Yy9jOTZmMTVkNzkxNzINCj4gPj4+DQo+ID4+PiBObywgaGVyZSAiNDEiIG1lYW5zIHRoZSBHUElP
IG51bWJlciwgYnV0IEdQSV9TWVNfU0RJTzFfQ0QgbWVhbnMNCj4gdGhlDQo+ID4+PiBtdWx0aXBs
ZXhlZCBmdW5jdGlvbiBhbmQgc2hvdWxkIGJlIHVzZWQgYnkgcGluY3RybCBwaW5tdXggbm90IGdw
aW8NCj4gc3Vic3lzdGVtLg0KPiA+Pj4gQWx0aG91Z2ggR1BJLVNZU19TRElPMV9DRCBpcyBudW1l
cmljYWxseSB0aGUgc2FtZSBhcyA0MS4NCj4gPj4+DQo+ID4+PiBCZXN0IHJlZ2FyZHMsDQo+ID4+
PiBIYWwNCj4gPj4NCj4gPj4gWW91J3JlIHJpZ2h0LCBIYWwuIEknbSBjb25mdXNlZCB0cnlpbmcg
dG8gbWFrZSBzZW5zZSBvZiB0aGlzLg0KPiA+Pg0KPiA+PiAgRnJvbSBkdHMvdXBzdHJlYW0vc3Jj
L3Jpc2N2L3N0YXJmaXZlL2poNzExMC1waW5mdW5jLmg6DQo+ID4+DQo+ID4+ICJncGlvIG5yOiAg
Z3BpbyBudW1iZXIsIDAgLSA2MyINCg0KVGhpcyBwbGFjZSBuZWVkcyB0byBiZSB1cGRhdGVkLg0K
DQpGb3Igc3lzZ3BpbzogDQpncGlvIG5yOiAgZ3BpbyBudW1iZXIsIDAgLSA2MyB3aGVuIHVzaW5n
IEdQSU9NVVgobiwgLi4uKSwNCiAgICAgICAgICAgICAgICA2IC0gNjMgb3IgODIgd2hlbiB1c2lu
ZyBQSU5NVVgobiwgMSBvciAyKSwgIDY0IC0gNzQgb3IgODkgLSA5NCB3aGVuIHVzaW5nIFBJTk1V
WChuLCAwKQ0KDQpGb3IgYW9uZ3BpbzogDQpncGlvIG5yOiAgZ3BpbyBudW1iZXIsIDAgLSAzIHdo
ZW4gdXNpbmcgR1BJT01VWChuLCAuLi4pLA0KICAgICAgICAgICAgICAgIDAgLSA1IHdoZW4gdXNp
bmcgUElOTVVYKG4sIDApDQoNCj4gPj4NCj4gPj4gQW5kIHlldCBpbiBkdHMvdXBzdHJlYW0vc3Jj
L3Jpc2N2L3N0YXJmaXZlL2poNzExMC1jb21tb24uZHRzaSB0aGVyZSdzOg0KPiA+Pg0KPiA+Pj4g
ICAgICAgICAgICAgICAgICAgICAgICAgcGlubXV4ID0gPFBJTk1VWCg2NCwgMCk+LA0KPiA+Pj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPFBJTk1VWCg2NSwgMCk+LA0KPiA+Pj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPFBJTk1VWCg2NiwgMCk+LA0KPiA+Pj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPFBJTk1VWCg2NywgMCk+LA0KPiA+Pj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPFBJTk1VWCg2OCwgMCk+LA0KPiA+Pj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPFBJTk1VWCg2OSwgMCk+LA0KPiA+Pj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPFBJTk1VWCg3MCwgMCk+LA0KPiA+Pj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPFBJTk1VWCg3MSwgMCk+LA0KPiA+Pj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPFBJTk1VWCg3MiwgMCk+LA0KPiA+Pj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPFBJTk1VWCg3MywgMCk+Ow0KPiA+Pg0K
PiA+Pg0KPiA+PiBMb29zZWx5IG9uIHRoZSBzdWJqZWN0IG9mIE1NQyBpbnRlcmZhY2UgYW5kIEdQ
SU8gbnVtYmVyaW5nLCB3aGF0IGlzDQo+ID4+IHRoZSBhYm92ZSBjb2RlIGRvaW5nPyBUaGVzZSBh
cmUgbm90IEdQSU8gbnVtYmVycyAwLTYzIHNvIHdoYXQgaXMgdGhpcz8NCj4gPj4NCj4gPj4gSSdt
IHRyeWluZyB0byB1bmRlcnN0YW5kIHRoaXMgc28gSSBjYW4gd3JpdGUgdGhlIE1hcnMgQ00gKC1M
aXRlKSBkdHMuDQo+ID4+DQo+ID4NCj4gPg0KPiA+PiBDb25vciwgYW5kIEhhbDogc29ycnkgZm9y
IHRoZSBtaXN0YWtlIHRoZXJlLg0KPiA+DQo+ID4gTm8gd29ycmllcywgSSd2ZSBkcm9wcGVkIHRo
ZSBwYXRjaC4NCj4gDQo+IE9rYXkuIEkgd2FzIGFibGUgdG8gZmluZCBwYWQgZGVmaW5pdGlvbnMg
aW4gdGhlIHZlbmRvciBMaW51eCBzb3VyY2U6DQo+IGh0dHBzOi8vZ2l0aHViLmNvbS9zdGFyZml2
ZS0NCj4gdGVjaC9saW51eC9ibG9iLzVkZmM4Nzk5MTZkOTQ2ZGNjMjUyMWVmMWVjY2QxZDhiZmIw
NmE3NWUvaW5jbHVkZS9kdC0NCj4gYmluZGluZ3MvcGluY3RybC9zdGFyZml2ZSUyQ2poNzExMC1w
aW5mdW5jLmgNCj4gDQo+IFRoZXJlIGFyZSBkZWZpbml0aW9ucyBmb3IgR1BJTyBpbmRleGVzIGJl
eW9uZCAwLTYzOg0KPiANCj4gID4gI2RlZmluZSAgIFBBRF9TRDBfQ0xLICAgICA2NA0KPiAgPiAj
ZGVmaW5lICAgUEFEX1NEMF9DTUQgICAgIDY1DQo+ICA+ICNkZWZpbmUgICBQQURfU0QwX0RBVEEw
ICAgNjYNCj4gID4gI2RlZmluZSAgIFBBRF9TRDBfREFUQTEgICA2Nw0KPiAgPiAjZGVmaW5lICAg
UEFEX1NEMF9EQVRBMiAgIDY4DQo+ICA+ICNkZWZpbmUgICBQQURfU0QwX0RBVEEzICAgNjkNCj4g
ID4gI2RlZmluZSAgIFBBRF9TRDBfREFUQTQgICA3MA0KPiAgPiAjZGVmaW5lICAgUEFEX1NEMF9E
QVRBNSAgIDcxDQo+ICA+ICNkZWZpbmUgICBQQURfU0QwX0RBVEE2ICAgNzINCj4gID4gI2RlZmlu
ZSAgIFBBRF9TRDBfREFUQTcgICA3Mw0KPiAgPiAjZGVmaW5lICAgUEFEX1NEMF9TVFJCICAgIDc0
DQo+ICA+ICNkZWZpbmUgICBQQURfR01BQzFfTURDICAgNzUNCj4gID4gI2RlZmluZSAgIFBBRF9H
TUFDMV9NRElPICA3Ng0KPiAgPiAjZGVmaW5lICAgUEFEX0dNQUMxX1JYRDAgIDc3DQo+ICA+ICNk
ZWZpbmUgICBQQURfR01BQzFfUlhEMSAgNzgNCj4gID4gI2RlZmluZSAgIFBBRF9HTUFDMV9SWEQy
ICA3OQ0KPiAgPiAjZGVmaW5lICAgUEFEX0dNQUMxX1JYRDMgIDgwDQo+ICA+ICNkZWZpbmUgICBQ
QURfR01BQzFfUlhEViAgODENCj4gID4gI2RlZmluZSAgIFBBRF9HTUFDMV9SWEMgICA4Mg0KPiAg
PiAjZGVmaW5lICAgUEFEX0dNQUMxX1RYRDAgIDgzDQo+ICA+ICNkZWZpbmUgICBQQURfR01BQzFf
VFhEMSAgODQNCj4gID4gI2RlZmluZSAgIFBBRF9HTUFDMV9UWEQyICA4NQ0KPiAgPiAjZGVmaW5l
ICAgUEFEX0dNQUMxX1RYRDMgIDg2DQo+ICA+ICNkZWZpbmUgICBQQURfR01BQzFfVFhFTiAgODcN
Cj4gID4gI2RlZmluZSAgIFBBRF9HTUFDMV9UWEMgICA4OA0KPiAgPiAjZGVmaW5lICAgUEFEX1FT
UElfU0NMSyAgIDg5DQo+ICA+ICNkZWZpbmUgICBQQURfUVNQSV9DU24wICAgOTANCj4gID4gI2Rl
ZmluZSAgIFBBRF9RU1BJX0RBVEEwICA5MQ0KPiAgPiAjZGVmaW5lICAgUEFEX1FTUElfREFUQTEg
IDkyDQo+ICA+ICNkZWZpbmUgICBQQURfUVNQSV9EQVRBMiAgOTMNCj4gID4gI2RlZmluZSAgIFBB
RF9RU1BJX0RBVEEzICA5NA0KDQpZZXMsIHRoZXNlIHBpbnMgd2l0aCBpbmRleGVzIGJleW9uZCAw
LTYzIGFyZSBhY3R1YWxseSBleGlzdGVkIGFuZA0KdGhleSBhcmUgc2V0IHRvIHVuY2hhbmdlYWJs
ZSBmaXhlZCBmdW5jdGlvbnMuDQoNCj4gDQo+IFdoZXJlIEkgZ290IGxvc3QgaXMgdGhhdCB0aGVz
ZSBhcmUgaW4gbWFpbmxpbmUgd2l0aCBpbmNsdWRlL2R0LQ0KPiBiaW5kaW5ncy9waW5jdHJsL3N0
YXJmaXZlLGpoNzExMC1waW5jdHJsLmgNCj4gDQo+IEkgZGlkIG5vdCBmaW5kIHRoZXNlIHBhZCBk
ZWZpbml0aW9ucyBhYm92ZSBpbmRleCA2MyBtZW50aW9uZWQgaW4gdGhlDQo+IEpINzExMCBUZWNo
bmljYWwgUmVmZXJlbmNlIE1hbnVhbC4NCj4gDQo+IElzIGl0IHdvcnRoIHNlbmRpbmcgYSBwYXRj
aCB0byB1c2UgdGhvc2UgZGVmaW5pdGlvbnMgaW4gamg3MTEwLWNvbW1vbi5kdHNpPw0KDQpZZWFo
LCBhY3R1YWxseSBpdCB3aWxsIGJlIG1vcmUgcmVhZGFibGUgdG8gdXNlIHRoZSBkZWZpbml0aW9u
cyB0byByZXBsYWNlIHBpbiA2NH45NC4NCg0KQmVzdCByZWdhcmRzLA0KSGFsDQo=

