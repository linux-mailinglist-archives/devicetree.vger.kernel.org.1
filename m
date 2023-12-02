Return-Path: <devicetree+bounces-20985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 808D4801DD4
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 17:42:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1A4A71F21082
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 16:42:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D19316436;
	Sat,  2 Dec 2023 16:42:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59E71115;
	Sat,  2 Dec 2023 08:42:17 -0800 (PST)
X-SpamFilter-By: ArmorX SpamTrap 5.78 with qID 3B2Gg6ksD981563, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36505.realtek.com.tw[172.21.6.25])
	by rtits2.realtek.com.tw (8.15.2/2.95/5.92) with ESMTPS id 3B2Gg6ksD981563
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sun, 3 Dec 2023 00:42:06 +0800
Received: from RTEXMBS06.realtek.com.tw (172.21.6.99) by
 RTEXH36505.realtek.com.tw (172.21.6.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.32; Sun, 3 Dec 2023 00:42:06 +0800
Received: from RTEXMBS03.realtek.com.tw (172.21.6.96) by
 RTEXMBS06.realtek.com.tw (172.21.6.99) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.34; Sun, 3 Dec 2023 00:42:05 +0800
Received: from RTEXMBS03.realtek.com.tw ([fe80::5510:ad08:5390:1ed3]) by
 RTEXMBS03.realtek.com.tw ([fe80::5510:ad08:5390:1ed3%2]) with mapi id
 15.01.2375.007; Sun, 3 Dec 2023 00:42:05 +0800
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
Thread-Index: AQHaGXMHJnbDooY4VkyEcMH4aisPjrCBFAaAgBU1g6A=
Date: Sat, 2 Dec 2023 16:42:05 +0000
Message-ID: <68ed7ef5ee794ce2b3dd9007e8fc0dcb@realtek.com>
References: <20231117162709.1096585-1-james.tai@realtek.com>
 <20231117162709.1096585-2-james.tai@realtek.com>
 <c3a98e2c-ba62-4798-a0d0-a8bc1fe5bb6b@linaro.org>
In-Reply-To: <c3a98e2c-ba62-4798-a0d0-a8bc1fe5bb6b@linaro.org>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
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
X-KSE-ServerInfo: RTEXH36505.realtek.com.tw, 9
X-KSE-AntiSpam-Interceptor-Info: fallback
X-KSE-Antivirus-Interceptor-Info: fallback
X-KSE-AntiSpam-Interceptor-Info: fallback

SGkgS3J6eXN6dG9mLA0KDQo+PiArDQo+PiArbWFpbnRhaW5lcnM6DQo+PiArICAtIEphbWVzIFRh
aSA8amFtZXMudGFpQHJlYWx0ZWsuY29tPg0KPj4gKw0KPj4gK2FsbE9mOg0KPj4gKyAgLSAkcmVm
OiAvc2NoZW1hcy9pbnRlcnJ1cHQtY29udHJvbGxlci55YW1sIw0KPj4gKw0KPj4gK3Byb3BlcnRp
ZXM6DQo+PiArICAiI2ludGVycnVwdC1jZWxscyI6DQo+PiArICAgIGNvbnN0OiAxDQo+PiArDQo+
PiArICBjb21wYXRpYmxlOg0KPj4gKyAgICBlbnVtOg0KPj4gKyAgICAgIC0gcmVhbHRlayxydGQx
MzI1LWludGMtaXNvDQo+PiArICAgICAgLSByZWFsdGVrLHJ0ZDEzMjUtaW50Yy1taXNjDQo+DQo+
QWxsIG15IGNvbW1lbnRzIGFwcGx5IHRvIGFsbCB5b3VyIGJpbmRpbmdzLi4uDQo+DQoNCk9rYXks
IEkgd2lsbCBhcHBseSB0byBhbGwgTXkgYmluZGluZ3MuDQoNClJlZ2FyZHMsDQpKYW1lcw0K

