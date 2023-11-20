Return-Path: <devicetree+bounces-17019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C0C7F0E8E
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 10:08:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 150E21C2114D
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 09:08:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3496C1094F;
	Mon, 20 Nov 2023 09:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41D2AA7;
	Mon, 20 Nov 2023 01:08:48 -0800 (PST)
X-SpamFilter-By: ArmorX SpamTrap 5.78 with qID 3AK98JUA0707805, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36506.realtek.com.tw[172.21.6.27])
	by rtits2.realtek.com.tw (8.15.2/2.95/5.92) with ESMTPS id 3AK98JUA0707805
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 20 Nov 2023 17:08:19 +0800
Received: from RTEXMBS06.realtek.com.tw (172.21.6.99) by
 RTEXH36506.realtek.com.tw (172.21.6.27) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.17; Mon, 20 Nov 2023 17:08:19 +0800
Received: from RTEXMBS03.realtek.com.tw (172.21.6.96) by
 RTEXMBS06.realtek.com.tw (172.21.6.99) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.34; Mon, 20 Nov 2023 17:08:18 +0800
Received: from RTEXMBS03.realtek.com.tw ([fe80::5510:ad08:5390:1ed3]) by
 RTEXMBS03.realtek.com.tw ([fe80::5510:ad08:5390:1ed3%2]) with mapi id
 15.01.2375.007; Mon, 20 Nov 2023 17:08:18 +0800
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
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: RE: [PATCH v2 1/6] dt-bindings: interrupt-controller: Add support for Realtek DHC SoCs
Thread-Topic: [PATCH v2 1/6] dt-bindings: interrupt-controller: Add support
 for Realtek DHC SoCs
Thread-Index: AQHaGXMHJnbDooY4VkyEcMH4aisPjrCBFAaAgAG3OTA=
Date: Mon, 20 Nov 2023 09:08:18 +0000
Message-ID: <7959920acf004f3cb8072de1e17439fa@realtek.com>
References: <20231117162709.1096585-1-james.tai@realtek.com>
 <20231117162709.1096585-2-james.tai@realtek.com>
 <c3a98e2c-ba62-4798-a0d0-a8bc1fe5bb6b@linaro.org>
In-Reply-To: <c3a98e2c-ba62-4798-a0d0-a8bc1fe5bb6b@linaro.org>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
x-originating-ip: [49.216.22.4]
x-kse-serverinfo: RTEXMBS06.realtek.com.tw, 9
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

