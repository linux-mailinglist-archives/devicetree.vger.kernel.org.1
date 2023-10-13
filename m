Return-Path: <devicetree+bounces-8545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25EA87C88E9
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 17:41:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 56DC51C21183
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 15:41:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E555A1BDE7;
	Fri, 13 Oct 2023 15:41:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBhSABgl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3B741BDD7
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 15:41:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08735C433C8;
	Fri, 13 Oct 2023 15:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697211705;
	bh=nUoG1ESo3DH+7LyVpGPKHdPdm6b3B0YmkVXnaIiA53w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cBhSABglqnHOl5sgPZYvWfJLpH2+OZs1tb9ru0Fh/X+XBXbOfi+bKXXeOFhHjoXxv
	 vFnlYr61NSJxlM3q3XfiEYNtGzUF/tBmNeWh8O6TDO3txQ6o3iW1m6y2qyadVpR4oS
	 efdtAjLerOy8lMO/Pw9n1LUO/4vHlPr1iIuZTAwCYwNK/gNo4QLqJAoWyHvmwaRY7K
	 /v6sqPhs1NPpAjqBdDBZEiXdByytpmRTOxGFSikychtieq97bCUdN15d1zxQcDXrgO
	 +XREBUfYrlbvi20MWyPnmq1kGDJeRXByluspnta6SlyE4Oz/VzPXAFAKnOl2m5n36Z
	 WUtBYd1Tpviyg==
Date: Fri, 13 Oct 2023 16:41:42 +0100
From: Mark Brown <broonie@kernel.org>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Conor Dooley <conor@kernel.org>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Bard Liao <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 4/4] dt-bindings: audio-graph-port: add ch-maps
 property
Message-ID: <ZSllNtm4ZnUnkiV2@finisterre.sirena.org.uk>
References: <877cnsy6bl.wl-kuninori.morimoto.gx@renesas.com>
 <871qe0y6aq.wl-kuninori.morimoto.gx@renesas.com>
 <20231012-storage-directory-548905001d10@spud>
 <87wmvr8ioy.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="osYiuKgTjXvEd7Of"
Content-Disposition: inline
In-Reply-To: <87wmvr8ioy.wl-kuninori.morimoto.gx@renesas.com>
X-Cookie: Save energy:  Drive a smaller shell.


--osYiuKgTjXvEd7Of
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 13, 2023 at 12:33:34AM +0000, Kuninori Morimoto wrote:

> > > +      ch-maps:
> > > +        $ref: /schemas/types.yaml#/definitions/uint32-array

> > I only got this one patch, so I have no context at all for this change.
> > Given that, and since I know almost nothing about sound stuff...
> (snip)
> > ...I have absolutely no idea how I would populate "ch_maps" correctly.
> > Please describe (in the binding) what this property actually does
> > & how to use it. Also, properties use -s not _s.

> Some Sound want to use multiple connections between CPUs (N) and Codecs (=
M).
> Current audio-graph-card2 driver is already supporting 1:N / N:1 / N:N
> connections, this patch expand it.

Some of this explanation needs to go into the binding - someone reading
the binding should really be able to figure out what numbers to put in
there without looking at the code.

> ch-maps =3D <0 0 1> means,=20
> 	cpu0 <-> codec0
> 	cpu1 <-> codec0
> 	cpu2 <-> codec1

> Thank you for your help !!

So probably somthing along the lines of saying "there should be one
element in the array for each CPU DAI, this should be the CODEC number
to route to" (that's probably still a bit unclear but roughly that).

--osYiuKgTjXvEd7Of
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUpZTUACgkQJNaLcl1U
h9Bz4wf+I47hAwk66lq9ARIkLz6rER3uYSb4OKDBqoUhUClsjL34uW/giI0JvF+0
DKV22AA8cmWoJdCUlGxmoKq6/YA5IhTp6Dbb5Jf/Dphm+Xn2AAHw1HQXOwSNPt/H
Jl9ZJwpSqUdLGg7fvT7jwfiFd302+cxEsPDZ92j/YHeIy0zZPL4YOuNOJRaZzBfg
SYJWLHPqUVHsYCM6eya+CxPufK21QD3d5KVJaZTe/+98owQptBStc2C6fM52iopt
+g+Z6pGz35k9clbA+A/E697rUy6gSLM+9fUKYWmc5/2bJPwBaONKhRGRsJq3Cq4t
wgvg+a6BwDnF8ux7BACPVRPhmUkPIA==
=M9cc
-----END PGP SIGNATURE-----

--osYiuKgTjXvEd7Of--

