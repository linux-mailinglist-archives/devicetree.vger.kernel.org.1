Return-Path: <devicetree+bounces-140389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF136A1975C
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 18:17:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 005377A4FF6
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 17:17:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4B652153CE;
	Wed, 22 Jan 2025 17:17:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from CHN02-BJS-obe.outbound.protection.partner.outlook.cn (mail-bjschn02on2095.outbound.protection.partner.outlook.cn [139.219.17.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D261170A0A;
	Wed, 22 Jan 2025 17:17:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.219.17.95
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737566236; cv=fail; b=rBVpKV7gT+tQLH9MoJLQKYy+KscnM3mJtilSyPX75V4x2mB3mzX5kKkHrtBAYEQ9yDd79QHrqWu+uqOENOLjVJnvTzXz5nQ0txcQFNFRttrbn4NaB33niiNEHXMCh0HCLz+xof44aU17KZG/nwWVqA+C7yqiPJ7/WETlBGLwhb4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737566236; c=relaxed/simple;
	bh=U9TXrGQIUlcUP6dfyFiTfiAJIkXCv6LFPKyhP1s9QBY=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=SgqDBINvkHNw2OIJPBkryw/d+TwOMAyb3hbfSYz2BW7/xcaFXYGb8LL9Wz0uNVAZXHBHrnPOHHI4K/moZmx99OHQoAyaZuxhbcGOy89Vqf5M7M4Nc16l+lMqp/XI4VWyBoRA7Cmh9hBivrexB5FfvSky8QqjVhxah4GW7P2WIFg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com; spf=pass smtp.mailfrom=starfivetech.com; arc=fail smtp.client-ip=139.219.17.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=starfivetech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q+fYDuu9l91X4eprnvc23IeX/N7LYnMT2/jh7t8O1P0ERVXqz7xa18gqUZr/hIBcIvaQ0Glf43Hni8ygRyb8uI7C0YHqK6HJFpZTd/vnw/tGptS1qQb+nMiUwsCHGKHOnyOIgXyX5UviqWhiLetiXJ/pGfk56+yiZqrHlcp7Ljz9dqJENbLgbmNCLibHmFbU1oFhj6ugwKH1csLNeEy9WoHDedDtGLxLRbl6DN8JXgIA0/jvUOM7gk1VduEAPOEathPFjlGSHFx/ClCem+RrX4Qfhb56tO1WeTWe+AbmJsbUKA5Hw/Zv7JczluzrloMRNIOX9glD9/AI/fW4FO8mKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U9TXrGQIUlcUP6dfyFiTfiAJIkXCv6LFPKyhP1s9QBY=;
 b=PtEgBZwEUi48QTiqW1MA5esKsBBi1jW5QDhPfkhTKS86NAfN8nK7zKlK2OjMQ6XHCLPxq9df81JE8A5QqqVDl9+DlfHKBtKInJTEVKNuOWFYT5KGChtX1/EsE33uErNGn5EECMcndPKv2IVRKdQ8Yxh/SLSXO9oczepe8687oPO9yGxwmMtGAeYL2LIATS3AX0fpZMDjXfvjCsztptFajTs5rt7tcIJnpb5Kxa3pTfGZg5nJah7pmCbyIcl1REAW6YFlMjsVYf6V5TPldLKrzuOvqaNHlc9p64bx2CKAtQ94Skt+4LIcrwKnzBCWnb91maI8+j6BusrcldkgHKL7lA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Received: from BJXPR01MB0855.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c211:18::12) by BJXPR01MB0854.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c211:19::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.19; Wed, 22 Jan
 2025 10:41:35 +0000
Received: from BJXPR01MB0855.CHNPR01.prod.partner.outlook.cn
 ([fe80::f06:366f:7b4b:4c9]) by BJXPR01MB0855.CHNPR01.prod.partner.outlook.cn
 ([fe80::f06:366f:7b4b:4c9%5]) with mapi id 15.20.8356.017; Wed, 22 Jan 2025
 10:41:34 +0000
From: Minda Chen <minda.chen@starfivetech.com>
To: E Shattow <e@freeshell.de>, Conor Dooley <conor@kernel.org>
CC: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>, "linux-riscv@lists.infradead.org"
	<linux-riscv@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 1/2] riscv: dts: starfive: jh7110: pciephy0 USB 3.0
 configuration registers
