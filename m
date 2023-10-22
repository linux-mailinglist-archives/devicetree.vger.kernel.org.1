Return-Path: <devicetree+bounces-10639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3E17D2503
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 19:39:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6B704B20CA5
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 17:39:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2241A111B0;
	Sun, 22 Oct 2023 17:39:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6/4L4H7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 058B823C9
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 17:39:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B49A0C433C8;
	Sun, 22 Oct 2023 17:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697996358;
	bh=V2tHPMR1TOkzDOcp6KPYSszP9A29fq1AuLXpL5Br5NM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K6/4L4H7VtSF3BDW3Lq6DK9X1E8D3f58bD2SDrSbnNAGYVFktdLMflOBllDGlYWoC
	 GIiHZIuL8+AfxBwjT+JTZAcPcjA7TfMFEXeaYSIy6H3i1EL3MuuGrmPLGMaGXtxcHn
	 L2iTgbKxkiU3ufeX30VLqh1pcCWhMw6pOfvLwAQVPrLbiKRtXnh2YKFqBPsRoQrsIn
	 YSm2UF9eJISTXVDKPKU1q5Hy1i52Ze9JT3TX3KAHhujFayx9ME/oYAVZG+q38n0Vvl
	 lx6oMuZ6+zcugE2dq0PNpBkH6Pdv/ODEzfnZR0bMMrkk9V2ID3hKA6Z3Jxy3DTSf23
	 TR7830cTppCgA==
Date: Sun, 22 Oct 2023 18:39:12 +0100
From: Conor Dooley <conor@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>, Marek Vasut <marex@denx.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com,
	linux-clk@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH 2/5] dt-bindings: soc: imx93-media-blk-ctrl: Add LDB
 subnode into schema and example
Message-ID: <20231022-helper-dating-a0f65a8f6f72@spud>
References: <20231020130019.665853-1-alexander.stein@ew.tq-group.com>
 <20231020130019.665853-3-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="OjkkNCobwn9OU9NU"
Content-Disposition: inline
In-Reply-To: <20231020130019.665853-3-alexander.stein@ew.tq-group.com>


--OjkkNCobwn9OU9NU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Yo,

On Fri, Oct 20, 2023 at 03:00:15PM +0200, Alexander Stein wrote:
> Document the LDB bridge subnode and add the subnode into the example.
> For the subnode to work, the block control must scan its subnodes and
> bind drivers to them, do not misuse either simple-bus or simple-mfd
> here.
>=20
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  .../soc/imx/fsl,imx93-media-blk-ctrl.yaml     | 44 +++++++++++++++++++
>  1 file changed, 44 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-bl=
k-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk=
-ctrl.yaml
> index b3554e7f9e76..5ba66dfb0e05 100644
> --- a/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.=
yaml
> +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.=
yaml
> @@ -24,6 +24,12 @@ properties:
>    reg:
>      maxItems: 1
> =20
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 1
> +
>    '#power-domain-cells':
>      const: 1
> =20
> @@ -46,9 +52,16 @@ properties:
>        - const: csi
>        - const: dsi
> =20
> +  bridge@20:
> +    type: object
> +    $ref: /schemas/display/bridge/fsl,ldb.yaml#
> +    unevaluatedProperties: false
> +
>  required:
>    - compatible
>    - reg

> +  - '#address-cells'
> +  - '#size-cells'

It seems to make little sense to me that these would become required
when the bridge is optional. Is it valid to have one of these
media-blk-ctrls without the ldb subnode?

>    - power-domains
>    - clocks
>    - clock-names
> @@ -77,4 +90,35 @@ examples:
>                 clock-names =3D "apb", "axi", "nic", "disp", "cam",
>                               "pxp", "lcdif", "isi", "csi", "dsi";
>        #power-domain-cells =3D <1>;
> +      #address-cells =3D <1>;
> +      #size-cells =3D <1>;
> +
> +      bridge@20 {
> +          compatible =3D "fsl,imx93-ldb";
> +          reg =3D <0x20 0x4>, <0x24 0x4>;
> +          reg-names =3D "ldb", "lvds";
> +          clocks =3D <&clk IMX93_CLK_LVDS_GATE>;
> +          clock-names =3D "ldb";
> +
> +          ports {
> +              #address-cells =3D <1>;
> +              #size-cells =3D <0>;
> +
> +              port@0 {
> +                  reg =3D <0>;
> +
> +                  ldb_from_lcdif2: endpoint {
> +                      remote-endpoint =3D <&lcdif2_to_ldb>;
> +                  };
> +              };
> +
> +              port@1 {
> +                  reg =3D <1>;
> +
> +                  ldb_lvds: endpoint {
> +                      remote-endpoint =3D <&ldb_to_panel>;
> +                  };
> +              };
> +          };
> +        };
>      };
> --=20
> 2.34.1
>=20

--OjkkNCobwn9OU9NU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTVeQAAKCRB4tDGHoIJi
0l9qAP0VlEaAluBRXsbW8N9Eandg3TOavmfUjpyH+1wBFkQQOwEA0yPLz0di2m0x
pDXwKnhPdmOAymwdxMVUVzBgnfeRrgs=
=7x7o
-----END PGP SIGNATURE-----

--OjkkNCobwn9OU9NU--

