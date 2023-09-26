Return-Path: <devicetree+bounces-3592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8587AF638
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 00:16:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id AFA5A282776
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 22:16:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E6E348EA1;
	Tue, 26 Sep 2023 22:16:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E071101E5
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 22:16:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9BFE8C4167D;
	Tue, 26 Sep 2023 22:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695766612;
	bh=fCjol8JlYphz+jtI2CFpld5H0xOC1ErZJz1agW/LrQ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hDfzAX/Y7eYDNQEYsaTOIcQbyrUKT8cMZ+qVhy7KfVJh6o8BU9sj8AsMQrFgJeNTC
	 9Z0CaES8EnJdjpGZ64ixPRglRlw+afKOAjSzTW1BGHxp1yFEHZW5IwYiur5txYy/Sk
	 FQYXn5v1j4L/JcBLfgH3KCpg8cSI9N3/tOxLLXZkafu19Ufq8WJAKSFqaMuIlooSJ5
	 EldAdIGgHZsk1I70IQCXuWF8lLFPLAaqUdc1xzQgZDZDFwHpMk1lmis3sUpWjAcIje
	 myli+CM71h1BaMrsFgJfNiP5FVI/AnWWWQZNNUuRuI/d/bqqFg0gWzAKz3vFgp7aUs
	 BrpY67bp8hv+Q==
Date: Tue, 26 Sep 2023 23:16:48 +0100
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
Subject: Re: [PATCH 0/2] input: Imagis: add support for the IST3032C
 touchscreen
Message-ID: <20230926-scrooge-footpad-141ab10bc24e@spud>
References: <20230926173531.18715-1-balejk@matfyz.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="KY81PpXWkzI89d0P"
Content-Disposition: inline
In-Reply-To: <20230926173531.18715-1-balejk@matfyz.cz>


--KY81PpXWkzI89d0P
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 26, 2023 at 07:35:22PM +0200, Karel Balej wrote:
> This patch series extends the Imagis driver to support the IST3032C
> touchscreen, which is used for instance with the samsung,coreprimevelte
> smartphone, with which this was tested. To use it with this model
> however, the regulator driver needs to be ported first. Support for this
> smartphone is not yet in-tree, upstreaming is ongoing at [1].
>=20
> [1] https://lore.kernel.org/all/20230812-pxa1908-lkml-v5-0-a5d51937ee34@s=
kole.hr/

For both patches, changes to dt-bindings need to be in their own
patches & not bundled with drivers.

>=20
> Karel Balej (2):
>   input: generalize the Imagis touchscreen driver
>   input: Imagis: add support for the IST3032C touchscreen
>=20
>  ...gis,ist3038c.yaml =3D> imagis,ist30xxc.yaml} |  3 +-
>  MAINTAINERS                                   |  2 +-
>  drivers/input/touchscreen/Kconfig             |  4 +-
>  drivers/input/touchscreen/imagis.c            | 99 ++++++++++++-------
>  4 files changed, 66 insertions(+), 42 deletions(-)
>  rename Documentation/devicetree/bindings/input/touchscreen/{imagis,ist30=
38c.yaml =3D> imagis,ist30xxc.yaml} (97%)
>=20
> --=20
> 2.42.0
>=20

--KY81PpXWkzI89d0P
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRNYUAAKCRB4tDGHoIJi
0h0+AP4mq1/TXgnfvOXedfd8whbw430eMWkQ2OJeMzaV+zL0DAEA5tmsbi0b7+um
VkrqGJn8r7ZG4dO5GAmDndoEbMNNIAg=
=wi52
-----END PGP SIGNATURE-----

--KY81PpXWkzI89d0P--

