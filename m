Return-Path: <devicetree+bounces-316378-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Hgb4M1HvQGp7jgkAu9opvQ
	(envelope-from <devicetree+bounces-316378-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 11:54:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D236D389D
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 11:54:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=mzd+Tp4D;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316378-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316378-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3F0F5300B849
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 09:54:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1618334DCD6;
	Sun, 28 Jun 2026 09:54:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED8E13B293
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 09:54:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782640462; cv=none; b=paBxun04vnmIBRn1pWtsmUurpg5JPsXhZPUGSOfbaBilYqmuqbXQWmdJMhKs6xi42Yp9nhltlowA4yIThIQ6qAIxO9FZDI1VkZ3uGhYzpAewGLQ8zGqks9dThN2INVoOwJ3lcLkQclFPa+YKX9qtMLc3JQadTKfpjZkNSi9LTek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782640462; c=relaxed/simple;
	bh=VKG2LTyNWHPsuXAnVR/OH4qbydOIehYZyPJ53WQabQ0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=TKQjs0MBJNQ3BuWdC57LApG0ZldnsdXBB1l6Uiwzi4neGKtUdAnTYr8P+fZ7pCozTXOa/4elEcf7uIpVz4AjN9/Nk6oAlRy8KDpMtl05oSVCVOur2D0+KztLEbadelSEw+CccKz0+gBP1rGVNRmLWLZYBe5lhlKc9GNzbxunhoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzd+Tp4D; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A7751F000E9;
	Sun, 28 Jun 2026 09:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782640460;
	bh=ENf0mPe0yNUM9dnrmy8ZsdpsfXeW6P2IURf27LmX1ag=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mzd+Tp4DiRVUHaI19F7SOXvmpP0MTXGqeVqtwVXDGAvXWAjCDSdmpMwZfPzV7+Bef
	 XRyia0H7ZChVGN2K63LqpqF+anvX2XC7rDiJnw/xcU7pg1V6xme5nJPP/9RuZdlgKt
	 JhUbZk5skHDYRCe1RZECFCGrIBquxzzHmle0YKcV7TLeqsTeCCU7r1JmX9YzxNF6Bi
	 KVa87ER0Ne7YrWs5ZzVBFHkKSy/OxDweV7zY+Ku7ZbYl+JO8dTIRy9dbNHLNNCWbZ3
	 zGIlgN9iAcANvb/Ib7WR9D883C7CUhwH55skYyACAy88C28kHVff4WqjQxJlVXKU+n
	 KNG0jEV+/0OSg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 3/4] arm64: dts: qcom: Add HONOR MagicBook Art 14
 device tree
Reply-To: sashiko-reviews@lists.linux.dev
To: "Konstantin Shabanov" <mail@etehtsea.me>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260628094031.54452-4-mail@etehtsea.me>
References: <20260628094031.54452-1-mail@etehtsea.me>
 <20260628094031.54452-4-mail@etehtsea.me>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 28 Jun 2026 09:54:19 +0000
Message-Id: <20260628095420.4A7751F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-316378-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:mail@etehtsea.me,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,etehtsea.me:email,sashiko.dev:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 34D236D389D

Thank you for your contribution! Sashiko AI review found 5 potential issue(=
s) to consider:
- [High] Mismatch between touchpad interrupt GPIO and its pinctrl configura=
tion.
- [Medium] Type-C SBU (Sideband Use) routing is omitted from the USB-C conn=
ectors in `pmic-glink`, breaking the DisplayPort Alt Mode AUX channel.
- [Medium] QMP DisplayPort PHY is directly connected to `hdmi-connector` wi=
thout an intervening DP-to-HDMI bridge node.
- [Medium] Both WooferRight and TweeterRight are routed to the same 'WSA2 W=
SA_SPK2 OUT' source widget.
- [Medium] The touchscreen reset pin (gpio48) is configured in pinctrl but =
never driven to an active output state.
--

commit 856d8e361f3fb8f4f8c9dce853782183cccf8f2e
Author: Konstantin Shabanov <mail@etehtsea.me>

arm64: dts: qcom: Add HONOR MagicBook Art 14 device tree
   =20
Introduce support for the HONOR MagicBook Art 14 laptop.
This version is based on the initial work by Kirill A. Korinsky
and Valentin Manea.

Link: https://lore.kernel.org/all/871px910m1.wl-kirill@korins.ky/
Link: https://github.com/vamanea/linux-magicbook/blob/x1e80100-magicbook-6.=
19/arch/arm64/boot/dts/qcom/x1e80100-honor-magicbook-art-14.dts
Link: https://github.com/alsa-project/alsa-ucm-conf/pull/755

> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-honor-magicbook-art-14.dts=
 b/arch/arm64/boot/dts/qcom/x1e80100-honor-magicbook-art-14.dts
> new file mode 100644
> index 0000000000000..b3113a0ee9283
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-honor-magicbook-art-14.dts
[ ... ]
> +	hdmi-connector {
> +		compatible =3D "hdmi-connector";
> +		type =3D "a";
> +
> +		pinctrl-0 =3D <&hdmi_hpd_default>;
> +		pinctrl-names =3D "default";
> +
> +		port {
> +			hdmi_con: endpoint {
> +				remote-endpoint =3D <&usb_1_ss2_qmpphy_out_dp>;
> +			};
> +		};
> +	};

[Severity: Medium]
Is this missing an active DP-to-HDMI bridge node? The Snapdragon QMP DP PHY
outputs native DisplayPort signaling, but the remote-endpoint is directly
connected to an hdmi-connector node here.

Because the SoC does not support native TMDS (HDMI) output, this bypasses t=
he
necessary hardware bridge, which can leave the bridge unmanaged by the kern=
el.

[ ... ]
> +	pmic-glink {
> +		compatible =3D "qcom,x1e80100-pmic-glink",
[ ... ]
> +		/* Left-side port, closer to the screen */
> +		connector@0 {
> +			compatible =3D "usb-c-connector";
> +			reg =3D <0>;
> +			power-role =3D "dual";
> +			data-role =3D "dual";
> +
> +			ports {
> +				#address-cells =3D <1>;
> +				#size-cells =3D <0>;
> +
> +				port@0 {
[ ... ]
> +				port@1 {
[ ... ]
> +			};
> +		};

[Severity: Medium]
Does this routing omit the Type-C SBU (Sideband Use) ports? DisplayPort Alt
Mode requires the SBU lines for the AUX channel.

Without a port@2 node for SBU routing, the orientation switch cannot correc=
tly
flip the AUX channel lines, which will likely break DisplayPort link traini=
ng.

[ ... ]
> +	sound {
> +		compatible =3D "qcom,x1e80100-sndcard";
> +		model =3D "X1E80100-HONOR-MagicBook-Art-14-Snapdragon";
> +		audio-routing =3D "WooferLeft IN", "WSA WSA_SPK1 OUT",
> +				"TweeterLeft IN", "WSA WSA_SPK2 OUT",
> +				"WooferRight IN", "WSA2 WSA_SPK2 OUT",
> +				"TweeterRight IN", "WSA2 WSA_SPK2 OUT",

[Severity: Medium]
Are both the WooferRight and TweeterRight meant to map to the exact same
output source widget (WSA2 WSA_SPK2 OUT)? This leaves WSA2 WSA_SPK1 OUT
unused and might prevent the right audio channels from mixing and playing
properly.

[ ... ]
> +&i2c1 {
> +	clock-frequency =3D <400000>;
> +
> +	status =3D "okay";
> +
> +	touchpad@5d {
> +		compatible =3D "hid-over-i2c";
> +		reg =3D <0x5d>;
> +
> +		hid-descr-addr =3D <0x1>;
> +		interrupts-extended =3D <&tlmm 24 IRQ_TYPE_LEVEL_LOW>;
[ ... ]
> +		pinctrl-0 =3D <&tpad_default>;
> +		pinctrl-names =3D "default";

[Severity: High]
Could there be a mismatch between the interrupt GPIO and the pinctrl
configuration here?

The interrupts-extended property declares the interrupt on gpio24, but the
tpad_default node configured below targets gpio3:

[ ... ]
> +&tlmm {
[ ... ]
> +	tpad_default: tpad-default-state {
> +		pins =3D "gpio3";
> +		function =3D "gpio";
> +		bias-disable;
> +	};

This might lead to an improperly biased interrupt line for the touchpad,
resulting in spurious interrupts or failure of touchpad input.

[ ... ]
> +	ts0_default: ts0-default-state {
> +		reset-n-pins {
> +			pins =3D "gpio48";
> +			function =3D "gpio";
> +			drive-strength =3D <16>;
> +		};

[Severity: Medium]
Should this reset pin be actively driven high, or managed by the hid-over-i=
2c
touchscreen driver?

The pin is configured in pinctrl but lacks an explicit state (like output-h=
igh)
and is not assigned to a reset-gpios property in the touchscreen node. This
could leave the GPIO floating or in a bootloader-assigned state, potentially
causing the touchscreen to fail initialization or sporadically reset.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260628094031.5445=
2-1-mail@etehtsea.me?part=3D3

