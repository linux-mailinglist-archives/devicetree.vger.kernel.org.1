Return-Path: <devicetree+bounces-22650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AA480853A
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 11:11:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2CD991C2025F
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 10:11:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAC2F3529D;
	Thu,  7 Dec 2023 10:11:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B920A4;
	Thu,  7 Dec 2023 02:11:20 -0800 (PST)
X-SpamFilter-By: ArmorX SpamTrap 5.78 with qID 3B7AAs8Q2078486, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36505.realtek.com.tw[172.21.6.25])
	by rtits2.realtek.com.tw (8.15.2/2.95/5.92) with ESMTPS id 3B7AAs8Q2078486
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 7 Dec 2023 18:10:54 +0800
Received: from RTEXMBS05.realtek.com.tw (172.21.6.98) by
 RTEXH36505.realtek.com.tw (172.21.6.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.32; Thu, 7 Dec 2023 18:10:55 +0800
Received: from RTEXMBS04.realtek.com.tw (172.21.6.97) by
 RTEXMBS05.realtek.com.tw (172.21.6.98) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.34; Thu, 7 Dec 2023 18:10:54 +0800
Received: from RTEXMBS04.realtek.com.tw ([fe80::40c2:6c24:2df4:e6c7]) by
 RTEXMBS04.realtek.com.tw ([fe80::40c2:6c24:2df4:e6c7%5]) with mapi id
 15.01.2375.007; Thu, 7 Dec 2023 18:10:54 +0800
From: =?utf-8?B?VFlfQ2hhbmdb5by15a2Q6YC4XQ==?= <tychang@realtek.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Vinod Koul
	<vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        =?utf-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?= <stanley_chang@realtek.com>
Subject: RE: [PATCH 1/2] dt-bindings: phy: realtek: Add Realtek DHC RTD SoC PCIe PHY
Thread-Topic: [PATCH 1/2] dt-bindings: phy: realtek: Add Realtek DHC RTD SoC
 PCIe PHY
Thread-Index: AQHaJERyJL4rQ+THDkqbltcZ8ZneurCXQdKAgAXqHZA=
Date: Thu, 7 Dec 2023 10:10:54 +0000
Message-ID: <5e57f7b0f54d4a8aa52ed6e15a9af9f5@realtek.com>
References: <20231201105207.11786-1-tychang@realtek.com>
 <20231201105207.11786-2-tychang@realtek.com>
 <01946883-e008-4b4c-8e2a-a73787ad9f23@linaro.org>
In-Reply-To: <01946883-e008-4b4c-8e2a-a73787ad9f23@linaro.org>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
x-kse-serverinfo: RTEXMBS05.realtek.com.tw, 9
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

SGkgS3J6eXN6dG9mLA0KDQpUaGFuayB5b3UgZm9yIHRoZSByZXZpZXcuDQoNCj5PbiAwMS8xMi8y
MDIzIDExOjUyLCBUenV5aSBDaGFuZyB3cm90ZToNCj4+ICsgICIjcGh5LWNlbGxzIjoNCj4+ICsg
ICAgY29uc3Q6IDANCj4+ICsNCj4+ICsgIG52bWVtLWNlbGxzOg0KPj4gKyAgICBtYXhJdGVtczog
MQ0KPj4gKyAgICBkZXNjcmlwdGlvbjoNCj4+ICsgICAgICBQaGFuZGxlIHRvIG52bWVtIGNlbGwg
dGhhdCBjb250YWlucyAnVHggc3dpbmcgdHJpbScNCj4+ICsgICAgICB0dW5pbmcgcGFyYW1ldGVy
IHZhbHVlIGZvciBQQ0llIHBoeS4NCj4+ICsNCj4+ICsgIG52bWVtLWNlbGwtbmFtZXM6DQo+PiAr
ICAgIGl0ZW1zOg0KPj4gKyAgICAgIC0gY29uc3Q6IHR4X3N3aW5nX3RyaW0NCj4+ICsNCj4+ICsg
IHJlYWx0ZWsscGNpZS1zeXNjb246DQo+PiArICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwj
L2RlZmluaXRpb25zL3BoYW5kbGUNCj4+ICsgICAgZGVzY3JpcHRpb246IHBoYW5kbGUgb2Ygc3lz
Y29uIHVzZWQgdG8gY29udHJvbCBQQ0llIE1ESU8gcmVnaXN0ZXIuDQo+DQo+V2h5IHRoaXMgZG9l
cyBub3QgaGF2ZSByZWcgcHJvcGVydHkgYnV0IHN5c2Nvbj8gVGhpcyBsb29rcyBoYWNreS4NCj4N
Cg0KT3VyIFBDSWUgUEhZIGRyaXZlciBuZWVkcyB0byBhY2Nlc3MgdHdvIHJlZ2lzdGVyczoNCjEu
IFBDSWUgTURJTyByZWdpc3RlcjogVXRpbGl6ZWQgZm9yIGNvbmZpZ3VyaW5nIHRoZSBQQ0llIFBI
WS4NCjIuIFBDSWUgTUFDIExpbmsgQ29udHJvbCBhbmQgTGluayBTdGF0dXMgUmVnaXN0ZXI6IFVz
ZSB0byBnZXQgdGhlIGN1cnJlbnQNCiAgbGluayBzcGVlZCBmb3IgY2FsaWJyYXRpb24gcHVycG9z
ZXMuDQoNCkJvdGggdGhlc2UgcmVnaXN0ZXJzIHJlc2lkZSB3aXRoaW4gdGhlIFBDSWUgY29udHJv
bGxlciByZWdpc3RlcnMuIFRoZSBQQ0llDQpkcml2ZXIgaGFzIG1hcHBlZCB0aGVzZSByZWdpc3Rl
ciBhZGRyZXNzIHJlZ2lvbiwgc28gSSB1c2UgcmVnbWFwIHRvIGFjY2Vzcw0KdGhlc2UgcmVnaXN0
ZXJzLg0KDQo+V2hlcmUgaXMgdGhlIERUUyBvZiB5b3VyIHBsYXRmb3JtIHNvIHdlIGNhbiB2ZXJp
ZnkgdGhlIGJpbmRpbmdzPyBJbiB0aGUgcGFzdA0KPlJlYWx0ZWsgYmluZGluZ3MgYW5kIERUUyB3
ZXJlIHNlbnQgd2l0aG91dCB0ZXN0aW5nLg0KDQpUaGUgYmluZGluZ3MgYW5kIERUUyBmb3Igb3Vy
IHBsYXRmb3JtIGFyZSBjb250aW51b3VzbHkgYmVpbmcgYWRqdXN0ZWQgZm9yIHRoZSB1cHN0cmVh
bS4NCg0KVGhlcmVmb3JlLCBJIG9ubHkgbW9kaWZpZWQgYW5kIHRlc3RlZCB0aGUgRFRTIG5vZGUg
b2YgdGhlIGJpbmRpbmcgZG9jdW1lbnRhdGlvbnMgSSBzdWJtaXR0ZWQuDQpUaGUgRFRTIG5vZGUg
aXMgdGhlIHNhbWUgYXMgdGhlIGV4YW1wbGVzIGluIHRoZSBiaW5kaW5nIGRvY3VtZW50YXRpb24u
IEkgdGVzdGVkIGl0IHVzaW5nIHRoZQ0KY29tbWFuZCAibWFrZSBkdGJzX2NoZWNrIERUX1NDSEVN
QV9GSUxFUz0uLi4iIHdpdGhvdXQgZW5jb3VudGVyaW5nIGFueSBlcnJvcnMuDQoNCj4+ICsNCj4+
ICtyZXF1aXJlZDoNCj4+ICsgIC0gY29tcGF0aWJsZQ0KPj4gKyAgLSByZWFsdGVrLHBjaWUtc3lz
Y29uDQo+PiArICAtICIjcGh5LWNlbGxzIg0KPj4gKw0KPj4gK2FkZGl0aW9uYWxQcm9wZXJ0aWVz
OiBmYWxzZQ0KPj4gKw0KPj4gK2V4YW1wbGVzOg0KPj4gKyAgLSB8DQo+PiArICAgIHBjaWUxX3Bo
eSB7DQo+DQo+cGh5IHsNCj4NCg0KSSB3aWxsIGZpeCBpdCBpbiB0aGUgbmV4dCB2ZXJzaW9uLg0K
DQpUaGFua3MsDQpUenV5aSBDaGFuZw0K

