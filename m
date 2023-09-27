Return-Path: <devicetree+bounces-3763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D721C7B013F
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 12:05:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 8200A2825FF
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 10:05:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B499E273C4;
	Wed, 27 Sep 2023 10:05:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A12901F95A
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 10:05:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA3D2C433C7;
	Wed, 27 Sep 2023 10:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695809127;
	bh=qnrP8nXG0KaxINYqeddDcSnJIQu51tz/Syj8SawhtkM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=R68dpNLMbyY2PFKqG//gkhL0S9WMOiIJmABfcTzH+R3JKAUF6upvQaXIWnaqrUEw4
	 bCfeBJjbBX3oA+6zTyJs9qxdoxoFuDiEDBOwY3bAWJ1iKsbuLXRT/1vYelgcK4Lt9g
	 FSVFS1ndrTTZL7wiCnShwY/kRJ5eTvVE+pQCq8ONBhA/3QNm0gFRxtWqqDBaMJHlBB
	 fYB/CzqOAnFN2oBTDLbwPPbRbT3gSRPLnTe+ciyASz6FDjSVexb7+n/c+dzot+imJB
	 n2k/IP2NoLy7pyC0JgCi1ORtnrddd+8JD8Y/sMMN3ME9Ggp9n8hdSMYzCAu1AbMZvQ
	 CN7Byr+An48Nw==
Date: Wed, 27 Sep 2023 12:05:24 +0200
From: Mark Brown <broonie@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Chris Paterson <Chris.Paterson2@renesas.com>,
	Biju Das <biju.das@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH 1/2] spi: renesas,rzv2m-csi: Add SPI Slave related
 properties
Message-ID: <ZRP+ZNXe975hcEJJ@finisterre.sirena.org.uk>
References: <20230926210818.197356-1-fabrizio.castro.jz@renesas.com>
 <20230926210818.197356-2-fabrizio.castro.jz@renesas.com>
 <CAMuHMdUibHxPBCLbeWdNrEk_szm+o4cOcskEMZAqUufNTzQKMQ@mail.gmail.com>
 <ZRPvHJXbuZ9Db2Go@finisterre.sirena.org.uk>
 <CAMuHMdUv8FFwkde8K3Ta8FEWrkkJ=9ZqbTi1EO8sRxVOhGtvzQ@mail.gmail.com>
 <ZRP0MpIHf67tfQJY@finisterre.sirena.org.uk>
 <CAMuHMdWPxn=RTU6uytOp31BoXbW0m8Oxk_LM2Rp4Dtop7okWgQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nmWLiBkxLUwi0tfY"
Content-Disposition: inline
In-Reply-To: <CAMuHMdWPxn=RTU6uytOp31BoXbW0m8Oxk_LM2Rp4Dtop7okWgQ@mail.gmail.com>
X-Cookie: Save energy:  Drive a smaller shell.


--nmWLiBkxLUwi0tfY
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 27, 2023 at 11:44:17AM +0200, Geert Uytterhoeven wrote:
> On Wed, Sep 27, 2023 at 11:21=E2=80=AFAM Mark Brown <broonie@kernel.org> =
wrote:

> > I see.  Is there any control over what the chip select is when there is
> > one, in which case we could just look to see if there's one specified?

> On RZ/V2M there isn't, as there is only a single hardware chip select.

> On MSIOF, there are 3 hardware chip selects, but apparently only the
> primary one can be used in target mode.

OK, it sounds like we do need a property then.  Like I say I'd rather
not have one that just works for _NO_CS in order to avoid confusion for
people writing SPI device drivers, either something in the generic
target binding or a device specific one.

--nmWLiBkxLUwi0tfY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUT/mMACgkQJNaLcl1U
h9CZBgf8CVTnUG1s1acMFL5WiRrNlGR5yIFQa2lsoKcmtokW9X9Ik2Mh2pmOmltu
TClpq3pJH4F5hRMp79PVcaz6r5ILB8FMnqVq7ukwgYjN1KuE+FaSHNFbUDw0OQ8/
JoVJd7bdlrH0VM9zIlWFxIKuNkXOqbBGs9fVrertmsrVButeSJ2W7X2VSCAKO/cL
JkwbqE3qzYMdazyHfNOi1oY6DMflIP5s/LwA4nIk0Utn6YGPenkSoH1/w4pw4i9e
1g0Rs+immd11gI8xTKaF7/JYvd/cEEgQttjoGpvchX6Jo8UpkcguEslmCOkhxcla
/xbod6KEe+fkmjnwgGc14XHRR32lAw==
=Rd2y
-----END PGP SIGNATURE-----

--nmWLiBkxLUwi0tfY--

