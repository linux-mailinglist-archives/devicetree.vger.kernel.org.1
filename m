Return-Path: <devicetree+bounces-3787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E2F7B01BE
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 12:23:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 5D40B28246C
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 10:23:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE083241E3;
	Wed, 27 Sep 2023 10:23:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC75F9CD
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 10:23:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAD11C433C7;
	Wed, 27 Sep 2023 10:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695810213;
	bh=mJtkcoqAxjc3capOnsYp/Ti3db2yjrAid5Uj7rgquYY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aQ9ZoLYPAOcGdFlIzX7JdymQVx3fL2BNysG9Ry+JkQAVBnVz/pwO2aFE2WYKOAwrr
	 k8mlfs9Ga7f6h1BC/igfCBLh9QrrIXnyjg83ujenCmhNour0TIbsK7viHMYNp0oO53
	 b1CLzyZA2F1obO6tv5UDXUaohmt8ucVsgUVrcfB2CdZe7e0q5kPXCe8WxvS1pIgoeU
	 CyhUDp4lxRMELKWNEOrUjiA753FvvRyYRJUPk6waiVtewxvFXwysd7D+U25AkY2Yly
	 aDDx365GMO0SVNhlthr6fiEaAG7KBdz6FQEBujmrHTZ23ywUQ6FwPypbohm0RktKEL
	 l6kiAZQAJnVLQ==
Date: Wed, 27 Sep 2023 12:22:59 +0200
From: Mark Brown <broonie@kernel.org>
To: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	"linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	Chris Paterson <Chris.Paterson2@renesas.com>,
	Biju Das <biju.das@bp.renesas.com>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH 1/2] spi: renesas,rzv2m-csi: Add SPI Slave related
 properties
Message-ID: <ZRQCg6Xf/wYfC2PD@finisterre.sirena.org.uk>
References: <20230926210818.197356-1-fabrizio.castro.jz@renesas.com>
 <20230926210818.197356-2-fabrizio.castro.jz@renesas.com>
 <CAMuHMdUibHxPBCLbeWdNrEk_szm+o4cOcskEMZAqUufNTzQKMQ@mail.gmail.com>
 <ZRPvHJXbuZ9Db2Go@finisterre.sirena.org.uk>
 <CAMuHMdUv8FFwkde8K3Ta8FEWrkkJ=9ZqbTi1EO8sRxVOhGtvzQ@mail.gmail.com>
 <ZRP0MpIHf67tfQJY@finisterre.sirena.org.uk>
 <CAMuHMdWPxn=RTU6uytOp31BoXbW0m8Oxk_LM2Rp4Dtop7okWgQ@mail.gmail.com>
 <ZRP+ZNXe975hcEJJ@finisterre.sirena.org.uk>
 <TYWPR01MB8775B9F9F70CA75410788F83C2C2A@TYWPR01MB8775.jpnprd01.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wJt9p1k0SYjlzPnn"
Content-Disposition: inline
In-Reply-To: <TYWPR01MB8775B9F9F70CA75410788F83C2C2A@TYWPR01MB8775.jpnprd01.prod.outlook.com>
X-Cookie: Save energy:  Drive a smaller shell.


--wJt9p1k0SYjlzPnn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 27, 2023 at 10:18:57AM +0000, Fabrizio Castro wrote:
> > From: Mark Brown <broonie@kernel.org>

> > OK, it sounds like we do need a property then.  Like I say I'd rather
> > not have one that just works for _NO_CS in order to avoid confusion
> > for
> > people writing SPI device drivers, either something in the generic
> > target binding or a device specific one.

> Shall I invert the logic then? What I mean is I could drop property
> "renesas,csi-ss" and add property "renesas,csi-no-ss" instead, therefore
> without "renesas,csi-no-ss" pin SS will be used, with "renesas,csi-no-ss"
> pin SS won't be used.
> What do you think?

That sounds fine for me, I guess we could add a further property if some
new IP allows multiple options for the chip select in target mode.

> Also, I could drop "renesas,csi-ss-high" and use "spi-cs-high" instead?

I think that's OK but I looked less at that bit.

--wJt9p1k0SYjlzPnn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUUAoIACgkQJNaLcl1U
h9BenQf/T5TRoV+paJzdI1UKZ9rbSIu9tmoNiCO+wN1CocdXkQTHXMnL2+7uo8Ww
olbvVZYkep2xoEplvaH+cvqqlo+tXkyikqcYVph9nAJhvYx3T8gu0AFlKi2JBGrm
FCziMUNMVRCdvTseCf1oLzbidaWHDoJJOOYcIiCwd+HINYQ1jx5ZdbWDaprGaRaT
SfkqMEMbOfBxeeXri1O/PQq8piU8il35ms9fi0j1Gfsu3qLuYMNPc9otNzS++e9G
jytCxVYn8C1Hyy6Cdk2GVZIIpjj32fFKkVb/KUeQRxHbR9O0aFhTCpF8K8BS4Ckv
BR0pk5tdVoAE8xKxHL5PIegeIZe9hQ==
=+JaN
-----END PGP SIGNATURE-----

--wJt9p1k0SYjlzPnn--

