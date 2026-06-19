Return-Path: <devicetree+bounces-313910-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MWo8C8hqNWo6vwYAu9opvQ
	(envelope-from <devicetree+bounces-313910-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 18:14:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 848B66A6FCE
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 18:13:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LKPXQHR4;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313910-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313910-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8418131B874B
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 16:01:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 258793BFE20;
	Fri, 19 Jun 2026 16:00:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6BA03BA237;
	Fri, 19 Jun 2026 16:00:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781884807; cv=none; b=FNSyVSRAOIIhRTLPhmkXc78nstOnyIg9gO6DyfeSe005eNyWKnEYhJycpAS0IPI5smO/c0ZBjObE+N4QqjPgX9bf1x6FN1hNIcNuZLE3Tf6Cs6KC4uDx8ywDGW0sB8vo9ch1meoXH7aE8yFNuXb4QcT5+HTXLFBsRpoRprh821E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781884807; c=relaxed/simple;
	bh=3bvRyUfTMExxv5DLEmw6jn5KBqMdikwwjNES8hO9eg0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=YAkXkDOlX6UIsQzRjHerui1RrZ7/SHJptmzfjttzYe7MHKIJ26fcbJ/rplYShM46/o/14dh5xW4bfBkSdTncMSWdlJziqZdVXTigYidU/9mmWemS3WQ9/C302ogyBonAV+i9KWdHotUvNIGMekXbBeTQtUsPrJWHpKAhYGnpIrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKPXQHR4; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C73E41F00A3A;
	Fri, 19 Jun 2026 16:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781884804;
	bh=SMOlTZVJ6a2FTmurycOTxIMqLtBP/9e+JEycA9WJdmE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LKPXQHR4DCKG2ulfggGb0kMeujZnclcYR6+w1tOopy8RtQlK6qeajFvZm2z58EBYi
	 LOpKckZ/MvIHfzuG23l118Fe/yfHq3MfTkWGOw6GbU/ODOiSZ3vbsraAcZV5JyEPo+
	 YTQOi1r/lgwAkyCzLP0nb5rAtruBC1d9g5hj5BNWsDMlaqpQ1hoXRi1IHFuC1zyDtE
	 mFrMr/RWGAD/0Zdg+HNW/q3AbybcsdUcSSYx4r5x6xcMEvBQXhTgu/cIzPMS5t1gPo
	 Di7irIhqJTwQgfH3/xmNshV7OqzvUjN35lFntpeSjtqlqGc9vgUd0OWcWhAB+8Pirm
	 Pw0DmALOJ6sNg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 08/11] ARM: mach-lpc: Remove NOMMU platform support
Reply-To: sashiko-reviews@lists.linux.dev
To: Frank.Li@oss.nxp.com
Cc: imx@lists.linux.dev, conor+dt@kernel.org, Frank.Li@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260619-dts_cleanup_arm_mcore-v1-8-0101795a2662@nxp.com>
References: <20260619-dts_cleanup_arm_mcore-v1-0-0101795a2662@nxp.com>
 <20260619-dts_cleanup_arm_mcore-v1-8-0101795a2662@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jun 2026 16:00:02 +0000
Message-Id: <20260619160003.C73E41F00A3A@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-313910-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,nxp.com:email,sashiko.dev:url];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@oss.nxp.com,m:imx@lists.linux.dev,m:conor+dt@kernel.org,m:Frank.Li@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
X-Rspamd-Queue-Id: 848B66A6FCE

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [High] Incorrect removal of an active MMU platform (LPC32xx) under the fa=
lse premise of removing NOMMU platforms.
- [High] Incomplete Kconfig cleanup leaves dangling dependencies across the=
 kernel, violating Kconfig subsystem rules.

Pre-existing issues:
- [High] Forcing the fallback stub for `lpc32xx_return_iram()` exposes a NU=
LL pointer dereference and a zero-sized DMA allocation bug in `lpc_eth.c`.
--

commit 19639a4680fe193e3e1ece890c77d5f80c446705
Author: Frank Li <Frank.Li@nxp.com>

ARM: mach-lpc: Remove NOMMU platform support

