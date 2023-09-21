Return-Path: <devicetree+bounces-1929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 145E47A90C2
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 04:00:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E0051C20AC4
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 02:00:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE32B15A4;
	Thu, 21 Sep 2023 02:00:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1B1B136A
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 02:00:45 +0000 (UTC)
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16E8ABB;
	Wed, 20 Sep 2023 19:00:41 -0700 (PDT)
X-SpamFilter-By: ArmorX SpamTrap 5.78 with qID 38L20TwjC2067081, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36505.realtek.com.tw[172.21.6.25])
	by rtits2.realtek.com.tw (8.15.2/2.92/5.92) with ESMTPS id 38L20TwjC2067081
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 21 Sep 2023 10:00:30 +0800
Received: from RTEXDAG01.realtek.com.tw (172.21.6.100) by
 RTEXH36505.realtek.com.tw (172.21.6.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.32; Thu, 21 Sep 2023 10:00:30 +0800
Received: from RTEXMBS04.realtek.com.tw (172.21.6.97) by
 RTEXDAG01.realtek.com.tw (172.21.6.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Thu, 21 Sep 2023 10:00:29 +0800
Received: from RTEXMBS04.realtek.com.tw ([fe80::7445:d92b:d0b3:f79c]) by
 RTEXMBS04.realtek.com.tw ([fe80::7445:d92b:d0b3:f79c%5]) with mapi id
 15.01.2375.007; Thu, 21 Sep 2023 10:00:29 +0800
From: =?utf-8?B?VFlfQ2hhbmdb5by15a2Q6YC4XQ==?= <tychang@realtek.com>
To: Linus Walleij <linus.walleij@linaro.org>
CC: Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v3 0/7] Add pinctrl driver support for Realtek DHC SoCs
Thread-Topic: [PATCH v3 0/7] Add pinctrl driver support for Realtek DHC SoCs
Thread-Index: AQHZ6uG6NRO6y7T0o0yihmgUFfWH/bAjCcYAgAAARoCAAXsAQA==
Date: Thu, 21 Sep 2023 02:00:29 +0000
Message-ID: <b160be5e1b1a4b589ca9bb383b104a23@realtek.com>
References: <20230919101117.4097-1-tychang@realtek.com>
 <CACRpkdYtGhhNuBnP0MvMKiqP=wPsv=5K_ZBaWcgW3sssLrm2aQ@mail.gmail.com>
 <CACRpkda_EVEOP=LCjiBcSgPY7-mU9ENiOcw5taskL7TcwkMkCw@mail.gmail.com>
In-Reply-To: <CACRpkda_EVEOP=LCjiBcSgPY7-mU9ENiOcw5taskL7TcwkMkCw@mail.gmail.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
x-originating-ip: [172.21.181.166]
x-kse-serverinfo: RTEXDAG01.realtek.com.tw, 9
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
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

SGkgTGludXMsDQoNCj4NCj5PbiBXZWQsIFNlcCAyMCwgMjAyMyBhdCAxOjA44oCvUE0gTGludXMg
V2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPiB3cm90ZToNCj4NCj4+IEFsbCBwYXRj
aGVzIGxvb2sgZ29vZCwgYmluZGluZ3MgYXJlIHJldmlld2VkIGJ5IFJvYiwgbXkgY29tbWVudHMN
Cj4+IGFkZHJlc3NlZDogcGF0Y2hlcyBhcHBsaWVkIGZvciBrZXJuZWwgdjYuNiENCj4NCj5Tb3Jy
eSwga2VybmVsIHY2LjcgYXQgdGhpcyBwb2ludCBvYnZpb3VzbHkuIEkgY2FuJ3Qga2VlcCBudW1i
ZXJzIGluIG15IGhlYWQNCj5wcm9wZXJseSA6Lw0KPg0KPllvdXJzLA0KPkxpbnVzIFdhbGxlaWoN
Cg0KSSBhcHByZWNpYXRlIGl0ISBUaGFuayB5b3UgZm9yIHRoZSByZXZpZXchDQoNClRoYW5rcywN
ClR6dXlpIENoYW5nDQo=

