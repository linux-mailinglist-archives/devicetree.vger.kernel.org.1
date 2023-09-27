Return-Path: <devicetree+bounces-3867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE957B0493
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 14:45:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 0E8FA1C209E0
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 12:45:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C239727EEB;
	Wed, 27 Sep 2023 12:45:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B38CC210E2
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 12:45:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7078C433C8;
	Wed, 27 Sep 2023 12:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695818734;
	bh=3hrngeipW8QYxZDrT1J17sJTEycYuyG8C4Hf6g4f9mk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hz53PaQiWaKZ/1Zs1EME4EwCfBwffMjO/IjsKksewWqoLHutiYc6XcRIj9MYLYPOJ
	 JE46L46NLZjr3fVz3pnh6cB6RzGHdJzrZJJVyUeTKig7geGpJ/2x2pVINuZ+5dNXmA
	 zMNSdGYiOLJHin3kXKixuL8pvLjIQExHt9swOF7zRbdolSven+ki/OY4thj3Ne5zl0
	 HDrzzPayoA8zjQDIbDX9QSg7wAMsHWT1E734sJ+bBpR1N7eHSMC+6nBFGSjpbKFDaq
	 61/7XqBk6zMhSEhC0Ui6U67zSYEUhIIud16gGZcFYmengkt68rRH1ueSYjdErCQZD+
	 ioRDU3XLX/6FA==
Date: Wed, 27 Sep 2023 14:45:31 +0200
From: Mark Brown <broonie@kernel.org>
To: Saravanan Sekar <saravanan@linumiz.com>
Cc: sravanhome@gmail.com, lgirdwood@gmail.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux@roeck-us.net, jdelvare@suse.com, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-hwmon@vger.kernel.org
Subject: Re: [PATCH v2 2/3] regulator: dt-bindings: Add mps,mpq2286
 power-management IC
Message-ID: <ZRQj63bNWE5/rPHj@finisterre.sirena.org.uk>
References: <20230927033953.1503440-1-saravanan@linumiz.com>
 <20230927033953.1503440-3-saravanan@linumiz.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="T0rU25F2o9sf0/UW"
Content-Disposition: inline
In-Reply-To: <20230927033953.1503440-3-saravanan@linumiz.com>
X-Cookie: Save energy:  Drive a smaller shell.


--T0rU25F2o9sf0/UW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 27, 2023 at 09:09:52AM +0530, Saravanan Sekar wrote:
> Document mpq2286 power-management IC

Acked-by: Mark Brown <broonie@kernel.org>

--T0rU25F2o9sf0/UW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUUI+oACgkQJNaLcl1U
h9DEfwf+JvfaFxh8GiR0Yh5rN8HjOavY+Bhl3rnfzmUzMBYk4XbIQgKzKIMv5KQq
llUScvj8FvQGBT2tKE2Iv/bG/wcD0TIG8qbqFb8e+uaB8ef3bmJpglWCGVtwxXQn
v+SqFAlVKa9IAWZbXqH4N07UBffJEmwu1vK3boVoNPokkPVab8i2rQQcE922v0q9
J6DMYxCUUcmNV+igGkp1r4k6dP93nL3lcvueCnYjsj3CYbOVQdc71hAiBRCLl+sT
ZsdlFdehyQYbuGrFzQ1fYdxDaoEX+29ZWHlJFETtODULMuPmZm8JtpcZWqelsTUe
0V6DwtqFZLm5tG10HhZ979T9yzS3Xw==
=aDqW
-----END PGP SIGNATURE-----

--T0rU25F2o9sf0/UW--

