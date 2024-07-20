Return-Path: <devicetree+bounces-86919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FC29380C7
	for <lists+devicetree@lfdr.de>; Sat, 20 Jul 2024 12:46:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EDD931C211E6
	for <lists+devicetree@lfdr.de>; Sat, 20 Jul 2024 10:46:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D3D64779E;
	Sat, 20 Jul 2024 10:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=163.com header.i=@163.com header.b="W3t/D23c"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.3])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3510263D;
	Sat, 20 Jul 2024 10:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.3
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721472368; cv=none; b=ijIpeZAlFQYZxugynWeyLz8aIiUd+zyzKaXILn0i8dORR2O5zSS3KWTKQ3BBexQpfhQH7mD2ALzNbnxtIeizOs0Mm11KKoZl5PCKIWPg57H+G1HHfJfExNDw27jUWQ2mxxc3ub7FKKUxweHWsdICVwJm2qVq3JLx4QK8X6d9EE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721472368; c=relaxed/simple;
	bh=aYwMAqZx0mK7bA0vaOMI5+Q46TmrymsQTUHmMRDYEXk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=M64cowlJbx+nYIIiW1L/rYxdQhs8DyeRogdNV4foZFLxcaIwgl7W83B7LikmNfCfgt/i6RuugmBat22j93xuO6iOW2VzdGcrOT97+a2dKHDFSNQR+huHXM1sHSVz6C4rT7eB0jcGfHxBmler7UwoN+XnF958XV4AyS5yZZiECaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=fail (1024-bit key) header.d=163.com header.i=@163.com header.b=W3t/D23c reason="signature verification failed"; arc=none smtp.client-ip=220.197.31.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=xBLo64VKE4cKpnPTnnt2bAZVJn4fCnGs0iPxxcy9BTA=; b=W
	3t/D23cjlsfdkKLc3gu/gqT6HFlJGqboHwHb/EgfvleWd5dX7NDbA6qT3HC3avSM
	ff9o348paH+CfyHTVY1fMTTAAVxGPqPzCP6fAaghmyuhaMxnYPGm9o70skb2oAX2
	PEhKHI9aVwZZnj45qyTP4cfkgc+XOyuJrCE8wF/MLE=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-131 (Coremail) ; Sat, 20 Jul 2024 18:45:21 +0800
 (CST)
Date: Sat, 20 Jul 2024 18:45:21 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Dragan Simic" <dsimic@manjaro.org>
Cc: heiko@sntech.de, krzk+dt@kernel.org, robh@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re:Re: [PATCH 2/2] arm64: dts: rockchip: Add support for rk3588
 GenBook
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20230109(dcb5de15)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <123bda9c6421ffe718c7497f1040d102@manjaro.org>
References: <20240714112851.1048184-1-andyshrk@163.com>
 <20240714112851.1048184-2-andyshrk@163.com>
 <983cfe67f4d83ea96ffc37ec2dde00aa@manjaro.org>
 <32f2518d.a66c.190b5fe86a6.Coremail.andyshrk@163.com>
 <f16ab2d662a7bd35748cb19b3bb89135@manjaro.org>
 <60235dee.991a.190bb035bc1.Coremail.andyshrk@163.com>
 <9c2e80008663c4bcac11c9d1e5c678be@manjaro.org>
 <123bda9c6421ffe718c7497f1040d102@manjaro.org>
X-NTES-SC: AL_Qu2ZA/icvUsp5ymaZ+lSzDJwxZV8J573y75wnMIFefEsnATpyzoLT3xgI1bqyuYzR9bA5boZqDY4kURPIfxE
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <78c35af3.2cab.190cfbf098e.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:_____wD33xpClZtmYZM7AA--.13945W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMwEiXmXAmm81TQADsl
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==

