Return-Path: <devicetree+bounces-51899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F75880EBB
	for <lists+devicetree@lfdr.de>; Wed, 20 Mar 2024 10:37:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C5AEDB2203C
	for <lists+devicetree@lfdr.de>; Wed, 20 Mar 2024 09:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E60BB3B78E;
	Wed, 20 Mar 2024 09:37:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="goVwELML"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (www.zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADD43C47D
	for <devicetree@vger.kernel.org>; Wed, 20 Mar 2024 09:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710927436; cv=none; b=aOApw+vKF1kpDkZdYx6kNqQ+qH89Gry0fNVlvOm1vL21aeK9sas9QswHlJe0WDnxGkhvj5cHInKO90LHdCpRS2R9/A4s5955h7Ls1LZf4XRUZyl12vizbfyakPW9eDHtIYvwArV/6V+o+9z749U0Mqltlljcwt86/a0rXZ2PHBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710927436; c=relaxed/simple;
	bh=zWxVl/2X9kouqQYfMwhrr4bM2x0AklA0D8zhl+pUVCI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BWdAkZ3ntv1rYMQeYBzvxxd5OeVJ5qiR9giGCmJREvcicqAbxhy6fmoVD78qnfz8rkJ+6Yh7rLAODEBH///mwO0YK/Vq87KpiAJSSxzTMavWGAagXctMwFsX/FVfvyEyZdH0GZEaEpq2S09pzwP+6VVxH0+L1sK6mJ6gVrDxM+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=goVwELML; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=yggb
	edAkgjOXyhmbcK7TprxYYbcJSubHV1Rs0FZhOlM=; b=goVwELMLPIHWhkE0TmwD
	/ggjHBXT+DaUaQlHhUisIqOoysuMIxTUJfkO1iUhSimHelJ81t1fU98i9/I94IHC
	1nNVL7i8uYXt+l6h528AS6zHcEzsY7RCwpVdSuik4bg2g4TqATCzbtpOFgwqNze1
	TbsxOkYbM5BaA1cj+MRnKDZwGUUqUX00EZdBBfcsAOcrtTWVvL/yZaFezkIV3nHU
	U1VnLryIKS7ur2kINEkzcUW4E418KUUiT/fJ07kYu1xAxuMKAWZ2Z+7jFQC7fGqT
	0Cck8FAitqpn1AexRqvJLmazyyBWOhFL+JUEQM8RMtxFcoYzc9WhO7Kz0SrF5PQB
	Cw==
Received: (qmail 3157560 invoked from network); 20 Mar 2024 10:30:29 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 20 Mar 2024 10:30:29 +0100
X-UD-Smtp-Session: l3s3148p1@K7PSPRQUXuxehhYE
Date: Wed, 20 Mar 2024 10:30:28 +0100
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
	Chris Brandt <chris.brandt@renesas.com>,
	Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-renesas-soc@vger.kernel.org, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 1/4] dt-bindings: i2c: renesas,riic: Document
 R9A09G057 support
Message-ID: <ZfqstNocte2wV_ad@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Chris Brandt <chris.brandt@renesas.com>,
	Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-renesas-soc@vger.kernel.org, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Rob Herring <robh@kernel.org>
References: <20240319132503.80628-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20240319132503.80628-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="L0v9WIsIV3zpzm6c"
Content-Disposition: inline
In-Reply-To: <20240319132503.80628-2-prabhakar.mahadev-lad.rj@bp.renesas.com>


--L0v9WIsIV3zpzm6c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 19, 2024 at 01:25:00PM +0000, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>=20
> Document support for the I2C Bus Interface (RIIC) available in the
> Renesas RZ/V2H(P) (R9A09G057) SoC.
>=20
> The RIIC interface in the Renesas RZ/V2H(P) differs from RZ/A in a
> couple of ways:
> - Register offsets for the RZ/V2H(P) SoC differ from those of the
>   RZ/A SoC.
> - RZ/V2H register access is limited to 8-bit, whereas RZ/A supports
>   8/16/32-bit.
> - RZ/V2H has bit differences in the slave address register.
>=20
> To accommodate these differences, a new compatible string
> "renesas,riic-r9a09g057" is added.
>=20
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Acked-by: Rob Herring <robh@kernel.org>

Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


--L0v9WIsIV3zpzm6c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmX6rLQACgkQFA3kzBSg
KbbPwA//dm+xf9wd49JEwk0OxmGbcznYn0957HJ0Y5pH550IwSYDIoag7DN49XvX
BGDPUUZ/ehUfllSkwy9sFCYZBIUSe9XRHhLv6r29s+akehaH1Mn4gN4myW7rtD2l
MEy34qNjWCW9xFkamgtEnwOVZnZVAQ9jOZlquZ2G6f89iFSEEM3txXMQrm/vIfgz
ompBv6spg/hSeihwRgyHrOwted6LGORikWwcCK5C3q//xA0FvTuXIwgqlkuaX/rP
TB395nk2keIYU0fUumrH/Mn8+4iYylM98Nv0pqCRtP9CbH8brHedP1LR3Sh9dJGv
ys9dIMTTjqSZQa2CI/A3U97TaDKCh7t1MOKQJV2k1By9P3AkZOxRAwU2fWValbd7
KHADKNl9vf47XcPI7lo4M/GH/D3XKmmishCVhdMJ2AFeoyypuixZB00qw66Fz8uh
DsHCm1kRDGM4dBA7xwAkzjwsKelabSngAPMzw4M1PtxHwXbIIdXrfcEqwMVBXQy8
qV1e+0NHx8OOMqIKKqpGyhUwstX38D+kwPTCgoj1J9dSo2LolwfES9RifXhmbQVV
tPpyZ54RU4O7Hqvg3zujJVRNQm4cbAemBbHOYT/MpO7lbtQxvZ/W98y+MwoxPQ4v
04VpxsmuwatvBYjBjutnR/wNSWkp/xC2RRr4KlLH5wS4qBYBX2Y=
=VMFl
-----END PGP SIGNATURE-----

--L0v9WIsIV3zpzm6c--

