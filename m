Return-Path: <devicetree+bounces-8694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9D87C9B5D
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 22:21:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A5602B20BBD
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 20:21:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9ED411736;
	Sun, 15 Oct 2023 20:21:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="Y8LSC1pr"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4760511731
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 20:21:03 +0000 (UTC)
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [IPv6:2001:df5:b000:5::4])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 724AFC1
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 13:21:01 -0700 (PDT)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 9C72B2C052B;
	Mon, 16 Oct 2023 09:20:59 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1697401259;
	bh=gONpe1sbbkI4PiZoynwr5VYJMtfUq3WDBNIjhwpjr9M=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=Y8LSC1pr2FL6WbJpYjuL9jwhLDpf+EXrvnJQGABAIeClGiGcSuoEr8MEqKHay0vuV
	 m3mXse3xA0NzowpJI2sijaYHff8NvmP9vKdQyuQxLweqpTruGwKzXdy0QVTxhQHNr0
	 4WcLp92ESifApW0BGEFOSlu0nsFQt7ctqzJWchkEGLKeE3MlRnSAv14G0gi+1AdiCv
	 kfbdq9b3cl7CWDGOCiQqd4KW4JLT3PDs8Jow2ENu0E4eyLncK+W+QZ9TXyt541x0nR
	 hDNCCbMrFLG+AUjOc+aMD4tVaSCon6u1vgAz2xJPe/xOJb+NMzZ5ElJqa0+i37Lkma
	 D7gWrWolthUuQ==
Received: from svr-chch-ex2.atlnz.lc (Not Verified[2001:df5:b000:bc8::76]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B652c49ab0001>; Mon, 16 Oct 2023 09:20:59 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8::76) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.2.1118.37; Mon, 16 Oct 2023 09:20:59 +1300
Received: from svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8::76) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8) with Microsoft
 SMTP Server (TLS) id 15.0.1497.48; Mon, 16 Oct 2023 09:20:58 +1300
Received: from svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567]) by
 svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567%15]) with mapi id
 15.02.1118.037; Mon, 16 Oct 2023 09:20:59 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: Andi Shyti <andi.shyti@kernel.org>
CC: Peter Rosin <peda@axentia.se>, "gregory.clement@bootlin.com"
	<gregory.clement@bootlin.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "linux-i2c@vger.kernel.org"
	<linux-i2c@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/2] i2c: mv64xxx: add an optional reset-gpios property
Thread-Topic: [PATCH 2/2] i2c: mv64xxx: add an optional reset-gpios property
Thread-Index: AQHZ/MBiho/r3vjr4Umpa1L63KxTDrBFGFgAgAAHq4CAAKhmAIAA1PuAgAPZZAA=
Date: Sun, 15 Oct 2023 20:20:58 +0000
Message-ID: <21392d77-568c-4770-ac01-cfe3f93d424c@alliedtelesis.co.nz>
References: <20231012035838.2804064-1-chris.packham@alliedtelesis.co.nz>
 <20231012035838.2804064-3-chris.packham@alliedtelesis.co.nz>
 <20231012102140.kydfi2tppvhd7bdn@zenone.zhora.eu>
 <63403365-2d23-b4a0-d869-070686d62ab5@axentia.se>
 <812dd506-c61b-4967-9b0b-ea35a111bc7f@alliedtelesis.co.nz>
 <20231013093407.p2oqsagk62vrqacc@zenone.zhora.eu>
In-Reply-To: <20231013093407.p2oqsagk62vrqacc@zenone.zhora.eu>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.33.22.30]
Content-Type: text/plain; charset="utf-8"
Content-ID: <B80CCE180BF6584B9036E1080E653C8F@atlnz.lc>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SEG-SpamProfiler-Analysis: v=2.3 cv=L6ZjvNb8 c=1 sm=1 tr=0 a=Xf/6aR1Nyvzi7BryhOrcLQ==:117 a=xqWC_Br6kY4A:10 a=75chYTbOgJ0A:10 a=IkcTkHD0fZMA:10 a=bhdUkHdE2iEA:10 a=ZG9u6gaKJp329XwHsg0A:9 a=QEXdDO2ut3YA:10
X-SEG-SpamProfiler-Score: 0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

