Return-Path: <devicetree+bounces-187924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1208FAE1D03
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 16:05:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A136E166606
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 14:05:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4710B28B7C5;
	Fri, 20 Jun 2025 14:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bssfq8D4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227F222338
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 14:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750428323; cv=none; b=fYkKDvqUAWtXb4ZzBEp11C9raZckKj90/NhC3IJChRzYUKjUm0hOMrgWwbz5cFIWA+Q8GQKLPyUKx2pYKr/GQ1EYFQA+OescGOFeaAvoJkTDt5ox577PtXpwqEIPlLfLaF7TLXVdUgWQDsS6cFuuWRNFEv3WuYsz/gIHDjHOMwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750428323; c=relaxed/simple;
	bh=Uf6rfL1uDGzNrAzdHU3kE8AMoUYoLL2L+9Dfg0d75aA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NWE5RckQN7h/f02IVyZRML2kVC8iHTtFWpr1nL66zPxbsLq2B2YmBIZ+tz/8k/PHE6w+o456UZtE+67IB/SbsKZyFFOHAMvdMBvmeyX3p5CPOiQnuQa5CyXOVLLl13efrr8ytMAYfjqrfVNDzWCIvKXMyRT3TH5m4ChWzccGM5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bssfq8D4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6356CC4CEE3;
	Fri, 20 Jun 2025 14:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750428322;
	bh=Uf6rfL1uDGzNrAzdHU3kE8AMoUYoLL2L+9Dfg0d75aA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bssfq8D43sR98Xef7d1MFYeweyjsL3RR0u5bN0HQsmbjDAaFlkkpT+dpbHyRO31AK
	 FRDI4iiwoERGcnQyTJ4CkqgdncwbRu5GQWAGsxM2zJGoRQXZ15eKL1oNTiwgq8imFj
	 Q31lWdFRbrAhFVIKkE6H+7nTp7EZyi0TNc3/rb5JjVMH5vDgO/1ujRW8xoAdav2txe
	 KgIRe8X5yEmPmk1GkO/EQOR7h6ckDj/A1KGbKrjlvyccTeQmpjQx7AbO0TMQXLAoWg
	 iY0LDATGaQOPii2uuqKuVkvrQflj5X946iyz/R2r4G4j26oh1TqzwkF7tYY0cZpmxo
	 D9UPA4KvfBWyA==
Date: Fri, 20 Jun 2025 15:05:19 +0100
From: Conor Dooley <conor@kernel.org>
To: Shankari Anand <shankari.ak0208@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, matthew.gerlach@altera.com
Subject: Re: [PATCH v5] dt-bindings: memory-controllers: Convert Altera SDRAM
 EDAC .txt to YAML
Message-ID: <20250620-festive-paying-0548686615a6@spud>
References: <20250620091429.388981-1-shankari.ak0208@gmail.com>
 <CAPRMd3kP3qE5jD93cB577UMfHwfZ4DM-mHrJFjDPB=5HWdvXbA@mail.gmail.com>
 <20250620-strife-remote-8e06430f4996@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9xmztguADnXKKPM3"
Content-Disposition: inline
In-Reply-To: <20250620-strife-remote-8e06430f4996@spud>


