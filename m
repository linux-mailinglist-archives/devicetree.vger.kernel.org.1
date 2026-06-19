Return-Path: <devicetree+bounces-313908-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UvsRJ69qNWotvwYAu9opvQ
	(envelope-from <devicetree+bounces-313908-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 18:13:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7A76A6FC0
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 18:13:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ij5DgqOk;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313908-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313908-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1DFCD3123827
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 16:00:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2C1F3B4E98;
	Fri, 19 Jun 2026 15:58:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F4BB3BBFAE;
	Fri, 19 Jun 2026 15:58:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781884715; cv=none; b=oywpGTXYPPsf0Bd5qnP0iZIc5VvIopqfVZKZUQpQ6v/vg9G2VH3pDQpKL6bghsmFrv2+/BLF4sYafaQHxEenLcC4ypdKCDACOSO4yhJrlP4x9KAK5UN5ixRd/G1B05sPLSfO7CiLDD8XDxlsI5QN23CzRm2yF/FZsnPdq9wj/UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781884715; c=relaxed/simple;
	bh=neaoHP0DdzOqg8VJKaHlvLcHwAw0V6DR2kt11BgxxxM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Ye6vGOcegpMqTuEp9hUFzzPAiD4PFyeE6sBz5MKkbpjBM9G1sFdt3Dil//ZBu0n4VHGJkBDqSGougAar+DSHu0cil0vYpIdVxmEbfOG9adPkjuID+h8qBYssK1656N1nQK3FjWEfgaueQl+PfBC29hLFjZrqfawTPqX3w3/pMkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ij5DgqOk; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE1391F000E9;
	Fri, 19 Jun 2026 15:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781884710;
	bh=0wAOnGC8oGBID3hwEqJxyDArdffKa48tt1T3wslR4eA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ij5DgqOk9Xx+QdQD1pg64MuGySRc/ivghz0Ft6TaMG53RCw4kyufs9vDK6NvySK+r
	 ccdZJzmpwSixMu2dlrP45HfmJ2veyX9krHe0wIuOAKJBapp1BtxyPiTnOFMChMuDhe
	 4PGaS7eqEHz1ljmuJewmKTSm1NViHcX2prfDXwIYgxz4D0OQgs35A66J6mK6fdZD2Z
	 TEnsX2TnQEZJtfzPruF39iDCVYmYVWVNdlK9JT5ZJ7cQ0CWLgcgNEUblPiIjws9/qD
	 Paa8n+8/mvheKJOgOozCjO/Tokv8wEBVNJKwt6vqjSjpesNPLoOMNqtuWC/tOv6/z+
	 JFIvzub2HjNHw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 10/11] clk: nxp: lpc: Remove NOMMU platform support
Reply-To: sashiko-reviews@lists.linux.dev
To: Frank.Li@oss.nxp.com
Cc: robh@kernel.org, imx@lists.linux.dev, conor+dt@kernel.org, devicetree@vger.kernel.org, Frank.Li@kernel.org
In-Reply-To: <20260619-dts_cleanup_arm_mcore-v1-10-0101795a2662@nxp.com>
References: <20260619-dts_cleanup_arm_mcore-v1-0-0101795a2662@nxp.com>
 <20260619-dts_cleanup_arm_mcore-v1-10-0101795a2662@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jun 2026 15:58:28 +0000
Message-Id: <20260619155829.BE1391F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313908-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@oss.nxp.com,m:robh@kernel.org,m:imx@lists.linux.dev,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1F7A76A6FC0

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Mischaracterized platform deletion: LPC32xx is an MMU-enabled plat=
form, not NOMMU.
- [Low] Incomplete architecture removal leaves orphaned peripheral drivers =
as dead code.
--

commit 6253e432d16195a0666c33f89bdf6509acf7cdf3
Author: Frank Li <Frank.Li@nxp.com>

clk: nxp: lpc: Remove NOMMU platform support

This commit removes the NXP LPC clock drivers to reduce maintenance burden,
stating that the NOMMU platform support is obsolete, unused, and
unmaintained as users have migrated to other RTOS solutions.

> clk: nxp: lpc: Remove NOMMU platform support
>=20
> Commercial users and hardware vendors migrated to Zephyr or other RTOS
> solutions years ago, leaving the NOMMU platform support effectively
> unused and unmaintained.

[ ... ]

> diff --git a/drivers/clk/nxp/Makefile b/drivers/clk/nxp/Makefile
> deleted file mode 100644
> index 2cf6317d28531..0000000000000
> --- a/drivers/clk/nxp/Makefile
> +++ /dev/null
> @@ -1,5 +0,0 @@
> -# SPDX-License-Identifier: GPL-2.0-only
> -obj-$(CONFIG_ARCH_LPC18XX)	+=3D clk-lpc18xx-cgu.o
> -obj-$(CONFIG_ARCH_LPC18XX)	+=3D clk-lpc18xx-ccu.o
> -obj-$(CONFIG_ARCH_LPC18XX)	+=3D clk-lpc18xx-creg.o
> -obj-$(CONFIG_ARCH_LPC32XX)	+=3D clk-lpc32xx.o

[Severity: High]
Is this justification accurate for all removed platforms? The commit message
states this is removing NOMMU platform support, but the LPC32xx platform
uses an ARM926EJ-S core. This core features a full Memory Management Unit
(MMU) and runs standard virtual-memory Linux.

Was LPC32xx swept up by mistake because it resided in the same directory as
the NOMMU LPC18xx platform, or is the commit message mischaracterizing an
MMU platform deletion?

[ ... ]

> diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
> index cc108a75a9008..23b14a934635d 100644
> --- a/drivers/clk/Makefile
> +++ b/drivers/clk/Makefile
> @@ -136,7 +136,6 @@ obj-y					+=3D mstar/
>  obj-y					+=3D mvebu/
>  obj-$(CONFIG_ARCH_MXS)			+=3D mxs/
>  obj-$(CONFIG_ARCH_MA35)			+=3D nuvoton/
> -obj-$(CONFIG_COMMON_CLK_NXP)		+=3D nxp/

[Severity: Low]
Does this incomplete architecture removal leave orphaned peripheral drivers
as dead code elsewhere in the tree?

Because the ARCH_LPC18XX and ARCH_LPC32XX Kconfig symbols have been deleted,
their associated peripheral drivers (e.g., in drivers/gpio, drivers/pwm,
drivers/net, drivers/iio) can now only be built when COMPILE_TEST is
enabled and will never be executed. Could these peripheral drivers be
removed atomically alongside the platform deletion?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260619-dts_cleanu=
p_arm_mcore-v1-0-0101795a2662@nxp.com?part=3D10

