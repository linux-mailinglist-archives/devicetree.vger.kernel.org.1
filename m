Return-Path: <devicetree+bounces-94354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 418E0955321
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2024 00:11:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F24C2281B1D
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 22:11:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 322F3144307;
	Fri, 16 Aug 2024 22:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="Vvuw/11l"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5DD213D882
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 22:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723846297; cv=none; b=kWJ+YqlNGm3DIAyDME7XtU6iMAeMZtS4+HltHSi9PNoB2GXVZGZfk6BSrs8JTrzxOrMx8eclYwoJD8KuBUttdCvOu6PHBRxoonCrgtCFsCSDGBb0XzM0CPY9ndtdmTjjwrZu3pgH7+m4SOgA8r/qbcl2ZvfXnRbWQW5dKb+8SAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723846297; c=relaxed/simple;
	bh=FY3RZ7Frd8Lcub5W+zSgABGBWAR8CnEMQGDmaqhQx2A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FH9E7xfwlPIA9WtzuXD9P0cTg0OXO4c6jdpid/9BKNRAZWGx1t2n1brAydu8RBGRHuxuVkQjeeRklPH1ftKl699tF+4TtsBxHCRudC+BiOuwz1Uzf/htDvyuOxfUAAAlQq5G81bAX7L74hrJDpYODYQzVjWrExpVrinpRf1GCZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Vvuw/11l; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=3y95ZwWSl632o+sXaCqANOkSbXUNIJiKQPmDH7plQU0=; b=Vvuw/11lAEnKKI7205FZe2JcMv
	pcE1dEQpyOCfkyFOE3AVtMp4b7ri6nTnS61DWdcXBI8J6M38T2TPO9Ywj6TSO9lPAeciRMmkHy9/E
	MjO8BIMAs9yT2b0FzgaH5prdcajNGdcUSNIMv5iZrfrdrbVPaOqeTkOmByhd1qKgCBSfg0Oq9XFUk
	lMdf7OZHVa7uibgPXnQTFv8/J1E5cjT1a0dSN7fLmWrh/Ssfhbu2BidzNLm2/RjXduqqOjKKpicVi
	FJMG++uheLzwmxu3kkaeE1N4xucrlARppEkQrvpJZAHxb5/OBdC+1CIha8BAIrUHFclR0VH3XAWxK
	a5owt+aw==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sf5AR-0007hb-Jp; Sat, 17 Aug 2024 00:11:31 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 FUKAUMI Naoki <naoki@radxa.com>
Subject:
 Re: [PATCH v5 2/2] arm64: dts: rockchip: add support for Radxa ROCK Pi E v3.0
Date: Sat, 17 Aug 2024 00:11:32 +0200
Message-ID: <1819066.TLkxdtWsSY@diego>
In-Reply-To: <20240816213429.1093-2-naoki@radxa.com>
References:
 <20240816213429.1093-1-naoki@radxa.com>
 <20240816213429.1093-2-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Am Freitag, 16. August 2024, 23:34:29 CEST schrieb FUKAUMI Naoki:
> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
> RK3328 chip that ships in a number of RAM/eMMC/WiFi/BT configurations:
>=20
> - Rockchip RK3328 SoC
> - Quad A53 CPU
> - 512MB/1GB/2GB DDR4 RAM
> - 4/8/16/32GB eMMC
> - Micro SD Card slot
> - WiFi 4 and BT 4, or WiFi 5 and BT 5
> - 1x 1000M Ethernet supporting PoE with add=E2=80=91on PoE HAT
> - 1x 100M Ethernet
> - 1x USB 3.0 Type-A port (Host)
> - 1x 4-ring 3.5mm headphone jack
> - 40 Pin GPIO header
>=20
> [1] https://radxa.com/products/rockpi/pie
>=20
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v5:
> - revert compatible string
> Changes in v4:
> - update compatible string for OpenWrt
> Changes in v3:
> - fix conflict for recent change
> Changes in v2:
> - fix typo in commit message
> - add missing --- in commit message
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3328-rock-pi-e-v3.dts |  15 +
>  .../boot/dts/rockchip/rk3328-rock-pi-e.dts    | 460 +-----------------
>  ...28-rock-pi-e.dts =3D> rk3328-rock-pi-e.dtsi} |   5 -
>  4 files changed, 31 insertions(+), 450 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts
>  rewrite arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts (97%)
>  copy arch/arm64/boot/dts/rockchip/{rk3328-rock-pi-e.dts =3D> rk3328-rock=
=2Dpi-e.dtsi} (98%)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/=
rockchip/Makefile
> index cb309b1975ba..cc74cd17850a 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -25,6 +25,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3328-nanopi-r2s-plus=
=2Edtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3328-orangepi-r1-plus.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3328-orangepi-r1-plus-lts.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3328-rock64.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3328-rock-pi-e-v3.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3328-rock-pi-e.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3328-roc-cc.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3328-roc-pc.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts b/arch/=
arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts
> new file mode 100644
> index 000000000000..ad9c4c562914
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dts
> @@ -0,0 +1,15 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include "rk3328-rock-pi-e.dtsi"
> +
> +/ {
> +	model =3D "Radxa ROCK Pi E v3.0";
> +	compatible =3D "radxa,rockpi-e-v3", "rockchip,rk3328";
> +
> +	aliases {
> +		mmc0 =3D &emmc;
> +		mmc1 =3D &sdmmc;
> +	};
> +};

> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm=
64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> dissimilarity index 97%
> index 3e08e2fd0a78..0929df3c803a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> @@ -1,445 +1,15 @@

[...]

> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include "rk3328-rock-pi-e.dtsi"
> +
> +/ {
> +	model =3D "Radxa ROCK Pi E";
> +	compatible =3D "radxa,rockpi-e", "rockchip,rk3328";
> +
> +	aliases {
> +		mmc0 =3D &sdmmc;
> +		mmc1 =3D &emmc;
> +	};
> +};

can you please describe what is different in that v3 board?
Describing what is different to require a separate board should've been
part of the commit message.

Because from those changes, the bottom line currently seems to be
the same board with swapped mmc aliases?

Heiko





