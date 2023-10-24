Return-Path: <devicetree+bounces-11433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5195C7D5C3A
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 22:14:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CBED5B20F0C
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 20:14:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B63E3E46D;
	Tue, 24 Oct 2023 20:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="SoPh22Dq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC543E469
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 20:13:59 +0000 (UTC)
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D61410D4
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 13:13:58 -0700 (PDT)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 62F5D2C0630;
	Wed, 25 Oct 2023 09:13:56 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1698178436;
	bh=rblvtLA85SZ5PGutT03BXnsamdXjHxQuoTmCtyr8kN0=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=SoPh22DqsLo19EKJvKSbefWTX1WZgFqhhK6n77/iqmTIolfAmBtX5SwgnIA4c4P2K
	 RJKoSzPgVlIvaUO+4QDr7YlWy546RALXp7KZyLRbc+hHnCCc2/UNdBFCbJpOcxPk6a
	 0wB0CfAGwh1LVdyqwASPtcL5bipBw0RwHxdIYWbWb/SaJSFE0EvaPesu0Kl+RMyqcX
	 pwxsg1j28GszmCIs+nEPdatnTSLRJof5/SOO3SWB4OiZOrNieGrwCmupTDiNyzlEHz
	 HCD1FcWhCYK3ABkptIxwxLBpvHiJUzd2x7CSFVg6e1iJi5vbIOEKCvxpN4gaUSo0JT
	 zyJUZhhZpZ4dw==
Received: from svr-chch-ex2.atlnz.lc (Not Verified[2001:df5:b000:bc8::76]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B653825840001>; Wed, 25 Oct 2023 09:13:56 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8::76) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.2.1118.39; Wed, 25 Oct 2023 09:13:56 +1300
Received: from svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8::76) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8:409d:36f5:8899:92e8) with Microsoft
 SMTP Server (TLS) id 15.0.1497.48; Wed, 25 Oct 2023 09:13:55 +1300
Received: from svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567]) by
 svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567%15]) with mapi id
 15.02.1118.039; Wed, 25 Oct 2023 09:13:55 +1300
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
Thread-Index: AQHaAgcy5mKiozoBFUuv9b6R9rUkyLBYf5+AgAAPnoA=
Date: Tue, 24 Oct 2023 20:13:55 +0000
Message-ID: <4b548124-d1d5-4746-a5bd-03757013282d@alliedtelesis.co.nz>
References: <20231018210805.1569987-1-chris.packham@alliedtelesis.co.nz>
 <20231018210805.1569987-3-chris.packham@alliedtelesis.co.nz>
 <20231024191801.kofb6cbczswp7xxn@zenone.zhora.eu>
In-Reply-To: <20231024191801.kofb6cbczswp7xxn@zenone.zhora.eu>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.33.22.30]
Content-Type: text/plain; charset="utf-8"
Content-ID: <EFB243D0527FEB4D94CD7B6F69E3B465@atlnz.lc>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SEG-SpamProfiler-Analysis: v=2.3 cv=L6ZjvNb8 c=1 sm=1 tr=0 a=Xf/6aR1Nyvzi7BryhOrcLQ==:117 a=xqWC_Br6kY4A:10 a=75chYTbOgJ0A:10 a=IkcTkHD0fZMA:10 a=bhdUkHdE2iEA:10 a=3z5DDspM-FWoKCHjgUUA:9 a=QEXdDO2ut3YA:10
X-SEG-SpamProfiler-Score: 0

DQpPbiAyNS8xMC8yMyAwODoxOCwgQW5kaSBTaHl0aSB3cm90ZToNCj4gSGkgQ2hyaXMsDQo+DQo+
IGFzIHlvdSBhcmUgd29ya2luZyBvbiB0aGUgdjQuLi4NCj4NCj4gLi4uDQo+DQo+PiArCWlmIChk
cnZfZGF0YS0+cmVzZXRfZ3Bpbykgew0KPj4gKwkJdXNsZWVwX3JhbmdlKHJlc2V0X2R1cmF0aW9u
LCByZXNldF9kdXJhdGlvbiArIDEwKTsNCj4gSSdtIG5vdCBhZ2FpbnN0IHRoaXMsIGJ1dCBpdCdz
IG5vdCBvcHRpbWFsIHVubGVzcyB3ZSBrbm93IG1vcmUgb3INCj4gbGVzcyB3aGF0IHRvIGV4cGVj
dCBmcm9tIHJlc2V0X2R1cmF0aW9uLg0KPg0KPiBEbyB3ZSBoYXZlIGEgcm91Z2ggaWRlYSBvZiB3
aGF0IHJlc2V0X2R1cmF0aW9uIGlzPyBJZiB3ZSBkb24ndA0KPiB0aGVuIHlvdSBjb3VsZCBjb25z
aWRlciB1c2luZyBhIGdlbmVyaWMgImZzbGVlcChyZXNldF9kdXJhdGlvbik7Ig0KPiBXb3VsZCBp
dCB3b3JrPw0KZmxzZWVwKCkgd291bGQgd29yayBmb3IgbWUuIEFsbCBvZiB0aGUgZGV2aWNlcyBJ
J20gdGVzdGluZyB3aXRoIHNlZW0gdG8gDQpiZSBmaW5lIHdpdGggYSB2ZXJ5IHNob3J0IHJlc2V0
IHB1bHNlLCB0aGV5J2QgcHJvYmFibHkgYmUgZmluZSB3aXRoIG5vIA0KZGVsYXkgYXQgYWxsLg0K
Pg0KPiBSZXN0IGxvb2tzIGdvb2QuDQo+DQo+IEFuZGk=

