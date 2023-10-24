Return-Path: <devicetree+bounces-11439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8152C7D5CA2
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 22:54:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3C550281A28
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 20:54:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 315D139956;
	Tue, 24 Oct 2023 20:54:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="X94BXjcT"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C971BDE8
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 20:54:09 +0000 (UTC)
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [IPv6:2001:df5:b000:5::4])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9AE710D4
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 13:54:07 -0700 (PDT)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id EC38D2C0405;
	Wed, 25 Oct 2023 09:54:05 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1698180845;
	bh=fLHqJdJd48UyHWtd0EGaU7vVHXl/x/Z3zkyLMQrEvpc=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=X94BXjcT3SRvVZs6KmmyrTjJ+57ri2e8sCXX9Ky0nQE3Vk9YW7/BWjiDAFkwzmx49
	 EL2ImCEY/0h1yFbtcfR4khUxH6J8kzRoTuMWuzXrNt1cdUuyX0DXzItaIo3duX2Fc2
	 rDOQqA/ahw+BbweV0RTxYktDf163kFSwy0Ga8teZ+gCzxvHPCtn2tgKFwmf7I0V4SB
	 IeO52Zuy7dGxxIsF3+z/4Vsy4ysGyyDVMFsK3lIokq16CTzXzw/h36mv5VMLiRQiRC
	 cwy1O7iFqWBU7NlOPCYM0PfvwAA9Z+N1NrlF6KsmyByvZl8gu/VY+7Sn2Hln2cQVV9
	 ci30cRrmaScOQ==
Received: from svr-chch-ex2.atlnz.lc (Not Verified[2001:df5:b000:bc8::76]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B65382eed0002>; Wed, 25 Oct 2023 09:54:05 +1300
Received: from svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8:f753:6de:11c0:a008) by
 svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8:f753:6de:11c0:a008) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Wed, 25 Oct 2023 09:54:05 +1300
Received: from svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567]) by
 svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567%15]) with mapi id
 15.02.1118.039; Wed, 25 Oct 2023 09:54:05 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: Andi Shyti <andi.shyti@kernel.org>
CC: "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "linux-i2c@vger.kernel.org"
	<linux-i2c@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 2/2] i2c: mv64xxx: add an optional reset-gpios property
Thread-Topic: [PATCH v3 2/2] i2c: mv64xxx: add an optional reset-gpios
 property
Thread-Index: AQHaAgcy5mKiozoBFUuv9b6R9rUkyLBYf5+AgAAPnoCAAAaKgIAABK+A
Date: Tue, 24 Oct 2023 20:54:05 +0000
Message-ID: <61593e5f-5d54-4e33-8926-ef68e7fba49e@alliedtelesis.co.nz>
References: <20231018210805.1569987-1-chris.packham@alliedtelesis.co.nz>
 <20231018210805.1569987-3-chris.packham@alliedtelesis.co.nz>
 <20231024191801.kofb6cbczswp7xxn@zenone.zhora.eu>
 <4b548124-d1d5-4746-a5bd-03757013282d@alliedtelesis.co.nz>
 <20231024203719.bbk7g4q7e4mzar36@zenone.zhora.eu>
In-Reply-To: <20231024203719.bbk7g4q7e4mzar36@zenone.zhora.eu>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.33.22.30]
Content-Type: text/plain; charset="utf-8"
Content-ID: <E22D3B47BCDFFF4782BFCC81DA2D87CE@atlnz.lc>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SEG-SpamProfiler-Analysis: v=2.3 cv=L6ZjvNb8 c=1 sm=1 tr=0 a=Xf/6aR1Nyvzi7BryhOrcLQ==:117 a=xqWC_Br6kY4A:10 a=75chYTbOgJ0A:10 a=IkcTkHD0fZMA:10 a=bhdUkHdE2iEA:10 a=j4pAPGAPlXPPLMPtUHsA:9 a=QEXdDO2ut3YA:10
X-SEG-SpamProfiler-Score: 0

