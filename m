Return-Path: <devicetree+bounces-12489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFC97D9B09
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:20:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 48CE3282336
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:20:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 541B736B02;
	Fri, 27 Oct 2023 14:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwZ0arhI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F2F36AF7
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:19:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E86CFC433C7;
	Fri, 27 Oct 2023 14:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698416385;
	bh=c2R/xhm4pVA5pqWVsBj3t+Q0miXwpka3DEspSUC6mVo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RwZ0arhICQZyQeARXiAJrvs/YCNAoE7XkJx6EmjgxsWqUjzXgdzZidmwxrcPwIV5i
	 SVL/qmk/lDRPNnn+rl88y1MhRU6R/cuJnnaKx7vDtU9VziKaEtQkUGGnKJNj++BIfp
	 v0qEEVMCokXhWZBt9kmiqBtA3ajIuz2K24hzEvcVSKQNGJtyNzf2w2QIidjmCfW48r
	 firhKTtu9ZNQqBBee1j61HTQK/jJ3tLgtk/Z7ngaHQeAog7N4P+TTdQLomO0Pj953y
	 KmQuha9G/Td9EJejlyY7CxlgmcXq2ZrO8uGtcF4wGMnp9ZzHOL9tmlsl15ig48R6VO
	 M78yhZ5sACzng==
Date: Fri, 27 Oct 2023 15:19:40 +0100
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Elad Nachman <enachman@marvell.com>, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	andrew@lunn.ch, gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com, pali@kernel.org,
	mrkiko.rs@gmail.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	cyuval@marvell.com
Subject: Re: [PATCH v3 2/3] dt-bindings: arm64: dts: add dt-bindings for ac5x
 rd carrier
Message-ID: <20231027-opposite-frostily-b41eb861c8a1@spud>
References: <20231026084735.3595944-1-enachman@marvell.com>
 <20231026084735.3595944-3-enachman@marvell.com>
 <1075eedc-3e7e-4070-8cf2-ae63513fd764@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9sK3/vJ3qUaD1UFK"
Content-Disposition: inline
In-Reply-To: <1075eedc-3e7e-4070-8cf2-ae63513fd764@linaro.org>


--9sK3/vJ3qUaD1UFK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 27, 2023 at 01:09:58PM +0200, Krzysztof Kozlowski wrote:
> On 26/10/2023 10:47, Elad Nachman wrote:
> > From: Elad Nachman <enachman@marvell.com>
> >=20
> > Add dt bindings for AC5X RD COM Express Type 7 carrier board.
> > This board will Accept a CN9131 COM Express Type 7 CPU module.
> >=20
> > Signed-off-by: Elad Nachman <enachman@marvell.com>
> > ---
> >  .../devicetree/bindings/arm/marvell/armada-7k-8k.yaml     | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k=
=2Eyaml b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
> > index 52d78521e412..71bc94047d1b 100644
> > --- a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
> > +++ b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
> > @@ -60,4 +60,12 @@ properties:
> >            - const: marvell,armada-ap807-quad
> >            - const: marvell,armada-ap807
> > =20
> > +      - description: AC5X RD COM Express Carrier for Armada CN9131 SoC=
 with one external CP
> > +        items:
> > +          - const: marvell,ac5x_rd_carrier
>=20
> No underscores in compatibles.

Oh shit, I didn't notice that somehow. Un-acked until that's removed.

> Do you see them anywhere? Please use
> existing, recent code as start of your contributions, not something
> buggy 5 years old.
>=20
> Best regards,
> Krzysztof
>=20

--9sK3/vJ3qUaD1UFK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTvG/AAKCRB4tDGHoIJi
0u6iAQCPzo2UK8Sm6+yYf/oKferrIQShLCKKh7+EHiYs9GOmYQEAsZGuIcYaRi6s
bctUdaidhLu5pLyx5AAQHHJlBxtZGgU=
=RpIb
-----END PGP SIGNATURE-----

--9sK3/vJ3qUaD1UFK--

