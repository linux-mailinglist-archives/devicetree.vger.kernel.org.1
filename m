Return-Path: <devicetree+bounces-245252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA7FCADC0D
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 17:29:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 866B93009541
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 16:29:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98AE82E62D1;
	Mon,  8 Dec 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTWOR8XB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EF04F9C0;
	Mon,  8 Dec 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765211393; cv=none; b=IHlR1K1AVCVjVuQIw8STePQVTjwQY5/wUnbuzXQU1WLBsxvZJRKpSWKCHUFPzcQGf2kBezU42gOOVyJpGARQcWMaMdWo4j40/GTdRFrAYtM6pRVDBObqOgHgaXSBZthQB3oHzTMqLphMiSwCmNIiaAxtGnJoPKkkDCtJ9msjXrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765211393; c=relaxed/simple;
	bh=u9/V6FO6d0rm9qZyiiTMyVquQKST3H4QQ0D6A/qqc+k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DjHzih/17m7TePHSc/lsWLUx/NS42ra4x8FCiIxfGufAteJIWhCNnlXSo6lgH016/RWcAhMNeD6ZR2Eg1gQn7rJHqSI/Sjr+DNAt3QPKwcx2Zpo9zDvh2aqsTRByPNYLczvwUqE5SayQ6FH/fsEJlWWj6ZllAwG181T2V2i7AEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTWOR8XB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AE62C4CEF1;
	Mon,  8 Dec 2025 16:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765211393;
	bh=u9/V6FO6d0rm9qZyiiTMyVquQKST3H4QQ0D6A/qqc+k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UTWOR8XBk8PRSyJtXmVlAeQbiK5G1P0UP2JqnYfGjc3F+G5Z4H2ykjk7I0uCe7PzP
	 85SK5BH2fPt4UCcV1v3jLmrZ54ZovyY7FcUURybT9QAs4xXxYBJDbevjXVm2iCTb0I
	 CMLbIIVri6eCqpzFxDirb5vPHxzsa7Jvhb7rNMRmyCFuuYt/nYuvVKzHZB3WMykPAS
	 +qaagc0G5nGRQubEMOUivMoopgz9WltrB3miUbOhTGVt//2L4t/py+uAvb/yOJM3UX
	 wsW2pJ+HJZAD5wGqhlh06tko1x6AbcULmAitSBMIPQ4MMWDlH4HJzg0yZq4nbFGJ3N
	 6DcdGYQpzMT9w==
Date: Mon, 8 Dec 2025 16:29:47 +0000
From: Conor Dooley <conor@kernel.org>
To: E Shattow <e@freeshell.de>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Hal Feng <hal.feng@starfivetech.com>, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v1] riscv: dts: starfive: Append starfive,jh7110
 compatible to VisionFive 2 Lite
Message-ID: <20251208-jogging-morally-9b787b7ab1b8@spud>
References: <20251206204540.112614-1-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="S/9N8GZdPnvmudqA"
Content-Disposition: inline
In-Reply-To: <20251206204540.112614-1-e@freeshell.de>


--S/9N8GZdPnvmudqA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 06, 2025 at 12:45:30PM -0800, E Shattow wrote:
> Append starfive,jh7110 compatible to VisionFive 2 Lite and VisionFive 2
> Lite eMMC in the "least compatible" end of the list. JH7110S on these
> boards is the same tape-out as JH7110 however rated for thermal, voltage,
> and frequency characteristics for a maximum of 1.25GHz operation.
>=20
> Link to previous discussion suggesting this change:
> https://lore.kernel.org/lkml/1f96a267-f5c6-498e-a2c4-7a47a73ea7e7@canonic=
al.com/
>=20
> Fixes: 900b32fd601b ("riscv: dts: starfive: Add VisionFive 2 Lite board d=
evice tree")
> Fixes: ae264ae12442 ("riscv: dts: starfive: Add VisionFive 2 Lite eMMC bo=
ard device tree")
> Suggested-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
> Signed-off-by: E Shattow <e@freeshell.de>

You can't do this without modifying the binding too, as this doesn't
pass dtbs_check.

However, is this actually correct? The frequency of operation and the
temperature range aren't a superset of what the jh7110 can do, what is
the actual advantage of having it? If there's some software that this
would make a difference for, please mention it in the commit message.

Cheers,
Conor.

> ---
>  .../dts/starfive/jh7110-starfive-visionfive-2-lite-emmc.dts     | 2 +-
>  .../boot/dts/starfive/jh7110-starfive-visionfive-2-lite.dts     | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-li=
te-emmc.dts b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lit=
e-emmc.dts
> index e27a662d4022..7544efa95de4 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite-emmc=
=2Edts
> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite-emmc=
=2Edts
> @@ -9,7 +9,7 @@
> =20
>  / {
>  	model =3D "StarFive VisionFive 2 Lite eMMC";
> -	compatible =3D "starfive,visionfive-2-lite-emmc", "starfive,jh7110s";
> +	compatible =3D "starfive,visionfive-2-lite-emmc", "starfive,jh7110s", "=
starfive,jh7110";
>  };
> =20
>  &mmc0 {
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-li=
te.dts b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite.dts
> index b96eea4fa7d5..b9913991a1b7 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite.dts
> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite.dts
> @@ -9,7 +9,7 @@
> =20
>  / {
>  	model =3D "StarFive VisionFive 2 Lite";
> -	compatible =3D "starfive,visionfive-2-lite", "starfive,jh7110s";
> +	compatible =3D "starfive,visionfive-2-lite", "starfive,jh7110s", "starf=
ive,jh7110";
>  };
> =20
>  &mmc0 {
>=20
> base-commit: 5e5ea7f61610239fca058011e7d4f342b34d1558
> --=20
> 2.50.0
>=20

--S/9N8GZdPnvmudqA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaTb8+wAKCRB4tDGHoIJi
0uetAP9cMQDvAr0AAp4fRxgA7OURrPcNt9GY00FOTAltOETTCQEAujHQ4cW/R5jp
1OiO+b1i5Yq6FHDPK6W9KdLrsNN47w8=
=PClC
-----END PGP SIGNATURE-----

--S/9N8GZdPnvmudqA--

