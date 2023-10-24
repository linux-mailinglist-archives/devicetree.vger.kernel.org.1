Return-Path: <devicetree+bounces-11378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D430C7D5876
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 18:34:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 56B33B20FFE
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 16:33:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1A2129416;
	Tue, 24 Oct 2023 16:33:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BfUHETj0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED313A26E
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 16:33:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8476C433C7;
	Tue, 24 Oct 2023 16:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698165237;
	bh=+h560Vs2Q6PeyeqzhXCCQnpg0QmTLtd359Q4ZP0eXrw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BfUHETj0KKqljyg5YhJg2L51VBkaZuYXdqHzVPcRvVb5OfZ4ti/8JjXy///m7dpVI
	 jfSPOiMvtnQyswOkY8ujr0PCjRAmfasjIbODbB8a6R2YOG1HJDDV1wb8syNNUgNC/I
	 dCGGW7VpbO2ttulQWzxUled853tQxvimDXuSr/S6+Kz/WEfhHKcv+veFbNkizgYgyd
	 GKZRL6uPBnPpS926x8s4f1QA4IIVJjhoWdgzo/Koe4k50whjo8gQY7mN+jwZpvX8Dc
	 zVUlpFEoo08F7+GhsfSyhP/Tjg4GVlxQ7JxsDqdfcjN9racs3Fy9DIDWYx3z7wzW/X
	 n5gmlxVCZWFGA==
Date: Tue, 24 Oct 2023 17:33:52 +0100
From: Conor Dooley <conor@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Support Opensource <support.opensource@diasemi.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
	David Rau <David.Rau.opensource@dm.renesas.com>,
	Adam Ward <Adam.Ward.Opensource@diasemi.com>
Subject: Re: [PATCH] dt-bindings: regulator: dlg,da9210: Convert to
 json-schema
Message-ID: <20231024-headband-trapped-7c03709854fa@spud>
References: <bfd1cf9d620a8229f5a5e62e6fe9e59c153d0830.1698051619.git.geert+renesas@glider.be>
 <20231023-sulfate-babble-695b239f52b5@spud>
 <CAMuHMdW7UQ=c9V6rjpZdcaNPSXLOu5aEiLhreirPP6NXN0Ke2Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sPNKM9quhJNy5+0Z"
Content-Disposition: inline
In-Reply-To: <CAMuHMdW7UQ=c9V6rjpZdcaNPSXLOu5aEiLhreirPP6NXN0Ke2Q@mail.gmail.com>


--sPNKM9quhJNy5+0Z
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 23, 2023 at 07:58:51PM +0200, Geert Uytterhoeven wrote:
> CC David, Adam
>=20
> On Mon, Oct 23, 2023 at 6:18=E2=80=AFPM Conor Dooley <conor@kernel.org> w=
rote:
> > On Mon, Oct 23, 2023 at 11:04:45AM +0200, Geert Uytterhoeven wrote:

> > > +maintainers:
> > > +  - Support Opensource <support.opensource@diasemi.com>
> >
> > This should really be a person... Does your work with Renesas cover you
> > for dialog stuff too?
>=20
> I'm not really into the PMICs department, only into making dtbs_check
> for "my" DTS files clean ;-)
> I hope one of the Dialog/Renesas PMIC people can point me to a better
> address.  Steve Twiss sent a goodbye message to some kernel people
> and lkml three years ago, but it is not on lore, as it contained HTML.
>=20
> Ah, according to git log, David and Adam touched some of the files
> lately, so perhaps they can help?

It'd be great if one of them could volunteer, aye. I do feel like I
recall seeing one of the folks involved with the dialog stuff in
mainline stepping down shortly after the merger though  :|


--sPNKM9quhJNy5+0Z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTfx8AAKCRB4tDGHoIJi
0pSRAQDts64t0GCBblqr2GdHTL52vzFSCyvBwHVcmI0YwTeEfgD/TbW7rq9ZKVyQ
ux74TMBZBpeAfnvB9ZVoGPENqYF+CQc=
=UiJ8
-----END PGP SIGNATURE-----

--sPNKM9quhJNy5+0Z--

