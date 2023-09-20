Return-Path: <devicetree+bounces-1833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 974867A8869
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:31:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 542FE2829CA
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:31:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D1EB3C685;
	Wed, 20 Sep 2023 15:31:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B78229A1
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 15:31:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A284EC433C8;
	Wed, 20 Sep 2023 15:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695223904;
	bh=vDRC+pMd+istEzU3u9J+6oRj4LV4EU2Hsm2Q37r1+P0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XO1/tCZUlwCBIbs5u4A1SCtenBzkBrRpVAG6ciDLezz+sC9kS9AbSzaocGwlkjrBY
	 4rm6+nlC66Qe2H+5R9CvP6p5xzNMizWfig65dnrmSNHfASwkrnr4j/bggBQs8G0N89
	 CjGHKAdfXPMo4jRALmPujyADPdi7/YADRQ1XGVpHUJXZAAVcZ/3tyUHsFkD4ieZuDD
	 rFKOVJm0tO8zCn1hZDV6b8JrUZOdtAxh1gDwlbUXKHJ+M6lZdLSi9OZNZfyoCLBgZb
	 2QTwxYrl0oyiiGYUcN9KwuQo6KFm/s2zzYakos3Cvl2YMW2sp3owiNtTcigDwdWPq9
	 cQis8vO6XPLCQ==
Date: Wed, 20 Sep 2023 16:31:38 +0100
From: Conor Dooley <conor@kernel.org>
To: Palmer Dabbelt <palmer@dabbelt.com>
Cc: unicornxw@gmail.com, aou@eecs.berkeley.edu, chao.wei@sophgo.com,
	devicetree@vger.kernel.org, emil.renner.berthing@canonical.com,
	guoren@kernel.org, jszhang@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Paul Walmsley <paul.walmsley@sifive.com>, robh+dt@kernel.org,
	xiaoguang.xing@sophgo.com, wangchen20@iscas.ac.cn,
	inochiama@outlook.com
Subject: Re: [PATCH v2 09/11] riscv: dts: add initial SOPHGO SG2042 SoC
 device tree
Message-ID: <20230920-e8d6af9c0c652631412606ab@fedora>
References: <ffe6a61a8879232aea7b86ff8aee5d681c6bd287.1695189879.git.wangchen20@iscas.ac.cn>
 <mhng-09373969-fd57-4fa2-b0fa-470004f6e17c@palmer-ri-x1c9a>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iKhkmUT5MoZnUM4l"
Content-Disposition: inline
In-Reply-To: <mhng-09373969-fd57-4fa2-b0fa-470004f6e17c@palmer-ri-x1c9a>


--iKhkmUT5MoZnUM4l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 20, 2023 at 08:19:59AM -0700, Palmer Dabbelt wrote:
> On Tue, 19 Sep 2023 23:40:32 PDT (-0700), unicornxw@gmail.com wrote:
> > Milk-V Pioneer motherboard is powered by SOPHON's SG2042.
> >=20
> > SG2042 is server grade chip with high performance, low power
> > consumption and high data throughput.
> > Key features:
> > - 64 RISC-V cpu cores which implements IMAFDC
> > - 4 cores per cluster, 16 clusters on chip
> > - ......
> >=20
> > More info is available at [1].
> >=20
> > [1]: https://en.sophgo.com/product/introduce/sg2042.html
> >=20
> > Currently only support booting into console with only uart,
> > other features will be added soon later.
> >=20
> > Acked-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> > Signed-off-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> > Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
> > Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> > Signed-off-by: Chen Wang <wangchen20@iscas.ac.cn>
> > ---
> >  arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi | 1744 +++++++++++++++++++
> >  arch/riscv/boot/dts/sophgo/sg2042.dtsi      |  439 +++++
> >  2 files changed, 2183 insertions(+)
> >  create mode 100644 arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi
> >  create mode 100644 arch/riscv/boot/dts/sophgo/sg2042.dtsi
>=20
> Just an FYI: a handful of replies to this are getting blocked by the lists
> as they end up being too big.  I just went and allowed what was there, but
> future replies will probably require someone to be away as well and thus
> might be slow.

95% of this patch is the same, if people that reply are good citizens
& trim, it'll not be too bad. btw, if you want, you can add me as
someone that can click the "not spam" button.

--iKhkmUT5MoZnUM4l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQsQVwAKCRB4tDGHoIJi
0uOsAQCyjy3WsBTXoTMVD+ypX+oNG+eBikmo/bWRi0/v9v+GLwD/VfFHnfj9JoEz
O1i5OsFBctQObbyWHyhshnVjKOXjSQQ=
=nmgF
-----END PGP SIGNATURE-----

--iKhkmUT5MoZnUM4l--

