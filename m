Return-Path: <devicetree+bounces-137645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 56754A0A2C5
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 11:29:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 42EEA188C1E4
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 10:29:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C533F190059;
	Sat, 11 Jan 2025 10:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=163.com header.i=@163.com header.b="BuhGhh8c"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.2])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52CA918A931;
	Sat, 11 Jan 2025 10:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.2
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736591386; cv=none; b=qY8J4iAPo+McgFHY8GXonXb8K9hdDNobXZA/HssH6vMdfBWnX6arXDaa3wbQ2SGMufpDFpx6wNPm+LoK+Qr0PrOrkPUnx6Fsvfgoy3qA2mrANhJ1ZjRq3xoNAfrlYDufsbVNNBFcwaVGM1jNSy/wT5aOAjl0gJyXoddnJcoQQyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736591386; c=relaxed/simple;
	bh=4h5FkGP9uLjD9PpRnEI6i5d6ZBYK9Y9fHY/oaQQZI6M=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=YXACJwKk3bgMXObGH8EE3LrWM4BeB5C8+WZjPfaY9zC1AvT6+FExTniwIaOeLFt6MVseh72I2UEct02HOqeeVdbgP0z/vBVbzr3k8ax6ZNQefModHtLsWImpSjWFDW6QOzfYSAHN7VWkizvxjwRreW9AV/6PPXxobDZQQy1Bcpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=fail (1024-bit key) header.d=163.com header.i=@163.com header.b=BuhGhh8c reason="signature verification failed"; arc=none smtp.client-ip=220.197.31.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=XqPooFU4lDQIMmbWwzTdUBSgmvqEZt0ZN26iMC58hk8=; b=B
	uhGhh8cdUvNxwa/3wFTY/H9m8dUUgSBofmYJ6OjdDNKDT7b7ByXbZYnKv18Um3sc
	wjGaVumw+l0jzvLYfXivhI1Mw/eURNIuoRuTffCTbcqGRtz74E5A62+XzAEmTl2Y
	Neo/XDuQYm6YigxxE8VZVxB3K2Aec4rvGQIwiitQEU=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-104 (Coremail) ; Sat, 11 Jan 2025 18:28:26 +0800
 (CST)
Date: Sat, 11 Jan 2025 18:28:26 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Damon Ding" <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	rfoss@kernel.org, vkoul@kernel.org, sebastian.reichel@collabora.com, 
	cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	dmitry.baryshkov@linaro.org, andy.yan@rock-chips.com, 
	hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re:[PATCH v5 20/20] arm64: dts: rockchip: Enable eDP0 display on
 RK3588S EVB1 board
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <20250109032725.1102465-21-damon.ding@rock-chips.com>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-21-damon.ding@rock-chips.com>
X-NTES-SC: AL_Qu2YBPmSvksr4COfY+lS7TNL56tbLqrJwL5gnvMwRNstqDDI/jkhRUZdM2DZ7MGY4ITc56TKdO2qxwviwKtO
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <8927876.291e.19454e86e8f.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:aCgvCgDnD1XKR4Jn4k1VAA--.23943W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqBjRXmeCQygHywAEs5
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==

