Return-Path: <devicetree+bounces-249795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9F9CDF4DD
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 08:05:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DFFCC3000EA9
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 07:05:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBCF4233136;
	Sat, 27 Dec 2025 07:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="HvoSqATv"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B28AB21146C;
	Sat, 27 Dec 2025 07:05:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.3
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766819120; cv=none; b=Gen4NRQvLU43+PGMVWnC7soex1eUpzc9OpGDclgUSXg+NopnsO/FDRbNJUthHL0QSOaQoURwXZlwKIdpi+oq93Ir4J+nTyuc033bHWyNk/oJH2Yr/AX91zEqajvG5911iP+zYtiKOakTq8MdhBURoy8Q033qxuufwkqNrCqrcMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766819120; c=relaxed/simple;
	bh=qnJD/aW/+nSP0BXD12a4Ecqbki+tbWodC6E/ajq0Hpc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=M70Gavz1QZy8SSP0+vCs6lYrBxMKMnlKCRFCc4KAqcvzD5gDZbtJSnCGpqAsRD6vqxQAnwxco+ZC2JtJXFMKq6kXeJ6h/an58ZHe64WaBIRZgpSPiqk8r+WaYcXcc5gV0GTxw7jHtrlRwZHChN2YW1aB1CWF/03x3xPltmaJbac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=HvoSqATv; arc=none smtp.client-ip=117.135.210.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=qnJD/aW/+nSP0BXD12a4Ecqbki+tbWodC6E/ajq0Hpc=; b=H
	voSqATvpFlk3TQ3Qdm2FIso3/IMNyru7tV/BlBXYkAFHUpRI0uDvw+q4pkKHP5ik
	8HVMWOtlQZv/IzViNIMhyH/leuWvlaO1QFfeXcCVAtIQIaZmxFhcK+16eSlEl7aN
	Uc7NoCGi7CHfVHitWApfoHusRpsvq1KazeT38ruQV8=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-121 (Coremail) ; Sat, 27 Dec 2025 15:03:22 +0800
 (CST)
Date: Sat, 27 Dec 2025 15:03:22 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Icenowy Zheng" <zhengxingda@iscas.ac.cn>
Cc: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>,
	"Maxime Ripard" <mripard@kernel.org>,
	"Thomas Zimmermann" <tzimmermann@suse.de>,
	"David Airlie" <airlied@gmail.com>,
	"Simona Vetter" <simona@ffwll.ch>, "Rob Herring" <robh@kernel.org>,
	"Krzysztof Kozlowski" <krzk+dt@kernel.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Drew Fustini" <fustini@kernel.org>, "Guo Ren" <guoren@kernel.org>,
	"Fu Wei" <wefu@redhat.com>, "Philipp Zabel" <p.zabel@pengutronix.de>,
	"Heiko Stuebner" <heiko@sntech.de>,
	"Andrzej Hajda" <andrzej.hajda@intel.com>,
	"Neil Armstrong" <neil.armstrong@linaro.org>,
	"Robert Foss" <rfoss@kernel.org>,
	"Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>,
	"Jonas Karlman" <jonas@kwiboo.se>,
	"Jernej Skrabec" <jernej.skrabec@gmail.com>,
	"Michal Wilczynski" <m.wilczynski@samsung.com>,
	devicetree@vger.kernel.org, "Yao Zi" <ziyao@disroot.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	"Han Gao" <rabenda.cn@gmail.com>, linux-riscv@lists.infradead.org
Subject: Re:Re: [PATCH v4 5/9] drm/bridge: add a driver for T-Head TH1520
 HDMI controller
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20250723(a044bf12) Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <0eba66980024d001d4ff6d0aed6f2f3e356abf3a.camel@iscas.ac.cn>
References: <20251224161205.1132149-1-zhengxingda@iscas.ac.cn>
 <20251224161205.1132149-6-zhengxingda@iscas.ac.cn>
 <2183e580.8b98.19b5531263f.Coremail.andyshrk@163.com>
 <0eba66980024d001d4ff6d0aed6f2f3e356abf3a.camel@iscas.ac.cn>
X-CM-CTRLMSGS: 9+AdCXBsdXM9MTc2NjgxOTAwMTAyMV9jMjgyNzE1MzAxMzYxM2ZlNzQzMmEwN
 mNmOTVkZjNmZQ==
X-NTES-SC: AL_Qu2dBPSatkgr5CmebOkfmUgWjuw/WsG1v/Ul1YBSP556jArp/iIyd1x8PV/I196CCBqolQmNVhpN489ZZqJ3f4YhOtUcqUxlQaI9PqQGDBVA0w==
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <5ce9d611.1868.19b5e9e7a61.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:eSgvCgAXV667hE9pbnNLAA--.482W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbCxRt922lPhLvKXgAA31
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==

