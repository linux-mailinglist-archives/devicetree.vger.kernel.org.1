Return-Path: <devicetree+bounces-316647-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id B7fPGkUEQmrjygkAu9opvQ
	(envelope-from <devicetree+bounces-316647-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 07:36:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B866D6111
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 07:36:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=mubOly6s;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316647-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-316647-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6E82C3003601
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 05:36:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECD681A9F82;
	Mon, 29 Jun 2026 05:36:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB0851D45E8
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 05:36:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782711361; cv=none; b=t2bU9kkce3bCBtHs7H+rK9+Ux9820srZ89LVtFO2x63SLj+l1RQ0+Ml24DwYQueaf5lCYvGS68ZLVz7Sp22y2hPjhFTluCc7koV7qlJjPqCVv2hvC4QTllObO1DmWNdx0AigirPPkK9NPHe/SQGEZNVxDRgFEH1piKD/f3+PECM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782711361; c=relaxed/simple;
	bh=l9dWlbCeJC/7EwbHdFhSSobCP7BjKYpgnJ7rWN/KW50=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=G+g7nZst7rP+O0nc0ULOxPEk1y7LmkcvYYKpOFCz9maA0XSRG3JIE4PqGOSpYNdXqOalulXBC6UHdJFaBfLZftKuPAxAJKiS6GJI94Pa+oi9vG1a+8zac0r3bJTeg0lzReViNstelPX9FVCgHBAV9Nuenoyn+NQrHdLRREcptCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mubOly6s; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 336811F000E9;
	Mon, 29 Jun 2026 05:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782711360;
	bh=l9dWlbCeJC/7EwbHdFhSSobCP7BjKYpgnJ7rWN/KW50=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mubOly6s2y1gpr9i3bJRWy9/+i7ntvC1Y5EsMqYHOBX9XBEDCAHqXNFNAT5QNBLOM
	 3qMcARyx2g8gZQ/1P2ccXS+1/pP3tix/sSjAt+6V6sZE8ewUuvpAi3UdtSSieAJtz5
	 ORZ8IJtX5qmi+j2BScOsIOWh24ilgX34T3hKahSmaUxQBi0hH+g2KjJhDG7s5dkBCG
	 kVk8FSVdT3QDoTOjBTDv8jTCwVK/OYlfRLSi8rE86xgZ9JvG0UNQxi9UfJHxQDNDCD
	 6+oLidHSmByJes9T2zEhBMkc6+V+AuCHYyK/yaKCeT2rm3aOBG0B6tRinLvd6IXbVZ
	 LLgcTGx58l7bQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] dt-bindings: display: verisilicon,dc: make resets
 non-optional
Reply-To: sashiko-reviews@lists.linux.dev
To: "Icenowy Zheng" <zhengxingda@iscas.ac.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org
In-Reply-To: <20260629053017.4050868-1-zhengxingda@iscas.ac.cn>
References: <20260629053017.4050868-1-zhengxingda@iscas.ac.cn>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 05:35:33 +0000
Message-Id: <20260629053600.336811F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-316647-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:zhengxingda@iscas.ac.cn,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F2B866D6111

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The commit message incorrectly states that the controller requires =
'two reset lines', while the actual binding schema and examples define thre=
e reset lines ('core', 'axi', 'ahb').
--

commit 11712ddd9a2861c41656c6eb9cdbd525c93e3665
Author: Icenowy Zheng <zhengxingda@iscas.ac.cn>

dt-bindings: display: verisilicon, dc: make resets non-optional

This commit makes the resets and reset-names properties mandatory for the
DC8200 controller variant. The commit message notes that the in-tree
device tree already populates these lines and the driver handles them
gracefully if missing in other variants.

> The only variant supported by the binding now, the DC8200 controller on
> T-Head TH1520, requires two reset lines.

[Severity: Low]
Is the description of "two reset lines" accurate here?=20

Looking at the existing schema in verisilicon,dc.yaml under the resets
property, it defines three reset items (DC Core reset, DMA AXI bus reset,
and Configuration AHB bus reset). Should the commit message mention three
resets instead of two?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629053017.4050=
868-1-zhengxingda@iscas.ac.cn?part=3D1

