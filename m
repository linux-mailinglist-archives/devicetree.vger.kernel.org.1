Return-Path: <devicetree+bounces-175007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC63AAF8A2
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 13:20:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 38DF84E162A
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 11:20:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2D9021B90B;
	Thu,  8 May 2025 11:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="BJlVa+0+"
X-Original-To: devicetree@vger.kernel.org
Received: from out-173.mta1.migadu.com (out-173.mta1.migadu.com [95.215.58.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1560B1C3F02
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 11:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746703209; cv=none; b=daeNSCoduI3/yOKxpAToTH/T1Qj0JM/UEv/+vW7vCLEpYET3Q6v7o3A7NQY07m7ne5w5ez2t8LOHVvsllUJghXYaJ53g3S+eJqldLCvTDlgNutHBAw9aF76RVrV0cftpAmPUaENwio7uiHQt87zb0lQNJgRFLfgce9RqlC0Ci9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746703209; c=relaxed/simple;
	bh=qmUs4qIBC6wDprL1ydyTgzd1zlarQEu2MTs0Yr6pFII=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=BRGm9WaSyaKssnF9hY1gV7BNytAWvEV+Tv+xNY2z9N14D7WzwPZOVwkYR8NPtedzfoGnVKB+ynzBfJ/sn9+g9/oLYI4hwLpTgowQTA+i4EaX6Lj6z/8SOXhGKFRA2z8AhNRqzJdPrSdpJQI36dAPqS5CDLq0R6BhmFE3xzIXMS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=BJlVa+0+; arc=none smtp.client-ip=95.215.58.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1746703202;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=yi17/Vkdq9R6FiZpqWcbdFm6QOL9Y0VB6krPrbnS9FM=;
	b=BJlVa+0+WontfuVqI4vZh54RL183AeHLT5X9+f++eEx6mvmZewyo3XlQ0RHix0+4rYkou0
	lKoC9YQxAT0cS9wlvrF7XhLBkWMo7VTrBjF1WnGGeD2QAahIeUWJke5aQVG+NuZYsVYoKP
	4DRv9zdopeovMuuMsgTgM3VtmwCTwCpymIsCW0wcaCK0w1Up277LfaSDRNel78J9hFn7Xn
	wXh3xHBnxMZHZHQ78FeMkHMu7X1TA75iNv8MU9tXIa/mbZxWBAL/Z96JrlcU5AhxQQb3M4
	usgz/07mLltWRzVFtswa6eOiRXsbBwX7Z2LN46svrEpHKu1hh7r6o/HQC+I6zQ==
Content-Type: multipart/signed;
 boundary=9346710a10d8538050465e6393575334389aa4745c1896d0f2c85fa3d6c7;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Thu, 08 May 2025 13:19:46 +0200
Message-Id: <D9QQLQ6MVUY4.13OOYJ1B1NWQC@cknow.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Update eMMC for NanoPi R5 series
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Peter Robinson" <pbrobinson@gmail.com>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, "Vasily
 Khoruzhick" <anarsoul@gmail.com>, "Tianling Shen" <cnsztl@gmail.com>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>
Cc: "Dragan Simic" <dsimic@manjaro.org>
References: <20250506222531.625157-1-pbrobinson@gmail.com>
In-Reply-To: <20250506222531.625157-1-pbrobinson@gmail.com>
X-Migadu-Flow: FLOW_OUT

--9346710a10d8538050465e6393575334389aa4745c1896d0f2c85fa3d6c7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Wed May 7, 2025 at 12:25 AM CEST, Peter Robinson wrote:
> Add the 3.3v and 1.8v regulators that are connected to
> the eMMC on the R5 series devices, as well as adding the
> eMMC data strobe, and enable eMMC HS200 mode as the
> Foresee FEMDNN0xxG-A3A55 modules support it.

Foresee eMMC FEMDNN032G-A3A55 datasheet version 1.2 dd 2021-05-17
mentions on page 4 that it supports HS400 and HS200.
It also mentions in paragraph 5.2 "Power Consumption" on page 6 that
``Vcc`` uses 3.3V and ``Vccq`` uses 1.8V.

In chapter 6 "Pin Assignment" on page 7 we can see the following pin
assignments in "FBGA153 - Ball Array":

Vcc: E6+F5+J10+K9
Vccq: C6+M4+N4+P3+P5
Data Strobe(DS): H5

In the NanoPi R5S schematic version 2204 on page 23 we can see
eMMC_153FBGA/U9501 described.

Pins E6+F5+J10+K9 are all labeled ``VDDF`` and those are connected to
``VCC3V3_FLASH`` which is connected to ``VCC_3V3``.

Pins C6+M4+N4+P3+P5 are all labeled ``VDD`` and those are connected to
``VCCIO_FLASH`` which is connected to ``VCC_1V8``.

Pin H5 is labeled ``Data Strobe`` and is connected to
``eMMC_DATA_STROBE/FLASH_CLE`` which is connected to GPIO1_C6 which
corresponds to ``emmc_datastrobe`` in ``rk3568-pinctrl.dtsi``.

In the NanoPi R5C schematic version 2209 on page 22 we see the same pins
labeled ``VDDF`` and also for ``VDD``, but here they are (directly)
connected to ``VCC_3V3`` and ``VCC_1V8`` respectively.

> Fixes: c8ec73b05a95d ("arm64: dts: rockchip: create common dtsi for NanoP=
i R5 series")
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>
> I had reports from some Fedora users that their eMMC didn't work
> on the R5C and this fixes it, the schematic of the eMMC is the
> same across all of the R5 series of devices.
>
>  arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi b/arch/a=
rm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
> index 00c479aa18711..a28b4af10d13a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
> @@ -486,9 +486,12 @@ &saradc {
>  &sdhci {
>  	bus-width =3D <8>;
>  	max-frequency =3D <200000000>;
> +	mmc-hs200-1_8v;
>  	non-removable;
>  	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&emmc_bus8 &emmc_clk &emmc_cmd>;
> +	pinctrl-0 =3D <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
> +	vmmc-supply =3D <&vcc_3v3>;
> +	vqmmc-supply =3D <&vcc_1v8>;

The above is correctly describe in the dtsi file, so

Reviewed-by: Diederik de Haas <didi.debian@cknow.org>

>  	status =3D "okay";
>  };
> =20


--9346710a10d8538050465e6393575334389aa4745c1896d0f2c85fa3d6c7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaByTWwAKCRDXblvOeH7b
buKRAP49zfD/V9wWLpeyJsnq+oWtqZiAqVl6/uCaZgVuDjlTswD/ZKMoxBAaf0Ku
fuAgPn7MQ4qEhw5m9HxmUzbA+VKtigk=
=ts+m
-----END PGP SIGNATURE-----

--9346710a10d8538050465e6393575334389aa4745c1896d0f2c85fa3d6c7--