CgpIZWxsb++8jAoK5ZyoIDIwMjUtMTItMjYgMjE6Mjc6NTPvvIwiSWNlbm93eSBaaGVuZyIgPHpo
ZW5neGluZ2RhQGlzY2FzLmFjLmNuPiDlhpnpgZPvvJoKPuWcqCAyMDI1LTEyLTI15pif5pyf5Zub
55qEIDE5OjA3ICswODAw77yMQW5keSBZYW7lhpnpgZPvvJoKPj4gCj4+IAo+PiBIZWxsbyBJY2Vu
b3d5Ogo+PiAKPj4gQXQgMjAyNS0xMi0yNSAwMDoxMjowMSwgIkljZW5vd3kgWmhlbmciIDx6aGVu
Z3hpbmdkYUBpc2Nhcy5hYy5jbj4KPj4gd3JvdGU6Cj4+ID4gRnJvbTogSWNlbm93eSBaaGVuZyA8
dXd1QGljZW5vd3kubWU+Cj4+ID4gCj4+ID4gVC1IZWFkIFRIMTUyMCBTb0MgY29udGFpbnMgYSBT
eW5vcHN5cyBEZXNpZ25XYXJlIEhETUkgY29udHJvbGxlcgo+PiA+IChwYWlyZWQKPj4gPiB3aXRo
IERlc2lnbldhcmUgSERNSSBUWCBQSFkgR2VuMikgdGhhdCB0YWtlcyB0aGUgIkRQIiBvdXRwdXQg
ZnJvbQo+PiA+IHRoZQo+PiA+IGRpc3BsYXkgY29udHJvbGxlci4KPj4gPiAKPj4gPiBBZGQgYSBk
cml2ZXIgZm9yIHRoaXMgY29udHJvbGxlciB1dGlsaXppbmcgdGhlIGNvbW1vbiBEZXNpZ25XYXJl
Cj4+ID4gSERNSQo+PiA+IGNvZGUgaW4gdGhlIGtlcm5lbC4KPj4gPiAKPj4gPiBTaWduZWQtb2Zm
LWJ5OiBJY2Vub3d5IFpoZW5nIDx1d3VAaWNlbm93eS5tZT4KPj4gPiBTaWduZWQtb2ZmLWJ5OiBJ
Y2Vub3d5IFpoZW5nIDx6aGVuZ3hpbmdkYUBpc2Nhcy5hYy5jbj4KPj4gPiAtLS0KPj4gPiBObyBj
aGFuZ2VzIGluIHYzLCB2NC4KPj4gPiAKPj4gPiBDaGFuZ2VzIGluIHYyOgo+PiA+IC0gQ3JlYXRl
ZCBhIG5ldyBmdW5jdGlvbiB0byBzZXQgUEhZIHBhcmFtZXRlcnMgYW5kIHJlZmFjdG9yZWQgdGhl
Cj4+ID4gwqBjb250cm9sIGZsb3cgb2YgdGhlIGNvbmZpZ3VyZV9waHkgY2FsbGJhY2suCj4+ID4g
Cj4+ID4gTUFJTlRBSU5FUlPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAxICsKPj4gPiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL0tj
b25maWfCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDEwICsrCj4+ID4gZHJpdmVycy9ncHUvZHJtL2Jy
aWRnZS9NYWtlZmlsZcKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMSArCj4+ID4gZHJpdmVycy9ncHUv
ZHJtL2JyaWRnZS90aDE1MjAtZHctaGRtaS5jIHwgMTczCj4+ID4gKysrKysrKysrKysrKysrKysr
KysrKysrCj4+ID4gNCBmaWxlcyBjaGFuZ2VkLCAxODUgaW5zZXJ0aW9ucygrKQo+PiA+IGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3RoMTUyMC1kdy1oZG1pLmMKPj4g
Cj4+IAo+PiBBcyB0aGlzIGlzIGEgU3lub3BzeXMgRGVzaWduV2FyZSBiYXNlZCBJUCwgbWF5YmUg
aXQncyBiZXR0ZXIgdG8gcHV0Cj4+IGl0IHVuZGVywqDCoCAiZHJpdmVycy9ncHUvZHJtL2JyaWRn
ZS9zeW5vcHN5cy8iCj4+IE9yIGp1c3QgY3JlYXRlIGEgZGlyIGZvciB0aGVhZCwgSSB0aGluayB0
aGVyZSB3aWxsIGNvbWUgb3RoZXIgZGlzcGxheQo+PiByZWxhdGVkIGRyaXZlcnMgZm9yIHRoZWFk
IGluIHRoZSBmdXR1cmUuCj4KPkl0J3Mgbm90IHByb3BlciB0byBwbGFjZSB2ZW5kb3IgZ2x1ZXMg
dG8gc3lub3BzeXMvIC4KCgpUSSBoYXMgcHJlY2VkZW50cyBmb3IgZG9pbmcgdGhpcyB3aXRoIENh
ZGVuY2UgSVDvvIwgc2VlIAoKZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9jYWRlbmNlL2NkbnMtZHNp
LWo3MjFlLmMKZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9jYWRlbmNlL2NkbnMtbWhkcDg1NDYtajcy
MWUuYyAKCgo+Cj5BcyBmb3IgVC1IZWFkLCB0aGV5IHN0b3BwZWQgdGhlaXIgZW1iZWRkZWQgU29D
IGJ1c2luZXNzIChzb2xkIHRvCj5hbm90aGVyIGNvbXBhbnkpIGFuZCBub3cgdGhleSBvbmx5IG1h
a2VzIGRhdGEtY2VudGVyIGNoaXBzLCB0aGVyZQo+c2hvdWxkIGJlIG5vIFQtSGVhZCBkaXNwbGF5
IGRyaXZlcnMgaW4gdGhlIGZ1dHVyZS4KPgo+PiAKPj4gCj49PT09PT09PT09PSA4PCA9PT09PT09
PT09PT0KPgo+Cj5fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+bGludXgtcmlzY3YgbWFpbGluZyBsaXN0Cj5saW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQu
b3JnCj5odHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJp
c2N2Cg==

