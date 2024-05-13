Return-Path: <devicetree+bounces-66721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5338C4564
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 18:56:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 07276287040
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 16:56:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED59E1C6B4;
	Mon, 13 May 2024 16:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDqkf6ei"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C95CB1C69E
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 16:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715619356; cv=none; b=K0go6+68pUCRys9PX3VLfgGGUuSODyN8AwDSh9IuazzSMoOl5lJywhfPt/XcSLZ97aQUIRrVrI0bj7QAvHpcn7oJZi0svjNY5NtTVUNsCjiMMnGRs6F0wofC8dH2Gm8tKkV91N8DNGAsiyII4/6kBNtES3nHi1wIe7Yfm41m4JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715619356; c=relaxed/simple;
	bh=GtcP/4iTwZY7mpfL/M5e1XwzP6NaO5Lqcmc74sZdNcw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rE+0iWCRnXZohX1sgIC6JoSLIese4j5rpgQzLOIXBj4LljFG7Co+OFIjPLjq0a0PcdNDx3GE6WanJPD3oAeO9rg2laFX9nlh052RWP5fyXqViVdzfH8byFZv0mcY81oFrA0JSQPVMMox98wUVjQIOXSzxOTiE5aEkxNRAU6deE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDqkf6ei; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20063C4AF09;
	Mon, 13 May 2024 16:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715619356;
	bh=GtcP/4iTwZY7mpfL/M5e1XwzP6NaO5Lqcmc74sZdNcw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FDqkf6ei+cLN5J+3mVI5H6lijNlU3ylksYxRFJyGhxkLZZIgmAXZo3rDPSXEVhB9s
	 ZKN+IcUjhkMrYmZhuVWf6c6a/9hfJCCsGqFAzeJnaH9QIDkfu7PDyHGLGfXMVK1yl2
	 TOqQO43AmL8HoMnYrDpqv6T9ErFZzshaqqHmz9Y2Lh/Kmo7z+sM9LUAPTFwAAWLYTu
	 CfvuBy8Qw+wnn+x271EK19MgKLd4nEnilhrYnrC16QHtUSP1n4DUOfAELSRI3n1ooo
	 0TAw28A3GofijR9v8/2S5wAWYyT0juFxa8Eb+BeVEftXoNvxYVdG6yAoy3tIPprov4
	 1qdoB+aP6idmQ==
Date: Mon, 13 May 2024 18:55:52 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org,
	lorenzo.bianconi83@gmail.com, conor@kernel.org,
	linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org,
	dd@embedd.com, catalin.marinas@arm.com, will@kernel.org,
	upstream@airoha.com
Subject: Re: [PATCH 3/3] phy: airoha: Add PCIe PHY driver for EN7581 SoC.
Message-ID: <ZkJGGE1A2oiQIskE@lore-desk>
References: <cover.1715527166.git.lorenzo@kernel.org>
 <0005610f38bef591b0f97bafcc58dffdfa1f0ead.1715527166.git.lorenzo@kernel.org>
 <b6bb36aa-cb8c-4e13-8ee3-233d1c76dd50@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HpxzrNHt17mo5fDz"
Content-Disposition: inline
In-Reply-To: <b6bb36aa-cb8c-4e13-8ee3-233d1c76dd50@collabora.com>


--HpxzrNHt17mo5fDz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Il 12/05/24 17:27, Lorenzo Bianconi ha scritto:
> > Introduce support for Airoha PCIe PHY controller available in EN7581
> > SoC.
> >=20
> > Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > ---
> >   MAINTAINERS                        |    8 +
> >   arch/arm64/configs/defconfig       |    1 +
> >   drivers/phy/Kconfig                |   10 +
> >   drivers/phy/Makefile               |    1 +
> >   drivers/phy/phy-airoha-pcie-regs.h |  476 +++++++++++
> >   drivers/phy/phy-airoha-pcie.c      | 1227 ++++++++++++++++++++++++++++
> >   6 files changed, 1723 insertions(+)
> >   create mode 100644 drivers/phy/phy-airoha-pcie-regs.h
> >   create mode 100644 drivers/phy/phy-airoha-pcie.c
> >=20
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index ce9fac46f741..d918d41a80a3 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -653,6 +653,14 @@ S:	Supported
> >   F:	fs/aio.c
> >   F:	include/linux/*aio*.h
> > +AIROHA PCIE PHY DRIVER
> > +M:	Lorenzo Bianconi <lorenzo@kernel.org>
> > +L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> > +S:	Maintained
> > +F:	Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml
> > +F:	drivers/phy/phy-airoha-pcie-regs.h
> > +F:	drivers/phy/phy-airoha-pcie.c
> > +
> >   AIROHA SPI SNFI DRIVER
> >   M:	Lorenzo Bianconi <lorenzo@kernel.org>
> >   M:	Ray Liu <ray.liu@airoha.com>
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > index a53c58584bcf..c0eacced5d41 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
>=20
> No, this should be in a different commit.

ack, I will do in v2

>=20
> > @@ -1479,6 +1479,7 @@ CONFIG_RESET_QCOM_AOSS=3Dy
> >   CONFIG_RESET_QCOM_PDC=3Dm
> >   CONFIG_RESET_RZG2L_USBPHY_CTRL=3Dy
> >   CONFIG_RESET_TI_SCI=3Dy
> > +CONFIG_PHY_AIROHA_PCIE=3Dy
> >   CONFIG_PHY_XGENE=3Dy
> >   CONFIG_PHY_CAN_TRANSCEIVER=3Dm
> >   CONFIG_PHY_SUN4I_USB=3Dy
> > diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> > index 787354b849c7..8f9a7a6c4bba 100644
> > --- a/drivers/phy/Kconfig
> > +++ b/drivers/phy/Kconfig
> > @@ -72,6 +72,16 @@ config PHY_CAN_TRANSCEIVER
> >   	  functional modes using gpios and sets the attribute max link
> >   	  rate, for CAN drivers.
> > +config PHY_AIROHA_PCIE
> > +	tristate "Airoha PCIe-PHY Driver"
> > +	depends on ARCH_AIROHA || COMPILE_TEST
> > +	depends on OF
> > +	select GENERIC_PHY
> > +	help
> > +	  Say 'Y' here to add support for Airoha PCIe PHY driver.
>=20
> Say Y here (without quotes)

ack, I will fix in v2

Regards,
Lorenzo

>=20
> Apart from that:
>=20
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
>=20
> > +	  This driver create the basic PHY instance and provides initialize
> > +	  callback for PCIe GEN3 port.
> > +
> >   source "drivers/phy/allwinner/Kconfig"
> >   source "drivers/phy/amlogic/Kconfig"
> >   source "drivers/phy/broadcom/Kconfig"
>=20

--HpxzrNHt17mo5fDz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZkJGGAAKCRA6cBh0uS2t
rJYlAQDI0uaXnpcs+MrptrpjMk22mLuapyynADTFHO5La7YfMAEA6KKpdJRySgE0
QDk5kO7tc19Br4a9YOAi9uNNYru8nwQ=
=49j/
-----END PGP SIGNATURE-----

--HpxzrNHt17mo5fDz--

