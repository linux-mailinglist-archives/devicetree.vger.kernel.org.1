Return-Path: <devicetree+bounces-13355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1D77DDC99
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 07:27:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 382941C20B5B
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 06:27:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B03015224;
	Wed,  1 Nov 2023 06:27:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83DE44C8E;
	Wed,  1 Nov 2023 06:27:37 +0000 (UTC)
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D866F7;
	Tue, 31 Oct 2023 23:27:32 -0700 (PDT)
X-SpamFilter-By: ArmorX SpamTrap 5.78 with qID 3A16RGq041144286, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36506.realtek.com.tw[172.21.6.27])
	by rtits2.realtek.com.tw (8.15.2/2.93/5.92) with ESMTPS id 3A16RGq041144286
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 1 Nov 2023 14:27:16 +0800
Received: from RTEXDAG02.realtek.com.tw (172.21.6.101) by
 RTEXH36506.realtek.com.tw (172.21.6.27) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.17; Wed, 1 Nov 2023 14:27:16 +0800
Received: from RTEXMBS04.realtek.com.tw (172.21.6.97) by
 RTEXDAG02.realtek.com.tw (172.21.6.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Wed, 1 Nov 2023 14:27:16 +0800
Received: from RTEXMBS04.realtek.com.tw ([fe80::40c2:6c24:2df4:e6c7]) by
 RTEXMBS04.realtek.com.tw ([fe80::40c2:6c24:2df4:e6c7%5]) with mapi id
 15.01.2375.007; Wed, 1 Nov 2023 14:27:16 +0800
From: =?utf-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?= <stanley_chang@realtek.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
CC: "Thinh.Nguyen@synopsys.com" <Thinh.Nguyen@synopsys.com>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>,
        "gregkh@linuxfoundation.org"
	<gregkh@linuxfoundation.org>,
        "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>,
        "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: RE: [PATCH v6 1/2] usb: dwc3: add Realtek DHC RTD SoC dwc3 glue layer driver
Thread-Topic: [PATCH v6 1/2] usb: dwc3: add Realtek DHC RTD SoC dwc3 glue
 layer driver
Thread-Index: AQHZ18re3VzH2NdIJ0+XVY2ifQSysbBh2g4AgAONr8A=
Date: Wed, 1 Nov 2023 06:27:16 +0000
Message-ID: <bc33c01db5b048899dce5467e7efec74@realtek.com>
References: <20230826031028.1892-1-stanley_chang@realtek.com>
 <202310301424.39UEOShlC2187546@rtits1.realtek.com.tw>
In-Reply-To: <202310301424.39UEOShlC2187546@rtits1.realtek.com.tw>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
x-originating-ip: [172.21.190.159]
x-kse-serverinfo: RTEXDAG02.realtek.com.tw, 9
x-kse-antivirus-attachment-filter-interceptor-info: license violation
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

SGkgQ0osDQoNCkkgdGhpbmsgdGhlc2UgZnVuY3Rpb25zIGFyZSBub3QgbmVlZGVkIGluIHJlbW92
ZSBmdW5jdGlvbi4NCg0KSW4gZHdjM19ydGtfcHJvYmVfZHdjM19jb3JlLA0KSSBoYXZlIHVzZWQg
DQpkd2MzX25vZGUgPSBvZl9nZXRfY29tcGF0aWJsZV9jaGlsZChub2RlLCAic25wcyxkd2MzIik7
DQphbmQNCmR3YzNfcGRldiA9IG9mX2ZpbmRfZGV2aWNlX2J5X25vZGUoZHdjM19ub2RlKTsNCg0K
U28sIEkgY2FsbCB0aGVzZSBwdXQgZnVuY3Rpb25zLg0KcGxhdGZvcm1fZGV2aWNlX3B1dChkd2Mz
X3BkZXYpOw0Kb2Zfbm9kZV9wdXQoZHdjM19ub2RlKTsNCg0KVGhhbmtzLA0KU3RhbmxleQ0KDQo+
IEhpLA0KPiANCj4gSXMgc29tZXRoaW5nIGxpa2UNCj4gICAgICAgICBwbGF0Zm9ybV9kZXZpY2Vf
cHV0KGR3YzNfcGRldik7DQo+ICAgICAgICAgb2Zfbm9kZV9wdXQoZHdjM19ub2RlKTsNCj4gbmVl
ZGVkIGluIHRoZSByZW1vdmUgZnVuY3Rpb24/DQo+IA0KPiAoYXMgZG9uZSBpbiB0aGUgZXJyb3Ig
aGFuZGxpbmcgcGF0aCBvZiBkd2MzX3J0a19wcm9iZV9kd2MzX2NvcmUoKSkNCj4gDQo+IE9yIHNo
b3VsZCBpdCBiZSBhZGRlZCBhdCB0aGUgZW5kIG9mIGR3YzNfcnRrX3Byb2JlX2R3YzNfY29yZSgp
IGlmIHRoZQ0KPiByZWZlcmVuY2UgYXJlIG5vciBuZWVkZWQgYW55bW9yZSB3aGVuIHdlIGxlYXZl
IHRoZSBmdW5jdGlvbj8NCj4gDQo+IENKDQo+IA0KPiA+ICsgICAgIG9mX3BsYXRmb3JtX2RlcG9w
dWxhdGUocnRrLT5kZXYpOyB9DQo+ID4gKw0KPiANCj4gLi4uDQoNCg==

