Return-Path: <devicetree+bounces-12566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 711907DA27E
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 23:32:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2AE8D2825E2
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 21:32:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 580683FE31;
	Fri, 27 Oct 2023 21:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="reF7VfnS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B24B3C09E
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 21:32:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EC7AC433C8;
	Fri, 27 Oct 2023 21:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698442335;
	bh=qK3hvJNS0Aliw7xtqaQfDoHDTkfG6rrB9PlIHENXp2M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=reF7VfnS5duq0mgeS8r0udz14EQe/24l9fbm+CaxS8xqcPXiyjpMlFomtdjZOld0l
	 FCGKPxe3nEo7NT+AK4suFsZvpjJUDcRD52NaNJC+N3XV0BsmFwZQAsikAmph5MUyyM
	 0ZTBdehoku4xvH8VJothhg4ER63PIl0ELl71CU3qbWVVkjPKms42zdPEz3Uiek6YKK
	 3XNNuV47dAyC7zIjEyBNOz5C42v6IJGcBrwBJcNh6Q4n87Hd4QP/DPLz4sOelc56rg
	 BcM9h9IUw2CslM5WYiBkpkArldS3krV+fYFZ6GG2lNAb6AY/vAxP0iWZNyhO5WsFaQ
	 WgteBjRB4g0gg==
Date: Fri, 27 Oct 2023 22:32:12 +0100
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 3/5] regulator: dt-bindings: Allow system-critical
 marking for fixed-regulator
Message-ID: <ZTwsXCQ2bz7KlgFl@finisterre.sirena.org.uk>
References: <20231026144824.4065145-1-o.rempel@pengutronix.de>
 <20231026144824.4065145-4-o.rempel@pengutronix.de>
 <20231027212440.GA3392484-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mZLwjrO5zan/3GHq"
Content-Disposition: inline
In-Reply-To: <20231027212440.GA3392484-robh@kernel.org>
X-Cookie: Save energy:  Drive a smaller shell.


--mZLwjrO5zan/3GHq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 27, 2023 at 04:24:40PM -0500, Rob Herring wrote:
> On Thu, Oct 26, 2023 at 04:48:22PM +0200, Oleksij Rempel wrote:

> > In certain projects, the main system regulator, composed of simple
> > components including an under-voltage detector and capacitors, can be
> > aptly described as a fixed regulator in the device tree. To cater to
> > such use cases, this patch extends the fixed regulator binding to
> > support the 'system-critical-regulator' property. This property
> > signifies that the fixed-regulator is vital for system stability.

> There is no programming interface for fixed-regulators, so how do you=20
> know an under/over voltage condition?

There's support for interrupts now - it's a just a simple signal so if
the interrupt is asserted you know there's an error but that's all you
know.

--mZLwjrO5zan/3GHq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmU8LFsACgkQJNaLcl1U
h9A20Qf+PcLBGuaFuQS105GCX+siPedNjWr631UhJBQWdT8ZOVMYOQynB3gBheJh
yPf4FZDN0CW6fx+KTGWJUmSOy8fDez9M78hl8XMAxd9NhrcUxqbVjl6AFfBv6UES
lXLkRxxpHTqTw7XySJFDl0s3tyLqgTN7cdqlYXghyjwEV8tudTv7kkl9pPhVyCP8
xylX/nz+F8sZOuAJ/RWVMcUKZBf3wblNR9x170gTEkof/9lsAt2004O/VmIBZplQ
mjuWPwy7OX0TXct4MxncJAYCqkWcZxGOjSuBr9iAhUV2tA6t7DuW3B35HL+gnQD/
JKjSM0hTcSrykL81qfXqn54ozzUdWA==
=9OwE
-----END PGP SIGNATURE-----

--mZLwjrO5zan/3GHq--

