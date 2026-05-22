Return-Path: <devicetree+bounces-301967-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UAHwDjSIEGriYwYAu9opvQ
	(envelope-from <devicetree+bounces-301967-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 18:45:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B875B7B45
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 18:45:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3179D30037F6
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 16:42:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30EE644CADF;
	Fri, 22 May 2026 16:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1FwT286"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C914C1DE4FB
	for <devicetree@vger.kernel.org>; Fri, 22 May 2026 16:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779468166; cv=none; b=geyO/1lb0j6TWTKJ//biqM/pJMVRh6GyW4+PzljMfa94grBTnrqcKxUfUofgfI73h6ygST24a0GSxMkGIbAMVBJoL1yPTKs8oJsnr2DxlnPVRL9MOkUVbzWUPbqXV6zsPGAiSouoCEY9VK/v2EKMchmxfAnxYWcDWLS/Y4v3FxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779468166; c=relaxed/simple;
	bh=69bMvy/+BmM76+sEKAN3XRVMNKhe72ktNflkkWfarUI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=nChFjoQeRnAl2SoJtkW0GnO1671Z6vQLKPeLWwRyRduFWVbJiQdYm1tr3Tg3SCfFzu9q/Uj2dOic8Nv0ON+hVszAZ7+WPWzFLCbWnX8XozHzmOuAa6Ly259o9xLySLDCmXsDp86kj6L7w6oxVXvG0qyAWV4HnthduDEAssPaoFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1FwT286; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AF761F000E9;
	Fri, 22 May 2026 16:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779468157;
	bh=E4MyW2Fk6sFaVP8SqwI929d5x+IQpqh/bDQchbr8hRs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=b1FwT286woSjgYXgkYhtS6ramFgeLDSQjCJ0wxXohVDfZ12IIrvHV12IHP/IkL3WG
	 rqrmhymxgfXsOA466f4YRBhMDB/FTWMCvCLcUy9JuPA3qh+FBApUgHUDlDkkG4kgt9
	 pA7h9aYy2wzX/CsMr2Fx9BdRvMamWflhT7xlOfwUyB4XUHqZBMD9PJhwxa6K5X4wtC
	 xYWnZc7Qxmp9giUz0cpsZ3/9gmyL+vaDzQZ3JJcKuI/oj5kJ88aFKZ1dg27Hbv8nTD
	 3vvo8jshDkUSo/5oxwneSbUIk1jeBKykQP5Preb0oL4DeIvGlZLRXZ2YH7+pQJ3yH7
	 zyjUgetAcpchw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 06/11] arm64: dts: ti: k3-am62-verdin: Add Toradex
 Capacitive Touch Display 7" DSI
Reply-To: sashiko-reviews@lists.linux.dev
To: "Vitor Soares" <ivitro@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260522161105.277519-19-ivitro@gmail.com>
References: <20260522161105.277519-19-ivitro@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 May 2026 16:42:36 +0000
Message-Id: <20260522164237.2AF761F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-301967-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.996];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.41:email,lists.linux.dev:replyto,sashiko.dev:url,toradex.com:url,toradex.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 91B875B7B45
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The touchscreen controller interrupt is incorrectly configured a=
s `IRQ_TYPE_EDGE_RISING` for an active-low hardware signal (`TOUCH_INT#`).
--

commit 6d0e51f377bc6e97b677eab7ee35406d648f228c
Author: Vitor Soares <vitor.soares@toradex.com>

arm64: dts: ti: k3-am62-verdin: Add Toradex Capacitive Touch Display 7" DSI

This commit adds a device tree overlay for the Toradex Capacitive Touch
Display 7" DSI on the Verdin DSI_1 interface. The display uses an SN65DSI83
bridge and an Ilitek ILI2132 capacitive touch controller.

Link: https://developer.toradex.com/hardware/accessories/displays/capacitiv=
e-touch-display-7inch-dsi
Link: https://developer.toradex.com/hardware/accessories/add-ons/dsi-displa=
y-adapter/

> diff --git a/arch/arm64/boot/dts/ti/k3-am625-verdin-panel-cap-touch-7inch=
-dsi.dtso b/arch/arm64/boot/dts/ti/k3-am625-verdin-panel-cap-touch-7inch-ds=
i.dtso
> new file mode 100644
> index 0000000000000..1f44133f9ca66
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-am625-verdin-panel-cap-touch-7inch-dsi.dt=
so

[ ... ]

> +	touchscreen@41 {
> +		compatible =3D "ilitek,ili2132";
> +		reg =3D <0x41>;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_dsi1_int>, <&pinctrl_i2s_2_bclk_gpio>;
> +		/* Verdin GPIO_9_DSI (SODIMM 17) - TOUCH_INT# */
> +		interrupt-parent =3D <&main_gpio1>;
> +		interrupts =3D <49 IRQ_TYPE_EDGE_RISING>;

[Severity: Medium]
Does this interrupt type cause a deadlock with the touchscreen controller?

The comment indicates the hardware signal is active-low (TOUCH_INT#), which
is typical for I2C touch controllers like the ILI213x series. If the touch
controller asserts the interrupt by driving the line low and waits for the
host to read the data via I2C before releasing the line high, configuring
the host to wait for a rising edge could result in the interrupt handler
never being invoked.

Should this use an active-low or falling edge trigger instead?

> +		/* Verdin I2S_2_BCLK (SODIMM 42) - TOUCH_RESET# */
> +		reset-gpios =3D <&main_gpio0 35 GPIO_ACTIVE_LOW>;
> +	};
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260522161105.2775=
19-13-ivitro@gmail.com?part=3D6

