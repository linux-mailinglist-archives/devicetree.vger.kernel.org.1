Return-Path: <devicetree+bounces-53231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CB81788BA97
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 07:40:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 13F9CB22BE7
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 06:40:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67ECA1272BB;
	Tue, 26 Mar 2024 06:40:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from CHN02-SH0-obe.outbound.protection.partner.outlook.cn (mail-sh0chn02on2097.outbound.protection.partner.outlook.cn [139.219.146.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09AD254BFF;
	Tue, 26 Mar 2024 06:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.219.146.97
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711435211; cv=fail; b=lzWHjzaA1aVLmwNycQ/psmoHtIp1gjNSjJMgkOFbhyAFH+BelYtP2PCIsjvfarlN2B5LfjeQbv1Tf4vtuBMcPj0xoDt8Nf9cgD3vOCOVM7RZ/sIeNo2qDvIS8itF7yoUZqn4DC0mz1wirdb62NnVqA38J1lf8MmB7tYG0t1JWFs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711435211; c=relaxed/simple;
	bh=6prWtj8fdoDjxAu3GH4lU1VfxJUuCv8LjtmH0XZaJ/c=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=MGv3X77J0VhoziEu3NXBi3wCTlPctVcOqdnUt5uO7Xc254js1Q4PEBKL5XU8WPERxWiQIBzxZ2WXO5in7nokWkokNuGIqYvv/AdLd5mN1W8pG+i1Aml5AAficO1e8ldHNq/mH//aixORzba9UPl9GHFzkUAdrJdPKAJEWvUnyz4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com; spf=pass smtp.mailfrom=starfivetech.com; arc=fail smtp.client-ip=139.219.146.97
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=starfivetech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CWt2MBTooGCF5QyO6SlLQxdrRUlnfM1ShTQKTZZNPtfW+QVWb//3CTBgi34fDdVR8fVICIKEHhH/6mzPw6szFmumRNxJQ0VqlTszdkCr7KwATe2H2M9u5/s6zHwycsw/ooAZ9j8GCvsUqcv0Cb2lVBvc+H//LOEIvxE/L9j6xWQ6i+Sgk2L7qGpqxAnnnKO9+HQbVDGmEgByznUA8XAtAuciqk2duNf/EYmeDUxVTU7qbrHTZMgneFldEbWe20nyDLIjHTDxBUSzW1dNfOAyaJeQzuVvrfaSsUKuf4QTLQzPwZ9U1DD2KjfOgD/jfZ+IAwJ4Qh0rYg9z//qYWX3ggA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6prWtj8fdoDjxAu3GH4lU1VfxJUuCv8LjtmH0XZaJ/c=;
 b=IWcpprJ4bvVOrjmD9Y3QUdQJax5sMFgeMhXS2ToI2P9RWz4FtOTFiE9ORy/xarzxQ55BLipj0FzxyNTp9S3HMe5KtxaJAanzcGp7W21ab9FGKFJi2BdsyYiteKJTeh8wzeVcbk3eztcfbJcnTV9D7Whlx/abpApyHS3wIhlhIOhsNpxHwGdEc4HnOdb8o7fzLtVwVSsFgzezWh9vy1AGE5Q+M6jiyxqAeQezsyfnoi6+IKAUiGxUiBN4ayqdImflMc7ied9ubvE9IXmWH10BxRR51A+wEUJBJOHYjN+17BylKdEUu7pGo7qvqwEFXsiI8L9eYsc8XXZpvpfPkBQzbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Received: from NTZPR01MB0956.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:8::10) by NTZPR01MB1036.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:8::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.26; Tue, 26 Mar
 2024 02:02:59 +0000
Received: from NTZPR01MB0956.CHNPR01.prod.partner.outlook.cn
 ([fe80::9a50:2c82:c5d4:2b3d]) by
 NTZPR01MB0956.CHNPR01.prod.partner.outlook.cn ([fe80::9a50:2c82:c5d4:2b3d%4])
 with mapi id 15.20.7409.028; Tue, 26 Mar 2024 02:02:59 +0000
From: Xingyu Wu <xingyu.wu@starfivetech.com>
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>, Liam Girdwood
	<lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Claudiu Beznea
	<Claudiu.Beznea@microchip.com>, Jaroslav Kysela <perex@perex.cz>, Takashi
 Iwai <tiwai@suse.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor.dooley@microchip.com>
CC: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
	"linux-sound@vger.kernel.org" <linux-sound@vger.kernel.org>
Subject:
 =?utf-8?B?5Zue5aSNOiBbUEFUQ0ggdjIgMi8yXSBBU29DOiBjZG5zOiBBZGQgZHJpdmVy?=
 =?utf-8?Q?s_of_Cadence_Multi-Channel_I2S_Controller?=
Thread-Topic: [PATCH v2 2/2] ASoC: cdns: Add drivers of Cadence Multi-Channel
 I2S Controller
Thread-Index: AQHaeqVhb5UxutBmeUyJ/qlePUaJGrFAuWEAgAJZ7cA=
Date: Tue, 26 Mar 2024 02:02:59 +0000
Message-ID:
 <NTZPR01MB0956BFADB4B3DA507D938F669F35A@NTZPR01MB0956.CHNPR01.prod.partner.outlook.cn>
References: <20240320090239.168743-1-xingyu.wu@starfivetech.com>
 <20240320090239.168743-3-xingyu.wu@starfivetech.com>
 <1d0399d2-684f-490e-8711-f636e987a0b8@linux.intel.com>
In-Reply-To: <1d0399d2-684f-490e-8711-f636e987a0b8@linux.intel.com>
Accept-Language: en-US
Content-Language: zh-CN
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: NTZPR01MB0956:EE_|NTZPR01MB1036:EE_
x-ms-office365-filtering-correlation-id: 603dfe77-fa5c-4293-309c-08dc4d38dc6f
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 E+JrlniR+qSZhpdlhOLqZ4zBY+3wCFWZMRhBBsZGK4f6UWUrJkt0o8jz1EvoKUdgRqVUTINjFbakjOpeEefr2/26cSrg8YPvuOx11j7kw6wnxB0YcqVM58lMB4PB7tNRQYwVJPOVFoXxjtxpQDMUz23v2CKjXsZSGP2HAD1P0tg3DOGce2am1b426G7hM8xQEBZeJVFU3QLG+ARudkFCcciMz0gPB+69HY5u+PuV7Pm5Z0zbVZajLsleTcbOZOhRnyfsv+/ZkGxbGVqHdstcLFdMKjV7t0uMqBTs7DbHcJdivw/BoyTQpxS/RY9HhK8S4wFseOEl1SNAA/RJfo5c6hJLc+Jb8zG0pN9rw/u3PsZa1kqzQCWPlnHtjwi96WO55KHblOK4bwq2HKJCAaLakr4xKZbnRGm3ovyFtUubbqyLqkBEdXK6aj3mTrVsA8Bhnn2dAj/TbD7J+93Bly1Bojap+ZJ/klOWp8LghpYql6b9f2KetMuegbsfpaFaZMbgm3+Lgm4zOUsV7eGTVGTT9MAIdm2wZMjrn30urHy9g40ki4T4lNIVaL1hnJ9IMqwwuFzMnyPDAEx/YZNKps8ZWnDtYtVneVKuC8UMN/0R+YLU4qnL+1EV1mD+xX4BDv47
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:zh-cn;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:NTZPR01MB0956.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230031)(366007)(41320700004)(7416005)(1800799015)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?SmtQbFZHcU4wcTduQzJoRkt4OW5lcUZNQ3V6emFQa0k1dG4yeG1xcEgxaEl5?=
 =?utf-8?B?OGZYNUh5M284Wmxjdk5CN0pRVE5MaUN1NDBialBBY1VWZ2Z1SmtReG5jSmF4?=
 =?utf-8?B?dEV5SStWVkErYXBPeURJTytNZmpCRVdTcXRYMWdaQUV1MHdueXpRaHRMRnFu?=
 =?utf-8?B?QWVVUUo4dHQwWmhwUm9rYnF0K0grdlhqZmN4STRFT3I1K0tyQ0JVdVpjcVVm?=
 =?utf-8?B?VFRueG02bnJOVzd2V0tNOUpmNWIxMDJyTlduU0JNZGVZd3I4V1R5N1FYTVlR?=
 =?utf-8?B?VXdPbGdHVGQ2c1pWemJLTTQyU1M1TTFDaWdITVF0UWNLaFV2UVpBYmo0dS9E?=
 =?utf-8?B?eTF4V1gvTGJ1bEtiN1hDQlpxZVVjcTZDNU5UUWdWSEZhYnU2eFVnS004SXBX?=
 =?utf-8?B?U0FhNXhVRUpaVGRPZTVXYkplOE0wOXJKWkswUGJmdE1uMjhLdTB6aUR3TTVj?=
 =?utf-8?B?aE16dVhXVHRjektVTEZ5MmQ4SVIyVzA1NFU1TWRXNm9jRkJpN3p3a3k5dUEr?=
 =?utf-8?B?RXNubUV2VlAvT09VNmZncFVWam5qdzNjWngwV1N1YnpKOXF4UXpHMU5sT1hp?=
 =?utf-8?B?SEZVQklUdVRBWGtaTWZBZXNENG0zMzYydnptS2lPdWtNdU81WFVwMWR0NTVx?=
 =?utf-8?B?U1NNejF6bG5LY09TZkdHY0dpK3FPWE1nTk94dmlmbkVRS2hYb0FvTTVXOUNz?=
 =?utf-8?B?dmUwb2xjQklvRTYyTGpQdEd5SW0wejRkQWJaQkFMRElRa2hUWWJ3M2pCOExB?=
 =?utf-8?B?QWpXNUxnN21RYWQzUW5rVWk3ME9lNUxKTGxoZEIxN01KU3Jad1VnZDVUZUk0?=
 =?utf-8?B?WlljWjlKajBTandFdmw3R0NYbkhLNXdaTFNJbFpqOWR2bjQ2cURUQWtmcjh4?=
 =?utf-8?B?R0dSd2dBb2t5bkxYeEVFdnpoaVBSZUFwVGhCUnNRUlhSMnBWRksyUGZKeHE1?=
 =?utf-8?B?NTc0d1NCVUFSbnRUSXl6aURBVDN2aWJGN1drR2NuL0kxaG9oUWV6UzdRa0lL?=
 =?utf-8?B?eG9FWEF4SWg5RS93Y2cvNm9mQlQzc3M0dkRyNVpkZUhQMzFmdE95czRrZUxR?=
 =?utf-8?B?cGUzNThPWSt0Y1hsM1llY2NDR0hXdVhDSEQrU2g1ZFczRkhkMGFmdm40UllK?=
 =?utf-8?B?TXBmTFJDVE95WnNWdVBqeXpaNHZEK1IrTVJqdGtqRmVKTlBPUVZZd3B4Y2Fs?=
 =?utf-8?B?UHJ3NjkzZTJnUlRzdzhVRGlpckJ5YjZWYkE0Z2MycU04OVpwcTdiZG9UbGM2?=
 =?utf-8?B?N1dBOVQ3eE5SWXpXYkRBb29MaXViOWxXWE5DTTlsZ0ZjREx4dnR4dWw0ZzlC?=
 =?utf-8?B?WFd6R3JOTmxWRTRqbFJSL3RYcDJrSGVTZUxkZWdRSHVQdmlHUElsWGFXRGtF?=
 =?utf-8?B?YnFRamFDN214VXIwaGlaQzN1bGVzVW55eWpZQS9SK2Rla0pzWVhZQnNtSi9p?=
 =?utf-8?B?MlZFeTNWUEpRWnJhazJ3L21vTWZyNnc4enQ5Qjc1ZEY2akpZOEh1cmxjL0ZE?=
 =?utf-8?B?bUtKSENTKzFKSG44Q1g1ZmlpS0lxbVdnT1ByeXJMSSthbjJNb3E4NmVpc3ZY?=
 =?utf-8?B?MmN6b0xpTHlhaXIyaXd0dnF3RUVpQkRVL24zL3dUNlRvMmg4OFNRUXJPNjkv?=
 =?utf-8?B?dXhDNTVCd1JTVU1KVld0ZEpwV3FoRDE0dDMyYmFzMVlQbmZSNFZQQU8zOTl6?=
 =?utf-8?B?dGpwMUtSVlBSQkhnbzZCcy9MT3BQeVpxdzRxcnE3SkxBeDZGRXJhR3pyU2Y5?=
 =?utf-8?B?eTFodmRQOFFsK3Vyb3ZnMkt6a3JkMzNjWVN2aGh6T1hRRjg5VzM5Q0pBVjlk?=
 =?utf-8?B?R0xOV1JMQUc4RkJVZllXVVcvT2h3L1IraUF1OGhhbGF0TTRtby92Z3N5aWVC?=
 =?utf-8?B?WlF5WEVuMmV3NjhCbVVMLytER2ZDbG1hRXVLVFpxZG9DN1NrMHllRjByL3dk?=
 =?utf-8?B?Y2c3bU5RT0lHaGVxcEEwM0dvaWorclJhQTFrZE4ySWQrbU9SV2JhK3U1aW1F?=
 =?utf-8?B?cU9VVUlrYWZZc1BzeHBuTGg5Uk5tQ0pmclF0YWVlWDdFTzRNWGFMa0pGZUFJ?=
 =?utf-8?B?UWs1UE9jNC9McEt2Njgxb2FEWjVZaWprS1J5cEpOQTBGUUVGQWZzZXVDRWZG?=
 =?utf-8?Q?D1Sa1ddKBfcvzrRTkIH5lQMbR?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: starfivetech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: NTZPR01MB0956.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-Network-Message-Id: 603dfe77-fa5c-4293-309c-08dc4d38dc6f
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2024 02:02:59.1230
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ON5k2VsjucxyHGc++9gBEV0CSWhAUpUGH+UFlwN0Qn6Jt3rYIj8AihyhVsAwxqpcJdsXTE5i0fNGMNl2M+O13RIfmUDrmMNzz81fZQ8l9Ig=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: NTZPR01MB1036