CkhlbGxvIERyYWdhbu+8jAoK5ZyoIDIwMjQtMDctMjAgMTg6MjE6MzfvvIwiRHJhZ2FuIFNpbWlj
IiA8ZHNpbWljQG1hbmphcm8ub3JnPiDlhpnpgZPvvJoKPkhlbGxvIEFuZHksCj4KPkkgZm9yZ290
IHRvIG5vdGUgc29tZXRoaW5nIGluIG15IHByZXZpb3VzIHJlc3BvbnNlLCBzbyBwbGVhc2UKPnNl
ZSBhbiBhZGRpdGlvbmFsIG5vdGUgYmVsb3cuCj4KPk9uIDIwMjQtMDctMTYgMTU6NTAsIERyYWdh
biBTaW1pYyB3cm90ZToKPj4gT24gMjAyNC0wNy0xNiAxMjowNywgQW5keSBZYW4gd3JvdGU6Cj4+
PiDlnKggMjAyNC0wNy0xNSAyMjo0NzowNO+8jCJEcmFnYW4gU2ltaWMiIDxkc2ltaWNAbWFuamFy
by5vcmc+IOWGmemBk++8mgo+Pj4+IE9uIDIwMjQtMDctMTUgMTI6NDQsIEFuZHkgWWFuIHdyb3Rl
Ogo+Pj4+PiBBdCAyMDI0LTA3LTE0IDIzOjI3OjU0LCAiRHJhZ2FuIFNpbWljIiA8ZHNpbWljQG1h
bmphcm8ub3JnPiB3cm90ZToKPj4+Pj4+IFBsZWFzZSBzZWUgYSBmZXcgY29tbWVudHMgYmVsb3cu
Cj4+Pj4+PiAKPj4+Pj4+IE9uIDIwMjQtMDctMTQgMTM6MjgsIEFuZHkgWWFuIHdyb3RlOgo+Pj4+
Pj4+IENvb2wgUGkgR2VuQm9vayB3b3JrcyBhcyBhIG1vdGhlciBib2FyZCBjb25uZWN0IHdpdGgg
Q001IFswXS4KPj4+Pj4+IAo+Pj4+Pj4gcy9tb3RoZXIgYm9hcmQvY2FycmllciBib2FyZC8KPj4+
Pj4gCj4+Pj4+IFRoaXMgY2FuIGJlIGNoYW5nZWQgdG8gY2FycmllciBib2FyZCBpbiBuZXh0IHZl
cnNpb27jgIIKPj4+Pj4gCj4+Pj4+PiBzL0NNNS9HZW5NNS8KPj4+Pj4gCj4+Pj4+IEluIGZhY3Qs
IHRoZSBTT00gIGlzIGNhbGxlZCAgQ001IGFsd2F5c1swXe+8jCBldmVuIHRoaXMgbGFwdG9wIHdh
cwo+Pj4+PiBjYWxsZWQgY201IGxhcHRvcCBmcm9tIHRoZQo+Pj4+PiB2ZXJ5IGJlZ2lubmluZyBv
ZiB0aGUgZGVzaWdu44CCCj4+Pj4+IFRoZXkganVzdCBnYXZlIGl0IGEgbmV3IG5hbWUgR2VuQm9v
ayB3aGVuIGl0IGNvbWVzIHRvIGNyb3dkc3VwcGx5Lgo+Pj4+PiAKPj4+Pj4gVGhlIGR0c2kgZm9y
IENNNSBpcyBhcmVhZHkgbGFuZGluZyB1cHN0cmVhbe+8jEkgaW5jbHVsZGUgaXQgaW4gdGhlCj4+
Pj4+IGN1cnJlbnQgZ2VuYm9vayBkdHPjgIIKPj4+Pj4gCj4+Pj4+IFswXWh0dHBzOi8vZm9ydW0u
Y29vbC1waS5jb20vdG9waWMvOTgvY29vbC1waS01LWNvbXB1dGUtbW9kdWxlLW1pbmlwYy1jYXJy
aWVyLWJvYXJkLXNwZWMKPj4+PiAKPj4+PiBBaCwgdGhhdCdzIHF1aXRlIGludGVyZXN0aW5nLCBp
dCB3YXMgcHJvYmFibHkgcmVuYW1lZCBmb3IgbWFya2V0aW5nCj4+Pj4gcHVycG9zZXMuICBUaGFu
a3MgZm9yIHRoZSBjbGFyaWZpY2F0aW9uLgo+Pj4+IAo+Pj4+IFRvIGFkZCB0byB0aGUgY29uZnVz
aW9uLCBub25lIG9mICJHZW5Cb29rIiwgIkNNNSIgb3IgIkdlbk01IiBhcHBlYXIKPj4+PiBvbiB0
aGUgbGFiZWxzIGZvdW5kIG9uIHRoZSBhY3R1YWwgUENCcy4gWzFdICBJbnN0ZWFkLCB0aGVyZSBh
cmUgb25seQo+Pj4+IHNvbWUgcmF0aGVyIGdlbmVyaWMgdGVybXMuCj4+PiAKPj4+IFNvIHdlIGNh
biBrZWVwIHRoZSBuYW1lIGFzIGl0IGlzIG5vdyDvvJ8KPj4gCj4+IEFzIGZhciBhcyBJJ20gY29u
Y2VybmVkLCB5ZXMuICBFdmVyeXRoaW5nIHBvaW50cyB0byAiQ29vbFBpIENNNSIKPj4gYW5kICJD
b29sUGkgR2VuQm9vayIgYmVpbmcgdGhlIHJpZ3RoIG5hbWVzIGluIHRoZSB1cHN0cmVhbSBrZXJu
ZWwKPj4gZm9yIHRoZSBTb00gYW5kIHRoZSBjYXJyaWVyIGJvYXJkLCByZXNwZWN0aXZlbHkuCj4+
IAo+PiBIb3dldmVyLCBwbGVhc2Ugc2VlIGFub3RoZXIgY29tbWVudCBiZWxvdy4KPj4gCj4+Pj4g
WzFdIAo+Pj4+IGh0dHBzOi8vd3d3LmNyb3dkc3VwcGx5LmNvbS9pbWcvNjE4NS82MGMzNTg1Mi03
YTU4LTRiNmYtODBmYy1hZjNhMGUzZDYxODUvZ2VuYm9vay1yazM1ODgtbWFpbi1ib2FyZC1jbG9z
ZS11cF9qcGdfZ2FsbGVyeS1sZy5qcGcKPj4+PiAKPj4+Pj4+PiBTcGVjaWZpY2F0aW9uOgo+Pj4+
Pj4+IC0gUm9ja2NoaXAgUkszNTg4Cj4+Pj4+Pj4gLSBMUEREUjVYIDgvMzIgR0IKPj4+Pj4+PiAt
IGVNTUMgNjQgR0IKPj4+Pj4+PiAtIEhETUkgVHlwZSBBIG91dCB4IDEKPj4+Pj4+PiAtIFVTQiAz
LjAgSG9zdCB4IDEKPj4+Pj4+PiAtIFVTQi1DIDMuMCB3aXRoIERpc3BsYXlQb3J0IEFsdE1vZGUK
Pj4+Pj4+PiAtIFBDSUUgTS4yIEUgS2V5IGZvciBSVEw4ODUyQkUgV2lyZWxlc3MgY29ubmVjdGlv
bgo+Pj4+Pj4+IC0gUENJRSBNLjIgTSBLZXkgZm9yIE5WTUUgY29ubmVjdGlvbgo+Pj4+Pj4+IC0g
ZURQIHBhbmVsIHdpdGggMTkyMHgxMDgwCj4+Pj4+Pj4gCj4+Pj4+Pj4gVGhpcyBwYXRjaCBhZGQg
YmFzaWMgc3VwcG9ydCB0byBicmluZ3VwIGVNTUMvVVNCIEhPU1QvV2lGaQo+Pj4+Pj4+IGFuZCBj
YW4gYWxzbyBkcml2ZSBhIEhETUkgb3V0cHV0IHdpdGggb3V0IG9mIHRyZWUgaGRtaSBwYXRjaGVz
Lgo+Pj4+Pj4+IAo+Pj4+Pj4+IFswXQo+Pj4+Pj4+IGh0dHBzOi8vd3d3LmNyb3dkc3VwcGx5LmNv
bS9zaGVuemhlbi10aWFubWFvLXRlY2hub2xvZ3ktY28tbHRkL2dlbmJvb2stcmszNTg4Cj4+Pj4+
Pj4gCj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogQW5keSBZYW4gPGFuZHlzaHJrQDE2My5jb20+Cj4+
Pj4+Pj4gLS0tCj4+Pj4+Pj4gCj4+Pj4+Pj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
TWFrZWZpbGUgICAgICAgICB8ICAgMSArCj4+Pj4+Pj4gIC4uLi9kdHMvcm9ja2NoaXAvcmszNTg4
LWNvb2xwaS1nZW5ib29rLmR0cyAgICB8IDI5Ngo+Pj4+Pj4+ICsrKysrKysrKysrKysrKysrKwo+
Pj4+Pj4+ICAyIGZpbGVzIGNoYW5nZWQsIDI5NyBpbnNlcnRpb25zKCspCj4+Pj4+Pj4gIGNyZWF0
ZSBtb2RlIDEwMDY0NAo+Pj4+Pj4+IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4
LWNvb2xwaS1nZW5ib29rLmR0cwo+Pj4+Pj4gCj4+Pj4+PiBJdCB3b3VsZCBiZSBiZXR0ZXIgdG8g
c3BsaXQgdGhpcyBpbnRvIHR3byBmaWxlczogYSBkdHNpIGZvciB0aGUgCj4+Pj4+PiBHZW5NNQo+
Pj4+Pj4gc3lzdGVtCj4+Pj4+PiBvbiBtb2R1bGUsIGFuZCBhIGR0cyBmb3IgdGhlIEdlbkJvb2sg
Y2FycmllciBib2FyZC4gIFRoYXQgd2F5LCB0aGUKPj4+Pj4+IGR0cyhpKSBmaWxlcwo+Pj4+Pj4g
d291bGQgZGVzY3JpYmUgdGhlIGFjdHVhbCBoYXJkd2FyZSBiZXR0ZXIuCj4+Pj4+PiAKPj4+Pj4+
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+Pj4+
Pj4+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+Pj4+Pj4+IGluZGV4
IDhmYTQ2OWRiNDAwYy4uMGZhZDU0OTM5YmJkIDEwMDY0NAo+Pj4+Pj4+IC0tLSBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPj4+Pj4+PiArKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4+Pj4+Pj4gQEAgLTEyMiw2ICsxMjIsNyBAQCBkdGIt
JChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0KPj4+Pj4+PiByazM1Njgtd29sZnZpc2lvbi1wZjUt
ZGlzcGxheS12ei5kdGJvCj4+Pj4+Pj4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPQo+
Pj4+Pj4+IHJrMzU2OC13b2xmdmlzaW9uLXBmNS1pby1leHBhbmRlci5kdGJvCj4+Pj4+Pj4gIGR0
Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1ODgtYXJtc29tLXNpZ2U3LmR0Ygo+Pj4+
Pj4+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4LWNvb2xwaS1jbTUtZXZi
LmR0Ygo+Pj4+Pj4+ICtkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4LWNvb2xw
aS1nZW5ib29rLmR0Ygo+Pj4+Pj4+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmsz
NTg4LWVkZ2VibGUtbmV1NmEtaW8uZHRiCj4+Pj4+Pj4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tD
SElQKSArPSByazM1ODgtZWRnZWJsZS1uZXU2YS13aWZpLmR0Ym8KPj4+Pj4+PiAgZHRiLSQoQ09O
RklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU4OC1lZGdlYmxlLW5ldTZiLWlvLmR0Ygo+Pj4+Pj4+
IGRpZmYgLS1naXQgCj4+Pj4+Pj4gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4
OC1jb29scGktZ2VuYm9vay5kdHMKPj4+Pj4+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTg4LWNvb2xwaS1nZW5ib29rLmR0cwo+Cj5UaGUgbmV3IGRldmljZSBkdHMgZmlsZSBz
aG91bGQgYmUgbmFtZWQgcmszNTg4LWNvb2xwaS1jbTUtZ2VuYm9vay5kdHMKPmluc3RlYWQgb2Yg
cmszNTg4LWNvb2xwaS1nZW5ib29rLmR0cywgYmVjYXVzZSB0aGF0IHdvdWxkOgoKCk9rYXnvvIx3
aWxsIGJlIGRvbmUgaW4gVjIuClRoYW5rcwoKPgo+ICAgKGEpIGZvbGxvdyB0aGUgImRlcGVuZGVu
Y3kgZ3JhcGgiIG5hbWluZyBzY2hlbWUsIGFuZAo+ICAgKGIpIG1ha2UgdGhlIG5hbWluZyBzY2hl
bWUgZnV0dXJlLXByb29mIGZvciBzb21lIG90aGVyIFNvTSB0aGF0Cj4gICAgICAgY291bGQgcG9z
c2libHkgYmUgbWFkZSBhdmFpbGFibGUgZm9yIHRoZSBHZW5Cb29rIGluIHRoZQo+ICAgICAgIGZ1
dHVyZSwgZm9yIHdoaWNoIHRoZSBuZXcgZGV2aWNlIGR0cyBmaWxlIHdvdWxkIGJlIG5hbWVkCj4g
ICAgICAgcmszNTg4LWNvb2xwaS1YWVotZ2VuYm9vay5kdHMuCj4KPj4+Pj4+PiBuZXcgZmlsZSBt
b2RlIDEwMDY0NAo+Pj4+Pj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uMjgzNTdjNmYwNWZiCj4+Pj4+
Pj4gLS0tIC9kZXYvbnVsbAo+Pj4+Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTg4LWNvb2xwaS1nZW5ib29rLmR0cwo+Pj4+Pj4+IEBAIC0wLDAgKzEsMjk2IEBACj4+
Pj4+Pj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQo+Pj4+
Pj4+ICsvKgo+Pj4+Pj4+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMjQgUm9ja2NoaXAgRWxlY3Ryb25p
Y3MgQ28uLCBMdGQuCj4+Pj4+Pj4gKyAqCj4+Pj4+Pj4gKyAqLwo+Pj4+Pj4+ICsKPj4+Pj4+PiAr
L2R0cy12MS87Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvbGVkcy9j
b21tb24uaD4KPj4+Pj4+PiArI2luY2x1ZGUgInJrMzU4OC1jb29scGktY201LmR0c2kiCj4+Pj4+
Pj4gKwo+Pj4+Pj4+ICsvIHsKPj4+Pj4+PiArCW1vZGVsID0gIlJLMzU4OCBDb29sUGkgR2VuQm9v
ayI7Cj4+IAo+PiBJdCB3b3VsZCBiZSBiZXR0ZXIgdG8gb21pdCAiUkszNTg4IiBmcm9tIHRoZSBt
b2RlbCBuYW1lIGFuZCB1c2UKPj4gIkNNNSIgaW5zdGVhZCwgYmVjYXVzZSB0aGF0IG1vcmUgcHJl
Y2lzZWx5IHJlZmxlY3RzIHRoZSAiZGVwZW5kZW5jeQo+PiBncmFwaCIsIHNvIHRvIHNwZWFrLiAg
VGh1cywgSSdkIHN1Z2dlc3QgdGhhdCAiQ29vbFBpIENNNSBHZW5Cb29rIgo+PiBpcyB1c2VkIGFz
IHRoZSBtb2RlbCBuYW1lLgo+PiAKPj4gVGVjaG5pY2FsbHksICJDb29sUGkgQ001IG9uIEdlbkJv
b2sgY2FycmllciBib2FyZCIgd291bGQgYmUgYSBtb3JlCj4+IGNvcnJlY3QgbW9kZWwgbmFtZSwg
c28gdGhhdCdzIGFub3RoZXIgb3B0aW9uLCBidXQgdGhlIGFib3ZlLXByb3Bvc2VkCj4+ICJDb29s
UGkgQ001IEdlbkJvb2siIHNvdW5kcyBtb3JlIGxpa2UgYSBmaW5pc2hlZCBwcm9kdWN0L2Rldmlj
ZQo+PiB0aGFuIGp1c3Qgc29tZSBjYXJyaWVyIGJvYXJkIHdpdGggYW4gU29NLgo+PiAKPj4+Pj4+
PiArCWNvbXBhdGlibGUgPSAiY29vbHBpLGdlbmJvb2siLCAiY29vbHBpLHBpLWNtNSIsIAo+Pj4+
Pj4+ICJyb2NrY2hpcCxyazM1ODgiOwo+Pj4+Pj4+ICsKPj4+Pj4+PiArCWJhY2tsaWdodDogYmFj
a2xpZ2h0IHsKPj4+Pj4+PiArCQljb21wYXRpYmxlID0gInB3bS1iYWNrbGlnaHQiOwo+Pj4+Pj4+
ICsJCWVuYWJsZS1ncGlvcyA9IDwmZ3BpbzQgUktfUEEzIEdQSU9fQUNUSVZFX0hJR0g+Owo+Pj4+
Pj4+ICsJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+Pj4+Pj4gKwkJcGluY3RybC0wID0g
PCZibF9lbj47Cj4+Pj4+Pj4gKwkJcG93ZXItc3VwcGx5ID0gPCZ2Y2MxMnZfZGNpbj47Cj4+Pj4+
Pj4gKwkJcHdtcyA9IDwmcHdtNiAwIDI1MDAwIDA+Owo+Pj4+Pj4+ICsJfTsKPj4+Pj4+PiArCj4+
Pj4+Pj4gKwlsZWRzOiBsZWRzIHsKPj4+Pj4+PiArCQljb21wYXRpYmxlID0gImdwaW8tbGVkcyI7
Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICsJCWhlYXJ0YmVhdF9sZWQ6IGxlZC0wIHsKPj4+Pj4+PiArCQkJ
Y29sb3IgPSA8TEVEX0NPTE9SX0lEX0dSRUVOPjsKPj4+Pj4+PiArCQkJZnVuY3Rpb24gPSBMRURf
RlVOQ1RJT05fU1RBVFVTOwo+Pj4+Pj4+ICsJCQlncGlvcyA9IDwmZ3BpbzEgUktfUEIwIEdQSU9f
QUNUSVZFX0hJR0g+Owo+Pj4+Pj4+ICsJCQlsaW51eCxkZWZhdWx0LXRyaWdnZXIgPSAiaGVhcnRi
ZWF0IjsKPj4+Pj4+PiArCQl9Owo+Pj4+Pj4+ICsKPj4+Pj4+PiArCQl3bGFuX2xlZDogbGVkLTEg
ewo+Pj4+Pj4+ICsJCQljb2xvciA9IDxMRURfQ09MT1JfSURfR1JFRU4+Owo+Pj4+Pj4+ICsJCQlm
dW5jdGlvbiA9IExFRF9GVU5DVElPTl9XTEFOOwo+Pj4+Pj4+ICsJCQlncGlvcyA9IDwmZ3BpbzAg
UktfUEM1IEdQSU9fQUNUSVZFX0hJR0g+Owo+Pj4+Pj4+ICsJCX07Cj4+Pj4+Pj4gKwo+Pj4+Pj4+
ICsJCWNoYXJnaW5nX3JlZDogbGVkLTIgewo+Pj4+Pj4+ICsJCQlmdW5jdGlvbiA9IExFRF9GVU5D
VElPTl9DSEFSR0lORzsKPj4+Pj4+PiArCQkJY29sb3IgPSA8TEVEX0NPTE9SX0lEX1JFRD47Cj4+
Pj4+Pj4gKwkJCWdwaW9zID0gPCZncGlvMyBSS19QRDIgR1BJT19BQ1RJVkVfSElHSD47Cj4+Pj4+
Pj4gKwkJfTsKPj4+Pj4+PiArCX07Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICsJdmNjMTJ2X2RjaW46IHZj
YzEydi1kY2luLXJlZ3VsYXRvciB7Cj4+Pj4+Pj4gKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3It
Zml4ZWQiOwo+Pj4+Pj4+ICsJCXJlZ3VsYXRvci1uYW1lID0gInZjYzEydl9kY2luIjsKPj4+Pj4+
PiArCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+Pj4+Pj4+ICsJCXJlZ3VsYXRvci1ib290LW9uOwo+
Pj4+Pj4+ICsJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDEyMDAwMDAwPjsKPj4+Pj4+PiAr
CQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMjAwMDAwMD47Cj4+Pj4+Pj4gKwl9Owo+Pj4+
Pj4+ICsKPj4+Pj4+PiArCXZjY19zeXM6IHZjYy1zeXMtcmVndWxhdG9yIHsKPj4+Pj4+PiArCQlj
b21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4+Pj4+Pj4gKwkJcmVndWxhdG9yLW5hbWUg
PSAidmNjX3N5cyI7Cj4+Pj4+Pj4gKwkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPj4+Pj4+PiArCQly
ZWd1bGF0b3ItYm9vdC1vbjsKPj4+Pj4+PiArCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw3
MDAwMDAwPjsKPj4+Pj4+PiArCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDw3MDAwMDAwPjsK
Pj4+Pj4+PiArCQl2aW4tc3VwcGx5ID0gPCZ2Y2MxMnZfZGNpbj47Cj4+Pj4+Pj4gKwl9Owo+Pj4+
Pj4+ICsKPj4+Pj4+PiArCXZjYzV2MF9zeXM6IHZjYzV2MC1zeXMtcmVndWxhdG9yIHsKPj4+Pj4+
PiArCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4+Pj4+Pj4gKwkJcmVndWxhdG9y
LW5hbWUgPSAidmNjNXYwX3N5cyI7Cj4+Pj4+Pj4gKwkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPj4+
Pj4+PiArCQlyZWd1bGF0b3ItYm9vdC1vbjsKPj4+Pj4+PiArCQlyZWd1bGF0b3ItbWluLW1pY3Jv
dm9sdCA9IDw3MDAwMDAwPjsKPj4+Pj4+PiArCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDw3
MDAwMDAwPjsKPj4+Pj4+PiArCQl2aW4tc3VwcGx5ID0gPCZ2Y2Nfc3lzPjsKPj4+Pj4+PiArCX07
Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICsJdmNjM3YzX3N5czogdmNjM3YzLXN5cy1yZWd1bGF0b3Igewo+
Pj4+Pj4+ICsJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPj4+Pj4+PiArCQlyZWd1
bGF0b3ItbmFtZSA9ICJ2Y2MzdjNfc3lzIjsKPj4+Pj4+PiArCQlyZWd1bGF0b3ItYWx3YXlzLW9u
Owo+Pj4+Pj4+ICsJCXJlZ3VsYXRvci1ib290LW9uOwo+Pj4+Pj4+ICsJCXJlZ3VsYXRvci1taW4t
bWljcm92b2x0ID0gPDMzMDAwMDA+Owo+Pj4+Pj4+ICsJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0
ID0gPDMzMDAwMDA+Owo+Pj4+Pj4+ICsJCXZpbi1zdXBwbHkgPSA8JnZjYzV2MF9zeXM+Owo+Pj4+
Pj4+ICsJfTsKPj4+Pj4+PiArCj4+Pj4+Pj4gKwl2Y2MzdjNfbGNkOiB2Y2MzdjMtbGNkLXJlZ3Vs
YXRvciB7Cj4+Pj4+Pj4gKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+Pj4+Pj4+
ICsJCXJlZ3VsYXRvci1uYW1lID0gInZjYzN2M19sY2QiOwo+Pj4+Pj4+ICsJCWVuYWJsZS1hY3Rp
dmUtaGlnaDsKPj4+Pj4+PiArCQlncGlvID0gPCZncGlvMSBSS19QQzQgR1BJT19BQ1RJVkVfSElH
SD47Cj4+Pj4+Pj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4+Pj4+PiArCQlwaW5j
dHJsLTAgPSA8JmxjZHB3cl9lbj47Cj4+Pj4+Pj4gKwkJdmluLXN1cHBseSA9IDwmdmNjM3YzX3N5
cz47Cj4+Pj4+Pj4gKwl9Owo+Pj4+Pj4+ICsKPj4+Pj4+PiArCXZjYzV2MF91c2I6IHZjYzV2MC11
c2ItcmVndWxhdG9yIHsKPj4+Pj4+PiArCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7
Cj4+Pj4+Pj4gKwkJcmVndWxhdG9yLW5hbWUgPSAidmNjNXYwX3VzYiI7Cj4+Pj4+Pj4gKwkJcmVn
dWxhdG9yLWJvb3Qtb247Cj4+Pj4+Pj4gKwkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPj4+Pj4+PiAr
CQllbmFibGUtYWN0aXZlLWhpZ2g7Cj4+Pj4+Pj4gKwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQg
PSA8NTAwMDAwMD47Cj4+Pj4+Pj4gKwkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8NTAwMDAw
MD47Cj4+Pj4+Pj4gKwkJZ3BpbyA9IDwmZ3BpbzEgUktfUEQ1IEdQSU9fQUNUSVZFX0hJR0g+Owo+
Pj4+Pj4+ICsJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+Pj4+Pj4gKwkJcGluY3RybC0w
ID0gPCZ1c2JfcHdyZW4+Owo+Pj4+Pj4+ICsJCXZpbi1zdXBwbHkgPSA8JnZjY19zeXM+Owo+Pj4+
Pj4+ICsJfTsKPj4+Pj4+PiArCj4+Pj4+Pj4gKwl2Y2M1djBfdXNiX2hvc3QwOiB2Y2M1djBfdXNi
MzBfaG9zdDogdmNjNXYwLXVzYi1ob3N0LXJlZ3VsYXRvciB7Cj4+Pj4+Pj4gKwkJY29tcGF0aWJs
ZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+Pj4+Pj4+ICsJCXJlZ3VsYXRvci1uYW1lID0gInZjYzV2
MF9ob3N0IjsKPj4+Pj4+PiArCQlyZWd1bGF0b3ItYm9vdC1vbjsKPj4+Pj4+PiArCQlyZWd1bGF0
b3ItYWx3YXlzLW9uOwo+Pj4+Pj4+ICsJCWVuYWJsZS1hY3RpdmUtaGlnaDsKPj4+Pj4+PiArCQly
ZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKPj4+Pj4+PiArCQlyZWd1bGF0b3It
bWF4LW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKPj4+Pj4+PiArCQlncGlvID0gPCZncGlvMSBSS19Q
QTcgR1BJT19BQ1RJVkVfSElHSD47Cj4+Pj4+Pj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0
IjsKPj4+Pj4+PiArCQlwaW5jdHJsLTAgPSA8JnVzYl9ob3N0X3B3cmVuPjsKPj4+Pj4+PiArCQl2
aW4tc3VwcGx5ID0gPCZ2Y2M1djBfdXNiPjsKPj4+Pj4+PiArCX07Cj4+Pj4+Pj4gK307Cj4+Pj4+
Pj4gKwo+Pj4+Pj4+ICsmZ21hYzAgewo+Pj4+Pj4+ICsJc3RhdHVzID0gImRpc2FibGVkIjsKPj4+
Pj4+PiArfTsKPj4+Pj4+PiArCj4+Pj4+Pj4gKy8qIE0uMiBFLUtleSAqLwo+Pj4+Pj4+ICsmcGNp
ZTJ4MWwwIHsKPj4+Pj4+PiArCXJlc2V0LWdwaW9zID0gPCZncGlvNCBSS19QQTIgR1BJT19BQ1RJ
VkVfSElHSD47Cj4+Pj4+Pj4gKwl2cGNpZTN2My1zdXBwbHkgPSA8JnZjYzN2M19zeXM+Owo+Pj4+
Pj4+ICsJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4+Pj4+PiArCXBpbmN0cmwtMCA9IDwm
cGNpZV9jbGtyZXEgJnBjaWVfd2FrZSAmcGNpZV9yc3QgJndpZmlfcHdyb24KPj4+Pj4+PiAmYnRf
cHdyb24+Owo+Pj4+Pj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+Pj4+Pj4+ICt9Owo+Pj4+Pj4+ICsK
Pj4+Pj4+PiArJnBjaWUyeDFsMiB7Cj4+Pj4+Pj4gKwlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+Pj4+
Pj4+ICt9Owo+Pj4+Pj4+ICsKPj4+Pj4+PiArJnBjaWUzMHBoeSB7Cj4+Pj4+Pj4gKwlzdGF0dXMg
PSAib2theSI7Cj4+Pj4+Pj4gK307Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICsvKiBNLjIgTS1LZXkgc3Nk
ICovCj4+Pj4+Pj4gKyZwY2llM3g0IHsKPj4+Pj4+PiArCXJlc2V0LWdwaW9zID0gPCZncGlvNCBS
S19QQjYgR1BJT19BQ1RJVkVfSElHSD47Cj4+Pj4+Pj4gKwl2cGNpZTN2My1zdXBwbHkgPSA8JnZj
YzN2M19zeXM+Owo+Pj4+Pj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+Pj4+Pj4+ICt9Owo+Pj4+Pj4+
ICsKPj4+Pj4+PiArJnBpbmN0cmwgewo+Pj4+Pj4+ICsJbGNkIHsKPj4+Pj4+PiArCQlsY2Rwd3Jf
ZW46IGxjZHB3ci1lbiB7Cj4+Pj4+Pj4gKwkJCXJvY2tjaGlwLHBpbnMgPSA8MSBSS19QQzQgUktf
RlVOQ19HUElPICZwY2ZnX3B1bGxfZG93bj47Cj4+Pj4+Pj4gKwkJfTsKPj4+Pj4+PiArCj4+Pj4+
Pj4gKwkJYmxfZW46IGJsLWVuIHsKPj4+Pj4+PiArCQkJcm9ja2NoaXAscGlucyA9IDw0IFJLX1BB
MyBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPj4+Pj4+PiArCQl9Owo+Pj4+Pj4+ICsJ
fTsKPj4+Pj4+PiArCj4+Pj4+Pj4gKwl1c2Igewo+Pj4+Pj4+ICsJCXVzYl9wd3JlbjogdXNiLXB3
cmVuIHsKPj4+Pj4+PiArCQkJcm9ja2NoaXAscGlucyA9IDwxIFJLX1BENSBSS19GVU5DX0dQSU8g
JnBjZmdfcHVsbF91cD47Cj4+Pj4+Pj4gKwkJfTsKPj4+Pj4+PiArCj4+Pj4+Pj4gKwkJdXNiX290
Z19wd3JlbjogdXNiLW90Zy1wd3JlbiB7Cj4+Pj4+Pj4gKwkJCXJvY2tjaGlwLHBpbnMgPSA8MCBS
S19QQTAgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfdXA+Owo+Pj4+Pj4+ICsJCX07Cj4+Pj4+Pj4g
Kwo+Pj4+Pj4+ICsJCXVzYl9ob3N0X3B3cmVuOiB1c2ItaG9zdC1wd3JlbiB7Cj4+Pj4+Pj4gKwkJ
CXJvY2tjaGlwLHBpbnMgPSA8MSBSS19QQTcgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfdXA+Owo+
Pj4+Pj4+ICsJCX07Cj4+Pj4+Pj4gKwl9Owo+Pj4+Pj4+ICsKPj4+Pj4+PiArCXdpZmkgewo+Pj4+
Pj4+ICsJCWJ0X3B3cm9uOiBidC1wd3JvbiB7Cj4+Pj4+Pj4gKwkJCXJvY2tjaGlwLHBpbnMgPSA8
MyBSS19QQTYgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfdXA+Owo+Pj4+Pj4+ICsJCX07Cj4+Pj4+
Pj4gKwo+Pj4+Pj4+ICsJCXBjaWVfY2xrcmVxOiBwY2llLWNsa3JlcSB7Cj4+Pj4+Pj4gKwkJCXJv
Y2tjaGlwLHBpbnMgPSA8NCBSS19QQTAgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfdXA+Owo+Pj4+
Pj4+ICsJCX07Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICsJCXBjaWVfcnN0OiBwY2llLXJzdCB7Cj4+Pj4+
Pj4gKwkJCXJvY2tjaGlwLHBpbnMgPSA8NCBSS19QQTIgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxf
dXA+Owo+Pj4+Pj4+ICsJCX07Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICsJCXdpZmlfcHdyb246IHdpZmkt
cHdyb24gewo+Pj4+Pj4+ICsJCQlyb2NrY2hpcCxwaW5zID0gPDMgUktfUEIxIFJLX0ZVTkNfR1BJ
TyAmcGNmZ19wdWxsX3VwPjsKPj4+Pj4+PiArCQl9Owo+Pj4+Pj4+ICsKPj4+Pj4+PiArCQlwY2ll
X3dha2U6IHBjaWUtd2FrZSB7Cj4+Pj4+Pj4gKwkJCXJvY2tjaGlwLHBpbnMgPSA8NCBSS19QQTEg
UktfRlVOQ19HUElPICZwY2ZnX3B1bGxfdXA+Owo+Pj4+Pj4+ICsJCX07Cj4+Pj4+Pj4gKwl9Owo+
Pj4+Pj4+ICt9Owo+Pj4+Pj4+ICsKPj4+Pj4+PiArJnB3bTYgewo+Pj4+Pj4+ICsJcGluY3RybC0w
ID0gPCZwd202bTFfcGlucz47Cj4+Pj4+Pj4gKwlzdGF0dXMgPSAib2theSI7Cj4+Pj4+Pj4gK307
Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICsmc2RtbWMgewo+Pj4+Pj4+ICsJc3RhdHVzID0gImRpc2FibGVk
IjsKPj4+Pj4+PiArfTsKPj4+Pj4+PiArCj4+Pj4+Pj4gKyZzZmMgewo+Pj4+Pj4+ICsJcGluY3Ry
bC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4+Pj4+PiArCXBpbmN0cmwtMCA9IDwmZnNwaW0yX3BpbnM+
Owo+Pj4+Pj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+Pj4+Pj4+ICsKPj4+Pj4+PiArCWZsYXNoQDAg
ewo+Pj4+Pj4+ICsJCWNvbXBhdGlibGUgPSAiamVkZWMsc3BpLW5vciI7Cj4+Pj4+Pj4gKwkJcmVn
ID0gPDB4MD47Cj4+Pj4+Pj4gKwkJc3BpLW1heC1mcmVxdWVuY3kgPSA8MTAwMDAwMDAwPjsKPj4+
Pj4+PiArCQlzcGktcngtYnVzLXdpZHRoID0gPDQ+Owo+Pj4+Pj4+ICsJCXNwaS10eC1idXMtd2lk
dGggPSA8MT47Cj4+Pj4+Pj4gKwl9Owo+Pj4+Pj4+ICt9Owo+Pj4+Pj4+ICsKPj4+Pj4+PiArJnUy
cGh5MCB7Cj4+Pj4+Pj4gKwlzdGF0dXMgPSAib2theSI7Cj4+Pj4+Pj4gK307Cj4+Pj4+Pj4gKwo+
Pj4+Pj4+ICsmdTJwaHkwX290ZyB7Cj4+Pj4+Pj4gKwlzdGF0dXMgPSAib2theSI7Cj4+Pj4+Pj4g
K307Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICsmdXNiZHBfcGh5MCB7Cj4+Pj4+Pj4gKwlzdGF0dXMgPSAi
b2theSI7Cj4+Pj4+Pj4gK307Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICsmdTJwaHkxIHsKPj4+Pj4+PiAr
CXN0YXR1cyA9ICJva2F5IjsKPj4+Pj4+PiArfTsKPj4+Pj4+PiArCj4+Pj4+Pj4gKyZ1MnBoeTFf
b3RnIHsKPj4+Pj4+PiArCXN0YXR1cyA9ICJva2F5IjsKPj4+Pj4+PiArfTsKPj4+Pj4+PiArCj4+
Pj4+Pj4gKyZ1MnBoeTIgewo+Pj4+Pj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+Pj4+Pj4+ICt9Owo+
Pj4+Pj4+ICsKPj4+Pj4+PiArJnUycGh5MyB7Cj4+Pj4+Pj4gKwlzdGF0dXMgPSAib2theSI7Cj4+
Pj4+Pj4gK307Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICsmdTJwaHkyX2hvc3Qgewo+Pj4+Pj4+ICsJcGh5
LXN1cHBseSA9IDwmdmNjNXYwX3VzYl9ob3N0MD47Cj4+Pj4+Pj4gKwlzdGF0dXMgPSAib2theSI7
Cj4+Pj4+Pj4gK307Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICsmdTJwaHkzX2hvc3Qgewo+Pj4+Pj4+ICsJ
cGh5LXN1cHBseSA9IDwmdmNjNXYwX3VzYj47Cj4+Pj4+Pj4gKwlzdGF0dXMgPSAib2theSI7Cj4+
Pj4+Pj4gK307Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICsmdXNiZHBfcGh5MSB7Cj4+Pj4+Pj4gKwlzdGF0
dXMgPSAib2theSI7Cj4+Pj4+Pj4gK307Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICsvKiBGb3IgS2V5cGFk
ICovCj4+Pj4+Pj4gKyZ1c2JfaG9zdDBfZWhjaSB7Cj4+Pj4+Pj4gKwlzdGF0dXMgPSAib2theSI7
Cj4+Pj4+Pj4gK307Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICsmdXNiX2hvc3QwX29oY2kgewo+Pj4+Pj4+
ICsJc3RhdHVzID0gIm9rYXkiOwo+Pj4+Pj4+ICt9Owo+Pj4+Pj4+ICsKPj4+Pj4+PiArLyogVHlw
ZSBDIHBvcnQgKi8KPj4+Pj4+PiArJnVzYl9ob3N0MF94aGNpIHsKPj4+Pj4+PiArCWRyX21vZGUg
PSAicGVyaXBoZXJhbCI7Cj4+Pj4+Pj4gKwltYXhpbXVtLXNwZWVkID0gImhpZ2gtc3BlZWQiOwo+
Pj4+Pj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+Pj4+Pj4+ICt9Owo+Pj4+Pj4+ICsKPj4+Pj4+PiAr
LyogY29ubmVjdGVkIHRvIGEgSFVCIGZvciBjYW1lcmEgYW5kIEJUICovCj4+Pj4+Pj4gKyZ1c2Jf
aG9zdDFfZWhjaSB7Cj4+Pj4+Pj4gKwlzdGF0dXMgPSAib2theSI7Cj4+Pj4+Pj4gK307Cj4+Pj4+
Pj4gKwo+Pj4+Pj4+ICsmdXNiX2hvc3QxX29oY2kgewo+Pj4+Pj4+ICsJc3RhdHVzID0gIm9rYXki
Owo+Pj4+Pj4+ICt9Owo+Pj4+Pj4+ICsKPj4+Pj4+PiArLyogVVNCIEEgb3V0ICovCj4+Pj4+Pj4g
KyZ1c2JfaG9zdDFfeGhjaSB7Cj4+Pj4+Pj4gKwlkcl9tb2RlID0gImhvc3QiOwo+Pj4+Pj4+ICsJ
c3RhdHVzID0gIm9rYXkiOwo+Pj4+Pj4+ICt9Owo=

