Return-Path: <devicetree+bounces-130122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBE69EE0A0
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 08:53:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1FA8A167872
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 07:53:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1D07204C1E;
	Thu, 12 Dec 2024 07:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=163.com header.i=@163.com header.b="HjhtkBvV"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.3])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 797CA2010F2;
	Thu, 12 Dec 2024 07:53:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.3
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733990025; cv=none; b=S8/zNjfiIz+W09yxDWuzcqFg7inAVPga4pFLh+V0VZhSOV4xw538dc4EwL0WhkLozW5t/Iz3YP/miKuQY3KID0D8NMjZR8HazZOAfIeWgIPABU9Q+mhPbZFsNSnOJVqlCnmWvFJaJgTX41q6/XG1eacDRlnkcYevY/VlDNaHHk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733990025; c=relaxed/simple;
	bh=KunlKm5kaIElk2nbkGl2d4XuxJwpNFP6nt61GIAWgnU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=uQ08G7lpcUN/VSVN0prU1CQ0dwUFLWbMt27qGvyeDSXD3tZUM1mvqSAPsuMxxnCH7E3noFB3K8WJ8BV6fDh4pnZnNhtEsomQVmITj19CGqyEXUP7HNflZsJyItjVG/bQtjH3e1nF6uDK4153M9ui0e1WmWyBN9B47LwzOOfxFNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=fail (1024-bit key) header.d=163.com header.i=@163.com header.b=HjhtkBvV reason="signature verification failed"; arc=none smtp.client-ip=220.197.31.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=HBi+04JPLT7DrBLR/Lw8GlnHsF4umta8MvAXzK493tM=; b=H
	jhtkBvVSBFpWgywG2DsDJxzDRHwiyu2Z9StVS07RpLDttiyc7qvoataRs76NeoSo
	X2Ahr+itAYTXphLzDdtm8BCi27Q2JRv1dYSU/FE03iQIIhLLrKipDZQCJFJDjn8b
	EHJs6VfR78uJsZsR9CC2eFPhSZxn9yQrdI9Yd6r56s=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-102 (Coremail) ; Thu, 12 Dec 2024 15:52:34 +0800
 (CST)
Date: Thu, 12 Dec 2024 15:52:34 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Detlev Casanova" <detlev.casanova@collabora.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org, 
	s.hauer@pengutronix.de, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, derek.foreman@collabora.com, 
	"Andy Yan" <andy.yan@rock-chips.com>, kernel@collabora.com
Subject: Re:Re: [PATCH v5 05/18] drm/rockchip: vop2: Set AXI id for rk3588
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <5843712.DvuYhMxLoT@bootstrap>
References: <20241209122943.2781431-1-andyshrk@163.com>
 <5839604.DvuYhMxLoT@trenzalore>
 <2d381563.5e54.193b46d2f30.Coremail.andyshrk@163.com>
 <5843712.DvuYhMxLoT@bootstrap>
X-NTES-SC: AL_Qu2YAfWTtkEu4imcYekZnEobh+Y5UcK2s/ki2YFXN5k0tCTI0SYQW29KGUD2y86DDiKsoAirUQVL5MpFRpJHY44FoLj+8T3YPbknvEeelJJE
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <3f1eace4.75cf.193b9daf585.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:ZigvCgD3n75Dllpno5Q9AA--.64501W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMxyzXmdaj6atHgACsn
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==

