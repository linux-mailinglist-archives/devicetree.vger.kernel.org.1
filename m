Return-Path: <devicetree+bounces-23001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1E8809E09
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 09:21:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 91B361C20950
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 08:21:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 712DD10A3F;
	Fri,  8 Dec 2023 08:21:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33CB9B5;
	Fri,  8 Dec 2023 00:21:43 -0800 (PST)
X-SpamFilter-By: ArmorX SpamTrap 5.78 with qID 3B88LAy44750433, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36506.realtek.com.tw[172.21.6.27])
	by rtits2.realtek.com.tw (8.15.2/2.95/5.92) with ESMTPS id 3B88LAy44750433
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 8 Dec 2023 16:21:10 +0800
Received: from RTEXMBS03.realtek.com.tw (172.21.6.96) by
 RTEXH36506.realtek.com.tw (172.21.6.27) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.17; Fri, 8 Dec 2023 16:21:10 +0800
Received: from RTEXMBS03.realtek.com.tw (172.21.6.96) by
 RTEXMBS03.realtek.com.tw (172.21.6.96) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Fri, 8 Dec 2023 16:21:10 +0800
Received: from RTEXMBS03.realtek.com.tw ([fe80::5510:ad08:5390:1ed3]) by
 RTEXMBS03.realtek.com.tw ([fe80::5510:ad08:5390:1ed3%2]) with mapi id
 15.01.2375.007; Fri, 8 Dec 2023 16:21:10 +0800
From: =?big5?B?SmFtZXMgVGFpIFvAuafTrnBd?= <james.tai@realtek.com>
To: Dan Carpenter <dan.carpenter@linaro.org>
CC: Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
        "Rob
 Herring" <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        kernel test robot
	<lkp@intel.com>, Dan Carpenter <error27@gmail.com>
Subject: RE: [PATCH v3 2/6] irqchip: Add interrupt controller support for Realtek DHC SoCs
Thread-Topic: [PATCH v3 2/6] irqchip: Add interrupt controller support for
 Realtek DHC SoCs
Thread-Index: AQHaIocg6atZJ97H502y6uXXYTUFxrCQbtQAgABT8ICADlCZYA==
Date: Fri, 8 Dec 2023 08:21:10 +0000
Message-ID: <c558b1de9a8841e498f6dfc406a43158@realtek.com>
References: <20231129054339.3054202-1-james.tai@realtek.com>
 <20231129054339.3054202-3-james.tai@realtek.com>
 <d94c79bf-04c4-4e87-bd7e-a8755508ac89@suswa.mountain>
 <8f87bfca-ab5f-4b32-a400-a90d09b64cf1@suswa.mountain>
In-Reply-To: <8f87bfca-ab5f-4b32-a400-a90d09b64cf1@suswa.mountain>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
x-kse-serverinfo: RTEXMBS03.realtek.com.tw, 9
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