Thread-Topic: [PATCH v1 1/2] riscv: dts: starfive: jh7110: pciephy0 USB 3.0
 configuration registers
Thread-Index: AQHbZessMJgcIL10+UmGw9zpa2rChbMVwlmQgADRYoCAARlKYIADWKIAgAei6jA=
Date: Wed, 22 Jan 2025 10:41:34 +0000
Message-ID:
 <BJXPR01MB08553280FF7E342451053A6FE6E1A@BJXPR01MB0855.CHNPR01.prod.partner.outlook.cn>
References: <20250102183746.411526-1-e@freeshell.de>
 <20250102183746.411526-2-e@freeshell.de>
 <20250113-mushiness-snugness-0f55574e3956@spud>
 <SHXPR01MB0863DBF85A9874C9F93ECD25E618A@SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn>
 <20250114-recollect-dictate-104e890d116e@spud>
 <SHXPR01MB08631714C914911D343372ACE619A@SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn>
 <dd3aefec-0e1a-4025-812b-daa67a53f4ee@freeshell.de>
In-Reply-To: <dd3aefec-0e1a-4025-812b-daa67a53f4ee@freeshell.de>
Accept-Language: en-US
Content-Language: zh-CN
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BJXPR01MB0855:EE_|BJXPR01MB0854:EE_
x-ms-office365-filtering-correlation-id: f6debd74-f880-4c04-a8fc-08dd3ad15790
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam:
 BCL:0;ARA:13230040|41320700013|366016|1800799024|7416014|38070700018;
