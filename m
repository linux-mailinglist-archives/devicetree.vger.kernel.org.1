Return-Path: <devicetree+bounces-304730-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEcTHu0mG2qS/ggAu9opvQ
	(envelope-from <devicetree+bounces-304730-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 20:05:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BDA610F4C
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 20:05:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8E3FA3057963
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 18:02:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05ACC355F53;
	Sat, 30 May 2026 18:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfuFHwpP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF45823392B
	for <devicetree@vger.kernel.org>; Sat, 30 May 2026 18:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780164167; cv=none; b=DlRxlvDsE9Do3kmfY6B8QpyV2pgAnScJWkXdiuhqc6FU/jl8PiHWTOjVp0qOhq8jt17FHcmlyV46MWX2cnlhHBTqnBkmaYmuQc1Pf56rg/4S+gJ4FugdzL3Y0xo1odiPmP5jzy2sARvjH5ZWQ0RB75PD15VNrYvO1GQx+E1Shp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780164167; c=relaxed/simple;
	bh=tp4mzTkZYbnYHBpLFiwClAMHHh8aQweKFdsSIQ3gFng=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=daODeerFKf1NhifaaBY9zQucNwGXW6TB8s9N8nlz0E8oF5BBsQAWv8vyUGZWem2+a4WtvWctIG0i4qo+T2jsodvdH+wZuhhRdxIyaGxoOhU6niYyVDFAHDetMXNBtRPAcfmOJ2hPdfdqyqv9D2uoVPfzVZxUvk+wsPl/vdoUu2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfuFHwpP; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 841F71F00893;
	Sat, 30 May 2026 18:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780164166;
	bh=KZrLnOcbYaJOtbNYKetDU0AZxXptZ/ed8tyONJCPiak=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LfuFHwpPvnc0oWzoSNZNOYZMKZIa/yKYBoqGSgaIDaeY+VLCAKYXFUPQmlzFPfCAJ
	 YVYWWCI1Ll9IZ9fA2Ou8UU2EzwEs7GEt2Uh/tCwZlPufesV6hoZkZdlT3XUJzepI8R
	 MLG7bX6lQ9Dc1Hx3FYJ9rRGKBLls+eOx/tWst7Da3VAlmg6Miz+V+v1eO3Fqb1tKr4
	 e3ZIh0OGBFXOQPvjmlTJ8YP2+VfrFiBkSO6FHs55BGoR61r6fs87SwZfSendz0c7in
	 srdve9RwC3IqzAjQh7NAe90YXj0IAdUEEtpbEYij7cIdf586malZM0ydB4Frigc/Bp
	 STiHAm30/De6g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 RESEND 5/5] riscv64: dts: sophgo: add initial Milk-V
 Duo S board support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Joshua Milas" <josh.milas@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260530173347.33533-6-josh.milas@gmail.com>
References: <20260530173347.33533-6-josh.milas@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 30 May 2026 18:02:46 +0000
Message-Id: <20260530180246.841F71F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-304730-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,milkv.io:url]
X-Rspamd-Queue-Id: E9BDA610F4C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Missing `pinctrl-0` properties for enabled peripherals, relying =
unsafely on bootloader pin multiplexing.
- [Medium] Unstable device enumeration due to incomplete MMC aliases.
--

commit 28d2e18610b4be21ce587f3639e449ae96302be3
Author: Joshua Milas <josh.milas@gmail.com>

riscv64: dts: sophgo: add initial Milk-V Duo S board support
   =20
This adds initial riscv support for the Milk-V Duo S board, making it
possible to boot Linux to the command line.
   =20
Link: https://milkv.io/duo-s [1]

> diff --git a/arch/riscv/boot/dts/sophgo/sg2000-milkv-duo-s.dts b/arch/ris=
cv/boot/dts/sophgo/sg2000-milkv-duo-s.dts
> new file mode 100644
> index 0000000000000..8632470f43ab0
> --- /dev/null
> +++ b/arch/riscv/boot/dts/sophgo/sg2000-milkv-duo-s.dts
> @@ -0,0 +1,85 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +
> +/dts-v1/;
> +
> +#include "sg2000.dtsi"
> +
> +/ {
> +	model =3D "Milk-V Duo S";
> +	compatible =3D "milkv,duo-s", "sophgo,sg2000";
> +
> +	aliases {
> +		i2c4 =3D &i2c4;
> +		mmc0 =3D &sdhci0;

[Severity: Medium]
Will omitting aliases for the other enabled MMC controllers (&emmc and
&sdhci1) cause unstable device enumeration?=20

The Linux MMC core relies on these aliases for stable block device numbering
(/dev/mmcblkX). Without explicit aliases for all enabled controllers, their
indices might be assigned dynamically based on asynchronous probe ordering,
which could swap block device numbers unexpectedly across reboots.

> +		serial0 =3D &uart0;
> +		spi3 =3D &spi3;
> +	};

[ ... ]

> +&emmc {
> +	bus-width =3D <4>;
> +	no-1-8-v;
> +	cap-mmc-hw-reset;
> +	no-sd;
> +	no-sdio;
> +	non-removable;
> +	status =3D "okay";
> +};

[Severity: Medium]
Do the peripherals enabled in this device tree, such as &emmc, &sdhci0, and
&uart0, need pinctrl-0 properties to define their hardware pin states?

Relying entirely on the bootloader's initial pin multiplexing configuration=
=20
can break power management features like suspend and resume, or impact syst=
em
stability if the kernel needs to restore pin parameters dynamically.

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260530173347.3353=
3-1-josh.milas@gmail.com?part=3D5

