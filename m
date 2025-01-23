Return-Path: <devicetree+bounces-140665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 28061A1AD4A
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 00:40:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EE06E1887B44
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 23:40:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97ED61D54FA;
	Thu, 23 Jan 2025 23:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="AQCb1dR9"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDA81CEE8C
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 23:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737675641; cv=none; b=A4uKRimxa0U2PbG1IJImsVTABSiQzWw0Zlmp7Dhs3Eh2pqwkjTIZzR3WagGLJoxiGcje7w29YEd8SUgYwkA7PLbzAXiGdRFaDBZE1EcoESRrot+eDeZjgIWTDut69/CbFx1C5nYkg5hlPzEy7a0yZoN+bHnx3HyK6T2CpPLppSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737675641; c=relaxed/simple;
	bh=naGJoKlusPjeDx6rLgV25UEz3eA5xe0K9N5YUejszx4=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=VYSOIAMB+w2gRty7uSsdlmSYxCBD8VmtzbKOo0MXUHTvi89bmsZfmeLLshH/51CRWj3qZLHxGYH2dkU8FgYa1VU4Dq2Rm9YRNOn2awm/Nm6l3Cm+pORH4s94HiS50I+zTL7BfMBegK4UVUVZC1XGCY3JzyAAAjA2+hTvJxZfZts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=AQCb1dR9; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id AFBF12C0358;
	Fri, 24 Jan 2025 12:40:30 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1737675630;
	bh=naGJoKlusPjeDx6rLgV25UEz3eA5xe0K9N5YUejszx4=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=AQCb1dR9zJsRNa8VCkE+wls1Z0vvi1OHX63fF8CML8jIyyT08yoqShxGnNygkTDtC
	 wuof7kvCGsIAUekwt6OFZ+wiAlWadETUeDSE9iprArCdBUDzdS0sBoHWYHr+4PHwBv
	 3WRUOZOt+K5MGflw9gx6rPvX6TiJPVS1tEYLS0oQ+fSLjUAPvXqQSLfIts/ACj89cE
	 8sZeIm/DqpDyO3GiPb9AR+kY5dB8yrvATSH7FoF+xzs5PCvIXQPGelhKe11pxt1TnV
	 ABecOBybCNdUzyDUmYu4SmMtO9+fCjnIdMTz0dmMUSr9HIr4FiVKcC8ThIVSwP7ITl
	 oyVI9PTYe3n9w==
Received: from svr-chch-ex2.atlnz.lc (Not Verified[2001:df5:b000:bc8::76]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B6792d36e0001>; Fri, 24 Jan 2025 12:40:30 +1300
Received: from svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8:f753:6de:11c0:a008) by
 svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8:f753:6de:11c0:a008) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 24 Jan 2025 12:40:30 +1300
Received: from svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567]) by
 svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567%15]) with mapi id
 15.02.1544.014; Fri, 24 Jan 2025 12:40:30 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: Andrew Lunn <andrew@lunn.ch>
CC: Krzysztof Kozlowski <krzk@kernel.org>, "lee@kernel.org" <lee@kernel.org>,
	"robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
	<davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
	"kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
	"tsbogend@alpha.franken.de" <tsbogend@alpha.franken.de>,
	"hkallweit1@gmail.com" <hkallweit1@gmail.com>, "linux@armlinux.org.uk"
	<linux@armlinux.org.uk>, "sander@svanheule.net" <sander@svanheule.net>,
	"markus.stockhausen@gmx.de" <markus.stockhausen@gmx.de>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>
Subject: Re: [PATCH v4 1/4] dt-bindings: net: Add Realtek MDIO controller
Thread-Topic: [PATCH v4 1/4] dt-bindings: net: Add Realtek MDIO controller
Thread-Index: AQHbavAadjwojqGz4UuNGuTShat73rMhmt0AgAJkrgCAABdsAIAAGZmA
Date: Thu, 23 Jan 2025 23:40:30 +0000
Message-ID: <b03b5d67-2df6-40da-adea-2339445797b2@alliedtelesis.co.nz>
References: <20250120040214.2538839-1-chris.packham@alliedtelesis.co.nz>
 <20250120040214.2538839-2-chris.packham@alliedtelesis.co.nz>
 <20250122-obedient-owl-from-ganymede-4a8343@krzk-bin>
 <6b026af2-62bc-4b7d-abc7-d4c6a99bd848@alliedtelesis.co.nz>
 <95923d9b-bf37-4256-a342-f71f4d814383@lunn.ch>
