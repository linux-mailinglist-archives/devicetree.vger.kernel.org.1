Return-Path: <devicetree+bounces-3748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF4D7B001C
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 11:29:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 6D5FC281CE1
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 09:29:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74BB223741;
	Wed, 27 Sep 2023 09:29:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64FD9224FB
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 09:29:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49BF5C433C7;
	Wed, 27 Sep 2023 09:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695806981;
	bh=PoynAhC42Ct+N5LxHx/oBa8Zl3onSqNPhKu1yqqfuCE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I46iMBznA20yjD8uhY5Qh9Ki6oMk1pBVm3P7nWXi/Mt6g5XG/sSBgeI+alGlhDjyv
	 Rp+wcfJ+1yNmiLkI99DrGrHYZ57KbA+kccDiooBhQPHxymj/oL5MCv0lxJAVPnAn0c
	 y9Ds7V8pNS/a4vQqy/nJD5Jo19U6zjcNoNokZKHlMZLpNbPHtCZeCDEbJDpQ5STvGa
	 tV0DK2K8ZhNPWhyjn2iIrCcc5mUAHbMHsupiyOzBrUjFuJEznhfEXWM8puzd8oxvMX
	 Kk2fxTFBxUct64Pg2DCGj4ceXwRsSe0W1gsCVHN/P3jRUPsls15U3mfVG7+Dn1TxKa
	 A+sG9yBWlHU5Q==
Date: Wed, 27 Sep 2023 11:29:39 +0200
From: Mark Brown <broonie@kernel.org>
To: Chancel Liu <chancel.liu@nxp.com>
Cc: "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"shengjiu.wang@gmail.com" <shengjiu.wang@gmail.com>,
	"Xiubo.Lee@gmail.com" <Xiubo.Lee@gmail.com>,
	"festevam@gmail.com" <festevam@gmail.com>,
	"nicoleotsuka@gmail.com" <nicoleotsuka@gmail.com>,
	"perex@perex.cz" <perex@perex.cz>,
	"tiwai@suse.com" <tiwai@suse.com>,
	"shawnguo@kernel.org" <shawnguo@kernel.org>,
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
	"kernel@pengutronix.de" <kernel@pengutronix.de>,
	"alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: Re: [PATCH v2 1/2] ASoC: dt-bindings: fsl_rpmsg: List DAPM
 endpoints ignoring system suspend
Message-ID: <ZRP2A1hvuB8ZymBK@finisterre.sirena.org.uk>
References: <20230925110946.3156100-1-chancel.liu@nxp.com>
 <ZRF8KI11IVf6NzpL@finisterre.sirena.org.uk>
 <DB9PR04MB94987AC750B4AB02DCBC44C8E3C2A@DB9PR04MB9498.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="M0KDERL2YfXElnfx"
Content-Disposition: inline
In-Reply-To: <DB9PR04MB94987AC750B4AB02DCBC44C8E3C2A@DB9PR04MB9498.eurprd04.prod.outlook.com>
X-Cookie: Save energy:  Drive a smaller shell.


--M0KDERL2YfXElnfx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 27, 2023 at 03:07:49AM +0000, Chancel Liu wrote:

> > This is a fairly standard DSP playback case as far as I can see so it
> > should work with DAPM without needing this obviously use case specific
> > stuff peering into the Linux implementation.  Generally this is done by
> > tagging endpoint widgets and DAIs as ignore_suspend, DAPM will then
> > figure out the rest of the widgets in the path.

> Yes, indeed I meant to let driver get DAPM endpoints from the "fsl,lpa-widgets"
> property and then set these endpoints as ignore_suspend if the sound card is
> running in this use case. Do you think the description for the use case can be
> simplified since it's a common use case?

This is a card problem - the driver for rpmsg shouldn't need to worry
about it.  Any bindings extensions should be at the card level rather
than in a specific driver, we could probably use something in the
generic properties that they're all using.

--M0KDERL2YfXElnfx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUT9gIACgkQJNaLcl1U
h9Co/gf/YdAlws18Znc1Leg2ZPsdDGFeaWbgTuNgdJBfXu7DkM5EBpJwJitNdYBH
ee4d/A5s4cPYEwNBF6APc8Kuoo6ZLSzUUVTIoEVo3hx90x3VMkYHMG4ZrmbGHM1j
Q2Nb8wflfskYqPjLus1P4DcBWKulBIM1xfQGN3G4XZefa653qnNWGAoJLrIJr0BT
z5wh8S+9QtDJosvub7my40MWeV9d4i3yNywRESPCV7oFQd6c0WwDPrW6XxUClSEt
sKPmpp8TyP7AfzZoFiHYh3/97Qhm04LSjlNAybae7/XqRS6zFJGYi1rCSaT5Oaol
AklEsC5VrCYgCthrJITSvQd79yOuyg==
=w/+0
-----END PGP SIGNATURE-----

--M0KDERL2YfXElnfx--