SGkgS3J6eXN6dG9mLA0KDQo+SSBkb3VidCBpdC4NCj4NCj5BbmQgYm90IHByb292ZXMgaXQuDQoN
Ck15ICdkdHNjaGVtYScgaXMgb3V0ZGF0ZWQsIGFuZCBJIGVuY291bnRlcmVkIGVycm9ycyBhZnRl
ciB1cGRhdGluZyBpdC4NCkkgd2lsbCBmaXggaXQgaW4gbmV4dCBwYXRjaGVzLg0KDQo+PiAtIEZp
eGVkIGNvZGUgc3R5bGUgaXNzdWVzDQo+DQo+QmUgc3BlY2lmaWMgLSB3aGF0IGNvZGUgc3R5bGUg
aXNzdWVzIGRpZCB5b3UgZml4Pw0KPg0KSSBmaXhlZCB0aGUgY29kZSBzdHlsZSBpc3N1ZSByZWxh
dGVkIHRvIHRoZSBsaWNlbnNlIGRlY2xhcmF0aW9uLg0KDQo+Pg0KPj4gIC4uLi9yZWFsdGVrLHJ0
ZDEzMTktaW50Yy55YW1sICAgICAgICAgICAgICAgICB8IDc5DQo+KysrKysrKysrKysrKysrKysr
Kw0KPj4gIC4uLi9yZWFsdGVrLHJ0ZDEzMTlkLWludGMueWFtbCAgICAgICAgICAgICAgICB8IDc5
DQo+KysrKysrKysrKysrKysrKysrKw0KPj4gIC4uLi9yZWFsdGVrLHJ0ZDEzMjUtaW50Yy55YW1s
ICAgICAgICAgICAgICAgICB8IDc5DQo+KysrKysrKysrKysrKysrKysrKw0KPj4gIC4uLi9yZWFs
dGVrLHJ0ZDE2MTliLWludGMueWFtbCAgICAgICAgICAgICAgICB8IDc4ICsrKysrKysrKysrKysr
KysrKw0KPj4gIDQgZmlsZXMgY2hhbmdlZCwgMzE1IGluc2VydGlvbnMoKykNCj4+ICBjcmVhdGUg
bW9kZSAxMDA2NDQNCj4+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pbnRlcnJ1
cHQtY29udHJvbGxlci9yZWFsdGVrLHJ0ZDEzMTkNCj4+IC1pbnRjLnlhbWwgIGNyZWF0ZSBtb2Rl
IDEwMDY0NA0KPj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2ludGVycnVwdC1j
b250cm9sbGVyL3JlYWx0ZWsscnRkMTMxOQ0KPj4gZC1pbnRjLnlhbWwgIGNyZWF0ZSBtb2RlIDEw
MDY0NA0KPj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2ludGVycnVwdC1jb250
cm9sbGVyL3JlYWx0ZWsscnRkMTMyNQ0KPj4gLWludGMueWFtbCAgY3JlYXRlIG1vZGUgMTAwNjQ0
DQo+PiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xs
ZXIvcmVhbHRlayxydGQxNjE5DQo+PiBiLWludGMueWFtbA0KPg0KPldoeSBkbyB5b3UgaGF2ZSBm
b3VyIGJpbmRpbmdzIGZvciB0aGUgc2FtZT8gUGxlYXNlIGV4cGxhaW4gbWUgdGhlIGRpZmZlcmVu
Y2VzLg0KPg0KSWYgdGhlIGJpbmRpbmdzIGNhbiBiZSBzaGFyZWQsIEkgd2lsbCBjb25zb2xpZGF0
ZSBpdCBpbnRvIG9uZS4NCg0KPj4NCj4+IGRpZmYgLS1naXQNCj4+IGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL3JlYWx0ZWsscnRkMTMNCj4+
IDE5LWludGMueWFtbA0KPj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW50
ZXJydXB0LWNvbnRyb2xsZXIvcmVhbHRlayxydGQxMw0KPj4gMTktaW50Yy55YW1sDQo+PiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NA0KPj4gaW5kZXggMDAwMDAwMDAwMDAwLi5iODhmM2FjMDdjZDkNCj4+
IC0tLSAvZGV2L251bGwNCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9pbnRlcnJ1cHQtY29udHJvbGxlci9yZWFsdGVrLHINCj4+ICsrKyB0ZDEzMTktaW50Yy55YW1s
DQo+PiBAQCAtMCwwICsxLDc5IEBADQo+PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQ
TC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UpICVZQU1MIDEuMg0KPj4gKy0tLQ0KPj4gKyRpZDoN
Cj4+ICtodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9pbnRlcnJ1cHQtY29udHJvbGxlci9y
ZWFsdGVrLHJ0ZDEzMTktaW4NCj4+ICt0Yy55YW1sIw0KPj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZp
Y2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIw0KPj4gKw0KPj4gK3RpdGxlOiBSZWFs
dGVrIERIQyBSVEQxMzE5IEludGVycnVwdCBDb250cm9sbGVyIERldmljZSBUcmVlIEJpbmRpbmdz
DQo+PiArDQo+PiArZGVzY3JpcHRpb246DQo+PiArICBUaGlzIGludGVycnVwdCBjb250cm9sbGVy
IGlzIGEgY29tcG9uZW50IG9mIFJlYWx0ZWsgREhDIFJURDEzMTkgYW5kDQo+PiArICBpcyBkZXNp
Z25lZCB0byByZWNlaXZlIGludGVycnVwdHMgZnJvbSBwZXJpcGhlcmFsIGRldmljZXMuDQo+PiAr
DQo+PiArICBFYWNoIERIQyBTb0MgaGFzIHR3byBzZXRzIG9mIGludGVycnVwdCBjb250cm9sbGVy
cywgZWFjaCBjYXBhYmxlIG9mDQo+PiArIGhhbmRsaW5nIHVwIHRvIDMyIGludGVycnVwdHMuDQo+
PiArDQo+PiArbWFpbnRhaW5lcnM6DQo+PiArICAtIEphbWVzIFRhaSA8amFtZXMudGFpQHJlYWx0
ZWsuY29tPg0KPj4gKw0KPj4gK2FsbE9mOg0KPj4gKyAgLSAkcmVmOiAvc2NoZW1hcy9pbnRlcnJ1
cHQtY29udHJvbGxlci55YW1sIw0KPj4gKw0KPj4gK3Byb3BlcnRpZXM6DQo+PiArICAiI2ludGVy
cnVwdC1jZWxscyI6DQo+PiArICAgIGNvbnN0OiAxDQo+DQo+DQo+Y29tcGF0aWJsZSBpcyBmaXJz
dCwgcHV0IHRoZSBjZWxscyBuZXh0IHRvIG90aGVyIGludGVycnVwdCBjb250cm9sbGVyIHByb3Bl
cnRpZXMuDQo+DQpJIHdpbGwgZml4IGl0IGluIG5leHQgcGF0Y2hlcy4NCg0KPj4gKw0KPj4gKyAg
Y29tcGF0aWJsZToNCj4+ICsgICAgZW51bToNCj4+ICsgICAgICAtIHJlYWx0ZWsscnRkMTMxOS1p
bnRjLWlzbw0KPj4gKyAgICAgIC0gcmVhbHRlayxydGQxMzE5LWludGMtbWlzYw0KPj4gKw0KPj4g
KyAgIiNhZGRyZXNzLWNlbGxzIjoNCj4+ICsgICAgY29uc3Q6IDANCj4+ICsNCj4+ICsgIGludGVy
cnVwdC1jb250cm9sbGVyOiB0cnVlDQo+PiArDQo+PiArICBpbnRlcnJ1cHRzLWV4dGVuZGVkOg0K
Pg0KPmludGVycnVwdHMgaW5zdGVhZC4NCj4NCj5Bbnl3YXksIHlvdSBtdXN0IGRlc2NyaWJlIHRo
ZSBpdGVtcy4gV2h5IHRoaXMgaXMgbm90IGZpeGVkIGJ1dCBmbGV4aWJsZT8NCj5IYXJkd2FyZSBo
YXMgZGlmZmVyZW50IG51bWJlciBvZiBwaW5zPyBUaGF0J3MgdW5saWtlbHkuDQo+DQpJIHdpbGwg
cmVwbGFjZSBpdCB3aXRoICdpbnRlcnJ1cHRzJy4gU2luY2Ugb3VyIEludGVycnVwdCBjb250cm9s
bGVyIGFyY2hpdGVjdHVyZSBkb2Vzbid0IGludm9sdmUgbXVsdGlwbGUgaW50ZXJydXB0IHNvdXJj
ZXMsIHVzaW5nICdpbnRlcnJ1cHRzJyBzaG91bGQgc3VmZmljZS4NCg0KPj4gKyAgICBtaW5JdGVt
czogMQ0KPj4gKyAgICBtYXhJdGVtczogNA0KPj4gKw0KPj4gKyAgcmVnOg0KPj4gKyAgICBtYXhJ
dGVtczogMQ0KPj4gKw0KPj4gK3JlcXVpcmVkOg0KPj4gKyAgLSAiI2ludGVycnVwdC1jZWxscyIN
Cj4+ICsgIC0gIiNhZGRyZXNzLWNlbGxzIg0KPj4gKyAgLSBjb21wYXRpYmxlDQo+PiArICAtIGlu
dGVycnVwdC1jb250cm9sbGVyDQo+PiArICAtIGludGVycnVwdHMtZXh0ZW5kZWQNCj4+ICsgIC0g
cmVnDQo+PiArDQo+PiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlDQo+PiArDQo+PiArZXhh
bXBsZXM6DQo+PiArICAtIHwNCj4+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVw
dC1jb250cm9sbGVyL2lycS5oPg0KPj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJy
dXB0LWNvbnRyb2xsZXIvYXJtLWdpYy5oPg0KPj4gKw0KPj4gKyAgICBydGQxMzE5X2lzb19pcnE6
IGludGVycnVwdC1jb250cm9sbGVyQDQwIHsNCj4+ICsgICAgICBjb21wYXRpYmxlID0gInJlYWx0
ZWsscnRkMTMxOS1pbnRjLWlzbyI7DQo+PiArICAgICAgcmVnID0gPDB4MDAgMHg0MD47DQo+PiAr
ICAgICAgaW50ZXJydXB0cy1leHRlbmRlZCA9IDwmZ2ljIEdJQ19TUEkgNDEgSVJRX1RZUEVfTEVW
RUxfSElHSD4sDQo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmZ2ljIEdJQ19TUEkg
MCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsNCj4+ICsgICAgICBpbnRlcnJ1cHQtY29udHJvbGxlcjsN
Cj4+ICsgICAgICAjYWRkcmVzcy1jZWxscyA9IDwwPjsNCj4+ICsgICAgICAjaW50ZXJydXB0LWNl
bGxzID0gPDE+Ow0KPj4gKyAgICB9Ow0KPj4gKw0KPj4gKyAgICBydGQxMzE5X21pc2NfaXJxOiBp
bnRlcnJ1cHQtY29udHJvbGxlckA4MCB7DQo+PiArICAgICAgY29tcGF0aWJsZSA9ICJyZWFsdGVr
LHJ0ZDEzMTktaW50Yy1taXNjIjsNCj4NCj5Ecm9wLCBvbmUgZXhhbXBsZSBpcyBlbm91Z2guIFRo
aXMgaXMgdGhlIHNhbWUgYXMgcHJldmlvdXMuDQo+DQpJIHdpbGwgZml4IGl0IGluIG5leHQgcGF0
Y2hlcy4NCg0KPj4gKyAgICAgIHJlZyA9IDwweDAwIDB4ODA+Ow0KPj4gKyAgICAgIGludGVycnVw
dHMtZXh0ZW5kZWQgPSA8JmdpYyBHSUNfU1BJIDQwIElSUV9UWVBFX0xFVkVMX0hJR0g+LA0KPj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICA8JmdpYyBHSUNfU1BJIDg5DQo+SVJRX1RZUEVf
TEVWRUxfSElHSD4sDQo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmZ2ljIEdJQ19T
UEkgOTANCj5JUlFfVFlQRV9MRVZFTF9ISUdIPiwNCj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgPCZnaWMgR0lDX1NQSSAzOQ0KPklSUV9UWVBFX0xFVkVMX0hJR0g+Ow0KPj4gKyAgICAg
IGludGVycnVwdC1jb250cm9sbGVyOw0KPj4gKyAgICAgICNhZGRyZXNzLWNlbGxzID0gPDA+Ow0K
Pj4gKyAgICAgICNpbnRlcnJ1cHQtY2VsbHMgPSA8MT47DQo+PiArICAgIH07DQo+PiArLi4uDQo+
PiBkaWZmIC0tZ2l0DQo+PiBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pbnRl
cnJ1cHQtY29udHJvbGxlci9yZWFsdGVrLHJ0ZDEzDQo+PiAxOWQtaW50Yy55YW1sDQo+PiBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9yZWFs
dGVrLHJ0ZDEzDQo+PiAxOWQtaW50Yy55YW1sDQo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPj4g
aW5kZXggMDAwMDAwMDAwMDAwLi43NWFiYTQ0OGJhZjcNCj4+IC0tLSAvZGV2L251bGwNCj4+ICsr
KyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxl
ci9yZWFsdGVrLHINCj4+ICsrKyB0ZDEzMTlkLWludGMueWFtbA0KPj4gQEAgLTAsMCArMSw3OSBA
QA0KPj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNELTIt
Q2xhdXNlKSAlWUFNTCAxLjINCj4+ICstLS0NCj4+ICskaWQ6DQo+PiAraHR0cDovL2RldmljZXRy
ZWUub3JnL3NjaGVtYXMvaW50ZXJydXB0LWNvbnRyb2xsZXIvcmVhbHRlayxydGQxMzE5ZC1pDQo+
PiArbnRjLnlhbWwjDQo+PiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2No
ZW1hcy9jb3JlLnlhbWwjDQo+PiArDQo+PiArdGl0bGU6IFJlYWx0ZWsgREhDIFJURDEzMTlEIElu
dGVycnVwdCBDb250cm9sbGVyIERldmljZSBUcmVlIEJpbmRpbmdzDQo+PiArDQo+PiArZGVzY3Jp
cHRpb246DQo+PiArICBUaGlzIGludGVycnVwdCBjb250cm9sbGVyIGlzIGEgY29tcG9uZW50IG9m
IFJlYWx0ZWsgREhDIFJURDEzMTlEDQo+PiArYW5kDQo+PiArICBpcyBkZXNpZ25lZCB0byByZWNl
aXZlIGludGVycnVwdHMgZnJvbSBwZXJpcGhlcmFsIGRldmljZXMuDQo+PiArDQo+PiArICBFYWNo
IERIQyBTb0MgaGFzIHR3byBzZXRzIG9mIGludGVycnVwdCBjb250cm9sbGVycywgZWFjaCBjYXBh
YmxlIG9mDQo+PiArIGhhbmRsaW5nIHVwIHRvIDMyIGludGVycnVwdHMuDQo+PiArDQo+PiArbWFp
bnRhaW5lcnM6DQo+PiArICAtIEphbWVzIFRhaSA8amFtZXMudGFpQHJlYWx0ZWsuY29tPg0KPj4g
Kw0KPj4gK2FsbE9mOg0KPj4gKyAgLSAkcmVmOiAvc2NoZW1hcy9pbnRlcnJ1cHQtY29udHJvbGxl
ci55YW1sIw0KPj4gKw0KPj4gK3Byb3BlcnRpZXM6DQo+PiArICAiI2ludGVycnVwdC1jZWxscyI6
DQo+PiArICAgIGNvbnN0OiAxDQo+PiArDQo+PiArICBjb21wYXRpYmxlOg0KPj4gKyAgICBlbnVt
Og0KPj4gKyAgICAgIC0gcmVhbHRlayxydGQxMzE5ZC1pbnRjLWlzbw0KPj4gKyAgICAgIC0gcmVh
bHRlayxydGQxMzE5ZC1pbnRjLW1pc2MNCj4NCj5TbyB0aGlzIGlzIHRoZSBzYW1lIGFzIHRoZSBv
dGhlciBvbmU/IFdoeSBpdCBjYW5ub3QgYmUgcGFydCBvZiB0aGF0IG9uZT8NCg0KSSB3aWxsIGNv
bnNvbGlkYXRlIHRoZXNlIHBhcnRzIGludG8gYSBzaW5nbGUgZmlsZS4NCg0KVGhhbmsgeW91IGZv
ciB5b3VyIGZlZWRiYWNrLg0KDQpSZWdhcmRzLA0KSmFtZXMNCg0KDQoNCg==

