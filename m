Return-Path: <devicetree+bounces-303190-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDhDA31GFmqUkAcAu9opvQ
	(envelope-from <devicetree+bounces-303190-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 03:18:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBEB5DE31E
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 03:18:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6AD3C30056FD
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 01:18:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D32811E8320;
	Wed, 27 May 2026 01:18:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dS1hUBaj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4DB71925BC;
	Wed, 27 May 2026 01:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779844729; cv=none; b=Yl8xQH68kZLgkm4Drr7OGczlq9wi1En1JhKacYVkApbxcPK/zCpw5x1QoD1bEvaqmHznM6zhQlM1LfRnqb/D8TizeEvlYnrDJLN2DGgUGpRaac9MDKpT5Hnhcn0muMASw4CRpO+YiOGSWXcUsT9C5SZFpXJnRknB+Vg/JVT3Omc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779844729; c=relaxed/simple;
	bh=m4ydhKBOgp2A6lRPucpqqDrP6ym8hIHiFiWLXXDcbPc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=keONNhrKtJal4n1vSPxMk+EtYSR02g011Rfn4f6hJC+T/1vcv03LaN78eMKQ4Z4yuqEA4OlB7P9c/MBpnchMDku3dUPgjy/x6RUw6NcGdoWMREIwC6A1kraWxECAYG0BeFDoAD/Pou0jFn5CcLHsLejs6I0nFCM2SEvJ/FnPaE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dS1hUBaj; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E86941F000E9;
	Wed, 27 May 2026 01:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779844728;
	bh=hwHD+K7NrxW9gP2PfEJb5h2hhANOKfeJR1tdZF4qzkc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dS1hUBajh9du3+bzIC78NC51IGf5CDCCX1Iml/IEnj0bsnrT619Lii46KPPfjO+9e
	 x1n6mhvsJ3BOuPkktVXTx509VHEQSNbqLWFyzn+eHdBDXwfEsrG4RDmLHR3Okw1LiF
	 DO4NuPOhOHjjv5zwE/N1Aqfy0G/105L6Payu5e+bnrjinVBs2X/hvraB7XjvpcmVxl
	 jnwNQEVfix5AWbDdTEz925h2dN7T3VhoH9jYWCnPauuvxxCoueFx9czyzaBBbSkHMn
	 OLld9uY8eNuCsXv4Mazk+Cgxolxv3I/LmijsLj8RUKJ5y9IOrULyiWbG5oSYv+ndmh
	 GsDQSww70pIYQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] ARM: dts: imx7d-pico-pi: add OV5645 camera support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Lech Perczak" <lech.perczak@gmail.com>
Cc: conor+dt@kernel.org, imx@lists.linux.dev, robh@kernel.org, devicetree@vger.kernel.org, Frank.Li@kernel.org
In-Reply-To: <20260527005213.6019-1-lech.perczak@gmail.com>
References: <20260527005213.6019-1-lech.perczak@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 27 May 2026 01:18:47 +0000
Message-Id: <20260527011847.E86941F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[3c:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,0.0.0.0:email,lists.linux.dev:replyto];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-303190-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.38:email];
	NEURAL_HAM(-0.00)[-0.997];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 5BBEB5DE31E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Critical] The OV5645 digital core voltage (`vddd-supply`) is mapped to a=
 1.8V regulator, violating the sensor's maximum voltage rating.
- [High] The MIPI CSI core wrap clock is severely underclocked to 24MHz, ca=
using performance bottlenecks and dropped frames.
--

commit dd6924fa219eeb7e7a60387b7bc6b921c2ef8a7b
Author: Lech Perczak <lech.perczak@gmail.com>

ARM: dts: imx7d-pico-pi: add OV5645 camera support

Add OV5645 camera device node and enable relevant components in the video
capture data path. It establishes an image path through MIPI-CSIS and CSI
peripherals to capture pictures at 1280x960px resolution.

Link: https://github.com/technexion-android/kernel_imx/blob/ce8fd74abf518da=
c0a09e8dcb37f3496f6375124/arch/arm/boot/dts/imx7d-pico.dtsi#L874 [1]

> diff --git a/arch/arm/boot/dts/nxp/imx/imx7d-pico-pi.dts b/arch/arm/boot/=
dts/nxp/imx/imx7d-pico-pi.dts
> index 62221131336f1..6a6c3c743b41b 100644
> --- a/arch/arm/boot/dts/nxp/imx/imx7d-pico-pi.dts
> +++ b/arch/arm/boot/dts/nxp/imx/imx7d-pico-pi.dts
> @@ -59,6 +59,33 @@ polytouch: touchscreen@38 {
>  		touchscreen-size-x =3D <800>;
>  		touchscreen-size-y =3D <480>;
>  	};
> +
> +	camera@3c {
> +		compatible =3D "ovti,ov5645";
> +		reg =3D <0x3c>;
> +
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_camera>;
> +
> +		clocks =3D <&clks IMX7D_CLKO1_ROOT_DIV>;
> +		assigned-clocks =3D <&clks IMX7D_CLKO1_ROOT_DIV>;
> +		assigned-clock-rates =3D <24000000>;
> +
> +		enable-gpios =3D <&gpio1 4 GPIO_ACTIVE_HIGH>;
> +		reset-gpios =3D <&gpio1 5 GPIO_ACTIVE_LOW>;
> +
> +		vdda-supply =3D <&reg_2p5v>;
> +		vdddo-supply =3D <&reg_vref_1v8>;
> +		vddd-supply =3D <&reg_vref_1v8>;

[Severity: Critical]
Is the vddd-supply voltage correct here?

According to the ovti,ov5645.yaml bindings and hardware specifications, the
digital core voltage (vddd-supply) should strictly be 1.5V.

Connecting this to a 1.8V regulator appears to subject the sensor to an
overvoltage condition that exceeds its maximum ratings, which might lead to
overheating or hardware damage.

> +
> +		port {
> +			ov5645_to_mipi_csi2: endpoint {
> +				remote-endpoint =3D <&mipi_csi2_in>;
> +				clock-lanes =3D <0>;
> +				data-lanes =3D <1 2>;
> +			};
> +		};
> +	};
>  };
> =20
[ ... ]
> +&mipi_csi {
> +	status =3D "okay";
> +	assigned-clocks =3D <&clks IMX7D_MIPI_CSI_ROOT_CLK>;
> +	assigned-clock-rates =3D <24000000>;

[Severity: High]
Could this be the cause of the performance bottleneck mentioned in the
commit message?

The nxp,imx-mipi-csi2.yaml bindings indicate that the CSI core wrap clock
should be configured to 166MHz (<166000000>).

Setting it to 24MHz limits the processing bandwidth to ~24 Mpixels/sec,
which seems insufficient for streaming uncompressed 1280x960 video. Setting
the clock to 166MHz might resolve the underpowered streaming performance.

> +
> +	ports {
> +		port@0 {
> +			reg =3D <0>;
> +
> +			mipi_csi2_in: endpoint {
> +				remote-endpoint =3D <&ov5645_to_mipi_csi2>;
> +				data-lanes =3D <1 2>;
> +			};
> +		};
> +	};
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260527005213.6019=
-1-lech.perczak@gmail.com?part=3D1