x-microsoft-antispam-message-info:
 rx0ORIaFVG7b1nc2oGm9Q82f/Nyfp1pX07f1ZuGIEratC4z//4r6x0Ea+iVCB0D8hz7BThbutxPQLPbtX1sBjKEEPB2FDO0TajeYJGbXtPnPb7yKF9Lp58C31hIVx8atO/iNNr1N0gLBcEcBqkyt0x87EfBBWs36u53GFFVkQlcUi3xKr84QF0Fz3GfQb7C5eiWovxtEcAmFwg2YFep2mZ95atm50t0AIJUY0pejF7WjkfbcPcxwYZ4HDWlxr4KQUYQn0uSxIjh05jtJS8GfgGmCinuSuRQ5Uj56qm/6vd+U3uUqFmlORppSNBov4Q3dLb/G72f+uHivb4CoFhPCy0A0cjf+0EFH49QZwXGy6j2aEVoS8J5NFUd869W5epw3V4JUFpwbvZAX9gQUHxBhJUZqeU+mVsZg82zo0qkXRTrmF5l3g1QUcnapFBEUTl7sn3V9X6c50IyNingySOjXLxj9X2lr+Yft7X6fVwsD8HrOOIg2VItr1bnln7Nr34mRYgr/aC2v6n698xHh7woQ5QV33DF64KqhNhMiSrHwFhctv+4ej4D9BIbQaPLfgUSAwSCUyDeOOzqThKNsi01CdWCIjITql40tjCqE8KVYwaY=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:zh-cn;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BJXPR01MB0855.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(366016)(1800799024)(7416014)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?YWxLcm5WNDVONkRXekxoWDhwWjkrL2l5cFlKdnUzK1h3dUp1SVM0NkhjVUY1?=
 =?utf-8?B?L2hVWWhPRWNMRHdmUzdxTDN4Z2UxWFdDNGlvdjVBaS9Vai9IWHJubHRFTlpr?=
 =?utf-8?B?ckdpRWpoQmtLZzJ2ZGJnd21aVFBWN1l5SFVtUFRyYzRUd1dpeGdoa3BkMHdl?=
 =?utf-8?B?OTMwUlliTEJvaFFmMkQvWTlJT254VC9YckI2cEl5OEI3Sm1lU2pRQ2pxZVFG?=
 =?utf-8?B?MFR2ejBpbTkrak5iYldNcHYyYVhyMHMxclc0aE85MGlMa1hHeDhYSGRGcTN4?=
 =?utf-8?B?L3lCS2swK1VBcVVHMnRKRjYvUk4xUkhUZnhGUnVNUWFMUkM2bmtlaGtvcUxo?=
 =?utf-8?B?bWg3cklrMFp3eE9RcTNiaExMNHh6MTNBRm9td0Ivd1BYOFk0Yk9KeFQzT00r?=
 =?utf-8?B?aUFvRmlEYnphNnFjM3FVSERvWkhaTXZuc1VrdmdFOUE3UWlJQytZbVB1NVJV?=
 =?utf-8?B?WjJzZkxXNGpKc0x4Kzk3aUxRMmFLd0llUVBxdy9vcUxqbDd3cGVZZVo5Yk5Q?=
 =?utf-8?B?ZDNQWWtuWnFSTERWVlBMdm9BZDR0dFprSEZTV2Jncm4wN21ZZjExMytXOTJs?=
 =?utf-8?B?K0VwQmovdEV4T2J2RWRHdG1tcUkxbE9oYngwTDVwUlBlVmJXQnhXRnNhTGRM?=
 =?utf-8?B?bTduVVlURzhSZ2w4bis4WDh2d1RCamlzaG5sd0duL1NnV0tVSUJLaXYvZXNa?=
 =?utf-8?B?c3pLcGNOdis4UkZSK1F1aXM3YS9aUVUrbjNPTDY2cWJpa1pUU1R0eU5MRERQ?=
 =?utf-8?B?MHEvUnFmdEpibnVWSjRsTTRDOGtHTlRXZHNSNWJvZG15QlZjeldTWFUrVmVj?=
 =?utf-8?B?d0JDaWxXOHl2d0RNVUEvZHEwRmQyZVUrL1pxN3krRUM1MmFTeVR4QjR0WXg2?=
 =?utf-8?B?NVJOWklzZkNoRU5SODBOeU02dEUzbzJ2OGsvbkNjVWorVGRTYUpmN0lCVmxR?=
 =?utf-8?B?R0l1ZDFaUFdTaU1KQkJ3NEJDcFIvRzRpQUoreWVORXZqZVJiWWc1Uitzb3Y2?=
 =?utf-8?B?aHZmb2VuS2JNZFR2eVFZRW9wQ0dORkwwRC9ia0oxMVppQms3NURPYmZjRGhO?=
 =?utf-8?B?emJEQWU1K1ExeHZCNUpBczVWZElmNGdUS3VlL2xJVDJEUjJ3V2NYWWZzN2hm?=
 =?utf-8?B?d2Y0eFZwNFZRTkJCSDhIMlVDdUQzQWhWd3RsUHMwbXdWY0Y3eEtHL0FqQzNS?=
 =?utf-8?B?cjdib1NhY2ZiMGFQMGhOM1dXOVFWdmNDQUVYbHFvWVNua0tNR1hEdjR3eU5l?=
 =?utf-8?B?a2NLcUFibWNqVkd0VjF6cVRzQTEwREJ4UVhJS3F0amxYNGxnSm9JNU04VHIy?=
 =?utf-8?B?RE02RGcyTEovaWFaSWRtMUwxbnJXQS96QkFKVW1McXRMeUVmakZqTCtScFps?=
 =?utf-8?B?Unl1RVowTEVDV21PcEgzcU5aeTBCZEYvYUgzdkhLRVUxTTVYeCt4NkpyL0h6?=
 =?utf-8?B?QWdHdkNCNm5xbzhSSWFvMVRnNVF2c04wUkFMcU13aTFvSHBqN3ZJQndZNUs3?=
 =?utf-8?B?L1F6N2pGOGN5VGFsNDN6czlMOUJIY3NwcW5xMlh5Umx1ZEtudFhjZUF1S1g1?=
 =?utf-8?B?aFdqVVozeFpRSVgwS3Q3SEp4R0tCZGRvTFdNRDhuL2RWSk0vSTR0dmJCalNw?=
 =?utf-8?B?V1ZsSzYrdWs5Y2M1S1VGcGhSMzlhZy9IYW5LSWhLNkwxdjlaNytmZCtxS2xw?=
 =?utf-8?B?aTBzVlQxWXZYQ0lXOHcrbGdPK0lkWG0yZldtbGF3TTBPV3BKZlc1aW5qQmpN?=
 =?utf-8?B?TDdTK1oyY2lIQmVONlJWY0g1ZVh6NHM2NStSUDdiWml0M2dqRTZ6eDNBby9D?=
 =?utf-8?B?Q3lGdkZsbnVoeEFwNnB2c0ZUVnBYMkwrODhIUzdBSWxyTms0enp5QUl0a2pt?=
 =?utf-8?B?K211ZEhxNytnalI5SXFaMU9qMDdyUkdVZk1raTFabmRPSjBPSWg5V0xueE5t?=
 =?utf-8?B?YmZuOWlQQXZ4aVFrczBjMU40L0QvSEJoTlY5RnhlR0ErREYvUmlEV0dkaVRx?=
 =?utf-8?B?VmNwV0Jha3ZRV2JEK0Era2sxczUvejNVbjBzR0FwZWpoaVlRVXlnN1ZCTk51?=
 =?utf-8?B?Y3NsN2FiNXd1S1FZS25nZ2lLMWtrcjBidFM0SjIyMnpjaUlMUW96RTlZSXF0?=
 =?utf-8?B?NjJRMFBtUW9XaWIxWE9aK2FvOHAwdHNiaWJmc3V0ZWFqY0pocUtXT2phVHNR?=
 =?utf-8?B?Rnc9PQ==?=
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
X-MS-Exchange-CrossTenant-AuthSource: BJXPR01MB0855.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-Network-Message-Id: f6debd74-f880-4c04-a8fc-08dd3ad15790
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2025 10:41:34.8006
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oZ5DoGfg60Qp/oE7GolU+kr/+Fds8kuKwRZmsC5tsZ5z9jAeU+VR7f52nTNQ5GrIVD3PxsIfBbxjEFSJVgx3+Zzy6fylE8MCa4mCgsID/MQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BJXPR01MB0854

