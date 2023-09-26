Return-Path: <devicetree+bounces-3593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E3E7AF63B
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 00:17:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 11577B20AAB
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 22:17:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BA594A538;
	Tue, 26 Sep 2023 22:17:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B945101E5
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 22:17:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8B3AC433C8;
	Tue, 26 Sep 2023 22:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695766673;
	bh=jM+4vSpJHaRXg07Z7KrKc7vyluCBVHubT/JfLBd7uJ0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kc/hFG+ZzO6/FpPjFZdgI0da37hdu+tQ3EvR26cYtMtSkOYhkGWKQ52gWQti8z3IA
	 9TcCAfPgaddkB3Dw39wfMLMuP9lMYux3y8meu16uSTSYi4oz9WHCjZiBLNTdVfJwFV
	 yh4ELT7CJY5ZONGxvfHW4atlnVYRZ5kfrEE5GFpZ17S9O9G3vGVh3SLHh9fxxQPKIT
	 gUk/1T0xnwr1Kt2WwB4BboaMFhJOGECMQq3xoFcrk5l25wpCAZTk9EE5FN3CEjBLen
	 waf6KKFW2ftMW2BHy12kfYhJpRwaHXOH4Q7cOJAWPa7br1hvpaQ+UHepUxg/ruOFwe
	 VjCwBju/XFGiQ==
Date: Tue, 26 Sep 2023 23:17:49 +0100
From: Conor Dooley <conor@kernel.org>
To: Karel Balej <balejk@matfyz.cz>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Markuss Broks <markuss.broks@gmail.com>,
	linux-input@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Duje =?utf-8?Q?Mihanovi=C4=87?= <duje.mihanovic@skole.hr>,
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 1/2] input: generalize the Imagis touchscreen driver
Message-ID: <20230926-vintage-grout-799136a47c7c@spud>
References: <20230926173531.18715-1-balejk@matfyz.cz>
 <20230926173531.18715-2-balejk@matfyz.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="PjgKNhhDJZlXjpVF"
Content-Disposition: inline
In-Reply-To: <20230926173531.18715-2-balejk@matfyz.cz>


--PjgKNhhDJZlXjpVF
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 26, 2023 at 07:35:23PM +0200, Karel Balej wrote:
> This driver should work with other Imagis ICs of the IST30**C series.
> Make that more apparent.
>=20
> Co-developed-by: Duje Mihanovi=C4=87 <duje.mihanovic@skole.hr>
> Signed-off-by: Duje Mihanovi=C4=87 <duje.mihanovic@skole.hr>
> Signed-off-by: Karel Balej <balejk@matfyz.cz>
> ---
>  ...gis,ist3038c.yaml =3D> imagis,ist30xxc.yaml} |  2 +-

>  MAINTAINERS                                   |  2 +-
>  drivers/input/touchscreen/Kconfig             |  4 +-
>  drivers/input/touchscreen/imagis.c            | 86 +++++++++++--------
>  4 files changed, 52 insertions(+), 42 deletions(-)
>  rename Documentation/devicetree/bindings/input/touchscreen/{imagis,ist30=
38c.yaml =3D> imagis,ist30xxc.yaml} (99%)
>=20
> diff --git a/Documentation/devicetree/bindings/input/touchscreen/imagis,i=
st3038c.yaml b/Documentation/devicetree/bindings/input/touchscreen/imagis,i=
st30xxc.yaml
> similarity index 99%
> rename from Documentation/devicetree/bindings/input/touchscreen/imagis,is=
t3038c.yaml
> rename to Documentation/devicetree/bindings/input/touchscreen/imagis,ist3=
0xxc.yaml

This rename is pointless.

--PjgKNhhDJZlXjpVF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRNYjQAKCRB4tDGHoIJi
0gdyAQCU/gktStdJ+AzCkyQXhLQXG1HNvCxRijBMtmWRybjsWQEA8ExO1zDuRfsI
ci51TnrAQ9roac4P3LgJInZ9cgjGXAE=
=RCwE
-----END PGP SIGNATURE-----

--PjgKNhhDJZlXjpVF--

