Return-Path: <devicetree+bounces-326312-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8SYiGuxGVmra2gAAu9opvQ
	(envelope-from <devicetree+bounces-326312-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 16:25:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C15EC755C76
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 16:25:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="D/ZYIeaW";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326312-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-326312-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 645D630527FD
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 14:16:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A311844BC8E;
	Tue, 14 Jul 2026 14:16:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E272371873;
	Tue, 14 Jul 2026 14:16:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784038581; cv=none; b=rpCfiGmpVpTnFTQ9EV7+07gldi78slnwN7xJ/hsz3cKRhDiVAazvAGWVGAYO8hXJv3WlMGlzyaVrufud8CznxsKK0bvuZnTYwmmdcIwiAXGhCwSQ2KNJb0m5lZ6hrWQ7KZlA4BjbB9nrnVgSi6K9ukkrldCRyX0H86tcFioD3VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784038581; c=relaxed/simple;
	bh=I1F+k0/Ovc5VE6IAlEeHYCbNgycCUS0XXyO+te2mD5Y=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=IT4/KSIhRYo6RZ+dN74D9WGZlw0lOI04kgl61JhideST5ngxhu8oC4qDiIQ6zKRXCBvrunsiUD7ZUZUIXnyXbZfbXmQQGphtO681O3AMYxlwdcLcfiKrJMR63t9nhZj879fM6F75Sre4ODdJUPOD1KdYn8sgbWL2vzgGgvAJwHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/ZYIeaW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B83751F000E9;
	Tue, 14 Jul 2026 14:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784038580;
	bh=lLVrfoXMGq8pQDepO4QNRhRo81VpqIrrZ3kRASH402U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=D/ZYIeaWRZWR4oAvKCnt02vHGBIjNcsyER1J6y938lEN+U3kd1U2L7WRvtfYpIkqZ
	 Qk7tg+7us4IIe7oC/teKqx9equ+SFw7sbblwdlwQDQmfbKsi2qZsYb5h4bYMws5fyo
	 Q7u2uNbjCjghHyFoQTFM2WQY2WPyaSEDvLF1FO3qmML8WL8lqh0wxOPK/nFRzDhzEv
	 Vjn9EJWvYXAI39LvWeaVuTMVna8X6y7Dtb4qu30h7q/qZ52dydtv20r8l/ROiTwtMR
	 PySGrs/+qyi8a+EC/cBoRzNjidkbBsYn+SZyMLUxm0rAQ5lJ/nN8DdP6nVX0WJaz3p
	 qMsjdCYvVQnDw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 6/6] arm64: dts: imx8dxl-evk: add lcdif overlay
Reply-To: sashiko-reviews@lists.linux.dev
To: Frank.Li@oss.nxp.com
Cc: Frank.Li@kernel.org, robh@kernel.org, conor+dt@kernel.org, imx@lists.linux.dev, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
In-Reply-To: <20260714-dxl_lcdif-v1-6-6761a8a6592b@nxp.com>
References: <20260714-dxl_lcdif-v1-0-6761a8a6592b@nxp.com>
 <20260714-dxl_lcdif-v1-6-6761a8a6592b@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 14:16:19 +0000
Message-Id: <20260714141619.B83751F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326312-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@oss.nxp.com,m:Frank.Li@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:imx@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,nxp.com:email,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C15EC755C76

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Overwriting `fsl,pins` in `pinctrl_hog` drops required system pin =
configurations, breaking GPIO expander interrupts.
--

--- Patch [6]: [PATCH 6/6] arm64: dts: imx8dxl-evk: add lcdif overlay ---
commit 85ecae823587c53fd00cdb23710f7c3efd6f900e
Author: Frank Li <Frank.Li@nxp.com>

arm64: dts: imx8dxl-evk: add lcdif overlay

This commit adds device tree overlay support for the waiken,101wx001 LCD
panel on the imx8dxl-evk. It adds the overlay to the Makefile and
introduces the new .dtso file that disables conflicting peripherals and
reconfigures pinmuxes for LCDIF.

> diff --git a/arch/arm64/boot/dts/freescale/imx8dxl-evk-lcdif.dtso b/arch/=
arm64/boot/dts/freescale/imx8dxl-evk-lcdif.dtso
> new file mode 100644
> index 0000000000000..c0e573fb5f915
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8dxl-evk-lcdif.dtso
[ ... ]
> +&iomuxc {
> +	pinctrl_hog: hoggrp {
> +		fsl,pins =3D <
> +			IMX8DXL_COMP_CTL_GPIO_1V8_3V3_GPIORHB_PAD  0x000514a0
> +		>;
> +	};
> +};

[Severity: High]
Does this unintentionally overwrite the base device tree's fsl,pins array f=
or
pinctrl_hog?

Because device tree overlays replace array properties instead of merging
them, redefining fsl,pins in pinctrl_hog to resolve a pin conflict will drop
the other pins defined in the base tree's 4-pin array.

Specifically, this deletes the mux configurations for
IMX8DXL_COMP_CTL_GPIO_1V8_3V3_GPIORHK_PAD and
IMX8DXL_SNVS_TAMPER_OUT1_LSIO_GPIO2_IO05_IN.

Since LSIO_GPIO2_IO05 serves as the interrupt line for the pca6416_3 I2C GP=
IO
expander, will dropping this configuration break all interrupts routed thro=
ugh
the expander?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-dxl_lcdif-=
v1-0-6761a8a6592b@nxp.com?part=3D6

