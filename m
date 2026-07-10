Return-Path: <devicetree+bounces-324198-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VRZKODZdUGruxQIAu9opvQ
	(envelope-from <devicetree+bounces-324198-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 04:47:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E77736C43
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 04:47:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324198-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-324198-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 03FC13013445
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 02:47:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFF4635A38C;
	Fri, 10 Jul 2026 02:47:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from zg8tmtyylji0my4xnjeumjiw.icoremail.net (zg8tmtyylji0my4xnjeumjiw.icoremail.net [162.243.161.220])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 244E11A9FA8
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 02:47:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783651635; cv=none; b=S5XZOsJmKn+5WwLnGIWlJDAuLHwW1vLGF2v8Ufmw+1Hr04zF+wWj0rbPYrVBA9pNMnz0rrLfJWv2K9SL4JDvjXpC1bgMjXbfvWW4SfjkA6nEd/Ozds9Gl9Kb0GT/nzQ3jcj4D/XLrqRFeC6miiA9N0ZeOe/ZmrcqrzMbEk4/pt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783651635; c=relaxed/simple;
	bh=uanaD7B3NUzHDv3dq2Wp3tkr5OnXVMbjagRrR4w2s5g=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=VUesHGut9VGDcNPH3s23t/YFY7lX6ZAGyFoqek4loD2n0mUwz1z9GwaG2+wiUWIJ9Chuho30Bo0z5dCf4yP9zuGliwSgZrm58R+rEcg+whjY/ftgKwC1hyGv6MdPQpBlywwh9ovBluUML0z/ve1K5kIqnGIosiu7pnLZo001rps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com; spf=pass smtp.mailfrom=eswincomputing.com; arc=none smtp.client-ip=162.243.161.220
Received: from lizhi2$eswincomputing.com ( [10.11.96.26] ) by
 ajax-webmail-app1 (Coremail) ; Fri, 10 Jul 2026 10:46:57 +0800 (GMT+08:00)
Date: Fri, 10 Jul 2026 10:46:57 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: =?UTF-8?B?5p2O5b+X?= <lizhi2@eswincomputing.com>
To: sashiko-reviews@lists.linux.dev, andrew@lunn.ch
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org,
	"Min Lin" <linmin@eswincomputing.com>
Subject: Re: Re: [PATCH net-next v10 1/4] dt-bindings: ethernet: eswin:
 relax internal delay model to range-based constraints
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2024.2-cmXT6 build
 20241203(6b039d88) Copyright (c) 2002-2026 www.mailtech.cn
 mispb-72143050-eaf5-4703-89e0-86624513b4ce-eswincomputing.com
In-Reply-To: <20260708064323.73A661F00A3A@smtp.kernel.org>
References: <20260707064033.1265-1-lizhi2@eswincomputing.com>
 <20260707064131.1282-1-lizhi2@eswincomputing.com>
 <20260708064323.73A661F00A3A@smtp.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <747f8c43.a62e.19f49ebca5e.Coremail.lizhi2@eswincomputing.com>
X-Coremail-Locale: en_US
X-CM-TRANSID:TAJkCgDHW3AhXVBqS+oyAA--.9842W
X-CM-SenderInfo: xol2xx2s6h245lqf0zpsxwx03jof0z/1tbiAgEEDGpPzZoJEQABsg
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[eswincomputing.com];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:andrew@lunn.ch,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:linmin@eswincomputing.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[lizhi2@eswincomputing.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-324198-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lizhi2@eswincomputing.com,devicetree@vger.kernel.org];
	HAS_X_PRIO_THREE(0.00)[3];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 85E77736C43

CgoKPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2VzLS0tLS0KPiBGcm9tOiBzYXNoaWtvLWJvdEBrZXJu
ZWwub3JnCj4gU2VuZCB0aW1lOldlZG5lc2RheSwgMDgvMDcvMjAyNiAxNDo0MzoyMgo+IFRvOiBs
aXpoaTJAZXN3aW5jb21wdXRpbmcuY29tCj4gQ2M6IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3Jn
LCByb2JoQGtlcm5lbC5vcmcsIGNvbm9yK2R0QGtlcm5lbC5vcmcKPiBTdWJqZWN0OiBSZTogW1BB
VENIIG5ldC1uZXh0IHYxMCAxLzRdIGR0LWJpbmRpbmdzOiBldGhlcm5ldDogZXN3aW46IHJlbGF4
IGludGVybmFsIGRlbGF5IG1vZGVsIHRvIHJhbmdlLWJhc2VkIGNvbnN0cmFpbnRzCj4gCj4gVGhh
bmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQgMSBw
b3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Cj4gLSBbSGlnaF0gRFQgQmluZGluZyBhbmQg
RHJpdmVyIG1pc21hdGNoOiByZWxheGVkIGRlbGF5IHByb3BlcnRpZXMgY2F1c2UgcHJvYmUgZmFp
bHVyZS4KPiAtLQo+IAo+IC0tLSBQYXRjaCBbMV06IFtQQVRDSCBuZXQtbmV4dCB2MTAgMS80XSBk
dC1iaW5kaW5nczogZXRoZXJuZXQ6IGVzd2luOiByZWxheCBpbnRlcm5hbCBkZWxheSBtb2RlbCB0
byByYW5nZS1iYXNlZCBjb25zdHJhaW50cyAtLS0KPiBjb21taXQgM2RjZWFmOTMxOTE1YzI0ODg3
ZTExZTAwYzBkODVjYjQ1Y2VmNGQzOQo+IEF1dGhvcjogWmhpIExpIDxsaXpoaTJAZXN3aW5jb21w
dXRpbmcuY29tPgo+IAo+IGR0LWJpbmRpbmdzOiBldGhlcm5ldDogZXN3aW46IHJlbGF4IGludGVy
bmFsIGRlbGF5IG1vZGVsIHRvIHJhbmdlLWJhc2VkIGNvbnN0cmFpbnRzCj4gCj4gVGhpcyBjb21t
aXQgcmVsYXhlcyBpbnRlcm5hbCBkZWxheSBjb25zdHJhaW50cyBmb3IgdGhlIEVJQzc3MDAgRXRo
ZXJuZXQKPiBiaW5kaW5nLCByZXBsYWNpbmcgZml4ZWQgZW51bWVyYXRpb25zIHdpdGggcmFuZ2Ut
YmFzZWQgZGVmaW5pdGlvbnMuIEl0IGFsc28KPiBtYWtlcyB0aGUgcngtaW50ZXJuYWwtZGVsYXkt
cHMgYW5kIHR4LWludGVybmFsLWRlbGF5LXBzIHByb3BlcnRpZXMgb3B0aW9uYWwuCj4gCj4gPiBk
aWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9lc3dpbixl
aWM3NzAwLWV0aC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9l
c3dpbixlaWM3NzAwLWV0aC55YW1sCj4gPiBpbmRleCA2NTg4MmZmNzlkOGQ3Li40ZTAyZmVkYWU1
YzY3IDEwMDY0NAo+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25l
dC9lc3dpbixlaWM3NzAwLWV0aC55YW1sCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbmV0L2Vzd2luLGVpYzc3MDAtZXRoLnlhbWwKPiBbIC4uLiBdCj4gPiBAQCAt
MTA1LDggKzEwOSw2IEBAIHJlcXVpcmVkOgo+ID4gICAgLSBwaHktbW9kZQo+ID4gICAgLSByZXNl
dHMKPiA+ICAgIC0gcmVzZXQtbmFtZXMKPiA+IC0gIC0gcngtaW50ZXJuYWwtZGVsYXktcHMKPiA+
IC0gIC0gdHgtaW50ZXJuYWwtZGVsYXktcHMKPiAKPiBbU2V2ZXJpdHk6IEhpZ2hdCj4gV2l0aCB0
aGlzIGNoYW5nZSwgdGhlIERUIHNjaGVtYSBtYWtlcyB0aGVzZSBwcm9wZXJ0aWVzIG9wdGlvbmFs
LiBIb3dldmVyLCBkb2VzCj4gdGhlIGVpYzc3MDAtcW9zLWV0aCBkcml2ZXIgc3RpbGwgcmVxdWly
ZSB0aGVtPwo+IAo+IExvb2tpbmcgYXQgZWljNzcwMF9kd21hY19wcm9iZSgpLCBpdCBhcHBlYXJz
IHRvIHJldHVybiBhbiBlcnJvciBpZiB0aGVzZQo+IHByb3BlcnRpZXMgYXJlIG1pc3Npbmc6Cj4g
Cj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtZWljNzcwMC5jOmVp
Yzc3MDBfZHdtYWNfcHJvYmUoKSB7Cj4gICAgIC4uLgo+IAl9IGVsc2Ugewo+IAkJcmV0dXJuIGRl
dl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgLUVJTlZBTCwKPiAJCQkibWlzc2luZyByZXF1aXJlZCBw
cm9wZXJ0eSByeC1pbnRlcm5hbC1kZWxheS1wc1xuIik7Cj4gCX0KPiAgICAgLi4uCj4gCX0gZWxz
ZSB7Cj4gCQlyZXR1cm4gZGV2X2Vycl9wcm9iZSgmcGRldi0+ZGV2LCAtRUlOVkFMLAo+IAkJCSJt
aXNzaW5nIHJlcXVpcmVkIHByb3BlcnR5IHR4LWludGVybmFsLWRlbGF5LXBzXG4iKTsKPiAJfQo+
ICAgICAuLi4KPiB9Cj4gCj4gV2lsbCB0aGlzIGNhdXNlIHRoZSBwcm9iZSB0byBmYWlsIGlmIGEg
ZGV2aWNlIHRyZWUgb21pdHMgdGhlc2UgcHJvcGVydGllcywKPiBhcyBwZXJtaXR0ZWQgYnkgdGhl
IHVwZGF0ZWQgc2NoZW1hPwo+IAoKSGkgU2FzaGlrbywKClRoYW5rcyBmb3IgdGhlIHJldmlldy4K
ClRoZXNlIGNvbW1lbnRzIGFyZSBhbGwgZmFsc2UgcG9zaXRpdmVzIGR1ZSB0byBwZXJmb3JtaW5n
IHRoZSByZWdyZXNzaW9uCmFuYWx5c2lzIG9mIG9uZSBwYXRjaCBhdCBvbmNlIGJ5IEFJLgpUaGVz
ZSBmb3VyIHBhdGNoZXMgYXJlIHNlcXVlbnRpYWwgbW9kaWZpY2F0aW9ucyBtYWRlIGZvciB0aGUg
cHVycG9zZSBvZgpmYWNpbGl0YXRpbmcgcmV2aWV3LgoKUGxlYXNlIHBlcmZvcm0gZGVlcCByZWdy
ZXNzaW9uIGFuYXlseXNpcyBvZiB0aGlzIHNlcmllcyBhZnRlciBhcHBseWluZyBhbGwgdGhlIHBh
dGNoZXMuCgpBbmRyZXcsIGRvIHlvdSBoYXZlIGFueSBjb21tZW50cyBvbiB0aGlzIFYxMCBwYXRj
aCBzZXJpZXM/CgpUaGFua3MsClpoaSBMaQoKPiA+ICAgIC0gZXN3aW4saHNwLXNwLWNzcgo+ID4g
IAo+ID4gIHVuZXZhbHVhdGVkUHJvcGVydGllczogZmFsc2UKPiAKPiAtLSAKPiBTYXNoaWtvIEFJ
IHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDcwNjQwMzMu
MTI2NS0xLWxpemhpMkBlc3dpbmNvbXB1dGluZy5jb20/cGFydD0xCg==

