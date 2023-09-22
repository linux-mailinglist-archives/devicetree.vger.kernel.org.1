Return-Path: <devicetree+bounces-2584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EB97AB908
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 20:21:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id EEFAD1F23474
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 18:21:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15ED145F53;
	Fri, 22 Sep 2023 18:21:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047C142C11
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 18:21:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96E29C433C7;
	Fri, 22 Sep 2023 18:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695406880;
	bh=SJcH9WWUC7b4icS4mYzsgIi5682dqbrCHyF82Gm43a4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d8gs3/mY6Sf+oS/SUeaP2Jr42tQw1grzspJHmvAh0xv4/+drpEjIlsXppZcRi7KdK
	 H1xlDY+5Jmqc350YgZ7s6/KjEMpRr+IuBZ72LbFd9JXI1PEgD+32dQcBfMFlOg6StE
	 eJVTLbJwx0SQxQIYCQEBuN98pStC4Aw+jowy/I8t8vTk84nQXTJckh7RvlU2XicOa9
	 6rfz7Ywp5RXslfiTwqe3jlbCfReheshhS0PhfbfYGj4+umuwO5qtaRnb/kF1jNEmuR
	 3jRzhBYdCS86IkHBLADgzu6gsL2OujwgGAGNPW9myq2JtxWCGAFWKgliszWbwcFz8a
	 byzboUiwmGsuw==
Date: Fri, 22 Sep 2023 19:21:16 +0100
From: Conor Dooley <conor@kernel.org>
To: Bragatheswaran Manickavel <bragathemanick0908@gmail.com>
Cc: lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] ASoC: dt-bindings: tfa9879: Convert to dtschema
Message-ID: <20230922-scoreless-battalion-8b33e36066eb@spud>
References: <20230921183313.54112-1-bragathemanick0908@gmail.com>
 <20230922-unmindful-anyplace-f1da73ab168c@spud>
 <c6f795f1-2832-c282-5819-f8f402a312bd@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rF2zpNVePdlmTHic"
Content-Disposition: inline
In-Reply-To: <c6f795f1-2832-c282-5819-f8f402a312bd@gmail.com>


--rF2zpNVePdlmTHic
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 22, 2023 at 10:53:06PM +0530, Bragatheswaran Manickavel wrote:
>=20
> On 22/09/23 20:56, Conor Dooley wrote:
> > On Fri, Sep 22, 2023 at 12:03:13AM +0530, Bragatheswaran Manickavel wro=
te:
> > > Convert the tfa9879 audio CODEC bindings to DT schema
> > > No error/warning seen when running make dt_binding_check
> > >=20
> > > Signed-off-by: Bragatheswaran Manickavel <bragathemanick0908@gmail.co=
m>
> > > Changes:
> > > V1 -> V2: Fixed DT syntax errors and doc warning
> > These should be under the --- line, not above it.
> > Perhaps Mark will change it on application.
> > Otherwise,
> > Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

> Thanks for reviewing it.
> Do I need to send a new patch by addressing the above comments ?

To be clear, it's the changelog, not the sign off, that needs to go
under the ---. It'd look like:

Signed-off-by: Bragatheswaran Manickavel <bragathemanick0908@gmail.com>
---
Changes:
V1 -> V2: Fixed DT syntax errors and doc warning

Mark often fixes these things when he applies patches, but sending a v2
w/ the changelog fixed might make his life easier.

Cheers,
Conor.

--rF2zpNVePdlmTHic
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQ3bHAAKCRB4tDGHoIJi
0o6LAP9Vq8grg9fJf5i45dQtQG833qk7XMbr9PXVfnfcitVhBgD/b/LHnihKc99a
Ei0JpNNTNhBFWQLwjwosqqdeiWJJFgI=
=xq4J
-----END PGP SIGNATURE-----

--rF2zpNVePdlmTHic--

