Return-Path: <devicetree+bounces-16278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E9B7EE2E8
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 15:34:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C1D3F1F272E4
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 14:34:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CCDD30F9B;
	Thu, 16 Nov 2023 14:34:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+cMhHyn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB8A328C9
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 14:34:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CF14C433C8;
	Thu, 16 Nov 2023 14:34:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700145243;
	bh=FiM5uoBP4dPLMB8pp4YAe7ANs6BDZ5GS+5pPKeBh66g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B+cMhHynOBWDxN7MDjAB6t4bYMechNEoM4SnXHn3Z/93Jf0IThJwuyJ/YJ9yjP5HX
	 0l4CMw/zHNYifJ39j4Y//zETebY0hgdpLKxukD0dCZ0jftD3gYG2j6amc7EQBQB+zk
	 nKkWVHB4ncjS71GvL0gte0cNnY8yESiiqTQPOzuqXwHkMfrCD40q7DEMxKLiC07S6f
	 ulvILHl+g601D7tUNCtK3gMSfTfmF0X76uiqdrAsxkcrfJRKZtjq+Fnq0mK1sjDP8x
	 UTHOU2jywHheXAnlZnFGdWFMUWUH+rmrS9wwVQYzY0WJQSOVtA7SvBQH8+oyFBF2mR
	 j5OXv+qT6szkw==
Date: Thu, 16 Nov 2023 14:34:00 +0000
From: Conor Dooley <conor@kernel.org>
To: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org, leyfoon.tan@starfivetech.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	mark.rutland@arm.com, peterz@infradead.org, robh+dt@kernel.org,
	tglx@linutronix.de, will@kernel.org
Subject: Re: [PATCH v3 2/2] dt-bindings: perf: starfive: Add StarLink PMU
Message-ID: <20231116-penalize-turbojet-bf8ea2a9a2ad@squawk>
References: <20231115-landing-earflap-ed11982ac610@squawk>
 <20231116021035.4043907-1-jisheng.teoh@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vZUGkCs0d2KdwaC/"
Content-Disposition: inline
In-Reply-To: <20231116021035.4043907-1-jisheng.teoh@starfivetech.com>


--vZUGkCs0d2KdwaC/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 16, 2023 at 10:10:35AM +0800, Ji Sheng Teoh wrote:
> On Wed, 15 Nov 2023 20:03:53 +0000
> Conor Dooley <conor@kernel.org> wrote:
> > On Wed, Nov 15, 2023 at 11:36:08AM +0800, Ji Sheng Teoh wrote:
> > > Add device tree binding for StarFive's StarLink PMU (Performance
> > > Monitor Unit).
> > >=20
> > > Signed-off-by: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
> > > ---
> > >  .../bindings/perf/starfive,starlink-pmu.yaml  | 46
> > > +++++++++++++++++++ 1 file changed, 46 insertions(+)
> > >  create mode 100644
> > > Documentation/devicetree/bindings/perf/starfive,starlink-pmu.yaml
> > >=20
> > > diff --git
> > > a/Documentation/devicetree/bindings/perf/starfive,starlink-pmu.yaml
> > > b/Documentation/devicetree/bindings/perf/starfive,starlink-pmu.yaml
> > > new file mode 100644 index 000000000000..a9426a7faeae --- /dev/null
> > > +++
> > > b/Documentation/devicetree/bindings/perf/starfive,starlink-pmu.yaml
> > > =20
> >=20
> > btw, since you changed the compatible, the filename should have been
> > changed to match it.
>=20
> The intention to keep the filename generic is to allow addition of new
> version of StarLink PMU in future if any, similar to what arm,cmn.yaml
> is doing. Hope that makes sense.

No, please keep the filename matching the compatible. Even if the
filename contains "500", there's nothing stopping you from then adding
other pmu variants. There are many many examples of this in the tree.

> > > @@ -0,0 +1,46 @@
> > > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/perf/starfive,starlink-pmu.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: StarFive StarLink PMU
> > > +
> > > +maintainers:
> > > +  - Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
> > > +
> > > +description:
> > > +  StarFive's StarLink PMU integrates one or more CPU cores with a
> > > shared L3
> > > +  memory system. The PMU support overflow interrupt, up to 16
> > > programmable
> > > +  64bit event counters, and an independent 64bit cycle counter.
> > > +  StarLink PMU is accessed via MMIO.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: starfive,starlink-500-pmu =20
> >=20
> > So this is not what I had in mind by a "device". I was looking for a
> > compatible representing an soc in which this IP had been integrated.
> > A soc-specific compatible, rather than something generic, is
> > requirement for devicetree - we don't want various integrations of
> > this IP to all be using a generic compatible when there may be subtle
> > (or less subtle) differences between integrations.
> >=20
> > I'm trying to come up with the syntax for enforcing having two
> > compatibles with your current one as the fallback, but I have yet to
> > come up with the correct syntax for that that works correctly.
> >=20
> > Hopefully by the time you get some feedback on the driver side of this
> > submission I will have a concrete suggestion for what to do here.
>=20
> Thanks Conor for the enlightenment. In the meantime, to fit the requireme=
nt
> I would suggest going for "starfive,jh8100-starlink-pmu", making it JH8100
> SOC specific if that makes sense.

Okay, you could definitely do that!

Cheers,
Conor.

--vZUGkCs0d2KdwaC/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVYoVgAKCRB4tDGHoIJi
0jrqAP9DgqOaWCgCUMw/6lyacLL6RmvNrLfL+z/IOcfGcjzDmQEA4+no0sYz9JiW
dJwGk8nkps3Om/UUGm1tlKn4TdWBbgc=
=BTKI
-----END PGP SIGNATURE-----

--vZUGkCs0d2KdwaC/--

