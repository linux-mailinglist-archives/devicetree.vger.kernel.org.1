Return-Path: <devicetree+bounces-311786-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wCA+CEu9L2oAFgUAu9opvQ
	(envelope-from <devicetree+bounces-311786-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 10:52:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5311E684BFA
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 10:52:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311786-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311786-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D4327301E5B0
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:50:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E31AC3C2B82;
	Mon, 15 Jun 2026 08:50:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from azure-sdnproxy.icoremail.net (azure-sdnproxy.icoremail.net [52.175.55.52])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B4F83D1717
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 08:50:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781513429; cv=none; b=sLxy2MmBxTwLMxtUsZcTILTt6GD1KSjagbzmCstH+XtxRqz03XTevNu+BbhbbulhxcPtZmFwztd9FLAaRLGAEYZehSXUdJJQUmdz7crQLmA2VlnY64TjHa9x9l1Sk0708gVCDmfUhrm86Hff4hYivsIcDnCgHK4WhLc9cZhSUAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781513429; c=relaxed/simple;
	bh=HWXKAVs6udjCbIAkf4Ar/V/4mhi571C9+FnihLfXfW4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=Qk6jfRkrwVso7/kRLhuOYe8vmVzGI67+WpIIu9UXWmHVrr9LNdPq8jLVUJHQ8FkLrMu0eWfpvueAO3hlp70BoIfxRua6Nwxfa6ufoon7Fi6DVyjBncNtCI4YXvYu41qrk9tOISMPQKg+8q8i+6iETBZEWsJw5iSeRDpv9zYpCVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com; spf=pass smtp.mailfrom=eswincomputing.com; arc=none smtp.client-ip=52.175.55.52
Received: from lizhi2$eswincomputing.com ( [10.11.96.26] ) by
 ajax-webmail-app1 (Coremail) ; Mon, 15 Jun 2026 16:49:56 +0800 (GMT+08:00)
Date: Mon, 15 Jun 2026 16:49:56 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: =?UTF-8?B?5p2O5b+X?= <lizhi2@eswincomputing.com>
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
Subject: Re: Re: [PATCH net-next v8 2/6] dt-bindings: ethernet: eswin: add
 EIC7700 eth1 RX clock inversion variant
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2024.2-cmXT6 build
 20241203(6b039d88) Copyright (c) 2002-2026 www.mailtech.cn
 mispb-72143050-eaf5-4703-89e0-86624513b4ce-eswincomputing.com
In-Reply-To: <20260611013249.E03641F00893@smtp.kernel.org>
References: <20260610012907.894-1-lizhi2@eswincomputing.com>
 <20260611013249.E03641F00893@smtp.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <268c0169.9602.19eca791ff2.Coremail.lizhi2@eswincomputing.com>
X-Coremail-Locale: en_US
X-CM-TRANSID:TAJkCgDHaXO0vC9qSOIoAA--.9818W
X-CM-SenderInfo: xol2xx2s6h245lqf0zpsxwx03jof0z/1tbiAgETDGou2BZn7wABsf
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311786-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[eswincomputing.com];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	HAS_X_PRIO_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[lizhi2@eswincomputing.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lizhi2@eswincomputing.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,eswincomputing.com:email,eswincomputing.com:mid,eswincomputing.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5311E684BFA

CgoKPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2VzLS0tLS0KPiBGcm9tOiBzYXNoaWtvLWJvdEBrZXJu
ZWwub3JnCj4gU2VuZCB0aW1lOlRodXJzZGF5LCAxMS8wNi8yMDI2IDA5OjMyOjQ5Cj4gVG86IGxp
emhpMkBlc3dpbmNvbXB1dGluZy5jb20KPiBDYzogcm9iaEBrZXJuZWwub3JnLCBkZXZpY2V0cmVl
QHZnZXIua2VybmVsLm9yZywgY29ub3IrZHRAa2VybmVsLm9yZwo+IFN1YmplY3Q6IFJlOiBbUEFU
Q0ggbmV0LW5leHQgdjggMi82XSBkdC1iaW5kaW5nczogZXRoZXJuZXQ6IGVzd2luOiBhZGQgRUlD
NzcwMCBldGgxIFJYIGNsb2NrIGludmVyc2lvbiB2YXJpYW50Cj4gCj4gVGhhbmsgeW91IGZvciB5
b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQgMSBwb3RlbnRpYWwgaXNz
dWUocykgdG8gY29uc2lkZXI6Cj4gLSBbTWVkaXVtXSBVc2luZyBhIHRvcC1sZXZlbCBgb25lT2Zg
IHBhcnRpdGlvbiBmb3IgYGNvbXBhdGlibGVgLWJhc2VkIGNvbnN0cmFpbnRzIGJyZWFrcyBzY2hl
bWEgZXh0ZW5zaWJpbGl0eSBhbmQgdmlvbGF0ZXMgZHQtc2NoZW1hIGNvbmRpdGlvbmFsIHBhdHRl
cm5zLgo+IC0tCj4gCj4gY29tbWl0IGMxODc1OTM2YzE5M2U5MWE3M2JhYTFkNjYxNTU5ZTgxOWYx
NmU3MTAKPiBBdXRob3I6IFpoaSBMaSA8bGl6aGkyQGVzd2luY29tcHV0aW5nLmNvbT4KPiAKPiBk
dC1iaW5kaW5nczogZXRoZXJuZXQ6IGVzd2luOiBhZGQgRUlDNzcwMCBldGgxIFJYIGNsb2NrIGlu
dmVyc2lvbiB2YXJpYW50Cj4gCj4gVGhpcyBjb21taXQgYWRkcyBhIG5ldyBjb21wYXRpYmxlIHN0
cmluZyBmb3IgdGhlIEVJQzc3MDAgZXRoMSBNQUMgdmFyaWFudAo+IHRvIGhhbmRsZSBSWCBjbG9j
ayBpbnZlcnNpb24gcmVxdWlyZW1lbnRzLiBJdCBpbnRyb2R1Y2VzIHNwZWNpZmljCj4gdHgtaW50
ZXJuYWwtZGVsYXktcHMgY29uc3RyYWludHMgZm9yIGVhY2ggdmFyaWFudCB1c2luZyBhIG9uZU9m
IGJsb2NrLgo+IAo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9uZXQvZXN3aW4sZWljNzcwMC1ldGgueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9uZXQvZXN3aW4sZWljNzcwMC1ldGgueWFtbAo+ID4gaW5kZXggNGUwMmZlZGFl
NWM2Ny4uOGNiNzU0NWM1NmU4NyAxMDA2NDQKPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9uZXQvZXN3aW4sZWljNzcwMC1ldGgueWFtbAo+ID4gKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9lc3dpbixlaWM3NzAwLWV0aC55YW1sCj4g
Cj4gWyAuLi4gXQo+IAo+ID4gIGFsbE9mOgo+ID4gICAgLSAkcmVmOiBzbnBzLGR3bWFjLnlhbWwj
Cj4gPiAgCj4gPiArb25lT2Y6Cj4gPiArICAtIHByb3BlcnRpZXM6Cj4gPiArICAgICAgY29tcGF0
aWJsZToKPiA+ICsgICAgICAgIGNvbnRhaW5zOgo+ID4gKyAgICAgICAgICBjb25zdDogZXN3aW4s
ZWljNzcwMC1xb3MtZXRoCj4gPiArICAgICAgdHgtaW50ZXJuYWwtZGVsYXktcHM6Cj4gPiArICAg
ICAgICBtaW5pbXVtOiAwCj4gPiArICAgICAgICBtYXhpbXVtOiAyNTQwCj4gPiArICAgICAgICBt
dWx0aXBsZU9mOiAyMAo+ID4gKwo+ID4gKyAgLSBwcm9wZXJ0aWVzOgo+ID4gKyAgICAgIGNvbXBh
dGlibGU6Cj4gPiArICAgICAgICBjb250YWluczoKPiA+ICsgICAgICAgICAgY29uc3Q6IGVzd2lu
LGVpYzc3MDAtcW9zLWV0aC1jbGstaW52ZXJzaW9uCj4gPiArICAgICAgdHgtaW50ZXJuYWwtZGVs
YXktcHM6Cj4gPiArICAgICAgICBtaW5pbXVtOiAyMDAwCj4gPiArICAgICAgICBtYXhpbXVtOiA0
NTQwCj4gPiArICAgICAgICBtdWx0aXBsZU9mOiAyMAo+IAo+IFtTZXZlcml0eTogTWVkaXVtXQo+
IEFjY29yZGluZyB0byB0aGUgZGV2aWNlIHRyZWUgYmluZGluZ3Mgc3Vic3lzdGVtIGd1aWRlbGlu
ZXMsIFlBTUwgYmluZGluZyAKPiBzY2hlbWFzIHR5cGljYWxseSB1c2UgYWxsT2Ygd2l0aCBpZi10
aGVuIGJsb2NrcyB0byBhcHBseSBkaWZmZXJlbnQgCj4gY29uc3RyYWludHMgYmFzZWQgb24gdGhl
IGNvbXBhdGlibGUgc3RyaW5nLgo+IAo+IERvZXMgcGxhY2luZyBhIG9uZU9mIGJsb2NrIGF0IHRo
ZSByb290IGxldmVsIGNyZWF0ZSBhIG11dHVhbGx5LWV4Y2x1c2l2ZSAKPiB2YWxpZGF0aW9uIHBh
cnRpdGlvbiB0aGF0IHdpbGwgYnJlYWsgc2NoZW1hIGV4dGVuc2liaWxpdHk/IAo+IAo+IElmIGEg
bmV3IGNvbXBhdGlibGUgc3RyaW5nIGlzIGFkZGVkIHRvIHRoZSBlbnVtIGluIHRoZSBmdXR1cmUs
IGl0IGxvb2tzIAo+IGxpa2UgaXQgbWlnaHQgZmFpbCB0aGUgZW50aXJlIG9uZU9mIGJsb2NrIGJ5
IG5vdCBtYXRjaGluZyBlaXRoZXIgYXJtLCAKPiBjYXVzaW5nIHRoZSB3aG9sZSBkb2N1bWVudCB0
byBmYWlsIHZhbGlkYXRpb24uCj4gCj4gQ291bGQgdGhpcyBiZSByZXdyaXR0ZW4gdXNpbmcgYWxs
T2YgYW5kIGlmLXRoZW4gY29uZGl0aW9uYWxzPwo+IAo+IFsgLi4uIF0KPiAKPiA+IEBAIC02Nywx
MSArODksNiBAQCBwcm9wZXJ0aWVzOgo+ID4gICAgICBtYXhpbXVtOiAyNTQwCj4gPiAgICAgIG11
bHRpcGxlT2Y6IDIwCj4gPiAgCj4gPiAtICB0eC1pbnRlcm5hbC1kZWxheS1wczoKPiA+IC0gICAg
bWluaW11bTogMAo+ID4gLSAgICBtYXhpbXVtOiAyNTQwCj4gPiAtICAgIG11bHRpcGxlT2Y6IDIw
Cj4gPiAtCj4gPiAgICBlc3dpbixoc3Atc3AtY3NyOgo+ID4gICAgICBkZXNjcmlwdGlvbjoKPiA+
ICAgICAgICBIU1AgQ1NSIGlzIHRvIGNvbnRyb2wgYW5kIGdldCBzdGF0dXMgb2YgZGlmZmVyZW50
IGhpZ2gtc3BlZWQgcGVyaXBoZXJhbHMKPiAKPiBbU2V2ZXJpdHk6IE1lZGl1bV0KPiBJcyBpdCBp
bnRlbmRlZCB0byByZW1vdmUgdHgtaW50ZXJuYWwtZGVsYXktcHMgZW50aXJlbHkgZnJvbSB0aGUg
bWFpbiAKPiBwcm9wZXJ0aWVzIGJsb2NrPyAKPiAKPiBSZW1vdmluZyB0aGUgcHJvcGVydHkgZnJv
bSB0aGUgcm9vdCBwcm9wZXJ0aWVzIGJsb2NrIGlzIHVzdWFsbHkgY29uc2lkZXJlZCAKPiBhIHNj
aGVtYSBhbnRpLXBhdHRlcm4uIFNob3VsZCB0aGUgYmFzZSBwcm9wZXJ0eSBkZWZpbml0aW9uIHJl
bWFpbiBoZXJlLCAKPiB3aXRoIG9ubHkgdGhlIHJhbmdlIGNvbnN0cmFpbnRzIGJlaW5nIG92ZXJy
aWRkZW4gaW4gdGhlIGNvbmRpdGlvbmFsIGJsb2NrcyAKPiBhYm92ZT8KPiAKPiAtLSAKSSBhbSBw
bGFubmluZyB0byBzd2l0Y2ggdGhlIHNjaGVtYSBmcm9tIGEgdG9wLWxldmVsIG9uZU9mCnRvIGFu
IGFsbE9mICsgaWYvdGhlbiBiYXNlZCBhcHByb2FjaC4KClRoZSBpZGVhIGlzIHRvOgotIGRlZmlu
ZSBhIGdsb2JhbCB0eC1pbnRlcm5hbC1kZWxheS1wcyByYW5nZSBpbiBwcm9wZXJ0aWVzICgw4oCT
NDU0MCBwcykKLSB0aGVuIGFwcGx5IHBlci1jb21wYXRpYmxlIGNvbnN0cmFpbnRzIHVzaW5nIGlm
L3RoZW46Ci0gZXN3aW4sZWljNzcwMC1xb3MtZXRoOiBtYXggMjU0MCBwcwotIGVzd2luLGVpYzc3
MDAtcW9zLWV0aC1jbGstaW52ZXJzaW9uOiBtaW4gMjAwMCBwcwoKRG9lcyB0aGlzIGFsaWduIHdp
dGggdGhlIHByZWZlcnJlZCBkdC1zY2hlbWEgcGF0dGVybiBmb3IKbW9kZWxpbmcgdmFyaWFudC1z
cGVjaWZpYyBjb25zdHJhaW50cywgY29tcGFyZWQgdG8gdXNpbmcgb25lT2Y/Cg==

