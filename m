Return-Path: <devicetree+bounces-297840-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CAJyC3xRBmpQigIAu9opvQ
	(envelope-from <devicetree+bounces-297840-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 00:49:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BAD547929
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 00:49:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8CFD0300FA89
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 22:49:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 294A0388E6E;
	Thu, 14 May 2026 22:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojnYP6HV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0647B37F73E
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 22:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778798969; cv=none; b=uyMvQ4v5jLrE1ruFrw2ovy2+6T41vBuXt3py3s4Vyz1+aTvccwLXzmaf37sBA9dBx9pa/9oHHLCOMD2yjr5nF9U93h/VJ1NR7dL1KkvlI8wXB4cY5vu0mYgvd+0e0kr63Izam6SAaOlfGGzFCVk9ggzPMPsjotSAGuP3ySD7rYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778798969; c=relaxed/simple;
	bh=zrZrukZ8vbYDu6FNJNHrbhHZQRXMB22BfSseLCLQWrs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=aBN9UWSCpsyzWByalKbJsixKPZ6yDtpKt1uqw9S+CReJL2A95aQ6Ibo1KBsG1mpVXvf5/4VB/YhTUJNKeEAkf1/jYq9DWX/X893z6efibgpZGkByVnonA8QjES9C7D7JYU3p5dggPODKTdl5ar5rXY+IBSAyJ5Ksom3ZhfX2IV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojnYP6HV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58AD2C2BCB3;
	Thu, 14 May 2026 22:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778798968;
	bh=zrZrukZ8vbYDu6FNJNHrbhHZQRXMB22BfSseLCLQWrs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=ojnYP6HVZV82BuMZiPqJ8SQxvtzPP1DSZKwsJR3LQ4btVTGTQeaBQyGxO0Uxptnh2
	 o2+HaPiwu9gvfgMWw2j8Ko28Qz36vMSPZjLAGCdoLGTVc2ognbewTNVEG46ofaJG52
	 33RAFdmByb/RbjQK/WRuR/kB+YRtDeg0XazRoZKtq10eYsY6NfbKaIEULo52gEMZzu
	 9dH5Q06dIZKCPQGrz/D5DAE7ryhp+BbO4ebRNLiw6tp3nCkQZzWtXLl7urqXliK9+E
	 BrlKMpXqfb6HE0GKCDhVLTiDEzLgkVt5N0L74V3hjUPqF4MnOmA7Sb/L51pKWDN6J9
	 KA/MrDJc1CZJw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v22 07/13] power: reset: Add psci-reboot-mode driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Shivendra Pratap" <shivendra.pratap@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260514-arm-psci-system_reset2-vendor-reboots-v22-7-28a5bde07483@oss.qualcomm.com>
References: <20260514-arm-psci-system_reset2-vendor-reboots-v22-7-28a5bde07483@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 22:49:27 +0000
Message-Id: <20260514224928.58AD2C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: C0BAD547929
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297840-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Medium] Leaked predefined reboot modes if devm_reboot_mode_register() fa=
ils.
- [Low] Missing explicit header inclusions for macros.
- [Low] Missing MODULE_DESCRIPTION macro.
--

commit 4f9479b4f7059dfd06d1f3ce3dd92984cbf01921
Author: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>

power: reset: Add psci-reboot-mode driver

This commit adds a psci-reboot-mode driver to handle predefined and
vendor-specific PSCI resets via the reboot-mode framework. It allows
userspace to trigger supported PSCI resets using standard reboot system
calls.

[ ... ]

> diff --git a/drivers/power/reset/psci-reboot-mode.c b/drivers/power/reset=
/psci-reboot-mode.c
> new file mode 100644
> index 0000000000000..845b2a1816ce5
> --- /dev/null
> +++ b/drivers/power/reset/psci-reboot-mode.c
> @@ -0,0 +1,72 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#include <linux/device.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/psci.h>
> +#include <linux/reboot-mode.h>
> +#include <linux/types.h>

This isn't a bug, but does this file need to explicitly include linux/bits.h
for the BIT_ULL macro, and linux/array_size.h for ARRAY_SIZE? Relying on
indirect inclusion can sometimes lead to sudden build failures if upstream
headers change.

[ ... ]

> +static int psci_reboot_mode_probe(struct platform_device *pdev)
> +{
> +	struct reboot_mode_driver *reboot;
> +	size_t count;
> +	int ret;
> +
> +	reboot =3D devm_kzalloc(&pdev->dev, sizeof(*reboot), GFP_KERNEL);
> +	if (!reboot)
> +		return -ENOMEM;
> +
> +	reboot_mode_driver_init(reboot, &pdev->dev, psci_reboot_mode_write);
> +
> +	/* Skip PSCI SYSTEM_RESET2 modes if unsupported */
> +	count =3D psci_has_system_reset2_support() ? ARRAY_SIZE(psci_resets) : =
1;
> +	ret =3D reboot_mode_add_predefined_modes(reboot, psci_resets, count);
> +	if (ret)
> +		return ret;
> +
> +	return devm_reboot_mode_register(&pdev->dev, reboot);

Does this leak the dynamically allocated predefined modes if
devm_reboot_mode_register() fails?

Looking at reboot_mode_add_predefined_modes(), it allocates mode_info struc=
ts
and adds them to reboot->predefined_modes. If devm_reboot_mode_register()
fails (for example, if its internal devres_alloc() returns -ENOMEM), it sim=
ply
returns the error without calling reboot_mode_register().

While devres will clean up the reboot object itself, is there any mechanism
that frees the mode_info items added to the predefined_modes list on this
error path?

> +}

[ ... ]

> +module_platform_driver(psci_reboot_mode_driver);
> +
> +MODULE_LICENSE("GPL");

This isn't a bug, but should there be a MODULE_DESCRIPTION macro here to av=
oid
warnings or build failures with recent compiler checks?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260514-arm-psci-s=
ystem_reset2-vendor-reboots-v22-0-28a5bde07483@oss.qualcomm.com?part=3D7

