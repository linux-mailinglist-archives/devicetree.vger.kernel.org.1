Return-Path: <devicetree+bounces-264950-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QIrdL/iXjWlh5AAAu9opvQ
	(envelope-from <devicetree+bounces-264950-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:06:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E5712BB7D
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:06:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ECD6B3025F71
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCA3B28314B;
	Thu, 12 Feb 2026 09:05:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from azure-sdnproxy.icoremail.net (azure-sdnproxy.icoremail.net [52.229.168.213])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECC5C1400C;
	Thu, 12 Feb 2026 09:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=52.229.168.213
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770887156; cv=none; b=OxzruFq5PU4263Q82KJY4FgUMAmeRXdO42yX77c+XgdnL/pvg/ryepWfISLlegFHyMT9Mv6almq1CcKSAKUaMgQu3MH20n+V3RGCsVlMN9yeW86Qf0bd8FlSILhEnNZi3rZ2xUwUu8coBzAw1oCUN/DUJfBA+6e0BHaMBHQpfjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770887156; c=relaxed/simple;
	bh=f3p58tZYk6B07yhCdrxONy++HQz7qY5uLeay+/NDTpY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=a+i2gUyhRmmA6rHLeMTP31IX2HPMm590sXPnTWsjL/8kptwO0p5O9KXb4Z57KcL8xSjjy8NdSXYXOeCw67jhBuiHcPkdCPE+MA4nHUtTa6i5Vmba12TCvj7/ucUTEQ37umNMMJZZ80H/Ei/HHw/fVzzIkaNX+Bt/yRcLnAyS+Ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com; spf=pass smtp.mailfrom=eswincomputing.com; arc=none smtp.client-ip=52.229.168.213
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=eswincomputing.com
Received: from dongxuyang$eswincomputing.com ( [10.12.96.41] ) by
 ajax-webmail-app2 (Coremail) ; Thu, 12 Feb 2026 17:05:31 +0800 (GMT+08:00)
Date: Thu, 12 Feb 2026 17:05:31 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: "Xuyang Dong" <dongxuyang@eswincomputing.com>
To: "Marcel Ziswiler" <marcel@ziswiler.com>, "Bo Gan" <ganboing@gmail.com>,
	mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	troy.mitchell@linux.dev, bmasney@redhat.com
Cc: ningyu@eswincomputing.com, linmin@eswincomputing.com,
	huangyifeng@eswincomputing.com, pinkesh.vaghela@einfochips.com
Subject: Re: Re: [PATCH v11 0/3] Add driver support for ESWIN eic700 SoC
 clock controller
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2024.2-cmXT6 build
 20241203(6b039d88) Copyright (c) 2002-2026 www.mailtech.cn
 mispb-72143050-eaf5-4703-89e0-86624513b4ce-eswincomputing.com
In-Reply-To: <33528fb083d704d0745c52186673a355d274162f.camel@ziswiler.com>
References: <20260210095008.726-1-dongxuyang@eswincomputing.com>
 <4f6580f3-3759-4b33-a3d3-54bef0a7ae83@gmail.com>
 <33528fb083d704d0745c52186673a355d274162f.camel@ziswiler.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <74f952fb.36ac.19c51192f7d.Coremail.dongxuyang@eswincomputing.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:TQJkCgAnPqHbl41piQ8AAA--.61W
X-CM-SenderInfo: pgrqw5xx1d0w46hv4xpqfrz1xxwl0woofrz/1tbiAgEQAmmMr4QWC
	wAAsC
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[eswincomputing.com];
	FREEMAIL_TO(0.00)[ziswiler.com,gmail.com,baylibre.com,kernel.org,vger.kernel.org,linux.dev,redhat.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-264950-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dongxuyang@eswincomputing.com,devicetree@vger.kernel.org];
	HAS_X_PRIO_THREE(0.00)[3];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 08E5712BB7D
X-Rspamd-Action: no action

SGkgTWFyY2VsIGFuZCBCbywKClRoYW5rcyBmb3IgdGhlIHN1Z2dlc3Rpb25zIGFuZCBmb3IgcHJv
dmlkaW5nIHRoZSBkZXZpY2UtdHJlZSBpbmZvcm1hdGlvbi4KCj4gPiAKPiA+IERvIHlvdSBoYXZl
IGEgZGV2aWNlLXRyZWUgdGhhdCBjYW4gd29yayB3aXRoIHRoaXMgcGF0Y2hzZXQgYW5kIGVuYWJs
ZQo+ID4gZU1NQy9ldGgvU0FUQSBvbiBIaWZpdmUgUDU1MD8gR2l2ZW4gdGhlc2UgZHJpdmVycyBh
cmUgYWxyZWFkeSBtZXJnZWQsCj4gPiBJJ2QgbGlrZSB0byB0ZXN0IGl0IG15c2VsZi4gSSBqdXN0
IG5lZWQgYSBwcm9wZXIgZGV2aWNlLXRyZWUuIEkgY2hlY2tlZAo+ID4geW91ciBnaXRodWIgcmVw
bzogaHR0cHM6Ly9naXRodWIuY29tL2Vzd2luY29tcHV0aW5nL2xpbnV4LW5leHQsIHdoaWNoCj4g
PiBoYXNuJ3QgYmVlbiB1cGRhdGVkIGZvciBhIHdoaWxlLCBhbmQgbm9uZSBvZiB0aGUgYnJhbmNo
ZXMgYXJlIGJhc2VkIG9uCj4gPiB0aGUgbGF0ZXN0IHY2LjE5LXJjNwo+IAo+IFlvdSBtYXkgZmlu
ZCB0aGlzIFsxXSBoZWxwZnVsLiBJdCBpcyByZS1iYXNlZCBvbi10b3Atb2YgdjYuMTkuIEhvd2V2
ZXIsIHNvIGZhciwgSSBvbmx5IHRlc3RlZCB3aXRoIG1pY3JvIFNECj4gY2FyZCBvbiBFQkM3Ny4g
SSBtYXkgdHJ5IEV0aGVybmV0IGxhdGVyIHRoaXMgd2VlayBhcyB3ZWxsLgo+IAo+IFsxXSBodHRw
czovL2dpdGh1Yi5jb20vcmlzY3YvbWV0YS1yaXNjdi9ibG9iL21hc3Rlci9yZWNpcGVzLWtlcm5l
bC9saW51eC9saW51eC1lc3dpbi1lYmM3Ny1tYWlubGluZS5iYgo+IAoKQm8sIHBsZWFzZSBhcHBs
eSB0aGUgZGV2aWNlLXRyZWUgcGF0Y2ggZnJvbSBbMV0g4oCUIGl0IG1hdGNoZXMgdGhlIGRlc2Ny
aXB0aW9uCndlIHRlc3RlZCBvbiBrZXJuZWwgNi4xOC4gTmV4dCwgd2UnbGwgYWRkIHRoZSBkZXZp
Y2UtdHJlZSBmb3IgdGhlIGRyaXZlciBtb2R1bGVzwqAKdGhhdCBoYXZlIGFscmVhZHkgYmVlbiBh
Y2NlcHRlZCB1cHN0cmVhbSwgdGFyZ2V0aW5nIHRoZSBsYXRlc3QgNi4xOSBrZXJuZWwuCgpSZWdh
cmRzLApYdXlhbmcgRG9uZwo=

