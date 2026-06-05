Return-Path: <devicetree+bounces-307522-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id V7lCLHIiI2ojjQEAu9opvQ
	(envelope-from <devicetree+bounces-307522-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 21:24:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC6664AEBF
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 21:24:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=lB6+UtPI;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307522-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-307522-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BE1CF3031C20
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 19:24:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F2A54071FC;
	Fri,  5 Jun 2026 19:24:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE404071E9;
	Fri,  5 Jun 2026 19:24:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780687471; cv=none; b=btaD+bB1UB640+pXv50SfhOPe0xcACF3RXlU4ZeVeBF6koEbcInv0O6do71aWUdZNwTLFNhJzk5wAMGCW9ypkCtKYVEmdzzfXZ2fqb8oH65TtuVWVD3kUDmgyYprw3rP/hQ68tM+/G7zkwnN1Bz987VqI1Di7BBBHybKxm2u3zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780687471; c=relaxed/simple;
	bh=ypeRvsYBr6OaQZkz/nyNqmaf/JAoyJ+P1lxhvoCp5Nc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PxALaIZBZhp6DUBHZSH3HXyW9Gj9975Q37ZHC8RFHyoeyhhPuM+qtXp9RZorMtF9DyNTNIhqIUFH9ffvtVu91KtAtH+jVmnaMLWKDsNcGMZlQif8Vm8bg4XldZX6hyHDXZeOYXxlGulXO3pD/80UwqvJa3KATRnSx2BaPjO8reo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lB6+UtPI; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAE861F00899;
	Fri,  5 Jun 2026 19:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780687470;
	bh=ypeRvsYBr6OaQZkz/nyNqmaf/JAoyJ+P1lxhvoCp5Nc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lB6+UtPI1gDdy/Q9wD/aF3eOgRGXJErddP6nbUoV5Az19/wmu2akv+Uv11fIQFBdP
	 4NF6aIOYeulurrfIzhTK9wfp/lQp9D/VYkrSJIlbG0xwAC1RivPsoK+ldsTs4JRbMy
	 bxdnPZFYu70mFQPEf/lVyNDH/mTXpekQE/Whybzcjqc0bZR1TkmXMgZB4LtOuvnReu
	 iTni78MtMmV6nJxP+6pZ9FKOoVc43Xe2M8F29zS+j9elfHeIGY4yQj2uLXp7+fWUxh
	 XUnX8fQ+b57ATBtwAq05ehmAFpMkrMY8i+CzF6mALLFvxV7XQwMiSvNdTjFFetKHpU
	 nJIqEbgRRraQA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/3] ARM: dts: sunxi: add support for NetCube Systems
 OpenNMC (dobermann)
Reply-To: sashiko-reviews@lists.linux.dev
To: "Lukas Schmid" <lukas.schmid@netcube.li>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, linux-sunxi@lists.linux.dev, robh@kernel.org
In-Reply-To: <20260605191322.1920944-4-lukas.schmid@netcube.li>
References: <20260605191322.1920944-4-lukas.schmid@netcube.li>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 19:24:29 +0000
Message-Id: <20260605192429.CAE861F00899@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307522-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,smtp.kernel.org:mid,netcube.li:email,vger.kernel.org:from_smtp,sashiko.dev:url];
	FORGED_RECIPIENTS(0.00)[m:lukas.schmid@netcube.li,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:linux-sunxi@lists.linux.dev,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4CC6664AEBF

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The newly added device tree file `sun8i-t113s-netcube-dobermann.=
dts` is missing from the `arch/arm/boot/dts/allwinner/Makefile`. As a resul=
t, the DTB will not be compiled.
--

commit 72bddd5a378aaecf47418f6e924b30fb31105d2f
Author: Lukas Schmid <lukas.schmid@netcube.li>

ARM: dts: sunxi: add support for NetCube Systems OpenNMC (dobermann)

This commit adds device tree support for the NetCube Systems OpenNMC
(dobermann) board. It configures the various interfaces broken out by
the Nagami SoM, including Ethernet, USB, SD card, and RTC.

> diff --git a/arch/arm/boot/dts/allwinner/sun8i-t113s-netcube-dobermann.dt=
s b/arch/arm/boot/dts/allwinner/sun8i-t113s-netcube-dobermann.dts
> new file mode 100644
> index 0000000000000..d7765caffe2a2
> --- /dev/null
> +++ b/arch/arm/boot/dts/allwinner/sun8i-t113s-netcube-dobermann.dts

[Severity: Medium]
Should this new device tree file be registered in
arch/arm/boot/dts/allwinner/Makefile?

Without adding sun8i-t113s-netcube-dobermann.dtb to the
dtb-$(CONFIG_MACH_SUN8I) list, will the kernel build system actually
compile this new device tree?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605191322.1920=
944-1-lukas.schmid@netcube.li?part=3D3

