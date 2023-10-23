Return-Path: <devicetree+bounces-11014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9124A7D3CB5
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 18:37:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A6FE2815A8
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 16:37:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DED222566;
	Mon, 23 Oct 2023 16:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGXh1vBI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF4DC1DA39
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 16:37:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69DFFC433C7;
	Mon, 23 Oct 2023 16:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698079055;
	bh=4j4zRVpdENg4gFv1kRMTIK1mdiei4ouowMHUHlbMvdI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UGXh1vBIm6GumULitSKCEjbrLw/iuKY7Ps0Fn88fe0oLBpQKW5p6V9Ryv1rA5z0pl
	 EMJ333zl57pM9ZI0iRgqwVD67mvzLR0N6XdO+rvLmTCFcP/ElWFhrs10gNZNPyKDCu
	 JTgR4zI2YsIR9DfrAmi5bmIKPq4hRgeagt2GtBdepM9vDYyd8wt3vvcEgl6BBVdeWT
	 ZUhhDw21xgZtbhpe1uXMkaPKqWquaxdMYpSIk0sTtqO0pQDFUHIusVHKj+Ojlb0HiE
	 A2b+OjQmp0GYcDrPHtCNMHcOiC5ah1nv8gcAp7g6q9YEG8hqSV6+5eZWo+dhSdvkKN
	 UczVhSBh3Ajbg==
Date: Mon, 23 Oct 2023 17:37:29 +0100
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
Message-ID: <20231023-quote-wrongly-ed07265e12ac@spud>
References: <20231020130019.665853-1-alexander.stein@ew.tq-group.com>
 <20231020130019.665853-3-alexander.stein@ew.tq-group.com>
 <20231022-helper-dating-a0f65a8f6f72@spud>
 <5986192.lOV4Wx5bFT@steina-w>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xhT/qDoRzBha/YYS"
Content-Disposition: inline
In-Reply-To: <5986192.lOV4Wx5bFT@steina-w>


--xhT/qDoRzBha/YYS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 23, 2023 at 08:27:20AM +0200, Alexander Stein wrote:
> Am Sonntag, 22. Oktober 2023, 19:39:12 CEST schrieb Conor Dooley:
> > On Fri, Oct 20, 2023 at 03:00:15PM +0200, Alexander Stein wrote:
> > > Document the LDB bridge subnode and add the subnode into the example.
> > > For the subnode to work, the block control must scan its subnodes and
> > > bind drivers to them, do not misuse either simple-bus or simple-mfd
> > > here.
> > >=20
> > > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > > ---
> > >=20
> > >  .../soc/imx/fsl,imx93-media-blk-ctrl.yaml     | 44 +++++++++++++++++=
++
> > >  1 file changed, 44 insertions(+)
> > >=20
> > > diff --git
> > > a/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.=
yaml
> > > b/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.=
yaml
> > > index b3554e7f9e76..5ba66dfb0e05 100644
> > > ---
> > > a/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.=
yaml
> > > +++
> > > b/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.=
yaml>=20
> > > @@ -24,6 +24,12 @@ properties:
> > >    reg:
> > >      maxItems: 1
> > >=20
> > > +  '#address-cells':
> > > +    const: 1
> > > +
> > > +  '#size-cells':
> > > +    const: 1
> > > +
> > >=20
> > >    '#power-domain-cells':
> > >      const: 1
> > >=20
> > > @@ -46,9 +52,16 @@ properties:
> > >        - const: csi
> > >        - const: dsi
> > >=20
> > > +  bridge@20:
> > > +    type: object
> > > +    $ref: /schemas/display/bridge/fsl,ldb.yaml#
> > > +    unevaluatedProperties: false
> > > +
> > >=20
> > >  required:
> > >    - compatible
> > >    - reg
> > >=20
> > > +  - '#address-cells'
> > > +  - '#size-cells'
> >=20
> > It seems to make little sense to me that these would become required
> > when the bridge is optional. Is it valid to have one of these
> > media-blk-ctrls without the ldb subnode?
>=20
> fsl,imx93-media-blk-ctrl privides several power-domains (DSI, CSI, ISI, P=
XP=20
> and LCDIF), currently unused. This series introduces the usage for LCDIF =
power=20
> domain. LDB is the LVDS display bridge. So there are several power domain=
s=20
> which don't requires the usage of ldb.
> On the other hand I prefer consistency, so I opted to keep things similar=
 to=20
> commit 1cb0c87d27dc. If it shall not be added here, it should be removed =
in=20
> Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml =
as=20
> well.

IIRC the tooling will complain if you have an enabled node containing
#address-cells and/or #size-cells but no child nodes, so making
#address-cells or #size-cells required will cause problems. Looks like
the only user has the child node, so it didn't crop up yet.

--xhT/qDoRzBha/YYS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTahSAAKCRB4tDGHoIJi
0vS+AQC45ElFCzZEUe5/Th99QAcnTpLwpHp/8fZYeUbBNEHJSgEAv/Eh5gQhIGd6
z2Ep4eW1LJXgSQL1VLTN6vznUdXFtgQ=
=U4hY
-----END PGP SIGNATURE-----

--xhT/qDoRzBha/YYS--

