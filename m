Return-Path: <devicetree+bounces-6071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 063267B9CA0
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 12:54:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 9C490281B2E
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 10:54:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02A47125D2;
	Thu,  5 Oct 2023 10:54:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jylTMHbv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56871C3D
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 10:54:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5903BC32782;
	Thu,  5 Oct 2023 10:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696503274;
	bh=r9QAN25ECg8YV7rovLkgwPyjjglMxbc27XwhgPj0p2k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jylTMHbvJxFAMVfEx+/VTWJ5qLSXYONVK3QwgUliTNxTLcVa8fp1LiFRhv8pXAEiG
	 c6IiyFrR/PMIZPxfaWHGeiEjHY7WqILh+Dz+ukbT78vExFr+jS34I+5LH3isMfZ44S
	 qJKlRR8+urhiXnx8GpuqU0JHlw2ssmvVraMs/zIj7WyVlj3504YyoTfBlXUEIySbmG
	 7SRdbQEUn0OJ7UxE9O9zzI0SzobLyNc1nPSIQU4xE3oVxKEOkYDjFgN/iuu3G0Cxqh
	 H/3Q+LOeLDOYEiQ3Jx6lKEWtH40Fo7GS0K4LLz7c4KaAka3U16sUdq0wM80Xwsg+9q
	 9RYFeYnWmN0Zw==
Date: Thu, 5 Oct 2023 11:54:29 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: shravan chippa <shravan.chippa@microchip.com>, green.wan@sifive.com,
	vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	palmer@dabbelt.com, paul.walmsley@sifive.com, conor+dt@kernel.org,
	dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	nagasuresh.relli@microchip.com, praveen.kumar@microchip.com,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2 2/4] dt-bindings: dma: sf-pdma: add new compatible name
Message-ID: <20231005-wanted-plausible-71dae05ccc7b@spud>
References: <20231003042215.142678-1-shravan.chippa@microchip.com>
 <20231003042215.142678-3-shravan.chippa@microchip.com>
 <20231004133021.GB2743005-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="FXxfjJNs6siMoTeZ"
Content-Disposition: inline
In-Reply-To: <20231004133021.GB2743005-robh@kernel.org>


--FXxfjJNs6siMoTeZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 04, 2023 at 08:30:21AM -0500, Rob Herring wrote:
> On Tue, Oct 03, 2023 at 09:52:13AM +0530, shravan chippa wrote:
> > From: Shravan Chippa <shravan.chippa@microchip.com>
> >=20
> > Add new compatible name microchip,mpfs-pdma to support
> > out of order dma transfers
> >=20
> > Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> > Signed-off-by: Shravan Chippa <shravan.chippa@microchip.com>
> > ---
> >  .../bindings/dma/sifive,fu540-c000-pdma.yaml         | 12 ++++++++----
> >  1 file changed, 8 insertions(+), 4 deletions(-)
> >=20
> > diff --git a/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pd=
ma.yaml b/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
> > index a1af0b906365..974467c4bacb 100644
> > --- a/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
> > +++ b/Documentation/devicetree/bindings/dma/sifive,fu540-c000-pdma.yaml
> > @@ -27,10 +27,14 @@ allOf:
> > =20
> >  properties:
> >    compatible:
> > -    items:
> > -      - enum:
> > -          - sifive,fu540-c000-pdma
> > -      - const: sifive,pdma0
> > +    oneOf:
> > +      - items:
> > +          - const: microchip,mpfs-pdma # Microchip out of order DMA tr=
ansfer
> > +          - const: sifive,fu540-c000-pdma # Sifive in-order DMA transf=
er

IIRC I asked for the comments here to be removed on the previous
version, and my r-b was conditional on that.
The device specific compatible has merit outside of the ordering, which
may just be a software policy decision.

> This doesn't really make sense. microchip,mpfs-pdma is compatible with=20
> sifive,fu540-c000-pdma and sifive,fu540-c000-pdma is compatible with=20
> sifive,pdma0, but microchip,mpfs-pdma is not compatible with=20
> sifive,pdma0? (Or replace "compatible with" with "a superset of")

TBH, I am not sure why it was done this way. Probably because the driver
contains both sifive,pdma0 and sifive,fu540-c000-pdma. Doing
compatible =3D "microchip,mpfs-pdma", "sifive,fu540-c000-pdma", "sifive,pdm=
a0";
thing would be fine.

> Any fallback is only useful if an OS only understanding the fallback=20
> will work with the h/w. Does this h/w work without the driver changes?

Yes.=20
I've been hoping that someone from SiFive would come along, and in
response to this patchset, tell us _why_ the driver does not make use of
out-of-order transfers to begin with.

Thanks,
Conor.

--FXxfjJNs6siMoTeZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZR6V5AAKCRB4tDGHoIJi
0oX1AP4gvbx/YYM63FggUSYmU1/62CsJzHKn0+mB5T85IMCFwgD/cOxS4ARE5fEz
L4ddVpARkl5OfnTsKxySy+l9cZjbFgc=
=hzTR
-----END PGP SIGNATURE-----

--FXxfjJNs6siMoTeZ--