DQoNCg0KPiANCj4gSGkgTWluZGEsDQo+IA0KPiBPbiAxLzE1LzI1IDAyOjU4LCBNaW5kYSBDaGVu
IHdyb3RlOg0KPiA+DQo+ID4NCj4gPj4NCj4gPj4gT24gVHVlLCBKYW4gMTQsIDIwMjUgYXQgMDU6
NDI6MjhBTSArMDAwMCwgTWluZGEgQ2hlbiB3cm90ZToNCj4gPj4+DQo+ID4+Pg0KPiA+Pj4+DQo+
ID4+Pj4gT24gVGh1LCBKYW4gMDIsIDIwMjUgYXQgMTA6Mzc6MzZBTSAtMDgwMCwgRSBTaGF0dG93
IHdyb3RlOg0KPiA+Pj4+PiBTdGFyRml2ZSBKSDcxMTAgY29udGFpbnMgYSBDYWRlbmNlIFVTQjIu
MCtVU0IzLjAgY29udHJvbGxlciBJUA0KPiA+Pj4+PiBibG9jayB0aGF0IG1heSBleGNsdXNpdmVs
eSB1c2UgcGNpZXBoeTAgZm9yIFVTQjMuMCBjb25uZWN0aXZpdHkuDQo+ID4+Pj4+IEFkZCB0aGUg
cmVnaXN0ZXIgb2Zmc2V0cyBmb3IgdGhlIGRyaXZlciB0byBlbmFibGUvZGlzYWJsZSBVU0IzLjAN
Cj4gPj4+Pj4gb24NCj4gPj4gcGNpZXBoeTAuDQo+ID4+Pj4+DQo+ID4+Pj4+IFNpZ25lZC1vZmYt
Ynk6IEUgU2hhdHRvdyA8ZUBmcmVlc2hlbGwuZGU+DQo+ID4+Pj4+IC0tLQ0KPiA+Pj4+PiAgIGFy
Y2gvcmlzY3YvYm9vdC9kdHMvc3RhcmZpdmUvamg3MTEwLmR0c2kgfCAyICsrDQo+ID4+Pj4+ICAg
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQ0KPiA+Pj4+Pg0KPiA+Pj4+PiBkaWZmIC0t
Z2l0IGEvYXJjaC9yaXNjdi9ib290L2R0cy9zdGFyZml2ZS9qaDcxMTAuZHRzaQ0KPiA+Pj4+PiBi
L2FyY2gvcmlzY3YvYm9vdC9kdHMvc3RhcmZpdmUvamg3MTEwLmR0c2kNCj4gPj4+Pj4gaW5kZXgg
MGQ4MzM5MzU3YmFkLi43NWZmMDczMDNlOGIgMTAwNjQ0DQo+ID4+Pj4+IC0tLSBhL2FyY2gvcmlz
Y3YvYm9vdC9kdHMvc3RhcmZpdmUvamg3MTEwLmR0c2kNCj4gPj4+Pj4gKysrIGIvYXJjaC9yaXNj
di9ib290L2R0cy9zdGFyZml2ZS9qaDcxMTAuZHRzaQ0KPiA+Pj4+PiBAQCAtNjExLDYgKzYxMSw4
IEBAIHVzYnBoeTA6IHBoeUAxMDIwMDAwMCB7DQo+ID4+Pj4+ICAgCQlwY2llcGh5MDogcGh5QDEw
MjEwMDAwIHsNCj4gPj4+Pj4gICAJCQljb21wYXRpYmxlID0gInN0YXJmaXZlLGpoNzExMC1wY2ll
LXBoeSI7DQo+ID4+Pj4+ICAgCQkJcmVnID0gPDB4MCAweDEwMjEwMDAwIDB4MCAweDEwMDAwPjsN
Cj4gPj4+Pj4gKwkJCXN0YXJmaXZlLHN5cy1zeXNjb24gPSA8JnN5c19zeXNjb24gMHgxOD47DQo+
ID4+Pj4+ICsJCQlzdGFyZml2ZSxzdGctc3lzY29uID0gPCZzdGdfc3lzY29uIDB4MTQ4IDB4MWY0
PjsNCj4gPj4+Pg0KPiA+Pj4+IFdoeSB3ZXJlbid0IHRoZXNlIGFkZGVkIGluIHRoZSBmaXJzdCBw
bGFjZT8gTWluZGEsIGRvIHlvdSBrbm93Pw0KPiA+Pj4+DQo+ID4+PiBUaGUgZHJpdmVyIG9ubHkg
cmVxdWlyZSB0byBzZXQgc3lzY29uIHJlZ2lzdGVyIHdoaWxlIHRoZSBQSFkgYXR0YWNoDQo+ID4+
PiB0byBDYWRlbmNlIFVTQi4oc3RhcjY0IGJvYXJkIGNhc2UpIFRoZSBQSFkgZGVmYXVsdCBhdHRh
Y2ggdG8gUENJZTAsDQo+ID4+PiBWRjIgYm9hcmQNCj4gPj4gZG8gbm90IHNldCBhbnkgc2V0dGlu
Zy4gU28gSSBkb24ndCBzZXQgaXQuDQo+ID4+DQo+ID4+IERvZXMgdGhpcyBtZWFuIHRoYXQgdGhl
IGNoYW5nZSBzaG91bGQgYmUgbWFkZSBpbiBmaWxlcyB3aGVyZSBpdCB3aWxsDQo+ID4+IG9ubHkg
YWZmZWN0DQo+ID4+IG5vbi1WRjIgYm9hcmRzLCBvciBpcyBpdCBoYXJtbGVzcyBpZiBhcHBsaWVk
IHRvIHRoZSBWRjIgYWxzbz8NCj4gPiBIYXJtbGVzcy4gVGhlIFBDSWUgUEhZIGRyaXZlciBzdGls
bCBzZXQgdGhlIFBDSWUgbW9kZSBzeXNjb24gc2V0dGluZy4NCj4gDQo+IFNvdW5kcyBnb29kIHRv
IG1lLiBIb3dldmVyIHNvbWUgdGFuZ2VudCB0b3BpYyByZWxhdGVkIHRvIHRoaXMgc2VyaWVzOg0K
PiANCj4gT3VyIHF1ZXN0aW9ucyBhbmQgYW5zd2VycyBpbiB0aGlzIGRpc2N1c3Npb24gYXJlIGEg
cmVwcmVzZW50YXRpb24gb2Ygd2hhdCBpcw0KPiBtaXNzaW5nIGZyb20gdGhlIGRvY3VtZW50YXRp
b24uDQo+IA0KPiBXaGF0IGRvIEkgd2FudCB0byBrbm93PyA6ICAicGRyc3RuIHNwbGl0IHN3IHVz
YnBpcGUgcGx1Z2VuIiBhYmJyZXZpYXRpb24uDQo+IA0KPiBXaGF0IGFyZSB0aGUgZnVsbCB3b3Jk
cyB0aGF0IGlzIGZyb20/DQo+IA0KPiBJIHdpbGwgZ3Vlc3MgdGhlIHdvcmRzIGFyZToNCj4gDQo+
ICJQb3dlciBkb21haW4gcmVzZXQgbmVnYXRpdmU/IFNwbGl0Li4uIFN3aXRjaD8gVVNCIHBpcGVs
aW5lIHBsdWcgZW5hYmxlPyINCj4gDQo+IFdoZW4gdGhpcyBpcyBleHBsYWluZWQgZm9yIG1lIEkg
d2lsbCBzZW5kIGEgcGF0Y2ggdG8gYWRkIGluZm9ybWF0aW9uIGludG8NCj4gZG9jdW1lbnRhdGlv
biBhdCBkdC1iaW5kaW5ncy9waHkvc3RhcmZpdmUsamg3MTEwLXBjaWUtcGh5LnlhbWwNCj4gZmls
ZS4gSSBrbm93IHRoYXQgdGhlIGZ1bmN0aW9uYWxpdHkgaXMgYWxyZWFkeSBzYWlkIGluIGRpc2N1
c3Npb247ICBXaGF0IEkgd2FudCBhcmUNCj4gdGhlIGZ1bGwgd29yZHMgdG8gZXhwYW5kIHRoZSAi
cGRyc3RuIHNwbGl0IHN3IHVzYnBpcGUgcGx1Z2VuIg0KPiBhcyBhbnkgYWJicmV2aWF0aW9uIHdv
dWxkIGFsc28gYmUgZXhwYW5kZWQgYW5kIGV4cGxhaW5lZCBpbiBkb2N1bWVudGF0aW9uLg0KPiAN
Cj4gSXQgd291bGQgYmUgZGlmZmljdWx0IHRvIGltcHJvdmUgdGhlIGRvY3VtZW50YXRpb24gYmVm
b3JlIG91ciBkaXNjdXNzaW9uIGFib3V0DQo+IHRoaXMgc2VyaWVzIGhlcmUuIE5vdyBpdCBpcyBj
bGVhciB3aGF0IHF1ZXN0aW9ucyBhbmQgYW5zd2VycyBhcmUgbWlzc2luZyBmcm9tDQo+IGRvY3Vt
ZW50YXRpb24uDQo+IA0KPiAtRQ0KSW4gbXkgdmlldywgcGRyc3RuIHNwbGl0IHN3IHVzYnBpcGUg
aXMgYml0MTcgc2V0dGluZy4gU2V0IHRvIDEgaXMgbWVhbiBzcGxpdCB0aGUgUENJZSBQSFkgZnJv
bQ0KQ2FkZW5jZSBVU0IgY29udHJvbGxlci4NCg==

