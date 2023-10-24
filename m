Return-Path: <devicetree+bounces-11260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DBFE7D4FB8
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 14:28:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7C8CB1C20B1A
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 12:28:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D1FC26E3D;
	Tue, 24 Oct 2023 12:28:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWHLdykI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28479748C
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 12:28:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 575E7C433C7;
	Tue, 24 Oct 2023 12:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698150522;
	bh=tuVRiGfQiWnM8E4jicwfik1xeBx/YMhxgZb/0MG2F4g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UWHLdykI0TYkRuv6Nspi+eoG1Ivf+2eKMvv2aHJ/3Jo30KcRddOiMAiVlRzG6+ygY
	 Uyr45a5l18MsV0KP9gEtiyRSdyCR9vguEzyjDILw8CvyGtsRkacg4TtQO65sjS26zC
	 kDIw5VTQEc7QZXgBVvur0LvFobYhyDuL1zjzTnW+50hp8LFUySFpztjP8SSADPx87U
	 CyY8I7gm7NiDqYChSRPsqTMY9Z1rBIq5rt2zKDUti9l6ZCxG/Bot7EloKKxUJrrivk
	 B8ycJVueAQqLCIGenpU95Cju5jNvGTBFiL+UZ/aXhpKTdOtenw/cqSRkQIBQ9XGoSr
	 lfydOIulMKjbg==
Date: Tue, 24 Oct 2023 13:28:33 +0100
From: Mark Brown <broonie@kernel.org>
To: wangweidong.a@awinic.com
Cc: 13916275206@139.com, ajye_huang@compal.corp-partner.google.com,
	alsa-devel@alsa-project.org, arnd@arndb.de,
	ckeepax@opensource.cirrus.com, colin.i.king@gmail.com,
	conor+dt@kernel.org, dan.carpenter@linaro.org,
	devicetree@vger.kernel.org, harshit.m.mogalapalli@oracle.com,
	herve.codina@bootlin.com, krzysztof.kozlowski+dt@linaro.org,
	lgirdwood@gmail.com, linus.walleij@linaro.org,
	linux-kernel@vger.kernel.org, liweilei@awinic.com, perex@perex.cz,
	rf@opensource.cirrus.com, robh+dt@kernel.org, ryans.lee@analog.com,
	sebastian.reichel@collabora.com, shumingf@realtek.com,
	tiwai@suse.com, trix@redhat.com, yijiangtao@awinic.com
Subject: Re: [PATCH V2 0/4] ASoC: codecs: Add aw88399 amplifier driver
Message-ID: <7fc2d20d-935f-4721-9731-5719f27de5eb@sirena.org.uk>
References: <21bfa0bb-d936-402d-9ca9-6bcf181a0f35@sirena.org.uk>
 <20231024071419.85647-1-wangweidong.a@awinic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qQX9jpEgbcrPJR92"
Content-Disposition: inline
In-Reply-To: <20231024071419.85647-1-wangweidong.a@awinic.com>
X-Cookie: 1 bulls, 3 cows.


--qQX9jpEgbcrPJR92
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 24, 2023 at 03:14:15PM +0800, wangweidong.a@awinic.com wrote:
> From: Weidong Wang <wangweidong.a@awinic.com>
>=20
> Add the awinic,aw88399 property to the awinic,aw88395.yaml file.
>=20
> Add i2c and amplifier registration for
> aw88399 and their associated operation functions.

This *still* doesn't apply against my current for-next (or for-6.7)
branch, and you've resent it as another v2.  Please send something based
against for-6.7 of my sound tree.

--qQX9jpEgbcrPJR92
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmU3uHEACgkQJNaLcl1U
h9A92wf8CuLMWbP/AW27kNDmBWdIufdL3rInw6tXVuVaKQDuc1WEQc438WdrNbCn
FCrOE2X0714a6ZE6I4qe+ffBJgZVsOyFqYr0glcH+/BJmhq1a4fMZ0Ox4cX8WtJL
sBRrfI8vxohBLqhmZiuHBYf1gW/idYHqwejeno+8ywrboZ26P3krM8d+bozyIQaO
tjsLl+X9JvQ+t2BBz15S8Fg7sm3tWb9Jfrsgeeiardf0gywyyM9pfolXNJ+LCINP
HOwP09yGF+/yY/z+3eyhq7R/0VZLE1UB03JbeH4tCiubtuJ6QrCFbCARXe6Eca9o
IKMUZtmzjGXZ5UFdTGva/qUCjVBH9w==
=jGdD
-----END PGP SIGNATURE-----

--qQX9jpEgbcrPJR92--

