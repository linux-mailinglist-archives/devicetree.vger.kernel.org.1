Return-Path: <devicetree+bounces-8628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 728137C94CB
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 15:40:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A1BB281CF8
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 13:40:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EC5412B70;
	Sat, 14 Oct 2023 13:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtudWUdm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E95A125B8
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 13:40:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EB91C433C7;
	Sat, 14 Oct 2023 13:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697290830;
	bh=Q7S8F6R40H3dp08d7ADufCqrKm/jY9RVIY4yJv03XpU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MtudWUdmOGkVZtuiMPkUlH9w655ewkgWloSW/vKAAHZOQb/Fk4hOeLKUfEdclV9cY
	 BgRkM2JuqYi5QupGSUBgz2DvztSR7eec8+kmsuJSx66RcbvjQRsR5ouuopPHsiQ7By
	 rjch+xdUi2+R/DD5B4+ooHAWT4ALKKCPsxb6SDt754iMuAkm9v5+Zc5FkfOQ/CN8Ex
	 nUm3sEATd4YHyD97ADgGpH65wYyZb/+3D++euAQhIrvl2YkSp4LB79Owbzkl6ohLom
	 QYdHstofKuESfC2rdpe+Z0CsYJeqHc5VTc2dP4UjWWP2LzbIk6QM8VdCHWXWEw4Uwd
	 DKJ7bHXXcxzGQ==
Date: Sat, 14 Oct 2023 14:40:26 +0100
From: Conor Dooley <conor@kernel.org>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/9] dt-bindings: arm: mediatek: Add MT8186 Tentacruel /
 Tentacool Chromebooks
Message-ID: <20231014-proud-levers-eb03f30a0a9a@spud>
References: <20231012230237.2676469-1-wenst@chromium.org>
 <20231012230237.2676469-3-wenst@chromium.org>
 <20231013-washer-mortally-b27c196ac50f@spud>
 <CAGXv+5GF7HfQSOg9c=G+c4DPUW24Ax7LX4raTynDbE3xc8iCdg@mail.gmail.com>
 <20231013-panic-vaseline-350c10e7d585@spud>
 <CAGXv+5EmLDWi3Lnca1vPft=9z9Cp2L2ee08in_b_21hipf9ieQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="b4w+Q0lAZjVdrBkg"
Content-Disposition: inline
In-Reply-To: <CAGXv+5EmLDWi3Lnca1vPft=9z9Cp2L2ee08in_b_21hipf9ieQ@mail.gmail.com>


--b4w+Q0lAZjVdrBkg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 13, 2023 at 11:19:16AM -0700, Chen-Yu Tsai wrote:
> On Fri, Oct 13, 2023 at 10:55=E2=80=AFAM Conor Dooley <conor@kernel.org> =
wrote:
> >
> > On Fri, Oct 13, 2023 at 10:29:25AM -0700, Chen-Yu Tsai wrote:
> > > On Fri, Oct 13, 2023 at 8:11=E2=80=AFAM Conor Dooley <conor@kernel.or=
g> wrote:
> > > >
> > > > On Fri, Oct 13, 2023 at 07:02:28AM +0800, Chen-Yu Tsai wrote:
> > > > > Add entries for MT8186 based Tentacruel / Tentacool Chromebooks. =
The two
> > > > > are based on the same board design: the former is a convertible d=
evice
> > > > > with a touchscreen, stylus, and some extra buttons; the latter is=
 a
> > > > > clamshell device and lacks these additional features.
> > > > >
> > > > > The two devices both have two variants. The difference is a second
> > > > > source touchpad controller that shares the same address as the or=
iginal,
> > > > > but is incompatible.
> > > >
> > > > > The extra SKU IDs for the Tentacruel devices map to different sen=
sor
> > > > > components attached to the Embedded Controller. These are not vis=
ible
> > > > > to the main processor.
> > > >
> > > > Wha? Given your ordering, is a "google,tentacruel-sku262144" a supe=
r-set
> > > > of "google,tentacruel-sku262145"? If not, this compatible ordering
> > > > doesn't make sense. I can't tell from your description, and the
> > > > absence of a
> > > > items:
> > > >           - const: google,tentacruel-sku262145
> > > >           - const: google,tentacruel-sku262146
> > > >           - const: google,tentacruel-sku262147
> > > >           - const: google,tentacruel
> > > >           - const: mediatek,mt8186
> > > > suggests that there is no google,tentacruel-sku262145
> > > > device?
> > >
> > > AFAIK all four SKUs exist. And as far as the main processor is concer=
ned,
> > > they look completely identical, so they should share the same device =
tree.
> > > As mentioned in the commit message, the differences are only visible =
to
> > > the embedded controller, which fuses the sensor inputs.
> >
> > Then it makes very little sense to write a binding like this.
> > If this was just for the 252144 SKU, this would be fine.
> > For the other SKUs, there is no way to uniquely identify them, as
> > all four of google,tentacruel-sku262144, google,tentacruel-sku262145,
> > google,tentacruel-sku262146 and google,tentacruel-sku262147 must be
> > present.
> > Given that, why even bother including the SKUs in the first place,
> > since no information can be derived from them that cannot be derived
> > from google,tentacruel?
> > There's something that I am clearly missing here...
>=20
> There are incompatible variants of google,tentacruel. This is why this
> patch has four google,tentacruel based entries. Of them, two are Tentacoo=
l,
> which are clamshell laptops, and two of them are Tentacruel, which are
> convertibles.
>=20
> Within each group there are two variants: the second variant swaps out
> the I2C touchpad controller. These two controllers use the same I2C
> address but use different compatible strings, so it's not possible to
> have them coexist within the same device tree file like we do for many
> other second source components.
>=20
> So the relationship looks like the following:
>=20
> google,tentacruel --- Tentacruel --- google,tentacruel-sku26214[4567]
>                    |              |
>                    |              -- google,tentacruel-sku2621{48,49,50,5=
1}
>                    |
>                    -- Tentacool ---- google,tentacruel-sku327681
>                                  |
>                                  --- google,tentacruel-sku327683
>=20
> Also, the devices themselves only know their own SKU ID. The firmware
> will generate a list of compatible strings like:
>=20
>   google,tentacruel-rev4-sku262144
>   google,tentacruel-rev4
>   google,tentacruel-sku262144
>   google,tentacruel
>=20
> and try to find a match in the kernel FIT image. The method we currently
> use is to include all the applicable board compatible strings.

Then it seems like what you need is something like
oneOf:
  - items:
      - const: google,tentacruel-sku262144
      - const: google,tentacruel
      - const: mediatek,mt8186
  - items:
      - enum:
          - google,tentacruel-sku262145
          - google,tentacruel-sku262146
          - google,tentacruel-sku262147
      - const: google,tentacruel-sku262144
      - const: google,tentacruel
      - const: mediatek,mt8186

What you have at the moment just seems like a hack because you want to
stuff all of these compatible strings into a single dts.

--b4w+Q0lAZjVdrBkg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSqaSgAKCRB4tDGHoIJi
0gbnAQDGQcQ7MJqo0/Jx5hbcdClD/QjvbaXEraD9NCdZaPFYMQD/Sa/mYcHlGnri
2n+JqH9dPz1y7uvoAvkEKszgdbYljQw=
=JYvf
-----END PGP SIGNATURE-----

--b4w+Q0lAZjVdrBkg--

