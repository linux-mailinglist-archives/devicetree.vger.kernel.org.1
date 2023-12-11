Return-Path: <devicetree+bounces-23788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BB61280C539
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 10:50:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EBC871C202E8
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 09:50:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72DDA219FE;
	Mon, 11 Dec 2023 09:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=163.com header.i=@163.com header.b="RBWlbPA9"
X-Original-To: devicetree@vger.kernel.org
Received: from m1345.mail.163.com (m1345.mail.163.com [220.181.13.45])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0A14E8E;
	Mon, 11 Dec 2023 01:50:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=Le9S3rlswY7wsWpZpFPJ1/zOzeuR21eJrjPWtQDnFmw=; b=R
	BWlbPA99UveIgqwBMNsovL7c9E9Qjxlt7FC/oDBdkpzkh2wknCpH9RQu8bIPbiq1
	7AJILkrhd+a07N6G9vDSylwE+q56fk/K48Vx1K2LNDYPQT0xSi+sEPYADuvWymDJ
	1L8QIDVu/8l+8vxJY1TT0q9PZS4pHQagY9tpI5UBI8=
Received: from andyshrk$163.com ( [58.22.7.114] ) by ajax-webmail-wmsvr45
 (Coremail) ; Mon, 11 Dec 2023 17:49:58 +0800 (CST)
Date: Mon, 11 Dec 2023 17:49:58 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
Cc: heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re:Re: [PATCH v2 5/5] arm64: dts: rockchip: Add support for rk3588
 based board Cool Pi CM5 EVB
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20230109(dcb5de15)
 Copyright (c) 2002-2023 www.mailtech.cn 163com
In-Reply-To: <2b58450a-1bde-424b-ab69-a3834914522c@linaro.org>
References: <20231210080313.1667013-1-andyshrk@163.com>
 <20231210080629.1667589-1-andyshrk@163.com>
 <2b58450a-1bde-424b-ab69-a3834914522c@linaro.org>
X-NTES-SC: AL_Qu2bAP6Tt0ki7iabbOkXn0kXhec2W8Czvvgg34JRP5k0hynnwAEvc0JFOEPk/d2MNhKrjSWXaid/wONHUYtdeq32EJv2by2Fsmbt0bCXqxA3
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <14ab4c8c.4fa1.18c58488bf2.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:LcGowADH_mtG23ZleJAsAA--.19192W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqApDXmVOA4wwdAACsd
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==

CkhpIEtyenlzenRvZu+8mgoKQXQgMjAyMy0xMi0xMCAxOToxMjoxNSwgIktyenlzenRvZiBLb3ps
b3dza2kiIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgo+T24gMTAvMTIv
MjAyMyAwOTowNiwgQW5keSBZYW4gd3JvdGU6Cj4+IENvb2wgUGkgQ001IEVWQiBpcyBhIGJvYXJk
IGJhc2VkIG9uIHJrMzU4OC4KPj4gCj4+IFNwZWNpZmljYXRpb246Cj4+IC0gUm9ja2NoaXAgUksz
NTg4Cj4+IC0gTFBERFI0IDIvNC84LzE2IEdCCj4+IC0gVEYgc2NhcmQgc2xvdAo+PiAtIGVNTUMg
OC8zMi82NC8xMjggR0IgbW9kdWxlCj4+IC0gR2lnYWJpdCBldGhlcm5ldCB4IDEgd2l0aCBQSFkg
WVQ4NTMxCj4+IC0gR2lnYWJpdCBldGhlcm5ldCB4IDEgZHJpdmVkIGJ5IFBDSUUgd2l0aCBZVDY4
MDFTCj4+IC0gSERNSSBUeXBlIEEgb3V0IHggMgo+PiAtIEhETUkgVHlwZSBEIGluIHggMQo+PiAt
IFVTQiAyLjAgSG9zdCB4IDIKPj4gLSBVU0IgMy4wIE9URyB4IDEKPj4gLSBVU0IgMy4wIEhvc3Qg
eCAxCj4+IC0gUENJRSBNLjIgRSBLZXkgZm9yIFdpcmVsZXNzIGNvbm5lY3Rpb24KPj4gLSBQQ0lF
IE0uMiBNIEtleSBmb3IgTlZNRSBjb25uZWN0aW9uCj4+IC0gNDAgcGluIGhlYWRlcgo+Cj4KPj4g
Kwo+PiArCWJhY2tsaWdodDogYmFja2xpZ2h0IHsKPj4gKwkJY29tcGF0aWJsZSA9ICJwd20tYmFj
a2xpZ2h0IjsKPj4gKwkJcG93ZXItc3VwcGx5ID0gPCZ2Y2MxMnZfZGNpbj47Cj4+ICsJCXB3bXMg
PSA8JnB3bTIgMCAyNTAwMCAwPjsKPj4gKwkJZW5hYmxlLWdwaW9zID0gPCZncGlvNCBSS19QQTMg
R1BJT19BQ1RJVkVfSElHSD47Cj4+ICsJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+ICsJ
CXBpbmN0cmwtMCA9IDwmYmxfZW4+Owo+PiArCQlzdGF0dXMgPSAib2theSI7Cj4KPlRoaXMgaXMg
YSBmcmllbmRseSByZW1pbmRlciBkdXJpbmcgdGhlIHJldmlldyBwcm9jZXNzLgo+Cj5JdCBzZWVt
cyBteSBvciBvdGhlciByZXZpZXdlcidzIHByZXZpb3VzIGNvbW1lbnRzIHdlcmUgbm90IGZ1bGx5
Cj5hZGRyZXNzZWQuIE1heWJlIHRoZSBmZWVkYmFjayBnb3QgbG9zdCBiZXR3ZWVuIHRoZSBxdW90
ZXMsIG1heWJlIHlvdQo+anVzdCBmb3Jnb3QgdG8gYXBwbHkgaXQuIFBsZWFzZSBnbyBiYWNrIHRv
IHRoZSBwcmV2aW91cyBkaXNjdXNzaW9uIGFuZAo+ZWl0aGVyIGltcGxlbWVudCBhbGwgcmVxdWVz
dGVkIGNoYW5nZXMgb3Iga2VlcCBkaXNjdXNzaW5nIHRoZW0uCgpZZXPvvIwgaXQgc2VlbXMgdGhh
dCB0aGUgY29tbWVudHMgd2VyZSBsb3N077yMIEkgZGlkbid0IGdldCBhbnkgY29tbWVudHMgYWJv
dXQgUEFUQ0ggNSBpbiBteSBWMS4KQW55d2F5LCBJIHdpbGwgY2hlY2sgdGhpcyBwYXRjaCBhZ2Fp
biwgYW5kIGZpeCB0aGUgaXNzdWUgSSBmaW5kIGJ5IG15c2VsZi4KPgo+VGhhbmsgeW91Lgo+Cj5C
ZXN0IHJlZ2FyZHMsCj5Lcnp5c3p0b2YKPgo+Cj5fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+aHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==

