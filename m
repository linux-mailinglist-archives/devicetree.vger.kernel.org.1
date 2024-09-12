Return-Path: <devicetree+bounces-102263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 149EB9761C7
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 08:45:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D3AB28A1AA
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 06:45:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EB09188A00;
	Thu, 12 Sep 2024 06:45:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=163.com header.i=@163.com header.b="HnW07QIC"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.2])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B14D1898EE
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 06:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.2
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726123518; cv=none; b=YliTb3/gZMhWVxWgHrQAujuN5W/oJJXG1npG/6VzhtJY1qf0sHuKJwXQpXKzb00Iq6ZiIY1lG05333gx6QzhSF44xjPnh9TH/9OB+1jMS5mxYZAgFzXwwU9eqxnzV1GgG1UM8UJEmDyvAoDAnUPShWGYYDgujjKK6V/3/zkbZRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726123518; c=relaxed/simple;
	bh=QxpUAKZRVD0Uj6R7ZZw3xSGdSm7mogJP2qjKQXe4S3U=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=eslHeGrYwiD+eLdncnm1n9aDgl5/c9htgKjyU0LsywUbAIsKcFxXQDV5OXlYAWE1gfGN670/PWlwmJ6Vs9BMd9w/5Pjfa0HAsUh8PGb6AB+lEOj/CKR6TNb17IPodjISy3AfPgIoQ3aUDNanL6nS59ggv228+Jg4081j8Ui0iXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=fail (1024-bit key) header.d=163.com header.i=@163.com header.b=HnW07QIC reason="signature verification failed"; arc=none smtp.client-ip=220.197.31.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=NSwbv3RzHztwGPofv8zYBn4+43JFyZKE9ZUFMN8oMh4=; b=H
	nW07QICKXXut+YBsNqTjAUIFJk7IOEZnb/oYIBT+OLIBG/M5hj1YhVqW7+plXLKp
	WbbJSugLri166py19CGEVjhKXPaKUY/T8SN2WMd/t5l6EJ+XnpeExaTkkvloFxiX
	B7d84LVqW9CbUXTekuTFpkLRmDbj/fJ5UhGiNXiXm0=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-118 (Coremail) ; Thu, 12 Sep 2024 14:44:11 +0800
 (CST)
Date: Thu, 12 Sep 2024 14:44:11 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Diederik de Haas" <didi.debian@cknow.org>
Cc: "Sascha Hauer" <s.hauer@pengutronix.de>, detlev.casanova@collabora.com, 
	heiko@sntech.de, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, hjc@rock-chips.com, 
	mripard@kernel.org, sebastian.reichel@collabora.com, 
	linux-rockchip@lists.infradead.org, sjoerd@collabora.com, 
	"Andy Yan" <andy.yan@rock-chips.com>, krzk+dt@kernel.org, 
	robh@kernel.org
Subject: Re:Re: [PATCH v2 05/11] drm/rockchip: vop2: Introduce vop hardware
 version
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <D41NH5VO0A7T.26F04WDY1UTCR@cknow.org>
References: <20240904120238.3856782-1-andyshrk@163.com>
 <20240904120238.3856782-6-andyshrk@163.com>
 <ZtlZgKcDQFF_WnCn@pengutronix.de>
 <2326e2ea.8264.191c13bab93.Coremail.andyshrk@163.com>
 <Zt68U6hnPA0KrxXB@pengutronix.de> <D41NH5VO0A7T.26F04WDY1UTCR@cknow.org>
X-NTES-SC: AL_Qu2ZBP2ZvEwu5yGZYOkZnEobh+Y5UcK2s/ki2YFXN5k0qCTV5jkBWWZDIkXN6NmkFCKFqQG+fRRj0uF4R4BKeJxW9ZfBu/1qh3H8Yn4m2E6B
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <56a02879.5ff0.191e4f9a2ef.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:_____wD3H2i7jeJmxCURAA--.1379W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMxpYXmXAnzzHHwABsw
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==

