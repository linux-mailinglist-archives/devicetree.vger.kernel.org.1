Return-Path: <devicetree+bounces-301453-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +AaHKUpQD2pEJAYAu9opvQ
	(envelope-from <devicetree+bounces-301453-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 20:34:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5DC85AB185
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 20:34:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 11B2230F3C9B
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 17:30:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1560C3E172D;
	Thu, 21 May 2026 17:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUhSTBYm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C34912F9DA1;
	Thu, 21 May 2026 17:30:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779384622; cv=none; b=mlUlERWSgRzlEn30cuCP06yIZmoWjkcSiOxoTkyoVCB8uVBm1YcSiYd31dcsN3gdXrBudMpewIWHf/cDWarjBEqaU/wiMViUfb/kwAeiqsxfZQJA2m05rSXwDzuKs8u6HK3gWnkLiuZkH5OdRnWnoT6iq1eLJ5ofDEx3LvFxvgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779384622; c=relaxed/simple;
	bh=OlNqmeui+cpmy8Iowi2tl+N6zKfaammDMIENaa21R5U=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=I6lkiLstTFHynLggBzbtV/LZR3VUSzcwkzUj7pw41zx4zHqtMV9VOuqzZESMxgi316ztADu7siYaKMWeia+jTHHCWdiKoTI7mSa8B3EdiPhuvVLF/uTdQXFhrxSiA0kcGFKBSOdKu4LZX3sQ6UkLoZxBfYIeGX4H9aEPFRy5BPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUhSTBYm; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A03E1F000E9;
	Thu, 21 May 2026 17:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779384620;
	bh=X2bg+L3XfdpbesakUz3ZHBqtrMvx+hp8jzQJ8KVvhxk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TUhSTBYmHOJ5i5rCparJkisWlcmdBVf0xmCe1JZZSoWyJz/8AF0sVQ/VGpqipMH8+
	 0Jy9Fsv2zTJxRsGzAgd/kj1SgNvb0VCK2s8+SnAITy7IrhXO41CqJ1KSx1NqdHy5B/
	 DmoDJYj6jWuwaeF+q+5n27P8K3M/EpZ4felVopi5yZYeLBNLpQOLKzd0rMh9IZEQVd
	 edDkuwm2ZJo1sxjRxZmFl8pOZIX52eIgAeeFD9wgia6+KoDV/o5GFzkANB61SENcum
	 jDZkIUhMTC3nec/sI3fXndav/Tq9f8zHsOXm325FSYTLYLDdYi3K17zZpDTKFS1lrh
	 Zsi/s9kmzPv7A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/3] arm64: dts: freescale: add Aquila iMX95 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Franz Schnyder" <fra.schnyder@gmail.com>
Cc: devicetree@vger.kernel.org, Frank.Li@kernel.org, robh@kernel.org, conor+dt@kernel.org, imx@lists.linux.dev
In-Reply-To: <20260521-add-aquila-imx95-v4-2-5a7f86c824f5@toradex.com>
References: <20260521-add-aquila-imx95-v4-2-5a7f86c824f5@toradex.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 May 2026 17:30:19 +0000
Message-Id: <20260521173020.0A03E1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-301453-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,toradex.com:url,toradex.com:email,lists.linux.dev:replyto];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: A5DC85AB185
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The DisplayPort connector references a disabled DisplayPort brid=
ge, leaving dangling references and rendering the connector non-functional =
while wasting power.
- [Medium] The dedicated power supply regulator for the disabled DSI-to-DP =
bridge is incorrectly marked as always-on, wasting power.
--

commit 3392fc6b669bcc9dccbd369d342a80d81c494ed6
Author: Jo=C3=A3o Paulo Gon=C3=A7alves <joao.goncalves@toradex.com>

arm64: dts: freescale: add Aquila iMX95 support

This commit adds support for the Toradex Aquila iMX95 computer-on-module
and its corresponding development carrier board.

Link: https://www.toradex.com/computer-on-modules/aquila-arm-family/nxp-imx=
95
Link: https://www.toradex.com/products/carrier-board/aquila-development-boa=
rd-kit

> diff --git a/arch/arm64/boot/dts/freescale/imx95-aquila-dev.dts b/arch/ar=
m64/boot/dts/freescale/imx95-aquila-dev.dts
> new file mode 100644
> index 0000000000000..3df17700b632f
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx95-aquila-dev.dts
> @@ -0,0 +1,389 @@
[ ... ]
> +	aliases {
> +		eeprom1 =3D &carrier_eeprom;
> +	};
> +
> +	dp_1_connector: dp0-connector {
> +		compatible =3D "dp-connector";
> +		dp-pwr-supply =3D <&reg_dp_3p3v>;
> +		type =3D "full-size";
> +
> +		port {
> +			dp_1_connector_in: endpoint {
> +				remote-endpoint =3D <&dsi2dp_out>;
> +			};
> +		};
> +	};

[Severity: Medium]
Since som_dsi2dp_bridge is disabled by default in imx95-aquila.dtsi and not
explicitly enabled in this device tree, does this connector node leave
dangling references?

Without status =3D "disabled" on this node, the display-connector driver wi=
ll
probe successfully and unconditionally enable its dp-pwr-supply (reg_dp_3p3=
v),
wasting power on the carrier board for an unusable interface.

Should this connector be disabled by default or have the bridge enabled her=
e?

> diff --git a/arch/arm64/boot/dts/freescale/imx95-aquila.dtsi b/arch/arm64=
/boot/dts/freescale/imx95-aquila.dtsi
> new file mode 100644
> index 0000000000000..69dc962a24a1d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx95-aquila.dtsi
> @@ -0,0 +1,1160 @@
[ ... ]
> +	reg_dp_1p2v: regulator-dp-1p2v {
> +		compatible =3D "regulator-fixed";
> +		/* CTRL_DP_BRIDGE_EN */
> +		gpios =3D <&som_gpio_expander_0 7 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		regulator-always-on;
> +		regulator-max-microvolt =3D <1200000>;
> +		regulator-min-microvolt =3D <1200000>;
> +		regulator-name =3D "On-module +V1.2_DP";
> +		vin-supply =3D <&reg_1p8v>;
> +	};

[Severity: Medium]
Since this regulator is a dedicated power supply for som_dsi2dp_bridge which
is marked as status =3D "disabled" below, is it necessary to have the
regulator-always-on property here?

The always-on property bypasses the driver and forces the regulator core to
unconditionally assert the CTRL_DP_BRIDGE_EN GPIO at boot, continuously
powering the bridge chip on the module even when disabled.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260521-add-aquila=
-imx95-v4-0-5a7f86c824f5@toradex.com?part=3D2

