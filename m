Return-Path: <devicetree+bounces-213807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D5AB46ADF
	for <lists+devicetree@lfdr.de>; Sat,  6 Sep 2025 12:45:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B4F771883923
	for <lists+devicetree@lfdr.de>; Sat,  6 Sep 2025 10:46:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A613136E37;
	Sat,  6 Sep 2025 10:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="g5Xe0hbO"
X-Original-To: devicetree@vger.kernel.org
Received: from out-173.mta0.migadu.com (out-173.mta0.migadu.com [91.218.175.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCA37199FB0
	for <devicetree@vger.kernel.org>; Sat,  6 Sep 2025 10:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757155532; cv=none; b=rtqEFMCoEHbLczdjOzsg65OPmARRdFJ9f2CPDRpPxN3T789uJPMpweFBAqcka4X3cu5dPEqrGOc4upYCrRTIpSVsUQCBhKFTZ2l6DeBFMVgnEeZMWQp7BcdBn/icBf2yAsmYOyx2Da5a/gmNZY+waHj87aoZ4Vw4/qHWujf0l3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757155532; c=relaxed/simple;
	bh=ynKkKQPKqXap9DQeskGJLQvUGb4qyaEcv5CLyIVOSkM=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:Cc:To:
	 References:In-Reply-To; b=Re0An6Chw8nNGsYOlX+9ugO0mz27nNABwxq+nJoYlSBHBXTIhAMhgGVKM75mJGbWOnTF7CJLxXfnJSCBt89xadBrjGF3iqTAX0oo4fk64oL6lFcD/HS+5KssXsgRoddSpuVQN2p4Gl0+PoG21nOVRCfzqbm8pOVL93YnDriJjPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=g5Xe0hbO; arc=none smtp.client-ip=91.218.175.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1757155517;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=KWcMbbpWIN+FZp/dqVtxO/yiBkqQjBf3ubyVT6lX0jE=;
	b=g5Xe0hbOmiJ+4Tjxwyrb9wHVFPZAeIvFOXNm43tHbO9XszKd6RANE7DdKnW8nWJM056AFd
	52Oq41xklhYtBjFGPBR4A5dLBH3YXP7mgm0Kca9iEzzAXGwvkiryhMvIc5+qFmJe5bgi3m
	IaTNf49fsmKuOSFX11WOvIvOslV4O7NqZWHkrIE+1KF6Dp73q6dW64Mo3Yg52xyuYiIyOo
	eHWPcpE0cIFdpYZJGAVPAB6GpIEr+sL/l9ZkH6CU1aATXErZb5Ut+rq8BP5y7HKcZiabN7
	s9D4VrcRZPXEMjmOSjYZE9CXrDAxGLnqoT9ghw76EWam51aeK7giff7jWUSUuw==
Content-Type: multipart/signed;
 boundary=aa8f6cab7102cb8c9f5c1de5473582a640e558b7c971361d91f09e28c3f1;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Sat, 06 Sep 2025 12:45:08 +0200
Message-Id: <DCLNN4LYO8CS.1BHUZRHOVX9IA@cknow.org>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add GPU powerdomain, opps,
 and cooling to rk3328
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>, "Alex
 Bee" <knaerzche@gmail.com>
To: "Christian Hewitt" <christianshewitt@gmail.com>, "Rob Herring"
 <robh+dt@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
References: <20250830115135.3549305-1-christianshewitt@gmail.com>
In-Reply-To: <20250830115135.3549305-1-christianshewitt@gmail.com>
X-Migadu-Flow: FLOW_OUT

--aa8f6cab7102cb8c9f5c1de5473582a640e558b7c971361d91f09e28c3f1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Christian,

On Sat Aug 30, 2025 at 1:51 PM CEST, Christian Hewitt wrote:
> From: Alex Bee <knaerzche@gmail.com>
>
> Add GPU powerdomain, opp-table, and cooling map nodes for the Mali
> GPU on the RK3328 SoC. Opp-table frequencies are sourced from the

I very recently saw a patch somewhere with these changes and wondered
why it wouldn't be sent upstream, so thanks for doing exactly that!

> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 39 +++++++++++++++++++++++-
>  1 file changed, 38 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/d=
ts/rockchip/rk3328.dtsi
> index 7d992c3c01ce..b99c78ecc4a9 100644
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
> +	gpu_opp_table: gpu-opp-table {

As noticed by Rob's bot, this node name is incorrect.
If you do ``s/gpu-opp-table/opp-table-gpu/`` and move it to above the
'pinctrl' node, then DTB validation succeeds.

Cheers,
  Diederik

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


--aa8f6cab7102cb8c9f5c1de5473582a640e558b7c971361d91f09e28c3f1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaLwQtgAKCRDXblvOeH7b
btXoAP4/UMRYf+nXwetnS1zQ9fI3fAREyIDXC4JH8ippVgrJ5wEA9miNplHhC+yJ
G40zy0Diz9zovrvVlpTv1lv02bOUwws=
=GMNc
-----END PGP SIGNATURE-----

--aa8f6cab7102cb8c9f5c1de5473582a640e558b7c971361d91f09e28c3f1--

