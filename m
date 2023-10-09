Return-Path: <devicetree+bounces-7013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 953747BEA1A
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 20:51:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C46261C2098C
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 18:51:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D705B38DFC;
	Mon,  9 Oct 2023 18:51:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRF0Ttm8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA869FBE3
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 18:51:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32660C433CA;
	Mon,  9 Oct 2023 18:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696877465;
	bh=EWYoHUxU9PfwIcw6RRafcY/b9jcGCDKgwtSwZ93vXkk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TRF0Ttm8MJ0ovlRSLQWoooPhqsT+UAvgs1OOYowfWsb+HQKayDzkMSozkTrJldIA+
	 6bDX75HHnX6Tv7XDvSJxmv/d2Csx6YSHWU7b9AQV4JjRuNa+zNsIXEV2g+BhxAitg7
	 QCtH7GXLcozgItxfOnEUwUdUCjV8yFsv6L9qjvd187YXfEixVcGKGBHx4TV0Yv/Fh2
	 J8BdOK0pbJIfxECi9BLj9KueY8NlSYhJ6b4kecg8GzPjfA0wSGxNPlKUJ9nvFb/Xsm
	 VSAHOAj/da4x8EvrhWD6gcWglOBtkIpel9cd2+8omHCgi/lpYLQ37JiUO104Xh6Auy
	 Xb8DuPZBDAMKQ==
Date: Mon, 9 Oct 2023 19:50:59 +0100
From: Conor Dooley <conor@kernel.org>
To: Chen Wang <unicorn_wang@outlook.com>
Cc: Chen Wang <unicornxw@gmail.com>, aou@eecs.berkeley.edu,
	chao.wei@sophgo.com, devicetree@vger.kernel.org, guoren@kernel.org,
	jszhang@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org,
	xiaoguang.xing@sophgo.com, apatel@ventanamicro.com
Subject: Re: [PATCH v5 00/10] Add Milk-V Pioneer RISC-V board support
Message-ID: <20231009-pretext-snowy-1cfb49990ddb@spud>
References: <cover.1696663037.git.unicorn_wang@outlook.com>
 <20231007-grasp-retake-0463858c13df@spud>
 <MA0P287MB0332F80102F534CBD7412ED3FEC8A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>
 <20231007-kennel-lustily-59b0a9867aaa@spud>
 <MA0P287MB03329460B9F3B79B1148A6FDFEC8A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>
 <20231007-green-correct-11d08f650ddd@spud>
 <MA0P287MB0332B11A8481F491E4F0536DFEC8A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="LPpjd4457YnzLrjL"
Content-Disposition: inline
In-Reply-To: <MA0P287MB0332B11A8481F491E4F0536DFEC8A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>


--LPpjd4457YnzLrjL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 07, 2023 at 08:48:34PM +0800, Chen Wang wrote:
>=20
> On 2023/10/7 20:36, Conor Dooley wrote:
> > On Sat, Oct 07, 2023 at 08:25:55PM +0800, Chen Wang wrote:
> > > On 2023/10/7 19:04, Conor Dooley wrote:
> > > > On Sat, Oct 07, 2023 at 06:58:51PM +0800, Chen Wang wrote:
> > > > > On 2023/10/7 18:17, Conor Dooley wrote:
> > > > > > On Sat, Oct 07, 2023 at 03:52:04PM +0800, Chen Wang wrote:
> > > > > > > From: Chen Wang <unicorn_wang@outlook.com>
> > > > > > > Changes in v5:
> > > > > > >      The patch series is based on v6.6-rc1. You can simply re=
view or test
> > > > > > >      the patches at the link [7].
> > > > > > >      - dts: changed plic to support external interrupt
> > > > > > >      - pickup improvements from Conor, details refer to [8].
> > > > > > Did you? I only see them partially picked up. I'll just replace=
 patch 8
> > > > > > with the patch 8 from this series I think.
> > > > > Yes, only the patch 8 of this series(v5) is updated for plic node=
=2E For other
> > > > > patches, I just cherry-picked them from previous "sophon" branch.
> > > > But added my signoff? I ended up seeing my signoff on the patch whe=
re I
> > > > disagreed with the commit message, which was confusing to me.
> > > Oh, I used to think I can keep the exising signoff and I didn't mean =
to add
> > > it.
> > I added mine when I applied the patches. It no longer makes sense when
> > you resent another version.
> >=20
> > > Anyway, I agree your suggestion to create a new patch with only one
> > > change should be better, I will follow this in later work.
> > :)
> >=20
> > > Regarding your changes on sg2042 series, I have acked in another emai=
l : https://lore.kernel.org/linux-riscv/MA0P287MB0332BA73D0135CC73CAEA16DFE=
C8A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM/.
> > > If anything else required, please feel free let me know.
> > An ack on Jisheng's series for the cv1800b would be nice.
>=20
> Done, I have reviewed and acked all the files related to sophgo.

Cool. Both your and Jisheng's series should end up in linux-next
tomorrow, I've pushed both to the riscv-dt-for-next branch.

Thanks!

--LPpjd4457YnzLrjL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSRLkwAKCRB4tDGHoIJi
0rW9AQCgH7wH465HHkJZUgXkFxDSIGwT+zdKUMYezzCSJmzTiQD/RSTBvwNO9iLX
1JL/GhqiRgflLbNTazQ/f2/5CdoDRgA=
=mpd6
-----END PGP SIGNATURE-----

--LPpjd4457YnzLrjL--

