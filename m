Return-Path: <devicetree+bounces-10901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A5E7D3683
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 14:29:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93E4E2814D3
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 12:29:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D85BA18E16;
	Mon, 23 Oct 2023 12:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T95jzUUf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB97A3D74
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 12:29:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7B3DC433C7;
	Mon, 23 Oct 2023 12:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698064153;
	bh=9p0AntcfbOKVuz+XGkFoDt43sFlFjI4w0DiNbSxTxHo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T95jzUUffCVGKFhalCFOb3kmXNlmWGvOqolVd0L+7uAjMX0CXHdAeSg7iPHiQCv6b
	 XiDAsKRUp1fwZ9uurXiIFh14DPgoM9ht1G5am2BqVeNaki82nLZMdwttRex6D55zHX
	 1kQxMG7BgXkhZpipvIV8hKqTH/cm7rSPk78XmSFdcN5CRvxGyHwx+5L4a8JpjC/fYg
	 FCowMNLrp/S3jFHkEYZQwkbGo4WzfjimgX7w0ZLvfzmtgU3KulDSV4DnBdA7P7YSpi
	 6dF27XjIDcsKFfo/CSe3ubV0DR9UpwQV29kkO2nuw4vqcTr94MTVPP9dDkB1KP4KzT
	 LLFQ7E5MFjnPA==
Date: Mon, 23 Oct 2023 13:29:03 +0100
From: Mark Brown <broonie@kernel.org>
To: wangweidong.a@awinic.com
Cc: lgirdwood@gmail.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	perex@perex.cz, tiwai@suse.com, shumingf@realtek.com,
	rf@opensource.cirrus.com, herve.codina@bootlin.com,
	ckeepax@opensource.cirrus.com, 13916275206@139.com,
	ryans.lee@analog.com, linus.walleij@linaro.org,
	sebastian.reichel@collabora.com,
	ajye_huang@compal.corp-partner.google.com,
	harshit.m.mogalapalli@oracle.com, arnd@arndb.de,
	colin.i.king@gmail.com, dan.carpenter@linaro.org, trix@redhat.com,
	liweilei@awinic.com, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	yijiangtao@awinic.com
Subject: Re: [PATCH V2 3/4] ASoC: codecs: Add code for bin parsing compatible
 with aw88399
Message-ID: <21bfa0bb-d936-402d-9ca9-6bcf181a0f35@sirena.org.uk>
References: <20231020083426.302925-1-wangweidong.a@awinic.com>
 <20231020083426.302925-4-wangweidong.a@awinic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="epJqc3ICM0Spx94I"
Content-Disposition: inline
In-Reply-To: <20231020083426.302925-4-wangweidong.a@awinic.com>
X-Cookie: Disc space -- the final frontier!


--epJqc3ICM0Spx94I
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 20, 2023 at 04:34:25PM +0800, wangweidong.a@awinic.com wrote:
> From: Weidong Wang <wangweidong.a@awinic.com>
>=20
> Add aw88399 compatible code to the aw88395_lib.c file
> so that it can parse aw88399's bin file.

This doesn't apply against current code, please check and resend:

Applying: ASoC: codecs: Add code for bin parsing compatible with aw88399
Using index info to reconstruct a base tree...
M	sound/soc/codecs/aw88395/aw88395_lib.c
M	sound/soc/codecs/aw88395/aw88395_reg.h
Falling back to patching base and 3-way merge...
Auto-merging sound/soc/codecs/aw88395/aw88395_reg.h
Auto-merging sound/soc/codecs/aw88395/aw88395_lib.c


--epJqc3ICM0Spx94I
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmU2Zw4ACgkQJNaLcl1U
h9BRnQf/e8OI4BUyMbll1FxLsSxKd/uMEJW3/Q3iIKUHcY3Co+mV/dNXbJquzZxc
y5A628DP72PFoSSttDaeD+ryG7L+IVViXyr2qieCq134de1NapdIijs9D3h+hRqm
aQ1N+FeXiuXSIz6tVfHQz4gO+zSUZtKXJCxpCDMPzpOCVeULps1wtnjNBjiXa+AZ
OHnjTZxWN9uB4RvF8uQfZetE8IYKzdHnqb4KJqXzBjb6XE6aFBCFuGFuntsJw4bC
X/mex6L1MZj051V77HufhwgRv9NOZj2jLGdHws9Lj6efK63c1mGsYgXSXVFc+PBu
tOjCez7YLOQ1TCSgxDDjo+JAYkpbKw==
=eJ2K
-----END PGP SIGNATURE-----

--epJqc3ICM0Spx94I--

