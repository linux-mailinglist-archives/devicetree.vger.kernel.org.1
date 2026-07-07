Return-Path: <devicetree+bounces-322164-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id arGvLgQaTWp5vAEAu9opvQ
	(envelope-from <devicetree+bounces-322164-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 17:23:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C3771D387
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 17:23:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eWp0Pt+R;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322164-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322164-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 279DB301C5B6
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 14:59:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A232E3750C9;
	Tue,  7 Jul 2026 14:59:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FF4236F8F9
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 14:59:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783436398; cv=none; b=glrHWrRmECaBgYdq4SDBQJ0XaZwOrxv6DjQyoHMKLB/g5/UAUmIirY6PWbKpxpJja5u3BF2HIr5EBubXlSSXqLxtK7dv/c5+9gSv45ihsTiR6YcgSG+XWJwZlNUbzGcvy0RxtBMuo5MCtcNur432+E+DSP5uAtcX+8OX1qfyUzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783436398; c=relaxed/simple;
	bh=TIfztXWYnIrZkb/ZScCNE2Hs1kmtYF/KQc3gysNoyxA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=HzlTSkLKKZDllXdSrbcZAoBR+UGaT1WvMrBcKTWXuj+vLmr/CvhQjFR1BbuOsNANn9do0Jn0yaqJJKfMV2TrDKJ2c6l4vrZglk2IoEqN7z98YOrIlDF3XVLgtUwqV+k5d+Y170+rKH2LV14BdrxldAoyLDWumegPCazm8CCw5u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWp0Pt+R; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C61911F00A3A;
	Tue,  7 Jul 2026 14:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783436397;
	bh=ZpVMRbhWgK11tYpFNVsqMqdwQ5a2afpA+BiSYkYD6Rg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eWp0Pt+Ra+MuJYbxsokw7geQ4zj1yaG0uXJt/ziU82EdkQbJ6hLRPejDPXU3dMOm9
	 i16sE6tfFN7kvcUHQk+Tdb/nLtRwbsKpNV+j1bhGDpEmf276Z2bQDMpezNMnE4StiY
	 RKf2cyQVVyPJvaN+oE23tJJFkVqU18wXabPQl3artr9jwTb8MTe3ghjPT3tGDgI8F4
	 20h7CIh30eJPeJ6axLTqfuDia6DhExDZLgI1d/Rwv6IYQXbWWWC67iJj4kkoD0QhgE
	 RXDOvpEn5QU1HpTpvdpluNE1vm0+k0MS80AKhGTCkco9jGIF0o0tMl8pfPeVoemIT9
	 NMe4uVl/yYOgw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 9/9] arm64: dts: renesas: r9a08g046l48-smarc: Add
 USB2.0 support
Reply-To: sashiko-reviews@lists.linux.dev
To: Biju <biju.das.au@gmail.com>
Cc: conor+dt@kernel.org, wsa+renesas@sang-engineering.com, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260707143646.245177-10-biju.das.jz@bp.renesas.com>
References: <20260707143646.245177-1-biju.das.jz@bp.renesas.com>
 <20260707143646.245177-10-biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 14:59:56 +0000
Message-Id: <20260707145956.C61911F00A3A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:biju.das.au@gmail.com,m:conor+dt@kernel.org,m:wsa+renesas@sang-engineering.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:bijudasau@gmail.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-322164-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
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
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 15C3771D387

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Using `module_platform_driver()` twice in the same C file causes a =
build failure due to the redefinition of `init_module` and `cleanup_module`.
--

--- Patch [9]: [PATCH v3 9/9] arm64: dts: renesas: r9a08g046l48-smarc: Add =
USB2.0 support ---
commit 5af51dcc7dc2267ce2a724cd23f6ac8e1361e710
Author: Biju Das <biju.das.jz@bp.renesas.com>

regulator: renesas-usb-vbus-regulator: Add RZ/G3L VBUS regulator support

This commit adds dual USB VBUS regulator support for the RZ/G3L SoC. It
introduces an array of regulator descriptors and a dedicated probe
function to register both regulators. A new platform driver is also added
to handle this dual regulator configuration.

> diff --git a/drivers/regulator/renesas-usb-vbus-regulator.c b/drivers/reg=
ulator/renesas-usb-vbus-regulator.c
> index 9ba791bd72eca..9028340008749 100644
> --- a/drivers/regulator/renesas-usb-vbus-regulator.c
> +++ b/drivers/regulator/renesas-usb-vbus-regulator.c

[ ... ]

> @@ -64,6 +108,15 @@ static struct platform_driver rzg2l_usb_vbus_regulato=
r_driver =3D {
>  };
>  module_platform_driver(rzg2l_usb_vbus_regulator_driver);
> =20
> +static struct platform_driver rzg3l_usb_vbus_regulator_driver =3D {
> +	.probe =3D rzg3l_usb_vbus_regulator_probe,
> +	.driver	=3D {
> +		.name =3D "rzg3l-usb-vbus-regulator",
> +		.probe_type =3D PROBE_PREFER_ASYNCHRONOUS,
> +	},
> +};
> +module_platform_driver(rzg3l_usb_vbus_regulator_driver);

[Severity: Low]
Will this regression cause a build failure when the driver is compiled as a
module?

Using module_platform_driver() twice in the same C file expands into
module_init() and module_exit() twice.

This creates conflicting global aliases for init_module and cleanup_module,
causing the compiler to flag a redefinition error.

Could these drivers be registered with a custom module_init() function
that registers both, or perhaps combined into a single driver using match d=
ata?

> +
>  MODULE_AUTHOR("Biju Das <biju.das.jz@bp.renesas.com>");
>  MODULE_DESCRIPTION("Renesas RZ/G2L USB Vbus Regulator Driver");
>  MODULE_LICENSE("GPL");

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707143646.2451=
77-1-biju.das.jz@bp.renesas.com?part=3D9

