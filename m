Return-Path: <devicetree+bounces-2509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D897AB0FB
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 13:35:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id A4B471F2268B
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 11:35:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9D651F94A;
	Fri, 22 Sep 2023 11:35:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8963182B3
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 11:35:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F494C433C7;
	Fri, 22 Sep 2023 11:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695382511;
	bh=aNpDnFYDj2j2Hkh8J6UIChSAo3HYbob/MUwFfBA0fyI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lh3bOW0FZO7LnVKBGV83pftFw64EJVKA01kN5ZM3Mtr+Vcp3TV8YJcevHLXNkgp37
	 49+G7ptnrP0NW5ZEAB6Mb/xcaaiWWN7oJGHyiVzxO5CvaW6yVmPIZKsx24LraXooVq
	 +VTxbSmaHKyOdqJZsP4QuSTOoXe/LtMGlGXpfCoME7abBiLGPBAM+B8pUO9m9760qE
	 3lOpDD4pt6iNq+Hw2nREAF78Kd7ASYsVEKekCSNNB2QwK4OlCp3fB97l3+Zq7XeoN5
	 +ml9q+LhOS8JT7K8fcZiXyKqT+9cm+oZpIOzEpfJwZYi4JNwFosnn6DqbmMlJG3eTI
	 etz69+co19rUQ==
Date: Fri, 22 Sep 2023 12:35:07 +0100
From: Conor Dooley <conor@kernel.org>
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: gregkh@linuxfoundation.org, jirislaby@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	hvilleneuve@dimonoff.com, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 4/4] dt-bindings: sc16is7xx: convert to YAML
Message-ID: <20230922-awning-repayment-e9f4ec55787d@spud>
References: <20230920152015.1376838-1-hugo@hugovil.com>
 <20230920152015.1376838-5-hugo@hugovil.com>
 <20230921-decorated-patronize-45285045adbf@spud>
 <20230921113040.2dafb3d50cfdd8727de42356@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="FaLvclHYZD+k9FzY"
Content-Disposition: inline
In-Reply-To: <20230921113040.2dafb3d50cfdd8727de42356@hugovil.com>


--FaLvclHYZD+k9FzY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 21, 2023 at 11:30:40AM -0400, Hugo Villeneuve wrote:
> On Thu, 21 Sep 2023 14:45:06 +0100
> Conor Dooley <conor@kernel.org> wrote:
> > On Wed, Sep 20, 2023 at 11:20:15AM -0400, Hugo Villeneuve wrote:

> > > +  clocks:
> > > +    maxItems: 1
> > > +    description: Reference to the IC source clock.
> >=20
> > You could probably drop this, if it only has one clock it's a bit
> > redundant.
>=20
> I don't understand, because there is already a 'clocks' property in
> the examples (and also in my real board DTS file) and if I remove it
> here it will cause a warning:
>=20
> serial@51: Unevaluated properties are not allowed ('clocks' was
> unexpected)

Sorry, I was talking about the description.

--FaLvclHYZD+k9FzY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQ176gAKCRB4tDGHoIJi
0twcAP9vBpC+1tj/zupf5iw1FA60BwrOpAZP14ulMEaI7vlVhQEAtnM5KniPS4Uh
bn1iiPZW8oKjgRIGM/LkbpHqmkPs9Qc=
=YeHj
-----END PGP SIGNATURE-----

--FaLvclHYZD+k9FzY--

