Return-Path: <devicetree+bounces-304020-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJ4XIaHiGGo0oggAu9opvQ
	(envelope-from <devicetree+bounces-304020-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 02:49:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DDABF5FBC26
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 02:49:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C93863070F01
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 00:48:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DCC019067C;
	Fri, 29 May 2026 00:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3K9RJbY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375848834
	for <devicetree@vger.kernel.org>; Fri, 29 May 2026 00:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780015711; cv=none; b=LPlB4AFy/z8h+616L6l0J5kVF8RXrx9v27JoP2uWiFHLVM5GYPvhqzj3OTR/0xePIRomjH3qv2++MZWiuRpvNUcx3jEacxyB0i+OV3i4icXQvCSNqUax5Kp93M3JzUrGPoYdiwnq7bCXg3wrlTv5Ayrm1D0YyFonCA45G3aVQH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780015711; c=relaxed/simple;
	bh=ym7uOg8SHPA3ZcVlgH+orFRvuseLSD+dSaLHXkWs+Lc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gviYkDAFJl1tqGr8Meb0aa/Es+ZhoAFjeAffBEcJYjilWfR7WE3siJGR5wlN5atVESNsgdpkpBven2gGlG7HYK8O4l+5a7rLvuWp+cqi9+utLuKDedMU/zWsGoBe2tZLtERhX2sdPrxxq+fu5JXclnMKLxDOr2dykiT87oeHtto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3K9RJbY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B3341F000E9;
	Fri, 29 May 2026 00:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780015709;
	bh=hbHAuzW2gKquTZkFhBznH3CiRXGoZlUB3WBuWzOiC5s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=d3K9RJbYM7EV+8hOeWDxwppimkKuaIzarGuSTRCcKHOi8mrDbvgc8hCeeH9YTY8wj
	 ORSsYrvU6ONkumkFkIjXKLZ4u5QXgE0DBjrS2YbXSdOywUgC9fQvKy+LJp+ZEgr8tD
	 Ef1Cu0lkkt837Q8p3V/RojRJKF1AojOUTMjx3KKV7R35VZiDviqNWsiNbGE622LZCN
	 YxorjnbAMU084grMsA2ZTOqHaNKSqFr8d4EPpRZBdQe//ICuMQ2lpqKDxKq2HB8rDL
	 8F9J2vgb/B7xaj1KSBQEOmiO17qRIhM4jnP7C8vQn1i+xugi2t4mQrhLtHfLQV2dta
	 evWdykuQ9XhPw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/4] bcma: support driver specific quirks from soc pdata
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alessio Ferri" <alessio.ferri@mythread.it>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260529-add-bcm6362-wlan-v1-1-722242777f58@gmail.com>
References: <20260529-add-bcm6362-wlan-v1-1-722242777f58@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 29 May 2026 00:48:28 +0000
Message-Id: <20260529004829.9B3341F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-304020-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mythread.it:email,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: DDABF5FBC26
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [High] Synthesized write to BCMA_IOCTL inadvertently clears bits 17-31 of=
 the SHIM Control register.
- [High] Missing `block_read` and `block_write` callbacks in `bcma_host_soc=
_ops_brcm_shim` will cause a NULL pointer dereference when CONFIG_BCMA_BLOC=
KIO is enabled.

Pre-existing issues:
- [High] The bcm47xx_wdt watchdog timer is not canceled when the platform d=
evice is unregistered during bus teardown, leading to a Use-After-Free when=
 the software timer expires.
--

commit dfe73fc3413d87faa9dc228ee7a188e34676dd31
Author: Alessio Ferri <alessio.ferri@mythread.it>

bcma: support driver specific quirks from soc pdata

This commit adds support for BMIPS xDSL SoCs by instantiating bcma-host-soc
programmatically and routing accesses through a SHIM Control register. It
also introduces big-endian accessors for SoCs where the AXI backplane
sits on a big-endian peripheral bus.

