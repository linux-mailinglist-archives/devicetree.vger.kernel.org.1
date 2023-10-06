Return-Path: <devicetree+bounces-6416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C53E7BB436
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 11:30:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 937C7282123
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 09:30:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAA2F12B9A;
	Fri,  6 Oct 2023 09:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oV7nJE7t"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 918FB125C8;
	Fri,  6 Oct 2023 09:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C5D0C433C7;
	Fri,  6 Oct 2023 09:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696584606;
	bh=X+gyCNuttx65afYQmM1XbC4BVY4NKTMe7P7eG20cYvI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oV7nJE7trH7bHWGst1p5CracmcgyV+yxJgvIYJjBvDO+4wbhBd7cmRmCODWBswK5X
	 hZMVnT4NSmZcMTMfN1i9In0nTOV8vBcqJdmE2edGy5146U4TdBL1EFFqzAPZWB/Ahr
	 r2xFiy8FBjjokRqDZ3PQQqXmLFIv6dePXvvAZ9hZlfOy7AXtAw5+PsqcZtPOAFFePk
	 nn3XUUtKP6sl0Stg6kzdKCk6eXcHDBejQdpvoo0MERUO3ScnWJKgzxum7iG4mxNmF+
	 CfYWAcfvLgppuNGExUmaTGQGAmoKMmP0pK6LR87zJANzr58PbEnPVkwVgcH3yiIJfv
	 N9FrwDLLqUk/w==
Date: Fri, 6 Oct 2023 10:30:00 +0100
From: Conor Dooley <conor@kernel.org>
To: Christophe ROULLIER <christophe.roullier@foss.st.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Richard Cochran <richardcochran@gmail.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 02/12] dt-bindings: net: add new property
 st,ext-phyclk in documentation for stm32
Message-ID: <20231006-storable-smugness-6a6820ebb6cf@spud>
References: <20230928151512.322016-1-christophe.roullier@foss.st.com>
 <20230928151512.322016-3-christophe.roullier@foss.st.com>
 <20230928-ruse-parsnip-ce691bd4d0c9@spud>
 <85e3b93c-36b2-cb4c-9438-ad05d24b3332@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="XWEolTRpRQdNMg4C"
Content-Disposition: inline
In-Reply-To: <85e3b93c-36b2-cb4c-9438-ad05d24b3332@foss.st.com>


--XWEolTRpRQdNMg4C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 05, 2023 at 11:03:43AM +0200, Christophe ROULLIER wrote:
>=20
> On 9/28/23 19:17, Conor Dooley wrote:
> > On Thu, Sep 28, 2023 at 05:15:02PM +0200, Christophe Roullier wrote:
> > > Add property st,ext-phyclk to manage cases when PHY have no cristal/q=
uartz
> > > This property can be used with RMII phy without cristal 50Mhz and whe=
n we
> > > want to select RCC clock instead of ETH_REF_CLK
> > > Can be used also with RGMII phy with no cristal and we select RCC clo=
ck
> > > instead of ETH_CLK125
> > > This new property replace st,eth-clk-sel and st,eth-ref-clk-sel
> > I don't really see a response to Rob's comment on v2, either here or in
> > a reply to his email on v2:
> > | Certainly 1 property is better than 2 for me, but carrying 3 is not
> > | great. I don't understand why the we need a new property. What can't =
be
> > | supported with the existing properties?
> >=20
> > A sentence saying explaining exactly what the old properties do not
> > support that this one does, would be very helpful.

> I understand your remarks, the goal of the new property is to be more sim=
ple
> for customers/users
>=20
> with old properties we have lots of support to explain which one to use in
> which cases, now only one property to use (regardless of mode)

I'm inclined to say "that's tough" & that the existing property
descriptions should be improved rather than adding yet a third one.
Maybe you're lucky and Rob disagrees with me :)

Thanks,
Conor.

> > > Signed-off-by: Christophe Roullier <christophe.roullier@foss.st.com>
> > > ---
> > >   Documentation/devicetree/bindings/net/stm32-dwmac.yaml | 9 +++++++++
> > >   1 file changed, 9 insertions(+)
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/net/stm32-dwmac.yaml b=
/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
> > > index ca976281bfc22..67840cab02d2d 100644
> > > --- a/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
> > > +++ b/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
> > > @@ -78,12 +78,21 @@ properties:
> > >         encompases the glue register, the offset of the control regis=
ter and
> > >         the mask to set bitfield in control register
> > > +  st,ext-phyclk:
> > > +    description:
> > > +      set this property in RMII mode when you have PHY without cryst=
al 50MHz and want to
> > > +      select RCC clock instead of ETH_REF_CLK. or in RGMII mode when=
 you want to select
> > > +      RCC clock instead of ETH_CLK125.
> > > +    type: boolean
> > > +
> > >     st,eth-clk-sel:
> > > +    deprecated: true
> > >       description:
> > >         set this property in RGMII PHY when you want to select RCC cl=
ock instead of ETH_CLK125.
> > >       type: boolean
> > >     st,eth-ref-clk-sel:
> > > +    deprecated: true
> > >       description:
> > >         set this property in RMII mode when you have PHY without crys=
tal 50MHz and want to
> > >         select RCC clock instead of ETH_REF_CLK.
> > > --=20
> > > 2.25.1
> > >=20

--XWEolTRpRQdNMg4C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZR/TlwAKCRB4tDGHoIJi
0htAAPoDIpGKoxqgwmpbLaqFYFbJoORCve21nUaBMeoV7oXrnwEA7WAWoOsddrra
Y6AaAwcSOdndS0cRdxGuTlwC24VpXQs=
=i9+i
-----END PGP SIGNATURE-----

--XWEolTRpRQdNMg4C--

