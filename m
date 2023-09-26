Return-Path: <devicetree+bounces-3382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B4E7AEA34
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 12:20:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B70622814DA
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 10:20:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8161F1D526;
	Tue, 26 Sep 2023 10:20:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7114F1C296
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 10:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E3E3C433C7;
	Tue, 26 Sep 2023 10:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695723605;
	bh=SqVssvpDG+8SqIFfeyZgPRIVCjS7B+9kHw6JgUdPoJw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gtFGCDgBfl0IMvFaI3gAhMQ8dvsTXyYXnWTK5H6VSyZ7GCGf6o1N0zgheHkiUyUrg
	 pT3j+rZ7xwTHa00x3J0GUWicepdEYQDfjOgJKRdzb1bDd2P0B/8KeioRzYLtXFRlI2
	 +qUnDSsnXwt2kQNkJ3sgE6TmaHWURZnUX1CH3BfP2igAPRZDC8FAajohpRJ6p1HkQ2
	 n8ECS3wQvsEQ+2zE7K8ogrLL09SeslCaJVbJOhvDtOlwD44QEFAz7pttUfb7lnhM9l
	 wRTBqpPnOLeApTtKL3GIydGzE8oFTl+gm+Ld9HRTt04jstCeVX4OXNte6D8DPpVZTR
	 F/eOvK5zV4rSQ==
Date: Tue, 26 Sep 2023 11:20:01 +0100
From: Conor Dooley <conor@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Peter Denison <openwrt@marshadder.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	Krzysztof Halasa <khalasa@piap.pl>, Imre Kaloz <kaloz@openwrt.org>,
	Ted Hess <thess@kitschensync.net>, Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 2/2] dt-bindings: arm: List more IXP4xx devices
Message-ID: <20230926-hunger-naturist-634fe7727c3c@spud>
References: <20230925-ixp4xx-usr8200-v2-0-433261c13a28@linaro.org>
 <20230925-ixp4xx-usr8200-v2-2-433261c13a28@linaro.org>
 <20230926-chef-steerable-94e1f0bdcc24@spud>
 <CACRpkdatck-5gFDdooxd=fP0R0hBP8Wf490znfvRkeShMLMxsQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zuoo88caI7jGVJSv"
Content-Disposition: inline
In-Reply-To: <CACRpkdatck-5gFDdooxd=fP0R0hBP8Wf490znfvRkeShMLMxsQ@mail.gmail.com>


--zuoo88caI7jGVJSv
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 26, 2023 at 11:04:26AM +0200, Linus Walleij wrote:
> On Tue, Sep 26, 2023 at 10:26=E2=80=AFAM Conor Dooley <conor@kernel.org> =
wrote:
>=20
> > > +      - items:
> > > +          - const: linksys,wrv54g
> > > +          - const: gemtek,gtwx5715
> > > +          - const: intel,ixp42x
> >
> > One question, not so much about this particular case, but is there no
> > "standalone" version of the gtwx5715 sold by gemtek? Asking as I don't
> > see it in the enum above. The description sounds like it is both a
> > product in its own right & sold rebadged.
>=20
> Yeah this one is a special headache. It's two different brandings
> of the same router. The Linksys version can still be bought new
> from Amazon:
> https://www.amazon.com/Cisco-Linksys-WRV54G-Wireless-G-VPN-Router/dp/B000=
0AR8Z1
>=20
> I'm leaning toward listing them as two different devices instead
> of what we have now, which is
>=20
>   compatible =3D "linksys,wrv54g", "gemtek,gtwx5715", "intel,ixp42x";
>=20
> We can just decide that one of them is the canon device, I guess
> Linksys, and the other we can just use that device tree, or we
> create a device tree that includes the former and just override
> the compatible.
>=20
> I don't really know what to do here.

Ahh, you were intentionally doing this so that for both devices you
would list all 3 compatibles? I had it in my head that the OEM device
would have 2 compatibles & the rebadged one would have 3.
I'd probably be slightly in favour of your second option, since you'd
likely want to set the model too. I suppose it's the decision of the
maintainer for the platforms, which IIRC is you, as given the devices
differ only by the badge...

--zuoo88caI7jGVJSv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRKwUQAKCRB4tDGHoIJi
0rxiAP9RXidIjKchQe0Z2H0E2V6Wczk9zf5cCIxdsMZF2IODHwEAjxtbq7tUVjvP
N/Lr8zXZfmqeD+LwGjw+Tv54OjMsIAw=
=LVSO
-----END PGP SIGNATURE-----

--zuoo88caI7jGVJSv--

