Return-Path: <devicetree+bounces-2460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FAC47AAE12
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 11:32:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id B2A681F2275F
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 09:32:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A7941DDEA;
	Fri, 22 Sep 2023 09:32:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A97B31DDC6
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 09:32:38 +0000 (UTC)
Received: from sender3-op-o17.zoho.com (sender3-op-o17.zoho.com [136.143.184.17])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CA63E62
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 02:32:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695375139; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=NQdWGc4yfkTDyItL1Emxi9+Svdo9MBvX8sCH4i8DLWpkZ5hbh4smpC9NsSBDNiKxz+fhDYwyt7DeIuYXStFThZ1Xx0ayGbinOvVC19p2SsZi3T82rbp6FfDhGHZjn7JGzGy+WnrGRkF3Lj8a+ADP7Yl9vXJIhbyt/xjh4JDnTtI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1695375139; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=/qnuquCbczbWA2AQ8YTyNSrAE9tl0l4dT44bp7Af8+c=; 
	b=hXbQCYmzx3NBlCpxcvainC4buEyT8ElHrVa1Do0a2/eW5ty7lYr22Ur6yPYqGiS5awL4zYedpw2LXOP6nPcApfBIOK4osgKFp7NQ2MF+UlYA1oqMm/gr6UVOWMwM18SfvFiIjvpmucC5PiUYP+lI4DdAGyGptzHGn8sQUyzbKE4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1695375139;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=/qnuquCbczbWA2AQ8YTyNSrAE9tl0l4dT44bp7Af8+c=;
	b=Mcs5V+PJX7wiTpao8ZdZBmFNitsVL3mCKI5QDevLcWsZ7E4Y4PIz8NvM4Om/Y3d7
	myuXC2nDurAoppJMjf/Sq2NbYcDe61r1WQyObDB4MCXc5Uop3eeyv7bNi9ZNMMQXhV9
	8pKgtHKTaX/t4VC7qYq4QPSvlF7TZ0fM27SGIfZi9fN9AzguwAXCXxwlvr6DPoU1tRz
	v2kBAkPmQquFPEJUf3iIbfF8dHrLWFgjPl6XeJUIW684/+eEO+L44cOIgjh/JzooIpp
	Jftkl+7Ofcn0emVDGkb4Q30c3rwb4S3JUKVp7yENCaOakfigJlvTI2/3nqha5ytUWu5
	OxlxViMi0w==
Received: from edelgard.fodlan.icenowy.me (120.85.96.110 [120.85.96.110]) by mx.zohomail.com
	with SMTPS id 1695375138598379.71818442863184; Fri, 22 Sep 2023 02:32:18 -0700 (PDT)
Message-ID: <6bfbf4dbb04e40202ad9e7d242954dfc43a491db.camel@icenowy.me>
Subject: Re: [PATCH V5 4/4] ARM: dts: sunxi: add support for Anbernic RG-Nano
From: Icenowy Zheng <uwu@icenowy.me>
To: Andre Przywara <andre.przywara@arm.com>, Chris Morgan
	 <macroalpha82@gmail.com>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 mripard@kernel.org,  samuel@sholland.org, jernej.skrabec@gmail.com,
 wens@csie.org, conor+dt@kernel.org,  krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Date: Fri, 22 Sep 2023 17:32:13 +0800
In-Reply-To: <20230922103118.7b654d14@donnerap.manchester.arm.com>
References: <20230921135136.97491-1-macroalpha82@gmail.com>
	 <20230921135136.97491-5-macroalpha82@gmail.com>
	 <20230922103118.7b654d14@donnerap.manchester.arm.com>
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
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

