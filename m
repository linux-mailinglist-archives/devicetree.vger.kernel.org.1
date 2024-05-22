Return-Path: <devicetree+bounces-68468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8E78CC61A
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 20:07:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D4F8F28612D
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 18:07:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5492E145B2D;
	Wed, 22 May 2024 18:07:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from unicorn.mansr.com (unicorn.mansr.com [81.2.72.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A81A28003B;
	Wed, 22 May 2024 18:07:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=81.2.72.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716401252; cv=none; b=ewek40k3BVYqrY2vJN0YjL7IBVd4fRMVQ+HD9VuCjdkKlrC/n3HsX5I+Ph5mqi1m90jVocOTqPBRfCujnXtxTtw+b4/t0Pvi/tN3BFOgTGfDg73gwzLMzcB4q6DgolQkciEMgXIWsSYVdhpuP33WXwq4t3BsjasAL/M4pWFde1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716401252; c=relaxed/simple;
	bh=G9hU1coQ9kOr4H/AHvpr+o+7rcG4xXWzGBk+WHv4sZ4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=tzHSp+K8i6fZOcO133CfU9L0s8zpcUH3PRd10mC8jy522B4vWqKm++HwhYTRrRJ33UPEAII91OtilXRxKO4m0/JTeMPaHPHs9OAPnUPwu/wYyuKbzrGiQ1TlyCJk4G8AKKElRmwvHVZj8jc7ag7q/Kv146OWXvCL5ue9NynmJgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mansr.com; spf=pass smtp.mailfrom=mansr.com; arc=none smtp.client-ip=81.2.72.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mansr.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mansr.com
Received: from raven.mansr.com (raven.mansr.com [IPv6:2001:8b0:ca0d:1::3])
	by unicorn.mansr.com (Postfix) with ESMTPS id BDBFD15364;
	Wed, 22 May 2024 19:07:21 +0100 (BST)
Received: by raven.mansr.com (Postfix, from userid 51770)
	id AF78A219FCA; Wed, 22 May 2024 19:07:21 +0100 (BST)
From: =?iso-8859-1?Q?M=E5ns_Rullg=E5rd?= <mans@mansr.com>
To: Frank Oltmanns <frank@oltmanns.dev>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec
 <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, Guido
 =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>, Purism Kernel Team
 <kernel@puri.sm>, Ondrej
 Jirman <megi@xff.cz>, Neil Armstrong <neil.armstrong@linaro.org>, Jessica
 Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David
 Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 stable@vger.kernel.org
Subject: Re: [PATCH v4 1/5] clk: sunxi-ng: common: Support minimum and
 maximum rate
In-Reply-To: <c4c1229c-1ed3-4b6e-a53a-e1ace2502ded@oltmanns.dev> (Frank
	Oltmanns's message of "Wed, 22 May 2024 08:33:01 +0200 (GMT+02:00)")
References: <20240310-pinephone-pll-fixes-v4-0-46fc80c83637@oltmanns.dev>
	<20240310-pinephone-pll-fixes-v4-1-46fc80c83637@oltmanns.dev>
	<yw1xo78z8ez0.fsf@mansr.com>
	<c4c1229c-1ed3-4b6e-a53a-e1ace2502ded@oltmanns.dev>
Date: Wed, 22 May 2024 19:07:21 +0100
Message-ID: <yw1x4jap90va.fsf@mansr.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/29.3 (gnu/linux)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: base64

RnJhbmsgT2x0bWFubnMgPGZyYW5rQG9sdG1hbm5zLmRldj4gd3JpdGVzOg0KDQo+IEhpIE3lbnMs
DQo+DQo+IDIxLjA1LjIwMjQgMTU6NDM6MTAgTeVucyBSdWxsZ+VyZCA8bWFuc0BtYW5zci5jb20+
Og0KPg0KPj4gRnJhbmsgT2x0bWFubnMgPGZyYW5rQG9sdG1hbm5zLmRldj4gd3JpdGVzOg0KPj4N
Cj4+PiBUaGUgQWxsd2lubmVyIFNvQydzIHR5cGljYWxseSBoYXZlIGFuIHVwcGVyIGFuZCBsb3dl
ciBsaW1pdCBmb3IgdGhlaXINCj4+PiBjbG9ja3MnIHJhdGVzLiBVcCB1bnRpbCBub3csIHN1cHBv
cnQgZm9yIHRoYXQgaGFzIGJlZW4gaW1wbGVtZW50ZWQNCj4+PiBzZXBhcmF0ZWx5IGZvciBlYWNo
IGNsb2NrIHR5cGUuDQo+Pj4NCj4+PiBJbXBsZW1lbnQgdGhhdCBmdW5jdGlvbmFsaXR5IGluIHRo
ZSBzdW54aS1uZydzIGNvbW1vbiBwYXJ0IG1ha2luZyB1c2Ugb2YNCj4+PiB0aGUgQ0NGIHJhdGUg
bGltaW5nIGNhcGFiaWxpdGllcywgc28gdGhhdCBpdCBpcyBhdmFpbGFibGUgZm9yIGFsbCBjbG9j
aw0KPj4+IHR5cGVzLg0KPj4+DQo+Pj4gU3VnZ2VzdGVkLWJ5OiBNYXhpbWUgUmlwYXJkIDxtcmlw
YXJkQGtlcm5lbC5vcmc+DQo+Pj4gU2lnbmVkLW9mZi1ieTogRnJhbmsgT2x0bWFubnMgPGZyYW5r
QG9sdG1hbm5zLmRldj4NCj4+PiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZw0KPj4+IC0tLQ0K
Pj4+IGRyaXZlcnMvY2xrL3N1bnhpLW5nL2NjdV9jb21tb24uYyB8IDE5ICsrKysrKysrKysrKysr
KysrKysNCj4+PiBkcml2ZXJzL2Nsay9zdW54aS1uZy9jY3VfY29tbW9uLmggfKAgMyArKysNCj4+
PiAyIGZpbGVzIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKykNCj4+DQo+PiBUaGlzIGp1c3QgbGFu
ZGVkIGluIDYuNiBzdGFibGUsIGFuZCBpdCBicm9rZSBIRE1JIG91dHB1dCBvbiBhbiBBMjAgYmFz
ZWQNCj4+IGRldmljZSwgdGhlIGNsb2NrcyBlbmRpbmcgdXAgYWxsIHdyb25nIGFzIHNlZW4gaW4g
dGhpcyBkaWZmIG9mDQo+PiAvc3lzL2tlcm5lbC9kZWJ1Zy9jbGsvY2xrX3N1bW1hcnk6DQo+Pg0K
Pj4gQEAgLTcwLDE2ICs3MSwxNCBAQA0KPj4goKCgoKCgoKCgoCBhcGIxLWkyYzCgoKCgoKCgoKCg
oKCgoKCgoCAwoKCgoKCgIDCgoKCgoKCgIDCgoKCgoKCgIDI0MDAwMDAwoKCgIDANCj4+DQo+PiCg
oKCgoKCgIHBsbC1ncHWgoKCgoKCgoKCgoKCgoKCgoKCgoKCgIDCgoKCgoKAgMKCgoKCgoKAgMKCg
oKCgoKAgMTIwMDAwMDAwMKAgMA0KPj4gLaCgoKCgoCBwbGwtdmlkZW8xoKCgoKCgoKCgoKCgoKCg
oKCgoCAzoKCgoKCgIDOgoKCgoKCgIDGgoKCgoKCgIDE1OTAwMDAwMKCgIDANCj4+ICugoKCgoKAg
cGxsLXZpZGVvMaCgoKCgoKCgoKCgoKCgoKCgoKAgMqCgoKCgoCAyoKCgoKCgoCAxoKCgoKCgoCAx
NTkwMDAwMDCgoCAwDQo+PiCgoKCgoKCgoKCgIGhkbWmgoKCgoKCgoKCgoKCgoKCgoKCgoKCgIDGg
oKCgoKAgMaCgoKCgoKAgMKCgoKCgoKAgMzk3NTAwMDCgoKAgMA0KPj4NCj4+IKCgoKCgoKCgoKAg
dGNvbjAtY2gxLXNjbGsyoKCgoKCgoKCgoKAgMaCgoKCgoCAxoKCgoKCgoCAxoKCgoKCgoCAzOTc1
MDAwMKCgoCAwDQo+PiCgoKCgoKCgoKCgoKCgIHRjb24wLWNoMS1zY2xrMaCgoKCgoKCgIDGgoKCg
oKAgMaCgoKCgoKAgMaCgoKCgoKAgMzk3NTAwMDCgoKAgMA0KPj4NCj4+IC2goKCgoKCgoKAgcGxs
LXZpZGVvMS0yeKCgoKCgoKCgoKCgoKAgMaCgoKCgoCAxoKCgoKCgoCAwoKCgoKCgoCAzMTgwMDAw
MDCgoCAwDQo+PiAroKCgoKCgoKCgIHBsbC12aWRlbzEtMnigoKCgoKCgoKCgoKCgIDCgoKCgoKAg
MKCgoKCgoKAgMKCgoKCgoKAgMzE4MDAwMDAwoKAgMA0KPj4NCj4+IC2goKCgoKCgoKCgoKAgaGRt
aS10bWRzoKCgoKCgoKCgoKCgoKAgMqCgoKCgoCAyoKCgoKCgoCAwoKCgoKCgoCAzOTc1MDAwMKCg
oCAwDQo+PiAtoKCgoKCgoKCgoKCgoKCgIGhkbWktZGRjoKCgoKCgoKCgoKCgIDGgoKCgoKAgMaCg
oKCgoKAgMKCgoKCgoKAgMTk4NzUwMKCgoKAgMA0KPj4goKCgoKCgoCBwbGwtcGVyaXBoLWJhc2Wg
oKCgoKCgoKCgoKCgoCAyoKCgoKCgIDKgoKCgoKCgIDCgoKCgoKCgIDEyMDAwMDAwMDCgIDANCj4+
IKCgoKCgoKCgoKAgbWJ1c6CgoKCgoKCgoKCgoKCgoKCgoKCgoKAgMaCgoKCgoCAxoKCgoKCgoCAw
oKCgoKCgoCAzMDAwMDAwMDCgoCAwDQo+PiCgoKCgoKCgoKCgIHBsbC1wZXJpcGgtc2F0YaCgoKCg
oKCgoKCgIDCgoKCgoKAgMKCgoKCgoKAgMKCgoKCgoKAgMTAwMDAwMDAwoKAgMA0KPj4gQEAgLTE5
OSw3ICsxOTgsNyBAQA0KPj4NCj4+IKCgoKCgoKCgoKAgYWNloKCgoKCgoKCgoKCgoKCgoKCgoKCg
oKAgMKCgoKCgoCAwoKCgoKCgoCAwoKCgoKCgoCAzODQwMDAwMDCgoCAwDQo+PiCgoKCgoKCgoKCg
IHZloKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgIDCgoKCgoKAgMKCgoKCgoKAgMKCgoKCgoKAgMzg0
MDAwMDAwoKAgMA0KPj4gLaCgoKCgoCBwbGwtdmlkZW8woKCgoKCgoKCgoKCgoKCgoKCgoCA0oKCg
oKCgIDSgoKCgoKCgIDKgoKCgoKCgIDI5NzAwMDAwMKCgIDANCj4+ICugoKCgoKAgcGxsLXZpZGVv
MKCgoKCgoKCgoKCgoKCgoKCgoKAgNaCgoKCgoCA1oKCgoKCgoCAyoKCgoKCgoCAyOTcwMDAwMDCg
oCAwDQo+PiCgoKCgoKCgoKCgIGhkbWkxoKCgoKCgoKCgoKCgoKCgoKCgoKCgIDCgoKCgoKAgMKCg
oKCgoKAgMKCgoKCgoKAgMjk3MDAwMDAwoKAgMA0KPj4goKCgoKCgoKCgoCB0Y29uMS1jaDEtc2Ns
azKgoKCgoKCgoKCgoCAwoKCgoKCgIDCgoKCgoKCgIDCgoKCgoKCgIDI5NzAwMDAwMKCgIDANCj4+
IKCgoKCgoKCgoKCgoKAgdGNvbjEtY2gxLXNjbGsxoKCgoKCgoKAgMKCgoKCgoCAwoKCgoKCgoCAw
oKCgoKCgoCAyOTcwMDAwMDCgoCAwDQo+PiBAQCAtMjIyLDggKzIyMSwxMCBAQA0KPj4NCj4+IKCg
oKCgoKCgoKAgZGUtYmUwoKCgoKCgoKCgoKCgoKCgoKCgoKAgMaCgoKCgoCAxoKCgoKCgoCAxoKCg
oKCgoCAyOTcwMDAwMDCgoCAwDQo+Pg0KPj4gLaCgoKCgoKCgoCBwbGwtdmlkZW8wLTJ4oKCgoKCg
oKCgoKCgoCAwoKCgoKCgIDCgoKCgoKCgIDCgoKCgoKCgIDU5NDAwMDAwMKCgIDANCj4+ICugoKCg
oKCgoKAgcGxsLXZpZGVvMC0yeKCgoKCgoKCgoKCgoKAgMaCgoKCgoCAxoKCgoKCgoCAwoKCgoKCg
oCA1OTQwMDAwMDCgoCAwDQo+Pg0KPj4gK6CgoKCgoKCgoKCgoCBoZG1pLXRtZHOgoKCgoKCgoKCg
oKCgoCAyoKCgoKCgIDKgoKCgoKCgIDCgoKCgoKCgIDU5NDAwMDAwMKCgIDANCj4+ICugoKCgoKCg
oKCgoKCgoKAgaGRtaS1kZGOgoKCgoKCgoKCgoKAgMaCgoKCgoCAxoKCgoKCgoCAwoKCgoKCgoCAy
OTcwMDAwMKCgoCAwDQo+PiCgoKCgoKCgIHBsbC1hdWRpby1iYXNloKCgoKCgoKCgoKCgoKCgIDCg
oKCgoKAgMKCgoKCgoKAgMKCgoKCgoKAgMTUwMDAwMKCgoKAgMA0KPj4goKCgoKCgoKCgoCBwbGwt
YXVkaW8tOHigoKCgoKCgoKCgoKCgoCAwoKCgoKCgIDCgoKCgoKCgIDCgoKCgoKCgIDMwMDAwMDCg
oKCgIDANCj4+IKCgoKCgoKCgoKCgoKAgaTJzMqCgoKCgoKCgoKCgoKCgoKCgoKAgMKCgoKCgoCAw
oKCgoKCgoCAwoKCgoKCgoCAzMDAwMDAwoKCgoCAwDQo+Pg0KPj4gUmV2ZXJ0aW5nIHRoaXMgY29t
bWl0IG1ha2VzIGl0IHdvcmsgYWdhaW4uDQo+DQo+IFRoYW5rIHlvdSBmb3IgeW91ciBkZXRhaWxl
ZCByZXBvcnQhDQo+DQo+IEkndmUgaGFkIGEgZmlyc3QgbG9vayBhdCBoZG1pLXRtZHMgYW5kIGhk
bWktZGRjLCBhbmQgbmVpdGhlciBzZWVtcyB0bw0KPiBiZSBjYWxsaW5nIGNjdV9pc19iZXR0ZXJf
cmF0ZSgpIGluIHRoZWlyIGRldGVybWluZV9yYXRlKCkNCj4gZnVuY3Rpb25zLiBUaGVpciBwYXJl
bnRzIGhhdmUgdGhlIGV4YWN0IHNhbWUgcmF0ZXMgaW4geW91ciBkaWZmLCBzbywNCj4gbXkgY3Vy
cmVudCB3b3JraW5nIGFzc3VtcHRpb24gaXMgdGhhdCB0aGV5IGNhbid0IGJlIHRoZSBjYXVzZSBl
aXRoZXIuDQo+DQo+IEknbGwgaGF2ZSBhIG1vcmUgZGV0YWlsZWQgbG9vayBvdmVyIHRoZSB3ZWVr
ZW5kLiBVbnRpbCB0aGVuLCBpZiBhbnlvbmUNCj4gaGFzIHNvbWUgaWRlYXMgd2hlcmUgSSBzaG91
bGQgaGF2ZSBhIGxvb2sgbmV4dCwgcGxlYXNlIHNoYXJlIHlvdXINCj4gdGhvdWdodHMuDQoNCklu
IGNhc2UgaXQncyByZWxldmFudCwgdGhpcyBzeXN0ZW0gZG9lc24ndCB1c2UgdGhlIEhETUkgRERD
LCB0aGUNCnBoeXNpY2FsIEREQyBwaW5zIGJlaW5nIGNvbm5lY3RlZCB0byBhIGRpZmZlcmVudCBJ
MkMgYWRhcHRlciBmb3INCnZhcmlvdXMgcmVhc29ucy4NCg0KRnJvbSB0aGUgY2xrX3N1bW1hcnkg
ZGlmZiwgSSBzZWUgYSBmZXcgdGhpbmdzOg0KDQoxLiBoZG1pLXRtZHMgaGFzIGNoYW5nZWQgcGFy
ZW50IGZyb20gcGxsLXZpZGVvMS0yeCB0byBwbGwtdmlkZW8wLTJ4Lg0KMi4gVGhlIHJhdGlvIG9m
IGhkbWktdG1kcyB0byBpdHMgcGFyZW50IGhhcyBjaGFuZ2VkIGZyb20gMS84IHRvIDEuDQozLiBU
aGUgcmVzdWx0aW5nIHJhdGUgYmVhcnMgbm8gcmVsYXRpb24gdG8gdGhlIHBpeGVsIGNsb2NrIGZy
b20gRURJRC4NCg0KSSB0cmllZCBrZXJuZWwgNi45LjEgYXMgd2VsbCwgYW5kIHRoYXQgZG9lc24n
dCB3b3JrIGVpdGhlci4gIEknbGwga2VlcA0KZGlnZ2luZyBhbmQgdHJ5IHRvIG5hcnJvdyBpdCBk
b3duLg0KDQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3N1bnhpLW5nL2NjdV9jb21tb24u
YyBiL2RyaXZlcnMvY2xrL3N1bnhpLW5nL2NjdV9jb21tb24uYw0KPj4+IGluZGV4IDhiYWJjZTU1
MzAyZi4uYWMwMDkxYjRjZTI0IDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvY2xrL3N1bnhpLW5n
L2NjdV9jb21tb24uYw0KPj4+ICsrKyBiL2RyaXZlcnMvY2xrL3N1bnhpLW5nL2NjdV9jb21tb24u
Yw0KPj4+IEBAIC00NCw2ICs0NCwxNiBAQCBib29sIGNjdV9pc19iZXR0ZXJfcmF0ZShzdHJ1Y3Qg
Y2N1X2NvbW1vbiAqY29tbW9uLA0KPj4+IKCgoKCgoKCgoKCgIHVuc2lnbmVkIGxvbmcgY3VycmVu
dF9yYXRlLA0KPj4+IKCgoKCgoKCgoKCgIHVuc2lnbmVkIGxvbmcgYmVzdF9yYXRlKQ0KPj4+IHsN
Cj4+PiAroKAgdW5zaWduZWQgbG9uZyBtaW5fcmF0ZSwgbWF4X3JhdGU7DQo+Pj4gKw0KPj4+ICug
oCBjbGtfaHdfZ2V0X3JhdGVfcmFuZ2UoJmNvbW1vbi0+aHcsICZtaW5fcmF0ZSwgJm1heF9yYXRl
KTsNCj4+PiArDQo+Pj4gK6CgIGlmIChjdXJyZW50X3JhdGUgPiBtYXhfcmF0ZSkNCj4+PiAroKCg
oKCgIHJldHVybiBmYWxzZTsNCj4+PiArDQo+Pj4gK6CgIGlmIChjdXJyZW50X3JhdGUgPCBtaW5f
cmF0ZSkNCj4+PiAroKCgoKCgIHJldHVybiBmYWxzZTsNCj4+PiArDQo+Pj4goKCgIGlmIChjb21t
b24tPmZlYXR1cmVzICYgQ0NVX0ZFQVRVUkVfQ0xPU0VTVF9SQVRFKQ0KPj4+IKCgoKCgoKAgcmV0
dXJuIGFicyhjdXJyZW50X3JhdGUgLSB0YXJnZXRfcmF0ZSkgPCBhYnMoYmVzdF9yYXRlIC0gdGFy
Z2V0X3JhdGUpOw0KPj4+DQo+Pj4gQEAgLTEyMiw2ICsxMzIsNyBAQCBzdGF0aWMgaW50IHN1bnhp
X2NjdV9wcm9iZShzdHJ1Y3Qgc3VueGlfY2N1ICpjY3UsIHN0cnVjdCBkZXZpY2UgKmRldiwNCj4+
Pg0KPj4+IKCgoCBmb3IgKGkgPSAwOyBpIDwgZGVzYy0+aHdfY2xrcy0+bnVtIDsgaSsrKSB7DQo+
Pj4goKCgoKCgoCBzdHJ1Y3QgY2xrX2h3ICpodyA9IGRlc2MtPmh3X2Nsa3MtPmh3c1tpXTsNCj4+
PiAroKCgoKCgIHN0cnVjdCBjY3VfY29tbW9uICpjb21tb24gPSBod190b19jY3VfY29tbW9uKGh3
KTsNCj4+PiCgoKCgoKCgIGNvbnN0IGNoYXIgKm5hbWU7DQo+Pj4NCj4+PiCgoKCgoKCgIGlmICgh
aHcpDQo+Pj4gQEAgLTEzNiw2ICsxNDcsMTQgQEAgc3RhdGljIGludCBzdW54aV9jY3VfcHJvYmUo
c3RydWN0IHN1bnhpX2NjdSAqY2N1LCBzdHJ1Y3QgZGV2aWNlICpkZXYsDQo+Pj4goKCgoKCgoKCg
oKAgcHJfZXJyKCJDb3VsZG4ndCByZWdpc3RlciBjbG9jayAlZCAtICVzXG4iLCBpLCBuYW1lKTsN
Cj4+PiCgoKCgoKCgoKCgoCBnb3RvIGVycl9jbGtfdW5yZWc7DQo+Pj4goKCgoKCgoCB9DQo+Pj4g
Kw0KPj4+ICugoKCgoKAgaWYgKGNvbW1vbi0+bWF4X3JhdGUpDQo+Pj4gK6CgoKCgoKCgoKAgY2xr
X2h3X3NldF9yYXRlX3JhbmdlKGh3LCBjb21tb24tPm1pbl9yYXRlLA0KPj4+ICugoKCgoKCgoKCg
oKCgoKCgoKCgoKCgoKAgY29tbW9uLT5tYXhfcmF0ZSk7DQo+Pj4gK6CgoKCgoCBlbHNlDQo+Pj4g
K6CgoKCgoKCgoKAgV0FSTihjb21tb24tPm1pbl9yYXRlLA0KPj4+ICugoKCgoKCgoKCgoKCgoKAg
Ik5vIG1heF9yYXRlLCBpZ25vcmluZyBtaW5fcmF0ZSBvZiBjbG9jayAlZCAtICVzXG4iLA0KPj4+
ICugoKCgoKCgoKCgoKCgoKAgaSwgbmFtZSk7DQo+Pj4goKCgIH0NCj4+Pg0KPj4+IKCgoCByZXQg
PSBvZl9jbGtfYWRkX2h3X3Byb3ZpZGVyKG5vZGUsIG9mX2Nsa19od19vbmVjZWxsX2dldCwNCj4+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvc3VueGktbmcvY2N1X2NvbW1vbi5oIGIvZHJpdmVy
cy9jbGsvc3VueGktbmcvY2N1X2NvbW1vbi5oDQo+Pj4gaW5kZXggOTQyYTcyYzA5NDM3Li4zMjk3
MzRmOGNmNDIgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9jbGsvc3VueGktbmcvY2N1X2NvbW1v
bi5oDQo+Pj4gKysrIGIvZHJpdmVycy9jbGsvc3VueGktbmcvY2N1X2NvbW1vbi5oDQo+Pj4gQEAg
LTMxLDYgKzMxLDkgQEAgc3RydWN0IGNjdV9jb21tb24gew0KPj4+IKCgoCB1MTagoKCgIGxvY2tf
cmVnOw0KPj4+IKCgoCB1MzKgoKCgIHByZWRpdjsNCj4+Pg0KPj4+ICugoCB1bnNpZ25lZCBsb25n
oKAgbWluX3JhdGU7DQo+Pj4gK6CgIHVuc2lnbmVkIGxvbmegoCBtYXhfcmF0ZTsNCj4+PiArDQo+
Pj4goKCgIHVuc2lnbmVkIGxvbmegoCBmZWF0dXJlczsNCj4+PiCgoKAgc3BpbmxvY2tfdKAgKmxv
Y2s7DQo+Pj4goKCgIHN0cnVjdCBjbGtfaHegoCBodzsNCj4+Pg0KPj4+IC0tDQo+Pj4NCj4+PiAy
LjQ0LjANCj4+Pg0KPj4NCj4+IC0tDQo+PiBN5W5zIFJ1bGxn5XJkDQo+DQoNCi0tIA0KTeVucyBS
dWxsZ+VyZA0K

