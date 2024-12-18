Return-Path: <devicetree+bounces-132095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCD59F5BED
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 01:57:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B67B0167828
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 00:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 516D81E529;
	Wed, 18 Dec 2024 00:57:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=163.com header.i=@163.com header.b="CCrFxfLs"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.5])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEE772572;
	Wed, 18 Dec 2024 00:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734483463; cv=none; b=syr8G0RTGyYEZYdFNB36RcqgLPWwdT7TnDSHyzi2G7Dk6IBmx4o87epPvOfovN2VQOsIzWx+FF8U9PjcR7Az6tFuwOm24QPiyI1QGJGuFGOvzyjerc5cLo9wfK0aKK1+xDA6o8fHUms0ByrlVwbbMvPw614c4LdG58YkcZ7Z91k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734483463; c=relaxed/simple;
	bh=NuE+k4mRNS5zriJQH1szOEbh2OQG3C1KDJ6y0/T+qgo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=YYwbCwvtwbpcm+q2U9AO5j9CyIF5JeRBgjjJV5b4g9xk2qGWZMT+mcNL1t38aDMsDUwq/TdKBKwFKImkEYSAoQmPkuUh2/sUsUEQ0BR8N+gP6o6o7aoFTh5a0jLPSnvUgAQ6YYNF7UosZHSb89bra6coPKBz9wI4EnaCZ6Y8fGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=fail (1024-bit key) header.d=163.com header.i=@163.com header.b=CCrFxfLs reason="signature verification failed"; arc=none smtp.client-ip=220.197.31.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=WVQ1t6XbXjKcPHRJLel/oXZDB4vT3usNT7E4mGCaWbo=; b=C
	CrFxfLsQl7/ZdHFUhT+Oiv6NIXnXWNK/3ZReX1pGDma1FKL+C4NDYyy25XHI7BeI
	LwQbALMaRD1emzMVR2Yp0G5yUSxlM0dMEnTDJE1rKt8uTRG8xsuo9UXgAgGdnJxu
	cIz+GDTe85g5XLSUsYkjgQiyb9tz8f7EQKOVA1l5qU=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-123 (Coremail) ; Wed, 18 Dec 2024 08:55:48 +0800
 (CST)
Date: Wed, 18 Dec 2024 08:55:48 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Daniel Stone" <daniel@fooishbar.org>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org, 
	s.hauer@pengutronix.de, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, derek.foreman@collabora.com, 
	detlev.casanova@collabora.com, "Andy Yan" <andy.yan@rock-chips.com>, 
	"Michael Riesch" <michael.riesch@wolfvision.net>, 
	"Sebastian Reichel" <sebastian.reichel@collabora.com>
Subject: Re:Re: Re: [PATCH v6 08/16] drm/rockchip: vop2: Support 32x8
 superblock afbc
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <CAPj87rMfFXkbyh7UEJQw4JV1R18KLXC3GyF0CznrN1k3UdL0Lw@mail.gmail.com>
References: <20241214081719.3330518-1-andyshrk@163.com>
 <20241214081719.3330518-9-andyshrk@163.com>
 <CAPj87rOjqZdyht2y8MK7gVyk_eqEzk1Sy0DcxFtQRuhrHQ_oxA@mail.gmail.com>
 <165af58a.697.193d2100239.Coremail.andyshrk@163.com>
 <CAPj87rMfFXkbyh7UEJQw4JV1R18KLXC3GyF0CznrN1k3UdL0Lw@mail.gmail.com>
X-NTES-SC: AL_Qu2YBviTvEsv7iOfZekZnEobh+Y5UcK2s/ki2YFXN5k0kSTd/Q0jbG5RIFzK/PmpCAemoQmKVD9t6cdjQpdIUb8uN2gn21BCSQHSCgwDyDUQ
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <32246002.9ef.193d7438b96.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:eygvCgDX_3aUHWJnKQRCAA--.2254W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0g25XmdiE2lfZwAEs7
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==

