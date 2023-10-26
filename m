Return-Path: <devicetree+bounces-12267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DB97D896A
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 22:05:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6CF9E281F49
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 20:05:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8898C3C69F;
	Thu, 26 Oct 2023 20:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="Dj1gkZ2k"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4803E3C078
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 20:04:56 +0000 (UTC)
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25992B9
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 13:04:55 -0700 (PDT)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 02AA72C022F;
	Fri, 27 Oct 2023 09:04:53 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1698350693;
	bh=14khyxyRz0AEdMDJBhA0pwsxUcUvMqnGAK+iD1nf9Lk=;
	h=From:To:Subject:Date:References:In-Reply-To:From;
	b=Dj1gkZ2klwj/gUuvdIO6Sg1KQCMkT0Jq6dDwlQxHPS//kq4LfeCk/t1JKLNatBa2F
	 whh9oMyDo+A7+cXxaou4lxdCF3/hcU/O9hYtwTJGjnqqFsJ/dNAv/+7QeMC+an7Hzw
	 lNj0BHZm4SLOVM/JfTzJqksgYafzu5fICC6XIZrD9bH9hhH67n21unuoZSFq9kZguo
	 BYZ67bMkfSqMguf1KgVi3JWYpcebwf0Tal2i+w20ZVTxElW0XZF3R8r9VdL9y0G4Op
	 bP48Z382tJOYFrAt2sNLYfAnJH+QmvqMC+SKKQAKvfbSojBwczuIVWp8i6OzW1VJZT
	 Y6QLnAMCuQBUA==
Received: from svr-chch-ex2.atlnz.lc (Not Verified[2001:df5:b000:bc8::76]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B653ac6640001>; Fri, 27 Oct 2023 09:04:52 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8:f753:6de:11c0:a008) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.2.1118.39; Fri, 27 Oct 2023 09:04:52 +1300
Received: from svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8::76) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8) with Microsoft
 SMTP Server (TLS) id 15.0.1497.48; Fri, 27 Oct 2023 09:04:52 +1300
Received: from svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567]) by
 svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567%15]) with mapi id
 15.02.1118.039; Fri, 27 Oct 2023 09:04:52 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: Wolfram Sang <wsa@kernel.org>, "gregory.clement@bootlin.com"
	<gregory.clement@bootlin.com>, "andi.shyti@kernel.org"
	<andi.shyti@kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "linux-i2c@vger.kernel.org"
	<linux-i2c@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 1/2] dt-bindings: i2c: mv64xxx: add reset-gpios
 property
Thread-Topic: [PATCH v4 1/2] dt-bindings: i2c: mv64xxx: add reset-gpios
 property
Thread-Index: AQHaBsm0MVpXubST+Eu8gnhTr522BbBbFBGAgACTygA=
Date: Thu, 26 Oct 2023 20:04:52 +0000
Message-ID: <a739c815-3b9a-4847-a4ec-1fa4cefe8bdb@alliedtelesis.co.nz>
References: <20231024223032.3387487-1-chris.packham@alliedtelesis.co.nz>
 <20231024223032.3387487-2-chris.packham@alliedtelesis.co.nz>
 <ZTpKa7R/xxKeCo+z@ninjato>
In-Reply-To: <ZTpKa7R/xxKeCo+z@ninjato>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.33.22.30]
Content-Type: text/plain; charset="utf-8"
Content-ID: <A99BB1CAB1C0B94281B9396B3D65448D@atlnz.lc>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SEG-SpamProfiler-Analysis: v=2.3 cv=L6ZjvNb8 c=1 sm=1 tr=0 a=Xf/6aR1Nyvzi7BryhOrcLQ==:117 a=xqWC_Br6kY4A:10 a=75chYTbOgJ0A:10 a=IkcTkHD0fZMA:10 a=bhdUkHdE2iEA:10 a=Ke-4JIrgrsVg7Y4wD88A:9 a=QEXdDO2ut3YA:10
X-SEG-SpamProfiler-Score: 0

KHJlc2VuZCBhcyBwbGFpbiB0ZXh0KQ0KDQoNCk9uIDI3LzEwLzIzIDAwOjE1LCBXb2xmcmFtIFNh
bmcgd3JvdGU6DQo+PiArICByZXNldC1ncGlvczoNCj4+ICsgICAgZGVzY3JpcHRpb246DQo+PiAr
ICAgICAgR1BJTyBwaW4gcHJvdmlkaW5nIGEgY29tbW9uIHJlc2V0IGZvciBhbGwgZG93bnN0cmVh
bSBkZXZpY2VzLiBUaGlzIEdQSU8NCj4+ICsgICAgICB3aWxsIGJlIGFzc2VydGVkIHRoZW4gcmVs
ZWFzZWQgYmVmb3JlIHRoZSBkb3duc3RyZWFtIGRldmljZXMgYXJlIHByb2JlZC4NCj4gSG93IGFi
b3V0IHJlbmFtaW5nIHRoaXMgdG8gImJ1cy1yZXNldC1ncGlvcyI/DQo+DQo+IFJlYXNvbjogV2hl
biBJIHJlYWQgInJlc2V0LWdwaW9zIiwgdGhlbiBJIGFzc3VtZSB0aGUgZGV2aWNlIGl0c2VsZiB3
aWxsDQo+IGJlIHJlc2V0LiBJbiB0aGlzIGNhc2UsIHRoZSBNYXJ2ZWxsIEkyQyBjb250cm9sbGVy
LiBTb21lIEkyQyBtdXggZGV2aWNlcw0KPiBhbmQgUENBOTU2NCBhbHJlYWR5IHVzZSB0aGUgcHJv
cGVydHkgbGlrZSBJIGRlc2NyaWJlZC4NCg0KSSBkb24ndCBoYXZlIGFuIG9iamVjdGlvbiB0byAi
YnVzLXJlc2V0LWdwaW9zIiBpdCB3b3VsZCBiZSB0cml2aWFsIGZvciANCm1lIHRvIHNwaW4gYSB2
NSB3aXRoIHRoZSBuYW1pbmcgY2hhbmdlZCBpZiBldmVyeW9uZSBpcyBpbiBhZ3JlZW1lbnQgDQoo
Z2l2ZW4gbXkgdGltZXpvbmUgSSBtaWdodCBqdXN0IHNlbmQgb3V0IGEgdjUgd2l0aCB0aGlzIGNo
YW5nZSBhbmQgdGhlbiANCml0IGNhbiBiZSBhcmd1ZWQgd2hldGhlciB0byBhcHBseSB2NCBvciB2
NSku

