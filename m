Return-Path: <devicetree+bounces-1515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5837A6CA8
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 23:03:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B8F41C2096B
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 21:03:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7393347BA;
	Tue, 19 Sep 2023 21:03:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEBA78831;
	Tue, 19 Sep 2023 21:03:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BC9EC433C8;
	Tue, 19 Sep 2023 21:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695157429;
	bh=jQELY3ed0aSaCGrtR4O8uZ4VBZ0t0mnB+LYkLbV4ppc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lOCZUvwjqCVGTEeJxFMGoi3GdFpVUr1ctfO8v8hiexPz7Rpzjri86AhYDbTtCXhdF
	 ZRFwIRQXm8NPTeTJ+daRlMezaJ/FBkG4LxJ5nZT3oKjrphthzUy4OMyGVVOypZ6o7c
	 BIa56mraLBLegxo2FYqMeaqWT7TTKzmuhwDJnlpqxmLQxHeWOY8pVIWFo2u3EiEroF
	 CtzOiddTk9Iu3NUG0pn7D2rhDbMJaKhPf5zD9UYLcJcHW+V76w0rZokqdXXatQQ5kO
	 sF9c8a6wiIfKEUGzn7bi+LFlGchnl2IFeJGvoasDpijUyYzd96h0TvHP/AjglthFWk
	 3UHwZYcl0gZiA==
Date: Tue, 19 Sep 2023 22:03:44 +0100
From: Mark Brown <broonie@kernel.org>
To: Gokhan Celik <gokhan.celik@analog.com>
Cc: outreachy@lists.linux.dev, Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] regulator: dt-bindings: Add ADI MAX77503 support
Message-ID: <612491b7-f303-4ce7-ba41-26a622209f65@sirena.org.uk>
References: <cover.1695155379.git.gokhan.celik@analog.com>
 <5ce9482e53587d9250ecaa07d0908b987081b4e9.1695155379.git.gokhan.celik@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="U7bugydQvn0mFnR9"
Content-Disposition: inline
In-Reply-To: <5ce9482e53587d9250ecaa07d0908b987081b4e9.1695155379.git.gokhan.celik@analog.com>
X-Cookie: You buttered your bread, now lie in it.


--U7bugydQvn0mFnR9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 19, 2023 at 11:45:22PM +0300, Gokhan Celik wrote:

> +required:
> +  - compatible
> +  - reg
> +  - regulator-min-microvolt
> +  - regulator-max-microvolt

There should not normally be a requirement to specify voltage
constraints, it should be valid for the system to not permit any
configuration of the voltage at runtime and just use whatever state it
was left with when the kernel was started (eg, hardware or bootloader
default).

--U7bugydQvn0mFnR9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUKDK8ACgkQJNaLcl1U
h9AlTwf/VzAnN77CfZ0uBHjrlcyNqnuHpdCoS7AZT9VOMeDyUWNkM+jBz5/Dty5L
P4amLUiuB4FNCw05Bb6A+InKAJsVAJblH69cBNHkw9TPjb57fPjoZNUGMisCOiOJ
3O0aXatbaYLlwNEz7564lyTk+t5PTcQvA0YOCzfwOyEuwTCYm6Pw1sU7y1oMwduQ
8BaWwxRxDocuq7o5PWeatSK+HiAOe3WmVQykD0g+OocpNRJMb4EBhJWIbNG4zAdB
fo8cKL+eQ21oHT+ATOOdjQD1ZwWCy9QsddHwXUU4/Bd4bLlIipHTxp320nZqJuuQ
U7J6RuKB5SMNPE0sRIBrVvRqWK/Wig==
=YCg7
-----END PGP SIGNATURE-----

--U7bugydQvn0mFnR9--

