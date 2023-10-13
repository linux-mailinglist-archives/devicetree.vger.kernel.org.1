Return-Path: <devicetree+bounces-8516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE317C8797
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 16:14:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 48810282D62
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 14:14:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAEDA18E27;
	Fri, 13 Oct 2023 14:14:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eie1oeb/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACAF337A
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 14:14:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97711C433C7;
	Fri, 13 Oct 2023 14:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697206452;
	bh=xiakfY2yzTf4fr07QKBhbaZia1Xj2Zm55HyF6h2uAk8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eie1oeb/SCDdqnrwYuRPCFdXKakAcbC4fy0M9ybafZEXiNV3IeqYb1gvNpDVkEE3j
	 Www067T/upZIUOG9A+eM9To7syVYOSs6IcdGRvfc3pKtEc+j59snOOmCI0aXOfNwKw
	 ZyRFGRH2Z8mb5jpMOW6oJzHZleZmD+fm4o+YkilcRholE/pm/IaGdRlhdQHoR/QSGh
	 4myH/6Swbjp/PL20e8IlsuI7TyX+d5aF2KwlopT/Ue3kCUFTPznyoj544KT6s34ZM3
	 2ekxKjK+RXQ+xVdq5kSQPHxNAe7g+iiZT13j0YJ3iFWj2WkcArLg8Jlx4Xgw2TGh+X
	 lrjqV830Nn2IA==
Date: Fri, 13 Oct 2023 15:14:08 +0100
From: Mark Brown <broonie@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: wangweidong.a@awinic.com, lgirdwood@gmail.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	perex@perex.cz, tiwai@suse.com, herve.codina@bootlin.com,
	shumingf@realtek.com, rf@opensource.cirrus.com, arnd@arndb.de,
	13916275206@139.com, ryans.lee@analog.com, linus.walleij@linaro.org,
	ckeepax@opensource.cirrus.com, fido_max@inbox.ru,
	sebastian.reichel@collabora.com, colin.i.king@gmail.com,
	liweilei@awinic.com, trix@redhat.com, dan.carpenter@linaro.org,
	alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V1 3/3] ASoC: codecs: Add aw88399 amplifier driver
Message-ID: <ZSlQsDzNXqyRVXAf@finisterre.sirena.org.uk>
References: <20231013104220.279953-1-wangweidong.a@awinic.com>
 <20231013104220.279953-4-wangweidong.a@awinic.com>
 <37a2d2d1-5ede-4f88-b4e7-d9750336465d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/Bt6tNOD8qhkOtxB"
Content-Disposition: inline
In-Reply-To: <37a2d2d1-5ede-4f88-b4e7-d9750336465d@linaro.org>
X-Cookie: Save energy:  Drive a smaller shell.


--/Bt6tNOD8qhkOtxB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 13, 2023 at 01:50:41PM +0200, Krzysztof Kozlowski wrote:
> On 13/10/2023 12:42, wangweidong.a@awinic.com wrote:

> > +static void aw88399_hw_reset(struct aw88399 *aw88399)
> > +{
> > +	if (aw88399->reset_gpio) {
> > +		gpiod_set_value_cansleep(aw88399->reset_gpio, 0);
> > +		usleep_range(AW88399_1000_US, AW88399_1000_US + 10);
> > +		gpiod_set_value_cansleep(aw88399->reset_gpio, 1);

> Why do you leave the device in reset state? I think you wanted these
> reverted.

I imagine practical systems aren't using the inversion that gpiolib can
do via the bindings, this is already the case for the other drivers
sharing the binding.  TBH the use for things like reset lines has always
seemed like it causes more confusion and error than it solves.

--/Bt6tNOD8qhkOtxB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUpULAACgkQJNaLcl1U
h9D31wf+LSw0mI4Eah0LGJWQfl5PpXcpkbD6bVg/ql2yS7Exi2pm5cMxMf5Thmhw
7Js/Io7XmJ+vFRJsDXRuEWdoLwvhpR/Tnaokvf6XEyEh5FA/vbvkMQae1aA0s9xy
1muspCbfG18y4N+lkzSzBL34kfuMZvUimK8e8VxCQqUdQK9hwvPeEkcA+Ujij+Mn
yhjBAuyHcR7/Mz8SM9Y+CU0rmca4QEtZQfHZvU9jKoRnEYJvX9c1LVdGjXrABPIi
cTY7xj33xVXMn496S2fG1eBwZUm38r1FWKzLW4dT8Yv1ncwETMkTJPPgEATFqvEh
5kWjYdboiDHre3ELXVH43f/6tiRpfQ==
=POXu
-----END PGP SIGNATURE-----

--/Bt6tNOD8qhkOtxB--

