Return-Path: <devicetree+bounces-3345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA6A7AE718
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 09:47:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 701FB1C20756
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 07:47:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED93C107B5;
	Tue, 26 Sep 2023 07:47:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8346D38
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 07:47:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C91C3C433C7;
	Tue, 26 Sep 2023 07:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695714455;
	bh=vl35SqT6As6GYRAB1JyOE9/QeFzf9D4iT44T99JNDlI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JjUhAaaoMDko8sv9+IFAdtVK2RNanulH1ZWFUiB1DPHQE7cHVcsGafcs8JEz0Vsaw
	 mS9dPobqyU+cvTEo1zmOaQ/21D5jUVnWXrgkQkd3M+qYg/8kfRi7p6lHnMEgPMrk+h
	 D8lCCVtAczUF7D03AL5w34mfyQd0S5MSrI/6FefEn5G5o+JBHOQCqlVMc7BE67xyQg
	 BqUksUX/eKNggweBScJtbTmo0lKvSq25NB/NLy70aSszQAox93L8xic42RY01Nj4LE
	 152ryVriErwTu1sUfFrFk6XPN+sIY2Ez54b1ppXxdguEyE7bxlzVgLE5724i75oLKp
	 lsXcr6Pq1b6JA==
Date: Tue, 26 Sep 2023 09:47:32 +0200
From: Mark Brown <broonie@kernel.org>
To: wangweidong.a@awinic.com
Cc: 13916275206@139.com, alsa-devel@alsa-project.org, arnd@arndb.de,
	ckeepax@opensource.cirrus.com, colin.i.king@gmail.com,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	harshit.m.mogalapalli@oracle.com, herve.codina@bootlin.com,
	krzysztof.kozlowski+dt@linaro.org, lgirdwood@gmail.com,
	linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
	liweilei@awinic.com, perex@perex.cz, povik+lin@cutebit.org,
	rf@opensource.cirrus.com, robh+dt@kernel.org, ryans.lee@analog.com,
	shumingf@realtek.com, tiwai@suse.com, trix@redhat.com,
	u.kleine-koenig@pengutronix.de, yang.lee@linux.alibaba.com,
	yijiangtao@awinic.com
Subject: Re: [PATCH V4 4/7] ASoC: codecs: Add code for bin parsing compatible
 with aw87390
Message-ID: <ZRKMlCd+Ys5kGXVw@finisterre.sirena.org.uk>
References: <ZRGT2oLQaJBVVYFH@finisterre.sirena.org.uk>
 <20230926070436.486530-1-wangweidong.a@awinic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tZVZOycL8pVKc0vY"
Content-Disposition: inline
In-Reply-To: <20230926070436.486530-1-wangweidong.a@awinic.com>
X-Cookie: Save energy:  Drive a smaller shell.


--tZVZOycL8pVKc0vY
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 26, 2023 at 03:04:30PM +0800, wangweidong.a@awinic.com wrote:
> On Mon, Sep 25, 2023 at 16:06:18 +0200, broonie@kernel.org wrote:

> > /build/stage/linux/sound/soc/codecs/aw88395/aw88395.c:199:21: error: to=
o few arg
> > uments to function =E2=80=98aw88395_dev_get_prof_name=E2=80=99
> >  199 |         prof_name =3D aw88395_dev_get_prof_name(aw88395->aw_pa, =
count);
> >      |                     ^~~~~~~~~~~~~~~~~~~~~~~~~
> > In file included from /build/stage/linux/sound/soc/codecs/aw88395/aw883=
95.c:17:
> > /build/stage/linux/sound/soc/codecs/aw88395/aw88395_device.h:184:5: not=
e: declar
> > ed here
> >  184 | int aw88395_dev_get_prof_name(struct aw_device *aw_dev, int inde=
x, char=20
> > **prof_name);
> >      |     ^~~~~~~~~~~~~~~~~~~~~~~~~

> I did not get this error when compiling base on "2cf0f715623872823a72e451=
243bbf555d10d032"
> and the changes to this function are already in [patch V4 3/7]
> Can you tell me how to modify it?

Apply every patch in sequence and check that it builds individually,
including for configs like the x86 allmodconfig.  I don't specifically
know what the context was here, I'm just reporting the failure my CI
found.  If you're confident things are fixed then resend.

--tZVZOycL8pVKc0vY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUSjJQACgkQJNaLcl1U
h9AhNQf+PgXK+9hFtAV8TDEBHilOTUoirrT7GLRXtflsuD4DNlW9QYMd+UEt6YT5
lfNWJhq9hhwcgdAfc2L8n22a+WN+tt5iEv1r4V0lRXxhvoxuWiWoPcM4z+Udr5KG
Oj49aBdhZ0XMtu8z4YzhDJtra5cO19kvv+1t8zI+9XKYUSuUc4PrVDDWdCU1LSMm
8jnd/Q5ViOky26oktO/JMDD9rpIIE023Zwvyrz1/gadhZsodwUP0UUwXs+dR1KVF
3sLPU61KC9TVfPrtRESiFUn+rj6FW4qk6m6H/vFq83UksIBF3V2H1M5Nk9m/meyV
JY+hC93fqWPdqhpqPJSTC5loPpwfNw==
=5Afg
-----END PGP SIGNATURE-----

--tZVZOycL8pVKc0vY--

