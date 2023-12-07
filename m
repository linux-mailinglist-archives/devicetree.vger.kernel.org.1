Return-Path: <devicetree+bounces-22787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0FE808BD8
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 16:30:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 33CA7281D25
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 15:30:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E06F94596C;
	Thu,  7 Dec 2023 15:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icenowy.me header.i=uwu@icenowy.me header.b="RHzDcopP"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-op-o10.zoho.com (sender4-op-o10.zoho.com [136.143.188.10])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16C4C10CA;
	Thu,  7 Dec 2023 07:29:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701962954; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=A7ElI23MVAgm8zNNFAPzAp4CcAcy8+UHl2rY3FB80PV4Z4xi4yA29Fljao/pKRPtqc6TQ0GAFvFGuAjt1QYavztr5RKbywxMx3IpmzCM6p7DAaaH7HSm7hFOBS8OUIBkdAm7j4K2qZAHf3gbfot7T8mACJpB4/oKoDIGEzk9RLg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1701962954; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=NFBGBgeucIqzd2ci9Tfm6H+YgMwBZS4hxN3L8cqSz1A=; 
	b=Tm9rqeaPSRN3eiuLwdPVnnjiCUilR5FXQbq+d1nSWDWsl6EetzA+RVlBgVM0IM4AOyfkpTwNQOHnpcxuA7LskaXeiV+MLb++jUAis0BLjxkBwxHozeF07RgUtBVgY/OETRUJPRTIj3E57cx8lFtqd9eWWo0TNMHhZGBiUX4X93c=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1701962954;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=NFBGBgeucIqzd2ci9Tfm6H+YgMwBZS4hxN3L8cqSz1A=;
	b=RHzDcopP166e8R861X9TjbgMe58SYkGjRLRDfqViz3rvTUANIWxr6yEOhoVp9x71
	SZid4KQlPaaP/xsYOmLd1j4FxIhHef/8YCiDuiiP4vz4TcW+z4OqS4hDxnuXc9V1fif
	gZ9qrBw8JheRjUthXNWTXXEUtxiQHlRx2/EBRbOyBsfyKzZ7+8oLZTTd2uQHPJi6pRL
	iBtigR9DKRCQZDhYKTXH1c0bShIAh+LfAPWzxDBAsvm+jnl89i49mS4a2f6aDz/YKrV
	n6ePMcmNSHgWXndvcj4WZ66HKRtFYvlK59wLYKLw1tp3lrCJ/q22BnYTApUk1GQZNvJ
	uozEW78eXQ==
Received: from edelgard.fodlan.icenowy.me (120.85.96.101 [120.85.96.101]) by mx.zohomail.com
	with SMTPS id 1701962951848842.8386346646538; Thu, 7 Dec 2023 07:29:11 -0800 (PST)
Message-ID: <13e146c581a51121308a0cad4db44bf3a0d2ae75.camel@icenowy.me>
Subject: Re: [v3 4/6] drm/vs: Add KMS crtc&plane
From: Icenowy Zheng <uwu@icenowy.me>
To: Keith Zhao <keith.zhao@starfivetech.com>, "devicetree@vger.kernel.org"
	 <devicetree@vger.kernel.org>, "dri-devel@lists.freedesktop.org"
	 <dri-devel@lists.freedesktop.org>, "linux-kernel@vger.kernel.org"
	 <linux-kernel@vger.kernel.org>, "linux-riscv@lists.infradead.org"
	 <linux-riscv@lists.infradead.org>
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>, 
 "suijingfeng@loongson.cn" <suijingfeng@loongson.cn>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 William Qiu <william.qiu@starfivetech.com>,  "mripard@kernel.org"
 <mripard@kernel.org>, Xingyu Wu <xingyu.wu@starfivetech.com>, Jack Zhu
 <jack.zhu@starfivetech.com>, "palmer@dabbelt.com" <palmer@dabbelt.com>, 
 "tzimmermann@suse.de" <tzimmermann@suse.de>, "paul.walmsley@sifive.com"
 <paul.walmsley@sifive.com>,  Shengyang Chen
 <shengyang.chen@starfivetech.com>, Changhuang Liang
 <changhuang.liang@starfivetech.com>
Date: Thu, 07 Dec 2023 23:29:05 +0800
In-Reply-To: <580e13ab-a73e-4ce7-999a-8a8685faf2dd@starfivetech.com>
References: <20231204123315.28456-1-keith.zhao@starfivetech.com>
	 <20231204123315.28456-5-keith.zhao@starfivetech.com>
	 <7acd5af8fd4c5bf6ee0614f72cf6cb6751c89dc3.camel@icenowy.me>
	 <580e13ab-a73e-4ce7-999a-8a8685faf2dd@starfivetech.com>
