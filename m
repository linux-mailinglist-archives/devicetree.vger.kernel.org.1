Return-Path: <devicetree+bounces-11790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1987D69D0
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 13:14:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 20A32281B8B
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 11:14:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFB0D15ACD;
	Wed, 25 Oct 2023 11:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFD2526E19
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 11:14:23 +0000 (UTC)
Received: from hsmtpd-def.xspmail.jp (hsmtpd-def.xspmail.jp [202.238.198.239])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 651A9116
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 04:14:21 -0700 (PDT)
X-Country-Code: JP
Received: from sakura.ysato.name (ik1-413-38519.vs.sakura.ne.jp [153.127.30.23])
	by hsmtpd-out-1.asahinet.cluster.xspmail.jp (Halon) with ESMTPA
	id b1cd8028-9ac6-4269-a2f9-017e88e9cc99;
	Wed, 25 Oct 2023 20:14:19 +0900 (JST)
Received: from SIOS1075.ysato.ml (al128006.dynamic.ppp.asahi-net.or.jp [111.234.128.6])
	by sakura.ysato.name (Postfix) with ESMTPSA id 417691C0037;
	Wed, 25 Oct 2023 20:14:18 +0900 (JST)
Date: Wed, 25 Oct 2023 20:14:17 +0900
Message-ID: <87ttqf6jjq.wl-ysato@users.sourceforge.jp>
From: Yoshinori Sato <ysato@users.sourceforge.jp>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: linux-sh@vger.kernel.org,
	glaubitz@physik.fu-berlin.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [RFC PATCH v3 25/35] Documentation/devicetree/bindings/sh/cpus.yaml: Add SH CPU.
In-Reply-To: <CAMuHMdU5brBPGuCaMra6pS4MRFvBFQ5vF9tEFVre=-032xuuMg@mail.gmail.com>
References: <cover.1697199949.git.ysato@users.sourceforge.jp>
	<46ef748dd27127ef9b39fa6c97fe51e8d3422a4f.1697199949.git.ysato@users.sourceforge.jp>
	<CAMuHMdU5brBPGuCaMra6pS4MRFvBFQ5vF9tEFVre=-032xuuMg@mail.gmail.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.2 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 18 Oct 2023 23:27:43 +0900,
Geert Uytterhoeven wrote:
>=20
> Hi Sato-san,
>=20
> On Sat, Oct 14, 2023 at 4:54=E2=80=AFPM Yoshinori Sato
> <ysato@users.sourceforge.jp> wrote:
> > Renesas SuperH binding definition.
> >
> > Signed-off-by: Yoshinori Sato <ysato@users.sourceforge.jp>
>=20
> Thanks for your patch!
>=20
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/sh/cpus.yaml
> > @@ -0,0 +1,45 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/sh/cpus.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Renesas SuperH CPUs
> > +
> > +maintainers:
> > +  - Yoshinori Sato <ysato@users.sourceforge.jp>
> > +
> > +description: |+
> > +  The device tree allows to describe the layout of CPUs in a system th=
rough
> > +  the "cpus" node, which in turn contains a number of subnodes (ie "cp=
u")
> > +  defining properties for every cpu.
> > +
> > +  Bindings for CPU nodes follow the Devicetree Specification, availabl=
e from:
> > +
> > +  https://www.devicetree.org/specifications/
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - enum:
>=20
> Missing
>=20
>     - jcore,j2
>=20
> > +          - renesas,sh4
>=20
>=20
> > +      - const: renesas,sh
>=20
> I see arch/sh/boot/dts/j2_mimas_v2.dts lacks the fallback to
> "renesas,sh", though.
> Is there a common base of instructions that are available on all SH cores?

The base instruction set is sh2.
Before that, there is sh1, but this is not compatible with Linux.
I think it would be a good idea to change this to "renesas,sh2",
but the SH7619 (SH2 CPU) would look like the following.
cpus {
	cpu: cpu@0 {
        	compatible =3D "renesas,sh2", "renesas,sh2";
        };
};

> Missing reg property.
> Missing "device_type: true".
>=20
> > +
> > +  clock-frequency:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description: |
> > +      CPU core clock freqency.
>=20
> Perhaps a "clocks" property instead, or as an alternative?
>=20
> On sh7750, you do have
>=20
>     clocks =3D <&cpg SH7750_CPG_ICK>;
>=20
> > +
> > +required:
> > +  - compatible
> > +
> > +additionalProperties: true
> > +
> > +examples:
> > +  - |
> > +        cpus {
>=20
> make dt_binding_check
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/sh/cpus.yaml:
>=20
> Documentation/devicetree/bindings/sh/cpus.example.dtb: cpus:
> '#address-cells' is a required property
>         from schema $id: http://devicetree.org/schemas/cpus.yaml#
>         Documentation/devicetree/bindings/sh/cpus.example.dtb: cpus:
> '#size-cells' is a required property
> from schema $id: http://devicetree.org/schemas/cpus.yaml#
>=20
> > +                cpu: cpu@0 {
> > +                      compatible =3D "renesas,sh4", "renesas,sh";
>=20
> Documentation/devicetree/bindings/sh/cpus.example.dts:19.28-21.19:
> Warning (unit_address_vs_reg): /example-0/cpus/cpu@0: node has a unit
> name, but no reg or ranges property
> Documentation/devicetree/bindings/sh/cpus.example.dtb: cpus: cpu@0:
> 'cache-level' is a required property
>         from schema $id: http://devicetree.org/schemas/cpus.yaml#
>=20
> > +                };
> > +        };
> > +...
>=20
> Gr{oetje,eeting}s,
>=20
>                         Geert
>=20
> --=20
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m6=
8k.org
>=20
> In personal conversations with technical people, I call myself a hacker. =
But
> when I'm talking to journalists I just say "programmer" or something like=
 that.
>                                 -- Linus Torvalds

--=20
Yosinori Sato