In-Reply-To: <95923d9b-bf37-4256-a342-f71f4d814383@lunn.ch>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
Content-Type: text/plain; charset="utf-8"
Content-ID: <5821FB4ED200D04BBDCF7F33145896E5@alliedtelesis.co.nz>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SEG-SpamProfiler-Analysis: v=2.4 cv=BNQQr0QG c=1 sm=1 tr=0 ts=6792d36e a=Xf/6aR1Nyvzi7BryhOrcLQ==:117 a=xqWC_Br6kY4A:10 a=75chYTbOgJ0A:10 a=IkcTkHD0fZMA:10 a=VdSt8ZQiCzkA:10 a=g0uezqWfbaqGTy7dc40A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-SEG-SpamProfiler-Score: 0

DQpPbiAyNC8wMS8yMDI1IDExOjA4LCBBbmRyZXcgTHVubiB3cm90ZToNCj4+Pj4gKyAgICAgICAg
cHJvcGVydGllczoNCj4+Pj4gKyAgICAgICAgICByZWFsdGVrLHBvcnQ6DQo+Pj4+ICsgICAgICAg
ICAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzINCj4+Pj4g
KyAgICAgICAgICAgIGRlc2NyaXB0aW9uOg0KPj4+PiArICAgICAgICAgICAgICBUaGUgTURJTyBj
b21tdW5pY2F0aW9uIG9uIHRoZSBSVEw5MzAwIGlzIGFic3RyYWN0ZWQgYnkgdGhlIHN3aXRjaC4g
QXQNCj4+Pj4gKyAgICAgICAgICAgICAgdGhlIHNvZnR3YXJlIGxldmVsIGNvbW11bmljYXRpb24g
dXNlcyB0aGUgc3dpdGNoIHBvcnQgdG8gYWRkcmVzcyB0aGUNCj4+Pj4gKyAgICAgICAgICAgICAg
UEhZIHdpdGggdGhlIGFjdHVhbCBNRElPIGJ1cyBhbmQgYWRkcmVzcyBoYXZpbmcgYmVlbiBzZXR1
cCB2aWEgdGhlDQo+Pj4+ICsgICAgICAgICAgICAgIHBhcmVudCBtZGlvLWJ1cyBhbmQgcmVnIHBy
b3BlcnR5Lg0KPj4+IEkgZG9uJ3QgcXVpdGUgZ2V0IHdoeSB0aGlzIGNhbm5vdCBiZSB0aGUgJ3Jl
ZycgcHJvcGVydHkuIEkgdW5kZXJzdG9vZCB0aGF0DQo+Pj4gJ3JlZycgb2YgdGhpcyBub2RlIGlz
IG5vdCByZWFsbHkgdXNlZD8gT3IgeW91IG1lYW50IGhlcmUgdGhpcyAncmVnJywgbm90DQo+Pj4g
cGFyZW50J3MgJ3JlZyc/DQo+PiBJdCdzIGlzIGEgYml0IGNvbmZ1c2luZyAoYW55IHN1Z2dlc3Rp
b25zIGZvciBpbXByb3ZpbmcgdGhlIGRlc2NyaXB0aW9uDQo+PiBhbmQvb3IgY29tbWl0IG1lc3Nh
Z2UgYXJlIHdlbGNvbWUpLg0KPiBJIGRvbid0IGtub3cgaWYgaXQgd2lsbCBhY3R1YWxseSBoZWxw
LCBidXQuLi4uDQo+DQo+IFdlIGhhdmUgdHdvIGVudGFuZ2xlZCBjb25maWd1cmF0aW9ucyBoZXJl
Lg0KPg0KPiAxKSBZb3UgaGF2ZSA0IE1ESU8gYnVzc2VzIHdoaWNoIHlvdSBuZWVkIHRvIGRlc2Ny
aWJlIHVzaW5nIG1kaW8ueWFtbA0KPiAgICAgSW4gdGhpcyBiaW5kaW5nLCByZWcgaXMgdGhlIGFk
ZHJlc3Mgb2YgdGhlIGRldmljZSBvbiB0aGUgYnVzLCBpbg0KPiAgICAgdGhlIHJhbmdlIDAtMzEu
DQo+DQo+IDIpIFRoZSBoYXJkd2FyZSB3YXMgYSBwb29sIG9mIFBIWXMgd2hpY2ggeW91IGNhbiBt
YXAgdG8gYWRkcmVzcyBvbiB0aGUNCj4gICAgIE1ESU8gYnVzc2VzLg0KPg0KPiBSYXRoZXIgdGhh
biBjb21iaW5pbmcgdGhlbSwgbWF5YmUgaXQgd291bGQgYmUgYmV0dGVyIHRvIGtlZXAgdGhlbQ0K
PiBzZXBhcmF0ZS4gSXQgaXMgcHJvYmFibHkgbW9yZSBlcnJvciBwcm9uZSwgYnV0IHNpbXBsZXIg
dG8NCj4gdW5kZXJzdGFuZC4gQW5kIGhvcGVmdWxseSBlcnJvcnMgcmVzdWx0IGluIFBIWXMgbm90
IGJlaW5nIGZvdW5kIGR1cmluZw0KPiBwcm9iZSwgc28gdGhlIHByb2JsZW1zIGFyZSBvYnZpb3Vz
Lg0KPg0KPiBNYXliZSB5b3UgY2FuIGFjdHVhbGx5IHVzZSBwaGFuZGxlcy4gWW91IGhhdmUgdGhl
IHVzdWFsIE1ESU8gYnVzDQo+IG5vZGVzOg0KPg0KPiAgICAgIG1kaW9ANWMwMzAwMDAgew0KPiAg
ICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsNCj4gICAgICAgICAgI3NpemUtY2VsbHMgPSA8
MD47DQo+DQo+ICAgICAgICAgIGV0aHBoeTA6IGV0aGVybmV0LXBoeUAxIHsNCj4gICAgICAgICAg
ICAgIHJlZyA9IDwxPjsNCj4gICAgICAgICAgfTsNCj4NCj4gICAgICAgICAgZXRocGh5MTogZXRo
ZXJuZXQtcGh5QDMgew0KPiAgICAgICAgICAgICAgcmVnID0gPDM+Ow0KPiAgICAgICAgICB9Ow0K
PiAgICAgIH07DQo+DQo+ICAgICAgbWRpb0A1YzA0MDAwMCB7DQo+ICAgICAgICAgICNhZGRyZXNz
LWNlbGxzID0gPDE+Ow0KPiAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwwPjsNCj4NCj4gICAgICAg
ICAgZXRocGh5MjogZXRoZXJuZXQtcGh5QDEgew0KPiAgICAgICAgICAgICAgcmVnID0gPDE+Ow0K
PiAgICAgICAgICB9Ow0KPg0KPiAgICAgICAgICBldGhwaHkzOiBldGhlcm5ldC1waHlAMyB7DQo+
ICAgICAgICAgICAgICByZWcgPSA8Mz47DQo+ICAgICAgICAgIH07DQo+ICAgICAgfTsNCj4NCj4g
ICAgICBtZGlvQDVjMDUwMDAwIHsNCj4gICAgICAgICAuLi4NCj4gICAgICB9DQo+DQo+ICAgICAg
bWRpb0A1YzA2MDAwMCB7DQo+ICAgICAgICAgLi4uDQo+ICAgICAgfQ0KPg0KPiAgICAgIEFuZCB0
aGVuIGEgbm9kZSB3aGljaCBpcyBhIGxpc3Qgb2YgUEhZIHBoYW5kbGVzOg0KPg0KPiAgICAgIFsm
ZXRocGh5MCwgJmV0aHBoeTEsICZldGhwaHkyLCAmZXRocGh5MywgLi4uLl0NCj4NCj4gVGhlIDB0
aCBlbnRyeSBpbiB0aGUgbGlzdCB0ZWxscyB5b3UgaGF2ZSB0byBtYXAgdGhlIDB0aCBQSFkgaW4g
dGhlDQo+IHBvb2wgdG8gYW4gTURJTyBidXMgYW5kIGFkZHJlc3MuIEZvbGxvdyB0aGUgcGhhbmRs
ZSB0byBnZXQgdGhlIE1ESU8NCj4gYnVzIGFuZCB0aGUgYWRkcmVzcyBvbiB0aGUgYnVzLg0KDQpB
IGZ1bGxlciBkdHMgd291bGQgYmUgc29tZXRoaW5nIGxpa2UgdGhpcyAoZm9yIHRoZSA4LXBvcnQg
Ym9hcmQgSSBoYXZlIA0KaW4gZnJvbnQgb2YgbWUpDQoNCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgbWRpby1jb250cm9sbGVyQGNhMDAgew0KIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0bDkzMDEtbWRp
byI7DQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcg
PSA8MHhjYTAwPjsNCg0KIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgbWRpby1idXNAMCB7DQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4MDA+Ow0KIMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGV0aHBoeTA6
IGV0aGVybmV0LXBoeUAwIHsNCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4MDA+Ow0K
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gDQoiZXRoZXJuZXQtcGh5LWllZWU4
MDIuMy1jNDUiOw0KIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIH07DQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZXRocGh5MTogZXRoZXJuZXQtcGh5QDEgew0K
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8MHgwMT47DQogwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGNvbXBhdGlibGUgPSANCiJldGhlcm5ldC1waHktaWVlZTgwMi4zLWM0NSI7DQogwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fTsNCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBldGhwaHkyOiBldGhlcm5ldC1waHlAMiB7DQogwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHJlZyA9IDwweDAyPjsNCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9IA0K
ImV0aGVybmV0LXBoeS1pZWVlODAyLjMtYzQ1IjsNCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Ow0KIMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGV0aHBoeTM6
IGV0aGVybmV0LXBoeUAzIHsNCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4MDM+Ow0K
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gDQoiZXRoZXJuZXQtcGh5LWllZWU4
MDIuMy1jNDUiOw0KIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIH07DQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB9Ow0KIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgbWRpby1idXNAMSB7DQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4MDE+Ow0KIMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGV0aHBo
eTQ6IGV0aGVybmV0LXBoeUA4IHsNCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4MDA+
Ow0KIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gDQoiZXRoZXJuZXQtcGh5LWll
ZWU4MDIuMy1jNDUiOw0KIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07DQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZXRocGh5NTogZXRoZXJuZXQtcGh5QDkg
ew0KIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8MHgwMT47DQogwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGNvbXBhdGlibGUgPSANCiJldGhlcm5ldC1waHktaWVlZTgwMi4zLWM0NSI7DQogwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgfTsNCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBldGhwaHk2OiBldGhlcm5ldC1waHlAMTAgew0KIMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCByZWcgPSA8MHgwMj47DQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUg
PSANCiJldGhlcm5ldC1waHktaWVlZTgwMi4zLWM0NSI7DQogwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsNCiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBldGhw
aHk3OiBldGhlcm5ldC1waHlAMTEgew0KIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8MHgw
Mz47DQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSANCiJldGhlcm5ldC1waHkt
aWVlZTgwMi4zLWM0NSI7DQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsNCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIH07DQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCByZWFsdGVrLHBvcnRzID0gWyZldGhwaHkwLCAmZXRocGh5MSwgJmV0aHBo
eTIsIA0KJmV0aHBoeTMsDQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIC8qIG5lZWQg
YSBnYXAgaGVyZSANCmFzIHRoZXJlIGFyZSA0IHVudXNlZCBwb3J0cyovDQogwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAwLCAwLCAwLCAwLA0KIMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJmV0aHBoeTQsICZldGhwaHk1LCANCiZl
dGhwaHk2LCAmZXRocGh5N107DQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07DQoN
CkkgY291bGQgcHJvYmFibHkgbWFrZSBpdCB3b3JrIGJ1dCBJJ20gbm90IHN1cmUgdGhhdCBpdCBp
cyBhbnkgbW9yZSANCnVuZGVyc3RhbmRhYmxlLg0K

