Return-Path: <devicetree+bounces-17767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EFE7F4032
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 09:35:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 37899B20E86
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 08:35:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86B741D699;
	Wed, 22 Nov 2023 08:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8CFBF9;
	Wed, 22 Nov 2023 00:35:08 -0800 (PST)
X-SpamFilter-By: ArmorX SpamTrap 5.78 with qID 3AM8X2jlC2146049, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36505.realtek.com.tw[172.21.6.25])
	by rtits2.realtek.com.tw (8.15.2/2.95/5.92) with ESMTPS id 3AM8X2jlC2146049
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 22 Nov 2023 16:33:02 +0800
Received: from RTEXMBS01.realtek.com.tw (172.21.6.94) by
 RTEXH36505.realtek.com.tw (172.21.6.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.32; Wed, 22 Nov 2023 16:33:02 +0800
Received: from RTEXMBS04.realtek.com.tw (172.21.6.97) by
 RTEXMBS01.realtek.com.tw (172.21.6.94) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 16:33:02 +0800
Received: from RTEXMBS04.realtek.com.tw ([fe80::40c2:6c24:2df4:e6c7]) by
 RTEXMBS04.realtek.com.tw ([fe80::40c2:6c24:2df4:e6c7%5]) with mapi id
 15.01.2375.007; Wed, 22 Nov 2023 16:33:02 +0800
From: =?utf-8?B?SnlhbiBDaG91IFvlkajoirflrold?= <jyanchou@realtek.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
        "adrian.hunter@intel.com"
	<adrian.hunter@intel.com>,
        "jh80.chung@samsung.com" <jh80.chung@samsung.com>,
        "riteshh@codeaurora.org" <riteshh@codeaurora.org>,
        "robh+dt@kernel.org"
	<robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>
CC: "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "asutoshd@codeaurora.org"
	<asutoshd@codeaurora.org>,
        "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "arnd@arndb.de" <arnd@arndb.de>,
        "briannorris@chromium.org"
	<briannorris@chromium.org>,
        "doug@schmorgal.com" <doug@schmorgal.com>,
        "tonyhuang.sunplus@gmail.com" <tonyhuang.sunplus@gmail.com>,
        "abel.vesa@linaro.org" <abel.vesa@linaro.org>,
        "william.qiu@starfivetech.com"
	<william.qiu@starfivetech.com>
Subject: RE: [PATCH v7][4/4] dt-bindings: mmc: Add dt-bindings for realtek mmc driver
Thread-Topic: [PATCH v7][4/4] dt-bindings: mmc: Add dt-bindings for realtek
 mmc driver
Thread-Index: AQHaHFrVyvodMIdbokSAHFHsmkonY7CD/S4AgAGklqD//8ytAIAAkp+w
Date: Wed, 22 Nov 2023 08:33:01 +0000
Message-ID: <b870d026151345ce870284373df6d32b@realtek.com>
References: <20231121091101.5540-1-jyanchou@realtek.com>
 <20231121091101.5540-5-jyanchou@realtek.com>
 <dde59498-440d-4faf-b878-2090342b52da@linaro.org>
 <4551fbf03e3349eb8eaa336d505a5384@realtek.com>
 <31927a2b-4b14-406b-8db0-511ec4779d4f@linaro.org>
In-Reply-To: <31927a2b-4b14-406b-8db0-511ec4779d4f@linaro.org>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
x-kse-serverinfo: RTEXMBS01.realtek.com.tw, 9
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
X-KSE-ServerInfo: RTEXH36505.realtek.com.tw, 9
X-KSE-AntiSpam-Interceptor-Info: fallback
X-KSE-Antivirus-Interceptor-Info: fallback
X-KSE-AntiSpam-Interceptor-Info: fallback

Pj4+ICsgICAgICBjbG9ja3MgPSA8JmNjIDIyPiwgPCZjYyAyNj4sIDwmY2MgMTIxPiwgPCZjYyAx
MjI+Ow0KPj4+ICsgICAgICBjbG9jay1uYW1lcyA9ICJiaXUiLCAiY2l1IiwgInZwMCIsICJ2cDEi
Ow0KPj4NCj4+IFdoZXJlIGlzIHRoZSBEVFMgaW1wbGVtZW50aW5nIHRoaXMgYmluZGluZz8NCj4+
DQo+Pj4gSSBzYWlkIGl0IG9uY2U6DQo+Pg0KPj4+PiBJIGFza2VkIHlvdSB0byB0ZXN0IHRoZSBi
aW5kaW5ncy4gVGhpcyBhbHNvIG1lYW5zIHRoYXQgeW91IG11c3QgdGVzdCANCj4+Pj4geW91ciBE
VFMgYWdhaW5zdCBiaW5kaW5ncy4gWW91ciBiaW5kaW5ncywgRFRTIGFuZCBkcml2ZXIgZG8gbm90
IA0KPj4+PiBtYXRjaCwgdGhlcmVmb3JlIGxldCdzIGJlIGEgYml0IG1vcmUgY2xlYXI6DQo+Pj4+
DQo+Pj4+IE5BSywgdGlsbCB5b3UgdXBzdHJlYW0geW91ciBEVFMuDQo+Pg0KPj4+IEkgc3RpbGwg
ZG8gbm90IHNlZSBEVFMgYW55d2hlcmUuIFBsZWFzZSBsaW5rIGl0Lg0KPj4NCj4+IFNvcnJ5IGZv
ciBhc2tpbmcuIFdoaWNoIGR0cyBkbyB3ZSBuZWVkIHRvIGxpbmsgaXQ/IFRoZSBkZXZpY2UgdHJl
ZSB3ZSB1c2UgZm9yIG91ciBTT0M/DQo+Pg0KPj4gb3IgcmVhbHRlayxydGQtZHctY3FlLWVtbWMu
ZXhhbXBsZS5kdHM/ICBUaGFua3MuDQoNCj4gVGhlIHBhdGNoIGFkZGluZyB0aGlzIGRldmljZSBu
b2RlIHRvIGFueSB1cHN0cmVhbSBEVFMuIEkgYW0gbm90IHNwZWFraW5nIGFib3V0IGV4YW1wbGUs
IGJ1dCBhYm91dCB1cHN0cmVhbSBEVFMgdXNpbmcgdGhpcyBNTUMuDQoNCj4gQXMgSSB3cm90ZSBs
YXN0IHRpbWUsIEkgZG9uJ3QgYmVsaWV2ZSB5b3UgdGVzdCBiaW5kaW5ncyBhbmQgRFRTIGFuZCBJ
IGhhZCBwcm9vZnMgb2YgdGhhdC4gVGhlcmVmb3JlIEkgZXhwZWN0IHlvdSB0byB1cHN0cmVhbSBE
VFMgb2YgeW91ciBwcm9kdWN0Lg0KDQpTb3JyeSBmb3IgZXhwbGFpbmluZywgc2luY2Ugb3VyIERU
UyBpcyBzdGlsbCB0cnlpbmcgdG8gdXBzdHJlYW0sIGJ1dCBub3QgYWNjZXB0ZWQgYnkgdXBzdHJl
YW0geWV0LA0KDQpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1hcm0ta2VybmVsLzRhNDYy
YjJlLTM4MGEtOWZkMS0yZTg0LTc4M2NjNDU3ZThjMkBsaW5hcm8ub3JnL1QvDQoNCmNvdWxkIEkg
cHJvdmlkZSB0aGUgZHRzIHdlIGxvY2FsIHVzZWQgbm93IGZvciB5b3UgZmlyc3QgdG8gY29tcGFy
ZSB3aXRoIGJpbmRpbmdzPyBJIGFtIHNvcnJ5IGZvciBtYWtpbmcgdGhpcyByZXF1ZXN0Lg0KDQpC
ZXN0IHJlZ2FyZHMsDQpKeWFuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBL
cnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IA0KU2Vu
dDogV2VkbmVzZGF5LCBOb3ZlbWJlciAyMiwgMjAyMyAzOjM3IFBNDQpUbzogSnlhbiBDaG91IFvl
kajoirflroldIDxqeWFuY2hvdUByZWFsdGVrLmNvbT47IHVsZi5oYW5zc29uQGxpbmFyby5vcmc7
IGFkcmlhbi5odW50ZXJAaW50ZWwuY29tOyBqaDgwLmNodW5nQHNhbXN1bmcuY29tOyByaXRlc2ho
QGNvZGVhdXJvcmEub3JnOyByb2JoK2R0QGtlcm5lbC5vcmc7IGtyenlzenRvZi5rb3psb3dza2kr
ZHRAbGluYXJvLm9yZw0KQ2M6IGNvbm9yK2R0QGtlcm5lbC5vcmc7IGFzdXRvc2hkQGNvZGVhdXJv
cmEub3JnOyBwLnphYmVsQHBlbmd1dHJvbml4LmRlOyBsaW51eC1tbWNAdmdlci5rZXJuZWwub3Jn
OyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9y
ZzsgYXJuZEBhcm5kYi5kZTsgYnJpYW5ub3JyaXNAY2hyb21pdW0ub3JnOyBkb3VnQHNjaG1vcmdh
bC5jb207IHRvbnlodWFuZy5zdW5wbHVzQGdtYWlsLmNvbTsgYWJlbC52ZXNhQGxpbmFyby5vcmc7
IHdpbGxpYW0ucWl1QHN0YXJmaXZldGVjaC5jb20NClN1YmplY3Q6IFJlOiBbUEFUQ0ggdjddWzQv
NF0gZHQtYmluZGluZ3M6IG1tYzogQWRkIGR0LWJpbmRpbmdzIGZvciByZWFsdGVrIG1tYyBkcml2
ZXINCg0KDQpFeHRlcm5hbCBtYWlsLg0KDQoNCg0KT24gMjIvMTEvMjAyMyAwMzo1NCwgSnlhbiBD
aG91IFvlkajoirflroldIHdyb3RlOg0KPj4gKyAgICAgIGNsb2NrcyA9IDwmY2MgMjI+LCA8JmNj
IDI2PiwgPCZjYyAxMjE+LCA8JmNjIDEyMj47DQo+PiArICAgICAgY2xvY2stbmFtZXMgPSAiYml1
IiwgImNpdSIsICJ2cDAiLCAidnAxIjsNCj4NCj4+IFdoZXJlIGlzIHRoZSBEVFMgaW1wbGVtZW50
aW5nIHRoaXMgYmluZGluZz8NCj4NCj4+IEkgc2FpZCBpdCBvbmNlOg0KPg0KPj4+IEkgYXNrZWQg
eW91IHRvIHRlc3QgdGhlIGJpbmRpbmdzLiBUaGlzIGFsc28gbWVhbnMgdGhhdCB5b3UgbXVzdCB0
ZXN0IA0KPj4+IHlvdXIgRFRTIGFnYWluc3QgYmluZGluZ3MuIFlvdXIgYmluZGluZ3MsIERUUyBh
bmQgZHJpdmVyIGRvIG5vdCANCj4+PiBtYXRjaCwgdGhlcmVmb3JlIGxldCdzIGJlIGEgYml0IG1v
cmUgY2xlYXI6DQo+Pj4NCj4+PiBOQUssIHRpbGwgeW91IHVwc3RyZWFtIHlvdXIgRFRTLg0KPg0K
Pj4gSSBzdGlsbCBkbyBub3Qgc2VlIERUUyBhbnl3aGVyZS4gUGxlYXNlIGxpbmsgaXQuDQo+DQo+
IFNvcnJ5IGZvciBhc2tpbmcuIFdoaWNoIGR0cyBkbyB3ZSBuZWVkIHRvIGxpbmsgaXQ/IFRoZSBk
ZXZpY2UgdHJlZSB3ZSB1c2UgZm9yIG91ciBTT0M/DQo+DQo+IG9yIHJlYWx0ZWsscnRkLWR3LWNx
ZS1lbW1jLmV4YW1wbGUuZHRzPyAgVGhhbmtzLg0KDQpUaGUgcGF0Y2ggYWRkaW5nIHRoaXMgZGV2
aWNlIG5vZGUgdG8gYW55IHVwc3RyZWFtIERUUy4gSSBhbSBub3Qgc3BlYWtpbmcgYWJvdXQgZXhh
bXBsZSwgYnV0IGFib3V0IHVwc3RyZWFtIERUUyB1c2luZyB0aGlzIE1NQy4NCg0KQXMgSSB3cm90
ZSBsYXN0IHRpbWUsIEkgZG9uJ3QgYmVsaWV2ZSB5b3UgdGVzdCBiaW5kaW5ncyBhbmQgRFRTIGFu
ZCBJIGhhZCBwcm9vZnMgb2YgdGhhdC4gVGhlcmVmb3JlIEkgZXhwZWN0IHlvdSB0byB1cHN0cmVh
bSBEVFMgb2YgeW91ciBwcm9kdWN0Lg0KDQpCZXN0IHJlZ2FyZHMsDQpLcnp5c3p0b2YNCg0K

