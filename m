Return-Path: <devicetree+bounces-22970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2F5809A44
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 04:26:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 309F4281E45
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 03:26:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6922A3FC8;
	Fri,  8 Dec 2023 03:26:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=163.com header.i=@163.com header.b="c8tnCYA9"
X-Original-To: devicetree@vger.kernel.org
Received: from m13111.mail.163.com (m13111.mail.163.com [220.181.13.111])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 8242810CA;
	Thu,  7 Dec 2023 19:26:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=LjSEtZNa9xNHoBM5Vm7TEU7fKcTc8P/HvkOnfAf7AQ8=; b=c
	8tnCYA9UHAU3vEqnL5uazU5BWmyeoLZL30R+ZrmK1IC6HrgEmlKDoEsKwp/ElTFh
	htPAXpe0ZsU78z/lx1ibaqnYSjI5XGQrAaHhHA2KrNcnLNTZ28K+A9/1aHZsVNGO
	/b94y8kZM482hZGdlToB/57VD/PXN0b1eBMoefKloA=
Received: from andyshrk$163.com ( [58.22.7.114] ) by ajax-webmail-wmsvr111
 (Coremail) ; Fri, 8 Dec 2023 11:23:37 +0800 (CST)
Date: Fri, 8 Dec 2023 11:23:37 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Keith Zhao" <keith.zhao@starfivetech.com>
Cc: "Maxime Ripard" <mripard@kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>, 
	"tzimmermann@suse.de" <tzimmermann@suse.de>, 
	"airlied@gmail.com" <airlied@gmail.com>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, 
	"William Qiu" <william.qiu@starfivetech.com>, 
	"Xingyu Wu" <xingyu.wu@starfivetech.com>, 
	"paul.walmsley@sifive.com" <paul.walmsley@sifive.com>, 
	"aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>, 
	"palmer@dabbelt.com" <palmer@dabbelt.com>, 
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, 
	"Shengyang Chen" <shengyang.chen@starfivetech.com>, 
	"Jack Zhu" <jack.zhu@starfivetech.com>, 
	"Changhuang Liang" <changhuang.liang@starfivetech.com>, 
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>, 
	"suijingfeng@loongson.cn" <suijingfeng@loongson.cn>
Subject: Re:Re: [v3 5/6] drm/vs: Add hdmi driver
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20230109(dcb5de15)
 Copyright (c) 2002-2023 www.mailtech.cn 163com
In-Reply-To: <e1c362dc-8aac-4d13-9356-8b7ccae4727f@starfivetech.com>
References: <20231204123315.28456-1-keith.zhao@starfivetech.com>
 <20231204123315.28456-6-keith.zhao@starfivetech.com>
 <esetsiqgqpk35zue4c6aq7l6zn4kezhxkqqa7ompaz2vhdy3lr@4d5awfqgs2ss>
 <94a1f9fc-82fb-4a04-a44b-f9b20c2bdfdd@starfivetech.com>
 <abdl6kmighvpwojvafq443q7grn6w3abwpvw7zwbna4jvtsvjf@fa42rv46n2wh>
 <40cdd3c7-174e-4611-9ea6-22cb56d1f62b@starfivetech.com>
 <e90142d.44b1.18c43833b63.Coremail.andyshrk@163.com>
 <e0b84511-dbb4-46fa-9465-713369232f6f@starfivetech.com>
 <43e42269.314.18c46dbb4c5.Coremail.andyshrk@163.com>
 <e1c362dc-8aac-4d13-9356-8b7ccae4727f@starfivetech.com>
X-NTES-SC: AL_Qu2bAPybukAq4SibZekXn0kXhec2W8Czvvgg34JRP5k0pSvH9zwjQkBPMHnb0fmxFwmhjyeZXxZVyNx9baRkdJ9qpOy3CvQC4Lwpx/dz52/D
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <5a79a4b9.1bd7.18c4773c1ea.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:b8GowAD3n1Y5jHJlt+AQAA--.63414W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBnAhAXlghl4VIsQADsb
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==

