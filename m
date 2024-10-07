Return-Path: <devicetree+bounces-108599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B062199311B
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 17:27:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6FF57280EE9
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 15:27:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E3341D88DF;
	Mon,  7 Oct 2024 15:27:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="IkcZZuPn"
X-Original-To: devicetree@vger.kernel.org
Received: from out-187.mta0.migadu.com (out-187.mta0.migadu.com [91.218.175.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4205D1D7E29
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 15:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.187
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728314840; cv=none; b=t1mKm8YgmQRLBkDZcGMM4XIX8uEPr45m0hhXrOW8bYaVoOJF6At2gQJSG7cYpyt1fdL7sWtwZkEJS+lQ8SrQyzP7CVxJDxu6LWL3MBdv9igcBInVjATpkDbU5VlQnxyFXmbpAvDNz+YCAK9bh46gdAmLGsDg/1Tu+S05GEc5wCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728314840; c=relaxed/simple;
	bh=esGVSUVdifPMGBDDq2hNQIKergLT5hjNBYDwF2Pxymo=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=ac/0rSmZbzQ9HIGLO6/0Nsf6ebZvKWWol1SVWSdVlvGCSJlP13Y1UHPZ2zQNRIFcneOGHAq9cmUFvmqD9pi6FOii24sEuPnf5f37SS2oDm+45KrdBnBxmgGKf709cZRryaH5Di/cRPtEG9cuRBMobrUL63dcC9wtN77Ian51qYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=IkcZZuPn; arc=none smtp.client-ip=91.218.175.187
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728314835;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=yAd5jiIqXKi0gbyJVYnCih0IIWJ9F3v+KMLrZ7QsIZE=;
	b=IkcZZuPnzzcdR7ThUJ9tVZT+zIQrRONPJj80CtBSyx4Nka87PQmf3d7TTayDvGMhJOrRFW
	3DKHJxFRfo1JUTRUgZ0kqzzEZcYwaiJiSuYyhsx/7EJRR62CI9f26xxZDTtfU0/NKH5i+e
	cp9Sf380MPlQSfewQFJhY+z8wjUR+aQMnv1m3voejAsvrS6Dmk0upfSAV39BBhq8IE2vuk
	nv8nxAOQVmqf4G7X++sLaIFPfyWyfVk0I4TmnONZ6+c8+vi/HMxcQipCqe2N35Fc1kAjue
	lotU3ihC/mlozxlP+CpnvkcJYXhBGAWxV8s09/AwsJ5GW+DTSu6IRXc7gxJifQ==
Content-Type: multipart/signed;
 boundary=4d62d13e81e3eae288851ed4485f386e347fd7fa62a06ad0cf65806ae49b;
 micalg=pgp-sha256; protocol="application/pgp-signature"
Date: Mon, 07 Oct 2024 17:27:12 +0200
Message-Id: <D4POH599C91R.OQUBX190GASQ@cknow.org>
Cc: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 "Andy Yan" <andyshrk@163.com>, "Diederik de Haas" <didi.debian@cknow.org>
Subject: Re: [PATCH 5/8] arm64: dts: rockchip: Fix bluetooth properties on
 rk3566 box demo
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Heiko Stuebner" <heiko@sntech.de>, <linux-rockchip@lists.infradead.org>
References: <20240930210112.1993625-1-heiko@sntech.de>
 <20240930210112.1993625-6-heiko@sntech.de>
In-Reply-To: <20240930210112.1993625-6-heiko@sntech.de>
X-Migadu-Flow: FLOW_OUT

--4d62d13e81e3eae288851ed4485f386e347fd7fa62a06ad0cf65806ae49b
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Mon Sep 30, 2024 at 11:01 PM CEST, Heiko Stuebner wrote:
> The expected clock-name is different (ext_clock -> extclk) and the wakeup

According to "brcm,bluetooth.yaml", 'extclk' is deprecated in favor of
'txco', so it seems better to use that?
Same would be true for Rock960 boards (patch 6 of this series).

Cheers,
  Diederik

> gpio properties are named differently when changing from vendor-tree to
> mainline. So fix those to match the binding.
>
> Fixes: 2e0537b16b25 ("arm64: dts: rockchip: Add dts for rockchip rk3566 b=
ox demo board")
> Cc: Andy Yan <andyshrk@163.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/arm6=
4/boot/dts/rockchip/rk3566-box-demo.dts
> index 0c18406e4c59..dd6fe964d618 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> @@ -449,9 +449,9 @@ &uart1 {
>  	bluetooth {
>  		compatible =3D "brcm,bcm43438-bt";
>  		clocks =3D <&pmucru CLK_RTC_32K>;
> -		clock-names =3D "ext_clock";
> -		device-wake-gpios =3D <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> -		host-wake-gpios =3D <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> +		clock-names =3D "extclk";
> +		device-wakeup-gpios =3D <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> +		host-wakeup-gpios =3D <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
>  		shutdown-gpios =3D <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
>  		pinctrl-names =3D "default";
>  		pinctrl-0 =3D <&bt_host_wake_l &bt_wake_l &bt_enable_h>;


--4d62d13e81e3eae288851ed4485f386e347fd7fa62a06ad0cf65806ae49b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZwP90wAKCRDXblvOeH7b
bpRMAQC3eQ6yx+yN6Dm6QDzVnmRER3bnxRIAL5osAxY+l7bFTgEAypLyCd90FYMN
ZDgakZawAw1Q4nX2Z3uax8pzMr8y/gY=
=FgA/
-----END PGP SIGNATURE-----

--4d62d13e81e3eae288851ed4485f386e347fd7fa62a06ad0cf65806ae49b--

