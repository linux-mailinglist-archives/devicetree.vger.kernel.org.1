Return-Path: <devicetree+bounces-21806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CE04180533E
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 12:43:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A27E1C20A9E
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 11:43:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ECAD5786F;
	Tue,  5 Dec 2023 11:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tzp0bQy6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EE757866
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 11:43:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22CE7C433C7;
	Tue,  5 Dec 2023 11:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701776616;
	bh=CE6KeruqrweCASUNRj8l3NLAhaKiE9f+ajaLD7DyzBw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Tzp0bQy6ill/5Yq+AC7k8iQCH1KHRHVfvkhah1vGJwEKH5ovVNCBJp4I6ofLo6hYr
	 Ie94/fThn7xf7CtrHcSFMaQ3deb4YeuHNQUCqWuxy0IQA+rtXNA5qxbB62POxCVp35
	 bvLi+EYZB8o890DOe8DZCeBv/TVtSOi6nryNFJTXmQ19t5NM0XQPpKkieBCtDSMHT9
	 PrqpDpettFvwg7nC2y+DT8pByqdSpqAhfoi2goCg2OL8qVY2pyz18ppWYC3DtqVKie
	 Y9CsM+Kb+rTVv7ZXlz0IywVyV5cREH3QVnyZLeEj3pKjoRGz2qLfmH602uBGYVKrFe
	 TXBlHzlcPEZBA==
Date: Tue, 5 Dec 2023 12:43:33 +0100
From: "mripard@kernel.org" <mripard@kernel.org>
To: Donald Robson <Donald.Robson@imgtec.com>
Cc: 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"alexander.sverdlin@siemens.com" <alexander.sverdlin@siemens.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, 
	"kristo@kernel.org" <kristo@kernel.org>, "nm@ti.com" <nm@ti.com>, "vigneshr@ti.com" <vigneshr@ti.com>, 
	Sarah Walker <Sarah.Walker@imgtec.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62-main: Add GPU device node
Message-ID: <jjndcpbk7g6quyusdd3yz42gjh7szkzyj4wlrs3tjl7bh6nmvn@ge5i75ywjtv7>
References: <20231204121522.47862-1-donald.robson@imgtec.com>
 <c20b213534667337f08b75a6c325fafec6526135.camel@siemens.com>
 <6e71745a9258ecd384261369656dd05da5ab10fa.camel@imgtec.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5jesdngv6qe6kcit"
Content-Disposition: inline
In-Reply-To: <6e71745a9258ecd384261369656dd05da5ab10fa.camel@imgtec.com>


--5jesdngv6qe6kcit
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 05, 2023 at 11:26:04AM +0000, Donald Robson wrote:
> Hello Alexander,
>=20
> On Tue, 2023-12-05 at 11:15 +0000, Sverdlin, Alexander wrote:
> > Hi Donald, Sarah et al,
> >=20
> > thanks for the patch!
> >=20
> > On Mon, 2023-12-04 at 12:15 +0000, Donald Robson wrote:
> > > From: Sarah Walker <sarah.walker@imgtec.com>
> > >=20
> > > Add the Series AXE GPU node to the AM62 device tree.
> > >=20
> > > Signed-off-by: Sarah Walker <sarah.walker@imgtec.com>
> > > Signed-off-by: Donald Robson <donald.robson@imgtec.com>
> >=20
> > powervr fd00000.gpu: [drm] loaded firmware powervr/rogue_33.15.11.3_v1.=
fw
> > powervr fd00000.gpu: [drm] FW version v1.0 (build 6503725 OS)
> > [drm] Initialized powervr 1.0.0 20230904 for fd00000.gpu on minor 0
> >=20
> > In general it allows the driver to be probed on TI AM625 EK, so
> > Tested-by: Alexander Sverdlin <alexander.sverdlin@siemens.com>
>=20
> Thanks!
>=20
> >=20
> > But I'm not sure if you maybe want to disable it by default like
> > other HW blocks for the (potential) boards which don't have video at al=
l.
>=20
> Nor I. I guess it should still be enabled so it can be used for compute?

It's standalone and doesn't require any additional (or external)
resources that boards could just ignore.

So there's no real reason to disable it, ever.

Maxime

--5jesdngv6qe6kcit
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZW8M5QAKCRDj7w1vZxhR
xUV5APsF4CIS8KQJYG8CEcd6Dj5Ch5Ch6UaSMRvxYwFdEhTmsAD/draeEFb1kwaf
3TPqLjMKBek/NfOxJxKxm4Y9ZbHWsQc=
=eUy9
-----END PGP SIGNATURE-----

--5jesdngv6qe6kcit--

