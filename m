Return-Path: <devicetree+bounces-44447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC4585E4AB
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 18:36:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 871351F252D1
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 17:36:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4C2883CC2;
	Wed, 21 Feb 2024 17:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7AMAgbi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A16637FBD5
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 17:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708536983; cv=none; b=O0gq6xCT/nqrVZSqLnQ5+p0p0N5AsLzpV9ImzTy7rT8Y3ndw5lPR28t64QjhHI8HwcSOnK+ccn/vDQMD+9PzLGSdFXY7UatXpBK8YRJ/y1OTOuayW7p4LzM/KDA/5panI5o1U+IilNw5xb4CjGN7dWUK/XltExEHtvvvqXl5S4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708536983; c=relaxed/simple;
	bh=FBGqpKAA9DVgR/KsZ8XAxEsUtjWu73WE67lO3LqitDc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A9v8IpyjH/WWuu0aJpDaHJm+Q7ZEM73YjvnF6ltieOicOw4UwK9vUdEoARTXfueJV7eIJzvVlR4KOmS80ra7dtbTSlgLp1daXTDE8sfFCZWAFAnM7zsqTVyhiQr1yV0hC6Yz+S2kJoRbwTGYX4l72nFFQmLMqw4Dgntts8OejZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7AMAgbi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 982E7C43390;
	Wed, 21 Feb 2024 17:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708536983;
	bh=FBGqpKAA9DVgR/KsZ8XAxEsUtjWu73WE67lO3LqitDc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T7AMAgbi7tHInRDOxGiZRoHrGh/u6AXtjf8NsdlBn6ISIUdaHnB3dgeodWPKtFXGh
	 vv6ulfqLLGMhmAI4ced3e1GLKc1PWdytCidJsEFr/loKRMpGKuSMUMrKqmIyEl6jfj
	 4pLm/2ZimizHqevf580yZWtjv22y9WOJOzJ0rmCvnxKuminONWs6yPR86x9mjIiNCH
	 AaPKlccAW4n52S3EiZGO2J0dF4EGk8nIahATLimGkm6E0itbF0LBE5kgkVgqfg7Q9D
	 ks2uEqlghX6c7G+JgElksZmWCvoF5VGShMUCZUpCwDPziUieFel9wWDAKQ+d8VPRA7
	 NRctrqeFYkCwg==
Date: Wed, 21 Feb 2024 18:36:19 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org, lorenzo.bianconi@redhat.com,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, nbd@nbd.name, john@phrozen.org,
	devicetree@vger.kernel.org, dd@embedd.com, catalin.marinas@arm.com,
	will@kernel.org
Subject: Re: [PATCH v2 2/4] arm64: dts: Add Airoha EN7581 SoC and EN7581
 Evaluation Board
Message-ID: <ZdY0k9t7u6McEIMC@lore-desk>
References: <cover.1708473083.git.lorenzo@kernel.org>
 <f59389838c741650f6ff05d984a9127545e4eb83.1708473083.git.lorenzo@kernel.org>
 <7a623f15-02cc-4508-88e2-da12aaeee242@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DbQX4Mk9h2ElNWSu"
Content-Disposition: inline
In-Reply-To: <7a623f15-02cc-4508-88e2-da12aaeee242@collabora.com>


--DbQX4Mk9h2ElNWSu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> > From: Daniel Danzberger <dd@embedd.com>
> >=20
> > Introduce the Airoha EN7581 SoC's dtsi and the Airoha EN7581 Evaluation
> > Board's dts file, as well as the required Makefiles.
> >=20
> > Signed-off-by: Daniel Danzberger <dd@embedd.com>
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > ---
> >   arch/arm64/boot/dts/Makefile              |   1 +
> >   arch/arm64/boot/dts/airoha/Makefile       |   2 +
> >   arch/arm64/boot/dts/airoha/en7581-evb.dts |  27 +++++
> >   arch/arm64/boot/dts/airoha/en7581.dtsi    | 137 ++++++++++++++++++++++
> >   4 files changed, 167 insertions(+)
> >   create mode 100644 arch/arm64/boot/dts/airoha/Makefile
> >   create mode 100644 arch/arm64/boot/dts/airoha/en7581-evb.dts
> >   create mode 100644 arch/arm64/boot/dts/airoha/en7581.dtsi
> >=20
> > diff --git a/arch/arm64/boot/dts/Makefile b/arch/arm64/boot/dts/Makefile
> > index 30dd6347a929..21cd3a87f385 100644
> > --- a/arch/arm64/boot/dts/Makefile
> > +++ b/arch/arm64/boot/dts/Makefile
> > @@ -1,5 +1,6 @@
> >   # SPDX-License-Identifier: GPL-2.0
> >   subdir-y +=3D actions
> > +subdir-y +=3D airoha
> >   subdir-y +=3D allwinner
> >   subdir-y +=3D altera
> >   subdir-y +=3D amazon
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
> > +		stdout-path =3D "serial0:115200n8";
> > +		linux,usable-memory-range =3D <0x0 0x80200000 0x0 0x1fe00000>;
> > +	};
> > +
> > +	memory@80000000 {
> > +		device_type =3D "memory";
> > +		reg =3D <0x0 0x80000000 0x2 0x00000000>;
>=20
> Is your bootloader really not filling the size for the memory node?

is the size 0x200000000? Am I missing something?

>=20
> Can you please verify?
> If it doesn't, it's not a problem of course.
>=20
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
> npu-binary@...

ack, I will fix it.

>=20
> > +			no-map;
> > +			reg =3D <0x0 0x84000000 0x0 0xA00000>;
> > +		};
> > +
> > +		npu_flag@84B0000 {
> > +			no-map;
> > +			reg =3D <0x0 0x84B00000 0x0 0x100000>;
> > +		};
> > +
> > +		npu_pkt@85000000 {
> > +			no-map;
> > +			reg =3D <0x0 0x85000000 0x0 0x1A00000>;
> > +		};
> > +
> > +		npu_phyaddr@86B00000 {
> > +			no-map;
> > +			reg =3D <0x0 0x86B00000 0x0 0x100000>;
> > +		};
> > +
> > +		npu_rxdesc@86D00000 {
> > +			no-map;
> > +			reg =3D <0x0 0x86D00000 0x0 0x100000>;
> > +		};
> > +	};
> > +
> > +	psci {
> > +		compatible =3D "arm,psci-0.2";
>=20
> Not the first time I comment that (in general - not specifically to you):=
 are you
> sure that your platform supports PSCI v0.2 and not a later version?
>=20
> Please check your kernel log, you should see a message like
>=20
> [    0.000000] psci: PSCIv1.1 detected in firmware.
>=20
> (with the right version)
>=20
> ...then use the right compatible string :-)

