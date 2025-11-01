Return-Path: <devicetree+bounces-234018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CADA6C27D10
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 12:52:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 37D884E735B
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 11:51:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CABD2F3C35;
	Sat,  1 Nov 2025 11:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="s689bHBr"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C9A4134AB
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 11:51:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761997913; cv=none; b=C5qL4jXmIECbk/FBJsLNSVRrg8R9D3Cg3Hit/BdG9dbfRG5lY0MN1f0ad8OmK9IE0qi72NcpmHK02kXsG6wPSNsAMDEQ8GR8Edm4a7wY1MrrdVQjUJS3T//0g8LHhtTcB9XlUi3zNuLiFZzAoaAS7L43yeScA3V1LAUewPQyCHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761997913; c=relaxed/simple;
	bh=80GYiOXyQj396dKaPorO5SbPTcTsCGXvm5DwswRqxi0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NJ+/f96yjoOXdUCWBfCNk7Eru44dfryhGsPZD/11xMTW2zZuD4WKls14klF/+6DAhVmtFb/Nwmjmy9I7suJqY3+xn5Nge/8efupgJGXsFeyBLOWJ+FjfRFqsiV4dm4NcyrH/ALBPVaT3wVJM+2yGytDMmT8ux7r8NMNaM0dBA6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=s689bHBr; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=JDKD/R+9K+muuhY+XkY+sEMXaT9VzPK07TMwgKEtODo=; b=s689bHBr4MhZ0vC2+14m076COd
	j/Q/2TTDmgCXIRmSQmZqsa6nfSCfZGSZj8gw0Vcz/lWKXhM163CYmojRyg987boADOiKVMukRg680
	WpGbb0H81WFgO0fdj89KMIFGGG8eCYU9+MTm3JdFXdIM4Zbs45kLMSKMvNfIxca3T5v2cul5emIhc
	TB5VemdtdkMWSAZjY8XD/lKBxN40/Fbtr6J2BLgrdujyVQJ29DfCw9Wh9H9nYnbCcNdP63q1ictXq
	0OoHx+m3SpM+Pzqjc6K9BFwJ+Imx24AczH+6XxOmtAqQrGcHPzlb9XQZQcWl7OLUhJ/ofVULgy3Zg
	q8e6qEyA==;
Received: from i53875b80.versanet.de ([83.135.91.128] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vFA8u-0008O8-CF; Sat, 01 Nov 2025 12:51:36 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 liujianfeng1994@gmail.com, dmitry.baryshkov@oss.qualcomm.com,
 andy.yan@rock-chips.com, sebastian.reichel@collabora.com,
 nicolas.frattaroli@collabora.com, dmitry.osipenko@collabora.com,
 damon.ding@rock-chips.com, jbx6244@gmail.com, shreeya.patel@collabora.com,
 didi.debian@cknow.org, cristian.ciocaltea@collabora.com,
 detlev.casanova@collabora.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject:
 Re: [PATCH v2 1/2] arm64: dts: rockchip: Fix USB Type-C host mode for Radxa
 ROCK 5B+/5T
Date: Sat, 01 Nov 2025 12:51:35 +0100
Message-ID: <3389401.44csPzL39Z@phil>
In-Reply-To: <20251029130200.987580-1-naoki@radxa.com>
References: <20251029130200.987580-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi,

Am Mittwoch, 29. Oktober 2025, 14:01:59 Mitteleurop=C3=A4ische Normalzeit s=
chrieb FUKAUMI Naoki:
> The Radxa ROCK 5B+/5T USB Type-C port supports Dual Role Data and
> should also act as a host. However, currently, when acting as a host,
> only self-powered devices work.
>=20
> Since the ROCK 5B+ supports Dual Role Power, set the power-role
> property to "dual" and the try-power-role property to "sink". (along
> with related properties)
>=20
> The ROCK 5T should only support the "source" power role, but when the
> power-role property is set to "source", when acting as a host, only
> self-powered devices work. As a workaround, set the power-role
> property to "dual" and the try-power-role property to "sink".
>
> This allows the port to act as a host, supply power to the port, and
> allow bus-powered devices to work.

So it sounds like you're working around an issue coming from the Linux
usb stack here? If the usb stack handles those power roles wrongly
shouldn't it be fixed instead of introducing wrong hacks to generic
hardware descriptions?

Like Linux isn't the only consumer of Devicetrees, so hacking them
together to walk around driver issues feels wrong.


Heiko

> Note that there is a separate known issue where USB 3.0 SuperSpeed
> devices do not work when oriented in reverse. This issue should be
> addressed separately. (USB 2.0/1.1 devices work in both orientations)
>=20
> Fixes: 67b2c15d8fb3c ("arm64: dts: rockchip: add USB-C support for ROCK 5=
B/5B+/5T")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v2:
> - Refine commit message
> - Use board-specific dts to describe (try-)power-role
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 4 ++--
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts    | 5 +++++
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts         | 4 ++++
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts         | 5 +++++
>  4 files changed, 16 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi b/ar=
ch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
> index 3bbe78810ec6f..7aac77dfc5f16 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
> @@ -331,12 +331,12 @@ usb_con: connector {
>  			data-role =3D "dual";
>  			/* fusb302 supports PD Rev 2.0 Ver 1.2 */
>  			pd-revision =3D /bits/ 8 <0x2 0x0 0x1 0x2>;
> -			power-role =3D "sink";
> -			try-power-role =3D "sink";
>  			op-sink-microwatt =3D <1000000>;
>  			sink-pdos =3D
>  				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>,
>  				<PDO_VAR(5000, 20000, 5000)>;
> +			source-pdos =3D
> +				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
> =20
>  			altmodes {
>  				displayport {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts b/arch/=
arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts
> index 5e984a44120e4..07a840d9b3859 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts
> @@ -110,6 +110,11 @@ vcc5v0_host_en: vcc5v0-host-en {
>  	};
>  };
> =20
> +&usb_con {
> +	power-role =3D "dual";
> +	try-power-role =3D "sink";
> +};
> +
>  &usbdp_phy0 {
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&usbc_sbu_dc>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64=
/boot/dts/rockchip/rk3588-rock-5b.dts
> index 8ef01010d985b..da13dafcbc823 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -49,6 +49,10 @@ vcc5v0_host_en: vcc5v0-host-en {
>  	};
>  };
> =20
> +&usb_con {
> +	power-role =3D "sink";
> +};
> +
>  &usbdp_phy0 {
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&usbc_sbu_dc>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts b/arch/arm64=
/boot/dts/rockchip/rk3588-rock-5t.dts
> index c1763835f53d4..96ffffec7e05d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
> @@ -130,6 +130,11 @@ usbc_sbu_dc: usbc-sbu-dc {
>  	};
>  };
> =20
> +&usb_con {
> +	power-role =3D "dual";
> +	try-power-role =3D "sink";
> +};
> +
>  &usbdp_phy0 {
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&usbc_sbu_dc>;
>=20





