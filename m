Return-Path: <devicetree+bounces-58425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C798A1ED3
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 20:45:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5FC2428D638
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 18:45:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB144205E28;
	Thu, 11 Apr 2024 18:42:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D6B205E06
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 18:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712860975; cv=none; b=Pxqa1+yWHCuZJgu7eZ2faQjv7ZlQt7tNgAiRC2CKmrYHjn4UnDC61nNrvRn6SYebm8wWTOnE4vR+9KQq+c6drRuDTXTaprV+JrU8G+P+i4X4L8yYi2ZeapxT2KLhaKm6zsB8LXVXpVxsS9rIbI35UexegWLLvMF72sPbFhTrug8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712860975; c=relaxed/simple;
	bh=PlwOz2nj5olIFQ6JWBzsa6f2IdOLbkTR9r5KY02PlYw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=T0OVfZNJmcIWT6qiQaHyMCFMbrUrsqn0ICamFqJ7h9Egt8e94EdQ19WXCkdqzQDAaVULUdB/nn3jLUOQ8b1thE4y9jsqM5sm0A6FpOltbt5abMqL8dND5+RtVEwnNmDluy3ihvtcNd69WnYZHQ0f4P1KvlKQQIpAzoeYCifnh/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from ip-185-104-138-67.ptr.icomera.net ([185.104.138.67] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruzNq-00021k-Hd; Thu, 11 Apr 2024 20:42:50 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject:
 Re: [PATCH 4/4] arm64: dts: rockchip: Describe Alternate Regulator Config on
 RGB30
Date: Thu, 11 Apr 2024 20:42:44 +0200
Message-ID: <2252888.taCxCBeP46@phil>
In-Reply-To: <20240325175133.19393-5-macroalpha82@gmail.com>
References:
 <20240325175133.19393-1-macroalpha82@gmail.com>
 <20240325175133.19393-5-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Am Montag, 25. M=E4rz 2024, 18:51:33 CEST schrieb Chris Morgan:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Describe a possible secondary regulator configuration for the RGB30.
> At some point Powkiddy altered the CPU regulator for the RGB30 without
> creating a new model revision. Note this in the device-tree in the
> hopes that it may alleviate a user's confusion (or possibly allow a
> bootloader to manipulate the tree to swap out the regulators when the
> alternate configuration is detected).
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

I don't think this is the correct approach here, we'll really need
a second board dts for the variant.

Only describing the regulator in a comment does not help the affected
users at all, as they would need to adapt the dt they have on their
device on each update.

Having a second dtb will have the kernel build both (also improving
build testing) and allow them to configure their bootloader to load
the correct one, even if we can't detect the variant device automatically.


Heiko

> ---
>  .../dts/rockchip/rk3566-powkiddy-rgb30.dts    | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts b/arc=
h/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
> index e359465eebe9..484f097e9f11 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
> @@ -54,6 +54,30 @@ regulator-state-mem {
>  			regulator-off-in-suspend;
>  		};
>  	};
> +
> +	/*
> +	 * Some RGB30 devices use a different CPU regulator. These
> +	 * devices have no external markings to denote a different
> +	 * model revision.
> +	 */
> +	vdd_cpu_alt: regulator@40 {
> +		compatible =3D "tcs,tcs4525";
> +		reg =3D <0x40>;
> +		fcs,suspend-voltage-selector =3D <1>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt =3D <712500>;
> +		regulator-max-microvolt =3D <1390000>;
> +		regulator-name =3D "vdd_cpu_alt";
> +		regulator-ramp-delay =3D <2300>;
> +		vin-supply =3D <&vcc_sys>;
> +
> +		status =3D "disabled";
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
>  };
> =20
>  &sdmmc2 {
>=20





