Return-Path: <devicetree+bounces-305677-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 36xpFg7fHmonXAAAu9opvQ
	(envelope-from <devicetree+bounces-305677-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 15:47:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id F176C62EA32
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 15:47:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Dwq8ExOY;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305677-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-305677-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3D9AF30D4145
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 13:38:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5CF73E9286;
	Tue,  2 Jun 2026 13:37:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91D793E832A
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 13:37:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780407462; cv=none; b=aa883SI0gCR/Kf3PeF4pL9kuGCoX8AFjkUCKwQHtgJNc/Pa57yRoAQ7sNRSDAcGcd2cHUD2v78dfJtAmDEAXEV2HO99OlcC1riYtzGEaxKbO5lbgD8dBd0xS44aZ4KQ+0m/ZWlDTV8HTX/tydAePr3bTJCGgLkTOoe+7+6t789s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780407462; c=relaxed/simple;
	bh=JafP0oqOE4F+jDG2z4RuvOJVVTNMFBblYrqUW8Krqgw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=iRT+KaVS7QDeik8Q4marOc2Bx0PXLiiKQSSYe09RAqEKxwP9dQx7ouUsmL1ygn4kCZFT924qOi2lDG7aGcATP3J2ksyLBZ7eXsING6sewfXUg0gGlA0jyhVnwxfY79k0RNZWSrVE2bF4Mdk9Bj35C0qe1lk2K7fPX3Appjfb1NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dwq8ExOY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07B431F00893;
	Tue,  2 Jun 2026 13:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780407461;
	bh=8sWW89OLbJ0x5gVduEZOo5cWOaby3macAaHiGaWrRAE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Dwq8ExOYh3Q7Ts1FHGE+tiRAlF1vfxqCXM6HBspcV6lM02XQ2ZNktv0K+JFf4mvSm
	 ML8J9Obyl6kRKJ99cyQ6Rhs8n0M9BENXSAYmwjrcBtv9bRgpHHiRcbFCUbMnvN3N/N
	 3b7xYmqvmHgPDqzAdF3pWl84Bt+2+ReMpwY24qnrnqxW98/efOr4/SEWilxGqLx2w3
	 2olnmn3HlC+/BlT3Ovfl540+GvC0VOxTo6kR4/htgVChP34uvFE3Pgw4+72OCU/7L6
	 5HXYYTdJDUZzow4EtBRu4xfGLUoOPbnzX1F8DQ7lsn7kg2rVCApSJRl5vEq9NcTDE+
	 /KBwChEiQTEBg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/9] ARM: dts: aspeed: anacapa: add EVT1 devicetree
 and point wrapper to it
Reply-To: sashiko-reviews@lists.linux.dev
To: "Colin Huang via B4 Relay" <devnull+u8813345.gmail.com@kernel.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260602-anacapa-devlop-phase-devicetree-v3-2-7c93c5df8d9b@gmail.com>
References: <20260602-anacapa-devlop-phase-devicetree-v3-2-7c93c5df8d9b@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 02 Jun 2026 13:37:40 +0000
Message-Id: <20260602133741.07B431F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-305677-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+u8813345.gmail.com@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,u8813345.gmail.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F176C62EA32

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Critical] Removal of the generic 'facebook,anacapa-bmc' compatible strin=
g from the root node breaks backward compatibility.
- [Low] Including a `.dts` file directly from another `.dts` file instead o=
f using a `.dtsi`, and failing to register the new `.dts` in the Makefile.
--

commit 07c91fec99a871ad9f2589f35f8c19205df00ae9
Author: Colin Huang <u8813345@gmail.com>

ARM: dts: aspeed: anacapa: add EVT1 devicetree and point wrapper to it

This change introduces a development-phase devicetree for the Facebook Anac=
apa
BMC EVT1 hardware revision and updates the Anacapa wrapper DTS to reference=
 it.

> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa-evt1.dt=
s b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa-evt1.dts
> new file mode 100644
> index 0000000000000..9314ee493c617
> --- /dev/null
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa-evt1.dts
> @@ -0,0 +1,1103 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
> +/dts-v1/;

[Severity: Low]
Is this intended to be compiled independently as a top-level board?

Files that are included by other device trees usually use the .dtsi extensi=
on
and omit the /dts-v1/; tag. This file is also not added to the Makefile.

> +#include "aspeed-g6.dtsi"
> +#include <dt-bindings/gpio/aspeed-gpio.h>
> +#include <dt-bindings/i2c/i2c.h>
> +
> +/ {
> +	model =3D "Facebook Anacapa BMC";
> +	compatible =3D "facebook,anacapa-bmc-evt1", "aspeed,ast2600";

[Severity: Critical]
Does the removal of the generic "facebook,anacapa-bmc" compatible string
break backward compatibility with existing bootloaders or management tools?

Replacing the wrapper file with an include to this one completely removes t=
he
original compatible string from the output DTB.=20

Could this include a fallback like the following?
compatible =3D "facebook,anacapa-bmc-evt1", "facebook,anacapa-bmc", "aspeed=
,ast2600";

[ ... ]

> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts b/a=
rch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
> index 1fddf3a5d1383..209eef65cedbc 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
> @@ -1,1079 +1,4 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later
> =20
> -/dts-v1/;
> -#include "aspeed-g6.dtsi"
> -#include <dt-bindings/gpio/aspeed-gpio.h>
> -#include <dt-bindings/i2c/i2c.h>
> +#include "aspeed-bmc-facebook-anacapa-evt1.dts"

[Severity: Low]
Is there a reason to include a .dts file directly instead of using a .dtsi?

Using a .dts as an include bypasses standalone syntax checks and compilatio=
n.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260602-anacapa-de=
vlop-phase-devicetree-v3-0-7c93c5df8d9b@gmail.com?part=3D2

