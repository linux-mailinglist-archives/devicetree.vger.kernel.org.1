Return-Path: <devicetree+bounces-134552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BDC9FDEAA
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 11:51:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1689B161709
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 10:50:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E85813AD22;
	Sun, 29 Dec 2024 10:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=163.com header.i=@163.com header.b="F/q3zeel"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.5])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AD278494;
	Sun, 29 Dec 2024 10:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735469456; cv=none; b=oyeWHwfBGsDK15K1xTGx1kG4IId9yFBonebn/kTHumJCWqFBeZFigmK6IY8z3M7mjOQuedMshyeUvL91YHz7TMm/tsx8Yd1IS0tf3wt00xlUplWyucpke4frBSKhfKXCzKlEaiMIAzw0/CMY60sTqh4wuPqC9Udyp4uK/NKKnxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735469456; c=relaxed/simple;
	bh=q1gEjD3TbD0ubPGJ6ySk4Sa58uaIyggiR94fEg1DvNk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=KQap/xOu1Se3IVGDT00G5jNXataKrRc1YzeRh0RkVF6Tr7/uZyHsma+EU9K897N/P6TLn7a3QHotAb+PxpxrzG6mM0i49F3CUiV8c9/+DBopoqBE6xS6O4/ZSbHE+R5cRyM2yKZlNFwSsUERYog5h3LmDhGOEe3413i4X0I0dhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=fail (1024-bit key) header.d=163.com header.i=@163.com header.b=F/q3zeel reason="signature verification failed"; arc=none smtp.client-ip=220.197.31.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=6x6DDz8OXltjHQDY/Nb8O3LQiGK4ytUH+XsVeWN6k7M=; b=F
	/q3zeels/yRCPMpYd0L8TenzEk7sD6Vblu5Ibux4tuxUHO9aqIIbXK62SZ7UXFpQ
	UtKXMoDsR4tNc6BEa6nlKMmPgeHPOXE04XMCAD6iQKyw+/o/lHgpDkiNdlUrrb7w
	FbKIqiCd9+nnT3uoW9AXKEOcjKbPNq+G590TSWi/Bs=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-135 (Coremail) ; Sun, 29 Dec 2024 18:49:38 +0800
 (CST)
Date: Sun, 29 Dec 2024 18:49:38 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Cc: robh@kernel.org, iommu@lists.linux.dev, heiko@sntech.de, 
	devicetree@vger.kernel.org, joro@8bytes.org, hjc@rock-chips.com, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, vkoul@kernel.org, 
	detlev.casanova@collabora.com, linux-arm-kernel@lists.infradead.org, 
	"Andy Yan" <andy.yan@rock-chips.com>, 
	linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, 
	cl@rock-chips.com
Subject: Re:Re: [PATCH v2 5/8] dt-bindings: display: vop2: Add rk3576
 support
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <ihvrdnntfuvvycnlhysnm43wylotovvnivu4wxcne3bwc6etpj@n2rq6n77lmma>
References: <20241228122155.646957-1-andyshrk@163.com>
 <20241228122155.646957-6-andyshrk@163.com>
 <ihvrdnntfuvvycnlhysnm43wylotovvnivu4wxcne3bwc6etpj@n2rq6n77lmma>
X-NTES-SC: AL_Qu2YB/idtkss7iGeYOlS3TJ694VEL57u+a5GusA2ecAsnATi4iQeZGRsL2rN79jltAEHsN6nekZl9Y1BVSkd
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <4847f6b1.1c60.19412092a7a.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:hygvCgDn76xCKXFnKw9LAA--.48082W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQTEXmdxJJEE4wADsw
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==

