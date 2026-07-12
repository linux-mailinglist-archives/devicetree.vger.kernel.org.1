Return-Path: <devicetree+bounces-325062-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mTJeDVebU2racAMAu9opvQ
	(envelope-from <devicetree+bounces-325062-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 15:49:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6EF744DD3
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 15:49:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=DJu3SfVC;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325062-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325062-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E0B7530039B1
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 13:49:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A47ED38C41B;
	Sun, 12 Jul 2026 13:49:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 930BF1FF1C7
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 13:49:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783864147; cv=none; b=KTs2TjmfaPPbNVOEU5Cnk0kV901t0aF4CamjnxXp396yRiPMvck8m1g+8+1KiEjaI7+A6txp9wWcr5AxWHBbYKnzU/mmDV4s7dTdNuEh0vUNMrAUqAXmOSjlLa8YPJBIoRu+7FqHAu/rvKo57X8AeorOsTRomZlApzzAWP+O+9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783864147; c=relaxed/simple;
	bh=c9JDNOnnONgaFzzq5/J9Soidj8iyMti7JCT+l57dlX8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jczgJvX+RR8xdJWCnPJpK1vcZ0gKwm3rZxD0rokwwL4ubc6mYlUSY+iMD2tIlalriEq/prdRbHchNuvIY/OqfIBS3fTxGiTXZhjhWdl5VP8HmiFRIxE7OtgzqR9KlghDZROfYD5PXjlUF+sqi5vPcWANK4dpN4lyaFloyOthYsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJu3SfVC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D08AB1F000E9;
	Sun, 12 Jul 2026 13:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783864146;
	bh=c9JDNOnnONgaFzzq5/J9Soidj8iyMti7JCT+l57dlX8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=DJu3SfVCjzWOsypH80HQRfO0+vHVSDHa8hgo/SXsacZ/tE+eA0iRSDjHjNHQBcPdP
	 Caq9AAm6l+oO7jnHq2T5c0tpDDuOi9yJXxcpf9Wr20aEP+XNtz9Wc/kredA3MvTiBM
	 XR9XDoZ3GSjGCiBX7NrFqNK+aVPCxrE/PsnGakfwog5EAsTVOBR9vn6W30fMFdGv4N
	 qZcwQb8DyuaO3ya5SutVcKxjL0xRsyW/6m+yYoABahmWsnvgaa6EZ1om+Z43TsjgA/
	 dsWvKDt+G6QGFZwIrjs+hGCJp+s957YNGDBa3OX9P55D52R8XlnSVeJSQq+hsy+S0L
	 +yPctEKflZusw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] dt-bindings: net: microchip: fix bracket
Reply-To: sashiko-reviews@lists.linux.dev
To: "Manuel Ebner" <manuelebner@mailbox.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260711134204.472841-7-manuelebner@mailbox.org>
References: <20260711134204.472841-7-manuelebner@mailbox.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Jul 2026 13:49:05 +0000
Message-Id: <20260712134905.D08AB1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-325062-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:manuelebner@mailbox.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AA6EF744DD3

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The patch commentary contains multiple spelling errors ('seperate',=
 'change', 'bracked') that make the sentence slightly confusing.
--

--- Patch [1]: [PATCH] dt-bindings: net: microchip: fix bracket ---
commit 760f4b1701ced8e84db16772e5e6596ed658efac
Author: Manuel Ebner <manuelebner@mailbox.org>

dt-bindings: net: microchip: fix bracket

This patch removes an unnecessary closing parenthesis from the description
of the SMSC9512/9514 USB Hub & Ethernet Device ID in the microchip,lan95xx
binding.

> ---
> I send this in a seperate patch, because there's a change the maintainers
> wants a bracked added instead of removed.
> ---

[Severity: Low]
This isn't a bug, but there are a few typos in the patch commentary here.=20
Specifically, "seperate" should be "separate", "change" should be "chance",=
=20
and "bracked" should be "bracket".

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260711134204.4728=
41-7-manuelebner@mailbox.org?part=3D1

