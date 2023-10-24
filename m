Return-Path: <devicetree+bounces-11322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0EE7D5365
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:57:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 814E8281712
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 13:57:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36F002B753;
	Tue, 24 Oct 2023 13:57:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5N1S6c9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9F8125DE
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 13:57:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6496CC433C8;
	Tue, 24 Oct 2023 13:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698155835;
	bh=Oyeshsu+3nlIQS5tap59rxnoqILKp80Kfvs4IZctQV8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d5N1S6c9YyOAV0iwXf6CX/0DsLAIne/tc7jISV3tbnn1Xg7BKibB8yah3532yZbYl
	 LVP0884kUs5wV3VpfhmAE57jaykHRCLfmidjdDvu3S00VmJcymG2h5PECNrCeEgBCK
	 t6KUcPYoTGAEr+x2l988NFVZ7HYVwsV6u76zjcG+AHDaO7HEJSjkd8JiBpNuN+nd3L
	 9C6tsjtwpz4kP9yTUbjOS4qq7qzJ2maIYOpxkLyUn9NYAptAXWbegzRggyfpUO+6AN
	 Pd/uEzLHSH3PO5D4tQmkyYYP68Bf/jsAFTOGiQrPKhUZz86hJAivWJMc9aq5qHWV53
	 k2OzL9x53xXQQ==
Date: Tue, 24 Oct 2023 14:57:03 +0100
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
Subject: Re: [PATCH V2 3/4] ASoC: codecs: Add code for bin parsing compatible
 with aw88399
Message-ID: <06c14b04-28df-4374-80e3-91e40bc53a84@sirena.org.uk>
References: <21bfa0bb-d936-402d-9ca9-6bcf181a0f35@sirena.org.uk>
 <20231024071929.88898-1-wangweidong.a@awinic.com>
 <27dd3dfb-7a40-4e26-b8c2-e432c30a0eea@sirena.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8pwjO5vU2sNKk1cW"
Content-Disposition: inline
In-Reply-To: <27dd3dfb-7a40-4e26-b8c2-e432c30a0eea@sirena.org.uk>
X-Cookie: 1 bulls, 3 cows.


--8pwjO5vU2sNKk1cW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 24, 2023 at 01:42:13PM +0100, Mark Brown wrote:
> On Tue, Oct 24, 2023 at 03:19:28PM +0800, wangweidong.a@awinic.com wrote:
>=20
> > I generated the patch based on the mainline branch,=20
> > Why would there be a conflict? I know that I made a change to
> > this file when I committed aw87390 and that=20
> > the change was in the Linux-next branch, but the two=20
> > changes are in different parts of the file.
>=20
> I don't know off hand, I didn't check in detail.  It's possible someone
> else sent a fix that's been applied and is causing the issue - if you
> check out my branch and try to apply the patches hopefully you can
> figure out what the problem was.

diff --cc sound/soc/codecs/aw88395/aw88395_lib.c
index a0a429ca9768,bc72a7487048..000000000000
--- a/sound/soc/codecs/aw88395/aw88395_lib.c
+++ b/sound/soc/codecs/aw88395/aw88395_lib.c
@@@ -705,7 -703,8 +705,12 @@@ static int aw_dev_load_cfg_by_hdr(struc
 =20
  	switch (aw_dev->chip_id) {
  	case AW88395_CHIP_ID:
++<<<<<<< HEAD
 +		ret =3D aw88395_dev_cfg_get_valid_prof(aw_dev, all_prof_info);
++=3D=3D=3D=3D=3D=3D=3D
+ 	case AW88399_CHIP_ID:
+ 		ret =3D aw88395_dev_cfg_get_valid_prof(aw_dev, *all_prof_info);
++>>>>>>> ASoC: codecs: Add code for bin parsing compatible with aw88399
  		if (ret < 0)
  			goto exit;
  		break;

--8pwjO5vU2sNKk1cW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmU3zS4ACgkQJNaLcl1U
h9C84wf6A8/ybskNPO37rh5jdOHSRnk16Rpxur8QRnJuK/ZiwFJ5FNqhiV4xzTPQ
Smyf3ybs1qAdjjoOU9s5uE7t12mM1WToJKbLTh6zTK7C2spMskJ6kOE6504rIPsO
ENa1bBT0j82fhcr/5HlE0mEV+vC/OkO6QweaT49fKNZZvSeWBpWoarb1uek8BMQV
9tHl/F6wv69njL9oOpQebGK3Gi5HtU1B1RTou/5uYVjvS04z1tvsxhAxc50r9VsH
Czq/YM2o88Mu1CDZhFDdZLWpk+AZ9VoeywXrHs3K1VAmH2ybtf1v3TcW+kl1eLDE
sa2vbi1HvYROcxJqiCVJTOSMHL1g4A==
=gAPs
-----END PGP SIGNATURE-----

--8pwjO5vU2sNKk1cW--

