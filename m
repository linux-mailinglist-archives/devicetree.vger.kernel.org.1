Return-Path: <devicetree+bounces-44280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BB685D58C
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 11:30:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7C9D51F23446
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 10:30:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 883403C00;
	Wed, 21 Feb 2024 10:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VcsKRm4x"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642721FDB
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 10:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708511448; cv=none; b=VuXy1lJXrl/OlbkWBIlieTS3iMpPyov6q6rnT/ASJV+Bi/gBCGY35dI4Rd02kk6X5msrguOmkl8I2QELcbPF002EpB8V0wfeEO7rLh8lLb5VnQ5RPSI5U2axUgYM0MHhAzP5lXuj/7Qe8fnwx+KWd4rLLfOBA0ccLgexsFFzfU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708511448; c=relaxed/simple;
	bh=J0YyaehfcrO54beByd/o2DbRGlOFbAcfP2y4HWHjhWc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rt2S+4FW0D2vCpDngPNWAUwcsHva/EbGuCdardpD3sImOOrajBBKfAlEqJ5b5qEWNsscuoSlKFtf/N01QXgcfoUAZyvw2WCLuf4P5JpilefBc7vJfOiR0zpsm1K5NiF3XIwkRoTe4Op0aX9+3sAgKcksdJuhvoimjxdAf23skwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcsKRm4x; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1EC7C433C7;
	Wed, 21 Feb 2024 10:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708511448;
	bh=J0YyaehfcrO54beByd/o2DbRGlOFbAcfP2y4HWHjhWc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VcsKRm4xkM2Mx5aufi1F0ZVSZPfJy0Rd7QF+feE8ZpthakQq6VBrym4bZFgId/j9H
	 CbWJzcu4TVBcKiBkhwFYjj59aGE0oSQmWCHJMsFwJdjTVipEX3LrO0eMZcpUaqxP2s
	 mqGVUk6WLDUOMbvDjpT91Rfxe0NX+WMmDkTqB+QBtG0IfLQi5yCCgfpkuFCVtfLlvh
	 hVTNZwz3t8x4tGPBvpuPzYMyoGMKhdDkbRmmk+4o1S5gGpQo7zGCg5e2ryWwzxbPrw
	 kU5Ru1EExQWRDRQzjaAPDdkPGPbVKPKzgji+DZogA6uwpmT29uMAUUrgLYZ1sl2zDh
	 SSiphSuJsnUKg==
Date: Wed, 21 Feb 2024 11:30:44 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, lorenzo.bianconi@redhat.com,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, nbd@nbd.name, john@phrozen.org,
	devicetree@vger.kernel.org, dd@embedd.com, catalin.marinas@arm.com,
	will@kernel.org, angelogioacchino.delregno@collabora.com
Subject: Re: [PATCH v2 2/4] arm64: dts: Add Airoha EN7581 SoC and EN7581
 Evaluation Board
Message-ID: <ZdXQ1OXjjyWOzSWD@lore-desk>
References: <cover.1708473083.git.lorenzo@kernel.org>
 <f59389838c741650f6ff05d984a9127545e4eb83.1708473083.git.lorenzo@kernel.org>
 <2e8e6a0a-44ce-45e4-8321-592f08852412@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FzQ0dmwhpInBsEzt"
Content-Disposition: inline
In-Reply-To: <2e8e6a0a-44ce-45e4-8321-592f08852412@linaro.org>


