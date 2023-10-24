Return-Path: <devicetree+bounces-11263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5347D500B
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 14:42:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BF60EB20C97
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 12:42:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08AFE26292;
	Tue, 24 Oct 2023 12:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jT/Q06gQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0A4514F82
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 12:42:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90AB4C433C8;
	Tue, 24 Oct 2023 12:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698151333;
	bh=5lr+pjwvp0zOcTeinONIaVGHup83Xhs/5KopjafIzWI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jT/Q06gQwMhmXpCagBElDNMA/5ot1BalmQiWLI6DB9ID59whjQKQaCKm1JrMAKVCB
	 oQh+TomXr/VvPjWIzDJZhOvHa8QvvmTDDf8SQOGnWhZMb+XuxoSWFxJzoYfPwt5LhJ
	 WiNGScv9mbRQnFgdDMQQDcsV8h3/l8iUsEQ1uo510OFScpZQrroRFfVYuM6KSFHRiX
	 qC5n7AQqQJQRn4VMAFumFtTqpmo9DH59WBImCUzPhYCD3F1OM5el7To6V8e6BOwU6e
	 4qAxsqJ9xFjY1eLZtMXHQc/tOXL0+Nfzh/gLMaaFazGfLjr6UdkeCjms+EKZv89Nqv
	 Sz3zpyz6vhWSw==
Date: Tue, 24 Oct 2023 13:42:02 +0100
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
Message-ID: <27dd3dfb-7a40-4e26-b8c2-e432c30a0eea@sirena.org.uk>
References: <21bfa0bb-d936-402d-9ca9-6bcf181a0f35@sirena.org.uk>
 <20231024071929.88898-1-wangweidong.a@awinic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pL7UoU2fS9tXvDvv"
Content-Disposition: inline
In-Reply-To: <20231024071929.88898-1-wangweidong.a@awinic.com>
X-Cookie: 1 bulls, 3 cows.


--pL7UoU2fS9tXvDvv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 24, 2023 at 03:19:28PM +0800, wangweidong.a@awinic.com wrote:

> I generated the patch based on the mainline branch,=20
> Why would there be a conflict? I know that I made a change to
> this file when I committed aw87390 and that=20
> the change was in the Linux-next branch, but the two=20
> changes are in different parts of the file.

I don't know off hand, I didn't check in detail.  It's possible someone
else sent a fix that's been applied and is causing the issue - if you
check out my branch and try to apply the patches hopefully you can
figure out what the problem was.

--pL7UoU2fS9tXvDvv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmU3u5kACgkQJNaLcl1U
h9Dr6Qf/fdkNinl8wVxXP3U0qwaV15ASSfA38GeqDIqp+FlZSN61aMRCAfgEvI0y
QiJ1yqwLMrQzbWZcss2SnDi3N0J7KAqe3DXDHyH5FGYDxgSpMegLxDojqD6ecoEV
vf25mLtwq6w7/2LHuoJqiPDeE+LARk28dFHrIeAiQAl0NDxBX+Q84heKKbTzf0iC
RxFTOfdtBPxGmm0pyA7bm647VGZ5cqC2Yres0FD+ES20QnEh0lRImX7PY8yCAvyu
ykm+apBEZeKrq27nTFpmG4tNSFh2tCmlPCVhM4O2kGflQ0YHQUa0S8HxrnKiXSRb
2A8LUloo0+K+kEFa6oTbzwdjhOjcGA==
=RVdx
-----END PGP SIGNATURE-----

--pL7UoU2fS9tXvDvv--