CgpIaSBLZWl0aO+8mgoK5ZyoIDIwMjMtMTItMDggMTE6MDA6MzHvvIwiS2VpdGggWmhhbyIgPGtl
aXRoLnpoYW9Ac3RhcmZpdmV0ZWNoLmNvbT4g5YaZ6YGT77yaCj4KPgo+T24gMjAyMy8xMi84IDg6
MzcsIEFuZHkgWWFuIHdyb3RlOgo+PiBIaSBLZXRo77yaCj4+IAo+PiAKPj4gCj4+IAo+PiAKPj4g
Cj4+IOWcqCAyMDIzLTEyLTA3IDE4OjQ4OjEz77yMIktlaXRoIFpoYW8iIDxrZWl0aC56aGFvQHN0
YXJmaXZldGVjaC5jb20+IOWGmemBk++8mgo+Pj4KPj4+Cj4+Pk9uIDIwMjMvMTIvNyAxNzowMiwg
QW5keSBZYW4gd3JvdGU6Cj4+Pj4gCj4+Pj4gCj4+Pj4gCj4+Pj4gCj4+Pj4gSGkgS2VpdGjvvJoK
Pj4+PiAKPj4+PiAKPj4+PiAKPj4+PiAKPj4+PiAKPj4+PiAKPj4+PiAKPj4+PiAKPj4+PiAKPj4+
PiAKPj4+PiAKPj4+PiBBdCAyMDIzLTEyLTA2IDIyOjExOjMzLCAiS2VpdGggWmhhbyIgPGtlaXRo
LnpoYW9Ac3RhcmZpdmV0ZWNoLmNvbT4gd3JvdGU6Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+T24gMjAyMy8x
Mi82IDIwOjU2LCBNYXhpbWUgUmlwYXJkIHdyb3RlOgo+Pj4+Pj4gT24gV2VkLCBEZWMgMDYsIDIw
MjMgYXQgMDg6MDI6NTVQTSArMDgwMCwgS2VpdGggWmhhbyB3cm90ZToKPj4+Pj4+PiA+PiArc3Rh
dGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgc3RhcmZpdmVfaGRtaV9kdF9pZHNbXSA9IHsK
Pj4+Pj4+PiA+PiArCXsgLmNvbXBhdGlibGUgPSAic3RhcmZpdmUsamg3MTEwLWlubm8taGRtaSIs
fSwKPj4+Pj4+PiA+IAo+Pj4+Pj4+ID4gU28gaXQncyBpbm5vIGhkbWksIGp1c3QgbGlrZSBSb2Nr
Y2hpcCB0aGVuPwo+Pj4+Pj4+ID4gCj4+Pj4+Pj4gPiBUaGlzIHNob3VsZCBiZSBhIGNvbW1vbiBk
cml2ZXIuCj4+Pj4+Pj4KPj4+Pj4+PiBSb2NrY2hpcCBoYXMgYSBpbm5vIGhkbWkgSVAuIGFuZCBT
dGFyZml2ZSBoYXMgYSBpbm5vIGhkbWkgSVAuCj4+Pj4+Pj4gYnV0IHRoZSBoYXJld2F3cmUgZGlm
ZmVyZW5jZSBvZiB0aGVtIGlzIGJpZyAsIGl0IGlzIG5vdCBlYXN5IHRvIHVzZSB0aGUgY29tbW9u
IGRyaXZlcgo+Pj4+Pj4+IG1heWJlIGkgbmVlZCB0aGUgaW5ubyBoZG1pIHZlcnNpb24gaGVyZSB0
byBtYWtlIGEgZGlzdGluY3Rpb24KPj4+Pj4+IAo+Pj4+Pj4gSSBqdXN0IGhhZCBhIGxvb2sgYXQg
dGhlIHJvY2tjaGlwIGhlYWRlciBmaWxlOiBhbGwgdGhlIHJlZ2lzdGVycyBidXQgdGhlCj4+Pj4+
PiBTVEFSRklWRV8qIG9uZXMgYXJlIGlkZW50aWNhbC4KPj4+Pj4+IAo+Pj4+Pj4gVGhlcmUncyBu
byBuZWVkIHRvIGhhdmUgdHdvIGlkZW50aWNhbCBkcml2ZXJzIHRoZW4sIHBsZWFzZSB1c2UgdGhl
Cj4+Pj4+PiByb2NrY2hpcCBkcml2ZXIgaW5zdGVhZC4KPj4+Pj4+IAo+Pj4+Pj4gTWF4aW1lCj4+
Pj4+Cj4+Pj4+b2ssIGhhdmUgYSBzaW1wbGUgdGVzdCAsIGVkaWQgY2FuIGdldCAuIGkgd2lsbCBj
b250aW51ZSAKPj4+PiAKPj4+PiBNYXliZSB5b3UgY2FuIHRha2UgZHJpdmVycy9ncHUvZHJtL2Jy
aWRnZS9zeW5vcHN5cy9kdy1oZG1pIGFzIGEgcmVmZXJlbmNl77yMIHRoaXMKPj4+PiBpcyBhbHNv
IGEgaGRtaSBpcCB1c2VkIGJ5IHJvY2tjaGlwL21lc29uL3N1bnhpL2p6L2lteOOAggo+Pj4+IFdl
IGZpbmFsbHkgbWFrZSBpdCBzaGFyZSBvbmUgZHJpdmVy44CCCj4+Pj4+Cj4+PmhpIEFuZHk6Cj4+
Pgo+Pj5kd19oZG1pIHNlZW1zIGEgZ29vZCBjaG9pY2UgLCBpdCBjYW4gaGFuZGxlIGlubm8gaGRt
aSBoYXJkd2FyZSBieSBkZWZpbmUgaXRzIGR3X2hkbWlfcGxhdF9kYXRhLgo+Pj5kb2VzIGl0IG1l
YW5zIGkgY2FuIHdyaXRlIG93biBkcml2ZXIgZmlsZXMgc3VjaCBhcyhkd19oZG1pLXN0YXJmaXZl
LmMpIGJhc2VkIG9uIGR3X2hkbWkgaW5zdGVhZCBvZiBhZGQgcGxhdF9kYXRhIGluIGlubm9faGRt
aS5jCj4+Pgo+PiAKPj4gSSB0aGluayB0aGUgcHJvY2VzcyBtYXliZSBsaWtlIHRoaXPvvJoKPj4g
Cj4+IDEuIHNwbGl0IHRoZSBpbm5vX2hkbWkuYyB1bmRlciByb2NrY2hpcCB0byAgaW5ub19oZG1p
LmModGhlIGNvbW1vbiBwYXJ0KSwgaW5ub19oZG1pLXJvY2tjaGlwLmModGhlIHNvYyBzcGVjaWZp
YyBwYXJ0KQo+PiAyLiBtb3ZlIHRoZSBjb21tb24gcGFydCBpbm5vX2hkbWkuYyB0byBkcml2ZXJz
L2dwdS9kcm0vYnJpZGdlL2lubm9zaWxpY29uLwo+PiAzLiBhZGQgc3RhcnRmaXZlIHNwZWNpZmlj
IHBhcnQsIGlubm9faGRtaS1zdGFydGZpdmUuYwo+PiAKPj4gYmVsbG93IGdpdCBsb2cgZnJvbSBr
ZXJuZWwgdGhyZWUgc2hvdyBob3cgd2UgY29udmVydCAgZHdfaGRtaSB0byBhIGNvbW1vbiBkcml2
ZXI6IAo+PiAKPj4gCj4+IAo+PiAxMmI5ZjIwNGU4MDQgZHJtOiBicmlkZ2UvZHdfaGRtaTogYWRk
IHJvY2tjaGlwIHJrMzI4OCBzdXBwb3J0Cj4+IDc0YWY5ZTRkMDNiOCBkdC1iaW5kaW5nczogQWRk
IGRvY3VtZW50YXRpb24gZm9yIHJvY2tjaGlwIGR3IGhkbWkKPj4gZDM0NmMxNGVlZWE5IGRybTog
YnJpZGdlL2R3X2hkbWk6IGFkZCBmdW5jdGlvbiBkd19oZG1pX3BoeV9lbmFibGVfc3BhcmUKPj4g
YTRkM2I4YjA1MGQ1IGRybTogYnJpZGdlL2R3X2hkbWk6IGNsZWFyIGkyY21waHlfc3RhdDAgcmVn
IGluIGhkbWlfcGh5X3dhaXRfaTJjX2RvbmUKPj4gNjMyZDAzNWJhY2UyIGRybTogYnJpZGdlL2R3
X2hkbWk6IGFkZCBtb2RlX3ZhbGlkIHN1cHBvcnQKPj4gMGNkOWQxNDI4MzIyIGRybTogYnJpZGdl
L2R3X2hkbWk6IGFkZCBzdXBwb3J0IGZvciBtdWx0aS1ieXRlIHJlZ2lzdGVyIHdpZHRoIGFjY2Vz
cwo+PiBjZDE1MjM5Mzk2N2UgZHQtYmluZGluZ3M6IGFkZCBkb2N1bWVudCBmb3IgZHdfaGRtaQo+
PiBiMjFmNGI2NThkZjggZHJtOiBpbXg6IGlteC1oZG1pOiBtb3ZlIGlteC1oZG1pIHRvIGJyaWRn
ZS9kd19oZG1pCj4+IGFhYTc1N2EwOTJjMiBkcm06IGlteDogaW14LWhkbWk6IHNwbGl0IHBoeSBj
b25maWd1cmF0aW9uIHRvIHBsYXRmb3JtIGRyaXZlcgo+PiAzZDFiMzVhM2Q5ZjMgZHJtOiBpbXg6
IGlteC1oZG1pOiBjb252ZXJ0IGlteC1oZG1pIHRvIGRybV9icmlkZ2UgbW9kZQo+PiBjMmMzODQ4
ODUxYTcgZHJtOiBpbXg6IGlteC1oZG1pOiByZXR1cm4gZGVmZXIgaWYgY2FuJ3QgZ2V0IGRkYyBp
MmMgYWRhcHRlcgo+PiBiNTg3ODMzOTMzZGUgZHJtOiBpbXg6IGlteC1oZG1pOiBtYWtlIGNoZWNr
cGF0Y2ggaGFwcHkKPj4gCj5oaSBBbmR5Ogo+SSBnb3QgeW91IG1lYW5zLCAKPmFzIEkgZG9uJ3Qg
aGF2ZSBhIHJvY2tjaGlwIGJvYXJkIG9uIGhhbmQgLCB0byBzcGxpdCB0aGUgaW5ub19oZG1pLmMg
Y2FuIG5vdCBiZSB0ZXN0ZWQuCj4KPmhvdyBhZG91dCB0aGlzIGlkZWE6Cj4x44CBc3BsaXQgdGhl
IHN0YXJmaXZlX2hkbWkuYyB1bmRlciB2ZXJpc2lsaWNpb24gdG8gIGlubm9faGRtaS5jKHRoZSBj
b21tb24gcGFydCksIGlubm9faGRtaS1zdGFyZml2ZS5jKHRoZSBzb2Mgc3BlY2lmaWMgcGFydCkK
PjIuIG1vdmUgdGhlIGNvbW1vbiBwYXJ0IGlubm9faGRtaS5jIHRvIGRyaXZlcnMvZ3B1L2RybS9i
cmlkZ2UvaW5ub3NpbGljb24vCj4zLiBJbiB0aGUgZnV0dXJlLCBpbm5vIGhkbWkuYyB1bmRlciBy
b2NrY2hpcCB3aWxsIHJldXNlIHRoZSBwdWJsaWMgZHJpdmVyLgoKSSBhbSBub3Qgc3VyZSBpZiBk
cm0gbWFpbnRhaW5lcnMgYXJlIGhhcHB5IHdpdGggdGhpc+OAggoKVG8gYmUgaG9uZXN077yMIEkg
YWxzbyBkb24ndCBoYXZlIGEgIGkubXggYm9hcmQgd2hlbiBJIHN0YXJ0IGNvbnZlcnQgZHdfaGRt
aSB0byBhIGNvbW1vbiBkcml2ZXIsCnNvbWUgcmVzcGVjdGFibGUgcGVvcGxlIGZyb20gdGhlIGNv
bW11bml0eSBoZWxwIHRlc3QgYW5kIGdpdmUgbWUgbWFueSB2YWx1YWJsZSBhZHZpY2XvvIwgdGhp
cwppcyB0aGUgcG93ZXIgb2Ygb3BlbiBzb3VyY2XjgIIKCkkgZm91bmQgYSByazMwMzYgYmFzZWQg
a3lsaW4gYm9hcmQgdGhpcyB3ZWVr77yMYnV0IGl0IGNhbid0ICBib290IHlldO+8jEkgd2lsbCBn
byBvbiB0cnkgaWYKSSBjYW4gYm9vdCBpdCB0aGlzIHdlZWtlbmTjgIIgSSBjYW4gZG8gdGhlIHRl
c3Qgb24gcm9ja2NoaXAgc2lkZe+8jCBpZiBpIGNhbiBtYWtlIHRoaXMgYm9hcmQgd29ya+OAggoK
Pgo+PiAKPj4+VGhhbmtzIGZvciBwb2ludGluZyB0aGlzIG91dCEhIQo+Pj4KPj4+Pj4KPj4+Pj5f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+PmxpbnV4
LXJpc2N2IG1haWxpbmcgbGlzdAo+Pj4+PmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcK
Pj4+Pj5odHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJp
c2N2Cj4+Pgo+Pj5fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+Pj5saW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKPj4+bGludXgtcmlzY3ZAbGlzdHMuaW5mcmFk
ZWFkLm9yZwo+Pj5odHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJpc2N2Cg==

