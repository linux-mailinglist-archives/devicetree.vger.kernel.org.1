Return-Path: <devicetree+bounces-67275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 598C48C74BD
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 12:42:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A1EA1C24039
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 10:42:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9973B145338;
	Thu, 16 May 2024 10:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1lojLao"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7547E143C56
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 10:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715856130; cv=none; b=SScGvVLLCQQNX0fx6bEJWdGxCH1yCPG0ff6RHDcLk2SIYELJEGgxKSkEMGFx8n3Tt/61gAUhrdqwFzYfJ7WMDeEP6jLF4GmQBN+rHNhk3MNUczfdsCnzIJGcBACV91z2EmRMhk7nJwxvK5Lj1YNeHBRL44yjiA4k1wLKzblYugg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715856130; c=relaxed/simple;
	bh=1yPNANOmvJn1EMdeblWKSZYtKIiO5uIGD/onqnL/1cI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AcLDDDcll97TcdinnSOQONDTxGBbTNGct1BP+4EzjKx9iMbRvoec4sgUGinGodYneiR87aMuO5VV/o8+zKL+IAz84ZaIIoWWGt1GopaUQYKWxhHCXCfAWhUrK/tC723ipFRrWIMvkRBBK8lE1jJ4cT2EK1SoRzvVMTHYfmtTDF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1lojLao; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33B8AC113CC;
	Thu, 16 May 2024 10:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715856129;
	bh=1yPNANOmvJn1EMdeblWKSZYtKIiO5uIGD/onqnL/1cI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I1lojLaolujTwc0RZTvERDJFobp47N6tG7GT8jmKX3L096U1KQXbiIgdgG034UbGT
	 PXxu1BY5sxvpyEDwiNNykGbPHfzZka+nuS1rNKut3g7eQwTplgohjZ+AFy2O4ek35E
	 L+jm6fsRT9sa3rw78RuRPpZgTDYwJFRazx9ZFq1fpleJnTshRX2bkIv1VoirowbDaM
	 hlFAKYc1RYB9wMl8cZgL7Q2uGfyfILYCXdHGr+R3WX73guB07rnQInFW+oEsDUp1CT
	 v5cZyPP4IIHSf2mM6BoIKPmF05hXYLFihL30B9lEfpby1NSbu0Sm3Q7/NbRu+h2dGR
	 mz8cJ9ZrDqr2w==
Date: Thu, 16 May 2024 12:42:06 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org,
	lorenzo.bianconi83@gmail.com, conor@kernel.org,
	linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org,
	dd@embedd.com, catalin.marinas@arm.com, will@kernel.org,
	upstream@airoha.com, amitsinght@marvell.com
Subject: Re: [PATCH v2 4/4] arm64: defconfig: Enable Airoha pcie phy driver
Message-ID: <ZkXi_lxAbAiLkUPH@lore-desk>
References: <cover.1715769325.git.lorenzo@kernel.org>
 <3ed6056ff5aa71312e5e60d70267ea9663bbf2c8.1715769325.git.lorenzo@kernel.org>
 <8ef5e830-f677-494b-a7ec-85eac5f58e79@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rNUB0ygf6MPo85Dh"
Content-Disposition: inline
In-Reply-To: <8ef5e830-f677-494b-a7ec-85eac5f58e79@collabora.com>


--rNUB0ygf6MPo85Dh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Il 15/05/24 12:44, Lorenzo Bianconi ha scritto:
> > Enables the PHY_AIROHA_PCIE config by default.
> >=20
> > Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
>=20
> What about setting that as =3Dm ?
>=20
> Ignoring initrd, PCIe is not even boot critical on that platform :-)
>=20
> Cheers,
> Angelo

ack, I will fix it.

Regards,
Lorenzo

>=20
> > ---
> >   arch/arm64/configs/defconfig | 1 +
> >   1 file changed, 1 insertion(+)
> >=20
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > index a53c58584bcf..c0eacced5d41 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -1479,6 +1479,7 @@ CONFIG_RESET_QCOM_AOSS=3Dy
> >   CONFIG_RESET_QCOM_PDC=3Dm
> >   CONFIG_RESET_RZG2L_USBPHY_CTRL=3Dy
> >   CONFIG_RESET_TI_SCI=3Dy
> > +CONFIG_PHY_AIROHA_PCIE=3Dy
> >   CONFIG_PHY_XGENE=3Dy
> >   CONFIG_PHY_CAN_TRANSCEIVER=3Dm
> >   CONFIG_PHY_SUN4I_USB=3Dy
>=20

--rNUB0ygf6MPo85Dh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZkXi/QAKCRA6cBh0uS2t
rE0jAP90ihHh6/dLgpD1pkA83izNRC5KG+v60l3o1TWdO+HiWgEA0fsIX9BnTHiM
Mx5qER7VY3d/NueWI1UdKLKplwEYuAk=
=uulB
-----END PGP SIGNATURE-----

--rNUB0ygf6MPo85Dh--

