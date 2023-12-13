Return-Path: <devicetree+bounces-24216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D10FE80E61F
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 09:27:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8566E1F2182E
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 08:27:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 157571A58A;
	Tue, 12 Dec 2023 08:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="JAVIQGgo"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81EA11BE3;
	Tue, 12 Dec 2023 00:26:50 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BC8PvXx004552;
	Tue, 12 Dec 2023 02:25:57 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702369557;
	bh=0FhvwEAMhpD4LSZYeisHrz4RSwcC5LKxUZ8CeCmyesM=;
	h=From:To:CC:Subject:Date:References:In-Reply-To;
	b=JAVIQGgol+V2oSGSSRUWCBIn79mHiF8MS28JroXhNtHb2vzFdyTZQuAOTvcpMvDE3
	 G5pVyi2XMH/C9xQAa2lTJcAIHZO+saq12XoXtoOZqAzSoCQezlBXkOkMGBzHsiaWXe
	 VUlHFS+eX3OPtL4YmDAAxGUltiID7xeCJYfpoWsQ=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BC8Puek068464
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 12 Dec 2023 02:25:56 -0600
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 12
 Dec 2023 02:25:56 -0600
Received: from DLEE101.ent.ti.com ([fe80::91ee:60bc:bfb7:851c]) by
 DLEE101.ent.ti.com ([fe80::91ee:60bc:bfb7:851c%18]) with mapi id
 15.01.2507.023; Tue, 12 Dec 2023 02:25:56 -0600
From: "Ding, Shenghao" <shenghao-ding@ti.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        "broonie@kernel.org"
	<broonie@kernel.org>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>
CC: "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
        "perex@perex.cz"
	<perex@perex.cz>,
        "pierre-louis.bossart@linux.intel.com"
	<pierre-louis.bossart@linux.intel.com>,
        "13916275206@139.com"
	<13916275206@139.com>,
        "linux-sound@vger.kernel.org"
	<linux-sound@vger.kernel.org>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>,
        "liam.r.girdwood@intel.com"
	<liam.r.girdwood@intel.com>,
        "soyer@irl.hu" <soyer@irl.hu>, "tiwai@suse.de"
	<tiwai@suse.de>,
        "Gupta, Peeyush" <peeyush@ti.com>,
        "Navada Kanyana, Mukund"
	<navada@ti.com>
Subject: RE: [EXTERNAL] Re: [PATCH v1] ASoC: tas2562: remove tas2563 into
 driver
Thread-Topic: [EXTERNAL] Re: [PATCH v1] ASoC: tas2562: remove tas2563 into
 driver
Thread-Index: AQHaLLlGQDnIucwntUCYGm67J6jsiLCls92A//+boqA=
Date: Tue, 12 Dec 2023 08:25:56 +0000
Message-ID: <ea9b88ba41fd4e13a13b1f6758306d8c@ti.com>
References: <20231212050831.982-1-shenghao-ding@ti.com>
 <84c4c331-54b6-4539-a8f2-880fd47ad97b@linaro.org>
In-Reply-To: <84c4c331-54b6-4539-a8f2-880fd47ad97b@linaro.org>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-exclaimer-md-config: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS3J6eXN6dG9mIEtvemxv
d3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPg0KPiBTZW50OiBUdWVzZGF5LCBE
ZWNlbWJlciAxMiwgMjAyMyA0OjIzIFBNDQo+IFRvOiBEaW5nLCBTaGVuZ2hhbyA8c2hlbmdoYW8t
ZGluZ0B0aS5jb20+OyBicm9vbmllQGtlcm5lbC5vcmc7DQo+IGNvbm9yK2R0QGtlcm5lbC5vcmcN
Cj4gQ2M6IHJvYmgrZHRAa2VybmVsLm9yZzsgYW5kcml5LnNoZXZjaGVua29AbGludXguaW50ZWwu
Y29tOw0KPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGdpcmR3b29kQGdtYWlsLmNvbTsg
cGVyZXhAcGVyZXguY3o7IHBpZXJyZS0NCj4gbG91aXMuYm9zc2FydEBsaW51eC5pbnRlbC5jb207
IDEzOTE2Mjc1MjA2QDEzOS5jb207IGxpbnV4LQ0KPiBzb3VuZEB2Z2VyLmtlcm5lbC5vcmc7IGxp
bnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7DQo+IGxpYW0uci5naXJkd29vZEBpbnRlbC5jb207
IHNveWVyQGlybC5odTsgdGl3YWlAc3VzZS5kZTsgR3VwdGEsIFBlZXl1c2gNCj4gPHBlZXl1c2hA
dGkuY29tPjsgTmF2YWRhIEthbnlhbmEsIE11a3VuZCA8bmF2YWRhQHRpLmNvbT4NCj4gU3ViamVj
dDogW0VYVEVSTkFMXSBSZTogW1BBVENIIHYxXSBBU29DOiB0YXMyNTYyOiByZW1vdmUgdGFzMjU2
MyBpbnRvIGRyaXZlcg0KPiANCj4gT24gMTIvMTIvMjAyMyAwNjowOCwgU2hlbmdoYW8gRGluZyB3
cm90ZToNCj4gPiBSZW1vdmUgdGFzMjU2MyBmcm9tIHRhczI1NjIsIGl0IHdpbGwgYmUgc3VwcG9y
dGVkIGluIHNlcGFyYXRlZCBkcml2ZXIgY29kZS4NCj4gPg0KPiANCj4gV2h5PyBJIHdhcyBub3Qg
YXdhcmUgdGhhdCB5b3UgZHVwbGljYXRlIHRhczI1NjMgaW4geW91ciBvdGhlciBwYXRjaCwgc28g
dGhhdA0KPiBwYXJ0IG5lZWQgZXhwbGFuYXRpb24uIFRoaXMgcGFydCBhcyB3ZWxsIC0gd2h5IGRv
IHdlIHdhbnQgdG8gcmVtb3ZlIGl0cw0KPiBzdXBwb3J0IGZyb20gdGhlIExpbnV4PyBXaGF0IGFi
b3V0IHVzZXJzPyBBZnRlciBhcHBseWluZyB0aGlzIGNvZGUgdGhleSBkb24ndA0KPiBoYXZlIHN1
cHBvcnQgZm9yIHRoZWlyIGRldmljZSENCldlIHBsYW4gdG8gYWRkIHRhczI1NjMgaW50byB0YXMy
NzgxLCBjdXJyZW50IGRyaXZlciBjYW4ndCBzdXBwb3J0IGRzcCBtb2RlLCANCm9ubHkgYSBieXBh
c3MgbW9kZS4NCj4gDQo+IEJlc3QgcmVnYXJkcywNCj4gS3J6eXN6dG9mDQoNCg==

