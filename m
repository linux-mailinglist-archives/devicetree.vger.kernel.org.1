Return-Path: <devicetree+bounces-200169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08608B1390B
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 12:34:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 40127174929
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 10:34:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C898B21B199;
	Mon, 28 Jul 2025 10:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="G/Yk4QfI"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot04.ext.ti.com (fllvem-ot04.ext.ti.com [198.47.19.246])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9A4428FD;
	Mon, 28 Jul 2025 10:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.246
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753698881; cv=none; b=Ezcccfv+i2jNHtG+6AeBHZ+x0uuF9OMvsCGJRMyAvfXn8sntYVCVL6pLDErlHtjy1AWemQHIdGFu3PnE1vKSQmVzTxWDUCoZv66qUw3/Qv7GMaG+G0Tq5cXC9/KXAfQCvyYZ3c1s7OgSOV3P4HT+7JFZNUD5IouG47qr8D2wOvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753698881; c=relaxed/simple;
	bh=gorbOLRxJT0JdIMGPDRSTq3Ywcr3uu/Euag8Tbd4C2k=;
	h=From:To:CC:Subject:Date:Message-ID:Content-Type:MIME-Version; b=cKmJ4ljynWQFaRoufPHKMmnvp8g568Aoghy5msWx4a9GeaJlKztz/Kstxwf/h7Ve7uCYDAT1kH9/p83dBd7JDCZhSZlpGe8jccTWvlSCbEJonbUSIrR54YXrCwFP5gk+UtBia9+oZJDcBahlIJB/aMr/gGPB0ZOG1PCW41HuTK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=G/Yk4QfI; arc=none smtp.client-ip=198.47.19.246
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllvem-sh04.itg.ti.com ([10.64.41.54])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTP id 56SAML7s2707653;
	Mon, 28 Jul 2025 05:22:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1753698141;
	bh=gorbOLRxJT0JdIMGPDRSTq3Ywcr3uu/Euag8Tbd4C2k=;
	h=From:To:CC:Subject:Date;
	b=G/Yk4QfIpbL6qJO59zWLztuoM2PbManCyPA85XlE0u4XGWnGRDDPNc9krvZDUu9NI
	 1e7RsW2XMfthLuiFVE1T0XDCj3Tn6oZSeVSaoieG9tb2b+0w6+HAQU+RhvFpFhwC1O
	 tRK7mAsGpXpg1/z62BYChW+mDdu1+pDRdgkMNs7E=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
	by fllvem-sh04.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 56SAMKvq1621296
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Mon, 28 Jul 2025 05:22:20 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Mon, 28
 Jul 2025 05:22:19 -0500
Received: from DLEE107.ent.ti.com ([fe80::1c91:43d:d71:d7b6]) by
 DLEE107.ent.ti.com ([fe80::1c91:43d:d71:d7b6%17]) with mapi id
 15.01.2507.055; Mon, 28 Jul 2025 05:22:19 -0500
From: "Holalu Yogendra, Niranjan" <niranjan.hy@ti.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: "broonie@kernel.org" <broonie@kernel.org>,
        "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
        "tiwai@suse.de" <tiwai@suse.de>,
        "alsa-devel@alsa-project.org"
	<alsa-devel@alsa-project.org>,
        "Xu, Baojun" <baojun.xu@ti.com>,
        "Ding,
 Shenghao" <shenghao-ding@ti.com>,
        "liam.r.girdwood@intel.com"
	<liam.r.girdwood@intel.com>,
        "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
        "robh@kernel.org" <robh@kernel.org>,
        "linux-sound@vger.kernel.org"
	<linux-sound@vger.kernel.org>,
        "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>,
        "Navada Kanyana, Mukund" <navada@ti.com>,
        "Hampiholi, Vallabha" <v-hampiholi@ti.com>
Subject: Re: [PATCH v3 2/4] dt-bindings: sound: bindings for tac5x1x family of
 codecs
Thread-Topic: [PATCH v3 2/4] dt-bindings: sound: bindings for tac5x1x family
 of codecs
Thread-Index: Adv/pqCHhQ7Z5pboSlmxx2N4LsHPtw==
Date: Mon, 28 Jul 2025 10:22:18 +0000
Message-ID: <a5c23c7928da403fafe24c1de0fc6412@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-c2processedorg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

