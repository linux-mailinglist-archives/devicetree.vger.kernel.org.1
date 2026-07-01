Return-Path: <devicetree+bounces-318423-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rwc5CQkCRWra4woAu9opvQ
	(envelope-from <devicetree+bounces-318423-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:03:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 648316ED095
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:03:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CqjYJkLi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318423-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318423-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 400103019505
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD04C419307;
	Wed,  1 Jul 2026 12:02:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94E6737700A;
	Wed,  1 Jul 2026 12:02:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782907375; cv=none; b=t2+mqE39Vzb2vtDELFDvVJfk16rMAu4ke4MPLOm9d+6Q3CzUHdiIhD5HXaOPOyw3Cvr+qg49qT5Jy96tbytuV4ntye0K4VfQcfshAc4zQWRpu9hAZKf+lTSfwohkb7Hu00h5Krf6cZ1kW7XP4WIz1cy57UwInioGnEzv3zE8xy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782907375; c=relaxed/simple;
	bh=m4/HNV4rnM3tJy+esWQK7GK/npFCqs+2NUfBE4FO0R8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Ns89r7cObhFAQaLORVBpavt3xtdJUCKCEHWjnNJjTw3RlJ4CCmD0xzZMJqhpHa03Lq0RZlVyEroU/+2EYfMYkUwBshCgbD1j8TS6qb1s8dtItmm1kgQjqB3sbOL75Wn2xWea+L79jUJbPw+mtV703/oCWoH3TSCOQ/8ZdBr1Cy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqjYJkLi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F24371F000E9;
	Wed,  1 Jul 2026 12:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782907374;
	bh=ZiqWmL4GUiT5usJeYzqh07JLhto0TN4lSRbdLr36BMU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CqjYJkLijh4Rlu9nX4tF/nXU8nOURZ4pbj1gK/kVLvgWv8hH+hC607PgdUh1mZyA2
	 us6oIi1xQWXD8H/YjGq8EDAnlYHTe7Ee6awV02wfraWLJYmgq35Jl/+oPv2/ziz+Su
	 a2wiMrCtSLdiKVgx3UTQmVVLuQe/ltweH4aFBKKfJvyCnSwu3y4TZUstlJ86zrfC2q
	 8R4GH5LnWHC4dvQ9OPbcs6cpzVi/yZzZiJCaKG9I9gGju7BmPmEQ1W5E67k8hbQOxZ
	 BpBgtWMmwcWBUhFLv9I5IlyciLJEd3pnMD3zszj7sqZB0cp+28Qb3gglECXK3H1VKp
	 kZZXr8tYnZvAA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: s32g: describe GPIO and EIRQ resources
 in SIUL2 pinctrl node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Khristine Andreea Barbulescu" <khristineandreea.barbulescu@oss.nxp.com>
Cc: Frank.Li@kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260701115120.1115494-2-khristineandreea.barbulescu@oss.nxp.com>
References: <20260701115120.1115494-1-khristineandreea.barbulescu@oss.nxp.com>
 <20260701115120.1115494-2-khristineandreea.barbulescu@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 12:02:53 +0000
Message-Id: <20260701120253.F24371F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-318423-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,nxp.com:email,smtp.kernel.org:mid,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:khristineandreea.barbulescu@oss.nxp.com,m:Frank.Li@kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 648316ED095

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The `gpio-ranges` property incorrectly exposes non-existent pins=
 by spanning across an unmapped hardware gap.
- [Low] The patch adds new properties and expands the `reg` array without u=
pdating the corresponding device tree schema.
--

commit affdc0c44669a05cd149cc0e3b877996d58cc004
Author: Khristine Andreea Barbulescu <khristineandreea.barbulescu@oss.nxp.c=
om>

arm64: dts: s32g: describe GPIO and EIRQ resources in SIUL2 pinctrl node

Update the SIUL2 pinctrl node to describe the additional register ranges and
DT properties used by the updated SIUL2 driver. This includes PGPDO and
PGPDI registers for GPIO operations and an EIRQ register window for interru=
pts.

> diff --git a/arch/arm64/boot/dts/freescale/s32g2.dtsi b/arch/arm64/boot/d=
ts/freescale/s32g2.dtsi
> --- a/arch/arm64/boot/dts/freescale/s32g2.dtsi
> +++ b/arch/arm64/boot/dts/freescale/s32g2.dtsi
> @@ -135,7 +135,26 @@ pinctrl: pinctrl@4009c240 {
>  				/* IMCR119-IMCR397 registers on siul2_1 */
>  			      <0x44010c1c 0x45c>,
>  				/* IMCR430-IMCR495 registers on siul2_1 */
> -			      <0x440110f8 0x108>;
> +			      <0x440110f8 0x108>,
> +				/* PGPDO registers on siul2_0 */
> +			      <0x4009d700 0x10>,

[Severity: Low]
Is there an accompanying update to the device tree schema?=20

Adding these new properties and expanding the reg array to 11 items without=
=20
updating the nxp,s32g2-siul2-pinctrl.yaml schema will likely cause=20
make dtbs_check to fail with validation errors.

> +				/* PGPDI registers on siul2_0 */
> +			      <0x4009d740 0x10>,

[ ... ]

> +			gpio-controller;
> +			#gpio-cells =3D <2>;
> +			gpio-ranges =3D <&pinctrl 0 0 102>,
> +					<&pinctrl 112 112 79>;

[Severity: Medium]
Does this 79-pin span expose phantom GPIOs?

It appears this range spans across an unmapped hardware gap, which would ex=
pose
21 phantom GPIOs (123-143) to userspace. Attempting to request them from us=
erspace
would fail with -EINVAL.

Should this be split into 11 and 47 pin ranges to account for the 21-pin ga=
p?

> +
> +			interrupt-controller;

[ ... ]

> diff --git a/arch/arm64/boot/dts/freescale/s32g3.dtsi b/arch/arm64/boot/d=
ts/freescale/s32g3.dtsi
> --- a/arch/arm64/boot/dts/freescale/s32g3.dtsi
> +++ b/arch/arm64/boot/dts/freescale/s32g3.dtsi
> @@ -193,7 +193,26 @@ pinctrl: pinctrl@4009c240 {
>  				/* IMCR119-IMCR397 registers on siul2_1 */
>  			      <0x44010c1c 0x45c>,
>  				/* IMCR430-IMCR495 registers on siul2_1 */
> -			      <0x440110f8 0x108>;
> +			      <0x440110f8 0x108>,
> +				/* PGPDO registers on siul2_0 */
> +			      <0x4009d700 0x10>,

[Severity: Low]
Does the nxp,s32g2-siul2-pinctrl.yaml schema need updating here as well to
prevent dtbs_check validation errors?

> +				/* PGPDI registers on siul2_0 */
> +			      <0x4009d740 0x10>,

[ ... ]

> +			gpio-controller;
> +			#gpio-cells =3D <2>;
> +			gpio-ranges =3D <&pinctrl 0 0 102>,
> +					<&pinctrl 112 112 79>;

[Severity: Medium]
Will this similarly expose the unmapped hardware gap and present phantom GP=
IOs
to userspace?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701115120.1115=
494-2-khristineandreea.barbulescu@oss.nxp.com?part=3D1