--9xmztguADnXKKPM3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 20, 2025 at 03:02:45PM +0100, Conor Dooley wrote:
> On Fri, Jun 20, 2025 at 02:55:16PM +0530, Shankari Anand wrote:
> > Hi all,
> >=20
> > I wanted to follow up on an issue I=E2=80=99ve noticed with the patch I
> > recently submitted.
> >=20
> > While the indentation appears correct in my local `.patch` file and
> > IDE, it seems that the formatting doesn=E2=80=99t render correctly in t=
he
> > email view. I suspect this might be due to the way tabs or whitespace
> > are handled when the patch is transmitted via email.
> >=20
> > I'm investigating my email configuration and environment to ensure
> > this doesn=E2=80=99t happen again. I=E2=80=99ll make sure future submis=
sions are
> > double-checked and rendered correctly both locally and on-list.
>=20
> Meh, it doesn't really matter if things don't render exactly as they
> would in an editor on the list, I would not worry about it. The binding
> seems to be correctly indented when the patch is applied and that's
> what matters.
>=20
> > On Fri, Jun 20, 2025 at 2:44=E2=80=AFPM Shankari Anand
> > <shankari.ak0208@gmail.com> wrote:
> > >
> > > Convert the Altera SOCFPGA SDRAM EDAC devicetree binding from the
> > > .txt format to a YAML schema.
> > >
> > > Added a 'reg' property as dt_binding_check flagged its absence.
> > > The controller is memory-mapped; address is confirmed from Intel's ma=
nual.
> > >
> > > Also added two strings: altr,sdram-edac-a10 and altr,sdram-edac-s10,
> > > compatible with altr,sdram-edac but use two interrupts;
> > > Schema enforces interrupt count per variant.
> > >
> > > Signed-off-by: Shankari Anand <shankari.ak0208@gmail.com>
> > > ---
> > > v4 -> v5: Updated commit message, fixed placement of reg, added allOf=
 condition per variant, fixed example section, dropped description as speci=
fied
> > >
> > > Reference for reg address - https://www.intel.com/content/www/us/en/p=
rogrammable/hps/arria-10/hps.html#topic/sfo1429889205804.html ,
> > > https://www.intel.com/content/www/us/en/programmable/hps/stratix-10/h=
ps.html#bal1505408006582.html
> > > ---
> > >
> > >  .../arm/altera/socfpga-sdram-edac.txt         |  15 ---
> > >  .../memory-controllers/altr,sdram-edac.yaml   | 104 ++++++++++++++++=
++
> > >  2 files changed, 104 insertions(+), 15 deletions(-)
> > >  delete mode 100644 Documentation/devicetree/bindings/arm/altera/socf=
pga-sdram-edac.txt
> > >  create mode 100644 Documentation/devicetree/bindings/memory-controll=
ers/altr,sdram-edac.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/arm/altera/socfpga-sdr=
am-edac.txt b/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-ed=
ac.txt
> > > deleted file mode 100644
> > > index f5ad0ff69fae..000000000000
> > > --- a/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac=
=2Etxt
> > > +++ /dev/null
> > > @@ -1,15 +0,0 @@
> > > -Altera SOCFPGA SDRAM Error Detection & Correction [EDAC]
> > > -The EDAC accesses a range of registers in the SDRAM controller.
> > > -
> > > -Required properties:
> > > -- compatible : should contain "altr,sdram-edac" or "altr,sdram-edac-=
a10"
> > > -- altr,sdr-syscon : phandle of the sdr module
> > > -- interrupts : Should contain the SDRAM ECC IRQ in the
> > > -       appropriate format for the IRQ controller.
> > > -
> > > -Example:
> > > -       sdramedac {
> > > -               compatible =3D "altr,sdram-edac";
> > > -               altr,sdr-syscon =3D <&sdr>;
> > > -               interrupts =3D <0 39 4>;
> > > -       };
> > > diff --git a/Documentation/devicetree/bindings/memory-controllers/alt=
r,sdram-edac.yaml b/Documentation/devicetree/bindings/memory-controllers/al=
tr,sdram-edac.yaml
> > > new file mode 100644
> > > index 000000000000..652289c2c2f4
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/memory-controllers/altr,sdram=
-edac.yaml
> > > @@ -0,0 +1,104 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/memory-controllers/altr,sdram-eda=
c.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Altera SoCFPGA SDRAM EDAC Controller
> > > +
> > > +maintainers:
> > > +  - Matthew Gerlach <matthew.gerlach@altera.com>
> > > +
> > > +description: |
> > > +  EDAC-compatible controller for SDRAM error detection and correctio=
n on
> > > +  Altera (Intel) SoCFPGA platforms.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - altr,sdram-edac
> > > +      - altr,sdram-edac-a10
> > > +      - altr,sdram-edac-s10
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  altr,sdr-syscon:
> > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > +    description: Phandle to the SDRAM system controller (SDR) syscon=
 node.
