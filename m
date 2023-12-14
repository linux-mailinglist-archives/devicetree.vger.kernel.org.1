Return-Path: <devicetree+bounces-25056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D238123EF
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 01:35:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 88FE11F20FEC
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 00:35:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81D2D38E;
	Thu, 14 Dec 2023 00:35:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E3DEC9;
	Wed, 13 Dec 2023 16:34:56 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 15D3C24E25A;
	Thu, 14 Dec 2023 08:34:54 +0800 (CST)
Received: from EXMBX067.cuchost.com (172.16.6.67) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 14 Dec
 2023 08:34:53 +0800
Received: from EXMBX066.cuchost.com (172.16.7.66) by EXMBX067.cuchost.com
 (172.16.6.67) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 14 Dec
 2023 08:34:53 +0800
Received: from EXMBX066.cuchost.com ([fe80::5947:9245:907e:339f]) by
 EXMBX066.cuchost.com ([fe80::5947:9245:907e:339f%17]) with mapi id
 15.00.1497.044; Thu, 14 Dec 2023 08:34:53 +0800
From: JeeHeng Sia <jeeheng.sia@starfivetech.com>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	"kernel@esmil.dk" <kernel@esmil.dk>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>, "krzk@kernel.org" <krzk@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "paul.walmsley@sifive.com"
	<paul.walmsley@sifive.com>, "palmer@dabbelt.com" <palmer@dabbelt.com>,
	"aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>, "daniel.lezcano@linaro.org"
	<daniel.lezcano@linaro.org>, "tglx@linutronix.de" <tglx@linutronix.de>,
	"conor@kernel.org" <conor@kernel.org>, "anup@brainfault.org"
	<anup@brainfault.org>, "gregkh@linuxfoundation.org"
	<gregkh@linuxfoundation.org>, "jirislaby@kernel.org" <jirislaby@kernel.org>,
	"michal.simek@amd.com" <michal.simek@amd.com>, Michael Zhu
	<michael.zhu@starfivetech.com>, "drew@beagleboard.org" <drew@beagleboard.org>
CC: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Leyfoon Tan
	<leyfoon.tan@starfivetech.com>
Subject: RE: [PATCH v3 6/6] riscv: dts: starfive: Add initial StarFive JH8100
 device tree
Thread-Topic: [PATCH v3 6/6] riscv: dts: starfive: Add initial StarFive JH8100
 device tree
Thread-Index: AQHaJFAfN2r53q/6u0mikZZoJRWxOLCfEf+AgAeiAoCAAUw4MA==
Date: Thu, 14 Dec 2023 00:34:53 +0000
Message-ID: <e18a1f301dfc403d966e4f050c87eb10@EXMBX066.cuchost.com>
References: <20231201121410.95298-1-jeeheng.sia@starfivetech.com>
 <20231201121410.95298-7-jeeheng.sia@starfivetech.com>
 <CAJM55Z831ucY4QqPTR_0zJVB05UUT4W-3M0CGzvtyPo=AMD=Vw@mail.gmail.com>
 <CAJM55Z-BJMi=rbe8op5EQ-efwo-9AbmavVE1BVJ9_xuHQzMhLQ@mail.gmail.com>
