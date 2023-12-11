Return-Path: <devicetree+bounces-23720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A15C80C257
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 08:47:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 43946280D25
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 07:47:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FDFB208C2;
	Mon, 11 Dec 2023 07:47:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=163.com header.i=@163.com header.b="nHlbUYs9"
X-Original-To: devicetree@vger.kernel.org
Received: from m1345.mail.163.com (m1345.mail.163.com [220.181.13.45])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 576D1F4;
	Sun, 10 Dec 2023 23:47:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=F710GYP3xcaP9Ooa21AJAPHW7LUypG6HJK1DH4SqTXc=; b=n
	HlbUYs94fB8925jo6868GF+bJgyUUJwrzJqhu5irYKpiKGARmmU/8jZ/deyOpi9V
	z1sE+ZQ34FrthgiZaympxRrXJI1mBzwImeOMqrQLlqudu4ZL559iqvEBuvCSJVhc
	Ohe9oA7veD1bvzR+USrcOz3jbebfOzEeVyV444N08k=
Received: from andyshrk$163.com ( [58.22.7.114] ) by ajax-webmail-wmsvr45
 (Coremail) ; Mon, 11 Dec 2023 15:46:55 +0800 (CST)
Date: Mon, 11 Dec 2023 15:46:55 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
Cc: heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re:Re: [PATCH v2 4/5] dt-bindings: arm: rockchip: Add Cool Pi CM5
 EVB
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20230109(dcb5de15)
 Copyright (c) 2002-2023 www.mailtech.cn 163com
In-Reply-To: <6eb1541b-430b-41cf-b297-ebb3d47f5278@linaro.org>
References: <20231210080313.1667013-1-andyshrk@163.com>
 <20231210080607.1667517-1-andyshrk@163.com>
 <6eb1541b-430b-41cf-b297-ebb3d47f5278@linaro.org>
X-NTES-SC: AL_Qu2bAP6Tv0Aq4yCaY+kXn0kXhec2W8Czvvgg34JRP5k0hynnwAEvc0JFOEPk/d2MNhKrjSWXaid/wONHUYtdeq1hQceGWYjhrD5rcc09IULP
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <6d8b8a8b.3c0e.18c57d7e1b4.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:LcGowAD3vzRvvnZlsHMsAA--.7025W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEBRDXmVOA4l+CAABsP
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==

CkhpIEtyenlzenRvZu+8mgoKQXQgMjAyMy0xMi0xMCAxOToxMTozMywgIktyenlzenRvZiBLb3ps
b3dza2kiIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgo+T24gMTAvMTIv
MjAyMyAwOTowNiwgQW5keSBZYW4gd3JvdGU6Cj4+IEFkZCBDb29sIFBpIENNNSBFVkIsIGEgYm9h
cmQgcG93ZXJlZCBieSBSSzM1ODgKPj4gCj4+IFNpZ25lZC1vZmYtYnk6IEFuZHkgWWFuIDxhbmR5
c2hya0AxNjMuY29tPgo+PiAKPj4gLS0tCj4+IAo+PiBDaGFuZ2VzIGluIHYyOgo+PiAtIGNoYW5n
ZSBib2FyZCBjb21wYXRpYmxlIGZyb20gIkNvb2xQaSBDTTUgRVZCIiB0byAiY29vbHBpLHBpLWNt
NS1ldmIiCj4+IAo+PiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2Nr
Y2hpcC55YW1sIHwgNSArKysrKwo+PiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+
PiAKPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0v
cm9ja2NoaXAueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9j
a2NoaXAueWFtbAo+PiBpbmRleCAxMWQwMzAzNWYzZGIuLjRkYTgzYmJkNjQyYSAxMDA2NDQKPj4g
LS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1s
Cj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAu
eWFtbAo+PiBAQCAtOTUsNiArOTUsMTEgQEAgcHJvcGVydGllczoKPj4gICAgICAgICAgICAtIGNv
bnN0OiBjaGlwc3BhcmsscmF5ZWFnZXItcHgyCj4+ICAgICAgICAgICAgLSBjb25zdDogcm9ja2No
aXAscmszMDY2YQo+PiAgCj4+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBDb29sIFBpIENvbXB1dGUg
TW9kdWxlIDUoQ001KSBFVkIKPj4gKyAgICAgICAgaXRlbXM6Cj4+ICsgICAgICAgICAgLSBjb25z
dDogY29vbHBpLHBpLWNtNS1ldmIKPgo+SWYgaXQgaXMgbW9kdWxlIHlvdSBhcmUgbWF5YmUgbWlz
c2luZyBoZXJlIG1vZHVsZSBEVFNJIGFuZCBjb21wYXRpYmxlLgo+CgpZZXPvvIwgaXQgaXMgYSBj
b3JlIGJvYXJk77yIQ00177yJICsgbW90aGVyIGJvYXJkID0gQ001IEVWQu+8jHRoaXMgaXMKdGhl
ICB2YXJpYW50IEkgY3VycmVudCBoYXZl77yMIEkgd2FudCB0byBrZWVwIHRoZSBkdHMgYXMgaXQg
aXMgbm9377yMSSB3aWxsCmNvbnZlcnQgaXQgdG8gYSBkdHNpIHdoZW4gSSBnZXQgYW5vdGhlciB2
YXJpYW50IGZvciB0aGlzIGNvcmUgYm9hcmTvvIhDTTXvvIkuCgo+QWNrZWQtYnk6IEtyenlzenRv
ZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KPgo+QmVzdCByZWdh
cmRzLAo+S3J6eXN6dG9mCj4KPgo+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj5saW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=