> > > +
> > > +  interrupts:
> > > +    minItems: 1
> > > +    maxItems: 2
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - altr,sdr-syscon
> > > +  - interrupts
> > > +
> > > +allOf:
> > > +  - if:
> > > +      properties:
> > > +        compatible:
> > > +          contains:
> > > +            enum:
> > > +              - altr,sdram-edac-a10
> > > +              - altr,sdram-edac-s10
> > > +    then:
> > > +      properties:
> > > +        interrupts:
> > > +          minItems: 2
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > > +    #include <dt-bindings/interrupt-controller/irq.h>
> > > +
> > > +    / {
> > > +        model =3D "Example SoC with SDRAM EDAC";
> > > +        compatible =3D "arm-soc";
> > > +
> > > +        #address-cells =3D <1>;
> > > +        #size-cells =3D <1>;
> > > +
>=20
> > > +        intc: interrupt-controller@0 {
> > > +            compatible =3D "arm,cortex-a9-gic";
> > > +            interrupt-controller;
> > > +            #interrupt-cells =3D <3>;
> > > +            reg =3D <0x0 0x1000>, <0x1000 0x1000>; // Dummy
> > > +        };
> > > +
> > > +        sdr: syscon@f8000000 {
> > > +            compatible =3D "altr,sdr-ctl", "syscon";
> > > +            reg =3D <0xf8000000 0x1000>; // Dummy
> > > +        };
>=20
> These dummy devices are not needed, nor are the fake model and
> compatible above. The test scripts are able to tolerate there being
> references missing, and it makes the examples clearer when they just
> cover the node in question. I think you could deplete two of the
> memory-controller nodes too, since all 3 are effectively the same.

In fact, using "arm-soc" actually causes problems, as that's not a real
compatible. Additionally, making the reg property mandatory causes
warnings in the altr,socfpga-ecc-manager binding because there's no reg
property in the example there. Can you take care of that please?

>=20
> Otherwise, this looks fine to me.
>=20
> Cheers,
> Conor.
>=20
> > > +
> > > +        memory-controller@f8004000 {
> > > +            compatible =3D "altr,sdram-edac-a10";
> > > +            reg =3D <0xf8004000 0x1000>;
> > > +            altr,sdr-syscon =3D <&sdr>;
> > > +            interrupt-parent =3D <&intc>;
> > > +            interrupts =3D <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>,
> > > +                         <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
> > > +        };
> > > +
> > > +        memory-controller@f8011000 {
> > > +            compatible =3D "altr,sdram-edac-s10";
> > > +            reg =3D <0xf8011000 0x1000>;
> > > +            altr,sdr-syscon =3D <&sdr>;
> > > +            interrupt-parent =3D <&intc>;
> > > +            interrupts =3D <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>,
> > > +                         <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> > > +        };
> > > +
> > > +        memory-controller@ffc25000 {
> > > +            compatible =3D "altr,sdram-edac";
> > > +            reg =3D <0xffc25000 0x1000>;
> > > +            altr,sdr-syscon =3D <&sdr>;
> > > +            interrupt-parent =3D <&intc>;
> > > +            interrupts =3D <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
> > > +        };
> > > +    };
> > > --
> > > 2.34.1
> > >



--9xmztguADnXKKPM3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaFVqnwAKCRB4tDGHoIJi
0hvVAQCuFy53jEQJtsOEr7Vh+A+iVOWV5j/4JC1Ta62jqzOsowEA08jG7YA7JQ21
eD20zvyRaVRhYh68VeMtivnYJnqxswo=
=ONlK
-----END PGP SIGNATURE-----

--9xmztguADnXKKPM3--

