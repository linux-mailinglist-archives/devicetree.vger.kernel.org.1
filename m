Return-Path: <devicetree+bounces-187923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE2AAE1CFB
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 16:02:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EEA031658D4
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 14:02:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97D7E28D8E9;
	Fri, 20 Jun 2025 14:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CF9SQL1E"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71FDD8632B
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 14:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750428169; cv=none; b=aABat7e+jboAsA2drZVS/HhesWe0sSYKGdwdI1cv/8LdG+esRtx/o7wJaHT74Wv3Czxfjm5HmgzTAO82u6XLyliRZGQ6rHiRH+NFEtb/U3Ha3J5vetcIc5On+YDrGkvvCX67wnpDK/tqxzyx4GhNy33tNBy0xPVMINn6UxNYEjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750428169; c=relaxed/simple;
	bh=XMngCYd2N7YglVDbPzJE8R/6rkZC43rcUXrzhSZidhI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kw9op3PN55oYvIooJcgNakcet7z2xHj7nBRYlQTZzVlU3o+EBlb7SG92GTV/jZRyVkhw3Biv6X85U9xS05IUNZ7gPIehOgyzPJJ15ptUYYeCcl+ORJoYBRToTgoEKN3Gf8THp6Npx0JL95Tg6/sAIDmJ2QmRugNX5/VSUjImiYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CF9SQL1E; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F9A6C4CEE3;
	Fri, 20 Jun 2025 14:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750428168;
	bh=XMngCYd2N7YglVDbPzJE8R/6rkZC43rcUXrzhSZidhI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CF9SQL1ER+NEouJtqiR1e7KeGyG3SCAV8OYEyx0fcQm4CvRtNcGswOvh3tv2UaqKv
	 hCWIuCucGmS/3lmFnCzA0GRcjn21veEF2xjVnfrAJttSGY+9mDZnC79WK3Rfmymw5x
	 gvMphmmppefEoE3F1Hmzq/yKHsTcAT2qMuqzs7sE2UsAO0ZYAAB9qFp9Mm3t2TB98D
	 bQViewbZuww6F1VyIW5QpCSQ4sjCn4ejjok5XmzZkqa4vmfmYrSiIcIlw0tuTmEVeH
	 p4ndqVS+/NCeJY48W1SzD7EztfILmVaROVp9XL0bxTsQTyTUVZ7ffcSzUPaNQBwyZl
	 6CJ6Um7Wuzz7Q==
Date: Fri, 20 Jun 2025 15:02:45 +0100
From: Conor Dooley <conor@kernel.org>
To: Shankari Anand <shankari.ak0208@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, matthew.gerlach@altera.com
Subject: Re: [PATCH v5] dt-bindings: memory-controllers: Convert Altera SDRAM
 EDAC .txt to YAML
Message-ID: <20250620-strife-remote-8e06430f4996@spud>
References: <20250620091429.388981-1-shankari.ak0208@gmail.com>
 <CAPRMd3kP3qE5jD93cB577UMfHwfZ4DM-mHrJFjDPB=5HWdvXbA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="RTmG0tc8VR59GRdx"
Content-Disposition: inline
In-Reply-To: <CAPRMd3kP3qE5jD93cB577UMfHwfZ4DM-mHrJFjDPB=5HWdvXbA@mail.gmail.com>


--RTmG0tc8VR59GRdx
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 20, 2025 at 02:55:16PM +0530, Shankari Anand wrote:
> Hi all,
>=20
> I wanted to follow up on an issue I=E2=80=99ve noticed with the patch I
> recently submitted.
>=20
> While the indentation appears correct in my local `.patch` file and
> IDE, it seems that the formatting doesn=E2=80=99t render correctly in the
> email view. I suspect this might be due to the way tabs or whitespace
> are handled when the patch is transmitted via email.
>=20
> I'm investigating my email configuration and environment to ensure
> this doesn=E2=80=99t happen again. I=E2=80=99ll make sure future submissi=
ons are
> double-checked and rendered correctly both locally and on-list.

Meh, it doesn't really matter if things don't render exactly as they
would in an editor on the list, I would not worry about it. The binding
seems to be correctly indented when the patch is applied and that's
what matters.

