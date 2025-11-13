Return-Path: <devicetree+bounces-238358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E1FC5A740
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 00:04:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6EF173BD67B
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 23:01:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFAEA2EBB8C;
	Thu, 13 Nov 2025 23:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="dxFLBhUo"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 747AC19C556;
	Thu, 13 Nov 2025 23:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763074841; cv=none; b=mznTbUP+sMVW0OIEnf451ySSS6YtfZTrLTOiMXZfFzxZn6cQDC3zCshGueURytliiKobiI6xkwuwyblGRWKwYjd/PYxOHJTBSU+9qC6VTS6WNI0ppD8JolRilN5FhNtmdXzetEdkGck7kSGWke+/nGuUetVePlENyQoJJZXFuDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763074841; c=relaxed/simple;
	bh=3mEe5zx+fDb11L8wVljDgMNsSQOA5oELxTD2/jL+ey4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bKRJ2lKyopQpALJ3/Kiwl20lNQZDfIPbVkEIpRHILmsDHxHQZIS2Wdmh29MzQDjaA9rBwGerg02DNrrBiW9DcSRVPefeTA2Hddd4YHHA7U0USHdHc13jgR4zKD6Qnj4X8tzbLIs3j87XXD1DYoRtIVHxsXbL1SVgPAW0TvC1i1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=dxFLBhUo; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=grMTbYxT3/Qu8aQl2TnXJ0ZZN1+fBc/GLnQ6IdZDoyc=; b=dxFLBhUo9l+ugyCbGCgdx8+WbI
	ZxFRWe9SnBJa7RxKNyggJEt/8aNO5GKzdg+YCwrz2qqyOy1h9UfAuNomHtfzV7cAui7pN9wu8b03Q
	m94a5AfQijob3Hfpmp9zA/R6Gl4znVvirOuKHFIqJtNETR3jH2odWocki6DI49loXMfy/edgTD/xw
	jLFIY8n0FC/gTOnjOBzQcnV7qDT/xqRERsIaJGcF1nI/16hGurX7ltwX6X10sF3xn9zIrnFUXTOJS
	V7wkQJKbX9czmViLJezsnwNMBNM0IzPs3sIFw+iodpV4Q+3Ups9gnbl3v6UgrtkRp89NTjFw1LB6z
	wVRNmzOQ==;
Received: from i53875a11.versanet.de ([83.135.90.17] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vJgIe-0005Zq-D3; Fri, 14 Nov 2025 00:00:20 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, Hsun Lai <i@chainsx.cn>,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject:
 Re: [PATCH 1/6] arm64: dts: rockchip: add mmc aliases for 100ASK DshanPi A1
Date: Fri, 14 Nov 2025 00:00:19 +0100
Message-ID: <1841407.VLH7GnMWUR@diego>
In-Reply-To: <20251101120010.41729-1-amadeus@jmu.edu.cn>
References: <20251101120010.41729-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi,

Am Samstag, 1. November 2025, 13:00:05 Mitteleurop=C3=A4ische Normalzeit sc=
hrieb Chukun Pan:
> Add missing MMC aliases. Remove the max-frequency property
> from the MMC node, which is already defined in rk3576.dtsi.

please split this into 2 patches, one for the aliases, one for the
max-frequency removal.

Thanks
Heiko

>=20
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts b/=
arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts
> index 59c172573cf8..9cbd3fae16ab 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts
> @@ -19,6 +19,8 @@ / {
>  	aliases {
>  		ethernet0 =3D &gmac0;
>  		ethernet1 =3D &gmac1;
> +		mmc0 =3D &sdhci;
> +		mmc1 =3D &sdmmc;
>  	};
> =20
>  	chosen {
> @@ -735,7 +737,6 @@ &sai6 {
>  &sdhci {
>  	bus-width =3D <8>;
>  	full-pwr-cycle-in-suspend;
> -	max-frequency =3D <200000000>;
>  	mmc-hs400-1_8v;
>  	mmc-hs400-enhanced-strobe;
>  	no-sdio;
> @@ -749,7 +750,6 @@ &sdmmc {
>  	cap-mmc-highspeed;
>  	cap-sd-highspeed;
>  	disable-wp;
> -	max-frequency =3D <200000000>;
>  	sd-uhs-sdr104;
>  	vmmc-supply =3D <&vcc_3v3_s3>;
>  	vqmmc-supply =3D <&vccio_sd_s0>;
>=20





