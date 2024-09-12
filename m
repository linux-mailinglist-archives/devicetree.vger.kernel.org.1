Return-Path: <devicetree+bounces-102262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC9D9761C0
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 08:43:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1AE551F230AB
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 06:43:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE80718BC2C;
	Thu, 12 Sep 2024 06:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=163.com header.i=@163.com header.b="CjzBAnta"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.2])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAF1B18952C
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 06:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.2
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726123354; cv=none; b=MJoBuAcF0UZp0CeLjbldxuZKkypETIvl1MZZD8k+MI/GDnp5dDhgpEnFOj9sD7qvmtk25GCZpkHFZR/wdTiupODcwSErL07TvYd6mXOPdGM4PEK6vP2mBampOYUib2+MVhKBA8s1/InzocEEsuzUHnEveVBdTu+Jla2YxhiAzWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726123354; c=relaxed/simple;
	bh=0VnFFLKn18cDttcjpkt484qIE/+ZDfBcUuV5ffiItTU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=uZ7FClGXT6B/50DKZSuEvKTLQZq7cYt293Xc6HxWRfte7G1pjq5baT1iSvUUCd0kEN1m2n1f8et+sgwjy3pwpl9nuU2Q9tgKe8DOWM1e6GR0ZAJ013RbzxJfCrGbA2eblMbE3eSkSl3K8430opCXRcEX5oXSStjNy1oMnbih1yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=fail (1024-bit key) header.d=163.com header.i=@163.com header.b=CjzBAnta reason="signature verification failed"; arc=none smtp.client-ip=220.197.31.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=FFRjaMOtcYlD0wIUizy+EZiyL6J8CSdmavsjt1qDwcg=; b=C
	jzBAntaDuHSbAKJXznDcTfw+uXRFhGlC/UTbTlW2tYDnCZLvqcE75/s1+uMd0oVs
	F5qZ3uPUVo1eENJ5vkcx9bHB4Dq6h7WoFBNumjRjbMjSunNll8b/Lr4/f22Bnest
	IupSRki/tXPyy2Lw3dD+QrsYZOzNaoVNsXsu9koHVc=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-118 (Coremail) ; Thu, 12 Sep 2024 14:41:21 +0800
 (CST)
Date: Thu, 12 Sep 2024 14:41:21 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Sascha Hauer" <s.hauer@pengutronix.de>
Cc: detlev.casanova@collabora.com, heiko@sntech.de, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, hjc@rock-chips.com, 
	mripard@kernel.org, sebastian.reichel@collabora.com, 
	linux-rockchip@lists.infradead.org, sjoerd@collabora.com, 
	"Andy Yan" <andy.yan@rock-chips.com>, krzk+dt@kernel.org, 
	robh@kernel.org
Subject: Re:Re: Re: [PATCH v2 05/11] drm/rockchip: vop2: Introduce vop
 hardware version
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <Zt68U6hnPA0KrxXB@pengutronix.de>
References: <20240904120238.3856782-1-andyshrk@163.com>
 <20240904120238.3856782-6-andyshrk@163.com>
 <ZtlZgKcDQFF_WnCn@pengutronix.de>
 <2326e2ea.8264.191c13bab93.Coremail.andyshrk@163.com>
 <Zt68U6hnPA0KrxXB@pengutronix.de>
X-NTES-SC: AL_Qu2ZBP2ZvEoj5yCcY+kZnEobh+Y5UcK2s/ki2YFXN5k0qCTV5jkBWWZDIkXN6NmkFCKFqQG+fRRj0uF4R4BKeJzeNCP6GltchfDWnMbcFzKh
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <79e6fb46.5f06.191e4f70a9a.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:_____wD333wRjeJmESERAA--.1054W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMxlYXmXAnzy82AABsP
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==

