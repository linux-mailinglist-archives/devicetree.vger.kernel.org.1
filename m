Return-Path: <devicetree+bounces-268112-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCptKIFrnmnnVAQAu9opvQ
	(envelope-from <devicetree+bounces-268112-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 04:24:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE0E19130C
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 04:24:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9D479300C6C3
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 03:24:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC66929DB99;
	Wed, 25 Feb 2026 03:24:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from azure-sdnproxy.icoremail.net (azure-sdnproxy.icoremail.net [13.76.78.106])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69AB32AE68;
	Wed, 25 Feb 2026 03:24:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=13.76.78.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771989880; cv=none; b=ldPhKjqw8a1hKUZkUaovf9VV0VdFkVOq0RraR+ILv+Q41LFtlDw3VQPVpW6C0vGLNC5dQeG1wN6Yn+k8YwCHLVT4h/wXlyX+QVXWUdRbyhQ6skIXNxEh3/jYYtVR8A6QVr1wQSGg5xleYzmy0SFlkTFFQwsANm08GybIwQje3aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771989880; c=relaxed/simple;
	bh=a8ePmFCIfGiBFXiz56LIH/8Mo1XONCmvpfMpj7N/fko=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=ZP+QvU1fj4oHg6BNSn3frFaUuwMyPlDZkmUy/th6TZzDTPoY21fiWYNcOuiwtGKAvO03wb5ffd239LdX4nkBJUiDo7lcSc8nqBnH99dNYOrSnU8Ma9NDlwlbDrglA0Iposd8YkP+v5U7zILNweo+7SswYdJ9j3euA+dwN91L6hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com; spf=pass smtp.mailfrom=eswincomputing.com; arc=none smtp.client-ip=13.76.78.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=eswincomputing.com
Received: from hehuan1$eswincomputing.com ( [10.12.96.103] ) by
 ajax-webmail-app2 (Coremail) ; Wed, 25 Feb 2026 11:24:29 +0800 (GMT+08:00)
Date: Wed, 25 Feb 2026 11:24:29 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: "Huan He" <hehuan1@eswincomputing.com>
To: "Conor Dooley" <conor@kernel.org>
Cc: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, jszhang@kernel.org, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	ningyu@eswincomputing.com, linmin@eswincomputing.com,
	pinkesh.vaghela@einfochips.com, xuxiang@eswincomputing.com,
	"Pritesh Patel" <pritesh.patel@einfochips.com>
Subject: Re: Re: [PATCH v3] dt-bindings: mmc: dwcmshc-sdhci: Fix resets
 array validation
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2024.2-cmXT6 build
 20241203(6b039d88) Copyright (c) 2002-2026 www.mailtech.cn
 mispb-72143050-eaf5-4703-89e0-86624513b4ce-eswincomputing.com
In-Reply-To: <20260224-thud-hydroxide-4c139d351fa6@spud>
References: <20260224092337.312-1-hehuan1@eswincomputing.com>
 <20260224-thud-hydroxide-4c139d351fa6@spud>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <389f2709.38c5.19c92d3a42c.Coremail.hehuan1@eswincomputing.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:TQJkCgDH3aBta55piVYDAA--.671W
X-CM-SenderInfo: 5khk3tzqr6v25zlqu0xpsx3x1qjou0bp/1tbiAQEJCmmd0pEafgAB
	sR
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.64 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[eswincomputing.com];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-268112-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hehuan1@eswincomputing.com,devicetree@vger.kernel.org];
	HAS_X_PRIO_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,eswincomputing.com:mid,eswincomputing.com:email,einfochips.com:email]
X-Rspamd-Queue-Id: DFE0E19130C
X-Rspamd-Action: no action

PiA+IFRoZSBiaW5kaW5nIGRlZmluZXMgdHVwbGUtc3R5bGUgcmVzZXQtbmFtZXMgaXRlbXMgZm9y
IHNvbWUKPiA+IGNvbXBhdGlibGVzLCB3aGljaCBpbXBsaWNpdGx5IGVuZm9yY2VzIGEgZml4ZWQg
YXJyYXkgbGVuZ3RoCj4gPiB2aWEgSlNPTiBTY2hlbWEuCj4gPiAKPiA+IERlZmluaW5nIGdsb2Jh
bCBtYXhJdGVtcyBmb3IgcmVzZXRzIGFuZCByZXNldC1uYW1lcyBjYXVzZXMgdGhlc2UKPiA+IGNv
bnN0cmFpbnRzIHRvIGJlIGludGVyc2VjdGVkIHZpYSBhbGxPZiwgcmVzdWx0aW5nIGluIGFuIGVm
ZmVjdGl2ZQo+ID4gbWluSXRlbXMgZXF1YWwgdG8gdGhlIGdsb2JhbCBtYXhJdGVtcy4gVGhpcyBs
ZWFkcyB0byBkdGJzX2NoZWNrCj4gPiBmYWlsdXJlcyByZXBvcnRpbmcgcmVzZXQgYXJyYXlzIGFz
IHRvbyBzaG9ydCwgZXZlbiB3aGVuIHRoZSBEVFMKPiA+IHByb3ZpZGVzIHRoZSBjb3JyZWN0IG51
bWJlciBvZiBlbnRyaWVzLgo+ID4gCj4gPiBGaXhlczogMzAwMDlhMjFmMjU3ICgiZHQtYmluZGlu
Z3M6IG1tYzogc2RoY2ktb2YtZHdjbXNoYzogQWRkIEVzd2luIEVJQzc3MDAiKQo+ID4gU2lnbmVk
LW9mZi1ieTogUHJpdGVzaCBQYXRlbCA8cHJpdGVzaC5wYXRlbEBlaW5mb2NoaXBzLmNvbT4KPiA+
IFNpZ25lZC1vZmYtYnk6IEh1YW4gSGUgPGhlaHVhbjFAZXN3aW5jb21wdXRpbmcuY29tPgo+IAo+
IFNpZ25vZmYgY2hhaW4gbG9va3Mgd3JvbmcuIFlvdSdyZSBhdXRob3IgYW5kIHN1Ym1pdHRlciwg
d2hhdCBkaWQKPiBQcml0ZXNoIGRvPwoKVGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgdGFraW5nIHRo
ZSB0aW1lIHRvIHJldmlldyB0aGUgcGF0Y2ggYW5kIGZvciB5b3VyCnZhbHVhYmxlIGZlZWRiYWNr
LgoKSW50ZXJuYWxseSwgUHJpdGVzaCBwcm92aWRlZCB0aGUgaW5pdGlhbCB2ZXJzaW9uIG9mIHRo
aXMgZml4LCBhbmQgSSBoYXZlCm1hZGUgc3Vic2VxdWVudCB1cGRhdGVzIGFuZCByZWZpbmVtZW50
cyBiZWZvcmUgc3VibWl0dGluZyBpdCB0byB0aGUKY29tbXVuaXR5LgoKQmVzdCByZWdhcmRzLApI
dWFuIEhlCg==

