Return-Path: <devicetree+bounces-288193-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGdxCWIb4mny1gAAu9opvQ
	(envelope-from <devicetree+bounces-288193-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 13:37:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9392E41AD8B
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 13:37:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AFFFD30C43D2
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2026 11:33:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8377397680;
	Fri, 17 Apr 2026 11:32:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="ALAyFiqJ"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1298738F624;
	Fri, 17 Apr 2026 11:32:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776425579; cv=none; b=LDFQ7+VGRxZq+n8beW4meaI1Cw4XuozP1bg27D+ZpFnK4gb3K1IZEItHgPrka57EzIUTdC+SGPYQRMSzbyGsuzsTe+846alKChiFzpfgswGzRV2oL4iju71SHINsH1Z+eTnts3PtW992B/Df23CHpGuLtP7iL+YG66sbAflkJvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776425579; c=relaxed/simple;
	bh=k4+ET8/QOuT35qKN9W9GJ9qGBMHPwac7NjI1uu6Xvoc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UO67rZfrtcFS0LoHTY+e1nLFFT61OOmg2ec0YG3Vm+iqJY0lf6uwAvyFPheGPAtggSSPjk8TAO+JIZZHNzMfOiN84zekccCNy7GE4JTOFs5OmW0jKYUGQarwHt/4nPIgopGMn8VdQax7J2hAV59D89zT9/7ZQ5UcVkg5i/g0Beg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=ALAyFiqJ; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=8QyLMvKF44I/UarTwSVYz03wCTTEkLP4ZLZ/bSttUck=; b=ALAyFiqJXMslOeqg+jJlEYthCo
	UVRDtIAW0JAjYkBK0IDOoG6FsPd84Xv4i1Ede9QYaKCkqHrvMjyCxPlUT/xuVb9WgUwWePUhg62w2
	uAFTXjOSfnRG2MOjpXKlwHIhHkPAJew55oBzmjYx39aV/86aIp4KZ816pzVVa4U9tdL/3s1kWc8l8
	7SM7z+MCW0jJyYUOqy+im8sAxJBq0+NDoUYi/DJIogEoJn2gKHhkgJujwM5kyWeEqFekfyTdMWfMI
	L31z0CTJe/InBk/UkCtZnueMejzmzj9KHjjzzqZUdvzKqNjJ0t1TFpAbujQWTMAP773E/1vGMGqk7
	HqjjK+WA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH 05/40] arm64: dts: rockchip: Add frl-enable-gpios to
 rk3576-luckfox-core3576
Date: Fri, 17 Apr 2026 13:32:37 +0200
Message-ID: <2000470.6tgchFWduM@phil>
In-Reply-To:
 <20260417-dts-rk-frl-enable-gpios-v1-5-a19c0dd8c9f6@collabora.com>
References:
 <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
 <20260417-dts-rk-frl-enable-gpios-v1-5-a19c0dd8c9f6@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-288193-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[sntech.de:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9392E41AD8B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Cristian,

the comments below apply sort of to all patches in that series.

Am Freitag, 17. April 2026, 11:24:39 Mitteleurop=C3=A4ische Sommerzeit schr=
ieb Cristian Ciocaltea:
> The board exposes the GPIO4_C6 line to control the voltage bias on the
> HDMI data lines.  It must be asserted when operating in HDMI 2.1 FRL
> mode and deasserted for HDMI 1.4/2.0 TMDS mode.
>=20
> Wire up the HDMI node to the GPIO line using the frl-enable-gpios
> property and drop the line from the vcc_5v0_hdmi regulator to allow
> adjusting the bias when transitioning between TMDS and FRL operating
> modes.
>=20
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi b/=
arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi
> index 749f0a54b478..93ae37699366 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi
> @@ -140,10 +140,7 @@ regulator-state-mem {
> =20
>  	vcc_5v0_hdmi: regulator-vcc-5v0-hdmi {
>  		compatible =3D "regulator-fixed";
> -		enable-active-high;
> -		gpios =3D <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
> -		pinctrl-names =3D "default";
> -		pinctrl-0 =3D <&hdmi_con_en>;
> +		regulator-always-on;
>  		regulator-min-microvolt =3D <5000000>;
>  		regulator-max-microvolt =3D <5000000>;
>  		regulator-name =3D "vcc_5v0_hdmi";

I think this regulator was sort of a complete hack, to set that
gpio to some sort of default state, by declaring it as hdmi-pwr-supply.

Only 2 rk3576 boards seem, to use that hack, so I think as that "regulator"
is completely functionless now, the whole thing could be removed?



> @@ -231,6 +228,8 @@ &gpu {
>  };
> =20
>  &hdmi {
> +	pinctrl-0 =3D <&hdmi_txm0_pins &hdmi_tx_scl &hdmi_tx_sda &hdmi_frl_en>;
> +	frl-enable-gpios =3D <&gpio4 RK_PC6 GPIO_ACTIVE_LOW>;

this should be sorted the other way around I think.

Also please provide a pinctrl-names property too. If for whatever reason
the dw-hdmi aquires a 2nd pinctrl state in the future, this makes sure
board DTs are staying in the "old" compatible mode until they are adapted.


>  	status =3D "okay";
>  };
> =20
> @@ -655,7 +654,7 @@ &pcie0 {
> =20
>  &pinctrl {
>  	hdmi {
> -		hdmi_con_en: hdmi-con-en {
> +		hdmi_frl_en: hdmi-frl-en {

pinctrl names should ideally match the naming in schematics, for example
the "HDMI0_TX_ON_H" for jaguar and tiger. This makes it way easier to
go from DT to schematics and back.

>  			rockchip,pins =3D <4 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
>  	};
>=20
>=20

Heiko



