Return-Path: <devicetree+bounces-81764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB0391D464
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 00:21:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A60331F213BD
	for <lists+devicetree@lfdr.de>; Sun, 30 Jun 2024 22:21:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C2AE76034;
	Sun, 30 Jun 2024 22:21:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="F9CcUMVH"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322E254FB5
	for <devicetree@vger.kernel.org>; Sun, 30 Jun 2024 22:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719786074; cv=none; b=jhZqEGAPj0on82a9ItsyFHagpDektrXinzw3v6jQssAL5mPKYdf3/HVhfjN3cSJXpDjZnD9vD4Z8OIEQkU9saXAp6+WY2z8RvC/UBwMudHQ55gXpEMLb/SBLVRMbg9pmWFF3MfqUIgCmxWxLh7Rp2tUMvpU2mQ3XiL6auVpRCzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719786074; c=relaxed/simple;
	bh=nOgpLH4FJZCWrvvr/n+yFPgBNQ1PcGFgd/SYvlL67lg=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=cMQbonuc9PZyQE+vMFWeOd73DH6fX+v7SDRIoJ4ggIVVFSlhk0N04KQIjcg7Nk68mgcbHf/BQWnU6xvALv7LGvDilrZ6dtCjprS1PMcjG+Ll/mv/4x4Kf00yNjHovul6KZR6p5OeNZgv/b13iOMJSBqUQPBsN6z3PMBAdx25oy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=F9CcUMVH; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 8679A2C0659;
	Mon,  1 Jul 2024 10:12:30 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1719785550;
	bh=nOgpLH4FJZCWrvvr/n+yFPgBNQ1PcGFgd/SYvlL67lg=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=F9CcUMVHER0JKF+Mk3IrPXQHTUdBRh0r/xq+PZ1vtvuXqmdvF637zixEtxJgNsAjh
	 RB+G3LonfJWaJh69Y0Xn7q2vxdGoYB5dG6XSaY9e+4bYTSY1B9Lwe4hyFzy7uisTnO
	 8ej/iBQ7xtWDUYi44NPg5uupa6uVj7iDO/IpOM4W4agp5b0Pu05DzvGy1NAGxfchEz
	 HSdW0pbqmOkAoqHsN0ggpHKlKTgfOmjhbydJLbsgoHS73rqSCf/traScmVIkgdOHot
	 nw+MkCkDzRQTIgRktl4lZQgrI583wLmeIxY4gLZ7hZ0hbnsB41nBdnIKjLLz6hL0c3
	 6Ho9G9S0h6QFQ==
Received: from svr-chch-ex2.atlnz.lc (Not Verified[2001:df5:b000:bc8::76]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B6681d84e0001>; Mon, 01 Jul 2024 10:12:30 +1200
Received: from svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8::76) by
 svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8::76) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Mon, 1 Jul 2024 10:12:30 +1200
Received: from svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567]) by
 svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567%15]) with mapi id
 15.02.1544.011; Mon, 1 Jul 2024 10:12:30 +1200
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: Krzysztof Kozlowski <krzk@kernel.org>, "tglx@linutronix.de"
	<tglx@linutronix.de>, "robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "tsbogend@alpha.franken.de"
	<tsbogend@alpha.franken.de>, "daniel.lezcano@linaro.org"
	<daniel.lezcano@linaro.org>, "paulburton@kernel.org" <paulburton@kernel.org>,
	"peterz@infradead.org" <peterz@infradead.org>, "mail@birger-koblitz.de"
	<mail@birger-koblitz.de>, "bert@biot.com" <bert@biot.com>, "john@phrozen.org"
	<john@phrozen.org>, "sander@svanheule.net" <sander@svanheule.net>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>, "kabel@kernel.org"
	<kabel@kernel.org>, "ericwouds@gmail.com" <ericwouds@gmail.com>
Subject: Re: [PATCH v3 6/9] dt-bindings: interrupt-controller:
 realtek,rtl-intc: Add rtl9300-intc
Thread-Topic: [PATCH v3 6/9] dt-bindings: interrupt-controller:
 realtek,rtl-intc: Add rtl9300-intc
Thread-Index: AQHayEsk886ha4dF906RSsJN+a1s27HacQGAgAWqb4A=
Date: Sun, 30 Jun 2024 22:12:30 +0000
Message-ID: <1b9f9deb-37b9-4be7-9e95-9ee4f95d3d69@alliedtelesis.co.nz>
References: <20240627043317.3751996-1-chris.packham@alliedtelesis.co.nz>
 <20240627043317.3751996-7-chris.packham@alliedtelesis.co.nz>
 <8a708add-52a7-4189-b0f1-e2a4c83230a9@kernel.org>
In-Reply-To: <8a708add-52a7-4189-b0f1-e2a4c83230a9@kernel.org>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
Content-Type: text/plain; charset="utf-8"
Content-ID: <B3C1E29676C8FB479E65EDDCDA65A4CF@atlnz.lc>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SEG-SpamProfiler-Analysis: v=2.4 cv=CvQccW4D c=1 sm=1 tr=0 ts=6681d84e a=Xf/6aR1Nyvzi7BryhOrcLQ==:117 a=xqWC_Br6kY4A:10 a=75chYTbOgJ0A:10 a=IkcTkHD0fZMA:10 a=4kmOji7k6h8A:10 a=n6AQODhFvGrmFGPgcxAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-SEG-SpamProfiler-Score: 0

DQpPbiAyNy8wNi8yNCAxOTo0MSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToNCj4gT24gMjcv
MDYvMjAyNCAwNjozMywgQ2hyaXMgUGFja2hhbSB3cm90ZToNCj4+IEFkZCBhIGNvbXBhdGlibGUg
c3RyaW5nIGZvciB0aGUgaW50ZXJydXB0IGNvbnRyb2xsZXIgZm91bmQgb24gdGhlDQo+PiBydGw5
MzB4IFNvQ3MuIFRoZSBpbnRlcnJ1cHQgY29udHJvbGxlciBoYXMgcmVnaXN0ZXJzIGZvciBWUEUx
IHNvIHRoZXNlDQo+PiBhcmUgYWRkZWQgYXMgYSBzZWNvbmQgcmVnIGNlbGwuDQo+Pg0KPj4gU2ln
bmVkLW9mZi1ieTogQ2hyaXMgUGFja2hhbSA8Y2hyaXMucGFja2hhbUBhbGxpZWR0ZWxlc2lzLmNv
Lm56Pg0KPj4gLS0tDQo+Pg0KPj4gTm90ZXM6DQo+PiAgICAgIENoYW5nZXMgaW4gdjM6DQo+PiAg
ICAgIC0gVXNlIGl0ZW1zIHRvIGRlc2NyaWJlIHRoZSByZWdzIHByb3BlcnR5DQo+PiAgICAgIENo
YW5nZXMgaW4gdjI6DQo+PiAgICAgIC0gU2V0IHJlZzptYXhJdGVtcyB0byAyIHRvIGFsbG93IGZv
ciBWUEUxIHJlZ2lzdGVycyBvbiB0aGUgcnRsOTMwMC4gQWRkDQo+PiAgICAgICAgYSBjb25kaXRp
b24gdG8gZW5mb3JjZSB0aGUgb2xkIGxpbWl0IG9uIG90aGVyIFNvQ3MuDQo+PiAgICAgIC0gQ29u
bm9yIGFuZCBLcnp5c3p0b2Ygb2ZmZXJlZCBhY2tzIG9uIHYxIGJ1dCBJIHRoaW5rIHRoZSBjaGFu
Z2VzIGhlcmUNCj4+ICAgICAgICBhcmUgYmlnIGVub3VnaCB0byB2b2lkIHRob3NlLg0KPj4NCj4+
ICAgLi4uL2ludGVycnVwdC1jb250cm9sbGVyL3JlYWx0ZWsscnRsLWludGMueWFtbCB8IDE4ICsr
KysrKysrKysrKysrKysrLQ0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvcmVhbHRlayxydGwtaW50Yy55YW1sIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL3Jl
YWx0ZWsscnRsLWludGMueWFtbA0KPj4gaW5kZXggZmI1NTkzNzI0MDU5Li5kMGU1YmRmNDVkMDUg
MTAwNjQ0DQo+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW50ZXJy
dXB0LWNvbnRyb2xsZXIvcmVhbHRlayxydGwtaW50Yy55YW1sDQo+PiArKysgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvcmVhbHRlayxydGwt
aW50Yy55YW1sDQo+PiBAQCAtMjUsNiArMjUsNyBAQCBwcm9wZXJ0aWVzOg0KPj4gICAgICAgICAt
IGl0ZW1zOg0KPj4gICAgICAgICAgICAgLSBlbnVtOg0KPj4gICAgICAgICAgICAgICAgIC0gcmVh
bHRlayxydGw4MzgwLWludGMNCj4+ICsgICAgICAgICAgICAgIC0gcmVhbHRlayxydGw5MzAwLWlu
dGMNCj4+ICAgICAgICAgICAgIC0gY29uc3Q6IHJlYWx0ZWsscnRsLWludGMNCj4+ICAgICAgICAg
LSBjb25zdDogcmVhbHRlayxydGwtaW50Yw0KPj4gICAgICAgICAgIGRlcHJlY2F0ZWQ6IHRydWUN
Cj4+IEBAIC0zNSw3ICszNiw5IEBAIHByb3BlcnRpZXM6DQo+PiAgICAgICBjb25zdDogMQ0KPj4g
ICANCj4+ICAgICByZWc6DQo+PiAtICAgIG1heEl0ZW1zOiAxDQo+IE1pc3NpbmcgbWluSXRlbXMg
KGFzIHRlc3Rpbmcgd291bGQgdGVsbCB5b3UpDQoNCkhtbSBJIHJlYWxseSBkaWQgdGVzdCB0aGlz
LiBFdmVuIG5vdyBydW5uaW5nDQoNCmBtYWtlIEFSQ0g9bWlwcyBPPWJ1aWxkX21pcHMgDQpEVF9T
Q0hFTUFfRklMRVM9cmVhbHRlayxydGwtaW50Yy55YW1sOnJlYWx0ZWstcnRsLnlhbWw6cmVhbHRl
ayxvdHRvLXRpbWVyLnlhbWwgDQpjbGVhbiBkdF9iaW5kaW5nX2NoZWNrYCBkb2Vzbid0IHNlZW0g
dG8geWllbGQgYW55IGNvbXBsYWludHMuIEFtIEkgDQp0ZXN0aW5nIHRoaXMgcHJvcGVybHk/DQoN
Cj4NCj4+ICsgICAgaXRlbXM6DQo+PiArICAgICAgLSBkZXNjcmlwdGlvbjogdnBlMCByZWdpc3Rl
cnMNCj4+ICsgICAgICAtIGRlc2NyaXB0aW9uOiB2cGUxIHJlZ2lzdGVycw0KPj4gICANCj4+ICAg
ICBpbnRlcnJ1cHRzOg0KPj4gICAgICAgbWluSXRlbXM6IDENCj4+IEBAIC03MSw2ICs3NCwxOSBA
QCBhbGxPZjoNCj4+ICAgICAgIGVsc2U6DQo+PiAgICAgICAgIHJlcXVpcmVkOg0KPj4gICAgICAg
ICAgIC0gaW50ZXJydXB0cw0KPj4gKyAgLSBpZjoNCj4+ICsgICAgICBwcm9wZXJ0aWVzOg0KPj4g
KyAgICAgICAgY29tcGF0aWJsZToNCj4+ICsgICAgICAgICAgY29udGFpbnM6DQo+PiArICAgICAg
ICAgICAgY29uc3Q6IHJlYWx0ZWsscnRsOTMwMC1pbnRjDQo+PiArICAgIHRoZW46DQo+PiArICAg
ICAgcHJvcGVydGllczoNCj4+ICsgICAgICAgIHJlZzoNCj4gTmVlZGVkIGlzOiBtaW5JdGVtczog
Mg0KPg0KPj4gKyAgICAgICAgICBtYXhJdGVtczogMg0KPj4gKyAgICBlbHNlOg0KPj4gKyAgICAg
IHByb3BlcnRpZXM6DQo+PiArICAgICAgICByZWc6DQo+PiArICAgICAgICAgIG1heEl0ZW1zOiAx
DQo+PiAgIA0KPj4gICBhZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UNCj4+ICAgDQo+IEJlc3Qg
cmVnYXJkcywNCj4gS3J6eXN6dG9mDQo+

