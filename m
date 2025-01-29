Return-Path: <devicetree+bounces-141728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C3FA22343
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 18:45:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C75423A10EB
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 17:44:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C29E91E0B82;
	Wed, 29 Jan 2025 17:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pcrXzW7S"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 988891DF255;
	Wed, 29 Jan 2025 17:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738172701; cv=none; b=th6e3LRQEVYVurbz4YiYYxsdc7iy5KL/v4TaOYY1lmW8RrI8cl4+V02Llne0fFwXvx6X6F8/UmBQwZPZUElDKOsgjoTp8T0AktigaDKJGnkVRX99Z6h4/Vcwq4EVhQhHfF5LCabvl2sXW5eFRrjZWKmncwCBgZhuhywvW2Um9Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738172701; c=relaxed/simple;
	bh=PCTPxKzIuyr8+qeAeyNw+BMlbBMarwgIFTdJW5hityo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uT5LaclB/r8JS3IIm88VSAMlqqXfi/OAyB+XsRG53Tmd+y9SD9Sl+BplRSnkFkq4sM/x6sFNh0kDwVSohtWaUplIuWwG5vAxB51X/Np6MPz/0k8aEcZb50GayO7ADq7K1ewjL3VPsry0NaO5SiIMYlq3GwL2wLS5a5Fd+ZPyzcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pcrXzW7S; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF788C4CED1;
	Wed, 29 Jan 2025 17:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738172701;
	bh=PCTPxKzIuyr8+qeAeyNw+BMlbBMarwgIFTdJW5hityo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pcrXzW7S9xIi3gYU8YTu7+rkgcXdp3792VZkdVAu/q0GNgDP/CCVKhSBdv+5cmEpa
	 CvFnFOlatra1nRkTC18m+PAFaky9L+At334lVFARvXrkhv865xoUGyxXzdh5IJPj9h
	 U7BhxirxRP68hMhtTbNISYwntxJI1o6nsKiXE29oriIRD7vQ6dFcxx+iEBtsaWHyTh
	 9J2CCRgds5x7xonCBAyDTmxBHeTC22rY/ow2Abatb1C2igx1Vx7s5LckXWeR0uWnI2
	 Siujk2tJJ8IhV4SaaufPHtT6VaLZ5zmaHxWSH0h8iMYcxDiaYgIn+V+rV185ejzk7X
	 80zcceoXmHmPg==
Date: Wed, 29 Jan 2025 17:44:56 +0000
From: Conor Dooley <conor@kernel.org>
To: Andrei Simion <andrei.simion@microchip.com>
Cc: krzk@kernel.org, alexandre.belloni@bootlin.com, broonie@kernel.org,
	claudiu.beznea@tuxon.dev, conor+dt@kernel.org,
	devicetree@vger.kernel.org, krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	robh@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: misc: atmel,at91-ssc: Convert to YAML
 format
Message-ID: <20250129-confound-progeny-62b1f12cb03d@spud>
References: <20250129-vagabond-scrupulous-scorpion-b57db9@krzk-bin>
 <20250129132822.9382-1-andrei.simion@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Q56Hn0/GZoH2mSPs"
Content-Disposition: inline
In-Reply-To: <20250129132822.9382-1-andrei.simion@microchip.com>


--Q56Hn0/GZoH2mSPs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 29, 2025 at 03:28:23PM +0200, Andrei Simion wrote:
> Hi,
>=20
> Thank you for the review.
>=20
> I will place this in: Documentation/devicetree/bindings/sound/
> because the SSC it is used only for Audio.
>=20
> >
> > Missing dai-cells. Old binding said 0, now you say anything...
> >
> > Missing required block
> >
> >> +allOf:
> >> +  - $ref: ../sound/dai-common.yaml#
> >
> > Full path, so /schemas/
> >
> >> +  - if:
> >> +      properties:
> >> +        compatible:
> >> +          contains:
> >> +            enum:
> >> +              - atmel,at91sam9g45-ssc
> >> +    then:
> >> +      required:
> >> +        - compatible
> >> +        - reg
> >> +        - interrupts
> >> +        - dmas
> >> +        - dma-names
> >
> > So only dmas?
> >
> >> +        - clocks
> >> +        - clock-names
> >> +    else:
> >> +      required:
> >> +        - compatible
> >> +        - reg
> >> +        - interrupts
> >> +        - clocks
> >> +        - clock-names
> >
> > Drop entire required:
> >
>=20
> I have a question:
>=20
> 1) The old binding said if "atmel,at91sam9g45-ssc": add dmas and DMA-name=
s to the list:
> 	- compatible, reg, interrupts, clock-names, clocks
>    Why do you ask: "drop entire required"?

The bits that are required in both cases can be set outside the
conditional, so you can do something like

if:
  foo
then:
  required:
    - dmas
    - dma-names

required:
  - compatible
  - reg
  - interrupts
  - clocks
  - clock-names

which I think captures all of what you're trying to do in the quote
above.

>    I intended to set the required through a conditional.
>     case 1) dma transfer
>     case 2) pdc transfer


--Q56Hn0/GZoH2mSPs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ5ppGAAKCRB4tDGHoIJi
0i0EAP9UHCIx4jKR1hbQbVx+LhGc9b/jrCpx6jtNgdoaz5kDtQD/QT0ADLpMJ3gV
aNyv3zuMSQCJWY8J9Xah2PjmH06OOQk=
=kyZU
-----END PGP SIGNATURE-----

--Q56Hn0/GZoH2mSPs--

