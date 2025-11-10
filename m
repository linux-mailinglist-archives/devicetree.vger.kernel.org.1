Return-Path: <devicetree+bounces-236611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D32C45D49
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 11:11:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 229C64EA20B
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 10:05:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D41FD193077;
	Mon, 10 Nov 2025 10:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="RYJ1+OX5"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A53412EB875
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 10:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762769134; cv=none; b=efwe7WY6+xcEVqZvS5WUQbU7dFRco1ANK5ZmEby1YQmOvDFMLqQ0U/+3WtzmbOHegwY6/McfKEl96MFrcwe9BxDqNSv1RGShH3ojd7VawtTOCu3HHQScuz+0aIzt75DG93ml3ZnZVxVAk2Hussbm1pVSYEWFYqGw6SUZ435ioNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762769134; c=relaxed/simple;
	bh=xCpybdBDOEzFF4YPyZuRVwny1a4a4jI/WSwmjonOD8E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GFmlMlh8ZV8T/f+hBLVohxA4osbU/++hPKIMKomFljv6/BjIKbsuOINBGs3+v52gH8W28WlCAmy/cGkryfzo/maorkKazm3ZJHYLTIi5n9UrIcn/I35OvEzUQvE6M8AmO1FVdUoFspBYPa9r7xmtFk2vFTyrOYvIvORf8ZoSa/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=RYJ1+OX5; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=OVl0m+iJFqCNpf4hEKL/dy7zGf1DyPHpcG4DHQdATvk=; b=RYJ1+OX5Gk0y/frfM6z0AoF1FI
	bLGFErqzoLCoS212jcjSdoP2t3JNqEZ4hphhgAT/CJS/BzFEoYN4bZc+3QvrSrjJBKqitvUNnvTaN
	pIKDozEP4ib/hX6AZVttcb+kgpzkm+1jpR0WZTPLq1Vn25QJMZDcfIban63+c7HWW7r5gxB0WZByi
	eqpcwm1rM/G0yEbVRCejeQAVhH+whipUQatV/Hc/MshMMUM1oPKL1OUga0g6O879VO0j0V0Arc69X
	h81iiTdPMx0ZQp5zEdFEwoC7oNAVkjPx/QtdwyfSalwOFmaHQyBadREoROKUkrM5OU+3xmclraSWe
	b62SH1yQ==;
Received: from i53875bc2.versanet.de ([83.135.91.194] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vIOlz-0003HF-EC; Mon, 10 Nov 2025 11:05:19 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
 sebastian.reichel@collabora.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject:
 Re: [RFC PATCH] arm64: dts: rockchip: Fix microSD card detect for Radxa ROCK
 5 ITX
Date: Mon, 10 Nov 2025 11:05:18 +0100
Message-ID: <2242815.irdbgypaU6@diego>
In-Reply-To: <EECF7629320EEEDD+03c6ee06-4351-4150-b1b0-957d5cfc3d6d@radxa.com>
References:
 <20251110030036.825150-1-naoki@radxa.com>
 <EECF7629320EEEDD+03c6ee06-4351-4150-b1b0-957d5cfc3d6d@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi,

Am Montag, 10. November 2025, 04:16:37 Mitteleurop=C3=A4ische Normalzeit sc=
hrieb FUKAUMI Naoki:
> On 11/10/25 12:00, FUKAUMI Naoki wrote:
> > Due to the discussion about cd-gpios and sdmmmc_det pin
> > functionality[1], it would be better to use cd-gpios for now.
> >=20
> > [1] https://lore.kernel.org/linux-rockchip/20240912152538.1.I858c2a0bf8=
3606c8b59ba1ab6944978a398d2ac5@changeid/T/#u
> >=20
> > Fixes: 31390eb8ffbf2 ("arm64: dts: rockchip: add ROCK 5 ITX board")
> > Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> > ---
> >   arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts | 9 ++++++++-
> >   1 file changed, 8 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/=
arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> > index bc8140883de47..391c6482e8ee3 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> > @@ -670,6 +670,12 @@ led_pins: led-pins {
> >   		};
> >   	};
> >  =20
> > +	mmc {
> > +		sdmmc_det_gpio: sdmmc-det-gpio {
> > +			rockchip,pins =3D <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
> > +		};
> > +	};
> > +
>=20
> I got following error:
>=20
> $ make CHECK_DTBS=3Dy rockchip/rk3588-rock-5-itx.dtb
>    UPD     include/config/kernel.release
>    DTC [C] arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dtb
> /home/radxa/linux/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dtb:=20
> mmc: sdmmc-det-gpio: {'rockchip,pins': [[0, 4, 0, 270]], 'phandle': 145}=
=20
> is not of type 'array'
> 	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#
>=20
> What's wrong?

the problem is the "-gpio" in the pinctrl node-name,which triggers
a pattern matching against a normal gpios property.

So ideally rename sdmmc-det-gpio to sdmmc-det-pin or so.


Hope that helps
Heiko



