Return-Path: <devicetree+bounces-11810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2185A7D6AC4
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:05:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D0DF32811C4
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:05:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8154527731;
	Wed, 25 Oct 2023 12:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7574EF4F0
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 12:05:03 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A24E129;
	Wed, 25 Oct 2023 05:05:01 -0700 (PDT)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-5ae143e08b1so4497287b3.1;
        Wed, 25 Oct 2023 05:05:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698235500; x=1698840300;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=shSVhFEDexgyGIggz4LHo3gcVG1MD/g5cGawlEn9tQU=;
        b=WvFnZFPr/H+OuxvulV70EicplBH3REkRHxf7Ki+qj+KG/9dzQ6BZfZemGuOF0/G4xa
         dEviw6uGkRk7IBpOdihIm3XQuj5M+ahzTI6L6pJFRUtk5i1euQHBofH+V2efPx5eyOpU
         K047BdBh5Mc+LBkM2BiZ54bT7aYzTP9kPrkfSMhbIBdLxWZOJJIzAzaQBfAU6fiBXOaU
         py/LMmRLoitIu0qYSmxTnOoPUUnUs1JqWBcaWPQ4tVBej0Qo41Z9JJellgbFw9bJjCN2
         /ecuzuOS8HccDu7s4CtXYdH0HBY92JmFhGfMLf2RiZ4TGFsumULGO4sloje1ORG53zKF
         lF/A==
X-Gm-Message-State: AOJu0Yx1j242sDZbxX1wdX0gP785zRIT/XbUEDJV3bM/RpgD5vlyD5Hb
	560hlM37ngFg0fqtydCJOdec/3MCjja9sg==
X-Google-Smtp-Source: AGHT+IExoNsVupnJhlj6GZ9HuFqLFXzdhbEn8VABl+y3O0lpnMfhuhqBsVKp2NRMaMHrJB9hYVGI2w==
X-Received: by 2002:a0d:eb96:0:b0:5a2:20ec:40be with SMTP id u144-20020a0deb96000000b005a220ec40bemr16677690ywe.29.1698235500562;
        Wed, 25 Oct 2023 05:05:00 -0700 (PDT)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com. [209.85.219.178])
        by smtp.gmail.com with ESMTPSA id a23-20020a0dd817000000b005a8dbe385d1sm4972779ywe.12.2023.10.25.05.05.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 05:05:00 -0700 (PDT)
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-d9c687f83a2so5107035276.3;
        Wed, 25 Oct 2023 05:05:00 -0700 (PDT)
X-Received: by 2002:a25:9392:0:b0:d7b:9d44:7574 with SMTP id
 a18-20020a259392000000b00d7b9d447574mr15722389ybm.64.1698235500116; Wed, 25
 Oct 2023 05:05:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1697199949.git.ysato@users.sourceforge.jp>
 <46ef748dd27127ef9b39fa6c97fe51e8d3422a4f.1697199949.git.ysato@users.sourceforge.jp>
 <CAMuHMdU5brBPGuCaMra6pS4MRFvBFQ5vF9tEFVre=-032xuuMg@mail.gmail.com>
 <87ttqf6jjq.wl-ysato@users.sourceforge.jp> <D779B53C-D508-4112-8340-CB11F35EBACA@gmail.com>
In-Reply-To: <D779B53C-D508-4112-8340-CB11F35EBACA@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 25 Oct 2023 14:04:48 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUpwdmOGB6BRfWFcd3NJ5Gigui7JpsX_RzMJPT5fsNyyA@mail.gmail.com>
Message-ID: <CAMuHMdUpwdmOGB6BRfWFcd3NJ5Gigui7JpsX_RzMJPT5fsNyyA@mail.gmail.com>
Subject: Re: [RFC PATCH v3 25/35] Documentation/devicetree/bindings/sh/cpus.yaml:
 Add SH CPU.
To: "D. Jeff Dionne" <djeffdionne@gmail.com>
Cc: Yoshinori Sato <ysato@users.sourceforge.jp>, linux-sh@vger.kernel.org, 
	glaubitz@physik.fu-berlin.de, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jeff,

On Wed, Oct 25, 2023 at 1:33=E2=80=AFPM D. Jeff Dionne <djeffdionne@gmail.c=
om> wrote:
> > On Oct 25, 2023, at 20:14, Yoshinori Sato <ysato@users.sourceforge.jp> =
wrote:
> > On Wed, 18 Oct 2023 23:27:43 +0900,
> > Geert Uytterhoeven wrote:
> >> On Sat, Oct 14, 2023 at 4:54=E2=80=AFPM Yoshinori Sato
> >> <ysato@users.sourceforge.jp> wrote:
> >>> Renesas SuperH binding definition.
> >>>
> >>> Signed-off-by: Yoshinori Sato <ysato@users.sourceforge.jp>

> >>> --- /dev/null
> >>> +++ b/Documentation/devicetree/bindings/sh/cpus.yaml
> >>> @@ -0,0 +1,45 @@
> >>> +# SPDX-License-Identifier: GPL-2.0
> >>> +%YAML 1.2
> >>> +---
> >>> +$id: http://devicetree.org/schemas/sh/cpus.yaml#
> >>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>> +
> >>> +title: Renesas SuperH CPUs
> >>> +
> >>> +maintainers:
> >>> +  - Yoshinori Sato <ysato@users.sourceforge.jp>
> >>> +
> >>> +description: |+
> >>> +  The device tree allows to describe the layout of CPUs in a system =
through
> >>> +  the "cpus" node, which in turn contains a number of subnodes (ie "=
cpu")
> >>> +  defining properties for every cpu.
> >>> +
> >>> +  Bindings for CPU nodes follow the Devicetree Specification, availa=
ble from:
> >>> +
> >>> +  https://www.devicetree.org/specifications/
> >>> +
> >>> +properties:
> >>> +  compatible:
> >>> +    items:
> >>> +      - enum:
> >>
> >> Missing
> >>
> >>    - jcore,j2

> We must not imply that Renesas is responsible for J2, or that it is a san=
ctioned SH core.

Compatible values do not declare any such endorsement.

> J-Core has the responsibility for maintenance of those SH ISA compatible =
cores.

The question is: does J2 implement the same instruction set as SH2,
i.e. can it run unmodified SH2 code?

> >>
> >>> +          - renesas,sh4
> >>
> >>
> >>> +      - const: renesas,sh
> >>
> >> I see arch/sh/boot/dts/j2_mimas_v2.dts lacks the fallback to
> >> "renesas,sh", though.
> >> Is there a common base of instructions that are available on all SH co=
res?
> >
> > The base instruction set is sh2.
> > Before that, there is sh1, but this is not compatible with Linux.
> > I think it would be a good idea to change this to "renesas,sh2",

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

