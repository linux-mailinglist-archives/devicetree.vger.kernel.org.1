Return-Path: <devicetree+bounces-63807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 183B38B6A8A
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 08:36:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 65AFEB22231
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 06:36:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2398E1863B;
	Tue, 30 Apr 2024 06:36:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from CHN02-SH0-obe.outbound.protection.partner.outlook.cn (mail-sh0chn02on2103.outbound.protection.partner.outlook.cn [139.219.146.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A62F617BDD;
	Tue, 30 Apr 2024 06:36:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.219.146.103
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714458991; cv=fail; b=DENkGJh88so7hJiKmqNM4OZd26jxrwkWYbupl5/59Y1JjLs2E1nSgF0cFx4HOv3uf37HLFkNZ7QmxNGSZWMF9uB8hbNRpfBZoiwr6TiekK1PN47gQUxKUPgjIpo3uE9ar3ORtzWPymyZ4AlM67NDwCYU20H8TEtjTUS7us+9C8Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714458991; c=relaxed/simple;
	bh=l8uY+DxK6QshVI6OijGo88ER/OrqftUc7QWFKwYkCgg=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=bQuGN2gYNEQnEcu7nrMK2PNqMnCjAY4gjE0CZt1bwYS52BFj9+sfAFUFOR5mpkW1HgFoULYE2oyTxU4Inxq7xBXccaQv8W7WlgxnKptjbI86aqKnN5GN5mUiGjyxaPjGCfPyaJ5O7VJv1eQ1/IV9JkqdYcuJTM49jf5SGwfw1h4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com; spf=pass smtp.mailfrom=starfivetech.com; arc=fail smtp.client-ip=139.219.146.103
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=starfivetech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hd8OtALGfR+xFEfEGQHjmnd/GdCNEfe0rloANgl4LBhxIS/67l978sGaC3PbASC/9YbP19FIn1j+ZVF/pPCgUTghFDQZkMnQv1SVGN8P/WO1vZEP5LoNHuGuztcs0QM8pnc1QyXm7L0KDhkdoc8c/SiQxNMDuGdl32d4nAHEjc4igaLFrbAwonaXs/wJdB8Wbp8sJ+lzHp7cL3ttSKE/d14v9HUDX/5+eWyssCtr5vlm2ycqEWJr9tSarOpsSPcVsjJfgYQMgB1t4JnJ1Ur3a3XYaUAQE4rKhxLJq+Fgcs2rBrx/7VuyVunKG2EM7Y3QGumXdSQHmnVC7dQ5kul0bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l8uY+DxK6QshVI6OijGo88ER/OrqftUc7QWFKwYkCgg=;
 b=goM1tvBmVX74uiS6bM6KmUMh1YEyQ7XGqSKzTzWuHPt25g8TiW/T3Nq7qHE5vIh4In+BSx4ZVF/SqRhsQ7FcL9vY/eiMbRGDNmGDJS7l9zd8w8v/Edj17obCfj2rKHbNzT/EMhDsQt/FYTiHBdcGWdb46YdPMUig1x4Z0E/V31tUqmYJPcvX7pifSi+DS9kpWqvLrWOOki+aciZNLeSYKj6HMIiRZ0CYeoRhRrzEpoklzKo+oKHd+rK5/xGchFdYCchPA0VtI689KcU2meuUTVesfenuSDwbOEqKEHUuDrbIQEA4wuOuPmFWNu3hO0qcFCjZgwhlj9BWHSfMCpzO3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Received: from NTZPR01MB0986.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:b::14) by NTZPR01MB1034.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:b::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.44; Tue, 30 Apr
 2024 06:21:18 +0000
Received: from NTZPR01MB0986.CHNPR01.prod.partner.outlook.cn
 ([fe80::4c03:2f99:7620:9c03]) by
 NTZPR01MB0986.CHNPR01.prod.partner.outlook.cn ([fe80::4c03:2f99:7620:9c03%4])
 with mapi id 15.20.7472.033; Tue, 30 Apr 2024 06:21:18 +0000
From: Ziv Xu <ziv.xu@starfivetech.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner
	<tglx@linutronix.de>
CC: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
	<robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>, Philipp Zabel <p.zabel@pengutronix.de>, Walker Chen
	<walker.chen@starfivetech.com>, Xingyu Wu <xingyu.wu@starfivetech.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Conor Dooley
	<conor@kernel.org>
Subject:
 =?gb2312?B?u9i4tDogW1BBVENIIHYxMCAyLzNdIGNsb2Nrc291cmNlOiBBZGQgSkg3MTEw?=
 =?gb2312?Q?_timer_driver?=
Thread-Topic: [PATCH v10 2/3] clocksource: Add JH7110 timer driver
Thread-Index: AQHajLXUwJ1xHqE2bkSj75330O2of7GAcubA
Date: Tue, 30 Apr 2024 06:21:17 +0000
Message-ID:
 <NTZPR01MB09860632D4BDB31B98E1BD18E11AA@NTZPR01MB0986.CHNPR01.prod.partner.outlook.cn>
References: <20240412084543.7243-1-ziv.xu@starfivetech.com>
 <20240412084543.7243-3-ziv.xu@starfivetech.com>
In-Reply-To: <20240412084543.7243-3-ziv.xu@starfivetech.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: NTZPR01MB0986:EE_|NTZPR01MB1034:EE_
x-ms-office365-filtering-correlation-id: d1ea661a-5f2d-47e6-f192-08dc68ddbee9
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 wfPzn7NnTj5LZ++AkVCkrj7UAi+UK9xovVd9r/R4lW6Nls9YlApQ6gVv7rwRzXWj3UTKF6RJilds5Ue2Wgmmsx5V1VK795AmKIq83m7aVPuO0f5OMIOnuZMIQ6a2Sd0B4PdaQ9OMOsJszQfI5mXQhH5SppxInwbkBE/d1Mjp7RI/HGw8lG8p1X6bmmf9Kh/q7WnDytKOe/1WFNFHQmghlDficPa3dUC/M7G97AUhx+WUxRCxVRqlu/c+Rl9LTEdX7LxitGqTU1b6W5ztfzVB+H1IHM0Clk79n7yjOU+CYA9/jkM21OoKwc7Bd49KlSwg6F6LlBTsq/k3FM+mJL7RiiGITykmuGJXn3cGBDJrf3qXSKoGz0+JjMyw7Sdeeag6gBdu20izt+AI/PnlH/BMSqNJenSRSBTd2m/Bky73LvqxwxP+RZxA3Miibwd9/StWuyIEpWr+m1Pb/2pdwaiFlrVakAQYyKEMURhNDxNPzwjcBbk3dP4I14YTGgEd9x/w1ScaWd1a9Z1m5aTTzEqbtUFjz82VsvPxv/NWkFMZhAiRTRmcMH/D0wIUIhB5+Tw9zk5+u45tuqiAYV/oafhS5neQ+nR95H9LC4xavEsd+23ZTd21WrrrThxXEo1BAlJh
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:zh-cn;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:NTZPR01MB0986.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230031)(7416005)(41320700004)(1800799015)(366007)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?gb2312?B?Tlh6YU9FMmVyOHprYnE3QlF2NUZNNDNJMjg4eStVbDQyc090S3dKN3JZSDU1?=
 =?gb2312?B?cDVsS2dHN0NhYnlVU2JUS0ZrdGFQdktHL1JFTUM4S2cxUUliNUdNQzRyWGpB?=
 =?gb2312?B?VTFrYXBUUCt3YUwxZ1JTeVl0dEtFTFZNcGZVbGVFY1krTUpPVnRjakFoa0Va?=
 =?gb2312?B?U3p5c0xDSmpldk9tSDdVbFBiTWNEdFBOWiswSlFpS0J5U2t6dHZ4V2w5bVYy?=
 =?gb2312?B?NEszdE56NDRNYzg3VjJQUnh3YzRoTXhBNFpEK3BoeEdiQzBkUHk2VisvYXZH?=
 =?gb2312?B?b2ljdFdpMW5RUDNrMWtWVkFPSGhuN1JVNHZDNk1wSmIzMjFJSEVzY3AxQ1lv?=
 =?gb2312?B?NHowQzQ4dUZjMXE1VVUrblZDZmRzRVB5KzlTcVlmYzlCNHVEYytCUWdaVWwr?=
 =?gb2312?B?ZUQwSDhIK3IyQ2R2aUhKMC91YnRhcEtuaVpPeWljdUlFZHg5c3ZnaGhXTUZ4?=
 =?gb2312?B?T0ZvZEh4Z3ZJeitERXJBZWpidmZSMk9hWVZJdFpwT0g4OW9VRE5Qcy9xY3pW?=
 =?gb2312?B?SFR2VEliYzYzalVUbTYyK0E2d0VBTjFCejFHWC92bjVaMS82aGwyUDlrN2hl?=
 =?gb2312?B?UTg3bStoSXFmV3V4WUcvWTNJbGZSbEtXanNXZzFGaWw0OEo1dFNGcGx4Qzlt?=
 =?gb2312?B?Y1BKVHJTcjBRWFk3dExWZ0tXZ3AxbjMzOC9Xbk9EZUNNeTJRdnQrOTBZdTRh?=
 =?gb2312?B?TGpHOUJ6OFI3UlZKUjBqUGFydzZxM0YxN094em82V0JQZllCMFFqOUhSSUVP?=
 =?gb2312?B?dlU2R1hXdURiY0czSTd4MFJ5UmowVFVoTHdtcmpYL3dCZEJCZHdITFI0Qzdz?=
 =?gb2312?B?V2pvbDBsYStHZHNkTERkYzBSbGUxZndMNTVzcGFXa0JsVlBLZ3lvRGZtVi9r?=
 =?gb2312?B?a2JZKzBoZFNPQzJBbXNHZDBvM2Q1bkZjcmhqNXkwWXpvQkowelp3YnMxNjVI?=
 =?gb2312?B?dS81SnIxUmV5b3l1YTkvdnpBZktJMGo1Y2thSEN4d3lRSmFsbk1yQk5aaWt0?=
 =?gb2312?B?ZnNpQTdJWVpWTDNlZEZBL3YreTlKT1JHQ2haUU54WTcyWGprS0VuUno5UWNo?=
 =?gb2312?B?c1ZTQ2VDa1ZtZXJTL3JmWFUxdjFGNFZLUFZ4UlVyMFN2alhaM3ZvWGFvWVY0?=
 =?gb2312?B?U2NrZXFBdjRtNEFhdVhyaEc1U2pUOXFxelJNWUtVcm5nb2VldnNQaDFPODFy?=
 =?gb2312?B?TGJ6dnh5RmRCWHU1ZmxSQU4rZmFTRXFZdWlQdWdUd1A5YTlaMW9rV2RhY3BZ?=
 =?gb2312?B?UC85b0FpNG1GV3MxSE41cGhMeXIvckp0Qjh2ZnE4UUk3OEJ1MCs5SzNjNlJI?=
 =?gb2312?B?TTBuVFVxSjVWSHFSMmJSQk5sK1AyMXl2STNtUSt1MjBXczNoWGRvWDFsUzRu?=
 =?gb2312?B?T1lBaUZkVk9iUlM3R2Z0bndTcnBGbVdGZksxSTZNdEZLdDJoQWRwOWFjOWRQ?=
 =?gb2312?B?WnRqM2kzS3ZEQVQ5cGQrV3NJVkoycVBReFF5bGQ1RzBlNGs4SDNvRldUK1ps?=
 =?gb2312?B?bitmbkIxZW1kWldOMVFRZ2ZzOUNrem9ndXFVN2pLdXlWMUJaVFRVdTNsVnJn?=
 =?gb2312?B?U1hOaG1nQnNOblpjMjVDNGJaTnQ2RzN2N011RlI1T0lWWUo5b054c21DQXpG?=
 =?gb2312?B?eURsc3FkOEVsdWF2dEFHMXZHbGtqTlMvRHRjODNqazkvaENOSFVQWC9wMGV5?=
 =?gb2312?B?b0hzamxOaG5yRmtoMml6L2FUd252aDNrOG9CNnBmcTFJeWRjT1VWb3VCMjBM?=
 =?gb2312?B?anRWNU1kOW8vWFZ6QXpIM1NDWlZEeHNiSHBUUzAvdXJsN20zNmYycklDdEtz?=
 =?gb2312?B?M2dlVkZjR0hiTkptcU5pTVlRaFM3bW45MnlGdHViM051SE5CVTdYSURqOGFy?=
 =?gb2312?B?OFpjWStpRnhoTVlZejRERjBqeTNaSHg0YWhEWjF0V243NWU2Y2g1OFdvM1BN?=
 =?gb2312?B?UVpMVFVFL2ZjYU8yWUVZaW1ieUVXSlBwZUd2ZkJ0eThGeDdFaU1RaTRoK0lr?=
 =?gb2312?B?Y25RWlF5ODBqU2RIbnYyY0QrU3QwZ1FzWXFsWTY5SGhnZTN2SnVwNGN2bHNs?=
 =?gb2312?B?cFEvVFNsdnFJc3k0bGpRcUgrbDF5VXlGOTF5MUJFMTBua3podUdCb1c0WnpR?=
 =?gb2312?Q?QRqppmYR7Wuf1hFrgvVIA43Ae?=
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: starfivetech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: NTZPR01MB0986.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-Network-Message-Id: d1ea661a-5f2d-47e6-f192-08dc68ddbee9
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2024 06:21:17.9581
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FXzOW8EmWWw0k7ftFBctlpmZSod6WNBl+q/NEV/hf358iyyRb5SQJlSqQM1pIje3lHT3lNWL7ZaS6rtRZ23Sig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: NTZPR01MB1034

