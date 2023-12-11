Return-Path: <devicetree+bounces-24007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F144880D44F
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 18:43:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A6B7F1F219E0
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 17:43:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B9A34E62A;
	Mon, 11 Dec 2023 17:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBRGtPT1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7BE4E61B
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 17:43:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92B47C433C7;
	Mon, 11 Dec 2023 17:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702316603;
	bh=Xrsi+3PuSnsXMklZ6G2qnpKJr2/IDaNfFsWL8VpO5f8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FBRGtPT1QpzPrQqn9ZWXvcuicsRwZrKH77dTgVAvpBpN800WmF6F/a0YLfAo1tM18
	 jmPxjw7FybqnMY3ndobGNTDGZk9mpztbBWbcqscQuuiHVkNQSXnCOuajtRgxpo5fnk
	 Qn6I6mujyhKaDRCpZZb60scTr3l/gu2fCXKHCTYNsF5cF0We5DFgfJSfeZPNOxxUPm
	 wccJl+Y2tOJmckw26GAH7eJhhiZB58WjBngmy4X4IkcOzBGdXYWT8MW2EPexqCnznY
	 wAYRK69areNhIN9DAvtG8qNcqJKG07M4cHKGqTGHfR4Zh/xXXtl0uqg4hZUCVtKoyf
	 4jL0V4DHIMObw==
Date: Mon, 11 Dec 2023 17:43:17 +0000
From: Conor Dooley <conor@kernel.org>
To: JeeHeng Sia <jeeheng.sia@starfivetech.com>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Shengyu Qu <wiagn233@outlook.com>,
	"kernel@esmil.dk" <kernel@esmil.dk>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"krzk@kernel.org" <krzk@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
	"palmer@dabbelt.com" <palmer@dabbelt.com>,
	"aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
	"daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
	"tglx@linutronix.de" <tglx@linutronix.de>,
	"anup@brainfault.org" <anup@brainfault.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"jirislaby@kernel.org" <jirislaby@kernel.org>,
	"michal.simek@amd.com" <michal.simek@amd.com>,
	Michael Zhu <michael.zhu@starfivetech.com>,
	"drew@beagleboard.org" <drew@beagleboard.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>
Subject: Re: [PATCH v3 6/6] riscv: dts: starfive: Add initial StarFive JH8100
 device tree
Message-ID: <20231211-vacant-tracing-0f5bfc3b23fd@spud>
References: <20231201121410.95298-1-jeeheng.sia@starfivetech.com>
 <20231201121410.95298-7-jeeheng.sia@starfivetech.com>
 <TY3P286MB2611F70A3D61788E556C8A30988AA@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
 <358bcdb3f0ab4a7b9d6bbe17ca1a696d@EXMBX066.cuchost.com>
 <20231211-submerge-vegan-244889f1751c@wendy>
 <b3690246eb1e48428238ceb26b046297@EXMBX066.cuchost.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="XS9oPw+vMXVv7R2u"
Content-Disposition: inline
In-Reply-To: <b3690246eb1e48428238ceb26b046297@EXMBX066.cuchost.com>


--XS9oPw+vMXVv7R2u
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 11, 2023 at 09:38:03AM +0000, JeeHeng Sia wrote:
>=20
>=20
> > -----Original Message-----
> > From: Conor Dooley <conor.dooley@microchip.com>
> > Sent: Monday, December 11, 2023 3:59 PM
> > To: JeeHeng Sia <jeeheng.sia@starfivetech.com>
> > Cc: Shengyu Qu <wiagn233@outlook.com>; kernel@esmil.dk; robh+dt@kernel.=
org; krzysztof.kozlowski+dt@linaro.org;
> > krzk@kernel.org; conor+dt@kernel.org; paul.walmsley@sifive.com; palmer@=
dabbelt.com; aou@eecs.berkeley.edu;
> > daniel.lezcano@linaro.org; tglx@linutronix.de; conor@kernel.org; anup@b=
rainfault.org; gregkh@linuxfoundation.org;
> > jirislaby@kernel.org; michal.simek@amd.com; Michael Zhu <michael.zhu@st=
arfivetech.com>; drew@beagleboard.org;
> > devicetree@vger.kernel.org; linux-riscv@lists.infradead.org; linux-kern=
el@vger.kernel.org; Leyfoon Tan
> > <leyfoon.tan@starfivetech.com>
> > Subject: Re: [PATCH v3 6/6] riscv: dts: starfive: Add initial StarFive =
JH8100 device tree
> >=20
> > On Mon, Dec 11, 2023 at 01:38:06AM +0000, JeeHeng Sia wrote:
> > >
> > > > From: Shengyu Qu <wiagn233@outlook.com>
> > > > Sent: Friday, December 8, 2023 8:09 PM
> >=20
> > > > Does the dubhe-80 cores actually support vector? Or vector support
> > > >
> > > > doesn't exist on actual silicon?
> >=20
> > > We don't have a use case for vector application in JH8100
> >=20
> > I am sorry, but I am not clear on what this means. Do the CPUs on
> > the JH8100 support vector or not?
> The JH8100 CPU does not support vector operation.

Thanks for clarifiying.

--XS9oPw+vMXVv7R2u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZXdKNQAKCRB4tDGHoIJi
0rZPAQCEsghqtswjmJygCWPmWVFvcHsL1UQuaSfdgVrpv2pGKwD+KS8NbHc9i8YD
aj/NuPnffcLulHXB2Efddk4kEgoIdQE=
=tBgs
-----END PGP SIGNATURE-----

--XS9oPw+vMXVv7R2u--

