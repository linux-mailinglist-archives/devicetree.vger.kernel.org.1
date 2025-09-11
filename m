Return-Path: <devicetree+bounces-215826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E7DB52C80
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 11:02:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 72676485B54
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 09:01:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57DCE2E8B68;
	Thu, 11 Sep 2025 09:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="RIVDSn+h"
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta1.migadu.com (out-186.mta1.migadu.com [95.215.58.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B536B2E7F1C
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 09:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757581269; cv=none; b=glZRr0URmwXRFKJGZIOlkAZ5Qm2a/prbn/LLi4/k+a0iahW/bhvOOko44yHDsA4B1rB7ZDHf2on2+mFVWjdlufvc9pMZ8hxZSypXZRSemznGScnLF3AqD2o+/y4SBBibYc+uFb949wKd05hhwQNH1/zTqjF5jPL80v8bzJPATPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757581269; c=relaxed/simple;
	bh=jsG4D9fA/pe+cDmT7i/2VcyJMaMSqRGEnB5flQcEJu4=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=BbEpwmT109IeBwxu7bNUHLHhM903UwNy452QDPqSOH3HEXNcDRQjDWhuBonLayLm5aPlDbtV6x00IH2IvAQ6vtk3aWJlqnPjtrrA22gijmXLXjYCh4Pae9fy2IHidMDDKq+FMqKb9rEXhN0n7U8nl7AjbboMypCesTZ/gfL0MMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=RIVDSn+h; arc=none smtp.client-ip=95.215.58.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1757581264;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Sel27oZgcA+4qs92Ns785z7hsDLS/ChrGwuIP1OX4QY=;
	b=RIVDSn+hVXAKKajO3BRUnX+PyZI/AhKE0Wn5Etb5gKNYHCOfcMIm2lXptzKPu5a13C8hqi
	dTzFniMW80cSeplBesZEyQGxWOkYxU90JGNGZlx+n5/rx3fjS866EjUs48bRz15GiymiwQ
	9GBNt8cBZyfIMIVUsZZJ1KhohDTSXlnBhdldGJaop/ST6Z4AOs7x1c39BgtYxLHS7jrAbs
	8g4/WVpaJAJj4cswJCf636dAspMsev8cp1tPn8Y00ZI/YhWeUdEGoPcWVohRk5TW3bESc+
	53r0AmyXBLDBJorq9A+l9swYRAiEEp7gH7KDOCvVsNfXqgIj/GivbNrq+kTUhQ==
Content-Type: multipart/signed;
 boundary=ae5433376ac9f3e1826a9aad5813272fffe73f438ca790723a238b2ba171;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Thu, 11 Sep 2025 11:00:54 +0200
Message-Id: <DCPUK1QMC94L.281K2EV4NQOWS@cknow.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Christian Hewitt" <christianshewitt@gmail.com>, "Rob Herring"
 <robh+dt@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
Cc: "Alex Bee" <knaerzche@gmail.com>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 1/2] arm64: dts: rockchip: add GPU powerdomain, opps,
 and cooling to rk3328
References: <20250906120810.1833016-1-christianshewitt@gmail.com>
In-Reply-To: <20250906120810.1833016-1-christianshewitt@gmail.com>
X-Migadu-Flow: FLOW_OUT

--ae5433376ac9f3e1826a9aad5813272fffe73f438ca790723a238b2ba171
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Sat Sep 6, 2025 at 2:08 PM CEST, Christian Hewitt wrote:
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

Now that the 'other' issue with power domains has been resolved, or at
least localized, I feel (more) comfortable giving my

Tested-by: Diederik de Haas <didi.debian@cknow.org>  # Rock64

Cheers,
  Diederik

> ---
> Changes since v2:
> - Revert to gpu_opp_table but retain opp-table-gpu $nodename
> Changes since v1:
> - Use opp_table_gpu not gpu_opp_table to fix dtb schema warnings
>
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 39 +++++++++++++++++++++++-
>  1 file changed, 38 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/d=
ts/rockchip/rk3328.dtsi
> index 6438c969f9d7..610c1c27b798 100644
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
> +		operating-points-v2 =3D <&gpu_opp_table>;
> +		power-domains =3D <&power RK3328_PD_GPU>;
>  		resets =3D <&cru SRST_GPU_A>;
> +		#cooling-cells =3D <2>;
> +	};
> +
> +	gpu_opp_table: opp-table-gpu {
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
>  	};
> =20
>  	h265e_mmu: iommu@ff330200 {


--ae5433376ac9f3e1826a9aad5813272fffe73f438ca790723a238b2ba171
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaMKPyQAKCRDXblvOeH7b
bnvvAP9cDJ5evO0m4pNc3VzMtFadq913C7DWR5qrTp1cVAzeMAD/ZA+eArhOyXVx
S3TR4Ha5ypA3l+htGbzr3UZ2YtgszQA=
=K9LX
-----END PGP SIGNATURE-----

--ae5433376ac9f3e1826a9aad5813272fffe73f438ca790723a238b2ba171--

