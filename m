Return-Path: <devicetree+bounces-6694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9DE7BC794
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 14:37:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 835771C208C5
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 12:37:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F66EEEB6;
	Sat,  7 Oct 2023 12:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKLiB6j6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418AA273C8
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 12:36:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCAC8C433C7;
	Sat,  7 Oct 2023 12:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696682219;
	bh=wd3K4oxHlD/woVxzd2nYXKDZbLbHeSvR4ulHU8RrABg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EKLiB6j6LeN/5G7rq025d6MXeimCJ78gRoaXsUQ6ZM5jUfzApzdY+olS/bxvLo6Go
	 1xFMGcJ5/ijD1jmZdNCXV+acnA549eUzeSGwOgBxcl1SytX6Wiawv+GzzyweuOaz1q
	 G3CFbS+6Q29NuFCeZL3z0l4MS8MqULK8VFl470q5MibBHL6iRNR3+ZACKr18jh6V5s
	 u1Q5Pvcskcai2FE9nw+gyMDHaWIlJ9E2O1qLL1PiWnNsH2K5Em6qLKrBRCmPlQmVDe
	 p4u88jZNOXQfOJKAiQuxR7NMGEL2lmAX0TGxERtq+X63jYchFbReuwUJijAL+Y1N+e
	 Y5isgWmtwA/Pg==
Date: Sat, 7 Oct 2023 13:36:54 +0100
From: Conor Dooley <conor@kernel.org>
To: Chen Wang <unicorn_wang@outlook.com>
Cc: Chen Wang <unicornxw@gmail.com>, aou@eecs.berkeley.edu,
	chao.wei@sophgo.com, devicetree@vger.kernel.org, guoren@kernel.org,
	jszhang@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org,
	xiaoguang.xing@sophgo.com, apatel@ventanamicro.com
Subject: Re: [PATCH v5 00/10] Add Milk-V Pioneer RISC-V board support
Message-ID: <20231007-green-correct-11d08f650ddd@spud>
References: <cover.1696663037.git.unicorn_wang@outlook.com>
 <20231007-grasp-retake-0463858c13df@spud>
 <MA0P287MB0332F80102F534CBD7412ED3FEC8A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>
 <20231007-kennel-lustily-59b0a9867aaa@spud>
 <MA0P287MB03329460B9F3B79B1148A6FDFEC8A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Tf1cZ/0kl4RD2FsG"
Content-Disposition: inline
In-Reply-To: <MA0P287MB03329460B9F3B79B1148A6FDFEC8A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>


--Tf1cZ/0kl4RD2FsG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 07, 2023 at 08:25:55PM +0800, Chen Wang wrote:
> On 2023/10/7 19:04, Conor Dooley wrote:
> > On Sat, Oct 07, 2023 at 06:58:51PM +0800, Chen Wang wrote:
> > > On 2023/10/7 18:17, Conor Dooley wrote:
> > > > On Sat, Oct 07, 2023 at 03:52:04PM +0800, Chen Wang wrote:
> > > > > From: Chen Wang <unicorn_wang@outlook.com>

> > > > > Changes in v5:
> > > > >     The patch series is based on v6.6-rc1. You can simply review =
or test
> > > > >     the patches at the link [7].
> > > > >     - dts: changed plic to support external interrupt
> > > > >     - pickup improvements from Conor, details refer to [8].
> > > > Did you? I only see them partially picked up. I'll just replace pat=
ch 8
> > > > with the patch 8 from this series I think.
> > > Yes, only the patch 8 of this series(v5) is updated for plic node. Fo=
r other
> > > patches, I just cherry-picked them from previous "sophon" branch.
> > But added my signoff? I ended up seeing my signoff on the patch where I
> > disagreed with the commit message, which was confusing to me.
>=20
> Oh, I used to think I can keep the exising signoff and I didn't mean to a=
dd
> it.

I added mine when I applied the patches. It no longer makes sense when
you resent another version.

> Anyway, I agree your suggestion to create a new patch with only one
> change should be better, I will follow this in later work.

:)

> Regarding your changes on sg2042 series, I have acked in another email : =
https://lore.kernel.org/linux-riscv/MA0P287MB0332BA73D0135CC73CAEA16DFEC8A@=
MA0P287MB0332.INDP287.PROD.OUTLOOK.COM/.
> If anything else required, please feel free let me know.

An ack on Jisheng's series for the cv1800b would be nice.

--Tf1cZ/0kl4RD2FsG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSFQ5gAKCRB4tDGHoIJi
0pn8AP9lSD88TcKQzLgGJZ2jLjHvd4kbFCFoxErzLHVKHTarEwD8C/COpPh0Tv0y
BHrAiTYX9e+RiWYdxS+p74nRdO0/Fgk=
=8x9P
-----END PGP SIGNATURE-----

--Tf1cZ/0kl4RD2FsG--

