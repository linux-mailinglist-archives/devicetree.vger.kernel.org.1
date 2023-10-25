Return-Path: <devicetree+bounces-11913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E467D6FAE
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:49:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D6669B20FB8
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:49:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22F1628691;
	Wed, 25 Oct 2023 14:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZvuYL0Ck"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E792D62F
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:49:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E5ECC433C8;
	Wed, 25 Oct 2023 14:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698245374;
	bh=g8c0ZqXEd+5miVwaaQEwfnrYYAhfuPmdWpJQcdlsakE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZvuYL0CkCqKmU8kEiF8yK/BtZZR7hOAaiJ2a2gYPUHteYQ6YOZey5rLFET4OueViT
	 MXbzzmDscQU5O6f+R/kV3rfcUCJxQJHV1ElJF56953GXqTyfBJ0XHzbXValfLXc5Ql
	 FB2R8+PzCtwp4y7awD1H26vEjCodXSR3GTmsrpPQOc52bf5US7wNT/ZztcsSn9P2/4
	 r2bypPZVFR+vZTWi9RAbRdy4Cam+I1HGY6+BFiQlxeW9ee1PASJy7FTAlT68VPW1tN
	 R3TpuzqoyoLi3j+PdSt7cczRvR3YQR7TUkZck/pm0lyXxjNdz26xnm97uYXPBDgf48
	 MystXecyzwGXg==
Date: Wed, 25 Oct 2023 15:49:28 +0100
From: Conor Dooley <conor@kernel.org>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?iso-8859-1?Q?N=EDcolas_F_=2E_R_=2E_A_=2E?= Prado <nfraprado@collabora.com>,
	Bernhard =?iso-8859-1?Q?Rosenkr=E4nzer?= <bero@baylibre.com>,
	Frank Wunderlich <frank-w@public-files.de>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH 3/6] dt-bindings: arm64: dts: mediatek: Add
 mt8183-kukui-jacuzzi-makomo
Message-ID: <20231025-charity-replica-9c9b03380d7f@spud>
References: <20231024000724.57714-1-hsinyi@chromium.org>
 <20231024000724.57714-4-hsinyi@chromium.org>
 <20231024-bobbed-although-06f341259ebb@spud>
 <CAJMQK-hvhjNGFUfgqb7pm=pAYjJ0wZAhkPGXxDCUJ5cnUDh2gw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZJFVlm9+Zn/c9yF1"
Content-Disposition: inline
In-Reply-To: <CAJMQK-hvhjNGFUfgqb7pm=pAYjJ0wZAhkPGXxDCUJ5cnUDh2gw@mail.gmail.com>


--ZJFVlm9+Zn/c9yF1
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 24, 2023 at 11:22:00AM -0700, Hsin-Yi Wang wrote:
> On Tue, Oct 24, 2023 at 8:17=E2=80=AFAM Conor Dooley <conor@kernel.org> w=
rote:
> >
> > On Mon, Oct 23, 2023 at 05:02:26PM -0700, Hsin-Yi Wang wrote:
> > > Add makomo sku0 and sku1 which uses different audio codec.
> > >
> > > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > > ---
> > >  Documentation/devicetree/bindings/arm/mediatek.yaml | 12 ++++++++++++
> > >  1 file changed, 12 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Do=
cumentation/devicetree/bindings/arm/mediatek.yaml
> > > index fe8c488a3207..b131e0bdbf01 100644
> > > --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> > > @@ -250,6 +250,18 @@ properties:
> > >                - google,kodama-sku32
> > >            - const: google,kodama
> > >            - const: mediatek,mt8183
> > > +      - description: Google Makomo (Lenovo 100e Chromebook 2nd Gen M=
TK 2)
> > > +        items:
> > > +          - const: google,makomo-rev4-sku0
> > > +          - const: google,makomo-rev5-sku0
> >
> > With these bindings, how does one describe a makomo-rev5-sku0?
> > What you have here is only suitable for describing the makomo-rev4-sku0.
> >
> makomo-rev5-sku0 and makomo-rev4-sku0 uses the same dts:
>=20
> compatible =3D "google,makomo-rev4-sku0", "google,makomo-rev5-sku0",
>                       "google,makomo", "mediatek,mt8183";
>=20
> In this case, can bindings be listed like that?

On a rev5-sku0, the first compatible should be the most specific one,
which would mean:

compatible =3D "google,makomo-rev5-sku0", "google,makomo", "mediatek,mt8183=
";

I said the same on other google laptop bindings before, but I'm not
really happy with these compatible configurations, that seem conjured up
to suit your firmware. It'd make far more sense to me to have a setup
that permitted:
compatible =3D "google,makomo-sku0-rev5", "google,makomo-sku0", "google,mak=
omo", "mediatek,mt8183";
and
compatible =3D "google,makomo-sku0-rev4", "google,makomo-sku0", "google,mak=
omo", "mediatek,mt8183";

Cheers,
Conor.

> > > +          - const: google,makomo
> > > +          - const: mediatek,mt8183
> > > +      - description: Google Makomo (Lenovo 100e Chromebook 2nd Gen M=
TK 2)
> > > +        items:
> > > +          - const: google,makomo-rev4-sku1
> > > +          - const: google,makomo-rev5-sku1
> > > +          - const: google,makomo
> > > +          - const: mediatek,mt8183
> > >        - description: Google Willow (Acer Chromebook 311 C722/C722T)
> > >          items:
> > >            - enum:
> > > --
> > > 2.42.0.758.gaed0368e0e-goog
> > >

--ZJFVlm9+Zn/c9yF1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTkq+AAKCRB4tDGHoIJi
0rnGAP9ZabySIiA8SVpNMYulGM3x3bCMQhPDIuSRdNFrqvuBKgEApPdAFGmmDMNE
Pqyn5ngRg4/wRf9xVNi8zaqOYEf2ug0=
=ShOI
-----END PGP SIGNATURE-----

--ZJFVlm9+Zn/c9yF1--

