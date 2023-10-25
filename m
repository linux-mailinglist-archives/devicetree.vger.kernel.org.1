Return-Path: <devicetree+bounces-11806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC3F7D6AA1
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 13:58:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2E973B20EF8
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 11:58:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 816C427722;
	Wed, 25 Oct 2023 11:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57FC111732
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 11:58:37 +0000 (UTC)
Received: from hsmtpd-def.xspmail.jp (hsmtpd-def.xspmail.jp [202.238.198.242])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D4C8136
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 04:58:35 -0700 (PDT)
X-Country-Code: JP
Received: from sakura.ysato.name (ik1-413-38519.vs.sakura.ne.jp [153.127.30.23])
	by hsmtpd-out-1.asahinet.cluster.xspmail.jp (Halon) with ESMTPA
	id 4f047d62-4e46-4649-9768-f8031a9afeb1;
	Wed, 25 Oct 2023 20:58:33 +0900 (JST)
Received: from SIOS1075.ysato.ml (al128006.dynamic.ppp.asahi-net.or.jp [111.234.128.6])
	by sakura.ysato.name (Postfix) with ESMTPSA id 8C1641C0037;
	Wed, 25 Oct 2023 20:58:31 +0900 (JST)
Date: Wed, 25 Oct 2023 20:58:31 +0900
Message-ID: <87r0li7w2g.wl-ysato@users.sourceforge.jp>
From: Yoshinori Sato <ysato@users.sourceforge.jp>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: linux-sh@vger.kernel.org,
	glaubitz@physik.fu-berlin.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [RFC PATCH v3 29/35] Documentation/devicetree/bindings/soc/renesas/sh.yaml: Add SH7751 based target.
In-Reply-To: <CAMuHMdXR1qW9yD6xwQ-G9no85E2uQaje+PWnLvQwke-v_J-TUg@mail.gmail.com>
References: <cover.1697199949.git.ysato@users.sourceforge.jp>
	<35311df6cf65c9f110604cbbdecad2f15ac602b6.1697199949.git.ysato@users.sourceforge.jp>
	<CAMuHMdVjyPchHd8Hzcy+1Pv-57M_eD9rPSDmT88M3bSeEUn86A@mail.gmail.com>
	<CAMuHMdXR1qW9yD6xwQ-G9no85E2uQaje+PWnLvQwke-v_J-TUg@mail.gmail.com>
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

On Thu, 19 Oct 2023 04:44:12 +0900,
Geert Uytterhoeven wrote:
>=20
> Hi Sato-san,
>=20
> On Wed, Oct 18, 2023 at 8:48=E2=80=AFPM Geert Uytterhoeven <geert@linux-m=
68k.org> wrote:
> > On Sat, Oct 14, 2023 at 4:54=E2=80=AFPM Yoshinori Sato
> > <ysato@users.sourceforge.jp> wrote:
> > > Renesas SuperH based target definition.
> > >
> > > Signed-off-by: Yoshinori Sato <ysato@users.sourceforge.jp>
>=20
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/soc/renesas/sh.yaml
> > > @@ -0,0 +1,32 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/soc/renesas/sh.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Renesas SuperH Platform
> > > +
> > > +maintainers:
> > > +  - Yoshinori Sato <ysato@users.sourceforge.jp>
> > > +
> > > +properties:
> > > +  $nodename:
> > > +    const: '/'
> > > +  compatible:
> > > +    oneOf:
> > > +      - description: RTS7751R2D Plus
> > > +        items:
> > > +          - enum:
> > > +              - renesas,rts7751r2d # Renesas SH4 2D graphics board
> > > +          - const: renesas,sh7751r
> > > +
> > > +      - description: Julian board
> > > +        items:
> > > +          - enum:
> > > +              - iodata,landisk  # LANDISK HDL-U
> > > +              - iodata,usl-5p   # USL-5P
> > > +          - const: renesas,sh7751r
> >
> > Please merge both sections, as they use the same number of compatible
> > values and the same fallback.
>=20
> Unless we want to add an "renesas,sh7380" intermediate, as that is
> the actual SoC in the landisk? I do not know what is the difference
> between SH7380 and SH7751R.

Everything here is SH7751R.
I didn't include J2, so I'll add it.
Other SoCs will be added after changing to DeviceTree.

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