CkhpICBEYW5pZWwsCgpBdCAyMDI0LTEyLTE3IDIwOjA3OjU0LCAiRGFuaWVsIFN0b25lIiA8ZGFu
aWVsQGZvb2lzaGJhci5vcmc+IHdyb3RlOgo+SGkgQW5keSwKPgo+T24gVHVlLCAxNyBEZWMgMjAy
NCBhdCAwMDo0MSwgQW5keSBZYW4gPGFuZHlzaHJrQDE2My5jb20+IHdyb3RlOgo+PiBBdCAyMDI0
LTEyLTE2IDIxOjA2OjA3LCAiRGFuaWVsIFN0b25lIiA8ZGFuaWVsQGZvb2lzaGJhci5vcmc+IHdy
b3RlOgo+PiA+T24gU2F0LCAxNCBEZWMgMjAyNCBhdCAwODoxOCwgQW5keSBZYW4gPGFuZHlzaHJr
QDE2My5jb20+IHdyb3RlOgo+PiA+PiBUaGlzIGlzIHRoZSBvbmx5IGFmYmMgZm9ybWF0IHN1cHBv
cnRlZCBieSB0aGUgdXBjb21pbmcKPj4gPj4gVk9QIGZvciByazM1NzYuCj4+ID4+Cj4+ID4+IEFk
ZCBzdXBwb3J0IGZvciBpdC4KPj4gPgo+PiA+T3V0IG9mIGludGVyZXN0LCBob3cgd2FzIHRoaXMg
dGVzdGVkPyBUaGVyZSBpcyBubyAzMng4IG1vZGlmaWVyIGluIHRoZQo+PiA+Zm9ybWF0IGxpc3Qg
aW4gZm9ybWF0X21vZGlmaWVyc19hZmJjW10sIHNvIGl0IHNlZW1zIGxpa2UgaXQgc2hvdWxkbid0
Cj4+ID5iZSBwb3NzaWJsZSB0byBnZXQgYSAzMng4IGJ1ZmZlciBvbiBhIHBsYW5lIGF0IGFsbC4K
Pj4KPj4gVGhlIDMyeDggbW9kaWZpZXIgIGFkZGVkIGluIFBBVENIIDE2LzE2Ogo+Pgo+PiArLyog
dXNlZCBmcm9tIHJrMzU3NiwgYWZiYyAzMio4IGhhbGYgbW9kZSAqLwo+PiArc3RhdGljIGNvbnN0
IHVpbnQ2NF90IGZvcm1hdF9tb2RpZmllcnNfcmszNTc2X2FmYmNbXSA9IHsKPj4gKyAgICAgICBE
Uk1fRk9STUFUX01PRF9BUk1fQUZCQyhBRkJDX0ZPUk1BVF9NT0RfQkxPQ0tfU0laRV8zMng4IHwK
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBBRkJDX0ZPUk1BVF9NT0RfU1BMSVQp
LAo+PiArCj4KPkhtbW0sIHRoYXQncyBzdHJhbmdlOyBJIGFwcGxpZWQgdGhlIHdob2xlIHNlcmll
cyB3aXRoIGI0IGJ1dCB3YXNuJ3QKPnNlZWluZyB0aGF0IGJsb2NrIGRlZmluZWQuIE1heWJlIGEg
YmFkIGNvbmZsaWN0IHJlc29sdXRpb24uIFNvcnJ5IGZvcgo+dGhlIGNvbmZ1c2lvbi4KCkkgdGhp
bmsgdGhhdCBtaWdodCBoYXZlIGJlZW4gY2F1c2VkIGJ5IG15IG1pc3Rha2UuIEkgaW5pdGlhbGx5
IHNlbnQgdGhlIFY2IHZlcnNpb24gYXMgYSAtaW4tcmVwbHkgdG8gdGhlIFY1IHZlcnNpb24uCldo
ZW4gSSByZWFsaXplZCB0aGUgbWlzdGFrZSwgYSBwYXJ0IG9mIGl0IGhhZCBhbHJlYWR5IGJlZW4g
c2VudCBvdXQuIFRoZW4gSSBzZW50IHRoZSBlbnRpcmUgVjYgc2VyaWVzIHNlcGFyYXRlbHkKYWdh
aW4uIE1heWJlIHRoYXQgbWFrZSBiNCBhbmQgbG9yZSBjb25mdXNlZOOAggoKPgo+PiBJIHdyaXRl
IGFuIG92bHRlc3RbMF0gdG9vbCB3aGljaCBjYW4gdGFrZSBsaW5lYXIvQUZCQyByZ2IveXV2IGRh
dGEgZnJvbSBhIGZpbGUsIHRoZW4KPj4gY29tbWl0IHRvIGRybSBkcml2ZXIsIEkgdXNlIHRoaXMg
dG9vbCBmb3IgbW9zdCBiYXNpYyBmb3JtYXQgdGVzdC4KPj4KPj4gQnV0IHdoZW4gdGVzdGVkIG9u
IHdlc3RvbiwgSSBmb3VuZCB0aGF0IHdlc3RvbiBkb2VzIG5vdCB1c2UgdGhlIEFGQkMgZm9ybWF0
IGZvciBkaXNwbGF5LAo+PiBkb24ndCBrbm93IHdoeS4KPgo+WW91J2xsIG5lZWQgYSBNZXNhIHRy
ZWUgd2l0aCBlMGY0ODU2OGM3ZjIgaW5jbHVkZWQ7IGlmIHlvdSBoYXZlIHRoaXMKPnRoZW4gaXQg
c2hvdWxkIGp1c3Qgd29yayBvdXQgb2YgdGhlIGJveC4KClRoYW5rcywgSSB3aWxsIGNoZWNrIGl0
LgoKPgo+Q2hlZXJzLAo+RGFuaWVsCg==

