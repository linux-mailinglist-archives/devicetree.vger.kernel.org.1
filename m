Return-Path: <devicetree+bounces-15990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 096337EC68D
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 16:02:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6FC56B20A6C
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 15:02:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BE4F28E2A;
	Wed, 15 Nov 2023 15:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srOc4P2L"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F201C33CD8
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 15:02:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09DD0C433C7;
	Wed, 15 Nov 2023 15:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700060545;
	bh=1uBxQWcMUMhx7JwMi2EAENFmweyIXNrXqQTDSAkq8nU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=srOc4P2LWfKIwfv3lfqYZiy95RzCY0dyWse6TKe7qf+1CFAXQ4diGZ8GNMoksbLex
	 Fc7IpHozB6Yg8emHwCVl32wXEf4eZItb0SbtMTSOp+NQu8GGeFM4/4sLUCMWH7K7KZ
	 MH3m6a5ki5p0RTcZ9cwNX9b7V+MNhd73uy/fpwiDTGybt/g9glJ8oG6PC52xGG8bma
	 SGMCUoM0jD9hhG7DW34+WkgBcHGMEaZSEkoNkc/H1z+P255AgsNUqKZslSWIDYx5xa
	 kvoSo+fPvAL0FoRQtzE7YR8y+AdFLi5ANZn+N0pJUljM5R29QuN9lXaRiXeMrPtLYz
	 ogcNOzJJmIL8w==
Date: Wed, 15 Nov 2023 15:02:21 +0000
From: Conor Dooley <conor@kernel.org>
To: Samuel Holland <samuel.holland@sifive.com>
Cc: Jisheng Zhang <jszhang@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: reset: Add binding for Sophgo CV1800B
 reset controller
Message-ID: <20231115-upward-unsworn-7746e0aeb5dd@squawk>
References: <20231113005503.2423-1-jszhang@kernel.org>
 <20231113005503.2423-2-jszhang@kernel.org>
 <44f21244-5bf1-4e0f-80a9-6ec76d65eea4@linaro.org>
 <ZVTHMsXaPdHiuUOF@xhacker>
 <80e28d77-4a0e-4827-91c0-951094176bbd@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sQsiKWp4mGkRvLKL"
Content-Disposition: inline
In-Reply-To: <80e28d77-4a0e-4827-91c0-951094176bbd@sifive.com>


--sQsiKWp4mGkRvLKL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 15, 2023 at 09:56:07AM -0500, Samuel Holland wrote:
> On 2023-11-15 7:27 AM, Jisheng Zhang wrote:
> > On Tue, Nov 14, 2023 at 10:12:35PM +0100, Krzysztof Kozlowski wrote:
> >> On 13/11/2023 01:55, Jisheng Zhang wrote:
> >> ...
> >>
> >>> diff --git a/include/dt-bindings/reset/sophgo,cv1800b-reset.h b/inclu=
de/dt-bindings/reset/sophgo,cv1800b-reset.h
> >>> new file mode 100644
> >>> index 000000000000..28dda71369b4
> >>> --- /dev/null
> >>> +++ b/include/dt-bindings/reset/sophgo,cv1800b-reset.h
> >>> @@ -0,0 +1,96 @@
> >>> +/* SPDX-License-Identifier: GPL-2.0 OR MIT */
> >>> +/*
> >>> + * Copyright (C) 2023 Sophgo Technology Inc. All rights reserved.
> >>> + * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
> >>> + */
> >>> +
> >>> +#ifndef _DT_BINDINGS_CV1800B_RESET_H
> >>> +#define _DT_BINDINGS_CV1800B_RESET_H
> >>> +
> >>> +/*				0-1	*/
> >>> +#define RST_DDR			2
> >>> +#define RST_H264C		3
> >>> +#define RST_JPEG		4
> >>> +#define RST_H265C		5
> >>> +#define RST_VIPSYS		6
> >>> +#define RST_TDMA		7
> >>> +#define RST_TPU			8
> >>> +#define RST_TPUSYS		9
> >>> +/*				10	*/
> >>
> >> Why do you have empty IDs? IDs start at 0 and are incremented by 1.
> >=20
> > there's 1:1 mapping between the ID and bit. Some bits are reserved, I.E
> > no actions at all. Is "ID start at 0 and increment by 1" documented
> > in some docs? From another side, I also notice some SoCs especially
> > those which make use of reset-simple driver don't strictly follow
> > this rule, for example, amlogic,meson-a1-reset.h and so on. What
> > happened?
> >=20
> > And I'd like to ask a question here before cooking 2nd version:
> > if the HW programming logic is the same as reset-simple, but some
> > or many bits are reserved, what's the can-be-accepted way to support
> > the reset controller? Use reset-simple? Obviously if we want the
> > "ID start at 0 and increment by 1" rule, then we have to write
> > a custom driver which almost use the reset-simple but with a
> > customized mapping.
>=20
> There are two possible situations. Either the reset specifier maps direct=
ly to
> something in the hardware, or you are inventing some brand new enumeratio=
n to
> use as a specifier.
>=20
> In the first situation, you do not need a header. We assume the user will=
 look
> to the SoC documentation if they want to know what the numbers mean. (You=
 aren't
> _creating_ an ABI, since the ABI is already defined by the hardware.)
>=20
> In the second situation, since we are inventing something new, the numbers
> should be contiguous. This is what Krzysztof's comment was about.
>=20
> For this reset device, the numbers are hardware bit offsets, so you are i=
n the
> first situation. So I think the recommended solution here is to remove the
> header entirely and use the bit numbers directly in the SoC devicetree.
>=20
> It's still appropriate to use reset-simple. Adding some new mapping would=
 make
> things more complicated for no benefit.

Further, I think it is fine in that case to have a header, just the
header doesn't belong as a binding, and can instead go in the dts
directory.

--sQsiKWp4mGkRvLKL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVTdegAKCRB4tDGHoIJi
0r6fAQCPXMjSpES01q/k2sT0z3umMcWMIpUKT/3X4UCvd/SghQD/aYjlcWbc34J9
1xUWupmleFR685Yebdp5rF6SeyZccAI=
=siUt
-----END PGP SIGNATURE-----

--sQsiKWp4mGkRvLKL--

