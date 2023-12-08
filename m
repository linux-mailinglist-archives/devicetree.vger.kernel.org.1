Return-Path: <devicetree+bounces-22977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F095809BCC
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 06:40:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2E051B20C6B
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 05:40:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 766016AB0;
	Fri,  8 Dec 2023 05:40:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9210C1BF9;
	Thu,  7 Dec 2023 21:40:39 -0800 (PST)
X-SpamFilter-By: ArmorX SpamTrap 5.78 with qID 3B85e2Qy9644105, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36506.realtek.com.tw[172.21.6.27])
	by rtits2.realtek.com.tw (8.15.2/2.95/5.92) with ESMTPS id 3B85e2Qy9644105
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 8 Dec 2023 13:40:03 +0800
Received: from RTEXDAG02.realtek.com.tw (172.21.6.101) by
 RTEXH36506.realtek.com.tw (172.21.6.27) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.17; Fri, 8 Dec 2023 13:40:03 +0800
Received: from RTEXMBS03.realtek.com.tw (172.21.6.96) by
 RTEXDAG02.realtek.com.tw (172.21.6.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Fri, 8 Dec 2023 13:40:01 +0800
Received: from RTEXMBS03.realtek.com.tw ([fe80::5510:ad08:5390:1ed3]) by
 RTEXMBS03.realtek.com.tw ([fe80::5510:ad08:5390:1ed3%2]) with mapi id
 15.01.2375.007; Fri, 8 Dec 2023 13:40:01 +0800
From: =?utf-8?B?SmFtZXMgVGFpIFvmiLTlv5fls7Bd?= <james.tai@realtek.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Thomas Gleixner
	<tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        kernel test robot
	<lkp@intel.com>
Subject: RE: [PATCH v3 1/6] dt-bindings: interrupt-controller: Add support for Realtek DHC SoCs
Thread-Topic: [PATCH v3 1/6] dt-bindings: interrupt-controller: Add support
 for Realtek DHC SoCs
Thread-Index: AQHaIocbzgu5rIWoH0WCW95lXyvvArCQeOSAgA5Nk3A=
Date: Fri, 8 Dec 2023 05:40:01 +0000
Message-ID: <43d4a52d03374280a5f5dcdf378b39e8@realtek.com>
References: <20231129054339.3054202-1-james.tai@realtek.com>
 <20231129054339.3054202-2-james.tai@realtek.com>
 <bc95ef35-7eab-4806-9cf8-4594156c9d98@linaro.org>
In-Reply-To: <bc95ef35-7eab-4806-9cf8-4594156c9d98@linaro.org>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
x-kse-serverinfo: RTEXDAG02.realtek.com.tw, 9
x-kse-antispam-interceptor-info: fallback
x-kse-antivirus-interceptor-info: fallback
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-KSE-AntiSpam-Interceptor-Info: fallback

SGkgS3J6eXN6dG9mLA0KDQo+T24gMjkvMTEvMjAyMyAwNjo0MywgSmFtZXMgVGFpIHdyb3RlOg0K
Pj4gQWRkIHRoZSBZQU1MIGRvY3VtZW50YXRpb24gZm9yIFJlYWx0ZWsgREhDIChEaWdpdGFsIEhv
bWUgQ2VudGVyKSBTb0NzLg0KPj4NCj4+IFJlcG9ydGVkLWJ5OiBrZXJuZWwgdGVzdCByb2JvdCA8
bGtwQGludGVsLmNvbT4NCj4+IENsb3NlczoNCj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL29l
LWtidWlsZC1hbGwvMjAyMzExMTgwOTIxLmF5S2hpRkhMLWxrcEBpbnRlbC4NCj4+IGNvbS8NCj4N
Cj5Ecm9wIGJvdGguIFRoZXkgYXJlIG5vdCBhcHBsaWNhYmxlIHRvIHRoaXMgcGF0Y2guDQo+DQpP
a2F5LiBJIHdpbGwgZHJvcCB0aGVtLg0KDQo+PiBDQzogVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxp
bnV0cm9uaXguZGU+DQo+PiBDQzogTWFyYyBaeW5naWVyIDxtYXpAa2VybmVsLm9yZz4NCj4NCj4+
IENDOiBSb2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPg0KPj4gQ0M6IEtyenlzenRvZiBL
b3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2krZHRAbGluYXJvLm9yZz4NCj4+IENDOiBDb25v
ciBEb29sZXkgPGNvbm9yK2R0QGtlcm5lbC5vcmc+DQo+PiBDQzogbGludXgta2VybmVsQHZnZXIu
a2VybmVsLm9yZw0KPj4gQ0M6IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnDQo+DQo+UGxlYXNl
IGRyb3AgdGhlIGF1dG9nZW5lcmF0ZWQgc2NyaXB0cy9nZXRfbWFpbnRhaW5lci5wbCBDQy1lbnRy
aWVzIGZyb20NCj5jb21taXQgbXNnLiBUaGVyZSBpcyBubyBzaW5nbGUgbmVlZCB0byBzdG9yZSBh
dXRvbWF0ZWQgb3V0cHV0IG9mDQo+Z2V0X21haW50YWluZXJzLnBsIGluIHRoZSBnaXQgbG9nLiBJ
dCBjYW4gYmUgZWFzaWx5IHJlLWNyZWF0ZWQgYXQgYW55IGdpdmVuIHRpbWUsDQo+dGh1cyBpdHMg
cHJlc2VuY2UgaW4gdGhlIGdpdCBoaXN0b3J5IGlzIHJlZHVuZGFudCBhbmQgb2JmdXNjYXRlcyB0
aGUgbG9nLg0KPg0KPklmIHlvdSBuZWVkIGl0IGZvciB5b3VyIG93biBwYXRjaCBtYW5hZ2VtZW50
IHB1cnBvc2VzLCBrZWVwIGl0IHVuZGVyIHRoZQ0KPi0tLSBzZXBhcmF0b3IuDQo+DQpJIHdpbGwg
bW92ZSB0aGUgQ0MtZW50cmllcyB1bmRlciB0aGUgJy0tLScgc2VwYXJhdG9yLg0KDQo+TXkgcHJl
dmlvdXMgY29tbWVudHMgd2VyZSBub3QgYWRkcmVzc2VkLiBXaHkgbGluZXMgYXJlIG5vdCBkZXNj
cmliZWQNCj4oaXRlbXM6IGRlc2NyaXB0aW9uOik/IEFyZSB0aGV5IGFsbCB0aGUgc2FtZT8gV2h5
IHlvdSBkaWQgbm90IHJlc3BvbmQgdG8gY2xhcmlmeQ0KPnRoaXMgY29tbWVudD8NCj4NCkkndmUg
YWRkcmVzc2VkIHRoZSBwcmV2aW91cyBjb21tZW50cyBhbmQgd2lsbCBpbmNsdWRlIGEgZGVzY3Jp
cHRpb24gZm9yIGVhY2ggbGluZSBpbiB0aGUgbmV4dCBwYXRjaGVzLg0KSSBtaXN1bmRlcnN0b29k
IHlvdXIgbWVhbmluZywgc28gSSBkaWQgbm90IHByb3ZpZGUgYSBjbGVhciByZXNwb25zZS4NCg0K
PlRoZSByZXN0IG9mIG15IGNvbW1lbnQgaGVyZSB3YXMgYWxzbyBpZ25vcmVkLiBZb3UgY2Fubm90
IGp1c3QgaWdub3JlDQo+Y29tbWVudHMsIGJ1dCBtdXN0IHJlc3BvbmQgdG8gdGhlbSBvciBpbXBs
ZW1lbnQgdGhlbS4NCj4NCkkgd2lsbCBpbXByb3ZlIHRoaXMgcGFydC4NCg0KPlRvIGNsYXJpZnk6
IEkgZXhwZWN0IGFsbE9mOiBibG9jayBhZnRlciByZXF1aXJlZDogY29uc3RyYWluaW5nIHRoZSBp
bnRlcnJ1cHRzIHBlcg0KPnZhcmlhbnQuDQo+DQpJIHdpbGwgYWRqdXN0IGl0IGluIG5leHQgcGF0
Y2hlcy4NCg0KUmVnYXJkcywNCkphbWVzDQoNCg0K