Organization: Anthon Open-Source Community
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
User-Agent: Evolution 3.44.4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ZohoMailClient: External

5ZyoIDIwMjMtMTItMDfmmJ/mnJ/lm5vnmoQgMTk6MzEgKzA4MDDvvIxLZWl0aCBaaGFv5YaZ6YGT
77yaCj4gCj4gCj4gT24gMjAyMy8xMi83IDE2OjQxLCBJY2Vub3d5IFpoZW5nIHdyb3RlOgo+ID4g
5ZyoIDIwMjMtMTItMDTmmJ/mnJ/kuIDnmoQgMjA6MzMgKzA4MDDvvIxLZWl0aCBaaGFv5YaZ6YGT
77yaCj4gPiAqc25pcCoKPiA+IAo+ID4gPiArc3RhdGljIHZvaWQgdXBkYXRlX2N1cnNvcl9wbGFu
ZShzdHJ1Y3QgdnNfZGMgKmRjLCBzdHJ1Y3QKPiA+ID4gdnNfcGxhbmUKPiA+ID4gKnBsYW5lLAo+
ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX3BsYW5lICpkcm1fcGxhbmUsCj4gPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0cnVj
dCBkcm1fYXRvbWljX3N0YXRlCj4gPiA+ICpkcm1fc3RhdGUpCj4gPiA+ICt7Cj4gPiA+ICvCoMKg
wqDCoMKgwqDCoHN0cnVjdCBkcm1fcGxhbmVfc3RhdGUgKnN0YXRlID0KPiA+ID4gZHJtX2F0b21p
Y19nZXRfbmV3X3BsYW5lX3N0YXRlKGRybV9zdGF0ZSwKPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgCj4g
PiA+IMKgwqDCoMKgCj4gPiA+IMKgIGRybV9wbGFuZSk7Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoHN0
cnVjdCB2c19wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUgPQo+ID4gPiB0b192c19wbGFuZV9zdGF0
ZShzdGF0ZSk7Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmRy
bV9mYiA9IHN0YXRlLT5mYjsKPiA+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGRjX2h3X2N1cnNv
ciBjdXJzb3I7Cj4gPiA+ICsKPiA+ID4gK8KgwqDCoMKgwqDCoMKgY3Vyc29yLmFkZHJlc3MgPSBw
bGFuZV9zdGF0ZS0+ZG1hX2FkZHJbMF07Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoGN1cnNvci54ID0g
c3RhdGUtPmNydGNfeDsKPiA+ID4gK8KgwqDCoMKgwqDCoMKgY3Vyc29yLnkgPSBzdGF0ZS0+Y3J0
Y195Owo+ID4gCj4gPiBGcm9tIG15IGV4cGVyaW1lbnRzIG9uIHBva2luZyB3aXRoIHJlZ2lzdGVy
cyBvbiBULUhlYWQgVEgxNTIwIChhbHNvCj4gPiB1c2VzIERDODIwMCBkaXNwbGF5IGNvbnRyb2xs
ZXIgYW5kIGEgc2ltaWxhciBkcml2ZXIpLCB0aGUgREM4MjAwCj4gPiBoYXJkd2FyZSBoYXZlIGEg
ZGlmZmVyZW50IGRlZmluaXRpb24gb2YgY3Vyc29yIHBvc2l0aW9uIFggYW5kIFkKPiA+IHdpdGgK
PiA+IHRoZSBDUlRDIHBsYW5lIHN0YXRlLgo+ID4gCj4gPiBGb3IgQ1JUQyBwbGFuZSBzdGF0ZSwg
aG90X3ggYW5kIGhvdF95IGFyZSBvbmx5IHByb3ZpZGVkIGFzCj4gPiByZWZlcmVuY2UsCj4gPiBh
bmQgdGhlIGN1cnNvciBzaG91bGQgYmUgZGlzcGxheWVkIHdpdGggaXRzICgwLDApIGRyYXduIHRv
IChjcnRjX3gsCj4gPiBjcnRjX3kpIChbWFldX2NydGMgYXJlIHZhbHVlcyBzcGVjaWZpZWQgaW4g
Q1JUQyBzdGF0ZSwgdGhlIHJpZ2h0Cj4gPiBwYXJ0Cj4gPiBvZiB0aGUgYXNzaWdubWVudHMgaGVy
ZSksIHdoZW4gdGhlIGN1cnNvciBpcyBtb3ZlZCB0byAoMCwwKSBidXQgdGhlCj4gPiBob3QKPiA+
IHBvaW50IGlzIG5vdCAoMCwwKSwgaXQgY291bGQgYmUgbmVnYXRpdmUuCj4gPiAKPiA+IEhvd2V2
ZXIsIGZvciBEQzgyMDAgcmVnaXN0ZXJzIGRlZmluaXRpb24sIGN1cnNvciBYWSBwb3NpdGlvbiBj
b3VsZAo+ID4gbm90Cj4gPiBiZSBuZWdhdGl2ZSAtLSB0aGUgY3Vyc29yIHdpbGwgZGlzYXBwZWFy
IHRoZW47IGJlY2F1c2UgaW4gaXRzCj4gPiBkZWZpbml0aW9uLCB0aGUgY3Vyc29yIFhZIHBvc2l0
aW9uIHNob3VsZCBiZSB3aGVyZSB0aGUgY3Vyc29yIGlzCj4gPiBwb2ludGluZyB0bywgaW5zdGVh
ZCBvZiBpdHMgKDAsMCkuIERDODIwMCB3aWxsIGRyYXcgKDAsMCkgb2YgdGhlCj4gPiBjdXJzb3IK
PiA+IHRvICh4IC0gaG90X3gsIHkgLSBob3RfeSkuIFNvIHRvIG1ldCB0aGUgZXhwZWN0YXRpb24g
b2YgdGhlIEtNUwo+ID4gcGxhbmUKPiA+IHNldHRpbmdzLCB0aGUgREM4MjAwIHBvc2l0aW9uIHNo
b3VsZCBiZSBzZXQgdG8gKGNydGNfeCArIGhvdF94LAo+ID4gY3J0Y195Cj4gPiArIGhvdF95KSBp
bnN0ZWFkLiBUaHVzIHRoZXNlIHR3byBsaW5lcyBvZiBjb2RlIHNob3VsZCBiZToKPiA+IAo+ID4g
YGBgCj4gPiDCoMKgwqDCoMKgwqDCoCBjdXJzb3IueCA9IHN0YXRlLT5jcnRjX3ggKyBkcm1fZmIt
PmhvdF94Owo+ID4gwqDCoMKgwqDCoMKgwqAgY3Vyc29yLnkgPSBzdGF0ZS0+Y3J0Y195ICsgZHJt
X2ZiLT5ob3RfeTsKPiA+IGBgYAo+ID4gCj4gPiAKPiA+ID4gK8KgwqDCoMKgwqDCoMKgY3Vyc29y
LmhvdF94ID0gZHJtX2ZiLT5ob3RfeDsKPiA+ID4gK8KgwqDCoMKgwqDCoMKgY3Vyc29yLmhvdF95
ID0gZHJtX2ZiLT5ob3RfeTsKPiA+ID4gK8KgwqDCoMKgwqDCoMKgY3Vyc29yLmRpc3BsYXlfaWQg
PSB0b192c19kaXNwbGF5X2lkKGRjLCBzdGF0ZS0+Y3J0Yyk7Cj4gPiA+ICvCoMKgwqDCoMKgwqDC
oHVwZGF0ZV9jdXJzb3Jfc2l6ZShzdGF0ZSwgJmN1cnNvcik7Cj4gPiA+ICvCoMKgwqDCoMKgwqDC
oGN1cnNvci5lbmFibGUgPSB0cnVlOwo+ID4gPiArCj4gPiA+ICvCoMKgwqDCoMKgwqDCoGRjX2h3
X3VwZGF0ZV9jdXJzb3IoJmRjLT5odywgY3Vyc29yLmRpc3BsYXlfaWQsICZjdXJzb3IpOwo+ID4g
PiArfQo+ID4gKnNuaXAKPiBoZWxsbyBJY2Vub3d5Ogo+IHlvdSBhcmUgZGVlcCB1bmRlcnN0YW5k
aW5nIG9uIGRjODIwMC4KPiBieSB0aGUgd2F5IG9mIHByYWN0aWNlCj4gSSB0ZXN0ZWQgdGhpcyBj
aGFuZ2Ugb24gdGhlIGRlYmlhbiBkZXNrdG9wLCBpcyB0aGVyZSBhIHdheSB0byBjb21wYXJlCj4g
dGhlIGN1cnNvciBiZWhhdmlvciBjaGFuZ2U/CgpUcnkgc2VsZWN0aW5nIHNvbWUgc21hbGwtc2l6
ZWQgdGV4dCBpbiBhIHRleHRib3g/Cgo+IFRoYW5rcwo+IAo+IAo+IAoK