DQpPbiAxMy8xMC8yMyAyMjozNCwgQW5kaSBTaHl0aSB3cm90ZToNCj4gSGkgQ2hyaXMsDQo+DQo+
IC4uLg0KPg0KPj4gICAgICAgICAgICAgICBzdGF0aWMgc3RydWN0IG12NjR4eHhfaTJjX3JlZ3Mg
bXY2NHh4eF9pMmNfcmVnc19tdjY0eHh4ID0gew0KPj4gICAgICAgICAgICAgIEBAIC0xMDgzLDYg
KzEwODQsMTAgQEAgbXY2NHh4eF9pMmNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGQp
DQo+PiAgICAgICAgICAgICAgICAgICAgICBpZiAoZHJ2X2RhdGEtPmlycSA8IDApDQo+PiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBkcnZfZGF0YS0+aXJxOw0KPj4NCj4+ICAg
ICAgICAgICAgICArICAgICAgIGRydl9kYXRhLT5yZXNldF9ncGlvID0gZGV2bV9ncGlvZF9nZXRf
b3B0aW9uYWwoJnBkLT5kZXYsICJyZXNldCIsIEdQSU9EX09VVF9ISUdIKTsNCj4+ICAgICAgICAg
ICAgICArICAgICAgIGlmIChJU19FUlIoZHJ2X2RhdGEtPnJlc2V0X2dwaW8pKQ0KPj4gICAgICAg
ICAgICAgICsgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihkcnZfZGF0YS0+cmVzZXRfZ3Bp
byk7DQo+Pg0KPj4gICAgICAgICAgaWYgdGhpcyBvcHRpb25hbCB3aHkgYXJlIHdlIHJldHVybmlu
ZyBpbiBjYXNlIG9mIGVycm9yPw0KPj4NCj4+IGdwaW9kX2dldF9vcHRpb25hbCgpIHdpbGwgcmV0
dXJuIE5VTEwgaWYgdGhlIHByb3BlcnR5IGlzIG5vdCBwcmVzZW50LiBUaGUgbWFpbg0KPj4gZXJy
b3IgSSBjYXJlIGFib3V0IGhlcmUgaXMgLUVQUk9CRV9ERUZFUiBidXQgSSBmaWd1cmUgb3RoZXIg
ZXJyb3JzIGFyZSBhbHNvDQo+PiByZWxldmFudC4gVGhpcyBzYW1lIGtpbmQgb2YgcGF0dGVybiBp
cyB1c2VkIGluIG90aGVyIGRyaXZlcnMuDQo+IHdlIGFscmVhZHkgZGlzY3Vzc2VkIGFib3V0IHRo
aXMsIEkgZG9uJ3QgaGF2ZSBhIHN0cm9uZyBvcGluaW9uLA0KPiB5b3UgY2FuIGxlYXZlIGl0IGFz
IGl0IGlzLi4uIEkgcmVjb24gdGhpcyBpcyBhIG1hdHRlciBvZiBwdXJlDQo+IHRhc3RlLg0KDQpJ
IHRoaW5rIGluIHRoaXMgY2FzZSBpdCB3b3VsZCBhY3R1YWxseSBtYWtlIHRoaW5ncyB1Z2xpZXIg
YmVjYXVzZSBJJ2QgDQpoYXZlIHRvIGNoZWNrIGZvciAtRVBST0JFX0RFRkVSLiBTbyBzb21ldGhp
bmcgbGlrZQ0KDQogwqDCoMKgIGRydl9kYXRhLT5yZXNldF9ncGlvID0gZGV2bV9ncGlvZF9nZXRf
b3B0aW9uYWwoJnBkLT5kZXYsICJyZXNldCIsIA0KR1BJT0RfT1VUX0hJR0gpOw0KIMKgwqDCoCBp
ZiAoSVNfRVJSKGRydl9kYXRhLT5yZXNldF9ncGlvKSAmJiBQVFJfRVJSKGRydl9kYXRhLT5yZXNl
dF9ncGlvKSANCj09IC1FUFJPQkVfREVGRVIpDQogwqDCoCDCoMKgwqDCoCByZXR1cm4gUFRSX0VS
UihkcnZfZGF0YS0+cmVzZXRfZ3Bpbyk7DQogwqDCoMKgIGVsc2UNCiDCoMKgIMKgwqDCoMKgIGRy
dl9kYXRhLT5yZXNldF9ncGlvID0gTlVMTDsNCg0KSSBjb3VsZCBwcm9iYWJseSBjb21lIHVwIHdp
dGggc29tZXRoaW5nIGxlc3MgdWdseSB3aXRoIGEgbG9jYWwgdmFyaWFibGUgDQpvciB0d28gYnV0
IG5vdGhpbmcgYXMgdGlkeSBhcyBqdXN0IHJldHVybmluZyBvbiBlcnJvci4NCg0KPg0KPiBXb3Vs
ZCB5b3UganVzdCBtaW5kIGFkZGluZyBhbiBlcnJvciBtZXNzYWdlIHVzaW5nDQo+IGRldl9lcnJf
cHJvYmUoKT8NCg0KWWVwIHN1cmUuIFdpbGwgaW5jbHVkZSBpbiB0aGUgbmV4dCByb3VuZC4NCg0K