CgpIaSBLcnp5c3p0b2YsCgpBdCAyMDI0LTEyLTI5IDE4OjEzOjM5LCAiS3J6eXN6dG9mIEtvemxv
d3NraSIgPGtyemtAa2VybmVsLm9yZz4gd3JvdGU6Cj5PbiBTYXQsIERlYyAyOCwgMjAyNCBhdCAw
ODoyMTo0OFBNICswODAwLCBBbmR5IFlhbiB3cm90ZToKPj4gRnJvbTogQW5keSBZYW4gPGFuZHku
eWFuQHJvY2stY2hpcHMuY29tPgo+PiAKPj4gQWRkIHZvcCBmb3VuZCBvbiByazM1NzYsIHRoZSBt
YWluIGRpZmZlcmVuY2UgYmV0d2VlbiByazM1NzYgYW5kIHRoZQo+PiBwcmV2aW91cyB2b3AgaXMg
dGhhdCBlYWNoIFZQIGhhcyBpdHMgb3duIGludGVycnVwdCBsaW5lLgo+PiAKPj4gU2lnbmVkLW9m
Zi1ieTogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgo+PiAKPj4gLS0tCj4+IAo+
PiBDaGFuZ2VzIGluIHYyOgo+PiAtIGRlc2NyaWJlIGNvbnN0cmFpbnQgU09DIGJ5IFNPQywgYXMg
aW50ZXJydXB0cyBvZiByazM1NzYgaXMgdmVyeQo+PiAgIGRpZmZlcmVudCBmcm9tIG90aGVycwo+
PiAtIERyb3AgS3J6eXN6dG9mJ3MgUmV2aWV3ZWQtYnksIGFzIHRoaXMgdmVyc2lvbiBjaGFuZ2Vk
IGEgbG90Lgo+PiAKPj4gQ2hhbmdlcyBpbiB2MToKPj4gLSBvcmRlcmVkIGJ5IHNvYyBuYW1lCj4+
IC0gQWRkIGRlc2NyaXB0aW9uIGZvciBuZXdseSBhZGRlZCBpbnRlcnJ1cHQKPj4gCj4+ICAuLi4v
ZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcC12b3AyLnlhbWwgICAgICAgfCA3MCArKysrKysrKysr
KysrKystLS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgNTYgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRp
b25zKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAtdm9wMi55YW1sIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAtdm9wMi55YW1sCj4+
IGluZGV4IDI1MzE3MjZhZjMwNi4uZjI4Y2VhNGE2ZDgyIDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcC12b3Ay
LnlhbWwKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkv
cm9ja2NoaXAvcm9ja2NoaXAtdm9wMi55YW1sCj4+IEBAIC0yMCw2ICsyMCw3IEBAIHByb3BlcnRp
ZXM6Cj4+ICAgICAgZW51bToKPj4gICAgICAgIC0gcm9ja2NoaXAscmszNTY2LXZvcAo+PiAgICAg
ICAgLSByb2NrY2hpcCxyazM1Njgtdm9wCj4+ICsgICAgICAtIHJvY2tjaGlwLHJrMzU3Ni12b3AK
Pj4gICAgICAgIC0gcm9ja2NoaXAscmszNTg4LXZvcAo+PiAgCj4+ICAgIHJlZzoKPj4gQEAgLTM3
LDEwICszOCwyMiBAQCBwcm9wZXJ0aWVzOgo+PiAgICAgICAgLSBjb25zdDogZ2FtbWEtbHV0Cj4+
ICAKPj4gICAgaW50ZXJydXB0czoKPj4gLSAgICBtYXhJdGVtczogMQo+PiAtICAgIGRlc2NyaXB0
aW9uOgo+PiAtICAgICAgVGhlIFZPUCBpbnRlcnJ1cHQgaXMgc2hhcmVkIGJ5IHNldmVyYWwgaW50
ZXJydXB0IHNvdXJjZXMsIHN1Y2ggYXMKPj4gLSAgICAgIGZyYW1lIHN0YXJ0IChWU1lOQyksIGxp
bmUgZmxhZyBhbmQgb3RoZXIgc3RhdHVzIGludGVycnVwdHMuCj4+ICsgICAgbWluSXRlbXM6IDEK
Pj4gKyAgICBtYXhJdGVtczogNAo+PiArICAgIGl0ZW1zOgo+PiArICAgICAgLSBkZXNjcmlwdGlv
bjoKPgo+VGhhdCdzIGNvbnRyYWRpY3RvcnkuIG1pbi9tYXggc2F5IDEtNCwgYnV0IGhlcmUgeW91
IGxpc3QgdHdvIGludGVycnVwdHMuCgpUaGVyZSBhcmUgNCBpbnRlcnJ1cHRzIG9uIHJrMzU3Niwg
YW5kIHRoZSBvdGhlciBTT0Mgb25seSBoYXZlIG9uZS4KSSBhbSBzb3JyeSB0aGF0IEkgYW0gbm90
IGZhbWlsaWFyIHdpdGggdGhpcyBzY2hlbWEgbGFuZ3VhZ2U7IEkgaGF2ZSByZWFkIG1hbnkKb3Ro
ZXIgWUFNTCBiaW5kaW5ncyB0aGVzZSBkYXlzIGFuZCB0cnkgdG8gd3JpdGUgaXQgY29ycmVjdGx5
LgoKTWF5YmUgSSBzaG91bGQgbm90IGxpc3QgdGhlIGludGVycnVwdHMtbmFtZXMgaGVyZSh0aGVu
IGxpc3QgdGhlIGludGVycnVwdC1uYW1lIGJ5IHNvYyBhdCBhbGxPZjogIHBhcnQpLAogbGlrZSB0
aGUgY2xvY2tzIGhhbmRsZXMgaW4gc2Ftc3VuZyx1c2IzLWRyZC1waHkueWFtbCAgPwoKPgo+PiAr
ICAgICAgICAgIHZvcCBzeXN0ZW0gaW50ZXJydXB0LCBzdWNoIGFzIGJ1cyBlcnJvciwgYW5kIHZz
eW5jIGZvciB2b3AgdmVyc2lvbiB1bmRlcgo+PiArICAgICAgICAgIHJrMzU3Ni4KPj4gKyAgICAg
IC0gZGVzY3JpcHRpb246Cj4+ICsgICAgICAgICAgaW5kZXBlbmRlbnQgaW50ZXJydXB0cyBmb3Ig
ZWFjaCB2aWRlbyBwb3J0LCBzdWNoIGFzIHZzeW5jIGFuZCBvdGhlciB2aWRlbwo+PiArICAgICAg
ICAgIHBvcnQgcmVsYXRlZCBlcnJvciBpbnRlcnJ1cHRzLgo+PiArCj4+ICsgIGludGVycnVwdC1u
YW1lczoKPj4gKyAgICBpdGVtczoKPj4gKyAgICAgIC0gY29uc3Q6IHZvcC1zeXMKPj4gKyAgICAg
IC0gY29uc3Q6IHZvcC12cDAKPj4gKyAgICAgIC0gY29uc3Q6IHZvcC12cDEKPj4gKyAgICAgIC0g
Y29uc3Q6IHZvcC12cDIKPgo+QW5kIHRoaXMgc2F5cyBleGFjdGx5IDQuCj4KPkJlc3QgcmVnYXJk
cywKPktyenlzenRvZgo+Cj4KPl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj5MaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKPmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK

