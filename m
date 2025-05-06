Return-Path: <devicetree+bounces-174282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C547CAACB15
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 18:35:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 31AA650606E
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 16:35:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E225283CBE;
	Tue,  6 May 2025 16:35:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jxx0uI9/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A17B2836BE
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 16:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746549304; cv=none; b=ojvkkvbWQj+Ew7CAtyfsD4c2ZL3xYn56oiKvmBIKccDwVrhv4IxmGRzzeccNREBx+zDBBe/RmmFaUBVewwARD6Bn/Zq55p0G+Ovp5x+ApKLuwqMRCYQLLvUPDxm7xJJo1SIkCjXXSMI0b+iUqxJVzDqEjzgd4EUmLfOmrGalkHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746549304; c=relaxed/simple;
	bh=uoptlTpW6qeK2AgUdwaGx1IisUVQuZQm4yEmqfnzTbI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Aa/56xjloA7RFDh50Use+ybyJf7Oi/NEvFAu/TXYJc3wJCLU0yWmH7iWsSCLe4deHI1UHCERdYxpTjvZnfdG1q9axQm4pqL8ksNuIh2DFdhHZYMEnsnK4nbfpRYpBckCPY3uUcVGTngJaFNIUZvurcYEvbbKxRr8enrqSW93KZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jxx0uI9/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AFBDC4CEE4;
	Tue,  6 May 2025 16:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746549303;
	bh=uoptlTpW6qeK2AgUdwaGx1IisUVQuZQm4yEmqfnzTbI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Jxx0uI9/nEy5R97VUwfzVk64Y3uxY0P/9N69G2xEsBrshABBz6A7XyunpO7cDfLHy
	 /6KzEl+Ul8L0n7E9r5DPzBowSEsIX3/tvLbu9y49wkVZJ206+mt8aYKXRVF04cWaUM
	 qZB+6mMGzlwaFefNRQRB54mkuotGYGN7xxLhI2PaA0cicmE7Ami/iI/Y5BDGP9S34U
	 w2zYZEXyDvTXY52pImHjYKUVAR7SUiy2WK6C/jLhz4KZ81aVSE99EFZiE2qWePP8Vo
	 gjN37lTeMXPNGk7SvsP2lOelmt8TQqWUOrwQQR4I/FljuSZ6qd8oEJKrbZNpYqoClq
	 YDKGZcg0qlaGg==
Date: Tue, 6 May 2025 17:34:59 +0100
From: Conor Dooley <conor@kernel.org>
To: John Clark <inindev@gmail.com>
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	robh@kernel.org, krzysztof.kozlowski@linaro.org,
	conor+dt@kernel.org, jonas@kwiboo.se, frattaroli.nicolas@gmail.com,
	andrew@lunn.ch
Subject: Re: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add Luckfox Omni3576
 and Core3576 bindings
Message-ID: <20250506-navigate-cannabis-19078e498781@spud>
References: <20250506114115.613616-1-inindev@gmail.com>
 <20250506114115.613616-3-inindev@gmail.com>
 <20250506-almighty-uncork-f7a0bc42d763@spud>
 <c8114ff8-f207-4ea8-aaf1-298dcea9f030@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="XP6d7CgI79zNHt7u"
Content-Disposition: inline
In-Reply-To: <c8114ff8-f207-4ea8-aaf1-298dcea9f030@gmail.com>


--XP6d7CgI79zNHt7u
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 06, 2025 at 11:54:10AM -0400, John Clark wrote:
> On 5/6/25 11:44 AM, Conor Dooley wrote:
> > On Tue, May 06, 2025 at 07:41:14AM -0400, John Clark wrote:
> > > Add device tree binding for the Luckfox Omni3576 Carrier Board with
> > > Core3576 Module, based on the Rockchip RK3576 SoC.
> > >=20
> > > Signed-off-by: John Clark <inindev@gmail.com>
> > > ---
> > >   Documentation/devicetree/bindings/arm/rockchip.yaml | 10 ++++++++++
> > >   1 file changed, 10 insertions(+)
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Do=
cumentation/devicetree/bindings/arm/rockchip.yaml
> > > index 455fbb290b77..826dede32145 100644
> > > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > @@ -715,6 +715,16 @@ properties:
> > >             - const: lckfb,tspi-rk3566
> > >             - const: rockchip,rk3566
> > > +      - description: Luckfox Core3576 Module
> > > +        items:
> > > +          - const: luckfox,core3576
> > > +          - const: rockchip,rk3576
> > > +
> > > +      - description: Luckfox Omni3576 Carrier Board
> > > +        items:
> > > +          - const: luckfox,omni3576
> > > +          - const: rockchip,rk3576
> >=20
> > Not sure this is correct, does the module not have to be attached to
> > this particular carrier to be used?
>=20
> The compute module and the carrier board together like the E25. Presumably
> the compute module would be used in other applications
> but the carrier board is not useful without it.
>=20
> Is the E25 done correctly here?  I can copy this format:

Yeah, the format below looks good for these type of carrier situations.

>=20
> model =3D "Radxa E25 Carrier Board";
> compatible =3D "radxa,e25", "radxa,cm3i", "rockchip,rk3568";
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/a=
rch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts?h=3Dv6.15-rc5
>=20
> compatible =3D "radxa,cm3i", "rockchip,rk3568";
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/a=
rch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi?h=3Dv6.15-rc5
>=20
> - description: Radxa Compute Module 3 (CM3)
> items:
>   - enum:
>       - radxa,cm3-io
>   - const: radxa,cm3
>   - const: rockchip,rk3566
>=20
> - description: Radxa CM3 Industrial
> items:
>   - enum:
>       - radxa,e25
>   - const: radxa,cm3i
>   - const: rockchip,rk3568
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/D=
ocumentation/devicetree/bindings/arm/rockchip.yaml?h=3Dv6.15-rc5
>=20
> >=20
> > > +
> > >         - description: Lunzn FastRhino R66S / R68S
> > >           items:
> > >             - enum:
> > > --=20
> > > 2.39.5
> > >=20

--XP6d7CgI79zNHt7u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaBo6MwAKCRB4tDGHoIJi
0geLAQDJ0izzs/rvcwECsDGYdXwC3w9wY2NmGbJVdF3BaY+1IwD/dtUh8DTEiNhe
uHU2gI6ycQ+XgXFh1JRJ3eBwkC5n4QQ=
=8jtU
-----END PGP SIGNATURE-----

--XP6d7CgI79zNHt7u--

