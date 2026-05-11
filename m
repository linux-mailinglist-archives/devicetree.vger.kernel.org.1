Return-Path: <devicetree+bounces-295888-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHzqKKdtAmpMswEAu9opvQ
	(envelope-from <devicetree+bounces-295888-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 02:00:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFE6517B21
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 02:00:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 05A8330055F1
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 23:59:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E46BB36A363;
	Mon, 11 May 2026 23:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qwiO02CF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C11E436A357
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 23:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778543962; cv=none; b=iJhg1BxZsMiSpFuatJwp48XryaSBq+gdwzCanfmcaGIs8grmb7MvtC/pIu1DWONJTK0VdTKChx6Ydfq/ynrcS3unuoS9rdh3RVu8jD5L5pQ6A+Jymwv1vSnaH5TX4IH0hKgnBxwMaDTlEr974tu4XQG/wtSiuGoENkxynnkJ+dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778543962; c=relaxed/simple;
	bh=tmnqng4jp6jFNO1AFPRHuf11jmge16qy6NsehbOetWY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=YMHbDzUbKwyYZDPrf5dmMyXpZqgYDzLuLTV19lLXfkGGDQp/qjQdNOBGeQWWVJFJL30DPY+iyyIB5nGcoi5u8Hy2dEljHcAGlIVkW+ZwbXPzcmDf52X+9cKAQXq30xr9Te+e6iSHSAr8J6vZ6VFJtVDhPtFSoWJL+pmGopgb2Lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qwiO02CF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10315C2BCB0;
	Mon, 11 May 2026 23:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778543962;
	bh=tmnqng4jp6jFNO1AFPRHuf11jmge16qy6NsehbOetWY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=qwiO02CFBtOceKdmqEhela5HqepInn2lYt86jJHB0D6OJGDCdi39KImhgjjehNj62
	 Xf9CpBKU2CITNUyMS8wymMbuvs37v2cU1aSBscXANK1JznQvVt+ExBm5Br5b9OhLZw
	 salnOn5dWc41aEwJqx0509e3N+i5XLDBnTIrJD6WutrgW/Dwc0BrCZVt+nFHbGktXU
	 32rc6U2Aftyhpk8Kcj9Q7phDVHh+9gF2LNvNFmHoBR5E39S1y0wX4j0hUoAbN+hL2c
	 KlIaTwz+yheAmSSII3gaRjLM005K+mefPJmJ/k7EyxBR0GdL4BUi2vn+4wTVcqPhTT
	 wljWJwMbrD9qw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/4] arm64: dts: cix: add Sky1 USB4 and USB5 controllers
Reply-To: sashiko@lists.linux.dev
To: "Peter Chen" <peter.chen@cixtech.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260511024244.981941-5-peter.chen@cixtech.com>
References: <20260511024244.981941-5-peter.chen@cixtech.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 11 May 2026 23:59:21 +0000
Message-Id: <20260511235922.10315C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: ABFE6517B21
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295888-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [Medium] Missing `status =3D "disabled";` for `usb4` and `usb5` device no=
des in the SoC-level device tree.
- [Medium] Invalid double-vendor prefix in compatible string and squashing =
of SoC-specific glue layer with generic IP core.
- [Low] Unnecessary inclusion of `<dt-bindings/phy/phy.h>` in `sky1.dtsi` w=
ithout associated PHY definitions.
- [Low] Redundant/duplicate interrupt mappings for the `wakeup` interrupt.
--

commit a270480764c96a27fe2e14e30bfb46b99527fcfb
Author: Peter Chen <peter.chen@cixtech.com>

arm64: dts: cix: add Sky1 USB4 and USB5 controllers

Add the Sky1 USB4 and USB5 Cadence USB3 controller nodes with their
registers, interrupts, clocks, resets and S5 syscon control. Enable both
ports on the Orion O6 board in host mode with the required VBUS pinctrl.

> diff --git a/arch/arm64/boot/dts/cix/sky1.dtsi b/arch/arm64/boot/dts/cix/=
sky1.dtsi
> index bb5cfb1f21133..9f7d9ad6586c3 100644
> --- a/arch/arm64/boot/dts/cix/sky1.dtsi
> +++ b/arch/arm64/boot/dts/cix/sky1.dtsi
> @@ -6,6 +6,8 @@
> =20
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/clock/cix,sky1.h>
> +#include <dt-bindings/phy/phy.h>

Since there are no phys properties or macros from this header used in the
patch, is this inclusion needed?

> +#include <dt-bindings/reset/cix,sky1-s5-system-control.h>
>  #include "sky1-power.h"
> =20
>  / {

[ ... ]

> @@ -504,6 +506,72 @@ mbox_ap2sfh: mailbox@80a0000 {
>  			cix,mbox-dir =3D "tx";
>  		};
> =20
> +		usb4: usb@91d0000 {
> +			compatible =3D "cix,sky1-usb3", "cix,cdns-usb3";

Does the "cix,cdns-usb3" string incorrectly combine two vendor prefixes?
Should the generic fallback be "cdns,usb3"?

> +			reg =3D <0x00 0x91d0000 0x00 0x4000>,
> +					<0x00 0x91d4000 0x00 0x4000>,
> +					<0x00 0x91d8000 0x00 0x8000>,
> +					<0x00 0x91c0314 0x00 0x4>;
> +			reg-names =3D "otg", "dev", "xhci", "glue";

Does adding the "glue" register and cix,syscon-usb to the generic core
break the generic upstream schema which expects only three reg entries?

Should the SoC-specific glue logic be implemented as a parent wrapper node
with a child node for the generic Cadence USB3 core instead?

> +
> +			interrupts =3D <GIC_SPI 252 IRQ_TYPE_LEVEL_HIGH 0>,	/* host irq */
> +					<GIC_SPI 252 IRQ_TYPE_LEVEL_HIGH 0>,	/* peripheral irq */
> +					<GIC_SPI 253 IRQ_TYPE_LEVEL_HIGH 0>,	/* otgirq */
> +					<GIC_SPI 252 IRQ_TYPE_LEVEL_HIGH 0>;	/* wakeup irq */

The wakeup interrupt uses the same GIC SPI line as the main host and
peripheral interrupts. Is this redundant, and could it lead to conflicting
interrupt registration?

[ ... ]

> +			cix,syscon-usb =3D <&s5_syscon>;
> +			dma-coherent;
> +			maximum-speed =3D "super-speed-plus";
> +			dr_mode =3D "otg";
> +		};

Should this node include a status =3D "disabled" property so the USB driver=
s do
not probe unconditionally on all boards using this SoC?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511024244.9819=
41-1-peter.chen@cixtech.com?part=3D4

