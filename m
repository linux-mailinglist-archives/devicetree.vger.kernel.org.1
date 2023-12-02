Return-Path: <devicetree+bounces-20984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3A3801DD2
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 17:39:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F1A731C20915
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 16:39:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F069215AFF;
	Sat,  2 Dec 2023 16:39:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E93E124;
	Sat,  2 Dec 2023 08:39:41 -0800 (PST)
X-SpamFilter-By: ArmorX SpamTrap 5.78 with qID 3B2GdTVy9981327, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36506.realtek.com.tw[172.21.6.27])
	by rtits2.realtek.com.tw (8.15.2/2.95/5.92) with ESMTPS id 3B2GdTVy9981327
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sun, 3 Dec 2023 00:39:29 +0800
Received: from RTEXMBS03.realtek.com.tw (172.21.6.96) by
 RTEXH36506.realtek.com.tw (172.21.6.27) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.17; Sun, 3 Dec 2023 00:39:29 +0800
Received: from RTEXMBS03.realtek.com.tw (172.21.6.96) by
 RTEXMBS03.realtek.com.tw (172.21.6.96) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Sun, 3 Dec 2023 00:39:29 +0800
Received: from RTEXMBS03.realtek.com.tw ([fe80::5510:ad08:5390:1ed3]) by
 RTEXMBS03.realtek.com.tw ([fe80::5510:ad08:5390:1ed3%2]) with mapi id
 15.01.2375.007; Sun, 3 Dec 2023 00:39:29 +0800
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
Thread-Index: AQHaGXMHJnbDooY4VkyEcMH4aisPjrCBFAaAgAG3OTCAE3sp4A==
Date: Sat, 2 Dec 2023 16:39:28 +0000
Message-ID: <4d6ef33fdefe425fb93f23e604e79950@realtek.com>
References: <20231117162709.1096585-1-james.tai@realtek.com>
 <20231117162709.1096585-2-james.tai@realtek.com>
 <c3a98e2c-ba62-4798-a0d0-a8bc1fe5bb6b@linaro.org>
 <7959920acf004f3cb8072de1e17439fa@realtek.com>
In-Reply-To: <7959920acf004f3cb8072de1e17439fa@realtek.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
x-kse-serverinfo: RTEXMBS03.realtek.com.tw, 9
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

SGkgS3J6eXN6dG9mLA0KDQo+Pj4gZGlmZiAtLWdpdA0KPj4+IGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL3JlYWx0ZWsscnRkMQ0KPj4+IDMN
Cj4+PiAxOWQtaW50Yy55YW1sDQo+Pj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvcmVhbHRlayxydGQxDQo+Pj4gMw0KPj4+IDE5ZC1pbnRj
LnlhbWwNCj4+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPj4+IGluZGV4IDAwMDAwMDAwMDAwMC4u
NzVhYmE0NDhiYWY3DQo+Pj4gLS0tIC9kZXYvbnVsbA0KPj4+ICsrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9yZWFsdGVrLA0KPj4+ICsr
KyByDQo+Pj4gKysrIHRkMTMxOWQtaW50Yy55YW1sDQo+Pj4gQEAgLTAsMCArMSw3OSBAQA0KPj4+
ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVz
ZSkgJVlBTUwgMS4yDQo+Pj4gKy0tLQ0KPj4+ICskaWQ6DQo+Pj4gK2h0dHA6Ly9kZXZpY2V0cmVl
Lm9yZy9zY2hlbWFzL2ludGVycnVwdC1jb250cm9sbGVyL3JlYWx0ZWsscnRkMTMxOWQtDQo+Pj4g
K2kNCj4+PiArbnRjLnlhbWwjDQo+Pj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9t
ZXRhLXNjaGVtYXMvY29yZS55YW1sIw0KPj4+ICsNCj4+PiArdGl0bGU6IFJlYWx0ZWsgREhDIFJU
RDEzMTlEIEludGVycnVwdCBDb250cm9sbGVyIERldmljZSBUcmVlDQo+Pj4gK0JpbmRpbmdzDQo+
Pj4gKw0KPj4+ICtkZXNjcmlwdGlvbjoNCj4+PiArICBUaGlzIGludGVycnVwdCBjb250cm9sbGVy
IGlzIGEgY29tcG9uZW50IG9mIFJlYWx0ZWsgREhDIFJURDEzMTlEDQo+Pj4gK2FuZA0KPj4+ICsg
IGlzIGRlc2lnbmVkIHRvIHJlY2VpdmUgaW50ZXJydXB0cyBmcm9tIHBlcmlwaGVyYWwgZGV2aWNl
cy4NCj4+PiArDQo+Pj4gKyAgRWFjaCBESEMgU29DIGhhcyB0d28gc2V0cyBvZiBpbnRlcnJ1cHQg
Y29udHJvbGxlcnMsIGVhY2ggY2FwYWJsZQ0KPj4+ICsgb2YgaGFuZGxpbmcgdXAgdG8gMzIgaW50
ZXJydXB0cy4NCj4+PiArDQo+Pj4gK21haW50YWluZXJzOg0KPj4+ICsgIC0gSmFtZXMgVGFpIDxq
YW1lcy50YWlAcmVhbHRlay5jb20+DQo+Pj4gKw0KPj4+ICthbGxPZjoNCj4+PiArICAtICRyZWY6
IC9zY2hlbWFzL2ludGVycnVwdC1jb250cm9sbGVyLnlhbWwjDQo+Pj4gKw0KPj4+ICtwcm9wZXJ0
aWVzOg0KPj4+ICsgICIjaW50ZXJydXB0LWNlbGxzIjoNCj4+PiArICAgIGNvbnN0OiAxDQo+Pj4g
Kw0KPj4+ICsgIGNvbXBhdGlibGU6DQo+Pj4gKyAgICBlbnVtOg0KPj4+ICsgICAgICAtIHJlYWx0
ZWsscnRkMTMxOWQtaW50Yy1pc28NCj4+PiArICAgICAgLSByZWFsdGVrLHJ0ZDEzMTlkLWludGMt
bWlzYw0KPj4NCj4+U28gdGhpcyBpcyB0aGUgc2FtZSBhcyB0aGUgb3RoZXIgb25lPyBXaHkgaXQg
Y2Fubm90IGJlIHBhcnQgb2YgdGhhdCBvbmU/DQo+DQo+SSB3aWxsIGNvbnNvbGlkYXRlIHRoZXNl
IHBhcnRzIGludG8gYSBzaW5nbGUgZmlsZS4NCj4NCg0KSSBpbml0aWFsbHkgYmVsaWV2ZWQgdGhh
dCBlYWNoIHBsYXRmb3JtIG5lZWRlZCBpdHMgWUFNTCBmaWxlIGZvciBkb2N1bWVudGF0aW9uIGFu
ZCBzcGVjaWZpYyBjb25maWd1cmF0aW9ucy4NCkhvd2V2ZXIsIGl0IGFwcGVhcnMgdGhhdCB0aGlz
IGlzbid0IHRoZSBjYXNlLg0KDQpSZWdhcmRzLA0KSmFtZXMNCg0K

