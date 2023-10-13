Return-Path: <devicetree+bounces-8551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC167C8A2B
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 18:12:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5B16BB20C5B
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 16:12:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5FBD1D6A1;
	Fri, 13 Oct 2023 16:12:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHTGGbsS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A47F71CFAC
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 16:12:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18B01C433C8;
	Fri, 13 Oct 2023 16:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697213560;
	bh=eZ+fvPLkMyb+DJfFUnuMWJsRKI1Y554XSjCKOcKo0bw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KHTGGbsSkL6J3HabN3JEbUMbtfWYVI+0YkRkcWfsynfc1mr/Un8+/xkFMUYNPT2VZ
	 sYFk2sMnK8RJNENBt5m9VlwBeQvJgYNHbpJ6opUh6572YB8Z5hyYWRZE5GER1Pu+fL
	 7yaefd6AV1raTSy+XU3HLJQbdw5X7h8RmmDl1ETDRzVK4FACVvT87ij/F/+dDTvtba
	 3ahRbpEvVnobrvdLe4ce5uyRvNSYNLN9gsxRpcIyhiEihXj1MeAQGAOf4j4kd/foAT
	 yiAcmMp4Iap6+dIybibxd3Bqmy1UXYBMtyGbDYFsrhpu8f2JaF8uGOw41rPS1M7EFK
	 kQB5fooRvJwDA==
Date: Fri, 13 Oct 2023 17:12:35 +0100
From: Conor Dooley <conor@kernel.org>
To: Mark Brown <broonie@kernel.org>
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Bard Liao <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 4/4] dt-bindings: audio-graph-port: add ch-maps
 property
Message-ID: <20231013-planner-irate-8e411cc54a48@spud>
References: <877cnsy6bl.wl-kuninori.morimoto.gx@renesas.com>
 <871qe0y6aq.wl-kuninori.morimoto.gx@renesas.com>
 <20231012-storage-directory-548905001d10@spud>
 <87wmvr8ioy.wl-kuninori.morimoto.gx@renesas.com>
 <ZSllNtm4ZnUnkiV2@finisterre.sirena.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="YKanpJSQoSs+i+/r"
Content-Disposition: inline
In-Reply-To: <ZSllNtm4ZnUnkiV2@finisterre.sirena.org.uk>


--YKanpJSQoSs+i+/r
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 13, 2023 at 04:41:42PM +0100, Mark Brown wrote:
> On Fri, Oct 13, 2023 at 12:33:34AM +0000, Kuninori Morimoto wrote:
>=20
> > > > +      ch-maps:
> > > > +        $ref: /schemas/types.yaml#/definitions/uint32-array
>=20
> > > I only got this one patch, so I have no context at all for this chang=
e.
> > > Given that, and since I know almost nothing about sound stuff...
> > (snip)
> > > ...I have absolutely no idea how I would populate "ch_maps" correctly.
> > > Please describe (in the binding) what this property actually does
> > > & how to use it. Also, properties use -s not _s.
>=20
> > Some Sound want to use multiple connections between CPUs (N) and Codecs=
 (M).
> > Current audio-graph-card2 driver is already supporting 1:N / N:1 / N:N
> > connections, this patch expand it.
>=20
> Some of this explanation needs to go into the binding - someone reading
> the binding should really be able to figure out what numbers to put in
> there without looking at the code.

Absolutely :)

> > ch-maps =3D <0 0 1> means,=20
> > 	cpu0 <-> codec0
> > 	cpu1 <-> codec0
> > 	cpu2 <-> codec1

What happens when you want to convey that codec0 & codec1 are both
connected to cpu0 & codec2 is connected to cpu1?
How would that be described in a DT?
Or is that not something anyone would even want to do?

> > Thank you for your help !!
>=20
> So probably somthing along the lines of saying "there should be one
> element in the array for each CPU DAI, this should be the CODEC number
> to route to" (that's probably still a bit unclear but roughly that).


--YKanpJSQoSs+i+/r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSlscwAKCRB4tDGHoIJi
0mMmAP9Nb483b0dBaBUFHXG0WX2fOcV2+9tOiuO5YHM7z5uF2wD/c5bcMJsmpzS0
yqb+QJFoKLGVpbitjhIhLtUc975zRgk=
=88E7
-----END PGP SIGNATURE-----

--YKanpJSQoSs+i+/r--

