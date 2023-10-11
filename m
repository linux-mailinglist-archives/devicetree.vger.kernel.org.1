Return-Path: <devicetree+bounces-7711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 84BAA7C5241
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:38:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3DD302821EE
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:38:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92BE71E531;
	Wed, 11 Oct 2023 11:38:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqRScT5F"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732961DDF1
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:38:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 584D0C433C8;
	Wed, 11 Oct 2023 11:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697024306;
	bh=4fx02kIVzNS5/Linr6xalperWLzJEYnNr9bOurgYi+E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FqRScT5FTcuS3fYqdQHWtC5gAFPo1tF6UDWr2uuRZDMiuuIJrc0PU6OrpuV4nBIb+
	 6lSnNp++41Vk1/p8G3bh94Sms/awnr5WMobOOwZJpQRuTc79uoHgrjBjCef1X8EqZ6
	 yHaRL5sjr29GCbIqrWAT9rG2WyjvN9aNaT4Y3t3AS/lyIAm3omAVRDRIK8SUdozjrk
	 FVpvJfQkbbuPO3Dp5ZAIyca8P0ud9BqGZtQ3aVvpqy3ok2JZRmhj2+tB/zd8TBkKWw
	 YIoA9v3Mm5CY8NZFYxZK6AoZjmJbIfZxqu7ka9i4GeTeDRwD+7D9gi44XWPWfAc5Id
	 1mqmAb8PDv5Sw==
Date: Wed, 11 Oct 2023 12:38:19 +0100
From: Mark Brown <broonie@kernel.org>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Naresh Solanki <naresh.solanki@9elements.com>,
	zev@bewilderbeest.net, Sebastian Reichel <sre@kernel.org>,
	linux-pm@vger.kernel.org
Subject: Re: [PATCH v1 3/3] regulator: fixed: forward under-voltage events
Message-ID: <2d14fd22-c37b-4c15-a2ea-a2fd2c201adb@sirena.org.uk>
References: <20231010085906.3440452-1-o.rempel@pengutronix.de>
 <20231010085906.3440452-3-o.rempel@pengutronix.de>
 <5e51792a-cc93-4364-a51b-c2b116d89369@sirena.org.uk>
 <20231010125531.GA3268051@pengutronix.de>
 <c2ee404d-d07f-42c6-b5ba-41659773e8eb@sirena.org.uk>
 <20231011075931.GA3305420@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9eSSa5JQlmOnKXkT"
Content-Disposition: inline
In-Reply-To: <20231011075931.GA3305420@pengutronix.de>
X-Cookie: What an artist dies with me!


--9eSSa5JQlmOnKXkT
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 11, 2023 at 09:59:31AM +0200, Oleksij Rempel wrote:

> Configuration through the device tree and kernel defaults is preferable.
> For instance, having a default kernel governor that doesn=E2=80=99t requi=
re user
> space configuration aligns with the project=E2=80=99s objectives.

That's policy though...

>=20
> > For the regulator itself we probably want a way to identify regulators
> > as being system critical so they start notifying.  It would be tempting
> > to just do that by default but that would likely cause some issues for
> > example with regulators for things like SD cards which are more likely
> > to get hardware problems that don't comprimise the entire system.  We
> > could do that with DT, either a property or some sort of runtime
> > consumer, but it might be better to have a control in sysfs that
> > userspace can turn on?  OTOH the ability do something about this depends
> > on specific hardware design...
> >=20
> > I've copied in Sebastian since this sounds like the sort of thing that
> > power supplies might have some kind of handling for, or at least if we
> > need to add something we should make it so that the power supplies can
> > be joined up to it.  I do see temperature and capacity alerts in the
> > sysfs ABI for power supplies, but nothing for voltage.
>=20
> Thank you for pointing towards the power supply framework. Given the hard=
ware
> design of my project, I can envision mapping the following states and
> properties within this framework:

There's also hw_failure_emergency_poweroff() which looks like exactly
what you're trying to trigger here.

> Considering the above mapping, my initial step would be to create a simple
> regulator coupled (if regulator is still needed in this casr) with a Devi=
ce
> Tree (DT) based power supply driver.  This setup would align with the exi=
sting
> power supply framework, with a notable extension being the system-wide
> notification for emergency shutdown upon under-voltage detection.

It sounds like this is actually a regulator regardless of if it also
appears via some other API.

--9eSSa5JQlmOnKXkT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUmiSsACgkQJNaLcl1U
h9AXKAf9E3DOuTsypes7HuEYKgcVvvwy45I43FH7VZN2D7Xf19e7tsoHXpWGap5f
LYqv2PoNNArcGBX/V8ioAhYv2GbICFWCefxawYDB8SM+xsKI0/4zRQfz9qKf4xax
pPgDcmCH4bfXsUYMTfjbRZ/l9CRAjwZuYJgJpjRQwlMGe/X1ZYDDAJ/2ulotdVqa
rWBb0vmafnGj/u3oUKOoNYwjUiK4zKRhE/YklWyVQ+APsGzyQ/6R2irdL7sQK0s4
dISgQYXzfljoo9Fpnyn5ZvMQEd1uZyPeyNkoLtcStmlg0SUuc5vPDn7aK0C0GSHf
UQzT4X8/qVMXalQjcHdeimxOL+Uy3A==
=k1e/
-----END PGP SIGNATURE-----

--9eSSa5JQlmOnKXkT--

