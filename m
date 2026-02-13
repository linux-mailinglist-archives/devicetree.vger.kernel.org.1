Return-Path: <devicetree+bounces-265256-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GL0YEcTCjmlmEgEAu9opvQ
	(envelope-from <devicetree+bounces-265256-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 07:20:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6601333B7
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 07:20:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 641C43003702
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 06:20:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8030422D78A;
	Fri, 13 Feb 2026 06:20:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from sgoci-sdnproxy-4.icoremail.net (sgoci-sdnproxy-4.icoremail.net [129.150.39.64])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C4661DE8BF;
	Fri, 13 Feb 2026 06:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=129.150.39.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770963645; cv=none; b=R85s5SGId6uOwTyvyTYPm8fziXrZyWxBO924xrfKqKCj2/kEotSGos99+/BU0tfuCJ0w7DzirqVYGyy2NbtndYUgp1qciydS34wszXYvNq60wPXCo+JwGnh/+dbkmMTx1WzhRzi64aNEDw5YpeFUmFdz2kfZiI81nQx1rxiT/V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770963645; c=relaxed/simple;
	bh=vlUaZYWsQrIcdh8gkDf4J87iIEnfkC5YyC1wucluai8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 MIME-Version:Message-ID; b=Ryj70NjrI1f1j1NOorsmwr+9B5CSALkaeUWhF549nuB7aWVVVQQZHl1ZXfRmXJ8f8GthSXZ4xncplCdFoKAmR2tF8HKINus8/Lll+VSsZ58KKVT3XnpBCk6n1pJpk8k9tRG+gTtB3ukPSAIwT3jsw2alD1lAbdkwX5bynNhFL/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com; spf=pass smtp.mailfrom=eswincomputing.com; arc=none smtp.client-ip=129.150.39.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=eswincomputing.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=eswincomputing.com
Received: from luyulin$eswincomputing.com ( [10.12.96.77] ) by
 ajax-webmail-app2 (Coremail) ; Fri, 13 Feb 2026 14:20:26 +0800 (GMT+08:00)
Date: Fri, 13 Feb 2026 14:20:26 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: "Yulin Lu" <luyulin@eswincomputing.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: ningyu@eswincomputing.com, linmin@eswincomputing.com,
	fenglin@eswincomputing.com
Subject: Re: [PATCH v9 0/2] Add driver support for Eswin EIC7700 SoC SATA
 PHY
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2024.2-cmXT6 build
 20241203(6b039d88) Copyright (c) 2002-2026 www.mailtech.cn
 mispb-72143050-eaf5-4703-89e0-86624513b4ce-eswincomputing.com
In-Reply-To: <20260205082009.1780-1-luyulin@eswincomputing.com>
References: <20260205082009.1780-1-luyulin@eswincomputing.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=UTF-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <22fea2d6.370e.19c55a86a72.Coremail.luyulin@eswincomputing.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID:TQJkCgAnPqGqwo5pRkcAAA--.180W
X-CM-SenderInfo: pox13z1lq6v25zlqu0xpsx3x1qjou0bp/1tbiAgERA2mOAQQQ8QAB
	sT
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-265256-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[eswincomputing.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luyulin@eswincomputing.com,devicetree@vger.kernel.org];
	HAS_X_PRIO_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5E6601333B7
X-Rspamd-Action: no action

PiBVcGRhdGVzOgo+ICAgdjkgLT4gdjg6Cj4gICAgIC0gZXN3aW4sZWljNzcwMC1zYXRhLXBoeS55
YW1sCj4gICAgICAgLSBNb2RpZnkgdGhlIGZvcm1hdCBvZiB0aGUgImRlZmF1bHQiIGZpZWxkIGlu
IHRoZQo+ICAgICAgICAgImVzd2luLHR4LWFtcGxpdHVkZS10dW5pbmciIGFuZCAiZXN3aW4sdHgt
cHJlZW1waC10dW5pbmciCj4gICAgICAgICBwcm9wZXJ0aWVzLgo+ICAgICAtIHBoeS1laWM3NzAw
LXNhdGEuYwo+ICAgICAgIC0gQ29ycmVjdCB0aGUgaW5jb3JyZWN0bHkgZm9ybWF0dGVkIHN5bWJv
bCAiLSIgaW4gdGhlIGNvbW1lbnRzLgo+ICAgICAtIExpbmsgdG8gdjg6IGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2xrbWwvMjAyNjAxMjMwMjQ4MjMuMTYxMi0xLWx1eXVsaW5AZXN3aW5jb21wdXRp
bmcuY29tLwo+IAo+ICAgdjggLT4gdjc6Cj4gICAgIC0gZXN3aW4sZWljNzcwMC1zYXRhLXBoeS55
YW1sCj4gICAgICAgLSBBZGQgImVzd2luLHR4LWFtcGxpdHVkZS10dW5pbmciIGFuZCAiZXN3aW4s
dHgtcHJlZW1waC10dW5pbmciCj4gICAgICAgICBwcm9wZXJ0aWVzLCBiZWNhdXNlIHRoZXNlIHBh
cmFtZXRlcnMgbWF5IHZhcnkgYWNyb3NzIGRpZmZlcmVudAo+ICAgICAgICAgY2lyY3VpdCBib2Fy
ZHMuCj4gICAgICAgLSBEZWxldGUgcmV2aWV3ZWQtYnkgdGFnIG9mIEtyenlzenRvZiBLb3psb3dz
a2ksIGJlY2F1c2UgdGhlIHR1bmluZwo+ICAgICAgICAgcHJvcGVydGllcyBhcmUgaW50cm9kdWNl
ZC4KPiAgICAgLSBwaHktZWljNzcwMC1zYXRhLmMKPiAgICAgICAtIFRyeSB0byBnZXQgU0FUQSBQ
SFkgdHJhbnNtaXR0ZXIgYW1wbGl0dWRlIGFuZCBwcmUtZW1waGFzaXMgc2lnbmFsCj4gICAgICAg
ICBleWUgZGlhZ3JhbSB0dW5pbmcgcGFyYW1ldGVycyBmcm9tIGR0cyBpbnN0ZWFkIG9mIGhhcmRj
b2RlZCB2YWx1ZXMKPiAgICAgICAgIGluIHRoZSBjb2RlLiBCZWNhdXNlLCB0aGVzZSBwYXJhbWV0
ZXJzIG1heSB2YXJ5IGFjcm9zcyBkaWZmZXJlbnQKPiAgICAgICAgIGNpcmN1aXQgYm9hcmRzLiBE
ZWZpbmUgZGVmYXVsdCB0dW5pbmcgcGFyYW1ldGVycyBhbmQgdXNlIGl0IHdoZW4KPiAgICAgICAg
IHRoZXNlIHByb3BlcnRpZXMgYXJlIG5vdCBkZWNsYXJlZCBpbiBkdHMuCj4gICAgICAgLSBBZGQg
YSBjb21tZW50IHRvIGV4cGxhaW4gdGhlIHJlYXNvbiBmb3IgbWFwcGluZyBJL08gcmVzb3VyY2Vz
IHdpdGgKPiAgICAgICAgIHBsYXRmb3JtX2dldF9yZXNvdXJjZSBhbmQgZGV2bV9pb3JlbWFwIGlu
c3RlYWQgb2YgdXNpbmcgdGhlCj4gICAgICAgICBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3Vy
Y2UgQVBJLgo+ICAgICAtIExpbmsgdG8gdjc6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwv
MjAyNjAxMDYwNjI5NDQuMTUyOS0xLWx1eXVsaW5AZXN3aW5jb21wdXRpbmcuY29tLwoKSGkgVmlu
b2QsIGFsbCwKCkluIHY3LCBJIGdvdCBkcml2ZXIgcmV2aWV3IGNvbW1lbnRzIGZyb20gVmlub2Qu
IEFmdGVyIGZpeGluZyBhbmQgc3VibWl0dGluZyB2OCwKSSByZWNlaXZlZCB5YW1sIGNvbW1lbnRz
IGZyb20gS3J6eXN6dG9mLiB2OSBub3cgaGFzIFJldmlld2VkLWJ5IGZyb20gS3J6eXN6dG9mLgpT
byBJIHdhbnQgdG8gY29uZmlybSB3aGV0aGVyIHRoZXJlIGFyZSBhbnkgZnVydGhlciBjb21tZW50
cyBvbiB0aGUgZHJpdmVyIGNvZGUKaW4gdjkgYW5kIGlmIGl0IG1lZXRzIHRoZSByZXF1aXJlbWVu
dHMgZm9yIG1lcmdpbmcuCgpCZXN0IHJlZ2FyZHMsCll1bGluIEx1Cg==

