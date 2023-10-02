Return-Path: <devicetree+bounces-5086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 304F27B52BF
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 14:11:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id D794C283E18
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 12:11:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82E8815EBB;
	Mon,  2 Oct 2023 12:11:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7209D15EA6
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 12:11:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99EC2C433C7;
	Mon,  2 Oct 2023 12:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696248685;
	bh=xzFeW3pPDzT2xIba8bCh5rsBV+Lctflw0Tb347eHVco=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VAAMF77CSZ8zwlWvhXP27KLdxzDnIVh8IlcwMgGerC3ryuvIDXa4QOqQPbQ7CxThc
	 IItzNuWyU1eSRRbY4AkgYcpWtu/hUfddBTyn6OHD8KfR8twts19NCI4ngpIzpPtf0s
	 MPGRcOPXczLSLjxdWU0Bfh+tEKiDOGQwx2qhDQ06Z2y0LtNAxSbc5FndvhpKnF8WGm
	 Ag03SZQUGYHmNktxJQrbTy2czINs8uWtwwZyQfpuh+gA+JCp+dv1jy5DmhPLKQumLr
	 +p6g3S2zokIJdJRzUVtU0X/OojOx2YFp/pWYkNGM1dFS8ZOdgzr7DOlk28IqtkujIq
	 Kg06xZhArdpkA==
Date: Mon, 2 Oct 2023 13:11:20 +0100
From: Conor Dooley <conor@kernel.org>
To: Inochi Amaoto <inochiama@outlook.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Jisheng Zhang <jszhang@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Anup Patel <anup@brainfault.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	chao.wei@sophgo.com, xiaoguang.xing@sophgo.com
Subject: Re: [PATCH 4/5] riscv: dts: sophgo: add initial CV1800B SoC device
 tree
Message-ID: <20231002-crux-drained-448f49cf6b7d@spud>
References: <IA1PR20MB4953D58BA3ECFD487918E3A4BBC6A@IA1PR20MB4953.namprd20.prod.outlook.com>
 <IA1PR20MB4953967F34C7C48C74313B74BBC6A@IA1PR20MB4953.namprd20.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="FyNWdJyZjS0Y1L+C"
Content-Disposition: inline
In-Reply-To: <IA1PR20MB4953967F34C7C48C74313B74BBC6A@IA1PR20MB4953.namprd20.prod.outlook.com>


--FyNWdJyZjS0Y1L+C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 01, 2023 at 08:22:04PM +0800, Inochi Amaoto wrote:
> >
> >>On Sun, Oct 01, 2023 at 06:34:21AM +0800, Inochi Amaoto wrote:
> >>> Hi, Jisheng
> >>
> >>>> Add initial device tree for the CV1800B RISC-V SoC by SOPHGO.
> >>
> >>>
> >>> You add the clint dt-bindings of CV1800B clint, but I don't see the c=
lint
> >>> node in this dt. The SBI needs this clint node to provide timer for l=
inux.
> >>> AFAIK, the dt of SBI comes from the linux or the bootloader, and boot=
loader
> >>> may load the linux dt and pass it to the SBI. I think it is better to=
 add
> >>> the clint node.
> >>
> >>> In addition, please separate the peripheral node to a different file,=
 which
> >>> can be reused by both the CV1800 series and CV1810 series.
> >>
> >>How do these SoCs differ?
> >
> >AFAIK, the most peripheral of CV1800 and CV1810 are the same. there are
> >only a few difference between CV1800 and CV1810:
> >1. CV1810 have mmc interrupt, but CV1800 have none
> >2. CV1810 have more RAM and a more powerful TPU.
> >3. Some models of CV1810 support I2S.
> >
> >Also is some you have already mentioned, the video capabilities (includi=
ng
> >encoding, output steam number, input steam number) are different.
> >
> >The only board with a CV1800 soc is Huashan Pi (CV1812H).
> >
>=20
> A mistake, I mean CV1810 soc, not the CV1800 one.
>=20
> >>Documentation seems rather lacking, but I was able to find something on
> >>github that suggests there is also a cv180zb. The difference between the
> >>three seems to, from a quick look, be their video encoding capabilities.
> >>Is that correct?
> >>
> >
> >Yes. it is correct.
> >It seems like you have forgot a chip called CV1801B, which has 128MB
> >RAM. But I see no board with this soc, so at now it is not necessary to
> >care it.

FWIW, I do not mind if the properties are left inside a CV1800B specific
file, and moved out at a later date if/when someone actually upstreams
support for a board with that SoC.

--FyNWdJyZjS0Y1L+C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRqzaAAKCRB4tDGHoIJi
0sxWAQCql3VtfCEXULtNAc+z3zZNdJZhrkP04sdnpjovRzaDNAD/dsALTQv/EuU2
mQX4mkdJhdPw0TAr6R8LaQ8C66GfsAQ=
=NoLa
-----END PGP SIGNATURE-----

--FyNWdJyZjS0Y1L+C--

