Return-Path: <devicetree+bounces-213811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD81B46B6A
	for <lists+devicetree@lfdr.de>; Sat,  6 Sep 2025 13:34:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 38A115A64E2
	for <lists+devicetree@lfdr.de>; Sat,  6 Sep 2025 11:34:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39FC42620E5;
	Sat,  6 Sep 2025 11:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="dyFLZBBF"
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta0.migadu.com (out-181.mta0.migadu.com [91.218.175.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC68136E37
	for <devicetree@vger.kernel.org>; Sat,  6 Sep 2025 11:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757158456; cv=none; b=DriA9PPfActcwdoe9mqOVk9Hbehvja9WSu+Qlby7upeAM8cX+Eb4BypHSmRzX+iMwPvhL6PXtI3q+GIXeWcggeAdIAYPeifx7qboqo2Tzy+Q2l5gHH4cd/ICExFAXg3fmavp6uZlGo31fqWlLS6VFUfDT7nmhE2oxo8dyALDt6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757158456; c=relaxed/simple;
	bh=E12fbjI2HTRA7ZkfyKKtfQFoU8haiXawCcbz5HNdrcM=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=SlOM7Z6o99UDzz2+oXzcM1+EQR7Sjr+/Um1gBZ/tlrdMb+MZcZUyPj6WObfKToSkTHJlAru360N0kZsxX7IDebF8PglByeR9QhSnPAyRwHBJ6Mp7EHIhlgANDNdCTTJXGp5k0+NQS2mGK80Rnil8vLSikHbjI3eXyYDfUOeyboA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=dyFLZBBF; arc=none smtp.client-ip=91.218.175.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1757158442;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=b+Du9TeIxlEbNhvp61SYY8KuLIZkAqncV6TyBj9h6w4=;
	b=dyFLZBBFQ3+fJrBybmZ30Ba9rVjhUCsCr/fFpHSIuXFcfGEdnYs6CsyuB+nkg/q+SYdDiM
	awuWCwVrXjZMBp2hNApyssaAvyMC9X67o/GyMrWC1nbqHBkius1OHU/6jEMgBGWLDWCzIF
	p423/DIc7w/h0l4nBj1SASmAsOeKs7gDdwezyyYloch8+IUpKPDs+P/JodR3ZQULROR1sE
	uyunYJfcZ0RxF2SJJpV7RRo9xP5LUK9p0FWF8EnAsklMQhPMN0vYzZ0G+63l8ShA+d1gY9
	no8sG2t+eyxEqYUOPIlroUM64WnMFUw8EuFl9NP5PujRF+RIKATjkEISR7LYGA==
Content-Type: multipart/signed;
 boundary=71e10b725da0bb370e79d95e44ae5bd5e7d2c935e23050771e2938286b81;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Sat, 06 Sep 2025 13:33:52 +0200
Message-Id: <DCLOOFYCU4G3.TRKM9VIKO4BX@cknow.org>
Cc: "Alex Bee" <knaerzche@gmail.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: rockchip: add GPU powerdomain, opps,
 and cooling to rk3328
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Christian Hewitt" <christianshewitt@gmail.com>, "Rob Herring"
 <robh+dt@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20250906112030.1829706-1-christianshewitt@gmail.com>
In-Reply-To: <20250906112030.1829706-1-christianshewitt@gmail.com>
X-Migadu-Flow: FLOW_OUT

--71e10b725da0bb370e79d95e44ae5bd5e7d2c935e23050771e2938286b81
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Sat Sep 6, 2025 at 1:20 PM CEST, Christian Hewitt wrote:
> From: Alex Bee <knaerzche@gmail.com>
>
> Add GPU powerdomain, opp-table, and cooling map nodes for the Mali
> GPU on the RK3328 SoC. Opp-table frequencies are sourced from the
> Rockchip Linux v4.4 vendor kernel while voltages have been derived
> from practical use and support work: keeping voltage above 1075mV
> and disabling the 500MHz opp-point avoids instability and crashes.
>
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
> Changes since v1:
> - Use opp_table_gpu not gpu_opp_table to fix dtb schema warnings
>
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 39 +++++++++++++++++++++++-
>  1 file changed, 38 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/d=
ts/rockchip/rk3328.dtsi
> index 6438c969f9d7..01ed2bfa7ee1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -331,6 +331,11 @@ power: power-controller {
>  			#address-cells =3D <1>;
>  			#size-cells =3D <0>;
> =20
> +			power-domain@RK3328_PD_GPU {
> +				reg =3D <RK3328_PD_GPU>;
> +				clocks =3D <&cru ACLK_GPU>;
> +				#power-domain-cells =3D <0>;
> +			};
>  			power-domain@RK3328_PD_HEVC {
>  				reg =3D <RK3328_PD_HEVC>;
>  				clocks =3D <&cru SCLK_VENC_CORE>;
> @@ -570,9 +575,13 @@ map0 {
>  							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
>  					contribution =3D <4096>;
>  				};
> +				map1 {
> +					trip =3D <&target>;
> +					cooling-device =3D <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +					contribution =3D <4096>;
> +				};
>  			};
>  		};
> -
>  	};
> =20
>  	tsadc: tsadc@ff250000 {
> @@ -651,7 +660,35 @@ gpu: gpu@ff300000 {
>  				  "ppmmu1";
>  		clocks =3D <&cru ACLK_GPU>, <&cru ACLK_GPU>;
>  		clock-names =3D "bus", "core";
> +		operating-points-v2 =3D <&opp_table_gpu>;
> +		power-domains =3D <&power RK3328_PD_GPU>;
>  		resets =3D <&cru SRST_GPU_A>;
> +		#cooling-cells =3D <2>;
> +	};
> +
> +	opp_table_gpu: opp-table-gpu {
> +		compatible =3D "operating-points-v2";
> +		opp-200000000 {
> +			opp-hz =3D /bits/ 64 <200000000>;
> +			opp-microvolt =3D <1075000>;
> +		};
> +
> +		opp-300000000 {
> +			opp-hz =3D /bits/ 64 <300000000>;
> +			opp-microvolt =3D <1075000>;
> +		};
> +
> +		opp-400000000 {
> +			opp-hz =3D /bits/ 64 <400000000>;
> +			opp-microvolt =3D <1075000>;
> +		};
> +
> +		opp-500000000 {
> +			/* causes stability issues */
> +			opp-hz =3D /bits/ 64 <500000000>;
> +			opp-microvolt =3D <1150000>;
> +			status =3D "disabled";
> +		};

The opp-table-gpu should be moved downwards, right above the pinctrl
node. But maybe that can be done by Heiko when committing?

Cheers,
  Diederik

>  	};
> =20
>  	h265e_mmu: iommu@ff330200 {


--71e10b725da0bb370e79d95e44ae5bd5e7d2c935e23050771e2938286b81
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaLwcIwAKCRDXblvOeH7b
br56AQCWWWvp8dGJgHCWZPupIEljTv62eHRRlJgagXNls350nAD9EjoJ2samkkdH
662TWxKU0z5ftvwqQy8+keNZBlbmpgA=
=SwUq
-----END PGP SIGNATURE-----

--71e10b725da0bb370e79d95e44ae5bd5e7d2c935e23050771e2938286b81--

