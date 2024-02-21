Return-Path: <devicetree+bounces-44237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1906385D2A4
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 09:38:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4AABD1C211A5
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 08:38:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A9263C493;
	Wed, 21 Feb 2024 08:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="HMO6CblH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259AF26AC9
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 08:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708504703; cv=none; b=JJc8M/ipBMUOMTN4zz79EHaGkUasdb2GaOQI5RKE2/k3Km7KvnvNeYM6D0W1toh2lV/4Hh2Y11sLNb+fMnyqfD6vU+S3kDtzBe1ypQr+GBk5/y6z6WNk5SVr9F200o2h597xpu8tW+Bydztc2pmrTQYVOqHcPy/U61InTK9aRmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708504703; c=relaxed/simple;
	bh=ofqy1Y7Refuaa9+RVslSj3wum+qn6fGUUPCxAf0lt9Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=rICExAPtzhbsfd2mwt+asoVnVBXvnt30miP4L+M9OAHRGAGjsw4l5Dhl6v0y7M+qwSxpFmwXY5PMjIYUK8Jv3bu7vhzzlXpM3ckD2PQKrd1wlvQu9mXVDWVcgRE/8GfvzJicrSTkNYtksGrcc8cRp3ssTv/MCBfdo51fMDvxyLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=HMO6CblH; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1708504699; x=1740040699;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=4iac42gfs2c+GJVsuPyZQfh8x2edP+ZGzOm+36bFLSM=;
  b=HMO6CblH9lJTMlA6WGkap3KTrrQ/MnkBcVIyqx9pjE5UJ1Ytj+tT8T/u
   Z1uVUDulLMqoa33l8gmn5B5WpKOM30WZcm7RGesF2l1O0leWNMuJRnhNZ
   G4LhGsLF+3Eui3yOvJivhrsHguUYYCWg/opLCyWlowSq83kKrWc2gR+np
   6fbewnMHnMqjEcBSvS2kfeIdLSoe7vbEhwQAILa2TURdu1OhI0/ejpZwx
   2iwAQQHwGMsGzhFS45s+HexmM0ZOPgWjQBb9j2yfSaJ47Eml5yIcEd7hp
   oLzaBSbxwUk40wVkcZWEewddXPYS362iyVEVLGk3Lg+y75+d5XnWxEi60
   Q==;
X-IronPort-AV: E=Sophos;i="6.06,175,1705359600"; 
   d="scan'208";a="35515358"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 21 Feb 2024 09:38:16 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 9733B280075;
	Wed, 21 Feb 2024 09:38:16 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, linux@ew.tq-group.com, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: imx8mn: tqma8mqnl-mba8mx: Add missing USB PHY vbus supply
Date: Wed, 21 Feb 2024 09:38:20 +0100
Message-ID: <2596915.Lt9SDvczpP@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20240220153334.2624873-2-alexander.stein@ew.tq-group.com>
References: <20240220153334.2624873-1-alexander.stein@ew.tq-group.com> <20240220153334.2624873-2-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Am Dienstag, 20. Februar 2024, 16:33:34 CET schrieb Alexander Stein:
> VBUS 5V is statically provided to both USB host and on-bard USB-hub.
>=20
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts b/=
arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts
> index c07d59147ab55..5b682dd907578 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mn-tqma8mqnl-mba8mx.dts
> @@ -86,6 +86,10 @@ &usbotg1 {
>  	status =3D "okay";
>  };
> =20
> +&usbphynop1 {
> +	vbus-supply =3D <&reg_hub_vbus>;
> +};
> +

Okay, this is kinda confusing. While checking imx8mm platform as well, it t=
urns out
vbus-supply in drivers/usb/phy/phy-generic.c is not used at all, because i.=
MX
chipidea host doesn't use PHY vbus control at all.

Please drop this, thanks.
Alexander

>  &iomuxc {
>  	pinctrl_ecspi1: ecspi1grp {
>  		fsl,pins =3D <MX8MN_IOMUXC_ECSPI1_SCLK_ECSPI1_SCLK	0x00000146>,
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



