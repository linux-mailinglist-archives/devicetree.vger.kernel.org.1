Return-Path: <devicetree+bounces-20315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9589F7FEC79
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 11:05:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C6DFD1C20BCC
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 10:05:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50D073B1BA;
	Thu, 30 Nov 2023 10:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8D871B4;
	Thu, 30 Nov 2023 02:05:36 -0800 (PST)
X-SpamFilter-By: ArmorX SpamTrap 5.78 with qID 3AUA52Pz83445011, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36505.realtek.com.tw[172.21.6.25])
	by rtits2.realtek.com.tw (8.15.2/2.95/5.92) with ESMTPS id 3AUA52Pz83445011
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 30 Nov 2023 18:05:02 +0800
Received: from RTEXMBS05.realtek.com.tw (172.21.6.98) by
 RTEXH36505.realtek.com.tw (172.21.6.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.32; Thu, 30 Nov 2023 18:05:02 +0800
Received: from RTEXMBS04.realtek.com.tw (172.21.6.97) by
 RTEXMBS05.realtek.com.tw (172.21.6.98) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.34; Thu, 30 Nov 2023 18:05:02 +0800
Received: from RTEXMBS04.realtek.com.tw ([fe80::40c2:6c24:2df4:e6c7]) by
 RTEXMBS04.realtek.com.tw ([fe80::40c2:6c24:2df4:e6c7%5]) with mapi id
 15.01.2375.007; Thu, 30 Nov 2023 18:05:02 +0800
From: =?utf-8?B?Q1lfSHVhbmdb6buD6Ymm5pmPXQ==?= <cy.huang@realtek.com>
To: =?utf-8?B?Q1lfSHVhbmdb6buD6Ymm5pmPXQ==?= <cy.huang@realtek.com>
CC: Rob Herring <robh+dt@kernel.org>,
        =?utf-8?B?SmFtZXMgVGFpIFvmiLTlv5fls7Bd?=
	<james.tai@realtek.com>,
        =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>,
        "linux-realtek-soc@lists.infradead.org"
	<linux-realtek-soc@lists.infradead.org>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v2 0/3] Initial RTD1319 SoC and Realtek PymParticle EVB support
Thread-Topic: [PATCH v2 0/3] Initial RTD1319 SoC and Realtek PymParticle EVB
 support
Thread-Index: AQHaI3McTWButhzRkEaF+Ca/sqlVU7CSokNg
Date: Thu, 30 Nov 2023 10:05:02 +0000
Message-ID: <ba0bac228116491dba714d6b3cc434d4@realtek.com>
References: <20231130095345.24524-1-cy.huang@realtek.com>
 <20231130095345.24524-3-cy.huang@realtek.com>
In-Reply-To: <20231130095345.24524-3-cy.huang@realtek.com>
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

U29ycnksIHRoZSBlbWFpbCB3YXMgbWlzdHJhbnNtaXR0ZWQNCg0KQ3kNCg0KPi0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogY3kuaHVhbmcgPGN5Lmh1YW5nQHJlYWx0ZWsuY29tPg0K
PlNlbnQ6IFRodXJzZGF5LCBOb3ZlbWJlciAzMCwgMjAyMyA1OjU0IFBNDQo+VG86IENZX0h1YW5n
W+m7g+mJpuaZj10gPGN5Lmh1YW5nQHJlYWx0ZWsuY29tPg0KPkNjOiBSb2IgSGVycmluZyA8cm9i
aCtkdEBrZXJuZWwub3JnPjsgSmFtZXMgVGFpIFvmiLTlv5fls7BdDQo+PGphbWVzLnRhaUByZWFs
dGVrLmNvbT47IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT47IEtyenlzenRvZg0K
Pktvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraStkdEBsaW5hcm8ub3JnPjsNCj5saW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3Jn
Ow0KPmxpbnV4LXJlYWx0ZWstc29jQGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4LWtlcm5lbEB2
Z2VyLmtlcm5lbC5vcmcNCj5TdWJqZWN0OiBbUEFUQ0ggdjIgMC8zXSBJbml0aWFsIFJURDEzMTkg
U29DIGFuZCBSZWFsdGVrIFB5bVBhcnRpY2xlIEVWQiBzdXBwb3J0DQo+DQo+SGkgQW5kcmVhcywN
Cj4NCj5UaGlzIHNlcmllcyBhZGRzIERldmljZSBUcmVlcyBmb3IgdGhlIFJlYWx0ZWsgUlREMTMx
OSBTb0MgYW5kIFJlYWx0ZWsncw0KPlB5bVBhcnRpY2xlIEVWQi4NCj4NCj52MjoNCj4qIFJURDEz
MTkgU29DIGFuZCBSZWFsdGVrIFB5bVBhcnRpY2xlIEVWQg0KPg0KPkNjOiBSb2IgSGVycmluZyA8
cm9iaCtkdEBrZXJuZWwub3JnPg0KPkNjOiBKYW1lcyBUYWkgPGphbWVzLnRhaUByZWFsdGVrLmNv
bT4NCj5DYzogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPg0KPkNjOiBLcnp5c3p0
b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpK2R0QGxpbmFyby5vcmc+DQo+Q2M6IGxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPkNjOiBkZXZpY2V0cmVlQHZnZXIu
a2VybmVsLm9yZw0KPkNjOiBsaW51eC1yZWFsdGVrLXNvY0BsaXN0cy5pbmZyYWRlYWQub3JnDQo+
Q2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcNCj4NCj5XZWkgQ2hlbiAoMSk6DQo+ICBp
MmM6IHhnZW5lLXNsaW1wcm86IEZpeCBvdXQtb2YtYm91bmRzIGJ1ZyBpbiB4Z2VuZV9zbGltcHJv
X2kyY194ZmVyKCkNCj4NCj5jeS5odWFuZyAoMik6DQo+ICBkdC1iaW5kaW5nczogYXJtOiByZWFs
dGVrOiBBZGQgUmVhbHRlayBQeW0gUGFydGljbGVzIEVWQg0KPiAgYXJtNjQ6IGR0czogcmVhbHRl
azogQWRkIFJURDEzMTkgU29DIGFuZCBSZWFsdGVrIFB5bSBQYXJ0aWNsZXMgRVZCDQo+DQo+LS0N
Cj4yLjM5LjANCg0K

