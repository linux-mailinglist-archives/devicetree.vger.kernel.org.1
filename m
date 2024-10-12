Return-Path: <devicetree+bounces-110682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8388E99B6BB
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 21:27:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E3B231F21AF2
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 19:27:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C25C612C7FB;
	Sat, 12 Oct 2024 19:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="kOU0k4rv"
X-Original-To: devicetree@vger.kernel.org
Received: from out-187.mta0.migadu.com (out-187.mta0.migadu.com [91.218.175.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2092B2F34;
	Sat, 12 Oct 2024 19:27:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728761254; cv=none; b=OPBVclO6hIy/9YhHdhZqCJJEBUkbiZIfRK3yeQNVpMEjwKSYsssCFi5V11m1SA5elGHR9Fc9cY8z7BeUcX9sUPtNcQAxMUHHOstdzL2y1mhEbQQUa3ojQ9U5blXLZ2jTVCLGwdTpNuJ5xtUm1j51ThrUqVcwhk1LFnf71IaUJ6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728761254; c=relaxed/simple;
	bh=WEo4U+tZc+K067P6DOJ7oXo95DPkhPbifxm86CULLUU=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=rCdjQgfv2362DA3PHYQd4A1yyCkPUWLCaev4HAm6OKXiC7w/+f0fFuQJGmxWJTAx5f94OzZxGGNbPh2+c0zXSRmyuDE55/k4cq+Z0m6n9R438sZ/R2Ik1+JtLGElOyaXZrD2iwqw0rkpoiSUC2WWX/8K7Jrbf9chnjkQqfi70a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=kOU0k4rv; arc=none smtp.client-ip=91.218.175.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728761249;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=bujrQMHu5eqJ7ou03hpDUMEsTeDy5i9ppr3HwnSleTY=;
	b=kOU0k4rvuMUbQ+pEacsgUS923FabL+2SsWQMWGwGZxRtkIZeY8F1UIKmL0LZbvMnZycliJ
	wv6NN/6+RV5tmsyVCeQWColxmscVDeoGnwABP28bE6AozIbQ6KqfLB5zsdIE/JeQB89rGt
	Cr7hYTMRPRmm6N2c8wTfUVRl2CQpD3FSatEhgg3vDtSppOyRYljG2aQMDDp9NoFLYiHRhM
	O1USVJ0+sEsu1+0Ui8RAZjVAJd9UvywYAKra96u/TRtNiieCrCyq5MWMvJ0gPwKM49fbCD
	Na2OdvakhwVYNwPX3Yf+z5QUS/ySeit0luLeQK2Wv9zRFVjGtV9/QK7+QAoahg==
Content-Type: multipart/signed;
 boundary=612e9eccb1d9b10348795f9b0a79da4e37f0e17d73b69b857acd40a05d2b;
 micalg=pgp-sha256; protocol="application/pgp-signature"
Date: Sat, 12 Oct 2024 21:27:16 +0200
Message-Id: <D4U2PO4VF4ST.9SBVKYF6095M@cknow.org>
Cc: <heiko@sntech.de>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Update CPU OPP voltages in
 RK356x SoC dtsi
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Dragan Simic" <dsimic@manjaro.org>,
 <linux-rockchip@lists.infradead.org>
References: <cover.1728752527.git.dsimic@manjaro.org>
 <2e1e100284b1edb470d6e7fde021a0f1779336c8.1728752527.git.dsimic@manjaro.org>
In-Reply-To: <2e1e100284b1edb470d6e7fde021a0f1779336c8.1728752527.git.dsimic@manjaro.org>
X-Migadu-Flow: FLOW_OUT

--612e9eccb1d9b10348795f9b0a79da4e37f0e17d73b69b857acd40a05d2b
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Dragan,

On Sat Oct 12, 2024 at 7:04 PM CEST, Dragan Simic wrote:
> Update the lower/upper voltage limits and the exact voltages for the Rock=
chip
> RK356x CPU OPPs, using the most conservative values (i.e. the highest per=
-OPP
> voltages) found in the vendor kernel source. [1]
>
> Using the most conservative per-OPP voltages ensures reliable CPU operati=
on
> regardless of the actual CPU binning, with the downside of possibly using
> a bit more power for the CPU cores than absolutely needed.
>
> Additionally, fill in the missing "clock-latency-ns" CPU OPP properties, =
using
> the values found in the vendor kernel source. [1]
>
> [1] https://raw.githubusercontent.com/rockchip-linux/kernel/f8b9431ee38ed=
561650be7092ab93f564598daa9/arch/arm64/boot/dts/rockchip/rk3568.dtsi
>
> Related-to: eb665b1c06bc ("arm64: dts: rockchip: Update GPU OPP voltages =
in RK356x SoC dtsi")
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi |  1 +
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 18 ++++++++++++------
>  2 files changed, 13 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/d=
ts/rockchip/rk3568.dtsi
> index 0946310e8c12..5c54898f6ed1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -273,6 +273,7 @@ &cpu0_opp_table {
>  	opp-1992000000 {
>  		opp-hz =3D /bits/ 64 <1992000000>;
>  		opp-microvolt =3D <1150000 1150000 1150000>;
> +		clock-latency-ns =3D <40000>;
>  	};
>  };
> =20
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/d=
ts/rockchip/rk356x.dtsi
> index 0ee0ada6f0ab..534593f2ed0b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -134,39 +134,45 @@ cpu0_opp_table: opp-table-0 {
> =20
>  		opp-408000000 {
>  			opp-hz =3D /bits/ 64 <408000000>;
> -			opp-microvolt =3D <900000 900000 1150000>;
> +			opp-microvolt =3D <850000 850000 1150000>;
>  			clock-latency-ns =3D <40000>;
>  		};
> =20
>  		opp-600000000 {
>  			opp-hz =3D /bits/ 64 <600000000>;
> -			opp-microvolt =3D <900000 900000 1150000>;
> +			opp-microvolt =3D <850000 850000 1150000>;
> +			clock-latency-ns =3D <40000>;
>  		};
> =20
>  		opp-816000000 {
>  			opp-hz =3D /bits/ 64 <816000000>;
> -			opp-microvolt =3D <900000 900000 1150000>;
> +			opp-microvolt =3D <850000 850000 1150000>;
> +			clock-latency-ns =3D <40000>;
>  			opp-suspend;
>  		};

While it felt a bit much to send a patch just to remove the blank lines
between the opp nodes, this sounds like an excellent opportunity to make
it consistent with the opp list in other DT files?

Cheers,
  Diederik

--612e9eccb1d9b10348795f9b0a79da4e37f0e17d73b69b857acd40a05d2b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZwrNmgAKCRDXblvOeH7b
biZ5AQCk8eE/SBHvOmxyKoThrXIzVKJWtgfKhOownzNqeMgT3wEA0SQCyymQQ/nZ
fuymSUIvicdEH1WptzV7GJlEF6/TaAQ=
=QmNY
-----END PGP SIGNATURE-----

--612e9eccb1d9b10348795f9b0a79da4e37f0e17d73b69b857acd40a05d2b--

