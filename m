Return-Path: <devicetree+bounces-62332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D31368B0CDB
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 16:42:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B10A281FE7
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 14:42:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFA1415EFC8;
	Wed, 24 Apr 2024 14:41:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from CHN02-BJS-obe.outbound.protection.partner.outlook.cn (mail-bjschn02on2098.outbound.protection.partner.outlook.cn [139.219.17.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE91415E801;
	Wed, 24 Apr 2024 14:41:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.219.17.98
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713969709; cv=fail; b=rV29zGPdTJt/03Fw/AV/vmasDtH3Cio/ySd5YUzqUjxc6Ppo3E0JJU9ezaLDgC6aBb6AtFt4OczTZjfKiqERRvQJPov016sjhbmtvgVs/gpoGxOtrwV0KG6fqPlOnkjjbG29jbo5LhDM1oQ2qsRi+yLK0FIkse3nP956cfp8GbE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713969709; c=relaxed/simple;
	bh=ttpJRAHC9pjzyYJJYh2SSI1sTs6OTsYvjPIpHI7vMNg=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=oSsSiG+f+vOPdyQrZy5oo2LCjtl4WfAO74+mO5MjZsfKlYdpEPAD5xjm/RjX1V6LYaOgP9ivSUePs8cQ2pYIVcFdgYZgYozh1edkSH27vueg7bJYnZaduH33oYnYLlOxTHlNPcSV2thyal4wulO+O9mMJ9fyrb8MivOUr3YR9U8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com; spf=pass smtp.mailfrom=starfivetech.com; arc=fail smtp.client-ip=139.219.17.98
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=starfivetech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dOmAF3Es0Mwh8MCJkDjj3Hny/GR5Uz5NlpUi2pjKFVYB2dqUOIHvh9smp+5wrGVPSJgpxqo/Eh76fvqbBWsv8TrOXcZduhp7muEDYk0rUlipQ7myA25y3Ns3UU6dFCJfGvKpUqEj4CPJDpHxK27h2hwRNFInaHQ0Al53jx18fkv6vTvoVPUoXiL7AzqgF2YCTkH9vzEC5P0Ds9mO9MnUkuvedqBzZDQo7epBRmp1/DcdfDXwKt4Zpp1tx7W9exaxGI/Vc3TfkZrwe6k6mpWAiKytfM+syx9/CI9L3R325HguIvVUjokkF2h9PesBwXf8yLhT0X2252REegVOMDlFAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ttpJRAHC9pjzyYJJYh2SSI1sTs6OTsYvjPIpHI7vMNg=;
 b=QNEoOs2+wRRIydexHVepj155JtHC74HXBLO4wyzho8Se0+XXa+3NsPJZDTYTplMoi565SEX4zPWyvEiZwj2/xR0+lusP1V/XqLDRzNLhR5t89KqPyjuKG2UYurX5uhwAgRVt57V/5vObDMGqxe1jDB96pqy53MY7lMoLdMsQDWvXEPwrps+TuJquIOs1Q+gi+T1UoAkF9lMa5cE4YBcq1NGcBX5fhKI73I/hq23XOqJoCCbVZQ4oItZCthpUXU4KycgKpqDP0bpkk0ysO6GvWV+1EcCSuck3onmfJyvC0y30+FukwA2PKq7duBJdCepbAAelOfgHiNdGYi3f47sHkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Received: from SH0PR01MB0841.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c311:20::14) by SH0PR01MB0604.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c311:7::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.44; Wed, 24 Apr
 2024 14:07:54 +0000
Received: from SH0PR01MB0841.CHNPR01.prod.partner.outlook.cn
 ([fe80::e0a:f88a:cad1:dc1c]) by SH0PR01MB0841.CHNPR01.prod.partner.outlook.cn
 ([fe80::e0a:f88a:cad1:dc1c%7]) with mapi id 15.20.7472.044; Wed, 24 Apr 2024
 14:07:54 +0000
From: Joshua Yeong <joshua.yeong@starfivetech.com>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	"robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"conor@kernel.org" <conor@kernel.org>, "paul.walmsley@sifive.com"
	<paul.walmsley@sifive.com>, "palmer@dabbelt.com" <palmer@dabbelt.com>,
	"aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>, Leyfoon Tan
	<leyfoon.tan@starfivetech.com>, JeeHeng Sia <jeeheng.sia@starfivetech.com>
CC: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Subject: RE: [PATCH v3 1/2] cache: Add StarFive StarLink cache management for
 StarFive JH8100
Thread-Topic: [PATCH v3 1/2] cache: Add StarFive StarLink cache management for
 StarFive JH8100
Thread-Index: AQHalh1PRoL0YjHNUEq+ss3l976a9rF3N0uAgAA4OgA=
Date: Wed, 24 Apr 2024 14:07:54 +0000
Message-ID:
 <SH0PR01MB0841F8C45091E4A08020ADF2F910A@SH0PR01MB0841.CHNPR01.prod.partner.outlook.cn>
References: <20240424075856.145850-1-joshua.yeong@starfivetech.com>
 <20240424075856.145850-2-joshua.yeong@starfivetech.com>
 <CAJM55Z-C7XkFo4STk3rdLG4kvPfed-AfrHB1QJ-Tzt1LDoKw9w@mail.gmail.com>
In-Reply-To:
 <CAJM55Z-C7XkFo4STk3rdLG4kvPfed-AfrHB1QJ-Tzt1LDoKw9w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SH0PR01MB0841:EE_|SH0PR01MB0604:EE_
x-ms-office365-filtering-correlation-id: c486f4a8-b391-4535-1eae-08dc6467ef71
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 uBheRNgzrVCQwq0jes1WXOYBUh50q6/6d/Ffa4esyBTFdzXgJvI8gS+unQyktoKPSQFrUV6O8DEsOqg+UHUuGlM8lOw/J2BKIK3Gl6n3KfT74kcn3xf2hVq4afHBL9yun1ssRQ2hoXtMMUqkoiHD0T/DycoisvPjTZqXcnhIHCGV0oLnN4nzY0a+uNvK3C811au0yPIFVrbwuxLRLqfy33ZU8XAYCCX44qc+DnFT+AeoXrCi9VwDtcH4CjFlh5ipvY+Pw5nadC1edlBieRIvooMFhob47ObDRF3UOz+GScRrSMYymuuseENV1o2fPBjw/3SEaKGR4CRdAKiRTj3lzFhaJ/TEYn7n3l/wvP6zNv//TfqpZG8GZbrhORMhHDLz3HO6UyEIl73vK4HIYLnb9Gvyo8a0TTd6ILIz8toKuM4FAJqLjI7008eJEmESUzQhv1V82beoY+9QC5wnPiCxhkpVDSPjnXG428j1I75te+Sl6VDUe2lCfm42c5GS/+c/ZBBlcYh2KGoNPw+TIGzQstL4yKYR5k71vK3ROLsXs2OD5UINwSaeG8VpqGVJYE17+USqmDvxbuVvwtZHqKL8FJusRzGYro7rj5zBdgaUVr28ZbjW6YFZPWIq3fD973A05E0kPKeH0M4Tyes7sEuaew==
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SH0PR01MB0841.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(41320700004)(7416005)(38070700009)(921011);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?RUN2aEwramtkdjFrdUNPdmdoMFRpbEJCbWlCV1lSMVB6L2M1UTNpaitHZ0dB?=
 =?utf-8?B?ZFQ0SSthVEtDMVFSbkpmS25MQURHS0N1ZEV4aGxDNDVoQ2Rmc2MvSDRFd3FH?=
 =?utf-8?B?aC85SDdDRENLVXR2QUFZeHJQQlp4ZDNTaFBKbjYrZG5UMk56WFgxLzVLMzJB?=
 =?utf-8?B?NW81M1NEVkZOSXRnSmhTU0xMZDJoajE2OU5iL0I2WU1RSlB5b212NEJnSlBx?=
 =?utf-8?B?RHNFeko2cytGYVNRcTdUSXB2eHJaK1VEUGlVeEkyWTZIaE0wS0t6MVorM09G?=
 =?utf-8?B?QXhxNHUweXJnd0llaDJraUpwanR3VzBYcThtaE1sbk0wK2VNM2toM0Z3emtZ?=
 =?utf-8?B?MjF4UFU1MzM1OFZNdTVYbWF4ejB5cGJLYkF5RXhzNlJMN042cVozTWl4NkV5?=
 =?utf-8?B?YUpPbTkyNDVoUzRSeTEwOXVLMHU2RUFrV3JTNUtzTEFDL0xZSzFhQ1dVM1Y3?=
 =?utf-8?B?YzdKRUE1Z0lMOVI4U0djMjc0SzJjdXBFY1RCWFNFa2Y0OHBlZTA3SThvNFdm?=
 =?utf-8?B?V09QMzZxbHU4YUVsZzdOdEQwQ2pOK2M2VExNb3c4YktkSXhDS3U3T0Z6dXZl?=
 =?utf-8?B?all1YTliL2JOUm1QOXhUcUdYV2d6ak9HUHI5WHpWbXJaNm55QkRsbHhBUFBo?=
 =?utf-8?B?YzZ6V1dTTHRFTGZIOVhEVytKSDJRMmZ6eVZWeHo1RlRXSlFrRHgweHowOFpl?=
 =?utf-8?B?YkxtOEFZV0luQVUrZS80NDJNbmtGdXFyZUhiODh5YTg2QWVHWmV3OE9YdVZ3?=
 =?utf-8?B?THlQUzZDcTFZU2hURFAwcGtra0taTVR2TENZSXdFclIyQzZLY0lwanVzeGdB?=
 =?utf-8?B?R3hOM2dtUjZpem9sT2N0TGRiRUtlM1RJU0NVdUk5ZVZGM3pFMUkrbE9hT1ho?=
 =?utf-8?B?cEZPTzM0Q1Uzajd1N3ZzMHRyQ1JqTE45bHBxcEtCcnA3dXBUclIvdUhLQnZ4?=
 =?utf-8?B?WVlRNWoraGRna0Y5bVQ2dHVWVVM0Q1VXR05VUWVHdnNWZkZ3emJTQ2lOK1hh?=
 =?utf-8?B?Tkp4eGQydG1SektZcnJxa0NrTWN0SlZtUmc3enI2cEZBU3dSdkVabktWSjJ2?=
 =?utf-8?B?VHdxNTNqU2R6TDZQMExEcHpTTFZCWE5jZEQzUjdxZmdXYVJPTFB1MzZYR2lP?=
 =?utf-8?B?YkNlSVpLNVk1bnN5ZTRqVnd4bU5kMXl0Um1semxDdWppMzZFS3JrT0dnaTFh?=
 =?utf-8?B?R3JTYnVGZDJOVzBtZXZKRmxKVEVCQW1tZmxKa3dHNWpMNllvVHJnanVLdHNS?=
 =?utf-8?B?NmVDUEc5YURTOU02V3IrUnpJTi92MUNYUmJRMGRsOXhmUzZqQUxaUDlRREx0?=
 =?utf-8?B?VXAxSm1wdDhuNGJNZUJBTzYzSmFjNnNZOFdrQ1NHbmhzY3ZwbjRtMEp1eXdy?=
 =?utf-8?B?Z0NRV3IxV3hqUUFtWjZqZ0xibExrSnpleUdWUFJPYnVBZXlValU0TXdVSWk2?=
 =?utf-8?B?QVl0Q1RYYXlYRyt1akNIUXhMRVMwZVYzVTZDcWZjdmFjT1MrREdXOW4vQ3Iw?=
 =?utf-8?B?eWQ2S0xVaGFTS2hPUjlVaHF2TGxQVE4vOWFVcXA5UnljVVN1WkZpZ1VQMUZ3?=
 =?utf-8?B?QnIzQ0VDUmVya1V2dDlKL05sUVRucnpaSWNsZ1o0K0NrK09oUW9CMjVTckow?=
 =?utf-8?B?QXpWR1d0ZWFzUGs2VGpETWFoSlord3JIRzFUeVZjRnVMazZwRmdIcmlHNWRC?=
 =?utf-8?B?UVlJSys4ZWRJWUJIZzlGUWpTK04rRlRFaFkzYnczQ3ZuZHZqeDkrSlBqMjBn?=
 =?utf-8?B?TGxtQjJNdkIxY3VnSjZrcTdHWnp2ZkUxZHlvbWpkMGtyY0IrbzJOOXdqZzgr?=
 =?utf-8?B?K1o5UkNWL1pkaUd1cnNoZ25hdGhDOWluaHlOUDJMT2RXZTVDcnE0aVQ0cHdu?=
 =?utf-8?B?TGdEYXJnRmo5bWRxYkhYWlluN1pmNnpnWUJFMWdyM3FVOHAwN1RFays0TzJQ?=
 =?utf-8?B?OG9yVW16em1UbnEveFArK1ROay9xejZOVDVsbFlsWmhUeW1FTDZkTjJldGhM?=
 =?utf-8?B?S1poMU12RVdkck5FZkJoUmlrSE1mMGVKQ3pzUWNwUlZEdVhjNGh2WFM5bkQ1?=
 =?utf-8?B?RzQwRy9nMENSMnZma1ZXeC9tVFJKL1hZMnVBNUhwdnNPbEJ6cW91NGJQcVNN?=
 =?utf-8?B?WnZKQkIyMTcwM1RFZk40aGlXWS9oWDlWWFp4RFVZMUVmalp1WVAzVE9wbjlz?=
 =?utf-8?B?eEE9PQ==?=
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
X-MS-Exchange-CrossTenant-AuthSource: SH0PR01MB0841.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-Network-Message-Id: c486f4a8-b391-4535-1eae-08dc6467ef71
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2024 14:07:54.0859
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rYXGKUkvYkLJCNwAeaOvVE07aL6PwZu6uj2cIdk0GnzTrvmG0Xabkkn0/Fuk4+ZJsB2n/a2AKZ8G5B3LChqXwFDblXkA44CYgwnzfupHiG8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SH0PR01MB0604

RW1pbCBSZW5uZXIgQmVydGhpbmcgd3JvdGU6DQo+IEpvc2h1YSBZZW9uZyB3cm90ZToNCj4gPiBB
ZGQgU3RhckZpdmUgU3RhcmxpbmsgY2FjaGUgbWFuYWdlbWVudCBkcml2ZXIgZm9yDQo+ID4gSkg4
MTAwIFNvQy4gVGhpcyBkcml2ZXIgZW5hYmxlcyBSSVNDLVYgbm9uLXN0YW5kYXJkIGNhY2hlIG9w
ZXJhdGlvbiBvbg0KPiA+IEpIODEwMCB0aGF0IGRvZXMgbm90IHN1cHBvcnQgWmljYm9tIGV4dGVu
c2lvbiBpbnN0cnVjdGlvbnMuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3NodWEgWWVvbmcg
PGpvc2h1YS55ZW9uZ0BzdGFyZml2ZXRlY2guY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2Nh
Y2hlL0tjb25maWcgICAgICAgICAgICAgICAgICAgfCAgIDkgKysNCj4gPiAgZHJpdmVycy9jYWNo
ZS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgIHwgICA1ICstDQo+ID4gIGRyaXZlcnMvY2FjaGUv
c3RhcmZpdmVfc3RhcmxpbmtfY2FjaGUuYyB8IDEzNQ0KPiA+ICsrKysrKysrKysrKysrKysrKysr
KysrKw0KPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDE0NyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKSAgY3JlYXRlIG1vZGUNCj4gPiAxMDA2NDQgZHJpdmVycy9jYWNoZS9zdGFyZml2ZV9zdGFy
bGlua19jYWNoZS5jDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jYWNoZS9LY29uZmln
IGIvZHJpdmVycy9jYWNoZS9LY29uZmlnIGluZGV4DQo+ID4gOTM0NWNlNDk3NmQ3Li45MTgxY2Qz
OTFmNTMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9jYWNoZS9LY29uZmlnDQo+ID4gKysrIGIv
ZHJpdmVycy9jYWNoZS9LY29uZmlnDQo+ID4gQEAgLTE0LDQgKzE0LDEzIEBAIGNvbmZpZyBTSUZJ
VkVfQ0NBQ0hFDQo+ID4gIAloZWxwDQo+ID4gIAkgIFN1cHBvcnQgZm9yIHRoZSBjb21wb3NhYmxl
IGNhY2hlIGNvbnRyb2xsZXIgb24gU2lGaXZlIHBsYXRmb3Jtcy4NCj4gPg0KPiA+ICtjb25maWcg
U1RBUkZJVkVfU1RBUkxJTktfQ0FDSEUNCj4gPiArCWJvb2wgIlN0YXJGaXZlIFN0YXJMaW5rIENh
Y2hlIGNvbnRyb2xsZXIiDQo+ID4gKwlkZXBlbmRzIG9uIFJJU0NWDQo+ID4gKwlkZXBlbmRzIG9u
IEFSQ0hfU1RBUkZJVkUNCj4gPiArCXNlbGVjdCBSSVNDVl9ETUFfTk9OQ09IRVJFTlQNCj4gPiAr
CXNlbGVjdCBSSVNDVl9OT05TVEFOREFSRF9DQUNIRV9PUFMNCj4gPiArCWhlbHANCj4gPiArCSAg
U3VwcG9ydCBmb3IgdGhlIFN0YXJMaW5rIGNhY2hlIGNvbnRyb2xsZXIgb24gU3RhckZpdmUgcGxh
dGZvcm1zLg0KPiANCj4gVGhpcyBpcyBhIGJpdCBtaXNsZWFkaW5nLiBUaGUgSkg3MXgwcyBkb24n
dCBoYXZlIHRoaXMuIEl0J3Mgb25seSBvbiB0aGUgSkg4MTAwIHNvDQo+IGZhciwgYW5kIGhvcGVm
dWxseSBsYXRlciBTb0NzIHdpbGwganVzdCBpbXBsZW1lbnQgUklTQy1WIHN0YW5kYXJkcyBmb3Ig
dGhpcy4NCj4gU28gbWF5YmUgc29tZXRoaW5nIGxpa2UNCj4gDQo+ICJTdXBwb3J0IGZvciB0aGUg
U3RhckxpbmsgY2FjaGUgY29udHJvbGxlciBvbiB0aGUgU3RhckZpdmUgSkg4MTAwIFNvQy4iDQo+
IA0KDQpIaSBFbWlsLA0KDQpUaGUgU3RhckxpbmstNTAwIGNhY2hlIGNvbnRyb2xsZXIgaXMgbm90
IGRlc2lnbmVkIGV4Y2x1c2l2ZWx5IGZvciBKSDgxMDAgU29DLiANCldoaWxlIGl0IGlzIHRydWUg
dGhhdCBpdCBjdXJyZW50bHkgZXhpc3RzIG9uIHRoZSBTdGFyRml2ZSBwbGF0Zm9ybSwgQ1BVL1Nv
QyANCnRoYXQgZG9lcyBub3QgY29tZSB3aXRoIFppY2JvbSBleHRlbnNpb25zIHN1cHBvcnRlZCB3
b3VsZCBuZWVkIHRvIHJlbHkgDQpvbiB0aGlzIGNhY2hlIGRyaXZlIHRvIGRvIGNhY2hlIG1hbmFn
ZW1lbnQgb3BlcmF0aW9ucy4gSSB0aGluayB3ZSBkb27igJl0IG5lZWQNCnRvIG1lbnRpb25lZCAn
Skg4MTAwIFNvQycgaGVyZS4NCg0KPiA+ICsNCj4gPiAgZW5kbWVudQ0KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2NhY2hlL01ha2VmaWxlIGIvZHJpdmVycy9jYWNoZS9NYWtlZmlsZSBpbmRleA0K
PiA+IDc2NTdjZmYzYmQ2Yy4uNTVjNWU4NTEwMzRkIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMv
Y2FjaGUvTWFrZWZpbGUNCj4gPiArKysgYi9kcml2ZXJzL2NhY2hlL01ha2VmaWxlDQo+ID4gQEAg
LTEsNCArMSw1IEBADQo+ID4gICMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjANCj4g
Pg0KPiA+IC1vYmotJChDT05GSUdfQVg0NU1QX0wyX0NBQ0hFKQkrPSBheDQ1bXBfY2FjaGUubw0K
PiA+IC1vYmotJChDT05GSUdfU0lGSVZFX0NDQUNIRSkJKz0gc2lmaXZlX2NjYWNoZS5vDQo+ID4g
K29iai0kKENPTkZJR19BWDQ1TVBfTDJfQ0FDSEUpCQkrPSBheDQ1bXBfY2FjaGUubw0KPiA+ICtv
YmotJChDT05GSUdfU0lGSVZFX0NDQUNIRSkJCSs9IHNpZml2ZV9jY2FjaGUubw0KPiA+ICtvYmot
JChDT05GSUdfU1RBUkZJVkVfU1RBUkxJTktfQ0FDSEUpCSs9IHN0YXJmaXZlX3N0YXJsaW5rX2Nh
Y2hlLm8NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jYWNoZS9zdGFyZml2ZV9zdGFybGlua19j
YWNoZS5jDQo+ID4gYi9kcml2ZXJzL2NhY2hlL3N0YXJmaXZlX3N0YXJsaW5rX2NhY2hlLmMNCj4g
PiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uMmYxZmE2YTky
M2VlDQo+ID4gLS0tIC9kZXYvbnVsbA0KPiA+ICsrKyBiL2RyaXZlcnMvY2FjaGUvc3RhcmZpdmVf
c3RhcmxpbmtfY2FjaGUuYw0KPiA+IEBAIC0wLDAgKzEsMTM1IEBADQo+ID4gKy8vIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wDQo+ID4gKy8qDQo+ID4gKyAqIENhY2hlIE1hbmFnZW1l
bnQgT3BlcmF0aW9ucyBmb3IgU3RhckZpdmUncyBTdGFybGluayBjYWNoZQ0KPiA+ICtjb250cm9s
bGVyDQo+ID4gKyAqDQo+ID4gKyAqIENvcHlyaWdodCAoQykgMjAyNCBTaGFuZ2hhaSBTdGFyRml2
ZSBUZWNobm9sb2d5IENvLiwgTHRkLg0KPiA+ICsgKg0KPiA+ICsgKiBBdXRob3I6IEpvc2h1YSBZ
ZW9uZyA8am9zaHVhLnllb25nQHN0YXJmaXZldGVjaC5jb20+ICAqLw0KPiA+ICsNCj4gPiArI2lu
Y2x1ZGUgPGxpbnV4L2JpdGZpZWxkLmg+DQo+ID4gKyNpbmNsdWRlIDxsaW51eC9jYWNoZWZsdXNo
Lmg+DQo+ID4gKyNpbmNsdWRlIDxsaW51eC9pb3BvbGwuaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4
L29mX2FkZHJlc3MuaD4NCj4gPiArDQo+ID4gKyNpbmNsdWRlIDxhc20vZG1hLW5vbmNvaGVyZW50
Lmg+DQo+ID4gKw0KPiA+ICsjZGVmaW5lIFNUQVJMSU5LX0NBQ0hFX0ZMVVNIX1NUQVJUX0FERFIJ
CQkweDANCj4gPiArI2RlZmluZSBTVEFSTElOS19DQUNIRV9GTFVTSF9FTkRfQUREUgkJCTB4OA0K
PiA+ICsjZGVmaW5lIFNUQVJMSU5LX0NBQ0hFX0ZMVVNIX0NUTAkJCTB4MTANCj4gPiArI2RlZmlu
ZSBTVEFSTElOS19DQUNIRV9BTElHTgkJCQkweDQwDQo+ID4gKw0KPiA+ICsjZGVmaW5lIFNUQVJM
SU5LX0NBQ0hFX0FERFJFU1NfUkFOR0VfTUFTSw0KPiAJR0VOTUFTSygzOSwgMCkNCj4gPiArI2Rl
ZmluZSBTVEFSTElOS19DQUNIRV9GTFVTSF9DVExfTU9ERV9NQVNLDQo+IAlHRU5NQVNLKDIsIDEp
DQo+ID4gKyNkZWZpbmUgU1RBUkxJTktfQ0FDSEVfRkxVU0hfQ1RMX0VOQUJMRV9NQVNLCQlCSVQo
MCkNCj4gPiArDQo+ID4gKyNkZWZpbmUgU1RBUkxJTktfQ0FDSEVfRkxVU0hfQ1RMX0NMRUFOX0lO
VkFMSURBVEUJMA0KPiA+ICsjZGVmaW5lIFNUQVJMSU5LX0NBQ0hFX0ZMVVNIX0NUTF9NQUtFX0lO
VkFMSURBVEUJMQ0KPiA+ICsjZGVmaW5lIFNUQVJMSU5LX0NBQ0hFX0ZMVVNIX0NUTF9DTEVBTl9T
SEFSRUQJCTINCj4gPiArI2RlZmluZSBTVEFSTElOS19DQUNIRV9GTFVTSF9QT0xMX0RFTEFZX1VT
CQkxDQo+ID4gKyNkZWZpbmUgU1RBUkxJTktfQ0FDSEVfRkxVU0hfVElNRU9VVF9VUw0KPiAJNTAw
MDAwMA0KPiA+ICsNCj4gPiArc3RydWN0IHN0YXJsaW5rX2NhY2hlX3ByaXYgew0KPiA+ICsJdm9p
ZCBfX2lvbWVtICpiYXNlX2FkZHI7DQo+ID4gK307DQo+ID4gKw0KPiA+ICtzdGF0aWMgc3RydWN0
IHN0YXJsaW5rX2NhY2hlX3ByaXYgc3RhcmxpbmtfY2FjaGVfcHJpdjsNCj4gDQo+IFRoaXMgY291
bGQganVzdCBiZQ0KPiANCj4gc3RhdGljIHZvaWQgX19pb21lbSAqc3RhcmxpbmtfY2FjaGVfYmFz
ZTsNCj4gDQo+ID4gKw0KPiA+ICtzdGF0aWMgdm9pZCBzdGFybGlua19jYWNoZV9mbHVzaF9jb21w
bGV0ZSh2b2lkKQ0KPiA+ICt7DQo+ID4gKwl2b2xhdGlsZSB2b2lkIF9faW9tZW0gKmN0bCA9IHN0
YXJsaW5rX2NhY2hlX3ByaXYuYmFzZV9hZGRyICsNCj4gPiArCQkJCSAgICAgU1RBUkxJTktfQ0FD
SEVfRkxVU0hfQ1RMOw0KPiA+ICsJdTY0IHY7DQo+ID4gKwlpbnQgcmV0Ow0KPiA+ICsNCj4gPiAr
CXJldCA9IHJlYWRxX3BvbGxfdGltZW91dF9hdG9taWMoY3RsLCB2LCAhKHYgJg0KPiBTVEFSTElO
S19DQUNIRV9GTFVTSF9DVExfRU5BQkxFX01BU0spLA0KPiA+ICsNCj4gCVNUQVJMSU5LX0NBQ0hF
X0ZMVVNIX1BPTExfREVMQVlfVVMsDQo+ID4gKw0KPiAJU1RBUkxJTktfQ0FDSEVfRkxVU0hfVElN
RU9VVF9VUyk7DQo+ID4gKwlpZiAocmV0KQ0KPiA+ICsJCVdBUk4oMSwgIlN0YXJGaXZlIFN0YXJs
aW5rIGNhY2hlIGZsdXNoIG9wZXJhdGlvbg0KPiB0aW1lb3V0XG4iKTsgfQ0KPiA+ICsNCj4gPiAr
c3RhdGljIHZvaWQgc3RhcmxpbmtfY2FjaGVfZG1hX2NhY2hlX3diYWNrKHBoeXNfYWRkcl90IHBh
ZGRyLA0KPiA+ICt1bnNpZ25lZCBsb25nIHNpemUpIHsNCj4gPiArCXdyaXRlcShGSUVMRF9QUkVQ
KFNUQVJMSU5LX0NBQ0hFX0FERFJFU1NfUkFOR0VfTUFTSywNCj4gcGFkZHIpLA0KPiA+ICsJICAg
ICAgIHN0YXJsaW5rX2NhY2hlX3ByaXYuYmFzZV9hZGRyICsNCj4gU1RBUkxJTktfQ0FDSEVfRkxV
U0hfU1RBUlRfQUREUik7DQo+ID4gKwl3cml0ZXEoRklFTERfUFJFUChTVEFSTElOS19DQUNIRV9B
RERSRVNTX1JBTkdFX01BU0ssDQo+IHBhZGRyICsgc2l6ZSksDQo+ID4gKwkgICAgICAgc3Rhcmxp
bmtfY2FjaGVfcHJpdi5iYXNlX2FkZHIgKw0KPiA+ICtTVEFSTElOS19DQUNIRV9GTFVTSF9FTkRf
QUREUik7DQo+ID4gKw0KPiA+ICsJbWIoKTsNCj4gPiArCXdyaXRlcShGSUVMRF9QUkVQKFNUQVJM
SU5LX0NBQ0hFX0ZMVVNIX0NUTF9NT0RFX01BU0ssDQo+ID4gKwkJCSAgU1RBUkxJTktfQ0FDSEVf
RkxVU0hfQ1RMX0NMRUFOX1NIQVJFRCksDQo+ID4gKwkgICAgICAgc3RhcmxpbmtfY2FjaGVfcHJp
di5iYXNlX2FkZHIgKyBTVEFSTElOS19DQUNIRV9GTFVTSF9DVEwpOw0KPiA+ICsNCj4gPiArCXN0
YXJsaW5rX2NhY2hlX2ZsdXNoX2NvbXBsZXRlKCk7DQo+ID4gK30NCj4gPiArDQo+ID4gK3N0YXRp
YyB2b2lkIHN0YXJsaW5rX2NhY2hlX2RtYV9jYWNoZV9pbnZhbGlkYXRlKHBoeXNfYWRkcl90IHBh
ZGRyLA0KPiA+ICt1bnNpZ25lZCBsb25nIHNpemUpIHsNCj4gPiArCXdyaXRlcShGSUVMRF9QUkVQ
KFNUQVJMSU5LX0NBQ0hFX0FERFJFU1NfUkFOR0VfTUFTSywNCj4gcGFkZHIpLA0KPiA+ICsJICAg
ICAgIHN0YXJsaW5rX2NhY2hlX3ByaXYuYmFzZV9hZGRyICsNCj4gU1RBUkxJTktfQ0FDSEVfRkxV
U0hfU1RBUlRfQUREUik7DQo+ID4gKwl3cml0ZXEoRklFTERfUFJFUChTVEFSTElOS19DQUNIRV9B
RERSRVNTX1JBTkdFX01BU0ssDQo+IHBhZGRyICsgc2l6ZSksDQo+ID4gKwkgICAgICAgc3Rhcmxp
bmtfY2FjaGVfcHJpdi5iYXNlX2FkZHIgKw0KPiA+ICtTVEFSTElOS19DQUNIRV9GTFVTSF9FTkRf
QUREUik7DQo+ID4gKw0KPiA+ICsJbWIoKTsNCj4gPiArCXdyaXRlcShGSUVMRF9QUkVQKFNUQVJM
SU5LX0NBQ0hFX0ZMVVNIX0NUTF9NT0RFX01BU0ssDQo+ID4gKwkJCSAgU1RBUkxJTktfQ0FDSEVf
RkxVU0hfQ1RMX01BS0VfSU5WQUxJREFURSksDQo+ID4gKwkgICAgICAgc3RhcmxpbmtfY2FjaGVf
cHJpdi5iYXNlX2FkZHIgKyBTVEFSTElOS19DQUNIRV9GTFVTSF9DVEwpOw0KPiA+ICsNCj4gPiAr
CXN0YXJsaW5rX2NhY2hlX2ZsdXNoX2NvbXBsZXRlKCk7DQo+ID4gK30NCj4gPiArDQo+ID4gK3N0
YXRpYyB2b2lkIHN0YXJsaW5rX2NhY2hlX2RtYV9jYWNoZV93YmFja19pbnYocGh5c19hZGRyX3Qg
cGFkZHIsDQo+ID4gK3Vuc2lnbmVkIGxvbmcgc2l6ZSkgew0KPiA+ICsJd3JpdGVxKEZJRUxEX1BS
RVAoU1RBUkxJTktfQ0FDSEVfQUREUkVTU19SQU5HRV9NQVNLLA0KPiBwYWRkciksDQo+ID4gKwkg
ICAgICAgc3RhcmxpbmtfY2FjaGVfcHJpdi5iYXNlX2FkZHIgKw0KPiBTVEFSTElOS19DQUNIRV9G
TFVTSF9TVEFSVF9BRERSKTsNCj4gPiArCXdyaXRlcShGSUVMRF9QUkVQKFNUQVJMSU5LX0NBQ0hF
X0FERFJFU1NfUkFOR0VfTUFTSywNCj4gcGFkZHIgKyBzaXplKSwNCj4gPiArCSAgICAgICBzdGFy
bGlua19jYWNoZV9wcml2LmJhc2VfYWRkciArDQo+ID4gK1NUQVJMSU5LX0NBQ0hFX0ZMVVNIX0VO
RF9BRERSKTsNCj4gPiArDQo+ID4gKwltYigpOw0KPiA+ICsJd3JpdGVxKEZJRUxEX1BSRVAoU1RB
UkxJTktfQ0FDSEVfRkxVU0hfQ1RMX01PREVfTUFTSywNCj4gPiArCQkJICBTVEFSTElOS19DQUNI
RV9GTFVTSF9DVExfQ0xFQU5fSU5WQUxJREFURSksDQo+ID4gKwkgICAgICAgc3RhcmxpbmtfY2Fj
aGVfcHJpdi5iYXNlX2FkZHIgKyBTVEFSTElOS19DQUNIRV9GTFVTSF9DVEwpOw0KPiA+ICsNCj4g
PiArCXN0YXJsaW5rX2NhY2hlX2ZsdXNoX2NvbXBsZXRlKCk7DQo+ID4gK30NCj4gPiArDQo+ID4g
K3N0YXRpYyBjb25zdCBzdHJ1Y3QgcmlzY3Zfbm9uc3RkX2NhY2hlX29wcyBzdGFybGlua19jYWNo
ZV9vcHMgPSB7DQo+ID4gKwkud2JhY2sgPSAmc3RhcmxpbmtfY2FjaGVfZG1hX2NhY2hlX3diYWNr
LA0KPiA+ICsJLmludiA9ICZzdGFybGlua19jYWNoZV9kbWFfY2FjaGVfaW52YWxpZGF0ZSwNCj4g
PiArCS53YmFja19pbnYgPSAmc3RhcmxpbmtfY2FjaGVfZG1hX2NhY2hlX3diYWNrX2ludiwNCj4g
PiArfTsNCj4gPiArDQo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHN0YXJs
aW5rX2NhY2hlX2lkc1tdID0gew0KPiA+ICsJeyAuY29tcGF0aWJsZSA9ICJzdGFyZml2ZSxqaDgx
MDAtc3RhcmxpbmstY2FjaGUiIH0sDQo+ID4gKwl7IC8qIHNlbnRpbmVsICovIH0NCj4gPiArfTsN
Cj4gPiArDQo+ID4gK3N0YXRpYyBpbnQgX19pbml0IHN0YXJsaW5rX2NhY2hlX2luaXQodm9pZCkg
ew0KPiA+ICsJc3RydWN0IGRldmljZV9ub2RlICpucDsNCj4gPiArCXUzMiBibG9ja19zaXplID0g
MDsNCj4gDQo+IFlvdSByZXR1cm4gZWFybHkgaWYgb2ZfcHJvcGVydHlfcmVhZF91MzIoKSBmYWls
cywgc28gdGhpcyBkb2Vzbid0IG5lZWQgdG8gYmUNCj4gaW5pdGlhbGl6ZWQuDQo+IA0KPiA+ICsJ
aW50IHJldDsNCj4gPiArDQo+ID4gKwlucCA9IG9mX2ZpbmRfbWF0Y2hpbmdfbm9kZShOVUxMLCBz
dGFybGlua19jYWNoZV9pZHMpOw0KPiA+ICsJaWYgKCFvZl9kZXZpY2VfaXNfYXZhaWxhYmxlKG5w
KSkNCj4gPiArCQlyZXR1cm4gLUVOT0RFVjsNCj4gPiArDQo+ID4gKwlyZXQgPSBvZl9wcm9wZXJ0
eV9yZWFkX3UzMihucCwgImNhY2hlLWJsb2NrLXNpemUiLCAmYmxvY2tfc2l6ZSk7DQo+ID4gKwlp
ZiAocmV0KQ0KPiA+ICsJCXJldHVybiByZXQ7DQo+ID4gKw0KPiA+ICsJaWYgKGJsb2NrX3NpemUg
JSBTVEFSTElOS19DQUNIRV9BTElHTikNCj4gPiArCQlyZXR1cm4gLUVJTlZBTDsNCj4gPiArDQo+
ID4gKwlzdGFybGlua19jYWNoZV9wcml2LmJhc2VfYWRkciA9IG9mX2lvbWFwKG5wLCAwKTsNCj4g
PiArCWlmICghc3RhcmxpbmtfY2FjaGVfcHJpdi5iYXNlX2FkZHIpDQo+ID4gKwkJcmV0dXJuIC1F
Tk9NRU07DQo+ID4gKw0KPiA+ICsJcmlzY3ZfY2JvbV9ibG9ja19zaXplID0gYmxvY2tfc2l6ZTsN
Cj4gPiArCXJpc2N2X25vbmNvaGVyZW50X3N1cHBvcnRlZCgpOw0KPiA+ICsJcmlzY3Zfbm9uY29o
ZXJlbnRfcmVnaXN0ZXJfY2FjaGVfb3BzKCZzdGFybGlua19jYWNoZV9vcHMpOw0KPiA+ICsNCj4g
PiArCXJldHVybiAwOw0KPiA+ICt9DQo+ID4gK2Vhcmx5X2luaXRjYWxsKHN0YXJsaW5rX2NhY2hl
X2luaXQpOw0KPiANCj4gVGhlIHNpZml2ZSBkcml2ZXIgZ2V0cyBhd2F5IHdpdGggYXJjaF9pbml0
Y2FsbCgpIGhlcmUuIEFueSBwYXJ0aWN1bGFyIHJlYXNvbiB5b3UNCj4gbmVlZCB0aGlzIGVhcmxp
ZXI/DQoNCkkgd2lsbCBjaGFuZ2UgaXQgdG8gYXJjaF9pbml0Y2FsbCgpLiBBcHByZWNpYXRlIGZv
ciB0aGUgY29tbWVudHMuDQoNClRoYW5rIHlvdS4NCg0KUmVnYXJkcywNCkpvc2h1YQ0KDQo+IA0K
PiA+IC0tDQo+ID4gMi4yNS4xDQo+ID4NCj4gPg0KPiA+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4gbGludXgtcmlzY3YgbWFpbGluZyBsaXN0DQo+
ID4gbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiA+IGh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcmlzY3YNCg==

