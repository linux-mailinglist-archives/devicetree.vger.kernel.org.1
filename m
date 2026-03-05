Return-Path: <devicetree+bounces-271404-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uPGpFXI4qWnN3AAAu9opvQ
	(envelope-from <devicetree+bounces-271404-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:01:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C9A20D13B
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:01:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A24B430078A0
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 08:01:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D299B350A3D;
	Thu,  5 Mar 2026 08:01:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from sgoci-sdnproxy-4.icoremail.net (sgoci-sdnproxy-4.icoremail.net [129.150.39.64])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FB2334F46F;
	Thu,  5 Mar 2026 08:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=129.150.39.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772697706; cv=none; b=XoRppZAksoZO5saKjJOc9/4ipD0s7BvMZiM2E8/z4Xg1Hv0asW0UKUsmhQnqi1FJpDhZwXrAHHbALBC8cHPHF/8AIBv2hHRZr4ZtIb3QHI3aXkiIn/2sigB6hzX331jqXCXPrBTEztHCDQubbthip4Z9HyPzfe4r4irWNLMImH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772697706; c=relaxed/simple;
	bh=AxKgOxPwkDvL3+Il99VADYTlGL/JcVJEByst9bj72t8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=Ge5qlFOdHMsrhnyjDgvdo1o0CHJ4aMfRU3jOEnFKbjbny/e7901YQkUQFS3GLiFFxlXqhiELQTsiVuAPQNuX+REDIGDoFkm6/qdqV7h5/vsg1KR+pRc3IUXfaEY7sk4CIQoNvUK7GAsTGb0GV8abumpP0nOq6/aS9y6ydo25/pA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com; spf=pass smtp.mailfrom=eswincomputing.com; arc=none smtp.client-ip=129.150.39.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=eswincomputing.com
Received: from linmin$eswincomputing.com ( [10.10.96.205] ) by
 ajax-webmail-app2 (Coremail) ; Thu, 5 Mar 2026 16:01:20 +0800 (GMT+08:00)
Date: Thu, 5 Mar 2026 16:01:20 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: "Min Lin" <linmin@eswincomputing.com>
To: "Manivannan Sadhasivam" <mani@kernel.org>
Cc: zhangsenchuan@eswincomputing.com, bhelgaas@google.com,
	krzk+dt@kernel.org, conor+dt@kernel.org, lpieralisi@kernel.org,
	kwilczynski@kernel.org, robh@kernel.org, p.zabel@pengutronix.de,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, christian.bruel@foss.st.com,
	shradha.t@samsung.com, krishna.chundru@oss.qualcomm.com,
	thippeswamy.havalige@amd.com, inochiama@gmail.com, Frank.li@nxp.com,
	ningyu@eswincomputing.com, pinkesh.vaghela@einfochips.com,
	ouyanghui@eswincomputing.com
Subject: Re: Re: [PATCH v11 2/2] PCI: eic7700: Add Eswin PCIe host
 controller driver
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2024.2-cmXT6 build
 20241203(6b039d88) Copyright (c) 2002-2026 www.mailtech.cn
 mispb-72143050-eaf5-4703-89e0-86624513b4ce-eswincomputing.com
In-Reply-To: <jd4aszup2peetymesiltqghoptp2w4uuecrsdzkb2cl5vqqfot@m3vh6x4u5t6l>
References: <20260227111536.1940-1-zhangsenchuan@eswincomputing.com>
 <20260227111808.1996-1-zhangsenchuan@eswincomputing.com>
 <jd4aszup2peetymesiltqghoptp2w4uuecrsdzkb2cl5vqqfot@m3vh6x4u5t6l>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <57246067.3de3.19cbd03fc5f.Coremail.linmin@eswincomputing.com>
X-Coremail-Locale: en_US
X-CM-TRANSID:TQJkCgDH3aBROKlp7dcFAA--.1468W
X-CM-SenderInfo: 5olqzx3q6h245lqf0zpsxwx03jof0z/1tbiAgERCWmoXwcYbwAAs1
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-Rspamd-Queue-Id: 40C9A20D13B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271404-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[eswincomputing.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_X_PRIO_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linmin@eswincomputing.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[eswincomputing.com,google.com,kernel.org,pengutronix.de,vger.kernel.org,foss.st.com,samsung.com,oss.qualcomm.com,amd.com,gmail.com,nxp.com,einfochips.com];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[lpieralisi.kernel.org:server fail,krzk.kernel.org:query timed out,ouyanghui.eswincomputing.com:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

SGkgTWFuaSwKClRoYW5rcyBmb3IgeW91ciBraW5kIHN1Z2dlc3Rpb24gYW5kIGhlbHAuCgoKPiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2VzLS0tLS0KPiBGcm9tOiAiTWFuaXZhbm5hbiBTYWRoYXNpdmFt
IiA8bWFuaUBrZXJuZWwub3JnPgo+IFNlbmQgdGltZTpUaHVyc2RheSwgMDUvMDMvMjAyNiAxNDow
NzozMQo+IFRvOiB6aGFuZ3NlbmNodWFuQGVzd2luY29tcHV0aW5nLmNvbQo+IENjOiBiaGVsZ2Fh
c0Bnb29nbGUuY29tLCBrcnprK2R0QGtlcm5lbC5vcmcsIGNvbm9yK2R0QGtlcm5lbC5vcmcsIGxw
aWVyYWxpc2lAa2VybmVsLm9yZywga3dpbGN6eW5za2lAa2VybmVsLm9yZywgcm9iaEBrZXJuZWwu
b3JnLCBwLnphYmVsQHBlbmd1dHJvbml4LmRlLCBsaW51eC1wY2lAdmdlci5rZXJuZWwub3JnLCBk
ZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZywgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZywg
Y2hyaXN0aWFuLmJydWVsQGZvc3Muc3QuY29tLCBzaHJhZGhhLnRAc2Ftc3VuZy5jb20sIGtyaXNo
bmEuY2h1bmRydUBvc3MucXVhbGNvbW0uY29tLCB0aGlwcGVzd2FteS5oYXZhbGlnZUBhbWQuY29t
LCBpbm9jaGlhbWFAZ21haWwuY29tLCBGcmFuay5saUBueHAuY29tLCBuaW5neXVAZXN3aW5jb21w
dXRpbmcuY29tLCBsaW5taW5AZXN3aW5jb21wdXRpbmcuY29tLCBwaW5rZXNoLnZhZ2hlbGFAZWlu
Zm9jaGlwcy5jb20sIG91eWFuZ2h1aUBlc3dpbmNvbXB1dGluZy5jb20KPiBTdWJqZWN0OiBSZTog
W1BBVENIIHYxMSAyLzJdIFBDSTogZWljNzcwMDogQWRkIEVzd2luIFBDSWUgaG9zdCBjb250cm9s
bGVyIGRyaXZlcgo+IAo+IE9uIEZyaSwgRmViIDI3LCAyMDI2IGF0IDA3OjE4OjA4UE0gKzA4MDAs
IHpoYW5nc2VuY2h1YW5AZXN3aW5jb21wdXRpbmcuY29tIHdyb3RlOgo+ID4gRnJvbTogU2VuY2h1
YW4gWmhhbmcgPHpoYW5nc2VuY2h1YW5AZXN3aW5jb21wdXRpbmcuY29tPgo+ID4gCj4gPiBBZGQg
ZHJpdmVyIGZvciB0aGUgRXN3aW4gRUlDNzcwMCBQQ0llIGhvc3QgY29udHJvbGxlciwgd2hpY2gg
aXMgYmFzZWQgb24KPiA+IHRoZSBEZXNpZ25XYXJlIFBDSWUgY29yZSwgSVAgcmV2aXNpb24gNS45
NmEuIFRoZSBQQ0llIEdlbi4zIGNvbnRyb2xsZXIKPiA+IHN1cHBvcnRzIGEgZGF0YSByYXRlIG9m
IDggR1QvcyBhbmQgNCBjaGFubmVscywgc3VwcG9ydCBJTlR4IGFuZCBNU0kKPiA+IGludGVycnVw
dHMuCj4gPiAKPiAKPiBJcyB0aGUgZHJpdmVyIGdvaW5nIHRvIHdvcmsgb25seSBmb3IgdGhlIFBD
SWUgUkMgSVAgaW4gRUlDNzcwMCBTb0Mgb3IgZm9yIHRoZQo+IHVwY29taW5nIEVzd2luIFNvQ3Mg
YXMgd2VsbD8gSnVzdCBjdXJpb3VzIGJlY2F1c2UsIHdlIGRvbid0IG5hbWUgZHJpdmVycyBiYXNl
ZAo+IG9uIG9uZSBTb0MgbmFtZSwgYnV0IGJ5IHRoZSB2ZW5kb3Igc28gdGhhdCB0aGUgZHJpdmVy
IChpZiBjb21wYXRpYmxlKSBjYW4gYmUKPiB1c2VkIGFjcm9zcyBvdGhlciBTb0NzIGZyb20gdGhl
IHZlbmRvci4KPiAKPiBJZiBpdCBjYW4gd29yayBhY3Jvc3Mgb3RoZXIgU29DcywgdGhlbiBJIGNh
biBjaGFuZ2UgJ2VpYzc3MDAnIHRvICdlc3dpbicsIHdoZXJlCj4gYXBwbGljYWJsZSB3aGlsZSBh
cHBseWluZy4KPiAKClRoaXMgUENJZSBSQyBJUCBpbiBFSUM3NzAwIHdpbGwgb25seSBiZSB1c2Vk
IGZvciBFSUM3NzAwIFNvQy4gT25lIHRoaW5nIGZvciBzdXJlCmlzIG91ciBuZXh0IFNvQyB3aWxs
IHVzZSBhIGhpZ2hlciBJUCByZXZpc2lvbiBvZiB0aGUgRGVzaWduV2FyZSBQQ0llIGNvcmUuCklu
IHRoZSBmdXR1cmUsIHRoZXJlIGlzIG5vIGRvdWJ0IHRoYXQgdGhlIHVzZSBvZiBJUCBmcm9tIG90
aGVyIG1hbnVmYWN0dXJlcnMgbWF5CmJlIGNvbnNpZGVyZWQuCgpCYXNlZCBvbiB0aGlzLCBtYXkg
SSBhc2sgd2hpY2ggbmFtZSBkbyB5b3UgdGhpbmsgaXMgYmV0dGVyLCBlaWM3NzAwJyBvciAnZXN3
aW4nPwoKSSBmb3VuZCB0aGVyZSBpcyBhIGNvbW1pdCBvbiBkcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2llLXRlZ3JhMTk0LmMKSXQgYWRkZWQgVGVncmEyMzQgUENJZSBzdXBwb3J0IGluIHBj
aWUtdGVncmExOTQuYwpJcyB0aGlzIG5hbWluZyBhcHByb2FjaCBubyBsb25nZXIgcmVjb21tZW5k
ZWQ/Cgo+IC0gTWFuaQo+IAo+ID4gU2lnbmVkLW9mZi1ieTogWXUgTmluZyA8bmluZ3l1QGVzd2lu
Y29tcHV0aW5nLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IFlhbmdodWkgT3UgPG91eWFuZ2h1aUBl
c3dpbmNvbXB1dGluZy5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBTZW5jaHVhbiBaaGFuZyA8emhh
bmdzZW5jaHVhbkBlc3dpbmNvbXB1dGluZy5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3BjaS9j
b250cm9sbGVyL2R3Yy9LY29uZmlnICAgICAgICB8ICAxMSArCj4gPiAgZHJpdmVycy9wY2kvY29u
dHJvbGxlci9kd2MvTWFrZWZpbGUgICAgICAgfCAgIDEgKwo+ID4gIGRyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtZWljNzcwMC5jIHwgNDA5ICsrKysrKysrKysrKysrKysrKysrKysKPiA+
ICAzIGZpbGVzIGNoYW5nZWQsIDQyMSBpbnNlcnRpb25zKCspCj4gPiAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZWljNzcwMC5jCj4gPiAKW3NuaXBd
CgpSZWdhcmRzLApMaW4gTWluCg==