CgpIaSBTYXNjaGHvvIwKQXQgMjAyNC0wOS0wOSAxNzoxMzo1NSwgIlNhc2NoYSBIYXVlciIgPHMu
aGF1ZXJAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+T24gVGh1LCBTZXAgMDUsIDIwMjQgYXQgMDQ6
MDk6NThQTSArMDgwMCwgQW5keSBZYW4gd3JvdGU6Cj4+ICAgIEhpIFNhc2NoYSwKPj4gCj4+ICBB
dCAyMDI0LTA5LTA1IDE1OjEwOjU2LCAiU2FzY2hhIEhhdWVyIiA8cy5oYXVlckBwZW5ndXRyb25p
eC5kZT4gd3JvdGU6Cj4+ICA+SGkgQW5keSwKPj4gID4KPj4gID5PbiBXZWQsIFNlcCAwNCwgMjAy
NCBhdCAwODowMjozMlBNICswODAwLCBBbmR5IFlhbiB3cm90ZToKPj4gID4+IEZyb206IEFuZHkg
WWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPj4gID4+Cj4+ICA+PiBUaGVyZSBpcyBhIHZl
cnNpb24gbnVtYmVyIGhhcmRjb2RlZCBpbiB0aGUgVk9QIFZFUlNJT05fSU5GTwo+PiAgPj4gcmVn
aXN0ZXIsIGFuZCB0aGUgdmVyc2lvbiBudW1iZXIgaW5jcmVtZW50cyBzZXF1ZW50aWFsbHkgYmFz
ZWQKPj4gID4+IG9uIHRoZSBwcm9kdWN0aW9uIG9yZGVyIG9mIHRoZSBTT0MuCj4+ICA+Pgo+PiAg
Pj4gU28gdXNpbmcgdGhpcyB2ZXJzaW9uIG51bWJlciB0byBkaXN0aW5ndWlzaCBkaWZmZXJlbnQg
Vk9QIGZlYXR1cmVzCj4+ICA+PiB3aWxsIHNpbXBsaWZ5IHRoZSBjb2RlLgo+PiAgPj4KPj4gID4+
IFNpZ25lZC1vZmYtYnk6IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPj4gID4+
Cj4+ICA+PiAtLS0KPj4gID4+Cj4+ICA+PiBDaGFuZ2VzIGluIHYyOgo+PiAgPj4gLSBJbnRyb2R1
Y2Ugdm9wIGhhcmR3YXJlIHZlcnNpb24KPj4gID4+Cj4+ICA+PiAgZHJpdmVycy9ncHUvZHJtL3Jv
Y2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMgfCAgNyArKysrLS0tCj4+ICA+PiAgZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmggfCAxMSArKysrKysrKysrKwo+PiAg
Pj4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF92b3AyX3JlZy5jIHwgIDMgKysr
Cj4+ICA+PiAgMyBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygt
KQo+PiAgPj4KPj4gID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9j
a2NoaXBfZHJtX3ZvcDIuaCBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1f
dm9wMi5oCj4+ICA+PiBpbmRleCA5YjI2OWY2ZTU3NmUuLjg3MWQ5YmNkMWQ4MCAxMDA2NDQKPj4g
ID4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5oCj4+
ICA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuaAo+
PiAgPj4gQEAgLTEzLDYgKzEzLDE1IEBACj4+ICA+PiAgI2luY2x1ZGUgInJvY2tjaGlwX2RybV9k
cnYuaCIKPj4gID4+ICAjaW5jbHVkZSAicm9ja2NoaXBfZHJtX3ZvcC5oIgo+PiAgPj4KPj4gID4+
ICsjZGVmaW5lIFZPUDJfVkVSU0lPTihtYWpvciwgbWlub3IsIGJ1aWxkKSAgICAgKChtYWpvcikg
PDwgMjQgfCAobWlub3IpIDw8IDE2IHwgKGJ1aWxkKSkKPj4gID4+ICsKPj4gID4+ICsvKiBUaGUg
bmV3IFNPQyBWT1AgdmVyc2lvbiBpcyBiaWdnZXIgdGhhbiB0aGUgb2xkICovCj4+ICA+PiArI2Rl
ZmluZSBWT1BfVkVSU0lPTl9SSzM1NjggICAgVk9QMl9WRVJTSU9OKDB4NDAsIDB4MTUsIDB4ODAy
MykKPj4gID4+ICsjZGVmaW5lIFZPUF9WRVJTSU9OX1JLMzU4OCAgICBWT1AyX1ZFUlNJT04oMHg0
MCwgMHgxNywgMHg2Nzg2KQo+PiAgPj4gKyNkZWZpbmUgVk9QX1ZFUlNJT05fUkszNTI4ICAgIFZP
UDJfVkVSU0lPTigweDUwLCAweDE3LCAweDEyNjMpCj4+ICA+PiArI2RlZmluZSBWT1BfVkVSU0lP
Tl9SSzM1NjIgICAgVk9QMl9WRVJTSU9OKDB4NTAsIDB4MTcsIDB4NDM1MCkKPj4gID4+ICsjZGVm
aW5lIFZPUF9WRVJTSU9OX1JLMzU3NiAgICBWT1AyX1ZFUlNJT04oMHg1MCwgMHgxOSwgMHg5NzY1
KQo+PiAgPgo+PiAgPldoYXQgYWJvdXQgdGhlIFJLMzU2Nj8gRG9lcyBpdCBoYXZlIHRoZSBzYW1l
IHZlcnNpb24gY29kZSBhcyB0aGUgUkszNTY4Pwo+PiAgPgo+PiAgPlRoaXMgbmV3IHZlcnNpb24g
ZmllbGQgcmVwbGFjZXMgdGhlIHNvY19pZCBtZWNoYW5pc20gd2UgaGFkIGJlZm9yZSB0bwo+PiAg
Pjk5JS4gWW91IGtlZXAgdGhlIHNvY19pZCBhcm91bmQganVzdCBmb3IgZGlzdGluZ3Vpc2hpbmcg
YmV0d2VlbiBSSzM1NjYKPj4gID5hbmQgUkszNTY4LiBJdCB3b3VsZCBiZSBuaWNlIHRvIGZ1bGx5
IHJlcGxhY2UgaXQuCj4+ICA+Cj4+ICA+SSBzZWUgdGhhdCB0aGUgVk9QX1ZFUlNJT05fUksqIG51
bWJlcnMgYXJlIHRoZSBzYW1lIGFzIGZvdW5kIGluIHRoZQo+PiAgPlZPUDJfU1lTX1ZFUlNJT05f
SU5GIHJlZ2lzdGVycy4gT24gdGhlIG90aGVyIGhhbmQgeW91IG5ldmVyIHJlYWQgdGhlCj4+ICA+
dmFsdWUgZnJvbSB0aGUgcmVnaXN0ZXIgd2hpY2ggbWFrZSB0aGUgVk9QX1ZFUlNJT05fUksqIGp1
c3QgYXJiaXRyYXJ5Cj4+ICA+bnVtYmVycy4gV291bGRuJ3QgaXQgYmUgcG9zc2libGUgdG8gbWFr
ZSBzb21ldGhpbmcgdXAgZm9yIFJLMzU2NiwgbGlrZQo+PiAgPlZPUDJfVkVSU0lPTigweDQwLCAw
eDE1LCAweDgwMjIpIHRvIGdldCByaWQgb2YgdGhlIHNvY19pZCB0aGluZ3k/Cj4+ICBZZXPvvIxS
SzM1NjYgYW5kIFJLMzU2OCBzaGFyZSB0aGUgc2FtZSBWT1AgSVAgYmxvY2vvvIwgc28gdGhlIHZl
cnNpb24gY29kZSBhdCBWRVJTSU9OX1JFR0lTVEVSIGlzCj4+ICB0aGUgc2FtZSwgdGhlIGRpZmZl
cmVuY2UgYmV0d2VlbiByazM1NjggYW5kIHJrMzM1NjYgYXJlIGludHJvZHVjZWQgYXQgc29jIElu
dGVncmF0aW9u44CCCj4+ICBTbyBpIHdvdWxkIHN0aWxsIGxpa2UgdG8ga2VlcCB0aGUgc29jX2lk
IHRvICBoYW5kbGUgc2l0dWF0aW9uIGxpa2UgdGhpc+OAgkFzIHdlIGFsd2F5cyBoYXZlIHN1Y2gg
IGNhdXNl77yMIG9uZQo+PiAgc2FtZSBJUCBibG9ja++8jCBidXQgdGhlcmUgYXJlIHNvbWUgc3Vi
dGxlIGRpZmZlcmVuY2VzIGluIGZlYXR1cmVzIGFjcm9zcyBkaWZmZXJlbnQgU09Dcy4KPgo+Rmlu
ZSB3aXRoIG1lLiBZb3UgY291bGQgbGVhdmUgYSBjb21tZW50IGluIHRoZSBjb2RlIG9yIGNvbW1p
dAoKPm1lc3NhZ2UgdGhhdCBleHBsYWlucyB3aHkgd2UgbmVlZCBib3RoLgoKCk9r77yMIHdpbGwg
YWRkIGluIFYzLj4KPj4gIEkgaGF2ZSBjb25zaWRlcmVkIHJlYWRpbmcgdGhlIHZlcnNpb24gcmVn
aXN0ZXIgZGlyZWN0bHksIGJ1dCBJIGhhdmVuJ3QgZm91bmQgYSBzdWl0YWJsZSBtZXRob2QgeWV0
Lgo+Cj5Zb3UgY291bGQgY2hlY2sgdGhlIGV4cGVjdGVkIHZlcnNpb24gZnJvbSB0aGUgZHJpdmVy
IGRhdGEgYWdhaW5zdAo+dGhlIHJlZ2lzdGVyIHZhbHVlLCBidXQgdGhhdCB3b3VsZCBvbmx5IGJl
IGFuIGFkZGl0aW9uYWwgc2FuaXR5IGNoZWNrLgoKPk5vdCBzdXJlIGlmIGl0J3Mgd29ydGggaXQu
CgoKSSB0aGluayB3ZSBjYW4gYWRkIGEgY2hlY2sgbGlrZSB0aGF0IHRvIG1ha2Ugc3VyZSB0aGUg
dmVyc2lvbiBjb2RlIG1hdGNocyB0aGUKcmVhbCByZWdpc3RlciB2YWx1Ze+8jHJhdGhlciB0aGFu
IGJlaW5nIGFuIGFyYml0cmFyaWx5IGNyZWF0ZWQgdmFsdWUuCj5TYXNjaGEKPgo+LS0gCj5QZW5n
dXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfAo+U3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAgICAg
IHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKPjMxMTM3IEhpbGRlc2hlaW0sIEdlcm1h
bnkgICAgICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8Cj5BbXRz
Z2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEt
MjA2OTE3LTU1NTUgfAo+Cj5fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj5MaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCj5odHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==