PiA+IGRpZmYgLS1naXQgYS9zb3VuZC9zb2MvY2Rucy9LY29uZmlnIGIvc291bmQvc29jL2NkbnMv
S2NvbmZpZyBuZXcgZmlsZQ0KPiA+IG1vZGUgMTAwNjQ0IGluZGV4IDAwMDAwMDAwMDAwMC4uNjFl
ZjcxOGViZmU3DQo+ID4gLS0tIC9kZXYvbnVsbA0KPiA+ICsrKyBiL3NvdW5kL3NvYy9jZG5zL0tj
b25maWcNCj4gPiBAQCAtMCwwICsxLDE4IEBADQo+ID4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IEdQTC0yLjAtb25seSBjb25maWcgU05EX1NPQ19DQURFTkNFX0kyU19NQw0KPiA+ICsgICAg
ICAgIHRyaXN0YXRlICJDYWRlbmNlIEkyUyBNdWx0aS1DaGFubmVsIENvbnRyb2xsZXIgRGV2aWNl
IERyaXZlciINCj4gPiArCWRlcGVuZHMgb24gSEFWRV9DTEsNCj4gDQo+IGluZGVudGF0aW9uIGlz
IG9mZg0KDQpXaWxsIGZpeC4gVGhhbmtzLg0KDQo+IA0KPiA+ICsgICAgICAgIHNlbGVjdCBTTkRf
U09DX0dFTkVSSUNfRE1BRU5HSU5FX1BDTQ0KPiA+ICsgICAgICAgIGhlbHANCj4gPiArICAgICAg
ICAgU2F5IFkgb3IgTSBpZiB5b3Ugd2FudCB0byBhZGQgc3VwcG9ydCBmb3IgSTJTIGRyaXZlciBm
b3IgdGhlDQo+ID4gKyAgICAgICAgIENhZGVuY2UgTXVsdGktQ2hhbm5lbCBJMlMgQ29udHJvbGxl
ciBkZXZpY2UuIFRoZSBkZXZpY2Ugc3VwcG9ydHMNCj4gPiArICAgICAgICAgdXAgdG8gYSBtYXhp
bXVtIG9mIDggY2hhbm5lbHMgZWFjaCBmb3IgcGxheSBhbmQgcmVjb3JkLg0KPiANCj4gPiArLy8g
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjANCj4gPiArLyoNCj4gPiArICogQ2FkZW5j
ZSBNdWx0aS1DaGFubmVsIEkyUyBjb250cm9sbGVyIFBDTSBkcml2ZXINCj4gPiArICoNCj4gPiAr
ICogQ29weXJpZ2h0IChjKSAyMDIyLTIwMjMgU3RhckZpdmUgVGVjaG5vbG9neSBDby4sIEx0ZC4N
Cj4gDQo+IDIwMjQ/DQoNCldpbGwgZml4Lg0KDQo+IA0KPiA+ICsgKi8NCj4gPiArDQo+ID4gKyNp
bmNsdWRlIDxsaW51eC9pby5oPg0KPiA+ICsjaW5jbHVkZSA8bGludXgvcmN1cGRhdGUuaD4NCj4g
PiArI2luY2x1ZGUgPHNvdW5kL3BjbV9wYXJhbXMuaD4NCj4gPiArI2luY2x1ZGUgImNkbnMtaTJz
LW1jLmgiDQo+ID4gKw0KPiA+ICsjZGVmaW5lIFBFUklPRF9CWVRFU19NSU4JNDA5Ng0KPiA+ICsj
ZGVmaW5lIEJVRkZFUl9CWVRFU19NQVgJKDMgKiAyICogOCAqIFBFUklPRF9CWVRFU19NSU4pDQo+
IA0KPiB3aGF0IGFyZSB0aG9zZSAzIGFuZCAyIGFuZCA4IGZhY3RvcnM/IGEgY29tbWVudCBvciB0
aGUgdXNlIG9mIG1hY3JvcyB3b3VsZCBoZWxwLg0KDQpXaWxsIGZpeC4NCg0KPiANCj4gPiArI2Rl
ZmluZSBQRVJJT0RTX01JTgkJMg0KPiA+ICsNCj4gPiArc3RhdGljIHVuc2lnbmVkIGludCBjZG5z
X2kyc19wY21fdHgoc3RydWN0IGNkbnNfaTJzX2RldiAqZGV2LA0KPiA+ICsJCQkJICAgIHN0cnVj
dCBzbmRfcGNtX3J1bnRpbWUgKnJ1bnRpbWUsDQo+ID4gKwkJCQkgICAgdW5zaWduZWQgaW50IHR4
X3B0ciwgYm9vbCAqcGVyaW9kX2VsYXBzZWQsDQo+ID4gKwkJCQkgICAgc25kX3BjbV9mb3JtYXRf
dCBmb3JtYXQpDQo+ID4gK3sNCj4gPiArCXVuc2lnbmVkIGludCBwZXJpb2RfcG9zID0gdHhfcHRy
ICUgcnVudGltZS0+cGVyaW9kX3NpemU7DQo+IA0KPiBub3QgZm9sbG93aW5nIHdoYXQgdGhlIG1v
ZHVsbyBpcyBmb3IsIHVzdWFsbHkgaXQncyBtb2R1bG8gdGhlIGJ1ZmZlciBzaXplPw0KDQpUaGlz
IGlzIHRvIHNlZSBpZiB0aGUgbmV3IGRhdGEgaXMgZGl2aXNpYmxlIGJ5IHBlcmlvZF9zaXplIGFu
ZCB0byBkZXRlcm1pbmUgd2hldGhlcg0KaXQgaXMgZW5vdWdoIGZvciBhIHBlcmlvZF9zaXplIGlu
IHRoZSBsYXRlciBsb29wLg0KDQo+IA0KPiA+ICsJY29uc3QgdTE2ICgqcDE2KVsyXSA9ICh2b2lk
ICopcnVudGltZS0+ZG1hX2FyZWE7DQo+ID4gKwljb25zdCB1MzIgKCpwMzIpWzJdID0gKHZvaWQg
KilydW50aW1lLT5kbWFfYXJlYTsNCj4gPiArCXUzMiBkYXRhWzJdOw0KPiA+ICsJaW50IGk7DQo+
ID4gKw0KPiA+ICsJZm9yIChpID0gMDsgaSA8IENETlNfSTJTX0ZJRk9fREVQVEg7IGkrKykgew0K
PiA+ICsJCWlmIChmb3JtYXQgPT0gU05EUlZfUENNX0ZPUk1BVF9TMTZfTEUpIHsNCj4gPiArCQkJ
ZGF0YVswXSA9IHAxNlt0eF9wdHJdWzBdOw0KPiA+ICsJCQlkYXRhWzFdID0gcDE2W3R4X3B0cl1b
MV07DQo+ID4gKwkJfSBlbHNlIGlmIChmb3JtYXQgPT0gU05EUlZfUENNX0ZPUk1BVF9TMzJfTEUp
IHsNCj4gPiArCQkJZGF0YVswXSA9IHAzMlt0eF9wdHJdWzBdOw0KPiA+ICsJCQlkYXRhWzFdID0g
cDMyW3R4X3B0cl1bMV07DQo+ID4gKwkJfQ0KPiANCj4gd2hhdCBhYm91dCBvdGhlciBmb3JtYXRz
IGltcGxpZWQgYnkgdGhlIHVzZSBvZiAnZWxzZSBpZicgPw0KDQpJIHRoaW5rIEkganVzdCBzdXBw
b3J0IFMxNl9MRSBhbmQgUzMyX0xFIGluIHRoZSBzbmRfc29jX2RhaV9kcml2ZXIgc3RydWN0LA0K
YW5kIEFMU0EgZGV2aWNlIHdpbGwgZmlsdGVyIG91dCBvdGhlciBmb3JtYXRzIGZvciBtZSwgc28g
SSBkaWRuJ3QgYWRkIHRoZW0uDQpEbyBJIHN0aWxsIGhhdmUgdG8gYWRkIHRoZSBvdGhlciBjYXNl
Pw0KCQ0KPiA+ICsNCj4gPiArCQlpb3dyaXRlMzIoZGF0YVswXSwgZGV2LT5iYXNlICsgQ0ROU19G
SUZPX01FTSk7DQo+ID4gKwkJaW93cml0ZTMyKGRhdGFbMV0sIGRldi0+YmFzZSArIENETlNfRklG
T19NRU0pOw0KPiA+ICsJCXBlcmlvZF9wb3MrKzsNCj4gPiArCQlpZiAoKyt0eF9wdHIgPj0gcnVu
dGltZS0+YnVmZmVyX3NpemUpDQo+ID4gKwkJCXR4X3B0ciA9IDA7DQo+ID4gKwl9DQo+ID4gKw0K
PiA+ICsJKnBlcmlvZF9lbGFwc2VkID0gcGVyaW9kX3BvcyA+PSBydW50aW1lLT5wZXJpb2Rfc2l6
ZTsNCj4gPiArCXJldHVybiB0eF9wdHI7DQo+ID4gK30NCj4gDQo+ID4gK3N0YXRpYyB2b2lkIGNk
bnNfaTJzX3BjbV90cmFuc2ZlcihzdHJ1Y3QgY2Ruc19pMnNfZGV2ICpkZXYsIGJvb2wNCj4gPiAr
cHVzaCkNCj4gDQo+ICdwdXNoJyByZWFsbHkgbWVhbnMgJ3R4JyBzbyB3aGF0IG5vdCB1c2UgYSBz
aW1wbGVyIG5hbWluZz8NCg0KV2lsbCBmaXguDQoNCj4gDQo+ID4gK3sNCj4gPiArCXN0cnVjdCBz
bmRfcGNtX3N1YnN0cmVhbSAqc3Vic3RyZWFtOw0KPiA+ICsJYm9vbCBhY3RpdmUsIHBlcmlvZF9l
bGFwc2VkOw0KPiA+ICsNCj4gPiArCXJjdV9yZWFkX2xvY2soKTsNCj4gPiArCWlmIChwdXNoKQ0K
PiA+ICsJCXN1YnN0cmVhbSA9IHJjdV9kZXJlZmVyZW5jZShkZXYtPnR4X3N1YnN0cmVhbSk7DQo+
ID4gKwllbHNlDQo+ID4gKwkJc3Vic3RyZWFtID0gcmN1X2RlcmVmZXJlbmNlKGRldi0+cnhfc3Vi
c3RyZWFtKTsNCj4gPiArDQo+ID4gKwlhY3RpdmUgPSBzdWJzdHJlYW0gJiYgc25kX3BjbV9ydW5u
aW5nKHN1YnN0cmVhbSk7DQo+ID4gKwlpZiAoYWN0aXZlKSB7DQo+ID4gKwkJdW5zaWduZWQgaW50
IHB0cjsNCj4gPiArCQl1bnNpZ25lZCBpbnQgbmV3X3B0cjsNCj4gPiArDQo+ID4gKwkJaWYgKHB1
c2gpIHsNCj4gPiArCQkJcHRyID0gUkVBRF9PTkNFKGRldi0+dHhfcHRyKTsNCj4gPiArCQkJbmV3
X3B0ciA9IGRldi0+dHhfZm4oZGV2LCBzdWJzdHJlYW0tPnJ1bnRpbWUsIHB0ciwNCj4gPiArCQkJ
CQkgICAgICZwZXJpb2RfZWxhcHNlZCwgZGV2LT5mb3JtYXQpOw0KPiA+ICsJCQljbXB4Y2hnKCZk
ZXYtPnR4X3B0ciwgcHRyLCBuZXdfcHRyKTsNCj4gPiArCQl9IGVsc2Ugew0KPiA+ICsJCQlwdHIg
PSBSRUFEX09OQ0UoZGV2LT5yeF9wdHIpOw0KPiA+ICsJCQluZXdfcHRyID0gZGV2LT5yeF9mbihk
ZXYsIHN1YnN0cmVhbS0+cnVudGltZSwgcHRyLA0KPiA+ICsJCQkJCSAgICAgJnBlcmlvZF9lbGFw
c2VkLCBkZXYtPmZvcm1hdCk7DQo+ID4gKwkJCWNtcHhjaGcoJmRldi0+cnhfcHRyLCBwdHIsIG5l
d19wdHIpOw0KPiA+ICsJCX0NCj4gPiArDQo+ID4gKwkJaWYgKHBlcmlvZF9lbGFwc2VkKQ0KPiA+
ICsJCQlzbmRfcGNtX3BlcmlvZF9lbGFwc2VkKHN1YnN0cmVhbSk7DQo+ID4gKwl9DQo+ID4gKwly
Y3VfcmVhZF91bmxvY2soKTsNCj4gPiArfQ0KPiA+ICsNCj4gPiArdm9pZCBjZG5zX2kyc19wY21f
cHVzaF90eChzdHJ1Y3QgY2Ruc19pMnNfZGV2ICpkZXYpIHsNCj4gPiArCWNkbnNfaTJzX3BjbV90
cmFuc2ZlcihkZXYsIHRydWUpOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICt2b2lkIGNkbnNfaTJzX3Bj
bV9wb3Bfcngoc3RydWN0IGNkbnNfaTJzX2RldiAqZGV2KSB7DQo+ID4gKwljZG5zX2kyc19wY21f
dHJhbnNmZXIoZGV2LCBmYWxzZSk7DQo+ID4gK30NCj4gPiArDQo+ID4gK3N0YXRpYyBpbnQgY2Ru
c19pMnNfcGNtX29wZW4oc3RydWN0IHNuZF9zb2NfY29tcG9uZW50ICpjb21wb25lbnQsDQo+ID4g
KwkJCSAgICAgc3RydWN0IHNuZF9wY21fc3Vic3RyZWFtICpzdWJzdHJlYW0pIHsNCj4gPiArCXN0
cnVjdCBzbmRfcGNtX3J1bnRpbWUgKnJ1bnRpbWUgPSBzdWJzdHJlYW0tPnJ1bnRpbWU7DQo+ID4g
KwlzdHJ1Y3Qgc25kX3NvY19wY21fcnVudGltZSAqcnRkID0gc25kX3NvY19zdWJzdHJlYW1fdG9f
cnRkKHN1YnN0cmVhbSk7DQo+ID4gKwlzdHJ1Y3QgY2Ruc19pMnNfZGV2ICpkZXYgPQ0KPiA+ICtz
bmRfc29jX2RhaV9nZXRfZHJ2ZGF0YShzbmRfc29jX3J0ZF90b19jcHUocnRkLCAwKSk7DQo+ID4g
Kw0KPiA+ICsJc25kX3NvY19zZXRfcnVudGltZV9od3BhcmFtcyhzdWJzdHJlYW0sICZjZG5zX2ky
c19wY21faGFyZHdhcmUpOw0KPiA+ICsJc25kX3BjbV9od19jb25zdHJhaW50X2ludGVnZXIocnVu
dGltZSwNCj4gU05EUlZfUENNX0hXX1BBUkFNX1BFUklPRFMpOw0KPiA+ICsJcnVudGltZS0+cHJp
dmF0ZV9kYXRhID0gZGV2Ow0KPiA+ICsNCj4gPiArCXJldHVybiAwOw0KPiA+ICt9DQo+ID4gKw0K
PiA+ICtzdGF0aWMgaW50IGNkbnNfaTJzX3BjbV9jbG9zZShzdHJ1Y3Qgc25kX3NvY19jb21wb25l
bnQgKmNvbXBvbmVudCwNCj4gPiArCQkJICAgICAgc3RydWN0IHNuZF9wY21fc3Vic3RyZWFtICpz
dWJzdHJlYW0pIHsNCj4gPiArCXN5bmNocm9uaXplX3JjdSgpOw0KPiA+ICsJcmV0dXJuIDA7DQo+
IA0KPiBydW50aW1lLT5wcml2YXRlX2RhdGEgPSBOVUxMPw0KDQpXaWxsIGFkZC4NCg0KPiANCj4g
PiArfQ0KPiA+ICsNCj4gPiArc3RhdGljIGludCBjZG5zX2kyc19wY21faHdfcGFyYW1zKHN0cnVj
dCBzbmRfc29jX2NvbXBvbmVudCAqY29tcG9uZW50LA0KPiA+ICsJCQkJICBzdHJ1Y3Qgc25kX3Bj
bV9zdWJzdHJlYW0gKnN1YnN0cmVhbSwNCj4gPiArCQkJCSAgc3RydWN0IHNuZF9wY21faHdfcGFy
YW1zICpod19wYXJhbXMpIHsNCj4gPiArCXN0cnVjdCBzbmRfcGNtX3J1bnRpbWUgKnJ1bnRpbWUg
PSBzdWJzdHJlYW0tPnJ1bnRpbWU7DQo+ID4gKwlzdHJ1Y3QgY2Ruc19pMnNfZGV2ICpkZXYgPSBy
dW50aW1lLT5wcml2YXRlX2RhdGE7DQo+ID4gKw0KPiA+ICsJZGV2LT5mb3JtYXQgPSBwYXJhbXNf
Zm9ybWF0KGh3X3BhcmFtcyk7DQo+IA0KPiBkb24ndCB5b3UgbmVlZCB0byB0ZXN0IGlmIHRoZSBm
b3JtYXRzIGFyZSBzdXBwb3J0ZWQ/DQoNCldpbGwgYWRkIHRoZSB0ZXN0Lg0KDQo+IA0KPiA+ICsJ
ZGV2LT50eF9mbiA9IGNkbnNfaTJzX3BjbV90eDsNCj4gPiArCWRldi0+cnhfZm4gPSBjZG5zX2ky
c19wY21fcng7DQo+ID4gKw0KPiA+ICsJcmV0dXJuIDA7DQo+ID4gK30NCj4gDQo+ID4gK3N0YXRp
YyBpbnQgY2Ruc19pMnNfc3RhcnQoc3RydWN0IGNkbnNfaTJzX2RldiAqaTJzLA0KPiA+ICsJCQkg
IHN0cnVjdCBzbmRfcGNtX3N1YnN0cmVhbSAqc3Vic3RyZWFtKSB7DQo+ID4gKwlzdHJ1Y3Qgc25k
X3BjbV9ydW50aW1lICpydW50aW1lID0gc3Vic3RyZWFtLT5ydW50aW1lOw0KPiA+ICsJdW5zaWdu
ZWQgY2hhciBtYXhfY2ggPSBpMnMtPm1heF9jaGFubmVsczsNCj4gPiArCXVuc2lnbmVkIGNoYXIg
aTJzX2NoOw0KPiA+ICsJaW50IGk7DQo+ID4gKw0KPiA+ICsJLyogRWFjaCBjaGFubmVsIGlzIHN0
ZXJlbyAqLw0KPiA+ICsJaTJzX2NoID0gcnVudGltZS0+Y2hhbm5lbHMgLyAyOw0KPiA+ICsJaWYg
KHN1YnN0cmVhbS0+c3RyZWFtID09IFNORFJWX1BDTV9TVFJFQU1fQ0FQVFVSRSkgew0KPiA+ICsJ
CWlmICgoaTJzX2NoICsgaTJzLT50eF91c2luZ19jaGFubmVscykgPiBtYXhfY2gpIHsNCj4gPiAr
CQkJZGV2X2VycihpMnMtPmRldiwNCj4gPiArCQkJCSJNYXggJWQgY2hhbm5lbHM6IHVzaW5nICVk
IGZvciBUWCwgZG8gbm90IHN1cHBvcnQgJWQgZm9yIFJYXG4iLA0KPiA+ICsJCQkJbWF4X2NoLCBp
MnMtPnR4X3VzaW5nX2NoYW5uZWxzLCBpMnNfY2gpOw0KPiA+ICsJCQlyZXR1cm4gLUVOT01FTTsN
Cj4gDQo+IEVOT01FTSBpcyBmb3IgbWVtb3J5IGFsbG9jYXRpb24sIHRoYXQgbG9va3MgbW9yZSBs
aWtlIEVJTlZBTD8NCg0KV2lsbCBmaXguDQoNCj4gDQo+ID4gKwkJfQ0KPiA+ICsNCj4gPiArCQlp
MnMtPnJ4X3VzaW5nX2NoYW5uZWxzID0gaTJzX2NoOw0KPiA+ICsJCS8qIEVuYWJsZSBjaGFubmVs
cyBmcm9tIDAgdG8gJ21heF9jaCcgYXMgdHggKi8NCj4gPiArCQlmb3IgKGkgPSAwOyBpIDwgaTJz
X2NoOyBpKyspDQo+ID4gKwkJCWNkbnNfaTJzX2NoYW5uZWxfc3RhcnQoaTJzLCBDRE5TX0kyU19D
TV8wIDw8IGksDQo+ID4gKwkJCQkJICAgICAgIENETlNfSTJTX1RDX1JFQ0VJVkVSKTsNCj4gPiAr
DQo+ID4gKwl9IGVsc2Ugew0KPiA+ICsJCWlmICgoaTJzX2NoICsgaTJzLT5yeF91c2luZ19jaGFu
bmVscykgPiBtYXhfY2gpIHsNCj4gPiArCQkJZGV2X2VycihpMnMtPmRldiwNCj4gPiArCQkJCSJN
YXggJWQgY2hhbm5lbHM6IHVzaW5nICVkIGZvciBSWCwgZG8gbm90IHN1cHBvcnQgJWQgZm9yIFRY
XG4iLA0KPiA+ICsJCQkJbWF4X2NoLCBpMnMtPnJ4X3VzaW5nX2NoYW5uZWxzLCBpMnNfY2gpOw0K
PiA+ICsJCQlyZXR1cm4gLUVOT01FTTsNCj4gPiArCQl9DQo+ID4gKw0KPiA+ICsJCWkycy0+dHhf
dXNpbmdfY2hhbm5lbHMgPSBpMnNfY2g7DQo+ID4gKwkJLyogRW5hYmxlIGNoYW5uZWxzIGZyb20g
J21heF9jaCcgdG8gMCBhcyByeCAqLw0KPiA+ICsJCWZvciAoaSA9IChtYXhfY2ggLSAxKTsgaSA+
IChtYXhfY2ggLSBpMnNfY2ggLSAxKTsgaS0tKSB7DQo+ID4gKwkJCWlmIChpIDwgMCkNCj4gPiAr
CQkJCXJldHVybiAtRUlOVkFMOw0KPiANCj4gdGhhdCBpcyBhIHRlc3QgeW91IGNhbiBwcm9iYWJs
eSBmYWN0b3Igb3V0IG9mIHRoZSBsb29wIGJlZm9yZSBkb2luZyBhbnl0aGluZyB0aGF0J3MNCj4g
aW5jb25zaXN0ZW50Lg0KDQpPSywgSSB3aWxsIG1vdmUgaXQgb3V0IG9mIHRoZSBsb29wLiBUaGFu
a3MuDQoNCj4gDQo+ID4gKw0KPiA+ICsJCQljZG5zX2kyc19jaGFubmVsX3N0YXJ0KGkycywgQ0RO
U19JMlNfQ01fMCA8PCBpLA0KPiA+ICsJCQkJCSAgICAgICBDRE5TX0kyU19UQ19UUkFOU01JVFRF
Uik7DQo+ID4gKwkJfQ0KPiA+ICsJfQ0KPiA+ICsJY2Ruc19pMnNfZW5hYmxlX2Nsb2NrKGkycywg
c3Vic3RyZWFtLT5zdHJlYW0pOw0KPiA+ICsNCj4gPiArCWlmIChpMnMtPmlycSA+PSAwKQ0KPiA+
ICsJCWNkbnNfaTJzX3NldF9hbGxfaXJxX21hc2soaTJzLCBmYWxzZSk7DQo+ID4gKw0KPiA+ICsJ
Y2Ruc19pMnNfY2xlYXJfaW50KGkycyk7DQo+ID4gKw0KPiA+ICsJcmV0dXJuIDA7DQo+ID4gK30N
Cj4gPiArDQo+ID4gK3N0YXRpYyBpbnQgY2Ruc19pMnNfc3RvcChzdHJ1Y3QgY2Ruc19pMnNfZGV2
ICppMnMsDQo+ID4gKwkJCSBzdHJ1Y3Qgc25kX3BjbV9zdWJzdHJlYW0gKnN1YnN0cmVhbSkgew0K
PiA+ICsJdW5zaWduZWQgY2hhciBpMnNfY2g7DQo+ID4gKwlpbnQgaTsNCj4gPiArDQo+ID4gKwlj
ZG5zX2kyc19jbGVhcl9pbnQoaTJzKTsNCj4gPiArDQo+ID4gKwlpZiAoc3Vic3RyZWFtLT5zdHJl
YW0gPT0gU05EUlZfUENNX1NUUkVBTV9DQVBUVVJFKSB7DQo+ID4gKwkJaTJzX2NoID0gaTJzLT5y
eF91c2luZ19jaGFubmVsczsNCj4gPiArCQlmb3IgKGkgPSAwOyBpIDwgaTJzX2NoOyBpKyspDQo+
ID4gKwkJCWNkbnNfaTJzX2NoYW5uZWxfc3RvcChpMnMsIChDRE5TX0kyU19DTV8wIDw8IGkpKTsN
Cj4gPiArDQo+ID4gKwkJaTJzLT5yeF91c2luZ19jaGFubmVscyA9IDA7DQo+ID4gKwl9IGVsc2Ug
ew0KPiA+ICsJCXVuc2lnbmVkIGNoYXIgbWF4X2NoID0gaTJzLT5tYXhfY2hhbm5lbHM7DQo+ID4g
Kw0KPiA+ICsJCWkyc19jaCA9IGkycy0+dHhfdXNpbmdfY2hhbm5lbHM7DQo+ID4gKwkJZm9yIChp
ID0gKG1heF9jaCAtIDEpOyBpID4gKG1heF9jaCAtIGkyc19jaCAtIDEpOyBpLS0pIHsNCj4gPiAr
CQkJaWYgKGkgPCAwKQ0KPiA+ICsJCQkJcmV0dXJuIC1FSU5WQUw7DQo+IA0KPiBzYW1lIGhlcmUs
IGZpcnN0IHRlc3QgaWYgdGhlIGNoYW5uZWwgbWFwcyBhcmUgdmFsaWQsIHRoZW4gZG8gdGhlIGxv
b3A/DQoNCldpbGwgZml4Lg0KDQo+IA0KPiA+ICsNCj4gPiArCQkJY2Ruc19pMnNfY2hhbm5lbF9z
dG9wKGkycywgKENETlNfSTJTX0NNXzAgPDwgaSkpOw0KPiA+ICsJCX0NCj4gPiArDQo+ID4gKwkJ
aTJzLT50eF91c2luZ19jaGFubmVscyA9IDA7DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICsJaWYgKGky
cy0+aXJxID49IDAgJiYgIWkycy0+dHhfdXNpbmdfY2hhbm5lbHMgJiYgIWkycy0+cnhfdXNpbmdf
Y2hhbm5lbHMpDQo+ID4gKwkJY2Ruc19pMnNfc2V0X2FsbF9pcnFfbWFzayhpMnMsIHRydWUpOw0K
PiA+ICsNCj4gPiArCXJldHVybiAwOw0KPiA+ICt9DQo+IA0KPiA+ICtzdGF0aWMgaW50IGNkbnNf
aTJzX3NldF9mbXQoc3RydWN0IHNuZF9zb2NfZGFpICpjcHVfZGFpLA0KPiA+ICsJCQkgICAgdW5z
aWduZWQgaW50IGZtdCkNCj4gPiArew0KPiA+ICsJc3RydWN0IGNkbnNfaTJzX2RldiAqaTJzID0g
c25kX3NvY19kYWlfZ2V0X2RydmRhdGEoY3B1X2RhaSk7DQo+ID4gKwlpbnQgcmV0ID0gMDsNCj4g
PiArDQo+ID4gKwlzd2l0Y2ggKGZtdCAmIFNORF9TT0NfREFJRk1UX01BU1RFUl9NQVNLKSB7DQo+
ID4gKwljYXNlIFNORF9TT0NfREFJRk1UX0NCTV9DRk06DQo+ID4gKwkJaTJzLT50eF9zeW5jX21z
X21vZGUgPSBDRE5TX0kyU19NQVNURVJfTU9ERTsNCj4gPiArCQlpMnMtPnJ4X3N5bmNfbXNfbW9k
ZSA9IENETlNfSTJTX01BU1RFUl9NT0RFOw0KPiA+ICsJCWNkbnNfaTJzX3NldF9tc19tb2RlKGky
cyk7DQo+ID4gKwkJYnJlYWs7DQo+ID4gKwljYXNlIFNORF9TT0NfREFJRk1UX0NCU19DRlM6DQo+
ID4gKwkJaTJzLT50eF9zeW5jX21zX21vZGUgPSBDRE5TX0kyU19TTEFWRV9NT0RFOw0KPiA+ICsJ
CWkycy0+cnhfc3luY19tc19tb2RlID0gQ0ROU19JMlNfU0xBVkVfTU9ERTsNCj4gPiArCQljZG5z
X2kyc19zZXRfbXNfbW9kZShpMnMpOw0KPiA+ICsJCWJyZWFrOw0KPiA+ICsJY2FzZSBTTkRfU09D
X0RBSUZNVF9DQk1fQ0ZTOg0KPiA+ICsJY2FzZSBTTkRfU09DX0RBSUZNVF9DQlNfQ0ZNOg0KPiAN
Cj4gdGhhdCdzIHRoZSBvbGQgc3R1ZmYsIHVzZSBDQlAvQ0JDIG1hY3JvcyBwbGVhc2UuDQoNCldp
bGwgZml4Lg0KDQo+IA0KPiA+ICsJCXJldCA9IC1FSU5WQUw7DQo+ID4gKwkJYnJlYWs7DQo+ID4g
KwlkZWZhdWx0Og0KPiA+ICsJCWRldl9kYmcoaTJzLT5kZXYsICJJbnZhbGlkIG1hc3Rlci9zbGF2
ZSBmb3JtYXRcbiIpOw0KPiA+ICsJCXJldCA9IC1FSU5WQUw7DQo+ID4gKwkJYnJlYWs7DQo+ID4g
Kwl9DQo+ID4gKwlyZXR1cm4gcmV0Ow0KPiA+ICt9DQo+IA0KPiA+ICsjaWZkZWYgQ09ORklHX1BN
DQo+IA0KPiBEbyB3ZSBuZWVkIHRoaXMgb3IganVzdCByZWx5IG9uIF9fdW51c2VkPw0KDQpJIHRo
aW5rIGJvdGggYXJlIE9LLg0KDQo+IA0KPiA+ICtzdGF0aWMgaW50IGNkbnNfaTJzX3J1bnRpbWVf
c3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpIHsNCj4gPiArCXN0cnVjdCBjZG5zX2kyc19kZXYg
KmkycyA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOw0KPiA+ICsNCj4gPiArCWNsa19kaXNhYmxlX3Vu
cHJlcGFyZShpMnMtPmNsa3NbMV0uY2xrKTsgLyogSUNHIGNsb2NrICovDQo+ID4gKwlyZXR1cm4g
MDsNCj4gPiArfQ0KPiA+ICsNCj4gPiArc3RhdGljIGludCBjZG5zX2kyc19ydW50aW1lX3Jlc3Vt
ZShzdHJ1Y3QgZGV2aWNlICpkZXYpIHsNCj4gPiArCXN0cnVjdCBjZG5zX2kyc19kZXYgKmkycyA9
IGRldl9nZXRfZHJ2ZGF0YShkZXYpOw0KPiA+ICsNCj4gPiArCXJldHVybiBjbGtfcHJlcGFyZV9l
bmFibGUoaTJzLT5jbGtzWzFdLmNsayk7IC8qIElDRyBjbG9jayAqLyB9DQo+ID4gKyNlbmRpZg0K
PiANCj4gPiArc3RhdGljIGludCBjZG5zX2kyc19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KSB7DQo+ID4gKwlzdHJ1Y3QgY2Ruc19pMnNfZGV2ICppMnM7DQo+ID4gKwlzdHJ1Y3Qg
cmVzb3VyY2UgKnJlczsNCj4gPiArCWludCByZXQ7DQo+ID4gKw0KPiA+ICsJaTJzID0gZGV2bV9r
emFsbG9jKCZwZGV2LT5kZXYsIHNpemVvZigqaTJzKSwgR0ZQX0tFUk5FTCk7DQo+ID4gKwlpZiAo
IWkycykgew0KPiA+ICsJCXJldCA9IC1FTk9NRU07DQo+ID4gKwkJZ290byBlcnI7DQo+ID4gKwl9
DQo+ID4gKwlwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCBpMnMpOw0KPiA+ICsNCj4gPiArCWky
cy0+YmFzZSA9IGRldm1fcGxhdGZvcm1fZ2V0X2FuZF9pb3JlbWFwX3Jlc291cmNlKHBkZXYsIDAs
ICZyZXMpOw0KPiA+ICsJaWYgKElTX0VSUihpMnMtPmJhc2UpKSB7DQo+ID4gKwkJcmV0ID0gUFRS
X0VSUihpMnMtPmJhc2UpOw0KPiA+ICsJCWdvdG8gZXJyOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiAr
CWkycy0+ZGV2ID0gJnBkZXYtPmRldjsNCj4gPiArCWkycy0+cGh5YmFzZSA9IHJlcy0+c3RhcnQ7
DQo+ID4gKw0KPiA+ICsJcmV0ID0gY2Ruc19pMnNfaW5pdChpMnMpOw0KPiA+ICsJaWYgKHJldCkN
Cj4gPiArCQlnb3RvIGVycjsNCj4gPiArDQo+ID4gKwlpMnMtPmlycSA9IHBsYXRmb3JtX2dldF9p
cnEocGRldiwgMCk7DQo+ID4gKwlpZiAoaTJzLT5pcnEgPj0gMCkgew0KPiA+ICsJCXJldCA9IGRl
dm1fcmVxdWVzdF9pcnEoJnBkZXYtPmRldiwgaTJzLT5pcnEsIGNkbnNfaTJzX2lycV9oYW5kbGVy
LA0KPiA+ICsJCQkJICAgICAgIDAsIHBkZXYtPm5hbWUsIGkycyk7DQo+ID4gKwkJaWYgKHJldCA8
IDApIHsNCj4gPiArCQkJZGV2X2VycigmcGRldi0+ZGV2LCAicmVxdWVzdF9pcnEgZmFpbGVkXG4i
KTsNCj4gPiArCQkJZ290byBlcnI7DQo+ID4gKwkJfQ0KPiA+ICsJfQ0KPiA+ICsNCj4gPiArCXJl
dCA9IGRldm1fc25kX3NvY19yZWdpc3Rlcl9jb21wb25lbnQoJnBkZXYtPmRldiwNCj4gPiArCQkJ
CQkgICAgICAmY2Ruc19pMnNfY29tcG9uZW50LA0KPiA+ICsJCQkJCSAgICAgICZjZG5zX2kyc19k
YWksIDEpOw0KPiA+ICsJaWYgKHJldCA8IDApIHsNCj4gPiArCQlkZXZfZXJyKCZwZGV2LT5kZXYs
ICJjb3VsZG4ndCByZWdpc3RlciBjb21wb25lbnRcbiIpOw0KPiA+ICsJCWdvdG8gZXJyOw0KPiA+
ICsJfQ0KPiA+ICsNCj4gPiArCWlmIChpMnMtPmlycSA+PSAwKQ0KPiA+ICsJCXJldCA9IGNkbnNf
aTJzX3BjbV9yZWdpc3RlcihwZGV2KTsNCj4gPiArCWVsc2UNCj4gPiArCQlyZXQgPSBkZXZtX3Nu
ZF9kbWFlbmdpbmVfcGNtX3JlZ2lzdGVyKCZwZGV2LT5kZXYsIE5VTEwsIDApOw0KPiA+ICsNCj4g
PiArCWlmIChyZXQpIHsNCj4gPiArCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJjb3VsZCBub3QgcmVn
aXN0ZXIgcGNtOiAlZFxuIiwgcmV0KTsNCj4gPiArCQlnb3RvIGVycjsNCj4gPiArCX0NCj4gPiAr
DQo+ID4gKwlwbV9ydW50aW1lX2VuYWJsZSgmcGRldi0+ZGV2KTsNCj4gPiArCWlmIChwbV9ydW50
aW1lX2VuYWJsZWQoJnBkZXYtPmRldikpDQo+ID4gKwkJY2Ruc19pMnNfcnVudGltZV9zdXNwZW5k
KCZwZGV2LT5kZXYpOw0KPiANCj4gdGhhdCBzZXF1ZW5jZSBsb29rcyBzdXNwaWNpb3VzLi4uLiBX
aHkgd291bGQgeW91IHN1c3BlbmQgaW1tZWRpYXRlbHkgZHVyaW5nIHRoZQ0KPiBwcm9iZT8gWW91
J3JlIHByb2JhYmx5IG1pc3NpbmcgYWxsIHRoZSBhdXRvc3VzcGVuZCBzdHVmZj8NCg0KU2luY2Ug
SSBoYXZlIGVuYWJsZWQgY2xvY2tzIGJlZm9yZSwgYW5kIHRoZSBkZXZpY2UgaXMgaW4gdGhlIHN1
c3BlbmQgc3RhdGUgYWZ0ZXINCnBtX3J1bnRpbWVfZW5hYmxlKCksIEkgbmVlZCB0byBkaXNhYmxl
IGNsb2NrcyBpbiBjZG5zX2kyc19ydW50aW1lX3N1c3BlbmQoKQ0KdG8gbWF0Y2ggdGhlIHN1c3Bl
bmQgc3RhdGUuDQoNCj4gDQo+ID4gKw0KPiA+ICsJZGV2X2RiZygmcGRldi0+ZGV2LCAiSTJTIHN1
cHBvcnRzICVkIHN0ZXJlbyBjaGFubmVscyB3aXRoICVzLlxuIiwNCj4gPiArCQlpMnMtPm1heF9j
aGFubmVscywgKChpMnMtPmlycSA8IDApID8gImRtYSIgOiAiaW50ZXJydXB0IikpOw0KPiA+ICsN
Cj4gPiArCXJldHVybiAwOw0KPiA+ICsNCj4gPiArZXJyOg0KPiA+ICsJcmV0dXJuIHJldDsNCj4g
PiArfQ0KPiA+ICsNCj4gPiArc3RhdGljIGludCBjZG5zX2kyc19yZW1vdmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikgew0KPiA+ICsJcG1fcnVudGltZV9kaXNhYmxlKCZwZGV2LT5kZXYp
Ow0KPiA+ICsJaWYgKCFwbV9ydW50aW1lX3N0YXR1c19zdXNwZW5kZWQoJnBkZXYtPmRldikpDQo+
ID4gKwkJY2Ruc19pMnNfcnVudGltZV9zdXNwZW5kKCZwZGV2LT5kZXYpOw0KPiANCj4gLi4uIGFu
ZCB0aGlzIG9uZSB0b28uIE9uY2UgeW91J3ZlIGRpc2FibGVkIHBtX3J1bnRpbWUsIGNoZWNraW5n
IHRoZSBzdGF0dXMgaXMNCj4gaXJyZWxldmFudC4uLg0KDQpJIHRoaW5rIHRoZSBjbG9ja3MgbmVl
ZCB0byBiZSBhbHdheXMgZW5hYmxlZCBhZnRlciBwcm9iZSBpZiBkaXNhYmxlIHBtX3J1bnRpbWUs
DQphbmQgc2hvdWxkIGJlIGRpc2FibGVkIHdoZW4gcmVtb3ZlLiBUaGlzIHdpbGwgZG8gdGhhdC4N
Cg0KPiANCj4gPiArDQo+ID4gKwlyZXR1cm4gMDsNCj4gPiArfQ0KPiA+ICsNCg0KQmVzdCByZWdh
cmRzLA0KWGluZ3l1IFd1DQo=