Commercial users and hardware vendors migrated to Zephyr or other RTOS
solutions years ago, leaving the NOMMU platform support effectively
unused and unmaintained.

Remove the obsolete support to reduce maintenance burden and simplify the
NXP/Freescale platform code.

> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 9187240a02db5..fe67d41f4a107 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig

[ ... ]

> @@ -401,8 +401,6 @@ source "arch/arm/mach-ixp4xx/Kconfig"
> =20
>  source "arch/arm/mach-keystone/Kconfig"
> =20
> -source "arch/arm/mach-lpc32xx/Kconfig"
> -

[Severity: High]
Does this removal leave dangling dependencies in other subsystems?

For example, drivers/net/ethernet/nxp/Kconfig has:
    depends on ARCH_LPC32XX || COMPILE_TEST

And arch/arm/Kconfig.debug has:
    depends on ARCH_LPC32XX

Since this patch deletes ARCH_LPC18XX and ARCH_LPC32XX but doesn't clean
up the references to them, will these become dead code that violate Kconfig
subsystem rules?

>  source "arch/arm/mach-mediatek/Kconfig"
> =20
>  source "arch/arm/mach-meson/Kconfig"

[ ... ]

> diff --git a/arch/arm/mach-lpc32xx/Kconfig b/arch/arm/mach-lpc32xx/Kconfig
> deleted file mode 100644
> index 138599545c24c..0000000000000
> --- a/arch/arm/mach-lpc32xx/Kconfig
> +++ /dev/null
> @@ -1,13 +0,0 @@
> -# SPDX-License-Identifier: GPL-2.0-only
> -
> -config ARCH_LPC32XX
> -	bool "NXP LPC32XX"
> -	depends on ARCH_MULTI_V5
> -	depends on CPU_LITTLE_ENDIAN
> -	select ARM_AMBA
> -	select CLKSRC_LPC32XX
> -	select CPU_ARM926T

[Severity: High]
Is LPC32XX actually a NOMMU platform?

Looking at the definition being removed here, it selects CPU_ARM926T and
depends on ARCH_MULTI_V5.

Since ARM926EJ-S features an MMU and runs standard Linux, does removing this
under the premise of removing NOMMU platforms accidentally delete an active,
MMU-equipped SoC?

[ ... ]

> diff --git a/arch/arm/mach-lpc32xx/common.c b/arch/arm/mach-lpc32xx/commo=
n.c
> deleted file mode 100644
> index 304ea61a07160..0000000000000
> --- a/arch/arm/mach-lpc32xx/common.c
> +++ /dev/null

[ ... ]

> -static u32 iram_size;
> -u32 lpc32xx_return_iram(void __iomem **mapbase, dma_addr_t *dmaaddr)
> -{

[Severity: High]
This is a pre-existing issue, but does removing ARCH_LPC32XX permanently
expose a bug in the lpc32xx_return_iram() fallback stub?

When the platform is removed, include/linux/soc/nxp/lpc32xx-misc.h
forces the use of the dummy implementation:

    static inline u32 lpc32xx_return_iram(void __iomem **mapbase,
                                          dma_addr_t *dmaaddr)
    {
        *mapbase =3D NULL;
        *dmaaddr =3D 0;
        return 0;
    }

This unconditionally dereferences the pointer arguments.

In drivers/net/ethernet/nxp/lpc_eth.c:lpc_eth_drv_remove(), the driver
passes NULL for these arguments:

    if (!use_iram_for_net(&pldat->pdev->dev) ||
        pldat->dma_buff_size > lpc32xx_return_iram(NULL, NULL))

Will forcing the fallback stub cause a NULL pointer dereference here?

Additionally, since the stub returns 0, lpc_eth_drv_probe() sets the
buffer size to 0:

    if (pldat->dma_buff_size >
        lpc32xx_return_iram(&pldat->dma_buff_base_v, &dma_handle)) {
            pldat->dma_buff_base_v =3D NULL;
            pldat->dma_buff_size =3D 0;

Could this result in a zero-sized DMA allocation being used as an array
for descriptors?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260619-dts_cleanu=
p_arm_mcore-v1-0-0101795a2662@nxp.com?part=3D8

