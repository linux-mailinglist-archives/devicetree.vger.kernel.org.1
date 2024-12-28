Return-Path: <devicetree+bounces-134467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 189C99FD941
	for <lists+devicetree@lfdr.de>; Sat, 28 Dec 2024 08:01:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 90ADE1884D5D
	for <lists+devicetree@lfdr.de>; Sat, 28 Dec 2024 07:01:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1D753B1A2;
	Sat, 28 Dec 2024 07:01:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=163.com header.i=@163.com header.b="ZlDOPd2m"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.3])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92E185CB8;
	Sat, 28 Dec 2024 07:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.3
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735369292; cv=none; b=Kbn6pRhfbdgTOdUAb6G0lBrHPYXCws3K7+RJi6GuFvT+ht2cuYGH3KRZHAp7pmKBY0XBVzMJrt6i6oNwYhObgZRpdA89Ipf8Rp7GzYVwX5QDaN9erqmteosNOWcmNR2emFsROTFL1vez+FQxKYcESjuz04+B3VrKNvRwAoIL20w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735369292; c=relaxed/simple;
	bh=BkbkYm+LvXPsePd8/5mQYBYA0p5ZsCTYe/7h1A6B/l4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=M98355NIAce+o4PvAYL+j2A7z+DSaYGTpuT9laBAX8rS2C+ww6fQYZNDMoYvKnaw1NfYScnwHYyIIy/UuICxx3ACLLz41n3EW/xIMyJOruvaKqxPbcBRpSKWZfQIvBWBygiYyNnmG7717JpMRu0Zb+ioNFja/QfzCVUaey+rHIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=fail (1024-bit key) header.d=163.com header.i=@163.com header.b=ZlDOPd2m reason="signature verification failed"; arc=none smtp.client-ip=220.197.31.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=5X2MHZd/u7OgB2ISQjRGyprLfLYRbpVQl3B843hJpYI=; b=Z
	lDOPd2mM67y53Dah4FG8FfkTyao0TweWBYp5E9w7odfLEnCmcCEBIqH9P9SeHdHm
	pH+mBoHcOqhR487xbMCTRLa6NbZIUjqVmVtDcNUdbgIueVfLq1HMo3AGoYUgicMJ
	3Q92QWF1DP4ER3ZHwKfoJ3OHi5VrGA1AXw4G4wWaZc=
Received: from andyshrk$163.com ( [103.29.142.67] ) by
 ajax-webmail-wmsvr-40-130 (Coremail) ; Sat, 28 Dec 2024 15:00:29 +0800
 (CST)
Date: Sat, 28 Dec 2024 15:00:29 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: "Krzysztof Kozlowski" <krzk@kernel.org>, cristian.ciocaltea@collabora.com, 
	detlev.casanova@collabora.com, krzk+dt@kernel.org, vkoul@kernel.org, 
	kishon@kernel.org, robh@kernel.org, sebastian.reichel@collabora.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, 
	"Andy Yan" <andy.yan@rock-chips.com>
Subject: Re:Re: [PATCH] dt-bindings: phy: add rk3576 hdptx phy
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <3255768.PYKUYFuaPT@diego>
References: <20241224091919.267698-1-andyshrk@163.com>
 <hh3zowf257dwwp3uo7al5l5ql7hewy7j5rzjqdt3eqvd653mdj@4tgjm6zdsuyi>
 <3255768.PYKUYFuaPT@diego>
X-NTES-SC: AL_Qu2YB/+dtkop7yWYYukfmkcVgOw9UcO5v/Qk3oZXOJF8jADoxjoPQEJSJELo/860NC+UmgmGTTRuyOZHZoV9TZwxLbfjKkBbH5u/Okwj91DDug==
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <50a70e66.1b76.1940c1104c8.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:gigvCgDX_yANom9nYvNKAA--.42926W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQXDXmdvkmrYJAACs-
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==