ack, I will fix it.

>=20
> > +		method =3D "smc";
> > +	};
> > +
> > +	cpus {
> > +		#address-cells =3D <1>;
> > +		#size-cells =3D <0>;
> > +
> > +		cpu-map {
> > +			cluster0 {
> > +				core0 {
> > +					cpu =3D <&cpu0>;
> > +				};
> > +				core1 {
> > +					cpu =3D <&cpu1>;
> > +				};
>=20
> Your cluster contains only two cores, this means that the other two are i=
n a
> parallel reality? :-P :-P

I think this has been copied from vendor sdk. I will fix moving back 2 miss=
ing
cpu from the 'parallel reality' :)

>=20
> Jokes apart, this cpu-map looks wrong.
>=20
> Check what the topology is supposed to be for real, clusterized or DynamI=
Q?
> In the first case, you get X clusters with Y CPUs each - in the second ca=
se,
> you get *one* single cluster with all CPUs inside.

I think it is just a linear architecture, but I will check with airoha folk=
s.

>=20
> > +			};
> > +		};
> > +
> > +		cpu0: cpu@0 {
> > +			device_type =3D "cpu";
> > +			compatible =3D "arm,cortex-a53";
> > +			reg =3D <0x0>;
> > +			enable-method =3D "psci";
> > +			clock-frequency =3D <80000000>;
> > +			next-level-cache =3D <&L2_0>;
> > +		};
> > +
> > +		cpu1: cpu@1 {
> > +			device_type =3D "cpu";
> > +			compatible =3D "arm,cortex-a53";
> > +			reg =3D <0x1>;
> > +			enable-method =3D "psci";
> > +			clock-frequency =3D <80000000>;
> > +			next-level-cache =3D <&L2_0>;
> > +		};
> > +
> > +		cpu2: cpu@2 {
> > +			device_type =3D "cpu";
> > +			compatible =3D "arm,cortex-a53";
> > +			reg =3D <0x2>;
> > +			enable-method =3D "psci";
> > +			clock-frequency =3D <80000000>;
> > +			next-level-cache =3D <&L2_0>;
> > +		};
> > +
> > +		cpu3: cpu@3 {
> > +			device_type =3D "cpu";
> > +			compatible =3D "arm,cortex-a53";
> > +			reg =3D <0x3>;
> > +			enable-method =3D "psci";
> > +			clock-frequency =3D <80000000>;
> > +			next-level-cache =3D <&L2_0>;
> > +		};
> > +
> > +		L2_0: l2-cache0 {
> > +			compatible =3D "cache";
> > +			cache-level =3D <2>;
> > +			cache-unified;
>=20
> Do you know what is the l2 cache size, line size, sets?
> cache-size =3D < ... >
> cache-line-size =3D < ... >
> cache-sets =3D < ... >

not sure about them, I will sync with airoha folks.

>=20
> > +		};
> > +	};
> > +
>=20
> All iospace addressable nodes must go into a soc node, others go in the r=
oot node.

ack, I will fix it.

>=20
> soc {
> 	gic: interrupt-controller@9000000 {
> 		....
> 	}
>=20
> 	uart0: serial@ ....
>=20
> };
>=20
> > +	gic: interrupt-controller@9000000 {
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
> > +		compatible =3D "ns16550";
> > +		reg =3D <0x0 0x1fbf0000 0x0 0x30>;
> > +		reg-io-width =3D <4>;
> > +		reg-shift =3D <2>;
> > +		interrupts =3D <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
> > +		clock-frequency =3D <1843200>;
> > +		status =3D "okay";
>=20
> status is okay by default, you don't need that.

ack, I will fix it.

Regards,
Lorenzo

>=20
> > +	};
> > +};
>=20
> Cheers,
> Angelo

--DbQX4Mk9h2ElNWSu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZdY0kwAKCRA6cBh0uS2t
rCMxAP0Vrf4duE+eGDH0GsDTx4rWZXFzK1TJ8BFrmuUCIKjWUwEA3GAoLpHHiXxk
buYrGojqAuJHjbO9dZ5XIuiX8Nho7wE=
=ACqX
-----END PGP SIGNATURE-----

--DbQX4Mk9h2ElNWSu--