CkhpIERhbW9uLAoKQXQgMjAyNS0wMS0wOSAxMToyNzoyNSwgIkRhbW9uIERpbmciIDxkYW1vbi5k
aW5nQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPkFkZCB0aGUgbmVjZXNzYXJ5IERUIGNoYW5nZXMg
dG8gZW5hYmxlIGVEUDAgb24gUkszNTg4UyBFVkIxIGJvYXJkOgo+LSBTZXQgcGluY3RybCBvZiBw
d20xMiBmb3IgYmFja2xpZ2h0Cj4tIEVuYWJsZSBlZHAwL2hkcHR4cGh5MC92cDIKPi0gQWRkIGF1
eC1idXMvcGFuZWwgbm9kZXMKPgo+U2lnbmVkLW9mZi1ieTogRGFtb24gRGluZyA8ZGFtb24uZGlu
Z0Byb2NrLWNoaXBzLmNvbT4KPgo+LS0tCj4KPkNoYW5nZXMgaW4gdjI6Cj4tIFJlbW92ZSBicmln
aHRuZXNzLWxldmVscyBhbmQgZGVmYXVsdC1icmlnaHRuZXNzLWxldmVsIHByb3BlcnRpZXMgaW4K
PiAgYmFja2xpZ2h0IG5vZGUuCj4tIEFkZCB0aGUgZGV0YWlsIERUIGNoYW5nZXMgdG8gY29tbWl0
IG1lc3NhZ2UuCj4KPkNoYW5nZXMgaW4gdjM6Cj4tIFVzZSBhdXgtYnVzIGluc3RlYWQgb2YgcGxh
dGZvcm0gYnVzIGZvciBlZHAtcGFuZWwuCj4KPkNoYW5nZXMgaW4gdjQ6Cj4tIEFkZCBjb21tZW50
cyByZWxhdGVkIHRvIHRoZSB1c2Ugb2YgcGFuZWwgY29tcGF0aWJsZSAibGcsbHAwNzlxeDEtc3Aw
diIKPiAgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLgo+Cj5DaGFuZ2VzIGluIHY1Ogo+LSBVc2UgImVk
cC1wYW5lbCIgaW5zdGVhZCBvZiAibGcsbHAwNzlxeDEtc3AwdiIKPi0gUmVtb3ZlIHVubmVjZXNz
YXJ5IGNvbW1lbnRzIGluIGNvbW1pdCBtZXNzYWdlCj4tIEFzc2lnbiB0aGUgcGFyZW50IG9mIERD
TEtfVk9QMl9TUkMgdG8gUExMX1YwUExMCj4tLS0KPiAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTg4cy1ldmIxLXYxMC5kdHMgICAgfCA1NCArKysrKysrKysrKysrKysrKysrCj4gMSBmaWxlIGNo
YW5nZWQsIDU0IGluc2VydGlvbnMoKykKPgo+ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4cy1ldmIxLXYxMC5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU4OHMtZXZiMS12MTAuZHRzCj5pbmRleCBiYzQwNzc1NzViZWIuLmE4YzE1MWI0
MWUyMSAxMDA2NDQKPi0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1l
dmIxLXYxMC5kdHMKPisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1l
dmIxLXYxMC5kdHMKPkBAIC05LDYgKzksNyBAQAo+ICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9ncGlv
L2dwaW8uaD4KPiAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW5wdXQvaW5wdXQuaD4KPiAjaW5jbHVk
ZSA8ZHQtYmluZGluZ3MvcGluY3RybC9yb2NrY2hpcC5oPgo+KyNpbmNsdWRlIDxkdC1iaW5kaW5n
cy9zb2Mvcm9ja2NoaXAsdm9wMi5oPgo+ICNpbmNsdWRlIDxkdC1iaW5kaW5ncy91c2IvcGQuaD4K
PiAjaW5jbHVkZSAicmszNTg4cy5kdHNpIgo+IAo+QEAgLTIzOCw2ICsyMzksNDEgQEAgJmNvbWJw
aHkyX3BzdSB7Cj4gCXN0YXR1cyA9ICJva2F5IjsKPiB9Owo+IAo+KyZlZHAwIHsKPisJZm9yY2Ut
aHBkOwo+KwlzdGF0dXMgPSAib2theSI7Cj4rCj4rCWF1eC1idXMgewo+KwkJcGFuZWwgewo+KwkJ
CWNvbXBhdGlibGUgPSAiZWRwLXBhbmVsIjsKPisJCQliYWNrbGlnaHQgPSA8JmJhY2tsaWdodD47
Cj4rCQkJcG93ZXItc3VwcGx5ID0gPCZ2Y2MzdjNfbGNkX2VkcD47Cj4rCj4rCQkJcG9ydCB7Cj4r
CQkJCXBhbmVsX2luX2VkcDogZW5kcG9pbnQgewo+KwkJCQkJcmVtb3RlLWVuZHBvaW50ID0gPCZl
ZHBfb3V0X3BhbmVsPjsKPisJCQkJfTsKPisJCQl9Owo+KwkJfTsKPisJfTsKPit9Owo+Kwo+KyZl
ZHAwX2luIHsKPisJZWRwMF9pbl92cDI6IGVuZHBvaW50IHsKPisJCXJlbW90ZS1lbmRwb2ludCA9
IDwmdnAyX291dF9lZHAwPjsKPisJfTsKPit9Owo+Kwo+KyZlZHAwX291dCB7Cj4rCWVkcF9vdXRf
cGFuZWw6IGVuZHBvaW50IHsKPisJCXJlbW90ZS1lbmRwb2ludCA9IDwmcGFuZWxfaW5fZWRwPjsK
PisJfTsKPit9Owo+Kwo+KyZoZHB0eHBoeTAgewo+KwlzdGF0dXMgPSAib2theSI7Cj4rfTsKPisK
PiAmaTJjMyB7Cj4gCXN0YXR1cyA9ICJva2F5IjsKPiAKPkBAIC0zOTksNiArNDM1LDcgQEAgdXNi
YzBfaW50OiB1c2JjMC1pbnQgewo+IH07Cj4gCj4gJnB3bTEyIHsKPisJcGluY3RybC0wID0gPCZw
d20xMm0xX3BpbnM+Owo+IAlzdGF0dXMgPSAib2theSI7Cj4gfTsKPiAKPkBAIC0xMTY4LDMgKzEy
MDUsMjAgQEAgdXNiZHBfcGh5MF9kcF9hbHRtb2RlX211eDogZW5kcG9pbnRAMSB7Cj4gCQl9Owo+
IAl9Owo+IH07Cj4rCj4rJnZvcF9tbXUgewo+KwlzdGF0dXMgPSAib2theSI7Cj4rfTsKPisKPism
dm9wIHsKPisJYXNzaWduZWQtY2xvY2tzID0gPCZjcnUgRENMS19WT1AyX1NSQz47Cj4rCWFzc2ln
bmVkLWNsb2NrLXBhcmVudHMgPSA8JmNydSBQTExfVjBQTEw+OwoKSXQncyBuZWNlc3NhcnkgdG8g
ZXhwbGFpbiB3aHkgd2UgbmVlZCB0byAgYXNzaWduIFYwUExMIGZvciBEQ0xLX1ZPUDJfU1JDIGlu
IGNvbW1pdCBtZXNzYWdlLgoKCj4rCXN0YXR1cyA9ICJva2F5IjsKPit9Owo+Kwo+KyZ2cDIgewo+
Kwl2cDJfb3V0X2VkcDA6IGVuZHBvaW50QFJPQ0tDSElQX1ZPUDJfRVBfRURQMCB7Cj4rCQlyZWcg
PSA8Uk9DS0NISVBfVk9QMl9FUF9FRFAwPjsKPisJCXJlbW90ZS1lbmRwb2ludCA9IDwmZWRwMF9p
bl92cDI+Owo+Kwl9Owo+K307Cj4tLSAKPjIuMzQuMQo+Cg==

