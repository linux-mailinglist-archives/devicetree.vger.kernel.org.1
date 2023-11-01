Return-Path: <devicetree+bounces-13473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D1F7DE2D5
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 16:16:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1CEB61C20A48
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:16:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D22413AC3;
	Wed,  1 Nov 2023 15:16:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qeZKcxjO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5160663C
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 15:16:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24BB8C433C9;
	Wed,  1 Nov 2023 15:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698851815;
	bh=Ti93Sl0y1+/KdodBJQqgUAuD2hxTp2zRLxiqbtXZpvU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qeZKcxjO0b0GDkMbx2qZx+3MVRDq4xOrqUdQKYFFkHPefdKlzlci6l/Ti3lJpRr9L
	 29ZVJcDuNVvqEefrtFQtBkDWvmE5/lDle21Pm2ReRzJoDJX+90aoSU5QOwbJI/j8Om
	 TT2Tnd029bdTAEXiSA3uqoKZKaF7ddNBqdzrRPcOvrv8HxPeuJGzs2BuXsbDhxi32T
	 hHQjra5LD0nyBg4zTh2ZHsYCSghoaYcpgkcV5bB30Oum/vbZzjTbl1I1ZgnMzw3GIZ
	 /2oDHwsqPLYX0rACfCcOiTOZDXnaOE7tDyXKywFQg+RqTmX2IX05ZU67h264+TYzg0
	 LQi4jpzZM7nuw==
Date: Wed, 1 Nov 2023 15:16:50 +0000
From: Conor Dooley <conor@kernel.org>
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, Li Yang <leoyang.li@nxp.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: imx8mn-rve-gateway: add support for RVE
 gateway board
Message-ID: <20231101-nebulizer-lasso-a901cd564dd1@spud>
References: <20231101144303.2653464-1-hugo@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="FsR/i9tL1//uke2c"
Content-Disposition: inline
In-Reply-To: <20231101144303.2653464-1-hugo@hugovil.com>


--FsR/i9tL1//uke2c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 01, 2023 at 10:43:02AM -0400, Hugo Villeneuve wrote:
> From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
>=20
> The RVE gateway board is based on a Variscite VAR-SOM-NANO,
> with a NXP MX8MN nano CPU.
>=20
> Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> ---
>  .../devicetree/bindings/arm/fsl.yaml          |   1 +
>  MAINTAINERS                                   |   7 +
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../boot/dts/freescale/imx8mn-rve-gateway.dts | 296 ++++++++++++++++++
>  4 files changed, 305 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mn-rve-gateway.dts
>=20
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentati=
on/devicetree/bindings/arm/fsl.yaml
> index 9450b2c8a678..a1028fe8ed02 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -1007,6 +1007,7 @@ properties:
>                - fsl,imx8mn-ddr4-evk       # i.MX8MN DDR4 EVK Board
>                - fsl,imx8mn-evk            # i.MX8MN LPDDR4 EVK Board
>                - gw,imx8mn-gw7902          # i.MX8MM Gateworks Board
> +              - rve,rve-gateway           # i.MX8MN RVE Gateway Board
>            - const: fsl,imx8mn

Changes to dt-bindings should be in their own patch. Did checkpatch not
whinge about this?

Cheers,
Conor.

--FsR/i9tL1//uke2c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZUJr4gAKCRB4tDGHoIJi
0hJeAP4yPfhlHJ215vgRPFBYt2Fcr+zuyZOTHrBzdkh5b4+ciQD+N/YqfkXZ9SKj
0l+NSpkEgvh+kgVCZGIlWdx21zA7rQ0=
=iwUT
-----END PGP SIGNATURE-----

--FsR/i9tL1//uke2c--

