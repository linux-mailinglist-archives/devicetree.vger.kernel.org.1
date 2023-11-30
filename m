Return-Path: <devicetree+bounces-20427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 999807FF3C7
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 16:42:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3A24BB20CF8
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 15:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDAB7524DA;
	Thu, 30 Nov 2023 15:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="teECoiBP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B1CF524A3
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 15:42:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 521EFC433C7;
	Thu, 30 Nov 2023 15:42:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701358973;
	bh=WlLJfUiHU4McYxn94NiMcp46fAMc3TUOTPbaqBQLG/s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=teECoiBPqM0U8Ehit9ioXGecjoILrpbNTcS1O2v2z0ZmW1ykgsH7a4/6pqOApmFM0
	 iXoroSoJBwStm48mdd1gqCoLdp7Nk6hOIek2RQgE8wHHgST2c3TGg/smVi6rudWJQs
	 HPnhortTfNkXdF6MXLsRFfj8q3q3tHh4x8lYuZ9h5PScStSDii4kaTjdv3yGvUV1DT
	 E5vlrni/BHqpfhlweGh5vsL1ewX6wVf9S2P84sMFIcXrut/zAznT9cm/87IHbF956N
	 xz+JcqjR/7nqj2w2aUkMzRNz+RkcsojXMc3clL9jGOsWNLZN/hXk3M8HZJ299zaqP5
	 2k+p13+Ph0Klw==
Date: Thu, 30 Nov 2023 15:42:48 +0000
From: Conor Dooley <conor@kernel.org>
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, thomas.petazzoni@bootlin.com,
	gregory.clement@bootlin.com, u-kumar1@ti.com
Subject: Re: [PATCH 1/5] dt-bindings: arm: keystone: add ti,j7200-sci
 compatible
Message-ID: <20231130-repugnant-aghast-0bc35af8de3c@spud>
References: <20231129-j7200-tisci-s2r-v1-0-c1d5964ed574@bootlin.com>
 <20231129-j7200-tisci-s2r-v1-1-c1d5964ed574@bootlin.com>
 <20231129-caress-banister-5b5ccbf183e6@spud>
 <20231129-crawling-gaming-76077ed03c57@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zEaYWprFLeGvpHlX"
Content-Disposition: inline
In-Reply-To: <20231129-crawling-gaming-76077ed03c57@spud>


--zEaYWprFLeGvpHlX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 29, 2023 at 03:38:04PM +0000, Conor Dooley wrote:
> On Wed, Nov 29, 2023 at 03:34:20PM +0000, Conor Dooley wrote:
> > On Wed, Nov 29, 2023 at 04:31:17PM +0100, Thomas Richard wrote:
> > > On j7200, during suspend to ram the soc is powered-off.
> > > At resume requested irqs shall be restored which is a different behav=
ior
> > > from other platforms.
> > >=20
> > > Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
> >=20
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
>=20
> Un-Acked. Your dts patch contradicts this one.
>=20
> Is the programming model compatible with the existing devices? To be
> compatible, the existing device only need to support a compatible subset
> of behaviours.
> If so, this patch is wrong. If not, then the dts one is.

Given Andrew's response, it looks like the dts patch is the correct one
of the two, and this patch should document the k2g as a fallback for the
jh7200.

Cheers,
Conor.

--zEaYWprFLeGvpHlX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWitdwAKCRB4tDGHoIJi
0mkhAP98vayPMHoouzmPwyTjP5SrWcx1W4mXtH9nl8OtgqZpbQEAzHUQkAjTUikM
Ync+Qp1rElNGrwDq0R1MRMGtTgimSwc=
=2kcW
-----END PGP SIGNATURE-----

--zEaYWprFLeGvpHlX--