> diff --git a/drivers/bcma/host_soc.c b/drivers/bcma/host_soc.c
> index 20b1816c570b2..f39129fb9cf29 100644
> --- a/drivers/bcma/host_soc.c
> +++ b/drivers/bcma/host_soc.c
[ ... ]
> @@ -165,6 +166,195 @@ static const struct bcma_host_ops bcma_host_soc_ops=
 =3D {
[ ... ]
> +static void bcma_host_soc_synth_awrite32(struct bcma_device *core,
> +					 u16 offset, u32 value)
> +{
> +	void __iomem *ctrl_reg =3D bcma_host_soc_shim_ctrl_reg(core);
> +	u32 cur, new_val;
> +
> +	if (ctrl_reg) {
> +		switch (offset) {
> +		case BCMA_IOCTL:
> +			/* SICF low 16 bits =3D=3D BCMA_IOCTL. Preserve
> +			 * SICF_WOC_CORE_RESET (the RESET_CTL view) so an
> +			 * IOCTL write does not accidentally release reset.
> +			 */
> +			cur =3D ioread32be(ctrl_reg);
> +			new_val =3D (value & 0xFFFF) |
> +				  (cur & SICF_WOC_CORE_RESET);

[Severity: High]
Does this synthesized write inadvertently clear bits 17-31 of the SHIM Cont=
rol
register?

By only keeping SICF_WOC_CORE_RESET (bit 16) from the current register valu=
e,
all other bits from 17 to 31 will be dropped. If the hardware or firmware
relies on any configuration or state in those upper bits, this operation co=
uld
lead to register state corruption. Would a mask like (cur & ~0xFFFF) be bet=
ter
to preserve all unmanaged bits?

> +			iowrite32be(new_val, ctrl_reg);
> +			pr_debug("bcma: synth IOCTL core=3D0x%x SHIM %08x->%08x (req %08x)\n",
> +				 core->id.id, cur, new_val, value);
> +			return;
[ ... ]
> +static const struct bcma_host_ops bcma_host_soc_ops_brcm_shim =3D {
> +	.read8		=3D bcma_host_soc_read8,
> +	.read16		=3D bcma_host_soc_read16_be,
> +	.read32		=3D bcma_host_soc_read32_be,
> +	.write8		=3D bcma_host_soc_write8,
> +	.write16	=3D bcma_host_soc_write16_be,
> +	.write32	=3D bcma_host_soc_write32_be,
> +	.aread32	=3D bcma_host_soc_aread32_be,
> +	.awrite32	=3D bcma_host_soc_awrite32_be,
> +};

[Severity: High]
Can omitting block_read and block_write callbacks here cause a null pointer
dereference when CONFIG_BCMA_BLOCKIO is enabled?

If a driver like b43 configured in PIO mode calls the bcma_block_read() or
bcma_block_write() inline wrappers, those functions unconditionally call
core->bus->ops->block_read without checking if the pointer is null. Might
these functions need to be safely stubbed out?

> +
>  int __init bcma_host_soc_register(struct bcma_soc *soc)
>  {
[ ... ]
> @@ -245,7 +443,9 @@ static void bcma_host_soc_remove(struct platform_devi=
ce *pdev)
>  	struct bcma_bus *bus =3D platform_get_drvdata(pdev);
> =20
>  	bcma_bus_unregister(bus);

[Severity: High]
This is a pre-existing issue, but does unregistering the bus cause a
use-after-free with the bcm47xx_wdt watchdog timer?

Calling bcma_bus_unregister() unbinds the bcm47xx_wdt driver. Since the
driver lacks a remove function, it relies on devm_watchdog_unregister_device
for cleanup. However, it does not set WDOG_STOP_ON_UNREGISTER, so if the
watchdog was active, its software timer remains running.

Because the memory holding the timer resides in the platform data, which is
freed immediately upon unregister, will the timer dereference freed memory
when it expires?

> -	iounmap(bus->mmio);
> +	/* bus->mmio is devm-managed; shim_iomem is borrowed from the
> +	 * parent bridge driver and must not be unmapped here.
> +	 */
>  	platform_set_drvdata(pdev, NULL);
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260529-add-bcm636=
2-wlan-v1-0-722242777f58@gmail.com?part=3D1