> On Fri, Jun 20, 2025 at 2:44=E2=80=AFPM Shankari Anand
> <shankari.ak0208@gmail.com> wrote:
> >
> > Convert the Altera SOCFPGA SDRAM EDAC devicetree binding from the
> > .txt format to a YAML schema.
> >
> > Added a 'reg' property as dt_binding_check flagged its absence.
> > The controller is memory-mapped; address is confirmed from Intel's manu=
al.
> >
> > Also added two strings: altr,sdram-edac-a10 and altr,sdram-edac-s10,
> > compatible with altr,sdram-edac but use two interrupts;
> > Schema enforces interrupt count per variant.
> >
> > Signed-off-by: Shankari Anand <shankari.ak0208@gmail.com>
> > ---
> > v4 -> v5: Updated commit message, fixed placement of reg, added allOf c=
ondition per variant, fixed example section, dropped description as specifi=
ed
> >
> > Reference for reg address - https://www.intel.com/content/www/us/en/pro=
grammable/hps/arria-10/hps.html#topic/sfo1429889205804.html ,
> > https://www.intel.com/content/www/us/en/programmable/hps/stratix-10/hps=
=2Ehtml#bal1505408006582.html
> > ---
> >
> >  .../arm/altera/socfpga-sdram-edac.txt         |  15 ---
> >  .../memory-controllers/altr,sdram-edac.yaml   | 104 ++++++++++++++++++
> >  2 files changed, 104 insertions(+), 15 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/arm/altera/socfpg=
a-sdram-edac.txt
> >  create mode 100644 Documentation/devicetree/bindings/memory-controller=
s/altr,sdram-edac.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/arm/altera/socfpga-sdram=
-edac.txt b/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac=
=2Etxt
> > deleted file mode 100644
> > index f5ad0ff69fae..000000000000
> > --- a/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.t=
xt
> > +++ /dev/null
> > @@ -1,15 +0,0 @@
> > -Altera SOCFPGA SDRAM Error Detection & Correction [EDAC]
> > -The EDAC accesses a range of registers in the SDRAM controller.
> > -
> > -Required properties:
> > -- compatible : should contain "altr,sdram-edac" or "altr,sdram-edac-a1=
0"
> > -- altr,sdr-syscon : phandle of the sdr module
> > -- interrupts : Should contain the SDRAM ECC IRQ in the
> > -       appropriate format for the IRQ controller.
> > -
> > -Example:
> > -       sdramedac {
> > -               compatible =3D "altr,sdram-edac";
> > -               altr,sdr-syscon =3D <&sdr>;
> > -               interrupts =3D <0 39 4>;
> > -       };
> > diff --git a/Documentation/devicetree/bindings/memory-controllers/altr,=
sdram-edac.yaml b/Documentation/devicetree/bindings/memory-controllers/altr=
,sdram-edac.yaml
> > new file mode 100644
> > index 000000000000..652289c2c2f4
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/memory-controllers/altr,sdram-e=
dac.yaml
> > @@ -0,0 +1,104 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/memory-controllers/altr,sdram-edac.=
yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Altera SoCFPGA SDRAM EDAC Controller
> > +
> > +maintainers:
> > +  - Matthew Gerlach <matthew.gerlach@altera.com>
> > +
> > +description: |
> > +  EDAC-compatible controller for SDRAM error detection and correction =
on
> > +  Altera (Intel) SoCFPGA platforms.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - altr,sdram-edac
> > +      - altr,sdram-edac-a10
> > +      - altr,sdram-edac-s10
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  altr,sdr-syscon:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description: Phandle to the SDRAM system controller (SDR) syscon n=
ode.
> > +
> > +  interrupts:
> > +    minItems: 1
> > +    maxItems: 2
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - altr,sdr-syscon
> > +  - interrupts
> > +
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - altr,sdram-edac-a10
> > +              - altr,sdram-edac-s10
> > +    then:
> > +      properties:
> > +        interrupts:
> > +          minItems: 2
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +
> > +    / {
> > +        model =3D "Example SoC with SDRAM EDAC";
> > +        compatible =3D "arm-soc";
> > +
> > +        #address-cells =3D <1>;
> > +        #size-cells =3D <1>;
> > +

> > +        intc: interrupt-controller@0 {
> > +            compatible =3D "arm,cortex-a9-gic";
> > +            interrupt-controller;
> > +            #interrupt-cells =3D <3>;
> > +            reg =3D <0x0 0x1000>, <0x1000 0x1000>; // Dummy
> > +        };
> > +
> > +        sdr: syscon@f8000000 {
> > +            compatible =3D "altr,sdr-ctl", "syscon";
> > +            reg =3D <0xf8000000 0x1000>; // Dummy
> > +        };

These dummy devices are not needed, nor are the fake model and
compatible above. The test scripts are able to tolerate there being
references missing, and it makes the examples clearer when they just
cover the node in question. I think you could deplete two of the
memory-controller nodes too, since all 3 are effectively the same.

Otherwise, this looks fine to me.

Cheers,
Conor.

> > +
> > +        memory-controller@f8004000 {
> > +            compatible =3D "altr,sdram-edac-a10";
> > +            reg =3D <0xf8004000 0x1000>;
> > +            altr,sdr-syscon =3D <&sdr>;
> > +            interrupt-parent =3D <&intc>;
> > +            interrupts =3D <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>,
> > +                         <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
> > +        };
> > +
> > +        memory-controller@f8011000 {
> > +            compatible =3D "altr,sdram-edac-s10";
> > +            reg =3D <0xf8011000 0x1000>;
> > +            altr,sdr-syscon =3D <&sdr>;
> > +            interrupt-parent =3D <&intc>;
> > +            interrupts =3D <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>,
> > +                         <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> > +        };
> > +
> > +        memory-controller@ffc25000 {
> > +            compatible =3D "altr,sdram-edac";
> > +            reg =3D <0xffc25000 0x1000>;
> > +            altr,sdr-syscon =3D <&sdr>;
> > +            interrupt-parent =3D <&intc>;
> > +            interrupts =3D <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
> > +        };
> > +    };
> > --
> > 2.34.1
> >

--RTmG0tc8VR59GRdx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaFVqBQAKCRB4tDGHoIJi
0v55AQDcdvy3Xv13z6mYQHFzStvwss3Cz33qBMqC5ygcxz7qNwD+I9CjBsOVr18c
Yi6bVJthEeZy2JvDQ4js3/uvvtzz9wU=
=+R6O
-----END PGP SIGNATURE-----

--RTmG0tc8VR59GRdx--

