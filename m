Return-Path: <devicetree+bounces-23689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B709480C0A6
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 06:20:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2FA1B1F20EF8
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 05:20:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38F2A1C6B8;
	Mon, 11 Dec 2023 05:20:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA0B3C3;
	Sun, 10 Dec 2023 21:20:13 -0800 (PST)
X-SpamFilter-By: ArmorX SpamTrap 5.78 with qID 3BB5JuvdE2459419, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36506.realtek.com.tw[172.21.6.27])
	by rtits2.realtek.com.tw (8.15.2/2.95/5.92) with ESMTPS id 3BB5JuvdE2459419
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 11 Dec 2023 13:19:56 +0800
Received: from RTEXMBS02.realtek.com.tw (172.21.6.95) by
 RTEXH36506.realtek.com.tw (172.21.6.27) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.17; Mon, 11 Dec 2023 13:19:56 +0800
Received: from RTEXMBS03.realtek.com.tw (172.21.6.96) by
 RTEXMBS02.realtek.com.tw (172.21.6.95) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Mon, 11 Dec 2023 13:19:55 +0800
Received: from RTEXMBS03.realtek.com.tw ([fe80::5510:ad08:5390:1ed3]) by
 RTEXMBS03.realtek.com.tw ([fe80::5510:ad08:5390:1ed3%2]) with mapi id
 15.01.2375.007; Mon, 11 Dec 2023 13:19:55 +0800
From: =?big5?B?SmFtZXMgVGFpIFvAuafTrnBd?= <james.tai@realtek.com>
To: Rob Herring <robh@kernel.org>, Dan Carpenter <dan.carpenter@linaro.org>
CC: Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>,
        "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>,
        kernel test robot <lkp@intel.com>,
        "Dan
 Carpenter" <error27@gmail.com>
Subject: RE: [PATCH v3 2/6] irqchip: Add interrupt controller support for Realtek DHC SoCs
Thread-Topic: [PATCH v3 2/6] irqchip: Add interrupt controller support for
 Realtek DHC SoCs
Thread-Index: AQHaIocg6atZJ97H502y6uXXYTUFxrCQbtQAgAB7DYCAEpRKQA==
Date: Mon, 11 Dec 2023 05:19:55 +0000
Message-ID: <d9dad6be6ee14b77910e95dd2571c828@realtek.com>
References: <20231129054339.3054202-1-james.tai@realtek.com>
 <20231129054339.3054202-3-james.tai@realtek.com>
 <d94c79bf-04c4-4e87-bd7e-a8755508ac89@suswa.mountain>
 <20231129154131.GA2492847-robh@kernel.org>
In-Reply-To: <20231129154131.GA2492847-robh@kernel.org>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
x-kse-serverinfo: RTEXMBS02.realtek.com.tw, 9
x-kse-antispam-interceptor-info: fallback
x-kse-antivirus-interceptor-info: fallback
Content-Type: text/plain; charset="big5"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-KSE-AntiSpam-Interceptor-Info: fallback

SGkgUm9iLA0KDQo+DQo+T24gV2VkLCBOb3YgMjksIDIwMjMgYXQgMTE6MjE6MDZBTSArMDMwMCwg
RGFuIENhcnBlbnRlciB3cm90ZToNCj4+IE9uIFdlZCwgTm92IDI5LCAyMDIzIGF0IDAxOjQzOjM1
UE0gKzA4MDAsIEphbWVzIFRhaSB3cm90ZToNCj4+ID4gK3N0YXRpYyBpbnQgcmVhbHRla19pbnRj
X3N1YnNldChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUsIHN0cnVjdA0KPj4gPiArcmVhbHRla19p
bnRjX2RhdGEgKmRhdGEsIGludCBpbmRleCkgew0KPj4gPiArICAgc3RydWN0IHJlYWx0ZWtfaW50
Y19zdWJzZXRfZGF0YSAqc3Vic2V0X2RhdGEgPQ0KPiZkYXRhLT5zdWJzZXRfZGF0YVtpbmRleF07
DQo+PiA+ICsgICBjb25zdCBzdHJ1Y3QgcmVhbHRla19pbnRjX3N1YnNldF9jZmcgKmNmZyA9ICZk
YXRhLT5pbmZvLT5jZmdbaW5kZXhdOw0KPj4gPiArICAgaW50IGlycTsNCj4+ID4gKw0KPj4gPiAr
ICAgaXJxID0gaXJxX29mX3BhcnNlX2FuZF9tYXAobm9kZSwgaW5kZXgpOw0KPj4gPiArICAgaWYg
KGlycSA8PSAwKQ0KPj4gPiArICAgICAgICAgICByZXR1cm4gaXJxOw0KPj4NCj4+IEkgZG9uJ3Qg
dGhpbmsgaXJxX29mX3BhcnNlX2FuZF9tYXAoKSBjYW4gcmV0dXJuIG5lZ2F0aXZlcy4gIE9ubHkg
emVybw0KPj4gb24gZXJyb3IuICBSZXR1cm5pbmcgemVybyBvbiBlcnJvciBpcyBhIGhpc3Rvcmlj
YWwgYXJ0aWZhY3Qgd2l0aCBJUlENCj4+IGZ1bmN0aW9ucyBhbmQgYSBjb25zdGFudCBzb3VyY2Ug
b2YgYnVncy4gIEJ1dCBoZXJlIHJldHVybmluZyB6ZXJvIGlzDQo+PiBzdWNjZXNzLiAgU2VlIG15
IGJsb2cgZm9yIG1vcmUgZGV0YWlsczoNCj4+IGh0dHBzOi8vc3RhdGljdGhpbmtpbmcud29yZHBy
ZXNzLmNvbS8yMDIzLzA4LzA3L3dyaXRpbmctYS1jaGVjay1mb3ItemUNCj4+IHJvLWlycS1lcnJv
ci1jb2Rlcy8NCj4NCj5JdCdzIHdvcnNlIHRoYW4gdGhhdC4gVGhlIGlycSBmdW5jdGlvbnMgaGlz
dG9yaWNhbGx5IHJldHVybmVkIE5PX0lSUSBvbiBlcnJvciwgYnV0DQo+dGhhdCBjb3VsZCBiZSAw
IG9yIC0xIGRlcGVuZGluZyBvbiB0aGUgYXJjaC4NCj4NCj5Vc2Ugb2ZfaXJxX2dldCgpIGluc3Rl
YWQuIEl0J3MgYSBiaXQgYmV0dGVyIGluIHRoYXQgaXQgcmV0dXJucyBhbiBlcnJvciBjb2RlIGZv
ciBtb3N0DQo+Y2FzZXMuIEJ1dCBzdGlsbCByZXR1cm5zIDAgb24gbWFwcGluZyBmYWlsdXJlLg0K
Pg0KDQpJIHdpbGwgdXNlIG9mX2lycV9nZXQoKSBpbnN0ZWFkIGFuZCBhZGp1c3QgdGhlIHJldHVy
biB2YWx1ZSBvZiByZWFsdGVrX2ludGNfc3Vic2V0KCkgaW4gdGhlIG5leHQgcGF0Y2hlcy4NCg0K
VGhhbmtzIGZvciB5b3VyIGZlZWRiYWNrLg0KDQpSZWdhcmRzLA0KSmFtZXMNCg0KDQoNCg==