--FzQ0dmwhpInBsEzt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On 21/02/2024 01:04, Lorenzo Bianconi wrote:
> > From: Daniel Danzberger <dd@embedd.com>
> >=20
> > Introduce the Airoha EN7581 SoC's dtsi and the Airoha EN7581 Evaluation
> > Board's dts file, as well as the required Makefiles.
> >=20
> > Signed-off-by: Daniel Danzberger <dd@embedd.com>
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > ---
> >  arch/arm64/boot/dts/Makefile              |   1 +
> >  arch/arm64/boot/dts/airoha/Makefile       |   2 +
> >  arch/arm64/boot/dts/airoha/en7581-evb.dts |  27 +++++
> >  arch/arm64/boot/dts/airoha/en7581.dtsi    | 137 ++++++++++++++++++++++
> >  4 files changed, 167 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/airoha/Makefile
> >  create mode 100644 arch/arm64/boot/dts/airoha/en7581-evb.dts
> >  create mode 100644 arch/arm64/boot/dts/airoha/en7581.dtsi
> >=20
> > diff --git a/arch/arm64/boot/dts/Makefile b/arch/arm64/boot/dts/Makefile
> > index 30dd6347a929..21cd3a87f385 100644
> > --- a/arch/arm64/boot/dts/Makefile
> > +++ b/arch/arm64/boot/dts/Makefile
> > @@ -1,5 +1,6 @@
> >  # SPDX-License-Identifier: GPL-2.0
> >  subdir-y +=3D actions
> > +subdir-y +=3D airoha
> >  subdir-y +=3D allwinner
> >  subdir-y +=3D altera
> >  subdir-y +=3D amazon
> > diff --git a/arch/arm64/boot/dts/airoha/Makefile b/arch/arm64/boot/dts/=
airoha/Makefile
> > new file mode 100644
> > index 000000000000..ebea112ce1d7
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/airoha/Makefile
> > @@ -0,0 +1,2 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +dtb-$(CONFIG_ARCH_AIROHA) +=3D en7581-evb.dtb
> > diff --git a/arch/arm64/boot/dts/airoha/en7581-evb.dts b/arch/arm64/boo=
t/dts/airoha/en7581-evb.dts
> > new file mode 100644
> > index 000000000000..4eaa8ac431c3
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/airoha/en7581-evb.dts
> > @@ -0,0 +1,27 @@
> > +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +/dts-v1/;
> > +
> > +/* Bootloader installs ATF here */
> > +/memreserve/ 0x80000000 0x200000;
> > +
> > +#include "en7581.dtsi"
> > +
> > +/ {
> > +	model =3D "Airoha EN7581 Evaluation Board";
> > +	compatible =3D "airoha,en7581-evb", "airoha,en7581";
> > +
> > +	aliases {
> > +		serial0 =3D &uart1;
> > +	};
> > +
> > +	chosen {
> > +		bootargs =3D "console=3DttyS0,115200 earlycon";
>=20
> You have console below. You don't need earlycon for mainline, broad
> usage, because it is purely debugging part, so drop entire bootargs.

ack, I will fix it in v3.

>=20
> > +		stdout-path =3D "serial0:115200n8";
> > +		linux,usable-memory-range =3D <0x0 0x80200000 0x0 0x1fe00000>;
> > +	};
> > +
> > +	memory@80000000 {
> > +		device_type =3D "memory";
> > +		reg =3D <0x0 0x80000000 0x2 0x00000000>;
> > +	};
> > +};
> > diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/d=
ts/airoha/en7581.dtsi
> > new file mode 100644
> > index 000000000000..7a3c0a45c03f
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
> > @@ -0,0 +1,137 @@
> > +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +
> > +#include <dt-bindings/interrupt-controller/irq.h>
> > +#include <dt-bindings/interrupt-controller/arm-gic.h>
> > +
> > +/ {
> > +	interrupt-parent =3D <&gic>;
> > +	#address-cells =3D <2>;
> > +	#size-cells =3D <2>;
> > +
> > +	reserved-memory {
> > +		#address-cells =3D <2>;
> > +		#size-cells =3D <2>;
> > +		ranges;
> > +
> > +		npu_binary@84000000 {
>=20
> No underscores in nodenames.
> ...
>=20

ack, I will fix it in v3.

> > +
> > +		L2_0: l2-cache0 {
>=20
> Nodename: l2-cache
>=20

ack, I will fix it in v3.

> > +			compatible =3D "cache";
> > +			cache-level =3D <2>;
> > +			cache-unified;
> > +		};
> > +	};
> > +
> > +	gic: interrupt-controller@9000000 {
>=20
> Why this is outside of SoC? Where is your SoC node BTW?

ack, I will fix it in v3.

>=20
> It does not look like you tested the DTS against bindings. Please run
> `make dtbs_check W=3D1` (see
> Documentation/devicetree/bindings/writing-schema.rst or
> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sou=
rces-with-the-devicetree-schema/
> for instructions).
>=20
> > +		compatible =3D "arm,gic-v3";
> > +		interrupt-controller;
> > +		#interrupt-cells =3D <3>;
> > +		#address-cells =3D <1>;
> > +		#size-cells =3D <1>;
> > +		reg =3D <0x0 0x09000000 0x0 0x20000>,
> > +		      <0x0 0x09080000 0x0 0x80000>,
> > +		      <0x0 0x09400000 0x0 0x2000>,
> > +		      <0x0 0x09500000 0x0 0x2000>,
> > +		      <0x0 0x09600000 0x0 0x20000>;
> > +		interrupts =3D <GIC_PPI 9 IRQ_TYPE_LEVEL_LOW>;
> > +	};
> > +
> > +	timer {
> > +		compatible =3D "arm,armv8-timer";
> > +		interrupt-parent =3D <&gic>;
> > +		interrupts =3D <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
> > +			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
> > +			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
> > +			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
> > +	};
> > +
> > +	uart1: serial@1fbf0000 {
>=20
> This cannot be outside of SoC.

ack, I will fix it in v3.

>=20
> > +		compatible =3D "ns16550";
> > +		reg =3D <0x0 0x1fbf0000 0x0 0x30>;
> > +		reg-io-width =3D <4>;
> > +		reg-shift =3D <2>;
> > +		interrupts =3D <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
> > +		clock-frequency =3D <1843200>;
> > +		status =3D "okay";
>=20
> Drop

ack, I will fix it in v3.

Regards,
Lorenzo

>=20
>=20
> Best regards,
> Krzysztof
>=20

--FzQ0dmwhpInBsEzt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZdXQ1AAKCRA6cBh0uS2t
rPAkAP4hJvk3e9CcLRh0k7EQ3wYtxC0tQPvNyZ38OEbvMuwEGgD+Pkjls+MRmBxF
ShRkCKJR1T1jTNHXcpPLwYsmiWqUCQo=
=5KjC
-----END PGP SIGNATURE-----

--FzQ0dmwhpInBsEzt--

