Return-Path: <devicetree+bounces-13694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D35577DFFE9
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 10:10:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 74427B21296
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 09:10:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 035608BEC;
	Fri,  3 Nov 2023 09:10:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4CE92D604
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 09:09:59 +0000 (UTC)
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC0A7CA;
	Fri,  3 Nov 2023 02:09:56 -0700 (PDT)
X-SpamFilter-By: ArmorX SpamTrap 5.78 with qID 3A399ZG404182808, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36506.realtek.com.tw[172.21.6.27])
	by rtits2.realtek.com.tw (8.15.2/2.95/5.92) with ESMTPS id 3A399ZG404182808
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 3 Nov 2023 17:09:35 +0800
Received: from RTEXMBS02.realtek.com.tw (172.21.6.95) by
 RTEXH36506.realtek.com.tw (172.21.6.27) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.17; Fri, 3 Nov 2023 17:09:35 +0800
Received: from RTEXMBS04.realtek.com.tw (172.21.6.97) by
 RTEXMBS02.realtek.com.tw (172.21.6.95) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Fri, 3 Nov 2023 17:09:35 +0800
Received: from RTEXMBS04.realtek.com.tw ([fe80::40c2:6c24:2df4:e6c7]) by
 RTEXMBS04.realtek.com.tw ([fe80::40c2:6c24:2df4:e6c7%5]) with mapi id
 15.01.2375.007; Fri, 3 Nov 2023 17:09:35 +0800
From: =?utf-8?B?VFlfQ2hhbmdb5by15a2Q6YC4XQ==?= <tychang@realtek.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Linus Walleij
	<linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        "Andy
 Shevchenko" <andy@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        "Krzysztof
 Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 1/2] gpio: realtek: Add GPIO support for RTD SoC variants
Thread-Topic: [PATCH 1/2] gpio: realtek: Add GPIO support for RTD SoC variants
Thread-Index: AQHaDG9Hk0D/m9zpMEiXHZM9KcVyR7Bkh3iAgAHUOsD//70GgIACNh4w
Date: Fri, 3 Nov 2023 09:09:35 +0000
Message-ID: <c29e820575ba4c7fb833e960497f59cf@realtek.com>
References: <20231101025802.3744-1-tychang@realtek.com>
 <20231101025802.3744-2-tychang@realtek.com>
 <e18a7ee0-a5e3-4180-9f8a-99b21d1303e6@linaro.org>
 <8e4c8676acaf4ba6bf3f57451b2eab40@realtek.com>
 <4fc3fafa-6c9b-440a-99fe-1332cd3d5b1d@linaro.org>
In-Reply-To: <4fc3fafa-6c9b-440a-99fe-1332cd3d5b1d@linaro.org>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
x-originating-ip: [172.21.181.166]
x-kse-serverinfo: RTEXMBS02.realtek.com.tw, 9
x-kse-antivirus-attachment-filter-interceptor-info: license violation
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

SGkgS3J6eXN6dG9mLA0KDQo+Pj4+ICtzdGF0aWMgaW50IHJ0ZF9ncGlvX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpIHsNCj4+Pj4gKyAgICAgc3RydWN0IHJ0ZF9ncGlvICpkYXRh
Ow0KPj4+PiArICAgICBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkICptYXRjaDsNCj4+Pj4gKyAg
ICAgc3RydWN0IGRldmljZV9ub2RlICpub2RlOw0KPj4+PiArICAgICBpbnQgcmV0Ow0KPj4+PiAr
ICAgICBpbnQgaTsNCj4+Pj4gKw0KPj4+PiArICAgICBub2RlID0gcGRldi0+ZGV2Lm9mX25vZGU7
DQo+Pj4+ICsgICAgIG1hdGNoID0gb2ZfbWF0Y2hfbm9kZShydGRfZ3Bpb19vZl9tYXRjaGVzLCBw
ZGV2LT5kZXYub2Zfbm9kZSk7DQo+Pj4+ICsgICAgIGlmICghbWF0Y2ggfHwgIW1hdGNoLT5kYXRh
KQ0KPj4+PiArICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPj4+PiArDQo+Pj4+ICsgICAg
IGRhdGEgPSBkZXZtX2t6YWxsb2MoJnBkZXYtPmRldiwgc2l6ZW9mKCpkYXRhKSwgR0ZQX0tFUk5F
TCk7DQo+Pj4+ICsgICAgIGlmICghZGF0YSkNCj4+Pj4gKyAgICAgICAgICAgICByZXR1cm4gLUVO
T01FTTsNCj4+Pj4gKw0KPj4+PiArICAgICBkYXRhLT5hc3NlcnRfaXJxID0gaXJxX29mX3BhcnNl
X2FuZF9tYXAobm9kZSwgMCk7DQo+Pj4+ICsgICAgIGlmICghZGF0YS0+YXNzZXJ0X2lycSkNCj4+
Pj4gKyAgICAgICAgICAgICBnb3RvIGRlZmVycmVkOw0KPj4+PiArDQo+Pj4+ICsgICAgIGRhdGEt
PmRlYXNzZXJ0X2lycSA9IGlycV9vZl9wYXJzZV9hbmRfbWFwKG5vZGUsIDEpOw0KPj4+PiArICAg
ICBpZiAoIWRhdGEtPmRlYXNzZXJ0X2lycSkNCj4+Pj4gKyAgICAgICAgICAgICBnb3RvIGRlZmVy
cmVkOw0KPj4+DQo+Pj4gU28gdGhpcyBnb2VzIHRvIGNsZWFudXAgcGF0aC4uLg0KPj4+DQo+Pg0K
Pj4gU2luY2UgdGhlcmUgaXMgbm8gbmVlZCB0byBkbyBkZXZtX2ZyZWUsIEkgd2lsbCBkaXJlY3Rs
eSByZXR1cm4gLUVQUk9CRV9ERUZFUg0KPmhlcmUuDQo+DQo+VGhhdCdzIG5vdCBhIGNvcnJlY3Qg
cmV0dXJuIHZhbHVlLiBZb3UgZG8gbm90IHJldHVybiBERUZFUiBvbiBtaXNzaW5nIElSUS4gVGhp
cw0KPnNob3VsZCBhbnl3YXkgYmUgZGlmZmVyZW50IGNhbGw6IHBsYXRmb3JtX2dldF9pcnEoKS4N
Cj4NCg0KSSBnb3QgaXQgLiBUaGFuayB5b3UgZm9yIHRoZSByZW1pbmRlci4NCg0KVGhhbmtzLA0K
VHp1eWkgQ2hhbmcNCg==