CgpIaSDvvIwKQXQgMjAyNC0wOS0wOSAxNzozNjoxNCwgIkRpZWRlcmlrIGRlIEhhYXMiIDxkaWRp
LmRlYmlhbkBja25vdy5vcmc+IHdyb3RlOgo+T24gTW9uIFNlcCA5LCAyMDI0IGF0IDExOjEzIEFN
IENFU1QsIFNhc2NoYSBIYXVlciB3cm90ZToKPj4gT24gVGh1LCBTZXAgMDUsIDIwMjQgYXQgMDQ6
MDk6NThQTSArMDgwMCwgQW5keSBZYW4gd3JvdGU6Cj4+ID4gIEF0IDIwMjQtMDktMDUgMTU6MTA6
NTYsICJTYXNjaGEgSGF1ZXIiIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPj4gPiAg
Pk9uIFdlZCwgU2VwIDA0LCAyMDI0IGF0IDA4OjAyOjMyUE0gKzA4MDAsIEFuZHkgWWFuIHdyb3Rl
Ogo+PiA+ICA+PiBGcm9tOiBBbmR5IFlhbiA8YW5keS55YW5Acm9jay1jaGlwcy5jb20+Cj4+ID4g
ID4+Cj4+ID4gID4+IFRoZXJlIGlzIGEgdmVyc2lvbiBudW1iZXIgaGFyZGNvZGVkIGluIHRoZSBW
T1AgVkVSU0lPTl9JTkZPCj4+ID4gID4+IHJlZ2lzdGVyLCBhbmQgdGhlIHZlcnNpb24gbnVtYmVy
IGluY3JlbWVudHMgc2VxdWVudGlhbGx5IGJhc2VkCj4+ID4gID4+IG9uIHRoZSBwcm9kdWN0aW9u
IG9yZGVyIG9mIHRoZSBTT0MuCj4+ID4gID4+Cj4+ID4gID4+IFNvIHVzaW5nIHRoaXMgdmVyc2lv
biBudW1iZXIgdG8gZGlzdGluZ3Vpc2ggZGlmZmVyZW50IFZPUCBmZWF0dXJlcwo+PiA+ICA+PiB3
aWxsIHNpbXBsaWZ5IHRoZSBjb2RlLgo+PiA+ICA+Pgo+PiA+ICA+PiBTaWduZWQtb2ZmLWJ5OiBB
bmR5IFlhbiA8YW5keS55YW5Acm9jay1jaGlwcy5jb20+Cj4+ID4gID4+Cj4+ID4gID4+IC0tLQo+
PiA+ICA+Pgo+PiA+ICA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jv
Y2tjaGlwX2RybV92b3AyLmggYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJt
X3ZvcDIuaAo+PiA+ICA+PiBpbmRleCA5YjI2OWY2ZTU3NmUuLjg3MWQ5YmNkMWQ4MCAxMDA2NDQK
Pj4gPiAgPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3Ay
LmgKPj4gPiAgPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92
b3AyLmgKPj4gPiAgPj4gQEAgLTEzLDYgKzEzLDE1IEBACj4+ID4gID4+ICAjaW5jbHVkZSAicm9j
a2NoaXBfZHJtX2Rydi5oIgo+PiA+ICA+PiAgI2luY2x1ZGUgInJvY2tjaGlwX2RybV92b3AuaCIK
Pj4gPiAgPj4KPj4gPiAgPj4gKyNkZWZpbmUgVk9QMl9WRVJTSU9OKG1ham9yLCBtaW5vciwgYnVp
bGQpICAgICAoKG1ham9yKSA8PCAyNCB8IChtaW5vcikgPDwgMTYgfCAoYnVpbGQpKQo+PiA+ICA+
PiArCj4+ID4gID4+ICsvKiBUaGUgbmV3IFNPQyBWT1AgdmVyc2lvbiBpcyBiaWdnZXIgdGhhbiB0
aGUgb2xkICovCj4+ID4gID4+ICsjZGVmaW5lIFZPUF9WRVJTSU9OX1JLMzU2OCAgICBWT1AyX1ZF
UlNJT04oMHg0MCwgMHgxNSwgMHg4MDIzKQo+PiA+ICA+PiArI2RlZmluZSBWT1BfVkVSU0lPTl9S
SzM1ODggICAgVk9QMl9WRVJTSU9OKDB4NDAsIDB4MTcsIDB4Njc4NikKPj4gPiAgPj4gKyNkZWZp
bmUgVk9QX1ZFUlNJT05fUkszNTI4ICAgIFZPUDJfVkVSU0lPTigweDUwLCAweDE3LCAweDEyNjMp
Cj4+ID4gID4+ICsjZGVmaW5lIFZPUF9WRVJTSU9OX1JLMzU2MiAgICBWT1AyX1ZFUlNJT04oMHg1
MCwgMHgxNywgMHg0MzUwKQo+PiA+ICA+PiArI2RlZmluZSBWT1BfVkVSU0lPTl9SSzM1NzYgICAg
Vk9QMl9WRVJTSU9OKDB4NTAsIDB4MTksIDB4OTc2NSkKPj4gPiAgPgo+PiA+ICA+V2hhdCBhYm91
dCB0aGUgUkszNTY2PyBEb2VzIGl0IGhhdmUgdGhlIHNhbWUgdmVyc2lvbiBjb2RlIGFzIHRoZSBS
SzM1Njg/Cj4+ID4gID4KPj4gPiAgPlRoaXMgbmV3IHZlcnNpb24gZmllbGQgcmVwbGFjZXMgdGhl
IHNvY19pZCBtZWNoYW5pc20gd2UgaGFkIGJlZm9yZSB0bwo+PiA+ICA+OTklLiBZb3Uga2VlcCB0
aGUgc29jX2lkIGFyb3VuZCBqdXN0IGZvciBkaXN0aW5ndWlzaGluZyBiZXR3ZWVuIFJLMzU2Ngo+
PiA+ICA+YW5kIFJLMzU2OC4gSXQgd291bGQgYmUgbmljZSB0byBmdWxseSByZXBsYWNlIGl0Lgo+
PiA+ICA+Cj4+ID4gID5JIHNlZSB0aGF0IHRoZSBWT1BfVkVSU0lPTl9SSyogbnVtYmVycyBhcmUg
dGhlIHNhbWUgYXMgZm91bmQgaW4gdGhlCj4+ID4gID5WT1AyX1NZU19WRVJTSU9OX0lORiByZWdp
c3RlcnMuIE9uIHRoZSBvdGhlciBoYW5kIHlvdSBuZXZlciByZWFkIHRoZQo+PiA+ICA+dmFsdWUg
ZnJvbSB0aGUgcmVnaXN0ZXIgd2hpY2ggbWFrZSB0aGUgVk9QX1ZFUlNJT05fUksqIGp1c3QgYXJi
aXRyYXJ5Cj4+ID4gID5udW1iZXJzLiBXb3VsZG4ndCBpdCBiZSBwb3NzaWJsZSB0byBtYWtlIHNv
bWV0aGluZyB1cCBmb3IgUkszNTY2LCBsaWtlCj4+ID4gID5WT1AyX1ZFUlNJT04oMHg0MCwgMHgx
NSwgMHg4MDIyKSB0byBnZXQgcmlkIG9mIHRoZSBzb2NfaWQgdGhpbmd5Pwo+PiA+ICBZZXPvvIxS
SzM1NjYgYW5kIFJLMzU2OCBzaGFyZSB0aGUgc2FtZSBWT1AgSVAgYmxvY2vvvIwgc28gdGhlIHZl
cnNpb24gY29kZSBhdCBWRVJTSU9OX1JFR0lTVEVSIGlzCj4+ID4gIHRoZSBzYW1lLCB0aGUgZGlm
ZmVyZW5jZSBiZXR3ZWVuIHJrMzU2OCBhbmQgcmszMzU2NiBhcmUgaW50cm9kdWNlZCBhdCBzb2Mg
SW50ZWdyYXRpb27jgIIKPj4gPiAgU28gaSB3b3VsZCBzdGlsbCBsaWtlIHRvIGtlZXAgdGhlIHNv
Y19pZCB0byAgaGFuZGxlIHNpdHVhdGlvbiBsaWtlIHRoaXPjgIJBcyB3ZSBhbHdheXMgaGF2ZSBz
dWNoICBjYXVzZe+8jCBvbmUKPj4gPiAgc2FtZSBJUCBibG9ja++8jCBidXQgdGhlcmUgYXJlIHNv
bWUgc3VidGxlIGRpZmZlcmVuY2VzIGluIGZlYXR1cmVzIGFjcm9zcyBkaWZmZXJlbnQgU09Dcy4K
Pj4KPj4gRmluZSB3aXRoIG1lLiBZb3UgY291bGQgbGVhdmUgYSBjb21tZW50IGluIHRoZSBjb2Rl
IG9yIGNvbW1pdAo+PiBtZXNzYWdlIHRoYXQgZXhwbGFpbnMgd2h5IHdlIG5lZWQgYm90aC4KPgo+
QWxzbyAob3IgZXNwZWNpYWxseT8pIGFkZCB0aGF0IHRvIHRoZSBjb21taXQgbWVzc2FnZSBvZiBw
YXRjaCA2IG9mIHRoaXMKPnNlcmllcy4gUGF0Y2ggNidzIGNvbW1pdCBtZXNzYWdlIHRhbGtzIGFi
b3V0IFJLMzU3NiB3aGlsZSBpdCBjaGFuZ2VzCj5jb2RlIHJlbGF0ZWQgdG8gUkszNTY2IGFuZCBJ
ICh0b28/KSB0aG91Z2h0IHRoYXQgbm90IHVzaW5nIFZPUF9WRVJTSU9OCgo+d2FzIGFuIG92ZXJz
aWdodCwgd2hpbGUgaXQgdHVybnMgb3V0IHRvIGJlIGRlbGliZXJhdGUuCgoKT0vvvIwgd2lsbCBk
byBpbiB2My4+Cj5DaGVlcnMsCj4gIERpZWRlcmlrCg==