In-Reply-To: <CAJM55Z-BJMi=rbe8op5EQ-efwo-9AbmavVE1BVJ9_xuHQzMhLQ@mail.gmail.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-exchange-transport-fromentityheader: Hosted
x-yovoleruleagent: yovoleflag
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRW1pbCBSZW5uZXIgQmVy
dGhpbmcgPGVtaWwucmVubmVyLmJlcnRoaW5nQGNhbm9uaWNhbC5jb20+DQo+IFNlbnQ6IFdlZG5l
c2RheSwgRGVjZW1iZXIgMTMsIDIwMjMgODozOSBQTQ0KPiBUbzogRW1pbCBSZW5uZXIgQmVydGhp
bmcgPGVtaWwucmVubmVyLmJlcnRoaW5nQGNhbm9uaWNhbC5jb20+OyBKZWVIZW5nIFNpYSA8amVl
aGVuZy5zaWFAc3RhcmZpdmV0ZWNoLmNvbT47IGtlcm5lbEBlc21pbC5kazsNCj4gcm9iaCtkdEBr
ZXJuZWwub3JnOyBrcnp5c3p0b2Yua296bG93c2tpK2R0QGxpbmFyby5vcmc7IGtyemtAa2VybmVs
Lm9yZzsgY29ub3IrZHRAa2VybmVsLm9yZzsgcGF1bC53YWxtc2xleUBzaWZpdmUuY29tOw0KPiBw
YWxtZXJAZGFiYmVsdC5jb207IGFvdUBlZWNzLmJlcmtlbGV5LmVkdTsgZGFuaWVsLmxlemNhbm9A
bGluYXJvLm9yZzsgdGdseEBsaW51dHJvbml4LmRlOyBjb25vckBrZXJuZWwub3JnOw0KPiBhbnVw
QGJyYWluZmF1bHQub3JnOyBncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZzsgamlyaXNsYWJ5QGtl
cm5lbC5vcmc7IG1pY2hhbC5zaW1la0BhbWQuY29tOyBNaWNoYWVsIFpodQ0KPiA8bWljaGFlbC56
aHVAc3RhcmZpdmV0ZWNoLmNvbT47IGRyZXdAYmVhZ2xlYm9hcmQub3JnDQo+IENjOiBkZXZpY2V0
cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGlu
dXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgTGV5Zm9vbiBUYW4NCj4gPGxleWZvb24udGFuQHN0
YXJmaXZldGVjaC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjMgNi82XSByaXNjdjogZHRz
OiBzdGFyZml2ZTogQWRkIGluaXRpYWwgU3RhckZpdmUgSkg4MTAwIGRldmljZSB0cmVlDQo+IA0K
PiBFbWlsIFJlbm5lciBCZXJ0aGluZyB3cm90ZToNCj4gPiBTaWEgSmVlIEhlbmcgd3JvdGU6DQo+
ID4gPiBBZGQgaW5pdGlhbCBkZXZpY2UgdHJlZSBmb3IgdGhlIFN0YXJGaXZlIEpIODEwMCBSSVND
LVYgU29DLg0KPiA+ID4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFNpYSBKZWUgSGVuZyA8amVlaGVu
Zy5zaWFAc3RhcmZpdmV0ZWNoLmNvbT4NCj4gPiA+IFJldmlld2VkLWJ5OiBMZXkgRm9vbiBUYW4g
PGxleWZvb24udGFuQHN0YXJmaXZldGVjaC5jb20+DQo+ID4NCj4gPiBMb29rcyBnb29kIHRvIG1l
LCB0aGFua3MuDQo+ID4NCj4gPiBBY2tlZC1ieTogRW1pbCBSZW5uZXIgQmVydGhpbmcgPGVtaWwu
cmVubmVyLmJlcnRoaW5nQGNhbm9uaWNhbC5jb20+DQo+IA0KPiBJIGp1c3QgbGVhcm5lZCB0aGF0
IHRoaXMgSkg4MTAwIGlzIG5vdCBhY3R1YWxseSBhIHJlYWwgU29DIHlldCBidXQganVzdCBhbiBG
UEdBDQo+IGltcGxlbWVudGF0aW9uLCBhbmQgbm8gaW5kaWNhdGlvbiB0aGF0IHRoYXQncyBhY3R1
YWxseSBhIHByb2R1Y3QgdGhhdCB3aWxsIGJlDQo+IG1hc3MgcHJvZHVjZWQuIEhlbmNlIGEgbG90
IG9mIGRldGFpbHMgbWF5IGNoYW5nZSBiZWZvcmUgaXQgYmVjb21lcyBhIHJlYWwNCj4gU29DL3By
b2R1Y3QgcGVvcGxlIGNhbiBidXksIHNvIGxldCdzIG5vdCBhZGQgdGhpcyBkZXZpY2UgdHJlZSB5
ZXQgYmVmb3JlDQo+IGV2ZXJ5dGhpbmcgaXMgc2V0IGluIHNpbGljb24uDQo+IA0KPiBQbGVhc2Ug
Y29uc2lkZXIgbXkgQWNrZWQtYnkgYWJldmUgcmV2b2tlZC4NCj4gDQo+IFNpYSBKZWUgSGVuZzog
V2l0aCB0aGF0IHNhaWQgSSBzdGlsbCB0aGluayBpdCdzIHN1cGVyIGF3ZXNvbWUgdGhhdCB5b3Un
cmUNCj4gYmVnaW5uaW5nIHVwc3RyZWFtaW5nIHN1cHBvcnQgZm9yIHlvdXIgbmV3IFNvQ3MgZWFy
bHkuIEkgd2lzaCBtb3JlIFNvQyB2ZW5kb3JzDQo+IHdvdWxkIGZvbGxvdyB5b3VyIGV4YW1wbGUu
DQpIaSBFbWlsLCBJIGFtIG5vdCBzdXJlIHdoYXQgeW91IG1lYW4uIFdlIHZlcmlmaWVkIG9uIEZQ
R0EgJiBFbXVsYXRvciwgYW5kIHRoZSBsb2dpYw0KaXMgcHJldHR5IG11Y2ggY2xvc2UgdG8gdGhl
IHJlYWwgc2lsaWNvbi4gSSBkaWQgbWVudGlvbiB0aGF0IGluIHRoZSBjb3ZlciBsZXR0ZXIgYXMg
d2VsbC4NCkkgYW0gbmV3IHRvIExpbnV4LCBzbyBJIGFtIHdvbmRlcmluZyBpZiB0aGVyZSBpcyBh
IExpbnV4IHVwc3RyZWFtIGd1aWRlbGluZSBtZW50aW9uaW5nDQp0aGF0IHByZS1zaWxpY29uIHNv
ZnR3YXJlIGlzIG5vdCBhbGxvd2VkIHRvIHVwc3RyZWFtPyBIb3BlIHRoZXJlIGlzIGFuIHVwZGF0
ZWQgTGludXgNCnVwc3RyZWFtIGd1aWRlbGluZSB0aGF0IGJlbmVmaXQgb3RoZXIgdmVuZG9ycy4N
Cj4gDQo+IC9FbWlsDQo=

