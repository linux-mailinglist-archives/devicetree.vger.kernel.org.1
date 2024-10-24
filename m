Return-Path: <devicetree+bounces-115275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7299AEBCC
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 18:22:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D421E1C21B2B
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 16:22:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2A071F76D3;
	Thu, 24 Oct 2024 16:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHJUplRq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98F981F5836;
	Thu, 24 Oct 2024 16:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729786968; cv=none; b=XrQT5Ohvi+Dm9HjtrmXrI7GSNzEamKwKWSS+UhbBwUQfnePvkgogwUxjN591kZ+HQDZ5VeNoy881dh5bM6rueSidDzz4UbkO1wkbJgfbRTlD86MhUWf5p10FJtsYASx5/Os6QK02Ej7a3bi/aF6DGAlW8IxJ+KqVFqJzSIURLU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729786968; c=relaxed/simple;
	bh=CT/ak6sW4ngfE5qWRkrugewcZeLkWkxUuO+GCZnm3C4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uNovatFyM6NVKuc2GGm6HRJCuanVLLyem5uRTYradYLCFKS6migewe8Xbc6fXOAUYOArb3F/sfYDr1wWj1MbjRXfhJE4eX0yJpogQB8aziDBPD/yYAQKdtUnB66tnFW8ZiqN10GMRedUeJv4OjRHNXiKnMk/RfB59LEERq4izcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHJUplRq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E3FAC4CEE3;
	Thu, 24 Oct 2024 16:22:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729786968;
	bh=CT/ak6sW4ngfE5qWRkrugewcZeLkWkxUuO+GCZnm3C4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CHJUplRqLBJE7kpQ8bSz+4Pn77i24Dg6m886deusCNpzBwGcmV6vHYBIjnMqrxPV9
	 3yUHGNxJ5mktSPYXMlKkk+XyFuapBDFOhNF/ApPh8JkKPSgq7VTLk4IlUH7AEZXrYt
	 QWbRgjQYfip6UrTn2Ud5GtXmEpgE3BKfDARpzAMMlG8mOj9q2pqFZ/BVinA0R5qlJ+
	 uuyTKU5d2PeMB2wolJX5Nou7QV+4HvR/rTC/ezLFiALeH6pg5xb1+KbHIwQg+Kr8ff
	 v+Egz9eYmUOwkTIYKkhRNBj2GLSYBH+dUI2c8s9MAycApnfY3e2yIEkM1GyiFOb3Wt
	 n7iE7is56P9EQ==
Date: Thu, 24 Oct 2024 17:22:44 +0100
From: Conor Dooley <conor@kernel.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>
Cc: Michael Hennerich <michael.hennerich@analog.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Trevor Gamblin <tgamblin@baylibre.com>, linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: pwm: adi,axi-pwmgen: Increase #pwm-cells to
 3
Message-ID: <20241024-rimmed-outing-642cda1b1941@spud>
References: <20241024102554.711689-2-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fZPott//B9W48TT6"
Content-Disposition: inline
In-Reply-To: <20241024102554.711689-2-u.kleine-koenig@baylibre.com>


--fZPott//B9W48TT6
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 24, 2024 at 12:25:54PM +0200, Uwe Kleine-K=F6nig wrote:
> Using 3 cells allows to pass additional flags and is the normal
> abstraction for new PWM descriptions. There are no device trees yet to
> adapt to this change.
>=20
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>
> ---
> Hello,
>=20
> missed that during review of that new binding. Just noticed that now
> when (internally) reviewing a machine dt using that device.
>=20
> There is no need for driver adaptions, the pwm core handles both cases
> just fine.

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--fZPott//B9W48TT6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZxp0VAAKCRB4tDGHoIJi
0kYGAQD4Zai7K/vfCVwi8hscJZ9OLH/bxDxogWe1tD+ABqM2qAD/aO05DaSdd72x
Pyivk7M34P3t6yYOmqikYvichm8P1Qk=
=cWT7
-----END PGP SIGNATURE-----

--fZPott//B9W48TT6--