CkhpIERldGxldiwKCkF0IDIwMjQtMTItMTEgMjM6NDU6MDEsICJEZXRsZXYgQ2FzYW5vdmEiIDxk
ZXRsZXYuY2FzYW5vdmFAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj5PbiBXZWRuZXNkYXksIDExIERl
Y2VtYmVyIDIwMjQgMDE6MzQ6MzQgRVNUIEFuZHkgWWFuIHdyb3RlOgo+PiBIaSBEZXRsZXYsCj4+
IAo+PiBBdCAyMDI0LTEyLTExIDAyOjQwOjE0LCAiRGV0bGV2IENhc2Fub3ZhIiA8ZGV0bGV2LmNh
c2Fub3ZhQGNvbGxhYm9yYS5jb20+IAo+d3JvdGU6Cj4+ID5IaSBBbmR5LAo+PiA+Cj4+ID5PbiBN
b25kYXksIDkgRGVjZW1iZXIgMjAyNCAwNzoyOToxOCBFU1QgQW5keSBZYW4gd3JvdGU6Cj4+ID4+
IEZyb206IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPj4gPj4gCj4+ID4+IFRo
ZXJlIGFyZSB0d28gQVhJIGJ1cyBpbiB2b3AyLCB3aW5kb3dzIGF0dGFjaGVkIG9uIHRoZSBzYW1l
IGJ1cyBtdXN0Cj4+ID4+IGhhdmUgYSB1bmlxdWUgY2hhbm5lbCBZVVYgYW5kIFJHQiBjaGFubmVs
IElELgo+PiA+PiAKPj4gPj4gVGhlIGRlZmF1bHQgSURzIHdpbGwgY29uZmxpY3Qgd2l0aCBlYWNo
IG90aGVyIG9uIHRoZSByazM1ODgsIHNvIHRoZXkKPj4gPj4gbmVlZCB0byBiZSByZWFzc2lnbmVk
Lgo+PiA+PiAKPj4gPj4gRml4ZXM6IDVhMDI4ZThmMDYyZiAoImRybS9yb2NrY2hpcDogdm9wMjog
QWRkIHN1cHBvcnQgZm9yIHJrMzU4OCIpCj4+ID4+IFNpZ25lZC1vZmYtYnk6IEFuZHkgWWFuIDxh
bmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPj4gPj4gVGVzdGVkLWJ5OiBEZXJlayBGb3JlbWFuIDxk
ZXJlay5mb3JlbWFuQGNvbGxhYm9yYS5jb20+Cj4+ID4+IAo+PiA+PiAtLS0KPj4gPj4gCj4+ID4+
IENoYW5nZXMgaW4gdjU6Cj4+ID4+IC0gQWRkZWQgaW4gVjUKPj4gPj4gCj4+ID4+ICBkcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyB8IDE0ICsrKysrKysrKysrCj4+
ID4+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuaCB8ICA5ICsr
KysrKysKPj4gPj4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF92b3AyX3JlZy5j
IHwgMjYgKysrKysrKysrKysrKysrKysrKy0KPj4gPj4gIDMgZmlsZXMgY2hhbmdlZCwgNDggaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+PiA+PiAKPj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4+ID4+IGIvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMgaW5kZXgKPj4gPj4gZGM0ZWRkNjVi
YzllLi44YjljYTA0NmVlZWIgMTAwNjQ0Cj4+ID4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4+ID4+IEBAIC0xNDI2LDYgKzE0MjYsMTIgQEAgc3Rh
dGljIHZvaWQgdm9wMl9wbGFuZV9hdG9taWNfdXBkYXRlKHN0cnVjdAo+PiA+PiBkcm1fcGxhbmUg
KnBsYW5lLCAmZmItPmZvcm1hdC0+Zm9ybWF0LAo+PiA+PiAKPj4gPj4gIAkJYWZiY19lbiA/ICJB
RkJDIiA6ICIiLCAmeXJnYl9tc3QpOwo+PiA+PiAKPj4gPj4gKwlpZiAodm9wMi0+ZGF0YS0+c29j
X2lkID4gMzU2OCkgewo+PiA+Cj4+ID5TaG91bGRuJ3QgdGhpcyBiZSBkb25lIG9ubHkgZm9yIHJr
MzU4OCwgYXMgc3BlY2lmaWVkIGluIHRoZSBjb21tZW50cyBiZWxvdwo+PiA+PyBUaGUgdGVzdCB3
ZSBkaWQgYmVmb3JlIHNob3dlZCB0aGF0IGl0IGlzIGZhaWxpbmcgb24gcmszNTc2IGFuZCAzNTc2
IGlzID4KPj4gPjM1ODguCj4+IEkgdGhpbmsgdGhpcyBpcyBiZWNhdXNlIHlvdSB0ZXN0ZWQgYmVm
b3JlIHdpdGggdGhlIHBhdGNoIEkgZ2F2ZSBEZXJlayAKPj4gd2l0aG91dCBheGkgaWQgYXNzaWdu
ZWQgZm9yIHJrMzU3Ni4KPj4gSSBhc3NpZ25lZCBheGkgaWQgZm9yIHJrMzU3NiBpbiB0aGlzIHZl
cnNpb24gMTgvMTjvvIhUaGUgbmV3IElEIGFzc2lnbm1lbnQgY2FuCj4+IGFkYXB0IHRvIG1vcmUg
YXBwbGljYXRpb24gc2NlbmFyaW9zLu+8iSwgY2FuIHlvdSB0ZXN0IGl0IHdpdGggdGhlIHdob2xl
IFY1Cj4+IHZlcnNpb24gYWdhaW4/Cj4KPlllcywgSSB3aWxsIGRvIHRoYXQuIEJ1dCBwYXRjaCAx
OCBtZW50aW9uczoKPisgICAgICAgLyogUmVhZCBvbmx5IGJpdCBvbiByazM1NzYqLwo+KyAgICAg
ICBbVk9QMl9XSU5fQVhJX0JVU19JRF0gPSBSRUdfRklFTEQoUkszNTY4X0NMVVNURVJfQ1RSTCwg
MTMsIDEzKSwKPgo+QW5kIHRoZSBiaXQgaXMgYmVpbmcgd3JpdHRlbiBoZXJlLiBJZiBpdCBpcyBp
bmRlZWQgd3JpdGFibGUsIHRoZW4gSSB3b3VsZCBkcm9wIAo+dGhhdCBjb21tZW50LgpUaGUgQVhJ
X0JVU19JRCBmb3IgdHdvIENsdXN0ZXIgd2luZG93cyBvbiBSSzM1NzYgYXJlIGZpeGVkIGJ5IGhh
cmR3YXJlLCB0aGF0IG1lYW5zCndoZXRoZXIgd2Ugd3JpdGUgaXQgb3Igbm90LCBpdCB3b24ndCBj
aGFuZ2UgYW55dGhpbmcuCkJ1dCB0aGUgQVhJX0JVU19JRCBmb3IgRXNtYXJ0IHdpbmRvd3Mgb24g
cmszNTc2IGFuZCAgQVhJX1lSR0IvVVZfUl9JRCBmb3IgYWxsCmNsdXN0ZXIvZXNtYXJ0IHdpbmRv
d3Mgb24gcmszNTc2IGFyZSB3cml0ZWFibGUuCkkgdGhpbmsgd2UgZGlyZWN0bHkgd3JpdGUgaXQg
aGVyZSBhcyB0aGUgY3VycmVudCBjb2RlIGNhbiBtYWtlIHRoaW5ncyBlYXN5LgoKCgo+Cj4+ID5J
IHN1Z2dlc3QKPj4gPgo+PiA+CWlmICh2b3AyLT5kYXRhLT5zb2NfaWQgPT0gMzU4OCkgewo+PiA+
Cj4+ID5SZWdhcmRzLAo+PiA+RGV0bGV2Cj4+ID4KPj4gPj4gKwkJdm9wMl93aW5fd3JpdGUod2lu
LCBWT1AyX1dJTl9BWElfQlVTX0lELCB3aW4tPmRhdGEtCj4+ID4+Cj4+ID4+YXhpX2J1c19pZCk7
Cj4+ID4+Cj4+ID4+ICsJCXZvcDJfd2luX3dyaXRlKHdpbiwgVk9QMl9XSU5fQVhJX1lSR0JfUl9J
RCwgd2luLT5kYXRhLQo+PiA+Pgo+PiA+PmF4aV95cmdiX3JfaWQpOwo+PiA+Pgo+PiA+PiArCQl2
b3AyX3dpbl93cml0ZSh3aW4sIFZPUDJfV0lOX0FYSV9VVl9SX0lELCB3aW4tPmRhdGEtCj4+ID4+
Cj4+ID4+YXhpX3V2X3JfaWQpOwo+PiA+Pgo+PiA+PiArCX0KPj4gPj4gKwo+PiA+PiAKPj4gPj4g
IAlpZiAodm9wMl9jbHVzdGVyX3dpbmRvdyh3aW4pKQo+PiA+PiAgCQo+PiA+PiAgCQl2b3AyX3dp
bl93cml0ZSh3aW4sIFZPUDJfV0lOX0FGQkNfSEFMRl9CTE9DS19FTiwKPj4gPgo+PiA+aGFsZl9i
bG9ja19lbik7Cj4+ID4KPgo+RGV0bGV2Lgo+Cj4KPgo+X19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+TGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+aHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

