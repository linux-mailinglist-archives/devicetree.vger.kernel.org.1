Return-Path: <devicetree+bounces-6534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6107BBC11
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 17:46:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 850A1282168
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 15:46:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 003922868A;
	Fri,  6 Oct 2023 15:46:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJcW5fQI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D78F4273C8
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 15:46:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C885EC433C8;
	Fri,  6 Oct 2023 15:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696607170;
	bh=RqPT1sAX+CTz+LW7FuFBdj/iCoI5RcSD8+uIrgrjRII=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TJcW5fQIHClkSNCykvIXtff2T4paynN6ON2HHsJur23X/V+AytMrdMa8Z+YSrMKg7
	 wLoYz3k3KY1Aihi0JnyZ0KWWwEyN5hrypUPCfKfqeWiKNrAB/E8y19+9Nu3LqTGaxk
	 +HPtFku6IVKUm7vlWyAJYeSDkQTXn3/DMiBsY478ifOr440NNBFjs+X/2ufi9wA+dA
	 MTOIP4mB1+OvXOmOhEdBP7zpQfcmuQz55tkVx7xQjc4yUwILkfjoog+sTRlc9dtH/w
	 t81RK79s4fmnJhoySGDTNJKsT/illXeqAOUK490U0lrbZa2wa4n4eXXCfapsk9xF7X
	 zzzJBk3wtxSiA==
Date: Fri, 6 Oct 2023 16:46:05 +0100
From: Conor Dooley <conor@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: Linux PM <linux-pm@vger.kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org, Lukasz Luba <lukasz.luba@arm.com>,
	Amit Kucheria <amitk@kernel.org>
Subject: Re: [PATCH v2] thermal: Remove Amit Kucheria from MAINTAINERS
Message-ID: <20231006-earthly-equal-dd5d82312add@spud>
References: <2702191.mvXUDI8C0e@kreacher>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="aL7ZvF+92viwC5jJ"
Content-Disposition: inline
In-Reply-To: <2702191.mvXUDI8C0e@kreacher>


--aL7ZvF+92viwC5jJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 06, 2023 at 05:04:42PM +0200, Rafael J. Wysocki wrote:
> From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
>=20
> Amit Kucheria has not been participating in kernel development in any
> way or form for quite some time, so it is not useful to list him as a
> designated reviewer for the thermal subsystem.
>=20
> Remove him from the THERMAL entry in MAINTAINERS.
>=20
> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> ---
>=20
> v1 -> v2: Drop the DT binding change
>=20
> I'm really not inclined to fight over stuff that doesn't make any sense t=
o me.

I don't understand what you mean by this. All that was required was
putting __someone__ down as a maintainer in the dt-binding, as Rob's bot
told you:
https://lore.kernel.org/linux-devicetree/CAJZ5v0gwvo_CriNwz_g-oQ8EZUqdp4ymi=
uamU-KkrmQ87RhZyA@mail.gmail.com/T/#m56a9b1616477566e2976044c11b58dccbd3be0=
fb

>=20
> ---
>  Documentation/devicetree/bindings/thermal/thermal-zones.yaml |    3 ---
>  MAINTAINERS                                                  |    1 -
>  2 files changed, 4 deletions(-)
>=20
> Index: linux-pm/MAINTAINERS
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> --- linux-pm.orig/MAINTAINERS
> +++ linux-pm/MAINTAINERS
> @@ -21363,7 +21363,6 @@ F:	drivers/media/radio/radio-raremono.c
>  THERMAL
>  M:	Rafael J. Wysocki <rafael@kernel.org>
>  M:	Daniel Lezcano <daniel.lezcano@linaro.org>
> -R:	Amit Kucheria <amitk@kernel.org>
>  R:	Zhang Rui <rui.zhang@intel.com>
>  L:	linux-pm@vger.kernel.org
>  S:	Supported
>=20
>=20
>=20

--aL7ZvF+92viwC5jJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSArvQAKCRB4tDGHoIJi
0tJOAP0RchSWseK6p2cPyt+7A6+5M4M5Z7+A4KOKtDbdtWVzGQD7B25vFO7lmNDy
xfpFomW8uCMUMr0q7VBHLhYrNVBW3g4=
=dNGo
-----END PGP SIGNATURE-----

--aL7ZvF+92viwC5jJ--