CkhpIEhlaWtpbywgS3J6eXN6dG9mLAoKQXQgMjAyNC0xMi0yOCAwNDowODo0MSwgIkhlaWtvIFN0
w7xibmVyIiA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPkhpIEtyenlzenRvZiwgQW5keSwKPgo+
QW0gRnJlaXRhZywgMjcuIERlemVtYmVyIDIwMjQsIDA5OjU1OjU5IENFVCBzY2hyaWViIEtyenlz
enRvZiBLb3psb3dza2k6Cj4+IE9uIFR1ZSwgRGVjIDI0LCAyMDI0IGF0IDA1OjE5OjEzUE0gKzA4
MDAsIEFuZHkgWWFuIHdyb3RlOgo+PiA+IEZyb206IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNo
aXBzLmNvbT4KPj4gPiAKPj4gPiBUaGUgSERQVFggUEhZIG9uIHJrMzU3NiBpcyBjb21wYXRpYmxl
IHdpdGggaXQgb24KPj4gPiByazM1ODguCj4+ID4gCj4+ID4gQWRkIGNvbXBhdGlibGUgZm9yIGl0
Lgo+PiA+IAo+PiA+IFNpZ25lZC1vZmYtYnk6IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBz
LmNvbT4KPj4gPiAtLS0KPj4gPiAKPj4gPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Jv
Y2tjaGlwLHJrMzU4OC1oZHB0eC1waHkueWFtbCB8IDcgKysrKystLQo+PiA+ICAxIGZpbGUgY2hh
bmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+PiAKPj4gQWxzbzogd2hlcmUg
YXJlIGFueSB1c2VycyBvZiB0aGlzIGJpbmRpbmc/Cj4+IAo+PiBXZSBkb24ndCB0YWtlIGJpbmRp
bmdzIHdpdGhvdXQgKlVQU1RSRUFNKiB1c2Vycy4KPgo+QW5keSwgY2FuIHlvdSBkbyBhIChzZXBh
cmF0ZSkgRFRTIHNlcmllcyB0aGF0IGJpbmRzIGFsbCB0aGUgZGlzcGxheSBzdHVmZgo+dG9nZXRo
ZXIgb24gb25lIHJrMzU3NiBib2FyZD8gKGlvbW11LCBoZHB0eHBoeSwgdm9wLCBoZG1pKQo+Cj5E
ZXBlbmRpbmcgb24gaG93IHRoZSBkcml2ZXIgc2lkZXMgZ28sIHRoaXMgbWF5IGJlIG5lZWQgdG8g
YmUgcmV2aXNlZCBhdAo+dGhlIGVuZCwgYnV0IHNob3VsZCBob3BlZnVsbHkgc2F0aXNmeSB0aGF0
ICJzaG93IGEgdXNlciIgdGhpbmcuCj4KPkkgZ3Vlc3MgS2V2ZXIncyBFVkItc2VyaWVzIFswXSBt
aWdodCBiZSBhIGdvb2QgYmFzZSB0byBidWlsZCB1cG9uLCB3aXRoIGl0Cj5iZWluZyBhIFJvY2tj
aGlwIEVWQj8KCkFzIEVWQiBwYXRjaCBzZXJpZXMgaXMgc3RpbGwgV0lQLCBJIHdpbGwgdXNlIHJr
MzU3Ni1hcm1zb20tc2lnZTUuZHRzIHdoaWNoIGlzIGFscmVhZHkKaW4gbWFpbmxpbmUgYXMgdGhl
IGJhc2UgdG8gY29sbGVjdCBhbGwgZGlzcGxheSByZWxhdGVkIGR0c+OAggoKPgo+Cj5Gb3IgcGVv
cGxlIHJlYWRpbmcgYWxvbmcsIHRoYXQgd2hvbGUgZGlzcGxheSBjaGFpbiBjb25zaXN0cyBvZjoK
Pi0gaW9tbXUgWzFdCj4tIGNvcmUgZGlzcGxheS1jb250cm9sbGVyIGFkZGl0aW9ucyBmb3IgdGhl
IHJrMzU3NiBbMl0KPi0gdGhpcyBoZHB0eHBoeSBiaW5kaW5nCj4tIGFkZGl0aW9ucyBmb3IgdGhl
IGR3LWhkbWktcXAgZ2x1ZSBbM10KPgo+SGVpa28KPgo+Cj5bMF0gaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbGttbC8yMDI0MTIyMDEwMTU1MS4zNTA1OTE3LTEta2V2ZXIueWFuZ0Byb2NrLWNoaXBz
LmNvbS8KPlsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjQwOTIwMDk0OTQ3Ljc1
NjYtMS1hbmR5c2hya0AxNjMuY29tLwo+WzJdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwv
MjAyNDEyMTQwODE4MzEuMzMzMDcxNC0xLWFuZHlzaHJrQDE2My5jb20vCj5bM30gaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvbGttbC8yMDI0MTIyNTEwMzc0MS4zNjQ1OTctMS1hbmR5c2hya0AxNjMu
Y29tLwo+Cj4KPgo=