DQpPbiAyNS8xMC8yMyAwOTozNywgQW5kaSBTaHl0aSB3cm90ZToNCj4gSGkgQ2hyaXMsDQo+DQo+
Pj4gYXMgeW91IGFyZSB3b3JraW5nIG9uIHRoZSB2NC4uLg0KPj4+DQo+Pj4gLi4uDQo+Pj4NCj4+
Pj4gKwlpZiAoZHJ2X2RhdGEtPnJlc2V0X2dwaW8pIHsNCj4+Pj4gKwkJdXNsZWVwX3JhbmdlKHJl
c2V0X2R1cmF0aW9uLCByZXNldF9kdXJhdGlvbiArIDEwKTsNCj4+PiBJJ20gbm90IGFnYWluc3Qg
dGhpcywgYnV0IGl0J3Mgbm90IG9wdGltYWwgdW5sZXNzIHdlIGtub3cgbW9yZSBvcg0KPj4+IGxl
c3Mgd2hhdCB0byBleHBlY3QgZnJvbSByZXNldF9kdXJhdGlvbi4NCj4+Pg0KPj4+IERvIHdlIGhh
dmUgYSByb3VnaCBpZGVhIG9mIHdoYXQgcmVzZXRfZHVyYXRpb24gaXM/IElmIHdlIGRvbid0DQo+
Pj4gdGhlbiB5b3UgY291bGQgY29uc2lkZXIgdXNpbmcgYSBnZW5lcmljICJmc2xlZXAocmVzZXRf
ZHVyYXRpb24pOyINCj4+PiBXb3VsZCBpdCB3b3JrPw0KPj4gZmxzZWVwKCkgd291bGQgd29yayBm
b3IgbWUuIEFsbCBvZiB0aGUgZGV2aWNlcyBJJ20gdGVzdGluZyB3aXRoIHNlZW0gdG8NCj4+IGJl
IGZpbmUgd2l0aCBhIHZlcnkgc2hvcnQgcmVzZXQgcHVsc2UsIHRoZXknZCBwcm9iYWJseSBiZSBm
aW5lIHdpdGggbm8NCj4+IGRlbGF5IGF0IGFsbC4NCj4geW91IGtub3cgdGhpcyBiZXR0ZXIgdGhh
biBtZSA6LSkNCj4gSWYgeW91IHNheSB0aGF0IGEgZGVsYXkgaXMgbm90IG5lY2Vzc2FyeSwgdGhl
biBJJ20gYWxzbyBmaW5lLg0KPg0KPiBJbiBhbnkgY2FzZSwgd2UgYXJlIGluIHByb2JlIGFuZCBJ
IGRvbid0IHRoaW5rIGl0J3MgdGltZQ0KPiBjcml0aWNhbCwgc28gdGhhdCBhIGxpdHRsZSBkZWxh
eSB3b3VsZG4ndCBodXJ0IGFuZCBtYWtlIGV2ZXJ5b25lDQo+IGhhcHB5Lg0KPg0KPiBFaXRoZXIg
d2F5IEknbSBmaW5lIGFzIGxvbmcgYXMgeW91IHVzZSB0aGUgY29ycmVjdCBzbGVlcGluZw0KPiBm
dW5jdGlvbi4NCg0KTXkgcGFydGljdWxhciBoYXJkd2FyZSBkb2Vzbid0IG5lZWQgaXQgYnV0IGZv
ciB0aGlzIHRvIGJlIGdlbmVyYWxseSANCnVzYWJsZSBJIHRoaW5rIGl0IGlzIG5lY2Vzc2FyeSB0
byBwcm92aWRlIHRoZSBjYXBhYmlsaXR5IGZvciBzb21lIGtpbmQgDQpvZiBoYXJkd2FyZSBzcGVj
aWZpYyByZXNldC1kdXJhdGlvbi4gSSdsbCBsb29rIGF0IGZzbGVlcCgpIGZvciB2NCAob3IgDQpz
YXkgd2h5IEkndmUgc3R1Y2sgd2l0aCB1c2xlZXBfcmFuZ2UoKSBpbiB0aGUgY2hhbmdlbG9nKS4N
Cg0KPiBBbmRp

