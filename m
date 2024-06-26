Return-Path: <devicetree+bounces-80378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC3D91872C
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 18:19:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B723EB25565
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 16:13:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38EBD18F2D4;
	Wed, 26 Jun 2024 16:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXvTCJ6t"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A6F18F2CE
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 16:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719418252; cv=none; b=FVYxDFv43mq74nqgy93xvAwLClwM+lQx2E6TmfxlNKjnL9uPvYPy2MNEPFHtjBAlA/ikWoABTWnF0HXbD2FgnadFw6qTOv8Ivz89UBZvYRqfLmPDz61qlLPCCtvlFBkegmz9DLBkARnPBlPhf3mZ7Lheb9LvWcRb6+sZgWsHWvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719418252; c=relaxed/simple;
	bh=Vd0scu1qZ71icUSzJVAQsfRuWDhvZZGgD/I/x/oB2Bw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EZcM6MxDEuBC5Zt4qr14xUFUxtG81FRB7shAKZDkgiCtpzn3kw8kpPz3DcgBDQ4fno4bM0oC9nxAa3ASB2OthtY/GGaFwS6obApHCNSJHH940YAgg3FLP4d150lEwio0+pAKzc3auazDYYv4Sd+Ahj+lKIvrzm8mdVay9r9nLeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXvTCJ6t; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 541CDC116B1;
	Wed, 26 Jun 2024 16:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719418251;
	bh=Vd0scu1qZ71icUSzJVAQsfRuWDhvZZGgD/I/x/oB2Bw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qXvTCJ6t8DEK6fSjuFRvtPpS6U34FZ0JNLXkJknv7NKdnMX0jazVoqRVahOOFz0px
	 ZEZ0bk1/Rfl1cxnd46Up5WOJOu4kRNWHfh9sWWdNFUvVwe5FLXGtgS7BLJjfFThsGd
	 NwSPDtCFCvK73rLKNHMOyisTOrl+97A7Uo10bYaOa8D2jQlufDnOlYFfzdSf28FobJ
	 ljlVnce5h0dW1YAR7oT9rk5fISfL+qT8HvFE4lLFg/ZzR0mqYvY8PFE1o5Uw/x0tsf
	 hsVHVPJkNqC60UdVUR6dX6B8hj8pZr0nZ7kqt1dC1NeUoidZNECvCTgSePB5ioc4XH
	 KKjCWINTABZ5A==
Date: Wed, 26 Jun 2024 17:10:47 +0100
From: Conor Dooley <conor@kernel.org>
To: devicetree@vger.kernel.org
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Lars Povlsen <lars.povlsen@microchip.com>,
	Steen Hegelund <Steen.Hegelund@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>
Subject: Re: [PATCH 1/2] MAINTAINERS: add microchip soc binding directory to
 microchip soc driver entry
Message-ID: <20240626-daybreak-psychic-b563872acb48@spud>
References: <20240626-platter-scarcity-d503fda8a2fd@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ueXGBv6X7u8earbK"
Content-Disposition: inline
In-Reply-To: <20240626-platter-scarcity-d503fda8a2fd@spud>


--ueXGBv6X7u8earbK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 26, 2024 at 04:54:16PM +0100, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
>=20
> I noticed that there's technically not an explicit maintainer for this
> directory, even if the files currently in it are covered by either the
> Mircochip FPGA or AT91 entries. Add it to the entry covering the
> corresponding driver directory.
>=20
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> CC: Rob Herring <robh@kernel.org>
> CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
> CC: Conor Dooley <conor+dt@kernel.org>
> CC: devicetree@vger.kernel.org
> CC: Nicolas Ferre <nicolas.ferre@microchip.com>
> CC: Alexandre Belloni <alexandre.belloni@bootlin.com>
> CC: Claudiu Beznea <claudiu.beznea@tuxon.dev>
> CC: Lars Povlsen <lars.povlsen@microchip.com>
> CC: Steen Hegelund <Steen.Hegelund@microchip.com>
> CC: Daniel Machon <daniel.machon@microchip.com>

Huh, I somehow didn't save my updated commit message. The long list of
microchip people here is because it was a move of a sparx5 binding to
this directly that caused me to notice the lack of explicit coverage of
the directory.

> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/MAINTAINERS b/MAINTAINERS
> index e2d8fdda1737..c74fd2b70532 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14975,6 +14975,7 @@ MICROCHIP SOC DRIVERS
>  M:	Conor Dooley <conor@kernel.org>
>  S:	Supported
>  T:	git https://git.kernel.org/pub/scm/linux/kernel/git/conor/linux.git/
> +F:	Documentation/devicetree/bindings/soc/microchip/
>  F:	drivers/soc/microchip/
> =20
>  MICROCHIP SPI DRIVER
> --=20
> 2.43.0
>=20

--ueXGBv6X7u8earbK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZnw9hwAKCRB4tDGHoIJi
0t+rAQCwe+6QELFU3KwYZTXFZrIjBsoTExNviDud6VWb+ovw+AEA+PAg9YhhQEEY
KCdImqzio8a9AkKa+Dd44eO3Xm0Zjw0=
=l96S
-----END PGP SIGNATURE-----

--ueXGBv6X7u8earbK--

