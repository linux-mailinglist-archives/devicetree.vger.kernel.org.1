Return-Path: <devicetree+bounces-15465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CE57EA4AA
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 21:17:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9F6C7B20A07
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 20:17:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75A62249F5;
	Mon, 13 Nov 2023 20:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WEVjZcuR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595A1224CA
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 20:17:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32326C433C8;
	Mon, 13 Nov 2023 20:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699906657;
	bh=SwYHSTS3rTDa7Clubx8Dvf8G10g50QTr2Ibg/KW4oWc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WEVjZcuRKwNGSQo9Z6hggcHjls2BO5bwob2sN4A61qPt1Uh6cI04CVwi9R2lNafsk
	 xPKVEfsNctoAo553B7Xq6hoXvJFPysMDNE78i1wBmptzl6gqTGF5BgB0N28fEzY1aK
	 st537PkxXo0+tfaXS9L3+rfGrv5TIvO1ysTsQjMGfxC+Zt/mxpI/56hN+xtKlrezi8
	 e4PO3k//uYLFRfXmK8+nPg2pCeTZeLHCYVSS/oA04kREcTwxfn/FHl1IxxIEQh3ZXk
	 x74FxaEUvqhxZAVD1rKJkcBXFuibj9IRyz3Tf9ouXuS/KIM2exjrISpl9x0hTn9VlI
	 E8nyjOsK4wQDg==
Date: Mon, 13 Nov 2023 20:17:34 +0000
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: William Qiu <william.qiu@starfivetech.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-pwm@vger.kernel.org, Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
	Hal Feng <hal.feng@starfivetech.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Subject: Re: [PATCH v7 1/4] dt-bindings: pwm: Add OpenCores PWM module
Message-ID: <20231113-sprung-tantrum-94659009b9d4@squawk>
References: <20231110062039.103339-1-william.qiu@starfivetech.com>
 <20231110062039.103339-2-william.qiu@starfivetech.com>
 <afce202d-6234-4c5f-9018-facd9a56b5eb@linaro.org>
 <f4551a7a-61e6-4d97-94c2-da2e4e9e8cb3@starfivetech.com>
 <824cee7b-e4d3-461a-8bfb-4ad095c240fd@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+lpp7srQCeLErYm2"
Content-Disposition: inline
In-Reply-To: <824cee7b-e4d3-461a-8bfb-4ad095c240fd@linaro.org>


--+lpp7srQCeLErYm2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 13, 2023 at 09:07:15PM +0100, Krzysztof Kozlowski wrote:
> On 13/11/2023 10:42, William Qiu wrote:
> > Will update.
> >>> +
> >>> +allOf:
> >>> +  - $ref: pwm.yaml#
> >>> +
> >>> +properties:
> >>> +  compatible:
> >>> +    oneOf:
> >>> +      - items:
> >>> +          - enum:
> >>> +              - starfive,jh7100-pwm
> >>> +              - starfive,jh7110-pwm
> >>> +          - const: opencores,pwm
> >>
> >> That's a very, very generic compatible. Are you sure, 100% sure, that
> >> all designs from OpenCores from now till next 100 years will be 100%
> >> compatible?
> >>
> > My description is not accurate enough, this is OpenCores PTC IP, and PWM
> > is one of those modes, so it might be better to replace compatible with
> > "opencores, ptc-pwm"
> >=20
> > What do you think?
>=20
> Sorry, maybe this answers maybe doesn't. What is "PTC"?

"pwm timer counter". AFAIU, the IP can be configured to provide all 3.
I think that William pointed out on an earlier revision that they have
only implemented the pwm on their hardware.
I don't think putting in "ptc" is a sufficient differentiator though, as
clearly there could be several different versions of "ptc-pwm" that have
the same concern about "all designs from OpenCores for now till the next
100 years" being compatible.

Cheers.
Conor.

--+lpp7srQCeLErYm2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVKEWgAKCRB4tDGHoIJi
0lg6AQDoetFH+2Q0R2VopRs52W7OWITEOpAFd04nMYVyHdsONgD+LawAuiiSLaEB
0ECkKGOudEZJ6nR1cZ/Vt+FGfB1MyAs=
=sVnT
-----END PGP SIGNATURE-----

--+lpp7srQCeLErYm2--

