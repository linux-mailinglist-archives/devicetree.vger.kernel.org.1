Return-Path: <devicetree+bounces-23721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BA02980C25A
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 08:49:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EACF41C208DC
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 07:49:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC68A208D1;
	Mon, 11 Dec 2023 07:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=163.com header.i=@163.com header.b="n3kXz7fQ"
X-Original-To: devicetree@vger.kernel.org
Received: from m1345.mail.163.com (m1345.mail.163.com [220.181.13.45])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 47A3FF2;
	Sun, 10 Dec 2023 23:49:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=3xGAux2eUESAR4VcoWBAruvy8wC4zTo5nWdivW8esro=; b=n
	3kXz7fQ4QMYCO83TzQucwdIYp27tDnT7ljY64uZ4w//UHJlhmZeQpIw+PQjZkYJV
	NwtT9gsqi/jkJze9Mak68rowRbKO5o+XU668yao3rtPjBdQS02GM99lyY/QCJQOa
	Hyhq2y3c/h0XBxVax9echZebfGonQ5EkM9r5hfr944=
Received: from andyshrk$163.com ( [58.22.7.114] ) by ajax-webmail-wmsvr45
 (Coremail) ; Mon, 11 Dec 2023 15:48:46 +0800 (CST)
Date: Mon, 11 Dec 2023 15:48:46 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
Cc: heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re:Re: [PATCH v2 3/5] arm64: dts: rockchip: Add support for rk3588s
 based board Cool Pi 4B
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20230109(dcb5de15)
 Copyright (c) 2002-2023 www.mailtech.cn 163com
In-Reply-To: <32b6437f-0e56-439d-8ebb-465e5230b18f@linaro.org>
References: <20231210080313.1667013-1-andyshrk@163.com>
 <20231210080547.1667421-1-andyshrk@163.com>
 <32b6437f-0e56-439d-8ebb-465e5230b18f@linaro.org>
X-NTES-SC: AL_Qu2bAP6Tv0Ep4CedYOkXn0kXhec2W8Czvvgg34JRP5k0hynnwAEvc0JFOEPk/d2MNhKrjSWXaid/wONHUYtdeq1GtiWLO/5Xrzrjm5TAIkYZ
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <21f982a7.3c52.18c57d99625.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:LcGowAD3X0PfvnZlA3QsAA--.16084W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqAJDXmVOA4n0hgABsl
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==

CkhpIEtyenlzenRvZu+8mgoKQXQgMjAyMy0xMi0xMCAxOToxMzoyNiwgIktyenlzenRvZiBLb3ps
b3dza2kiIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgo+T24gMTAvMTIv
MjAyMyAwOTowNSwgQW5keSBZYW4gd3JvdGU6Cj4+IENvb2xQaSA0QiBpcyBhIHJrMzU4OHMgYmFz
ZWQgU0JDLgo+PiBTcGVjaWZpY2F0aW9uOgo+PiAtIFJvY2tjaGlwIFJLMzU4OFMKPj4gLSBMUERE
UjQgMi80LzgvMTYgR0IKPj4gLSBURiBzY2FyZCBzbG90Cj4KPi4uLgo+Cj4+ICsmaTJjNiB7Cj4+
ICsJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gKwlwaW5jdHJsLTAgPSA8JmkyYzZtM194
ZmVyPjsKPj4gKwlzdGF0dXMgPSAib2theSI7Cj4+ICsKPj4gKwloeW04NTYzOiBydGNANTEgewo+
PiArCQljb21wYXRpYmxlID0gImhhb3l1LGh5bTg1NjMiOwo+PiArCQlyZWcgPSA8MHg1MT47Cj4+
ICsJCSNjbG9jay1jZWxscyA9IDwwPjsKPj4gKwkJY2xvY2stZnJlcXVlbmN5ID0gPDMyNzY4PjsK
Pj4gKwkJY2xvY2stb3V0cHV0LW5hbWVzID0gImh5bTg1NjMiOwo+PiArCQlwaW5jdHJsLW5hbWVz
ID0gImRlZmF1bHQiOwo+PiArCQlwaW5jdHJsLTAgPSA8Jmh5bTg1NjNfaW50PjsKPj4gKwkJaW50
ZXJydXB0LXBhcmVudCA9IDwmZ3BpbzA+Owo+PiArCQlpbnRlcnJ1cHRzID0gPFJLX1BCMCBJUlFf
VFlQRV9MRVZFTF9MT1c+Owo+PiArCQlzdGF0dXMgPSAib2theSI7Cj4KPk15IGNvbW1lbnRzIGFi
b3V0IHJlZHVuZGFudCBzdGF0dWVzIGFwcGxpZXMgdG8gYWxsIHBsYWNlcywgbm90IG9ubHkgdG8K
Pm9uZSBzcGVjaWZpYyBwbGFjZS4uLgoKU29ycnkgZm9yIHRoYXTvvIwgSSB3aWxsIGZpeCBpbiBW
MwoKPgo+QmVzdCByZWdhcmRzLAo+S3J6eXN6dG9mCj4KPgo+X19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
Cj5saW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=