SGkgS3J6eXN6dG9mLA0KDQpUaGFua3MgZm9yIHRoZSBkZXRhaWxlZCByZXZpZXcgY29tbWVudHMu
IA0KUmVxdWVzdCB5b3UgdG8gdGFrZSBhIGxvb2sgYXQgY29tbWVudHMgYmVsb3cuIA0KDQpPbiBG
cmksIEp1biAyNywgMjAyNSBhdCAxOjE4IFBNICswNTMwLCBLcnp5c3p0b2YgS296bG93c2tpIHdy
b3RlOg0KPiBPbiBUaHUsIEp1biAyNiwgMjAyNSBhdCAxMTo0MzozMVBNICswNTMwLCBOaXJhbmph
biBIIFkgd3JvdGU6DQo+ID4gKyAgdGksdnJlZjoNCj4gPiArICAgIGRlc2NyaXB0aW9uOiBWUkVG
IHJlcXVpcmVkIHZvbHRhZ2UuIElmIG5vZGUgaXMgb21pdHRlZCB0aGVuIFZSRUYgaXMNCj4gVm9s
dGFnZSBpcyBpbiBtaWNyb3ZvbHQuIFVzZSBwcm9wZXIgc3VmZml4L3ZhbHVlcy4NCklzIHRoaXMg
Y29udmVudGlvbiA/IElzIHRoZXJlIGFueSBkb2N1bWVudCBvbiB0aGVzZSBJIGNhbiByZWZlciA/
DQo+IA0KPiA+ICsgICAgb25lT2Y6DQo+ID4gKyAgICAgIC0gY29uc3Q6IDANCj4gPiArICAgICAg
ICBkZXNjcmlwdGlvbjogVlJFRiBvdXRwdXQgaXMgcG93ZXJlZCB0byAyLjc1Vi4NCj4gPiArICAg
ICAgLSBjb25zdDogMQ0KPiA+ICsgICAgICAgIGRlc2NyaXB0aW9uOiBWUkVGIG91dHB1dCBpcyBw
b3dlcmVkIHRvIDIuNVYuDQo+ID4gKyAgICAgIC0gY29uc3Q6IDINCj4gPiArICAgICAgICBkZXNj
cmlwdGlvbjogVlJFRiBvdXRwdXQgaXMgcG93ZXJlZCB0byAxLjM3NVYuDQoNCj4gPiArICB0aSxn
cGlvcy1mdW5jOg0KPiA+ICsgICAgZGVzY3JpcHRpb246IHwNCj4gPiArICAgICAgQXJyYXkgaW5k
aWNhdGluZyB0aGUgR1BJTzEsIEdQSU8yLCBHUE8xIEZ1bmN0aW9uYWxpdHkgaW4gdGhlIHNhbWUg
b3JkZXIuDQo+ID4gKyAgICAgIEVhY2ggaW50ZWdlciBlbGVtbmVudCBpbiB0aGUgYXJyYXkgcmVw
cmVzZW50IHRoZSBmb2xsb3dpbmcNCj4gPiArICAgICAgLSAwICBUQUM1WDFYX0dQSU9fRElTQUJM
RSAgICAgICAgLSBHUElPIGlzIERpc2FibGVkDQo+ID4gKyAgICAgIC0gMSAgVEFDNVgxWF9HUElP
X0dQSSAgICAgICAgICAgIC0gR2VuZXJhbCBQdXJwb3NlIElucHV0DQo+ID4gKyAgICAgIC0gMiAg
QURDM1hYWF9HUElPX0dQTyAgICAgICAgICAgIC0gR2VuZXJhbCBQdXJwb3NlIE91dHB1dA0KPiA+
ICsgICAgICAtIDMgIFRBQzVYMVhfR1BJT19JUlEgICAgICAgICAgICAtIENoaXAgSW50ZXJydXB0
DQo+ID4gKyAgICAgIC0gNCAgVEFDNVgxWF9HUElPX1BETUNMSyAgICAgICAgIC0gUERNIENMSyBP
dXRwdXQNCj4gPiArICAgICAgLSA1ICBUQUM1WDFYX0dQSU9fUF9ET1VUICAgICAgICAgLSBQcmlt
YXJ5IEFTSSBET1VUDQo+ID4gKyAgICAgIC0gNiAgVEFDNVgxWF9HUElPX1BfRE9VVDIgICAgICAg
IC0gUHJpbWFyeSBBU0kgRE9VVDINCj4gPiArICAgICAgLSA3ICBUQUM1WDFYX0dQSU9fU19ET1VU
ICAgICAgICAgLSBTZWNvbmRhcnkgQVNJIERPVVQNCj4gPiArICAgICAgLSA4ICBUQUM1WDFYX0dQ
SU9fU19ET1VUMiAgICAgICAgLSBTZWNvbmRhcnkgQVNJIERPVVQyDQo+ID4gKyAgICAgIC0gOSAg
VEFDNVgxWF9HUElPX1NfQkNMSyAgICAgICAgIC0gU2Vjb25kYXJ5IEJDTEsgT3V0cHV0DQo+ID4g
KyAgICAgIC0gMTAgVEFDNVgxWF9HUElPX1NfRlNZTkMgICAgICAgLSBTZWNvbmRhcnkgRlNZTkMg
T3V0cHV0DQo+ID4gKyAgICAgIC0gMTEgVEFDNVgxWF9HUElPX0NMS09VVCAgICAgICAgLSBHZW5l
cmFsIFB1cnBvc2UgT3V0cHV0DQo+ID4gKyAgICAgIC0gMTIgVEFDNVgxWF9HUElPX0RPVVRfTVVY
DQo+ID4gKyAgICAgIC0gMTMgVEFDNVgxWF9HUElPX0RBSVNZX09VVA0KPiA+ICsgICAgJHJlZjog
L3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvdWludDMyLWFycmF5DQo+ID4gKyAgICBt
aW5JdGVtczogMw0KPiA+ICsgICAgbWF4SXRlbXM6IDMNCj4gDQo+IERvbid0IGVuY29kZSBncGlv
cyBhbmQgcGlucyBhcyBzb21lIGN1c3RvbSBwcm9wZXJ0aWVzLg0KQ291bGQgeW91IHBsZWFzZSBz
dWdnZXN0IHdoYXQgaXMgdGhlIGFsdGVybmF0aXZlLg0KUGxlYXNlIHN1Z2dlc3Qgc29tZSBleGFt
cGxlIHdoaWNoIEkgY2FuIHJlZmVyID8gDQoNClJlZ2FyZHMNCk5pcmFuamFuDQoNCg==

