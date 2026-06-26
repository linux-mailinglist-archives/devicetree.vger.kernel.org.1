Return-Path: <devicetree+bounces-316002-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id guzxIJc7PmqBBwkAu9opvQ
	(envelope-from <devicetree+bounces-316002-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 10:43:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CBC16CB726
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 10:43:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316002-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316002-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 077843011075
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 08:43:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58D033D4137;
	Fri, 26 Jun 2026 08:43:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from azure-sdnproxy.icoremail.net (azure-sdnproxy.icoremail.net [52.229.168.213])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB865363C61;
	Fri, 26 Jun 2026 08:42:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782463380; cv=none; b=X+zKMBQ+TwJ8sk+9Et5BYYJr8MJm+KZcMA3ZYZOtdQ07HrxtzzL4JOLE4krg4fMXCS0v4YSzKXuSL/X/itUj1//69wHkqYTvFxmE20B3L4s6fvd2UzrpwJVeBw+gozng8/Qq7MLib2I5wXKKh2ba6dEJy2p2zXLQ/bBb95nRRLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782463380; c=relaxed/simple;
	bh=YVIttblcYC6KqFgSZgTKkVEeGvnUjRsBITIseayLmpQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=UR3I7lwMa+4RwyhsG2+Ib5YzVklvkzkDh5xUNUJzQGLNwu//Yqmbu0AWOea0tg9j8alrxLAhr73TCrbo7B8q5neFaokpl8RbsIo6PBMCxNcXJRaI5zrvqy35vWnUXTlfRbkVfnS5KV5e0p50Hu6jF6nuJojFZyxI/w4i/MLtR+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com; spf=pass smtp.mailfrom=eswincomputing.com; arc=none smtp.client-ip=52.229.168.213
Received: from luyulin$eswincomputing.com ( [10.12.96.77] ) by
 ajax-webmail-app2 (Coremail) ; Fri, 26 Jun 2026 16:42:32 +0800 (GMT+08:00)
Date: Fri, 26 Jun 2026 16:42:32 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: "Yulin Lu" <luyulin@eswincomputing.com>
To: "Conor Dooley" <conor.dooley@microchip.com>
Cc: "Conor Dooley" <conor@kernel.org>,
	"Pinkesh Vaghela" <pinkesh.vaghela@einfochips.com>,
	"Lee Jones" <lee@kernel.org>, "Rob Herring" <robh@kernel.org>,
	"Krzysztof Kozlowski" <krzk+dt@kernel.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Paul Walmsley" <pjw@kernel.org>,
	"Palmer Dabbelt" <palmer@dabbelt.com>,
	"Albert Ou" <aou@eecs.berkeley.edu>,
	"Alexandre Ghiti" <alex@ghiti.fr>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	"Min Lin" <linmin@eswincomputing.com>,
	"Samuel Holland" <samuel.holland@sifive.com>,
	"Darshan Prajapati" <darshan.prajapati@einfochips.com>,
	"Pritesh Patel" <pritesh.patel@einfochips.com>
Subject: Re: Re: Re: [PATCH 3/7] riscv: dts: eswin: eic7700: add pinctrl
 support
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2024.2-cmXT6 build
 20241203(6b039d88) Copyright (c) 2002-2026 www.mailtech.cn
 mispb-72143050-eaf5-4703-89e0-86624513b4ce-eswincomputing.com
In-Reply-To: <20260626-headway-rewind-93c9239bd865@wendy>
References: <20260615122016.1110206-1-pinkesh.vaghela@einfochips.com>
 <20260615122016.1110206-4-pinkesh.vaghela@einfochips.com>
 <20260615-that-scarf-e048ef152676@spud>
 <55962658.7bea.19f02850fe2.Coremail.luyulin@eswincomputing.com>
 <20260626-headway-rewind-93c9239bd865@wendy>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <5d44c6d7.7c1d.19f03184fa9.Coremail.luyulin@eswincomputing.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:TQJkCgAnPqF4Oz5qEMIuAA--.8510W
X-CM-SenderInfo: pox13z1lq6v25zlqu0xpsx3x1qjou0bp/1tbiAQEKA2o9WCMXcQAB
	sC
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:conor.dooley@microchip.com,m:conor@kernel.org,m:pinkesh.vaghela@einfochips.com,m:lee@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:linmin@eswincomputing.com,m:samuel.holland@sifive.com,m:darshan.prajapati@einfochips.com,m:pritesh.patel@einfochips.com,m:krzk@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[eswincomputing.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[luyulin@eswincomputing.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-316002-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luyulin@eswincomputing.com,devicetree@vger.kernel.org];
	HAS_X_PRIO_THREE(0.00)[3];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,eswincomputing.com:email,eswincomputing.com:mid,eswincomputing.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8CBC16CB726

PiA+IEhpLCBDb25vci4gVGhhbmtzIGZvciB5b3VyIHJldmlldy4KPiA+IAo+ID4gPiBPbiBNb24s
IEp1biAxNSwgMjAyNiBhdCAwNTo1MDoxMlBNICswNTMwLCBQaW5rZXNoIFZhZ2hlbGEgd3JvdGU6
Cj4gPiA+ID4gRnJvbTogWXVsaW4gTHUgPGx1eXVsaW5AZXN3aW5jb21wdXRpbmcuY29tPgo+ID4g
PiA+IAo+ID4gPiA+IEFkZCBwaW5jdHJsIG5vZGUgYW5kIHJlbGF0ZWQgcGluIGNvbmZpZ3VyYXRp
b24gZm9yIEVJQzc3MDAgU29DCj4gPiA+ID4gCj4gPiA+ID4gQ28tZGV2ZWxvcGVkLWJ5OiBQcml0
ZXNoIFBhdGVsIDxwcml0ZXNoLnBhdGVsQGVpbmZvY2hpcHMuY29tPgo+ID4gPiA+IFNpZ25lZC1v
ZmYtYnk6IFByaXRlc2ggUGF0ZWwgPHByaXRlc2gucGF0ZWxAZWluZm9jaGlwcy5jb20+Cj4gPiA+
ID4gU2lnbmVkLW9mZi1ieTogWXVsaW4gTHUgPGx1eXVsaW5AZXN3aW5jb21wdXRpbmcuY29tPgo+
ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFBpbmtlc2ggVmFnaGVsYSA8cGlua2VzaC52YWdoZWxhQGVp
bmZvY2hpcHMuY29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICAuLi4vZHRzL2Vzd2luL2VpYzc3MDAt
aGlmaXZlLXByZW1pZXItcDU1MC5kdHMgfCAxMDkgKysrCj4gPiA+ID4gIC4uLi9yaXNjdi9ib290
L2R0cy9lc3dpbi9laWM3NzAwLXBpbmN0cmwuZHRzaSB8IDg4OCArKysrKysrKysrKysrKysrKysK
PiA+ID4gPiAgYXJjaC9yaXNjdi9ib290L2R0cy9lc3dpbi9laWM3NzAwLmR0c2kgICAgICAgIHwg
ICA1ICsKPiA+ID4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAxMDAyIGluc2VydGlvbnMoKykKPiA+ID4g
PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvcmlzY3YvYm9vdC9kdHMvZXN3aW4vZWljNzcwMC1w
aW5jdHJsLmR0c2kKPiA+ID4gPiAKPiA+ID4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9ib290
L2R0cy9lc3dpbi9laWM3NzAwLWhpZml2ZS1wcmVtaWVyLXA1NTAuZHRzIGIvYXJjaC9yaXNjdi9i
b290L2R0cy9lc3dpbi9laWM3NzAwLWhpZml2ZS1wcmVtaWVyLXA1NTAuZHRzCj4gPiA+ID4gaW5k
ZXggMWZiOTJmMGU3YzU1Li5lN2JiOTZlMTQ5NTggMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvYXJjaC9y
aXNjdi9ib290L2R0cy9lc3dpbi9laWM3NzAwLWhpZml2ZS1wcmVtaWVyLXA1NTAuZHRzCj4gPiA+
ID4gKysrIGIvYXJjaC9yaXNjdi9ib290L2R0cy9lc3dpbi9laWM3NzAwLWhpZml2ZS1wcmVtaWVy
LXA1NTAuZHRzCj4gPiA+ID4gQEAgLTYsNiArNiw3IEBACj4gPiA+ID4gIC9kdHMtdjEvOwo+ID4g
PiA+ICAKPiA+ID4gPiAgI2luY2x1ZGUgImVpYzc3MDAuZHRzaSIKPiA+ID4gPiArI2luY2x1ZGUg
ImVpYzc3MDAtcGluY3RybC5kdHNpIgo+ID4gPiA+ICAKPiA+IAo+ID4gLi4uCj4gPiAKPiA+ID4g
PiArJmdwaW83OV9waW5zIHsKPiA+ID4gPiArCWJpYXMtZGlzYWJsZTsKPiA+ID4gPiArCWlucHV0
LWRpc2FibGU7Cj4gPiA+ID4gK307Cj4gPiA+ID4gKwo+ID4gPiA+ICsmZ3BpbzgwX3BpbnMgewo+
ID4gPiA+ICsJYmlhcy1wdWxsLXVwOwo+ID4gPiA+ICsJaW5wdXQtZGlzYWJsZTsKPiA+ID4gPiAr
fTsKPiA+ID4gPiArCj4gPiA+ID4gKyZncGlvODJfcGlucyB7Cj4gPiA+ID4gKwliaWFzLXB1bGwt
dXA7Cj4gPiA+ID4gKwlpbnB1dC1kaXNhYmxlOwo+ID4gPiA+ICt9Owo+ID4gPiA+ICsKPiA+ID4g
PiArJmdwaW84NF9waW5zIHsKPiA+ID4gPiArCWJpYXMtZGlzYWJsZTsKPiA+ID4gPiArCWlucHV0
LWRpc2FibGU7Cj4gPiA+ID4gK307Cj4gPiA+ID4gKwo+ID4gPiA+ICsmZ3Bpbzg1X3BpbnMgewo+
ID4gPiA+ICsJYmlhcy1wdWxsLXVwOwo+ID4gPiA+ICsJaW5wdXQtZGlzYWJsZTsKPiA+ID4gPiAr
fTsKPiA+ID4gPiArCj4gPiA+ID4gKyZncGlvOTRfcGlucyB7Cj4gPiA+ID4gKwliaWFzLWRpc2Fi
bGU7Cj4gPiA+ID4gKwlpbnB1dC1kaXNhYmxlOwo+ID4gPiA+ICt9Owo+ID4gPiA+ICsKPiA+ID4g
PiArJmdwaW8xMDZfcGlucyB7Cj4gPiA+ID4gKwliaWFzLWRpc2FibGU7Cj4gPiA+ID4gKwlpbnB1
dC1kaXNhYmxlOwo+ID4gPiA+ICt9Owo+ID4gPiA+ICsKPiA+ID4gPiArJmdwaW8xMTFfcGlucyB7
Cj4gPiA+ID4gKwliaWFzLWRpc2FibGU7Cj4gPiA+ID4gKwlpbnB1dC1kaXNhYmxlOwo+ID4gPiA+
ICt9Owo+ID4gPiA+ICsKPiA+ID4gPiArJnBpbmN0cmwgewo+ID4gPiA+ICsJdnJnbWlpLXN1cHBs
eSA9IDwmdmNjXzF2OD47Cj4gPiA+ID4gK307Cj4gPiA+ID4gKwo+ID4gPiA+ICAmdWFydDAgewo+
ID4gPiA+ICAJc3RhdHVzID0gIm9rYXkiOwo+ID4gPiA+ICB9Owo+ID4gPiA+IGRpZmYgLS1naXQg
YS9hcmNoL3Jpc2N2L2Jvb3QvZHRzL2Vzd2luL2VpYzc3MDAtcGluY3RybC5kdHNpIGIvYXJjaC9y
aXNjdi9ib290L2R0cy9lc3dpbi9laWM3NzAwLXBpbmN0cmwuZHRzaQo+ID4gPiA+IG5ldyBmaWxl
IG1vZGUgMTAwNjQ0Cj4gPiA+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi43MjkzZGYxNDZhYTcKPiA+
ID4gPiAtLS0gL2Rldi9udWxsCj4gPiA+ID4gKysrIGIvYXJjaC9yaXNjdi9ib290L2R0cy9lc3dp
bi9laWM3NzAwLXBpbmN0cmwuZHRzaQo+ID4gPiA+IEBAIC0wLDAgKzEsODg4IEBACj4gPiA+ID4g
Ky8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCBPUiBNSVQpCj4gPiA+ID4gKy8q
Cj4gPiA+ID4gKyAqIENvcHlyaWdodCAoYykgMjAyNSBCZWlqaW5nIEVTV0lOIENvbXB1dGluZyBU
ZWNobm9sb2d5IENvLiwgTHRkLgo+ID4gPiA+ICsgKgo+ID4gPiA+ICsgKiBFU1dJTidzIEVJQzc3
MDAgU29DIHBpbi1tdXggYW5kIHBpbi1jb25maWcgb3B0aW9ucyBhcmUgbGlzdGVkIGFzCj4gPiA+
ID4gKyAqIGRldmljZSB0cmVlIG5vZGVzIGluIHRoaXMgZmlsZS4KPiA+ID4gPiArICoKPiA+ID4g
PiArICogQXV0aG9yczogWXVsaW4gTHUgPGx1eXVsaW5AZXN3aW5jb21wdXRpbmcuY29tPgo+ID4g
PiA+ICsgKi8KPiA+ID4gPiArCj4gPiA+IAo+ID4gPiBJIGRvbid0IHJlYWxseSB1bmRlcnN0YW5k
IHRoZSBncm91cHMgaGVyZS4gSSB0aGluayB5b3Ugc2hvdWxkIG1ha2UgbW9yZQo+ID4gPiBlZmZv
cnQgdG8gcHV0IG1vcmUgcGlucyBpbiBlYWNoIGdyb3VwLgo+ID4gPiAKPiA+ID4gPiArCQlncGlv
MV9waW5zOiBncGlvMS1waW5zIHsKPiA+ID4gPiArCQkJcGlucyA9ICJqdGFnMF90Y2siOwo+ID4g
PiA+ICsJCQlmdW5jdGlvbiA9ICJncGlvIjsKPiA+ID4gPiArCQl9Owo+ID4gPiA+ICsKPiA+ID4g
PiArCQlncGlvMl9waW5zOiBncGlvMi1waW5zIHsKPiA+ID4gPiArCQkJcGlucyA9ICJqdGFnMF90
bXMiOwo+ID4gPiA+ICsJCQlmdW5jdGlvbiA9ICJncGlvIjsKPiA+ID4gPiArCQl9Owo+ID4gPiA+
ICsKPiA+ID4gPiArCQlncGlvM19waW5zOiBncGlvMy1waW5zIHsKPiA+ID4gPiArCQkJcGlucyA9
ICJqdGFnMF90ZGkiOwo+ID4gPiA+ICsJCQlmdW5jdGlvbiA9ICJncGlvIjsKPiA+ID4gPiArCQl9
Owo+ID4gPiA+ICsKPiA+ID4gPiArCQlncGlvNF9waW5zOiBncGlvNC1waW5zIHsKPiA+ID4gPiAr
CQkJcGlucyA9ICJqdGFnMF90ZG8iOwo+ID4gPiA+ICsJCQlmdW5jdGlvbiA9ICJncGlvIjsKPiA+
ID4gPiArCQl9Owo+ID4gPiAKPiA+ID4gTGlrZSB0aGVzZSA0IGZvciBleGFtcGxlLCB3aHkgbm90
IGdyb3VwIHRoZXNlPwo+ID4gCj4gPiBUaGUgJ2dyb3VwJyBpcyB1c2VkIHRvIGNvcnJlc3BvbmQg
dG8gdGhlICctZ3JwJyB0YWcgaW4gdGhlIFlBTUwgZmlsZSBhbmQKPiA+IGhhcyBubyBwcmFjdGlj
YWwgc2lnbmlmaWNhbmNlLgo+ID4gRGlmZmVyZW50IGJvYXJkIGRlc2lnbnMgaGF2ZSBkaWZmZXJl
bnQgcmVxdWlyZW1lbnRzIGZvciBwaW4gbXVsdGlwbGV4aW5nLgo+ID4gVGhlcmVmb3JlLCBlaWM3
NzAwLXBpbmN0cmwuZHRzaSBvbmx5IHByb3ZpZGVzIHBpbnMgZm9yIHRoZSBib2FyZC1sZXZlbCBE
VFMuCj4gPiBQaW5zIGFyZSBjb21iaW5lZCBhbmQgdXNlZCBpbiB0aGUgYm9hcmQtbGV2ZWwgRFRT
IHZpYSBwaW5jdHJsLTAgcHJvcGVydHkuCj4gCj4gVGhlc2UgNCBwaW5zIGluIHRoZSBkcml2ZXIg
YXJlIHJlcHJlc2VudGVkIGFzOgo+IAlFSUM3NzAwX1BJTigxNCwgICJqdGFnMF90Y2siLAkJWzBd
ID0gRl9KVEFHLCBbMV0gPSBGX1NQSSwgWzJdID0gRl9HUElPKSwKPiAJRUlDNzcwMF9QSU4oMTUs
ICAianRhZzBfdG1zIiwJCVswXSA9IEZfSlRBRywgWzFdID0gRl9TUEksIFsyXSA9IEZfR1BJTyks
Cj4gCUVJQzc3MDBfUElOKDE2LCAgImp0YWcwX3RkaSIsCQlbMF0gPSBGX0pUQUcsIFsxXSA9IEZf
U1BJLCBbMl0gPSBGX0dQSU8pLAo+IAlFSUM3NzAwX1BJTigxNywgICJqdGFnMF90ZG8iLAkJWzBd
ID0gRl9KVEFHLCBbMV0gPSBGX1NQSSwgWzJdID0gRl9HUElPKSwKPiAKPiAJRUlDNzcwMF9QSU4o
MTgsICAiZ3BpbzUiLAkJWzBdID0gRl9HUElPLCBbMV0gPSBGX1NQSSksCj4gCj4gVGhlcmUgaXMg
bm8gcmVhc29uIHRvIGV2ZXIgcGFydGlhbGx5IHVzZSB0aGVzZSBhcyBHUElPLiBFaXRoZXIgdGhl
eSB3aWxsCj4gYmUgYWxsIGp0YWcsIGFsbCBzcGkgb3IgYWxsIGdwaW8uIHBpbiAxOCBvbiB0aGUg
b3RoZXIgdGhhbiBtYWtlcyBzZW5zZSB0byBoYXZlCj4gaW4gYSBkZWRpY2F0ZWQgZ3JvdXAuCgpI
aSwgQ29ub3IuIFRoYW5rcyBmb3IgeW91ciByZXBseS4KCkZvciBwaW5zIDE0IHRvIDE4LCB3aGVu
IHRoZXkgYXJlIG5vdCBtdWx0aXBsZXhlZCBhcyBKVEFHIG9yIFNQSSwKdGhleSBjYW4gYmUgdXNl
ZCBhcyBHUElPLiBUaGUgY29ycmVzcG9uZGluZyAtcGlucyBjb21iaW5hdGlvbnMKZm9yIEpUQUcs
IFNQSSwgYW5kIEdQSU8gYXJlIGFsbCBpbXBsZW1lbnRlZCBpbiBlaWM3NzAwLXBpbmN0cmwuZHRz
aS4KClRha2UgcGluIDE0IGFzIGFuIGV4YW1wbGUuIEluIGVpYzc3MDAtcGluY3RybC5kdHNpLCBp
dCBpcyBkZWZpbmVkOgoKZHVhbF9zcGkyX3BpbnM6IGR1YWwtc3BpMi1waW5zIHsKwqAgwqAgcGlu
cyA9ICJzcGkyX2NzMF9uIiwgImp0YWcwX3RjayIsICJqdGFnMF90bXMiLCAianRhZzBfdGRpIjsK
wqAgwqAgZnVuY3Rpb24gPSAic3BpIjsKfTsKCnF1YWRfc3BpMl9waW5zOiBxdWFkLXNwaTItcGlu
cyB7CsKgIMKgIHBpbnMgPSAic3BpMl9jczBfbiIsICJzcGkyX2NzMV9uIiwgImp0YWcwX3RjayIs
ICJqdGFnMF90bXMiLArCoCDCoCDCoCDCoCDCoCDCoCJqdGFnMF90ZGkiLCAianRhZzBfdGRvIiwg
ImdwaW81IjsKwqAgwqAgZnVuY3Rpb24gPSAic3BpIjsKfTsKCmdwaW8xX3BpbnM6IGdwaW8xLXBp
bnMgewrCoCDCoCBwaW5zID0gImp0YWcwX3RjayI7CsKgIMKgIGZ1bmN0aW9uID0gImdwaW8iOwp9
OwoKanRhZzBfcGluczoganRhZzAtcGlucyB7CsKgIMKgIHBpbnMgPSAianRhZzBfdGNrIiwgImp0
YWcwX3RtcyIsICJqdGFnMF90ZGkiLCAianRhZzBfdGRvIjsKwqAgwqAgZnVuY3Rpb24gPSAianRh
ZyI7Cn07CgpXaGljaCBzcGVjaWZpYyBjb21iaW5hdGlvbiBpcyBjYWxsZWQsIGFuZCBob3cgdGhl
eSBhcmUgY29tYmluZWQsCmRlcGVuZHMgb24gdGhlIGJvYXJkLWxldmVsIHN5c3RlbSBkZXNpZ24g
YW5kIGlzIHJlZmVyZW5jZWQgaW4KdGhlIGRldmljZSBub2RlcyBvZiB0aGUgYm9hcmQtbGV2ZWwg
RFRTLiBGb3IgZXhhbXBsZToKCnBpbmN0cmwtMCA9IDwmZ3BpbzFfcGlucz4sIDwmanRhZzJfcGlu
cz47CgpUaGUgcGluIG11bHRpcGxleGluZyBjb25maWd1cmF0aW9uIGRlcGVuZHMgb24gdGhlIGJv
YXJkLWxldmVsIHN5c3RlbSBkZXNpZ24uClVzaW5nIGNvbWJpbmF0aW9ucyBvZiAnLXBpbnMnIGlz
IHN1ZmZpY2llbnQgdG8gc2F0aXNmeSBhbGwgcmVxdWlyZW1lbnRzLAphbmQgdGhlcmUgaXMgbm8g
bmVlZCB0byByZWx5IG9uICctZ3JwJyBmb3IgdGhpcyBwdXJwb3NlLgoKUmVnYXJkcywKWXVsaW4g
THUK