DQoNCj4gLS0tLS3Tyrz+1K28/i0tLS0tDQo+ILeivP7IyzogWml2IFh1DQo+ILeiy83KsbzkOiAy
MDI0xOo01MIxMsjVIDE2OjQ2DQo+IMrVvP7IyzogRGFuaWVsIExlemNhbm8gPGRhbmllbC5sZXpj
YW5vQGxpbmFyby5vcmc+OyBUaG9tYXMgR2xlaXhuZXINCj4gPHRnbHhAbGludXRyb25peC5kZT47
IEVtaWwgUmVubmVyIEJlcnRoaW5nDQo+IDxlbWlsLnJlbm5lci5iZXJ0aGluZ0BjYW5vbmljYWwu
Y29tPjsgQ2hyaXN0b3BoZSBKQUlMTEVUDQo+IDxjaHJpc3RvcGhlLmphaWxsZXRAd2FuYWRvby5m
cj4NCj4gs63LzTogbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZzsgZGV2aWNldHJlZUB2
Z2VyLmtlcm5lbC5vcmc7IFJvYiBIZXJyaW5nDQo+IDxyb2JoK2R0QGtlcm5lbC5vcmc+OyBLcnp5
c3p0b2YgS296bG93c2tpDQo+IDxrcnp5c3p0b2Yua296bG93c2tpK2R0QGxpbmFyby5vcmc+OyBQ
YXVsIFdhbG1zbGV5DQo+IDxwYXVsLndhbG1zbGV5QHNpZml2ZS5jb20+OyBQYWxtZXIgRGFiYmVs
dCA8cGFsbWVyQGRhYmJlbHQuY29tPjsgQWxiZXJ0DQo+IE91IDxhb3VAZWVjcy5iZXJrZWxleS5l
ZHU+OyBQaGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1dHJvbml4LmRlPjsgV2Fsa2VyDQo+IENo
ZW4gPHdhbGtlci5jaGVuQHN0YXJmaXZldGVjaC5jb20+OyBYaW5neXUgV3UNCj4gPHhpbmd5dS53
dUBzdGFyZml2ZXRlY2guY29tPjsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgQ29ub3Ig
RG9vbGV5DQo+IDxjb25vckBrZXJuZWwub3JnPg0KPiDW98ziOiBbUEFUQ0ggdjEwIDIvM10gY2xv
Y2tzb3VyY2U6IEFkZCBKSDcxMTAgdGltZXIgZHJpdmVyDQo+IA0KPiBGcm9tOiBYaW5neXUgV3Ug
PHhpbmd5dS53dUBzdGFyZml2ZXRlY2guY29tPg0KPiANCj4gQWRkIHRpbWVyIGRyaXZlciBmb3Ig
dGhlIFN0YXJGaXZlIEpINzExMCBTb0MuDQo+IA0KPiBUaGlzIHRpbWVyIGhhcyBmb3VyIGZyZWUt
cnVubmluZyBhbmQgaW5kZXBlbmRlbnQgMzItYml0IGNvdW50ZXJzLg0KPiBFYWNoIGNoYW5uZWwo
Y291bnRlcikgY2FuIHRyaWdnZXIgYW4gaW50ZXJydXB0IHdoZW4gdGltZW91dCBldmVuIENQVSBp
cw0KPiBzbGVlcGluZy4gU28gdGhpcyB0aW1lciBpcyB1c2VkIGFzIGdsb2JhbCB0aW1lciBhbmQg
cmVnaXN0ZXIgY2xvY2tldmVudCBmb3IgZWFjaA0KPiBDUFUgY29yZSBhZnRlciByaXNjdi10aW1l
ciByZWdpc3RyYXRpb24gb24gdGhlIFN0YXJGaXZlIEpINzExMCBTb0MuDQo+IA0KPiBTaWduZWQt
b2ZmLWJ5OiBaaXYgWHUgPHppdi54dUBzdGFyZml2ZXRlY2guY29tPg0KPiBTaWduZWQtb2ZmLWJ5
OiBYaW5neXUgV3UgPHhpbmd5dS53dUBzdGFyZml2ZXRlY2guY29tPg0KPiAtLS0NCj4gIE1BSU5U
QUlORVJTICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDcgKw0KPiAgZHJpdmVycy9jbG9ja3Nv
dXJjZS9LY29uZmlnICAgICAgICB8ICAxMSArDQo+ICBkcml2ZXJzL2Nsb2Nrc291cmNlL01ha2Vm
aWxlICAgICAgIHwgICAxICsNCj4gIGRyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItamg3MTEwLmMg
fCAzNDUgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gIGluY2x1ZGUvbGludXgvY3B1
aG90cGx1Zy5oICAgICAgICAgfCAgIDEgKw0KPiAgNSBmaWxlcyBjaGFuZ2VkLCAzNjUgaW5zZXJ0
aW9ucygrKQ0KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXIt
amg3MTEwLmMNCj4gDQo+IGRpZmYgLS1naXQgYS9NQUlOVEFJTkVSUyBiL01BSU5UQUlORVJTDQo+
IGluZGV4IDdjMTIxNDkzZjQzZC4uZWY5YjVmNWJhZDllIDEwMDY0NA0KPiAtLS0gYS9NQUlOVEFJ
TkVSUw0KPiArKysgYi9NQUlOVEFJTkVSUw0KPiBAQCAtMjEwNDMsNiArMjEwNDMsMTMgQEAgUzoJ
TWFpbnRhaW5lZA0KPiAgRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvdW5k
L3N0YXJmaXZlLGpoNzExMC10ZG0ueWFtbA0KPiAgRjoJc291bmQvc29jL3N0YXJmaXZlL2poNzEx
MF90ZG0uYw0KPiANCj4gK1NUQVJGSVZFIEpINzExMCBUSU1FUiBEUklWRVINCj4gK006CVNhbWlu
IEd1byA8c2FtaW4uZ3VvQHN0YXJmaXZldGVjaC5jb20+DQo+ICtNOglYaW5neXUgV3UgPHhpbmd5
dS53dUBzdGFyZml2ZXRlY2guY29tPg0KPiArUzoJU3VwcG9ydGVkDQo+ICtGOglEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGltZXIvc3RhcmZpdmUsamg3MTEwLXRpbWVyLnlhbWwN
Cj4gK0Y6CWRyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItamg3MTEwLmMNCj4gKw0KPiAgU1RBUkZJ
VkUgSkg3MVgwIENMT0NLIERSSVZFUlMNCj4gIE06CUVtaWwgUmVubmVyIEJlcnRoaW5nIDxrZXJu
ZWxAZXNtaWwuZGs+DQo+ICBNOglIYWwgRmVuZyA8aGFsLmZlbmdAc3RhcmZpdmV0ZWNoLmNvbT4N
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xvY2tzb3VyY2UvS2NvbmZpZyBiL2RyaXZlcnMvY2xv
Y2tzb3VyY2UvS2NvbmZpZyBpbmRleA0KPiAzNGZhYTAzMjBlY2UuLjJkYzk3MjAxZGVlMSAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9jbG9ja3NvdXJjZS9LY29uZmlnDQo+ICsrKyBiL2RyaXZlcnMv
Y2xvY2tzb3VyY2UvS2NvbmZpZw0KPiBAQCAtNjQxLDYgKzY0MSwxNyBAQCBjb25maWcgUklTQ1Zf
VElNRVINCj4gIAkgIGlzIGFjY2Vzc2VkIHZpYSBib3RoIHRoZSBTQkkgYW5kIHRoZSByZGN5Y2xl
IGluc3RydWN0aW9uLiAgVGhpcyBpcw0KPiAgCSAgcmVxdWlyZWQgZm9yIGFsbCBSSVNDLVYgc3lz
dGVtcy4NCj4gDQo+ICtjb25maWcgU1RBUkZJVkVfSkg3MTEwX1RJTUVSDQo+ICsJYm9vbCAiVGlt
ZXIgZm9yIHRoZSBTVEFSRklWRSBKSDcxMTAgU29DIg0KPiArCWRlcGVuZHMgb24gQVJDSF9TVEFS
RklWRSB8fCBDT01QSUxFX1RFU1QNCj4gKwlzZWxlY3QgVElNRVJfT0YNCj4gKwlzZWxlY3QgQ0xL
U1JDX01NSU8NCj4gKwlkZWZhdWx0IEFSQ0hfU1RBUkZJVkUNCj4gKwloZWxwDQo+ICsJICBUaGlz
IGVuYWJsZXMgdGhlIHRpbWVyIGZvciBTdGFyRml2ZSBKSDcxMTAgU29DLiBPbiBSSVNDLVYgcGxh
dGZvcm0sDQo+ICsJICB0aGUgc3lzdGVtIGhhcyBzdGFydGVkIFJJU0NWX1RJTUVSLCBidXQgeW91
IGNhbiBhbHNvIHVzZSB0aGlzIHRpbWVyDQo+ICsJICB3aGljaCBjYW4gcHJvdmlkZSBmb3VyIGNo
YW5uZWxzIHRvIGRvIGEgbG90IG1vcmUgdGhpbmdzIG9uIEpINzExMCBTb0MuDQo+ICsNCj4gIGNv
bmZpZyBDTElOVF9USU1FUg0KPiAgCWJvb2wgIkNMSU5UIFRpbWVyIGZvciB0aGUgUklTQy1WIHBs
YXRmb3JtIiBpZiBDT01QSUxFX1RFU1QNCj4gIAlkZXBlbmRzIG9uIEdFTkVSSUNfU0NIRURfQ0xP
Q0sgJiYgUklTQ1YgZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMvY2xvY2tzb3VyY2UvTWFrZWZpbGUg
Yi9kcml2ZXJzL2Nsb2Nrc291cmNlL01ha2VmaWxlIGluZGV4DQo+IDRiYjg1NmU0ZGY1NS4uOGRj
MmYwZWEyZDBmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2Nsb2Nrc291cmNlL01ha2VmaWxlDQo+
ICsrKyBiL2RyaXZlcnMvY2xvY2tzb3VyY2UvTWFrZWZpbGUNCj4gQEAgLTgwLDYgKzgwLDcgQEAg
b2JqLSQoQ09ORklHX0lOR0VOSUNfVElNRVIpCQkrPSBpbmdlbmljLXRpbWVyLm8NCj4gIG9iai0k
KENPTkZJR19DTEtTUkNfU1RfTFBDKQkJKz0gY2xrc3JjX3N0X2xwYy5vDQo+ICBvYmotJChDT05G
SUdfWDg2X05VTUFDSElQKQkJKz0gbnVtYWNoaXAubw0KPiAgb2JqLSQoQ09ORklHX1JJU0NWX1RJ
TUVSKQkJKz0gdGltZXItcmlzY3Yubw0KPiArb2JqLSQoQ09ORklHX1NUQVJGSVZFX0pINzExMF9U
SU1FUikJKz0gdGltZXItamg3MTEwLm8NCj4gIG9iai0kKENPTkZJR19DTElOVF9USU1FUikJCSs9
IHRpbWVyLWNsaW50Lm8NCj4gIG9iai0kKENPTkZJR19DU0tZX01QX1RJTUVSKQkJKz0gdGltZXIt
bXAtY3NreS5vDQo+ICBvYmotJChDT05GSUdfR1g2NjA1U19USU1FUikJCSs9IHRpbWVyLWd4NjYw
NXMubw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1qaDcxMTAuYw0K
PiBiL2RyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItamg3MTEwLmMNCj4gbmV3IGZpbGUgbW9kZSAx
MDA2NDQNCj4gaW5kZXggMDAwMDAwMDAwMDAwLi5kYzc3MDUwN2YyMDkNCj4gLS0tIC9kZXYvbnVs
bA0KPiArKysgYi9kcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLWpoNzExMC5jDQo+IEBAIC0wLDAg
KzEsMzQ1IEBADQo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMA0KPiArLyoN
Cj4gKyAqIFN0YXJmaXZlIEpINzExMCBUaW1lciBkcml2ZXINCj4gKyAqDQo+ICsgKiBDb3B5cmln
aHQgKEMpIDIwMjMgU3RhckZpdmUgVGVjaG5vbG9neSBDby4sIEx0ZC4NCj4gKyAqDQo+ICsgKiBU
aGlzIHRpbWVyIGhhcyBmb3VyIGZyZWUtcnVubmluZyBhbmQgaW5kZXBlbmRlbnQgMzItYml0IGNv
dW50ZXJzIGFuZA0KPiArcnVucyBpbiAyNE1Ieg0KPiArICogY2xvY2sgb24gdGhlIFN0YXJGaXZl
IEpINzExMCBTb0MuIEVhY2ggY2hhbm5lbChjb3VudGVyKSBjYW4gdHJpZ2dlcg0KPiArYW4gaW50
ZXJydXB0DQo+ICsgKiB3aGVuIHRpbWVvdXQgZXZlbiBDUFUgaXMgc2xlZXBpbmcuIFRoZXkgc3Vw
cG9ydCBvbmUtc2hvdCBtb2RlIGFuZA0KPiBjb250aW51b3VzLXJ1biBtb2RlLg0KPiArICoNCj4g
KyAqIEVhY2ggY2hhbm5lbCBpcyB1c2VkIGFzIGEgZ2xvYmFsIHRpbWVyIHRoYXQgc2VydmVzIGVh
Y2ggY3B1IGNvcmU6DQo+ICsgKiBKSDcxMTAgVGltZXIgQ2hhbm5lbCAwIC0tIENQVSAwDQo+ICsg
KiBKSDcxMTAgVGltZXIgQ2hhbm5lbCAxIC0tIENQVSAxDQo+ICsgKiBKSDcxMTAgVGltZXIgQ2hh
bm5lbCAyIC0tIENQVSAyDQo+ICsgKiBKSDcxMTAgVGltZXIgQ2hhbm5lbCAzIC0tIENQVSAzDQo+
ICsgKi8NCj4gKw0KPiArI2luY2x1ZGUgPGxpbnV4L2Nsay5oPg0KPiArI2luY2x1ZGUgPGxpbnV4
L2Nsb2NrY2hpcHMuaD4NCj4gKyNpbmNsdWRlIDxsaW51eC9jcHUuaD4NCj4gKyNpbmNsdWRlIDxs
aW51eC9pb3BvbGwuaD4NCj4gKyNpbmNsdWRlIDxsaW51eC9pcnEuaD4NCj4gKyNpbmNsdWRlIDxs
aW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4NCj4gKyNpbmNsdWRlIDxsaW51eC9yZXNldC5oPg0KPiAr
DQo+ICsvKiBCaWFzOiBDaDAtMHgwLCBDaDEtMHg0MCwgQ2gyLTB4ODAsIGFuZCBzbyBvbi4gKi8N
Cj4gKyNkZWZpbmUgSkg3MTEwX1RJTUVSX0NIX0xFTgkJMHg0MA0KPiArI2RlZmluZSBKSDcxMTBf
VElNRVJfQ0hfQkFTRSh4KQkJKCh4KSAqIEpINzExMF9USU1FUl9DSF9MRU4pDQo+ICsjZGVmaW5l
IEpINzExMF9USU1FUl9DSF9NQVgJCTQNCj4gKw0KPiArI2RlZmluZSBKSDcxMTBfREVMQVlfVVMJ
CQkwDQo+ICsjZGVmaW5lIEpINzExMF9USU1FT1VUX1VTCQkxMDAwMA0KPiArI2RlZmluZSBKSDcx
MTBfQ0xPQ0tFVkVOVF9SQVRJTkcJMzAwDQo+ICsjZGVmaW5lIEpINzExMF9USU1FUl9NQVhfVElD
S1MJCTB4ZmZmZmZmZmYNCj4gKyNkZWZpbmUgSkg3MTEwX1RJTUVSX01JTl9USUNLUwkJMHhmDQo+
ICsNCj4gKyNkZWZpbmUgSkg3MTEwX1RJTUVSX0lOVF9TVEFUVVMJCTB4MDAgLyogUk9bMDo0XTog
SW50ZXJydXB0IFN0YXR1cw0KPiBmb3IgY2hhbm5lbDB+NCAqLw0KPiArI2RlZmluZSBKSDcxMTBf
VElNRVJfQ1RMCQkweDA0IC8qIFJXWzBdOiAwLWNvbnRpbnVvdXMgcnVuLCAxLXNpbmdsZSBydW4N
Cj4gKi8NCj4gKyNkZWZpbmUgSkg3MTEwX1RJTUVSX0xPQUQJCTB4MDggLyogUlc6IGxvYWQgdmFs
dWUgdG8gY291bnRlciAqLw0KPiArI2RlZmluZSBKSDcxMTBfVElNRVJfRU5BQkxFCQkweDEwIC8q
IFJXWzBdOiB0aW1lciBlbmFibGUgcmVnaXN0ZXIgKi8NCj4gKyNkZWZpbmUgSkg3MTEwX1RJTUVS
X1JFTE9BRAkJMHgxNCAvKiBSVzogd3JpdGUgMSBvciAwIGJvdGggcmVsb2FkDQo+IGNvdW50ZXIg
Ki8NCj4gKyNkZWZpbmUgSkg3MTEwX1RJTUVSX1ZBTFVFCQkweDE4IC8qIFJPOiB0aW1lciB2YWx1
ZSByZWdpc3RlciAqLw0KPiArI2RlZmluZSBKSDcxMTBfVElNRVJfSU5UX0NMUgkJMHgyMCAvKiBS
VzogdGltZXIgaW50ZXJydXB0IGNsZWFyDQo+IHJlZ2lzdGVyICovDQo+ICsjZGVmaW5lIEpINzEx
MF9USU1FUl9JTlRfTUFTSwkJMHgyNCAvKiBSV1swXTogdGltZXIgaW50ZXJydXB0DQo+IG1hc2sg
cmVnaXN0ZXIgKi8NCj4gKw0KPiArI2RlZmluZSBKSDcxMTBfVElNRVJfSU5UX0NMUl9FTkEJQklU
KDApDQo+ICsjZGVmaW5lIEpINzExMF9USU1FUl9JTlRfQ0xSX0FWQV9NQVNLCUJJVCgxKQ0KPiAr
DQo+ICsjZGVmaW5lIEpINzExMF9QRVJDUFVfR0VUX0NMS0VWVA0KPiAJKCZqaDcxMTBfdGltZXJf
aW5mby5jbGtldnRbc21wX3Byb2Nlc3Nvcl9pZCgpXSkNCj4gKw0KPiArLyoqDQo+ICsgKiBzdHJ1
Y3Qgamg3MTEwX2Nsa2V2dCAtIERlc2NyaXB0aW9uIG9mIGVhY2ggdGltZXIgY2hhbm5lbA0KPiAr
ICogQGNsazoJCUNsb2NrIG9mIGVhY2ggdGltZXIgY2hhbm5lbA0KPiArICogQHJzdDoJCVJlc2V0
IG9mIGVhY2ggdGltZXIgY2hhbm5lbA0KPiArICogQGJhc2U6CQlWaXJ0dWFsIGFkZHJlc3Mgb2Yg
ZWFjaCB0aW1lciBjaGFubmVsDQo+ICsgKiBAaXJxOiAgICAgICAgICAgICAgICBJbnRlcnJ1cHQg
bnVtYmVyIG9mIGVhY2ggdGltZXIgY2hhbm5lbA0KPiArICogQHRpbWVyX2VuYWJsZWQ6ICAgICAg
RW5hYmxlZCBmbGFnIGZvciBlYWNoIHRpbWVyIGNoYW5uZWwNCj4gKyAqIEBuYW1lOgkJTmFtZSBv
ZiBlYWNoIHRpbWVyIGNoYW5uZWwNCj4gKyAqLw0KPiArc3RydWN0IGpoNzExMF9jbGtldnQgew0K
PiArCXN0cnVjdCBjbGsJCSpjbGs7DQo+ICsJc3RydWN0IHJlc2V0X2NvbnRyb2wJKnJzdDsNCj4g
Kwl2b2lkIF9faW9tZW0JCSpiYXNlOw0KPiArCWludAkJCWlycTsNCj4gKwlib29sCQkJdGltZXJf
ZW5hYmxlZDsNCj4gKwljaGFyCQkJbmFtZVtzaXplb2YoImpoNzExMC10aW1lci5jaFgiKV07DQo+
ICt9Ow0KPiArDQo+ICtzdHJ1Y3Qgamg3MTEwX3RpbWVyX3ByaXYgew0KPiArCXN0cnVjdCBjbGsJ
CSpwY2xrOw0KPiArCXN0cnVjdCByZXNldF9jb250cm9sCSpwcnN0Ow0KPiArCXN0cnVjdCBkZXZp
Y2UJCSpkZXY7DQo+ICsJc3RydWN0IGpoNzExMF9jbGtldnQJY2xrZXZ0W0pINzExMF9USU1FUl9D
SF9NQVhdOw0KPiArfTsNCj4gKw0KPiArc3RhdGljIHN0cnVjdCBqaDcxMTBfdGltZXJfcHJpdiBq
aDcxMTBfdGltZXJfaW5mbzsNCj4gKw0KPiArLyogMDpjb250aW51b3VzLXJ1biBtb2RlLCAxOnNp
bmdsZS1ydW4gbW9kZSAqLyBlbnVtIGpoNzExMF90aW1lcl9tb2RlIHsNCj4gKwlKSDcxMTBfVElN
RVJfTU9ERV9DT05USU4sDQo+ICsJSkg3MTEwX1RJTUVSX01PREVfU0lOR0xFLA0KPiArfTsNCj4g
Kw0KPiArLyogSW50ZXJydXB0IE1hc2ssIDA6VW5tYXNrLCAxOk1hc2sgKi8NCj4gK2VudW0gamg3
MTEwX3RpbWVyX2ludF9tYXNrIHsNCj4gKwlKSDcxMTBfVElNRVJfSU5UX0VOQSwNCj4gKwlKSDcx
MTBfVElNRVJfSU5UX0RJUywNCj4gK307DQo+ICsNCj4gK2VudW0gamg3MTEwX3RpbWVyX2VuYWJs
ZSB7DQo+ICsJSkg3MTEwX1RJTUVSX0RJUywNCj4gKwlKSDcxMTBfVElNRVJfRU5BLA0KPiArfTsN
Cj4gKw0KPiArLyoNCj4gKyAqIEJJVCgwKTogUmVhZCB2YWx1ZSByZXByZXNlbnQgY2hhbm5lbCBp
bnQgc3RhdHVzLg0KPiArICogV3JpdGUgMSB0byB0aGlzIGJpdCB0byBjbGVhciBpbnRlcnJ1cHQu
IFdyaXRlIDAgaGFzIG5vIGVmZmVjdHMuDQo+ICsgKiBCSVQoMSk6ICIxIiBtZWFucyB0aGF0IGl0
IGlzIGNsZWFyaW5nIGludGVycnVwdC4gQklUKDApIGNhbiBub3QgYmUgd3JpdHRlbi4NCj4gKyAq
Lw0KPiArc3RhdGljIGlubGluZSBpbnQgamg3MTEwX3RpbWVyX2ludF9jbGVhcihzdHJ1Y3Qgamg3
MTEwX2Nsa2V2dCAqY2xrZXZ0KQ0KPiArew0KPiArCXUzMiB2YWx1ZTsNCj4gKwlpbnQgcmV0Ow0K
PiArDQo+ICsJLyogV2FpdGluZyBpbnRlcnJ1cHQgY2FuIGJlIGNsZWFyZWQgKi8NCj4gKwlyZXQg
PSByZWFkbF9wb2xsX3RpbWVvdXRfYXRvbWljKGNsa2V2dC0+YmFzZSArIEpINzExMF9USU1FUl9J
TlRfQ0xSLA0KPiB2YWx1ZSwNCj4gKwkJCQkJISh2YWx1ZSAmIEpINzExMF9USU1FUl9JTlRfQ0xS
X0FWQV9NQVNLKSwNCj4gKwkJCQkJSkg3MTEwX0RFTEFZX1VTLCBKSDcxMTBfVElNRU9VVF9VUyk7
DQo+ICsJaWYgKCFyZXQpDQo+ICsJCXdyaXRlbChKSDcxMTBfVElNRVJfSU5UX0NMUl9FTkEsIGNs
a2V2dC0+YmFzZSArDQo+ICtKSDcxMTBfVElNRVJfSU5UX0NMUik7DQo+ICsNCj4gKwlyZXR1cm4g
cmV0Ow0KPiArfQ0KPiArDQo+ICtzdGF0aWMgaW50IGpoNzExMF90aW1lcl9zdGFydChzdHJ1Y3Qg
amg3MTEwX2Nsa2V2dCAqY2xrZXZ0KSB7DQo+ICsJaW50IHJldDsNCj4gKw0KPiArCS8qIERpc2Fi
bGUgYW5kIGNsZWFyIGludGVycnVwdCBmaXJzdCAqLw0KPiArCXdyaXRlbChKSDcxMTBfVElNRVJf
SU5UX0RJUywgY2xrZXZ0LT5iYXNlICsNCj4gSkg3MTEwX1RJTUVSX0lOVF9NQVNLKTsNCj4gKwly
ZXQgPSBqaDcxMTBfdGltZXJfaW50X2NsZWFyKGNsa2V2dCk7DQo+ICsNCj4gKwl3cml0ZWwoSkg3
MTEwX1RJTUVSX0lOVF9FTkEsIGNsa2V2dC0+YmFzZSArDQo+IEpINzExMF9USU1FUl9JTlRfTUFT
Syk7DQo+ICsJd3JpdGVsKEpINzExMF9USU1FUl9FTkEsIGNsa2V2dC0+YmFzZSArIEpINzExMF9U
SU1FUl9FTkFCTEUpOw0KPiArDQo+ICsJcmV0dXJuIHJldDsNCj4gK30NCj4gKw0KPiArc3RhdGlj
IGludCBqaDcxMTBfdGltZXJfc2h1dGRvd24oc3RydWN0IGNsb2NrX2V2ZW50X2RldmljZSAqZXZ0
KSB7DQo+ICsJc3RydWN0IGpoNzExMF9jbGtldnQgKmNsa2V2dCA9IEpINzExMF9QRVJDUFVfR0VU
X0NMS0VWVDsNCj4gKw0KPiArCXdyaXRlbChKSDcxMTBfVElNRVJfRElTLCBjbGtldnQtPmJhc2Ug
KyBKSDcxMTBfVElNRVJfRU5BQkxFKTsNCj4gKwlyZXR1cm4gamg3MTEwX3RpbWVyX2ludF9jbGVh
cihjbGtldnQpOyB9DQo+ICsNCj4gKy8qIElSUSBoYW5kbGVyIGZvciB0aGUgdGltZXIgKi8NCj4g
K3N0YXRpYyBpcnFyZXR1cm5fdCBqaDcxMTBfdGltZXJfaW50ZXJydXB0KGludCBpcnEsIHZvaWQg
KmRhdGEpIHsNCj4gKwlzdHJ1Y3QgY2xvY2tfZXZlbnRfZGV2aWNlICpldnQgPSAoc3RydWN0IGNs
b2NrX2V2ZW50X2RldmljZSAqKWRhdGE7DQo+ICsJc3RydWN0IGpoNzExMF9jbGtldnQgKmNsa2V2
dCA9ICZqaDcxMTBfdGltZXJfaW5mby5jbGtldnRbMF07DQo+ICsJdTMyIHJlZyA9IHJlYWRsKGNs
a2V2dC0+YmFzZSArIEpINzExMF9USU1FUl9JTlRfU1RBVFVTKTsNCj4gKwl1OCBjcHVfaWQgPSBz
bXBfcHJvY2Vzc29yX2lkKCk7DQo+ICsNCj4gKwkvKiBDaGVjayBpbnRlcnJ1cHQgc3RhdHVzIGFu
ZCBjaGFubmVsKGNwdSkgSUQgKi8NCj4gKwlpZiAoIShyZWcgJiBCSVQoY3B1X2lkKSkpDQo+ICsJ
CXJldHVybiBJUlFfTk9ORTsNCj4gKw0KPiArCWNsa2V2dCA9ICZqaDcxMTBfdGltZXJfaW5mby5j
bGtldnRbY3B1X2lkXTsNCj4gKwl3cml0ZWwoSkg3MTEwX1RJTUVSX0lOVF9DTFJfRU5BLCAoY2xr
ZXZ0LT5iYXNlICsNCj4gK0pINzExMF9USU1FUl9JTlRfQ0xSKSk7DQo+ICsNCj4gKwlpZiAoZXZ0
LT5ldmVudF9oYW5kbGVyKQ0KPiArCQlldnQtPmV2ZW50X2hhbmRsZXIoZXZ0KTsNCj4gKw0KPiAr
CXJldHVybiBJUlFfSEFORExFRDsNCj4gK30NCj4gKw0KPiArc3RhdGljIGludCBqaDcxMTBfdGlt
ZXJfc2V0X3BlcmlvZGljKHN0cnVjdCBjbG9ja19ldmVudF9kZXZpY2UgKmV2dCkgew0KPiArCXN0
cnVjdCBqaDcxMTBfY2xrZXZ0ICpjbGtldnQgPSBKSDcxMTBfUEVSQ1BVX0dFVF9DTEtFVlQ7DQo+
ICsNCj4gKwl3cml0ZWwoSkg3MTEwX1RJTUVSX01PREVfQ09OVElOLCBjbGtldnQtPmJhc2UgKw0K
PiBKSDcxMTBfVElNRVJfQ1RMKTsNCj4gKwlyZXR1cm4gMDsNCj4gK30NCj4gKw0KPiArc3RhdGlj
IGludCBqaDcxMTBfdGltZXJfc2V0X29uZXNob3Qoc3RydWN0IGNsb2NrX2V2ZW50X2RldmljZSAq
ZXZ0KSB7DQo+ICsJc3RydWN0IGpoNzExMF9jbGtldnQgKmNsa2V2dCA9IEpINzExMF9QRVJDUFVf
R0VUX0NMS0VWVDsNCj4gKw0KPiArCXdyaXRlbChKSDcxMTBfVElNRVJfTU9ERV9TSU5HTEUsIGNs
a2V2dC0+YmFzZSArDQo+IEpINzExMF9USU1FUl9DVEwpOw0KPiArCXJldHVybiAwOw0KPiArfQ0K
PiArDQo+ICtzdGF0aWMgaW50IGpoNzExMF90aW1lcl9zZXRfbmV4dF9ldmVudCh1bnNpZ25lZCBs
b25nIG5leHQsDQo+ICsJCQkJICAgICAgIHN0cnVjdCBjbG9ja19ldmVudF9kZXZpY2UgKmV2dCkg
ew0KPiArCXN0cnVjdCBqaDcxMTBfY2xrZXZ0ICpjbGtldnQgPSBKSDcxMTBfUEVSQ1BVX0dFVF9D
TEtFVlQ7DQo+ICsNCj4gKwl3cml0ZWwoSkg3MTEwX1RJTUVSX01PREVfU0lOR0xFLCBjbGtldnQt
PmJhc2UgKw0KPiBKSDcxMTBfVElNRVJfQ1RMKTsNCj4gKwl3cml0ZWwobmV4dCwgY2xrZXZ0LT5i
YXNlICsgSkg3MTEwX1RJTUVSX0xPQUQpOw0KPiArDQo+ICsJcmV0dXJuIGpoNzExMF90aW1lcl9z
dGFydChjbGtldnQpOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgREVGSU5FX1BFUl9DUFUoc3RydWN0
IGNsb2NrX2V2ZW50X2RldmljZSwgamg3MTEwX2Nsb2NrX2V2ZW50KSA9IHsNCj4gKwkuZmVhdHVy
ZXMJCQk9IENMT0NLX0VWVF9GRUFUX1BFUklPRElDIHwNCj4gKwkJCQkJICBDTE9DS19FVlRfRkVB
VF9PTkVTSE9ULA0KPiArCS5yYXRpbmcJCQkJPSBKSDcxMTBfQ0xPQ0tFVkVOVF9SQVRJTkcsDQo+
ICsJLnNldF9zdGF0ZV9zaHV0ZG93bgkJPSBqaDcxMTBfdGltZXJfc2h1dGRvd24sDQo+ICsJLnNl
dF9zdGF0ZV9wZXJpb2RpYwkJPSBqaDcxMTBfdGltZXJfc2V0X3BlcmlvZGljLA0KPiArCS5zZXRf
c3RhdGVfb25lc2hvdAkJPSBqaDcxMTBfdGltZXJfc2V0X29uZXNob3QsDQo+ICsJLnNldF9zdGF0
ZV9vbmVzaG90X3N0b3BwZWQJPSBqaDcxMTBfdGltZXJfc2h1dGRvd24sDQo+ICsJLnNldF9uZXh0
X2V2ZW50CQkJPSBqaDcxMTBfdGltZXJfc2V0X25leHRfZXZlbnQsDQo+ICt9Ow0KPiArDQo+ICtz
dGF0aWMgaW50IGpoNzExMF90aW1lcl9keWluZ19jcHUodW5zaWduZWQgaW50IGNwdSkgew0KPiAr
CXN0cnVjdCBqaDcxMTBfdGltZXJfcHJpdiAqcHJpdiA9ICZqaDcxMTBfdGltZXJfaW5mbzsNCj4g
Kw0KPiArCWlmICghcHJpdi0+Y2xrZXZ0W2NwdV0udGltZXJfZW5hYmxlZCkNCj4gKwkJcmV0dXJu
IDA7DQo+ICsNCj4gKwl3cml0ZWwoSkg3MTEwX1RJTUVSX0RJUywgcHJpdi0+Y2xrZXZ0W2NwdV0u
YmFzZSArDQo+IEpINzExMF9USU1FUl9FTkFCTEUpOw0KPiArCWpoNzExMF90aW1lcl9pbnRfY2xl
YXIoJnByaXYtPmNsa2V2dFtjcHVdKTsNCj4gKwlyZXNldF9jb250cm9sX2Fzc2VydChwcml2LT5j
bGtldnRbY3B1XS5yc3QpOw0KPiArCWNsa19kaXNhYmxlX3VucHJlcGFyZShwcml2LT5jbGtldnRb
Y3B1XS5jbGspOw0KPiArDQo+ICsJcmV0dXJuIDA7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyBpbnQg
amg3MTEwX3RpbWVyX3N0YXJ0aW5nX2NwdSh1bnNpZ25lZCBpbnQgY3B1KSB7DQo+ICsJc3RydWN0
IGNsb2NrX2V2ZW50X2RldmljZSAqZXZ0ID0gcGVyX2NwdV9wdHIoJmpoNzExMF9jbG9ja19ldmVu
dCwgY3B1KTsNCj4gKwlzdHJ1Y3Qgamg3MTEwX3RpbWVyX3ByaXYgKnByaXYgPSAmamg3MTEwX3Rp
bWVyX2luZm87DQo+ICsJaW50IGVycjsNCj4gKwl1MzIgcmF0ZTsNCj4gKw0KPiArCWlmIChjcHUg
Pj0gSkg3MTEwX1RJTUVSX0NIX01BWCkNCj4gKwkJcmV0dXJuIC1FTk9NRU07DQo+ICsNCj4gKwll
cnIgPSBjbGtfcHJlcGFyZV9lbmFibGUocHJpdi0+Y2xrZXZ0W2NwdV0uY2xrKTsNCj4gKwlpZiAo
ZXJyKQ0KPiArCQlnb3RvIGVycl9zdGFydGluZ19jcHU7DQo+ICsNCj4gKwllcnIgPSByZXNldF9j
b250cm9sX2RlYXNzZXJ0KHByaXYtPmNsa2V2dFtjcHVdLnJzdCk7DQo+ICsJaWYgKGVycikNCj4g
KwkJZ290byBlcnJfc29mdF9yZXNldDsNCj4gKw0KPiArCXJhdGUgPSBjbGtfZ2V0X3JhdGUocHJp
di0+Y2xrZXZ0W2NwdV0uY2xrKTsNCj4gKwlldnQtPmNwdW1hc2sgPSBjcHVtYXNrX29mKGNwdSk7
DQo+ICsJZXZ0LT5pcnEgPSBwcml2LT5jbGtldnRbY3B1XS5pcnE7DQo+ICsNCj4gKwllcnIgPSBp
cnFfZm9yY2VfYWZmaW5pdHkoZXZ0LT5pcnEsIGNwdW1hc2tfb2YoY3B1KSk7DQo+ICsJaWYgKGVy
cikNCj4gKwkJZ290byBlcnJfYWZmaW5pdHk7DQo+ICsNCj4gKwljbG9ja2V2ZW50c19jb25maWdf
YW5kX3JlZ2lzdGVyKGV2dCwgcmF0ZSwgSkg3MTEwX1RJTUVSX01JTl9USUNLUywNCj4gKwkJCQkJ
Skg3MTEwX1RJTUVSX01BWF9USUNLUyk7DQo+ICsNCj4gKwkvKiBVc2Ugb25lLXNob3QgbW9kZSAq
Lw0KPiArCXdyaXRlbChKSDcxMTBfVElNRVJfTU9ERV9TSU5HTEUsIChwcml2LT5jbGtldnRbY3B1
XS5iYXNlICsNCj4gK0pINzExMF9USU1FUl9DVEwpKTsNCj4gKw0KPiArCXByaXYtPmNsa2V2dFtj
cHVdLnRpbWVyX2VuYWJsZWQgPSB0cnVlOw0KPiArDQo+ICsJZXJyID0gamg3MTEwX3RpbWVyX3N0
YXJ0KCZwcml2LT5jbGtldnRbY3B1XSk7DQo+ICsJaWYgKGVycikNCj4gKwkJZ290byBlcnJfYWZm
aW5pdHk7DQo+ICsJcmV0dXJuIDA7DQo+ICsNCj4gK2Vycl9hZmZpbml0eToNCj4gKwlyZXNldF9j
b250cm9sX2Fzc2VydChwcml2LT5jbGtldnRbY3B1XS5yc3QpOw0KPiArZXJyX3NvZnRfcmVzZXQ6
DQo+ICsJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHByaXYtPmNsa2V2dFtjcHVdLmNsayk7DQo+ICtl
cnJfc3RhcnRpbmdfY3B1Og0KPiArCWZyZWVfaXJxKGV2dC0+aXJxLCBldnQpOw0KPiArCXJldHVy
biBlcnI7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyBpbnQgamg3MTEwX3RpbWVyX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpIHsNCj4gKwlzdHJ1Y3Qgamg3MTEwX3RpbWVyX3ByaXYg
KnByaXYgPSAmamg3MTEwX3RpbWVyX2luZm87DQo+ICsJc3RydWN0IGNsb2NrX2V2ZW50X2Rldmlj
ZSAqZXZ0Ow0KPiArCXN0cnVjdCBqaDcxMTBfY2xrZXZ0ICpjbGtldnQ7DQo+ICsJY2hhciBuYW1l
W3NpemVvZigiY2hYIildOw0KPiArCWludCBjaDsNCj4gKwlpbnQgcmV0Ow0KPiArCXZvaWQgX19p
b21lbSAqYmFzZTsNCj4gKw0KPiArCWJhc2UgPSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3Vy
Y2UocGRldiwgMCk7DQo+ICsJaWYgKElTX0VSUihiYXNlKSkNCj4gKwkJcmV0dXJuIGRldl9lcnJf
cHJvYmUoJnBkZXYtPmRldiwgUFRSX0VSUihiYXNlKSwNCj4gKwkJCQkgICAgICJmYWlsZWQgdG8g
bWFwIHJlZ2lzdGVyc1xuIik7DQo+ICsNCj4gKwlwcml2LT5wcnN0ID0gZGV2bV9yZXNldF9jb250
cm9sX2dldF9leGNsdXNpdmUoJnBkZXYtPmRldiwgImFwYiIpOw0KPiArCWlmIChJU19FUlIocHJp
di0+cHJzdCkpDQo+ICsJCXJldHVybiBkZXZfZXJyX3Byb2JlKCZwZGV2LT5kZXYsIFBUUl9FUlIo
cHJpdi0+cHJzdCksDQo+ICsJCQkJICAgICAiZmFpbGVkIHRvIGdldCBhcGIgcmVzZXRcbiIpOw0K
PiArDQo+ICsJcHJpdi0+cGNsayA9IGRldm1fY2xrX2dldF9lbmFibGVkKCZwZGV2LT5kZXYsICJh
cGIiKTsNCj4gKwlpZiAoSVNfRVJSKHByaXYtPnBjbGspKQ0KPiArCQlyZXR1cm4gZGV2X2Vycl9w
cm9iZSgmcGRldi0+ZGV2LCBQVFJfRVJSKHByaXYtPnBjbGspLA0KPiArCQkJCSAgICAgImZhaWxl
ZCB0byBnZXQgJiBlbmFibGUgYXBiIGNsb2NrXG4iKTsNCj4gKw0KPiArCXJldCA9IHJlc2V0X2Nv
bnRyb2xfZGVhc3NlcnQocHJpdi0+cHJzdCk7DQo+ICsJaWYgKHJldCkNCj4gKwkJcmV0dXJuIGRl
dl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgcmV0LCAiZmFpbGVkIHRvIGRlYXNzZXJ0IGFwYg0KPiAr
cmVzZXRcbiIpOw0KPiArDQo+ICsJZm9yIChjaCA9IDA7IGNoIDwgSkg3MTEwX1RJTUVSX0NIX01B
WDsgY2grKykgew0KPiArCQlldnQgPSBwZXJfY3B1X3B0cigmamg3MTEwX2Nsb2NrX2V2ZW50LCBj
aCk7DQo+ICsJCWNsa2V2dCA9ICZwcml2LT5jbGtldnRbY2hdOw0KPiArCQlzbnByaW50ZihuYW1l
LCBzaXplb2YobmFtZSksICJjaCVkIiwgY2gpOw0KPiArDQo+ICsJCWNsa2V2dC0+YmFzZSA9IGJh
c2UgKyBKSDcxMTBfVElNRVJfQ0hfQkFTRShjaCk7DQo+ICsJCS8qIEVuc3VyZSB0aW1lciBpcyBk
aXNhYmxlZCAqLw0KPiArCQl3cml0ZWwoSkg3MTEwX1RJTUVSX0RJUywgY2xrZXZ0LT5iYXNlICsg
Skg3MTEwX1RJTUVSX0VOQUJMRSk7DQo+ICsJCXJldCA9IGpoNzExMF90aW1lcl9pbnRfY2xlYXIo
Y2xrZXZ0KTsNCj4gKwkJaWYgKHJldCkNCj4gKwkJCXJldHVybiByZXQ7DQo+ICsNCj4gKwkJY2xr
ZXZ0LT5yc3QgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0X2V4Y2x1c2l2ZSgmcGRldi0+ZGV2LCBu
YW1lKTsNCj4gKwkJaWYgKElTX0VSUihjbGtldnQtPnJzdCkpDQo+ICsJCQlyZXR1cm4gUFRSX0VS
UihjbGtldnQtPnJzdCk7DQo+ICsNCj4gKwkJY2xrZXZ0LT5jbGsgPSBkZXZtX2Nsa19nZXQoJnBk
ZXYtPmRldiwgbmFtZSk7DQo+ICsJCWlmIChJU19FUlIoY2xrZXZ0LT5jbGspKQ0KPiArCQkJcmV0
dXJuIFBUUl9FUlIoY2xrZXZ0LT5jbGspOw0KPiArDQo+ICsJCWNsa2V2dC0+aXJxID0gcGxhdGZv
cm1fZ2V0X2lycShwZGV2LCBjaCk7DQo+ICsJCWlmIChjbGtldnQtPmlycSA8IDApDQo+ICsJCQly
ZXR1cm4gY2xrZXZ0LT5pcnE7DQo+ICsNCj4gKwkJc25wcmludGYoY2xrZXZ0LT5uYW1lLCBzaXpl
b2YoY2xrZXZ0LT5uYW1lKSwgImpoNzExMC10aW1lci5jaCVkIiwNCj4gY2gpOw0KPiArCQlyZXQg
PSBkZXZtX3JlcXVlc3RfaXJxKCZwZGV2LT5kZXYsIGNsa2V2dC0+aXJxLA0KPiBqaDcxMTBfdGlt
ZXJfaW50ZXJydXB0LA0KPiArCQkJCSAgICAgICBJUlFGX1RJTUVSIHwgSVJRRl9JUlFQT0xMLA0K
PiArCQkJCSAgICAgICBjbGtldnQtPm5hbWUsIGV2dCk7DQo+ICsNCj4gKwkJaWYgKHJldCkNCj4g
KwkJCXJldHVybiByZXQ7DQo+ICsNCj4gKwkJY2xrZXZ0LT50aW1lcl9lbmFibGVkID0gZmFsc2U7
DQo+ICsJfQ0KPiArDQo+ICsJcmV0dXJuIGNwdWhwX3NldHVwX3N0YXRlKENQVUhQX0FQX0pINzEx
MF9USU1FUl9TVEFSVElORywNCj4gKwkJCQkiY2xvY2tldmVudHMvamg3MTEwL3RpbWVyOnN0YXJ0
aW5nIiwNCj4gKwkJCQlqaDcxMTBfdGltZXJfc3RhcnRpbmdfY3B1LCBqaDcxMTBfdGltZXJfZHlp
bmdfY3B1KTsgfQ0KPiArDQo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBqaDcx
MTBfdGltZXJfbWF0Y2hbXSA9IHsNCj4gKwl7IC5jb21wYXRpYmxlID0gInN0YXJmaXZlLGpoNzEx
MC10aW1lciIsIH0sDQo+ICsJeyAvKiBzZW50aW5lbCAqLyB9DQo+ICt9Ow0KPiArTU9EVUxFX0RF
VklDRV9UQUJMRShvZiwgamg3MTEwX3RpbWVyX21hdGNoKTsNCj4gKw0KPiArc3RhdGljIHN0cnVj
dCBwbGF0Zm9ybV9kcml2ZXIgamg3MTEwX3RpbWVyX2RyaXZlciA9IHsNCj4gKwkucHJvYmUgPSBq
aDcxMTBfdGltZXJfcHJvYmUsDQo+ICsJLmRyaXZlciA9IHsNCj4gKwkJLm5hbWUgPSAiamg3MTEw
LXRpbWVyIiwNCj4gKwkJLm9mX21hdGNoX3RhYmxlID0gamg3MTEwX3RpbWVyX21hdGNoLA0KPiAr
CX0sDQo+ICt9Ow0KPiArbW9kdWxlX3BsYXRmb3JtX2RyaXZlcihqaDcxMTBfdGltZXJfZHJpdmVy
KTsNCj4gKw0KPiArTU9EVUxFX0FVVEhPUigiWGluZ3l1IFd1IDx4aW5neXUud3VAc3RhcmZpdmV0
ZWNoLmNvbT4iKTsNCj4gK01PRFVMRV9ERVNDUklQVElPTigiU3RhckZpdmUgSkg3MTEwIHRpbWVy
IGRyaXZlciIpOw0KPiArTU9EVUxFX0xJQ0VOU0UoIkdQTCIpOw0KPiBkaWZmIC0tZ2l0IGEvaW5j
bHVkZS9saW51eC9jcHVob3RwbHVnLmggYi9pbmNsdWRlL2xpbnV4L2NwdWhvdHBsdWcuaCBpbmRl
eA0KPiAzNWU3OGRkYjJiMzcuLjRhOGI0ODdjMzI3ZSAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9s
aW51eC9jcHVob3RwbHVnLmgNCj4gKysrIGIvaW5jbHVkZS9saW51eC9jcHVob3RwbHVnLmgNCj4g
QEAgLTE3NSw2ICsxNzUsNyBAQCBlbnVtIGNwdWhwX3N0YXRlIHsNCj4gIAlDUFVIUF9BUF9DU0tZ
X1RJTUVSX1NUQVJUSU5HLA0KPiAgCUNQVUhQX0FQX1RJX0dQX1RJTUVSX1NUQVJUSU5HLA0KPiAg
CUNQVUhQX0FQX0hZUEVSVl9USU1FUl9TVEFSVElORywNCj4gKwlDUFVIUF9BUF9KSDcxMTBfVElN
RVJfU1RBUlRJTkcsDQo+ICAJLyogTXVzdCBiZSB0aGUgbGFzdCB0aW1lciBjYWxsYmFjayAqLw0K
PiAgCUNQVUhQX0FQX0RVTU1ZX1RJTUVSX1NUQVJUSU5HLA0KPiAgCUNQVUhQX0FQX0FSTV9YRU5f
U1RBUlRJTkcsDQo+IC0tDQo+IDIuMTcuMQ0KDQpIaSBEYW5pZWwgLyBUaG9tYXMNCg0KSSBoYXZl
IHN1Ym1pdHRlZCBuZXcgdmVyc2lvbiBvZiBwYXRjaCBmb3Igamg3MTEwIHRpbWVyIGRyaXZlci4g
Q291bGQgeW91IHBsZWFzZSBoZWxwIHRvIHJldmlldyBhbmQgZ2l2ZSB5b3VyIGNvbW1lbnRzPyAN
ClRoYW5rcyBhIGxvdCENCg0KQmVzdCByZWdhcmRzLA0KWml2Llh1DQo=