SGkgRGFuLA0KDQo+PiBkZXZtXyBhbGxvY2F0aW9ucyBhcmUgY2xlYW5lZCB1cCBhdXRvbWF0aWNh
bGx5IHNvIHRoZXJlIGlzIG5vIG5lZWQgdG8NCj4+IGNhbGwgZGV2bV9rZnJlZSgpIGJlZm9yZSBy
ZXR1cm5pbmcuDQo+Pg0KPj4gcmVnYXJkcywNCj4+IGRhbiBjYXJwZW50ZXINCj4NCkkgd2lsbCBy
ZW1vdmUgaXQuIA0KDQo+PiA+ICsgICB9DQo+PiA+ICsNCj4+ID4gKyAgIGRhdGEtPmluZm8gPSBp
bmZvOw0KPj4gPiArDQo+PiA+ICsgICByYXdfc3Bpbl9sb2NrX2luaXQoJmRhdGEtPmxvY2spOw0K
Pj4gPiArDQo+PiA+ICsgICBkYXRhLT5kb21haW4gPSBpcnFfZG9tYWluX2FkZF9saW5lYXIobm9k
ZSwgMzIsDQo+PiA+ICsgJnJlYWx0ZWtfaW50Y19kb21haW5fb3BzLCBkYXRhKTsNCj4NCj5CdHcs
IGFzIEkgd2FzIHRlc3RpbmcgdGhlIG90aGVyIHN0YXRpYyBjaGVja2VyIHdhcm5pbmcgZm9yIDw9
IDAsIG15IHN0YXRpYw0KPmNoZWNrZXIgcmVhbGx5IHdhbnRzIHRoaXMgaXJxX2RvbWFpbl9hZGRf
bGluZWFyKCkgdG8gYmUgY2xlYW5lZCB1cCBvbiB0aGUgZXJyb3INCj5wYXRoLg0KPg0KPk90aGVy
d2lzZSBpdCBwcm9iYWJseSBsZWFkcyB0byBhIHVzZSBhZnRlciBmcmVlIGJlY2F1c2Ugd2UgZnJl
ZSBkYXRhDQo+KGF1dG9tYXRpY2FsbHkgb3IgbWFudWFsbHkpIGJ1dCBpdCdzIHN0aWxsIG9uIGEg
bGlzdCBzb21ld2hlcmUuDQo+DQpJIHdpbGwgYWRkICdpcnFfZG9tYWluX3JlbW92ZSgpJyB0byBy
ZWxlYXNlIGl0LiANCg0KPj4gPiArICAgaWYgKCFkYXRhLT5kb21haW4pIHsNCj4+ID4gKyAgICAg
ICAgICAgcmV0ID0gLUVOT01FTTsNCj4+ID4gKyAgICAgICAgICAgZ290byBvdXRfY2xlYW51cDsN
Cj4+ID4gKyAgIH0NCj4+ID4gKw0KPj4gPiArICAgZGF0YS0+c3Vic2V0X2RhdGFfbnVtID0gaW5m
by0+Y2ZnX251bTsNCj4+ID4gKyAgIGZvciAoaSA9IDA7IGkgPCBpbmZvLT5jZmdfbnVtOyBpKysp
IHsNCj4+ID4gKyAgICAgICAgICAgcmV0ID0gcmVhbHRla19pbnRjX3N1YnNldChub2RlLCBkYXRh
LCBpKTsNCj4+ID4gKyAgICAgICAgICAgaWYgKHJldCkgew0KPj4gPiArICAgICAgICAgICAgICAg
ICAgIFdBUk4ocmV0LCAiZmFpbGVkIHRvIGluaXQgc3Vic2V0ICVkOiAlZCIsIGksIHJldCk7DQo+
PiA+ICsgICAgICAgICAgICAgICAgICAgcmV0ID0gLUVOT01FTTsNCj4+ID4gKyAgICAgICAgICAg
ICAgICAgICBnb3RvIG91dF9jbGVhbnVwOw0KPg0KPlRoaXMgZXJyb3IgcGF0aC4NCj4NCj5yZWdh
cmRzLA0KPmRhbiBjYXJwZW50ZXINCj4NCkkgd2lsbCBhZGQgJ2lycV9kb21haW5fcmVtb3ZlKCkn
IGJlZm9yZSBnb3RvIGNsZWFudXAuDQoNCglmb3IgKGkgPSAwOyBpIDwgaW5mby0+Y2ZnX251bTsg
aSsrKSB7DQoJCXJldCA9IHJlYWx0ZWtfaW50Y19zdWJzZXQobm9kZSwgZGF0YSwgaSk7DQoJCWlm
IChyZXQpIHsNCgkJCVdBUk4ocmV0LCAiZmFpbGVkIHRvIGluaXQgc3Vic2V0ICVkOiAlZCIsIGks
IHJldCk7DQoJCQlpcnFfZG9tYWluX3JlbW92ZShkYXRhLT5kb21haW4pOw0KCQkJcmV0ID0gLUVO
T01FTTsNCgkJCWdvdG8gb3V0X2NsZWFudXA7DQoJCX0NCgl9DQoNClRoYW5rIHlvdSBmb3IgeW91
ciBmZWVkYmFjay4NCg0KUmVnYXJkcywNCkphbWVzDQoNCg0K