5ZyoIDIwMjMtMDktMjLmmJ/mnJ/kupTnmoQgMTA6MzEgKzAxMDDvvIxBbmRyZSBQcnp5d2FyYeWG
memBk++8mgo+IE9uIFRodSwgMjEgU2VwIDIwMjMgMDg6NTE6MzYgLTA1MDAKPiBDaHJpcyBNb3Jn
YW4gPG1hY3JvYWxwaGE4MkBnbWFpbC5jb20+IHdyb3RlOgo+IAo+IEhpLAo+IAo+ID4gRnJvbTog
Q2hyaXMgTW9yZ2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPiA+IAo+ID4gVGhlIEFuYmVy
bmljIFJHLU5hbm8gaXMgYSBzbWFsbCBwb3J0YWJsZSBnYW1lIGRldmljZSBiYXNlZCBvbiB0aGUK
PiA+IEFsbHdpbm5lciBWM3MgU29DLiBJdCBoYXMgR1BJTyBidXR0b25zIG9uIHRoZSBmYWNlIGFu
ZCBzaWRlIGZvcgo+ID4gaW5wdXQsIGEgc2luZ2xlIG1vbm8gc3BlYWtlciwgYSAyNDB4MjQwIFNQ
SSBjb250cm9sbGVkIGRpc3BsYXksIGEKPiA+IFVTQi1DCj4gPiBPVEcgcG9ydCwgYW4gU0QgY2Fy
ZCBzbG90IGZvciBib290aW5nLCBhbmQgNjRNQiBvZiBSQU0gaW5jbHVkZWQgaW4KPiA+IHRoZQo+
ID4gU29DLiBUaGVyZSBkb2VzIG5vdCBhcHBlYXIgdG8gYmUgYSBjcnlzdGFsIGZlZWRpbmcgdGhl
IGludGVybmFsIFJUQwo+ID4gc28KPiA+IGl0IGRvZXMgbm90IGtlZXAgcHJvcGVyIHRpbWUgKGZv
ciBtZSBpdCByYW4gOCBob3VycyBzbG93IGluIGEgMjQKPiA+IGhvdXIKPiA+IHBlcmlvZCkuIEV4
dGVybmFsIFJUQyB3b3JrcyBqdXN0IGZpbmUuCj4gCj4gVGhhdCB3aG9sZSBzaXR1YXRpb24gaXMg
c3RpbGwgYSBiaXQgb2RkOiB3aHkgaXMgdGhlcmUgYW4gZXh0ZXJuYWwgUlRDCj4gdG8KPiBiZWdp
biB3aXRoPyBBbmQgZGlkIHRoZXkgcmVhbGx5IHNhdmUgb24gdGhlIDMyS0h6IG9zY2lsbGF0b3Is
IGluCj4gZmF2b3VyIG9mCj4gYXR0YWNoaW5nIGEgd2hvbGUgSTJDIFJUQyBjaGlwPyBNYXliZSBz
b21ldGhpbmcgaXMgb2ZmIHdpdGggdGhlIFYzCj4gUlRDIGluCj4gZ2VuZXJhbCwgYW5kIGp1c3Qg
bm9ib2R5IG5vdGljZWQgb3IgY2FyZWQgc28gZmFyPwoKSSB0aGluayB0aGUgbGVha2FnZSBpcyBh
IGxpdHRsZSBoaWdoLCBub3Qgc28gc3VpdGFibGUgZm9yIGxvbmctdGltZQp3b3JrLgoKPiBBbnl3
YXlzLCBJIHRoaW5rIHRoZSBEVCBpcyBmaW5lIG5vdywgSSBzZWUgYWxsIHRoZSBjb21tZW50cwo+
IGFkZHJlc3NlZCwgYW5kCj4gZHRjIGFuZCBkdC12YWxpZGF0ZSBhcmUgaGFwcHk6Cj4gCj4gUmV2
aWV3ZWQtYnk6IEFuZHJlIFByenl3YXJhIDxhbmRyZS5wcnp5d2FyYUBhcm0uY29tPgo+IAo+IENo
ZWVycywKPiBBbmRyZQo+IAo+ID4gV29ya2luZy9UZXN0ZWQ6Cj4gPiAtIFNETU1DCj4gPiAtIFVB
UlQgKGZvciBkZWJ1Z2dpbmcpCj4gPiAtIEJ1dHRvbnMKPiA+IC0gQ2hhcmdpbmcvYmF0dGVyeS9Q
TUlDCj4gPiAtIFNwZWFrZXIKPiA+IC0gUlRDIChleHRlcm5hbCBSVEMpCj4gPiAtIFVTQgo+ID4g
LSBEaXNwbGF5Cj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIE1vcmdhbiA8bWFjcm9tb3Jn
YW5AaG90bWFpbC5jb20+Cj4gPiAtLS0KPiA+IMKgYXJjaC9hcm0vYm9vdC9kdHMvYWxsd2lubmVy
L01ha2VmaWxlwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDEgKwo+ID4gwqAuLi4vYWxsd2lubmVy
L3N1bjhpLXYzcy1hbmJlcm5pYy1yZy1uYW5vLmR0c8KgIHwgMjg0Cj4gPiArKysrKysrKysrKysr
KysrKysKPiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCAyODUgaW5zZXJ0aW9ucygrKQo+ID4gwqBjcmVh
dGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9vdC9kdHMvYWxsd2lubmVyL3N1bjhpLXYzcy1hbmJl
cm5pYy0KPiA+IHJnLW5hbm8uZHRzCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290
L2R0cy9hbGx3aW5uZXIvTWFrZWZpbGUKPiA+IGIvYXJjaC9hcm0vYm9vdC9kdHMvYWxsd2lubmVy
L01ha2VmaWxlCj4gPiBpbmRleCBlZWJiNWEwYzg3M2EuLjJkMjZjMzM5N2YxNCAxMDA2NDQKPiA+
IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2FsbHdpbm5lci9NYWtlZmlsZQo+ID4gKysrIGIvYXJj
aC9hcm0vYm9vdC9kdHMvYWxsd2lubmVyL01ha2VmaWxlCj4gPiBAQCAtMjU2LDYgKzI1Niw3IEBA
IGR0Yi0kKENPTkZJR19NQUNIX1NVTjhJKSArPSBcCj4gPiDCoMKgwqDCoMKgwqDCoMKgc3VuOGkt
dDExM3MtbWFuZ29waS1tcS1yLXQxMTMuZHRiIFwKPiA+IMKgwqDCoMKgwqDCoMKgwqBzdW44aS10
My1jcWEzdC1idjMuZHRiIFwKPiA+IMKgwqDCoMKgwqDCoMKgwqBzdW44aS12My1zbDYzMS1pbXgx
NzkuZHRiIFwKPiA+ICvCoMKgwqDCoMKgwqDCoHN1bjhpLXYzcy1hbmJlcm5pYy1yZy1uYW5vLmR0
YiBcCj4gPiDCoMKgwqDCoMKgwqDCoMKgc3VuOGktdjNzLWxpY2hlZXBpLXplcm8uZHRiIFwKPiA+
IMKgwqDCoMKgwqDCoMKgwqBzdW44aS12M3MtbGljaGVlcGktemVyby1kb2NrLmR0YiBcCj4gPiDC
oMKgwqDCoMKgwqDCoMKgc3VuOGktdjQwLWJhbmFuYXBpLW0yLWJlcnJ5LmR0Ygo+ID4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2FsbHdpbm5lci9zdW44aS12M3MtYW5iZXJuaWMtcmct
Cj4gPiBuYW5vLmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2FsbHdpbm5lci9zdW44aS12M3MtYW5i
ZXJuaWMtcmctCj4gPiBuYW5vLmR0cwo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4
IDAwMDAwMDAwMDAwMC4uMWE0NDI5ZGM1N2IxCj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9h
cmNoL2FybS9ib290L2R0cy9hbGx3aW5uZXIvc3VuOGktdjNzLWFuYmVybmljLXJnLW5hbm8uZHRz
Cj4gPiBAQCAtMCwwICsxLDI4NCBAQAo+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAo
R1BMLTIuMCsgT1IgTUlUKQo+ID4gKwo+ID4gKy9kdHMtdjEvOwo+ID4gKyNpbmNsdWRlIDxkdC1i
aW5kaW5ncy9pbnB1dC9saW51eC1ldmVudC1jb2Rlcy5oPgo+ID4gKyNpbmNsdWRlICJzdW44aS12
M3MuZHRzaSIKPiA+ICsjaW5jbHVkZSAic3VueGktY29tbW9uLXJlZ3VsYXRvcnMuZHRzaSIKPiA+
ICsKPiA+ICsvIHsKPiA+ICvCoMKgwqDCoMKgwqDCoG1vZGVsID0gIkFuYmVybmljIFJHIE5hbm8i
Owo+ID4gK8KgwqDCoMKgwqDCoMKgY29tcGF0aWJsZSA9ICJhbmJlcm5pYyxyZy1uYW5vIiwgImFs
bHdpbm5lcixzdW44aS12M3MiOwo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgYWxpYXNlcyB7Cj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcnRjMCA9ICZwY2Y4NTYzOwo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJ0YzEgPSAmcnRjOwo+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHNlcmlhbDAgPSAmdWFydDA7Cj4gPiArwqDCoMKgwqDCoMKgwqB9
Owo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgYmFja2xpZ2h0OiBiYWNrbGlnaHQgewo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNvbXBhdGlibGUgPSAicHdtLWJhY2tsaWdodCI7
Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYnJpZ2h0bmVzcy1sZXZlbHMgPSA8
MCAxIDIgMyA4IDE0IDIxIDMyIDQ2IDYwIDgwCj4gPiAxMDA+Owo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGRlZmF1bHQtYnJpZ2h0bmVzcy1sZXZlbCA9IDwxMT47Cj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcG93ZXItc3VwcGx5ID0gPCZyZWdfdmNjNXYwPjsK
PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwd21zID0gPCZwd20gMCA0MDAwMCAx
PjsKPiA+ICvCoMKgwqDCoMKgwqDCoH07Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqBjaG9zZW4g
ewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0ZG91dC1wYXRoID0gInNlcmlh
bDA6MTE1MjAwbjgiOwo+ID4gK8KgwqDCoMKgwqDCoMKgfTsKPiA+ICsKPiA+ICvCoMKgwqDCoMKg
wqDCoGdwaW9fa2V5czogZ3Bpby1rZXlzIHsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBjb21wYXRpYmxlID0gImdwaW8ta2V5cyI7Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgYnV0dG9uLWEgewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBncGlvcyA9IDwmZ3Bpb19leHBhbmRlciAxMiAoR1BJT19BQ1RJ
VkVfTE9XCj4gPiB8IEdQSU9fUFVMTF9VUCk+Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsYWJlbCA9ICJCVE4tQSI7Cj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxpbnV4LGNvZGUgPSA8QlROX0VBU1Q+
Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH07Cj4gPiArCj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYnV0dG9uLWIgewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBncGlvcyA9IDwmZ3Bpb19leHBhbmRlciAxNCAo
R1BJT19BQ1RJVkVfTE9XCj4gPiB8IEdQSU9fUFVMTF9VUCk+Owo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsYWJlbCA9ICJCVE4tQiI7Cj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxpbnV4LGNvZGUgPSA8
QlROX1NPVVRIPjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Owo+ID4gKwo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJ1dHRvbi1kb3duIHsKPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZ3Bpb3MgPSA8JmdwaW9f
ZXhwYW5kZXIgMSAoR1BJT19BQ1RJVkVfTE9XCj4gPiB8IEdQSU9fUFVMTF9VUCk+Owo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsYWJlbCA9ICJEUEFE
LURPV04iOwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBsaW51eCxjb2RlID0gPEJUTl9EUEFEX0RPV04+Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoH07Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYnV0
dG9uLWxlZnQgewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBncGlvcyA9IDwmZ3Bpb19leHBhbmRlciA0IChHUElPX0FDVElWRV9MT1cKPiA+IHwgR1BJ
T19QVUxMX1VQKT47Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGxhYmVsID0gIkRQQUQtTEVGVCI7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxpbnV4LGNvZGUgPSA8QlROX0RQQURfTEVGVD47Cj4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfTsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBidXR0b24tcmlnaHQgewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBncGlvcyA9IDwmZ3Bpb19leHBhbmRlciAwIChHUElP
X0FDVElWRV9MT1cKPiA+IHwgR1BJT19QVUxMX1VQKT47Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxhYmVsID0gIkRQQUQtUklHSFQiOwo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsaW51eCxjb2RlID0g
PEJUTl9EUEFEX1JJR0hUPjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Owo+
ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJ1dHRvbi1zZSB7Cj4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdwaW9zID0gPCZn
cGlvX2V4cGFuZGVyIDcgKEdQSU9fQUNUSVZFX0xPVwo+ID4gfCBHUElPX1BVTExfVVApPjsKPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbGFiZWwgPSAi
QlROLVNFTEVDVCI7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGxpbnV4LGNvZGUgPSA8QlROX1NFTEVDVD47Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgfTsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBi
dXR0b24tc3Qgewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBncGlvcyA9IDwmZ3Bpb19leHBhbmRlciA2IChHUElPX0FDVElWRV9MT1cKPiA+IHwgR1BJ
T19QVUxMX1VQKT47Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGxhYmVsID0gIkJUTi1TVEFSVCI7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxpbnV4LGNvZGUgPSA8QlROX1NUQVJUPjsKPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Owo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGJ1dHRvbi10bCB7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGdwaW9zID0gPCZncGlvX2V4cGFuZGVyIDIgKEdQSU9fQUNUSVZF
X0xPVwo+ID4gfCBHUElPX1BVTExfVVApPjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgbGFiZWwgPSAiQlROLUwiOwo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsaW51eCxjb2RlID0gPEJUTl9UTD47Cj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfTsKPiA+ICsKPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBidXR0b24tdHIgewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBncGlvcyA9IDwmZ3Bpb19leHBhbmRlciAxNSAoR1BJ
T19BQ1RJVkVfTE9XCj4gPiB8IEdQSU9fUFVMTF9VUCk+Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsYWJlbCA9ICJCVE4tUiI7Cj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxpbnV4LGNvZGUgPSA8QlRO
X1RSPjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Owo+ID4gKwo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJ1dHRvbi11cCB7Cj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdwaW9zID0gPCZncGlvX2V4cGFuZGVy
IDMgKEdQSU9fQUNUSVZFX0xPVwo+ID4gfCBHUElPX1BVTExfVVApPjsKPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbGFiZWwgPSAiRFBBRC1VUCI7Cj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxpbnV4LGNv
ZGUgPSA8QlROX0RQQURfVVA+Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH07
Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYnV0dG9uLXggewo+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBncGlvcyA9IDwm
Z3Bpb19leHBhbmRlciAxMSAoR1BJT19BQ1RJVkVfTE9XCj4gPiB8IEdQSU9fUFVMTF9VUCk+Owo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsYWJlbCA9
ICJCVE4tWCI7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGxpbnV4LGNvZGUgPSA8QlROX05PUlRIPjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqB9Owo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJ1dHRv
bi15IHsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
Z3Bpb3MgPSA8JmdwaW9fZXhwYW5kZXIgMTMgKEdQSU9fQUNUSVZFX0xPVwo+ID4gfCBHUElPX1BV
TExfVVApPjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgbGFiZWwgPSAiQlROLVkiOwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBsaW51eCxjb2RlID0gPEJUTl9XRVNUPjsKPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqB9Owo+ID4gK8KgwqDCoMKgwqDCoMKgfTsKPiA+ICt9Owo+ID4gKwo+
ID4gKyZjb2RlYyB7Cj4gPiArwqDCoMKgwqDCoMKgwqBhbGx3aW5uZXIsYXVkaW8tcm91dGluZyA9
ICJTcGVha2VyIiwgIkhQIiwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJNSUMxIiwgIk1pYyIsCj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAiTWljIiwgIkhCSUFTIjsKPiA+ICvCoMKgwqDCoMKgwqDCoGFsbHdpbm5lcixwYS1ncGlvcyA9
IDwmcGlvIDUgNiAoR1BJT19BQ1RJVkVfSElHSCB8Cj4gPiBHUElPX1BVTExfVVApPjsgLyogUEY2
ICovCj4gPiArwqDCoMKgwqDCoMKgwqBzdGF0dXMgPSAib2theSI7Cj4gPiArfTsKPiA+ICsKPiA+
ICsmZWhjaSB7Cj4gPiArwqDCoMKgwqDCoMKgwqBzdGF0dXMgPSAib2theSI7Cj4gPiArfTsKPiA+
ICsKPiA+ICsmaTJjMCB7Cj4gPiArwqDCoMKgwqDCoMKgwqBzdGF0dXMgPSAib2theSI7Cj4gPiAr
Cj4gPiArwqDCoMKgwqDCoMKgwqBncGlvX2V4cGFuZGVyOiBncGlvQDIwIHsKPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb21wYXRpYmxlID0gIm54cCxwY2FsNjQxNiI7Cj4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVnID0gPDB4MjA+Owo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdwaW8tY29udHJvbGxlcjsKPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAjZ3Bpby1jZWxscyA9IDwyPjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAjaW50ZXJydXB0LWNlbGxzID0gPDI+Owo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGludGVycnVwdC1jb250cm9sbGVyOwo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGludGVycnVwdC1wYXJlbnQgPSA8JnBpbz47Cj4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZXJydXB0cyA9IDwxIDMgSVJRX1RZUEVfRURHRV9CT1RI
PjsgLyogUEIzL0VJTlQzCj4gPiAqLwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oHZjYy1zdXBwbHkgPSA8JnJlZ192Y2MzdjM+Owo+ID4gK8KgwqDCoMKgwqDCoMKgfTsKPiA+ICsK
PiA+ICvCoMKgwqDCoMKgwqDCoGF4cDIwOTogcG1pY0AzNCB7Cj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgcmVnID0gPDB4MzQ+Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGludGVycnVwdC1wYXJlbnQgPSA8JnBpbz47Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgaW50ZXJydXB0cyA9IDwxIDUgSVJRX1RZUEVfRURHRV9GQUxMSU5HPjsgLyoK
PiA+IFBCNS9FSU5UNSAqLwo+ID4gK8KgwqDCoMKgwqDCoMKgfTsKPiA+ICsKPiA+ICvCoMKgwqDC
oMKgwqDCoHBjZjg1NjM6IHJ0Y0A1MSB7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgY29tcGF0aWJsZSA9ICJueHAscGNmODU2MyI7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgcmVnID0gPDB4NTE+Owo+ID4gK8KgwqDCoMKgwqDCoMKgfTsKPiA+ICt9Owo+ID4g
Kwo+ID4gKyNpbmNsdWRlICJheHAyMDkuZHRzaSIKPiA+ICsKPiA+ICsmYmF0dGVyeV9wb3dlcl9z
dXBwbHkgewo+ID4gK8KgwqDCoMKgwqDCoMKgc3RhdHVzID0gIm9rYXkiOwo+ID4gK307Cj4gPiAr
Cj4gPiArJm1tYzAgewo+ID4gK8KgwqDCoMKgwqDCoMKgYnJva2VuLWNkOwo+ID4gK8KgwqDCoMKg
wqDCoMKgYnVzLXdpZHRoID0gPDQ+Owo+ID4gK8KgwqDCoMKgwqDCoMKgZGlzYWJsZS13cDsKPiA+
ICvCoMKgwqDCoMKgwqDCoHZtbWMtc3VwcGx5ID0gPCZyZWdfdmNjM3YzPjsKPiA+ICvCoMKgwqDC
oMKgwqDCoHZxbW1jLXN1cHBseSA9IDwmcmVnX3ZjYzN2Mz47Cj4gPiArwqDCoMKgwqDCoMKgwqBz
dGF0dXMgPSAib2theSI7Cj4gPiArfTsKPiA+ICsKPiA+ICsmb2hjaSB7Cj4gPiArwqDCoMKgwqDC
oMKgwqBzdGF0dXMgPSAib2theSI7Cj4gPiArfTsKPiA+ICsKPiA+ICsmcGlvIHsKPiA+ICvCoMKg
wqDCoMKgwqDCoHZjYy1wYi1zdXBwbHkgPSA8JnJlZ192Y2MzdjM+Owo+ID4gK8KgwqDCoMKgwqDC
oMKgdmNjLXBjLXN1cHBseSA9IDwmcmVnX3ZjYzN2Mz47Cj4gPiArwqDCoMKgwqDCoMKgwqB2Y2Mt
cGYtc3VwcGx5ID0gPCZyZWdfdmNjM3YzPjsKPiA+ICvCoMKgwqDCoMKgwqDCoHZjYy1wZy1zdXBw
bHkgPSA8JnJlZ192Y2MzdjM+Owo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgc3BpMF9ub19taXNv
X3BpbnM6IHNwaTAtbm8tbWlzby1waW5zIHsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBwaW5zID0gIlBDMSIsICJQQzIiLCAiUEMzIjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBmdW5jdGlvbiA9ICJzcGkwIjsKPiA+ICvCoMKgwqDCoMKgwqDCoH07Cj4gPiAr
fTsKPiA+ICsKPiA+ICsmcHdtIHsKPiA+ICvCoMKgwqDCoMKgwqDCoHBpbmN0cmwtMCA9IDwmcHdt
MF9waW4+Owo+ID4gK8KgwqDCoMKgwqDCoMKgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+
ICvCoMKgwqDCoMKgwqDCoHN0YXR1cyA9ICJva2F5IjsKPiA+ICt9Owo+ID4gKwo+ID4gKy8qIERD
REMyIHdpcmVkIGludG8gdmRkLWNwdSwgdmRkLXN5cywgYW5kIHZkZC1lcGh5LiAqLwo+ID4gKyZy
ZWdfZGNkYzIgewo+ID4gK8KgwqDCoMKgwqDCoMKgcmVndWxhdG9yLWFsd2F5cy1vbjsKPiA+ICvC
oMKgwqDCoMKgwqDCoHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDEyNTAwMDA+Owo+ID4gK8Kg
wqDCoMKgwqDCoMKgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTI1MDAwMD47Cj4gPiArwqDC
oMKgwqDCoMKgwqByZWd1bGF0b3ItbmFtZSA9ICJ2ZGQtY3B1IjsKPiA+ICt9Owo+ID4gKwo+ID4g
Ky8qIERDREMzIHdpcmVkIGludG8gZXZlcnkgMy4zdiBpbnB1dCB0aGF0IGlzbid0IHRoZSBSVEMu
ICovCj4gPiArJnJlZ19kY2RjMyB7Cj4gPiArwqDCoMKgwqDCoMKgwqByZWd1bGF0b3ItYWx3YXlz
LW9uOwo+ID4gK8KgwqDCoMKgwqDCoMKgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzMwMDAw
MD47Cj4gPiArwqDCoMKgwqDCoMKgwqByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwzMzAwMDAw
PjsKPiA+ICvCoMKgwqDCoMKgwqDCoHJlZ3VsYXRvci1uYW1lID0gInZjYy1pbyI7Cj4gPiArfTsK
PiA+ICsKPiA+ICsvKgo+ID4gKyAqIExETzEgd2lyZWQgaW50byBSVEMsIHZvbHRhZ2UgaXMgaGFy
ZC13aXJlZCBhdCAzLjN2IGFuZCBjYW5ub3QKPiA+IGJlCj4gPiArICogc29mdHdhcmUgbW9kaWZp
ZWQuIE5vdGUgdGhhdCBzZXR0aW5nIHZvbHRhZ2UgaGVyZSB0byAzLjN2IGZvcgo+ID4gYWNjdXJh
Y3kKPiA+ICsgKiBzYWtlIGNhdXNlcyBhbiBpc3N1ZSB3aXRoIHRoZSBkcml2ZXIgdGhhdCBjYXVz
ZXMgaXQgdG8gZmFpbCB0bwo+ID4gcHJvYmUKPiA+ICsgKiBiZWNhdXNlIG9mIGEgdm9sdGFnZSBj
b25zdHJhaW50IGluIHRoZSBkcml2ZXIuCj4gPiArICovCj4gPiArJnJlZ19sZG8xIHsKPiA+ICvC
oMKgwqDCoMKgwqDCoHJlZ3VsYXRvci1hbHdheXMtb247Cj4gPiArwqDCoMKgwqDCoMKgwqByZWd1
bGF0b3ItbmFtZSA9ICJ2Y2MtcnRjIjsKPiA+ICt9Owo+ID4gKwo+ID4gKy8qIExETzIgd2lyZWQg
aW50byBWQ0MtUExMIGFuZCBhdWRpbyBjb2RlYy4gKi8KPiA+ICsmcmVnX2xkbzIgewo+ID4gK8Kg
wqDCoMKgwqDCoMKgcmVndWxhdG9yLWFsd2F5cy1vbjsKPiA+ICvCoMKgwqDCoMKgwqDCoHJlZ3Vs
YXRvci1tYXgtbWljcm92b2x0ID0gPDMwMDAwMDA+Owo+ID4gK8KgwqDCoMKgwqDCoMKgcmVndWxh
dG9yLW1pbi1taWNyb3ZvbHQgPSA8MzAwMDAwMD47Cj4gPiArwqDCoMKgwqDCoMKgwqByZWd1bGF0
b3ItbmFtZSA9ICJ2Y2MtcGxsIjsKPiA+ICt9Owo+ID4gKwo+ID4gKy8qIExETzMsIExETzQsIGFu
ZCBMRE81IHVudXNlZC4gKi8KPiA+ICsmcmVnX2xkbzMgewo+ID4gK8KgwqDCoMKgwqDCoMKgc3Rh
dHVzID0gImRpc2FibGVkIjsKPiA+ICt9Owo+ID4gKwo+ID4gKyZyZWdfbGRvNCB7Cj4gPiArwqDC
oMKgwqDCoMKgwqBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ID4gK307Cj4gPiArCj4gPiArLyoKPiA+
ICsgKiBGb3JjZSB0aGUgZHJpdmVyIHRvIHVzZSBpbnRlcm5hbCBvc2NpbGxhdG9yIGJ5IHJlbW92
aW5nIGNsb2Nrcwo+ID4gKyAqIHByb3BlcnR5Lgo+ID4gKyAqLwo+ID4gKyZydGMgewo+ID4gK8Kg
wqDCoMKgwqDCoMKgL2RlbGV0ZS1wcm9wZXJ0eS8gY2xvY2tzOwo+ID4gK307Cj4gPiArCj4gPiAr
JnNwaTAgewo+ID4gK8KgwqDCoMKgwqDCoMKgcGluY3RybC0wID0gPCZzcGkwX25vX21pc29fcGlu
cz47Cj4gPiArwqDCoMKgwqDCoMKgwqBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4gK8Kg
wqDCoMKgwqDCoMKgc3RhdHVzID0gIm9rYXkiOwo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgZGlz
cGxheUAwIHsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb21wYXRpYmxlID0g
InNhZWYsc2Z0YzE1NGIiLCAicGFuZWwtbWlwaS1kYmktc3BpIjsKPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqByZWcgPSA8MD47Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgYmFja2xpZ2h0ID0gPCZiYWNrbGlnaHQ+Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGRjLWdwaW9zID0gPCZwaW8gMiAwIEdQSU9fQUNUSVZFX0hJR0g+OyAvKiBQQzAg
Ki8KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXNldC1ncGlvcyA9IDwmcGlv
IDEgMiBHUElPX0FDVElWRV9ISUdIPjsgLyogUEIyCj4gPiAqLwo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHNwaS1tYXgtZnJlcXVlbmN5ID0gPDEwMDAwMDAwMD47Cj4gPiArCj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaGVpZ2h0LW1tID0gPDM5PjsKPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB3aWR0aC1tbSA9IDwzOT47Cj4gPiArCj4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyogU2V0IGhiLXBvcmNoIHRvIGNvbXBlbnNh
dGUgZm9yIG5vbi12aXNpYmxlIGFyZWEKPiA+ICovCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgcGFuZWwtdGltaW5nIHsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgaGFjdGl2ZSA9IDwyNDA+Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB2YWN0aXZlID0gPDI0MD47Cj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGhiYWNrLXBvcmNoID0gPDgw
PjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdmJh
Y2stcG9yY2ggPSA8MD47Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGNsb2NrLWZyZXF1ZW5jeSA9IDwwPjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaGZyb250LXBvcmNoID0gPDA+Owo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBoc3luYy1sZW4gPSA8MD47
Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHZmcm9u
dC1wb3JjaCA9IDwwPjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgdnN5bmMtbGVuID0gPDA+Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoH07Cj4gPiArwqDCoMKgwqDCoMKgwqB9Owo+ID4gK307Cj4gPiArCj4gPiArJnVhcnQwIHsK
PiA+ICvCoMKgwqDCoMKgwqDCoHBpbmN0cmwtMCA9IDwmdWFydDBfcGJfcGlucz47Cj4gPiArwqDC
oMKgwqDCoMKgwqBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4gK8KgwqDCoMKgwqDCoMKg
c3RhdHVzID0gIm9rYXkiOwo+ID4gK307Cj4gPiArCj4gPiArJnVzYl9vdGcgewo+ID4gK8KgwqDC
oMKgwqDCoMKgZHJfbW9kZSA9ICJvdGciOwo+ID4gK8KgwqDCoMKgwqDCoMKgc3RhdHVzID0gIm9r
YXkiOwo+ID4gK307Cj4gPiArCj4gPiArJnVzYl9wb3dlcl9zdXBwbHkgewo+ID4gK8KgwqDCoMKg
wqDCoMKgc3RhdHVzID0gIm9rYXkiOwo+ID4gK307Cj4gPiArCj4gPiArJnVzYnBoeSB7Cj4gPiAr
wqDCoMKgwqDCoMKgwqB1c2IwX2lkX2RldC1ncGlvcyA9IDwmcGlvIDYgNSAoR1BJT19BQ1RJVkVf
TE9XIHwKPiA+IEdQSU9fUFVMTF9VUCk+OyAvKiBQRzUgKi8KPiA+ICvCoMKgwqDCoMKgwqDCoHN0
YXR1cyA9ICJva2F5IjsKPiA+ICt9Owo+IAoK


