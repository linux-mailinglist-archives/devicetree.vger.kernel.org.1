Return-Path: <devicetree+bounces-9659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5928D7CDD9A
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 15:42:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 128EB281C39
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 13:42:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33349358B9;
	Wed, 18 Oct 2023 13:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094DA18636
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 13:42:02 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE82495;
	Wed, 18 Oct 2023 06:42:01 -0700 (PDT)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-59e88a28b98so59940507b3.1;
        Wed, 18 Oct 2023 06:42:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697636521; x=1698241321;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XRSKWQ2HROzQ5Hu4YaDpkSe9d9FWQW8TTlU82Fz/2Vk=;
        b=fn+wYkkS2xU6119xwwAfbFTIlZxxOTKM6lnB+kLrLW0p0Dg3VUA41wTQaaQX8ZWBYm
         H1FBT0Rs3tFumH32jsaIVYe8lcnh9+xtWlQUIDfmG9XtaA/rhES2q7+7W+z0mdQ6CZuk
         3vOagE9cLcSB/ht7BWHW0rzmixfY7ZomXcXlB+YtBkqR0K5LBgJgSCQHo+yxJ2ePc1Ix
         0fkCmiyo3O9U/s2QJwi+g8VieP10TqvDdzTU8o+wVtAztdJwB+/n9vSIN1LCt6G+drHO
         /Y6N++Pqb/IViiVTLqKaLUyYpv3r5/RIcAPsEEqxjp/7tK1f0KrjYzcqF58rBLy0maIf
         LFQg==
X-Gm-Message-State: AOJu0YzIV+u/g9vQl+ODyjx0GjKzIPAJHqmj+Rj+NU9uCH6apfsgwp28
	Ge9uwwJJ+AQfTKk416hIz9qXNxAosrUGXw==
X-Google-Smtp-Source: AGHT+IG6I5Q7OcfPd219QYXDSosruUnAShc7YSPDiwLHjqy+TJGslNAd0SFZZs41f7Qxx3SQo1p4Dg==
X-Received: by 2002:a81:48ce:0:b0:5a7:b3d0:82c2 with SMTP id v197-20020a8148ce000000b005a7b3d082c2mr3421945ywa.12.1697636520666;
        Wed, 18 Oct 2023 06:42:00 -0700 (PDT)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com. [209.85.128.171])
        by smtp.gmail.com with ESMTPSA id s189-20020a8182c6000000b005a7bbd713ddsm1489633ywf.108.2023.10.18.06.42.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Oct 2023 06:42:00 -0700 (PDT)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-59e88a28b98so59940327b3.1;
        Wed, 18 Oct 2023 06:42:00 -0700 (PDT)
X-Received: by 2002:a0d:e849:0:b0:5a8:11de:a7f1 with SMTP id
 r70-20020a0de849000000b005a811dea7f1mr3797944ywe.9.1697636519827; Wed, 18 Oct
 2023 06:41:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1697199949.git.ysato@users.sourceforge.jp> <a911866d220f7b0945e0fb12448e0c1faa3ff346.1697199949.git.ysato@users.sourceforge.jp>
In-Reply-To: <a911866d220f7b0945e0fb12448e0c1faa3ff346.1697199949.git.ysato@users.sourceforge.jp>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 18 Oct 2023 15:41:46 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUDYgnwSdUN9DYK+_sXqY_gqP2pDi-37Osbd2_An-nbGw@mail.gmail.com>
Message-ID: <CAMuHMdUDYgnwSdUN9DYK+_sXqY_gqP2pDi-37Osbd2_An-nbGw@mail.gmail.com>
Subject: Re: [RFC PATCH v3 13/35] Documentation/devicetree/bindings/clock: Add
 renesas,sh7750-cpg binding document.
To: Yoshinori Sato <ysato@users.sourceforge.jp>
Cc: linux-sh@vger.kernel.org, glaubitz@physik.fu-berlin.de, 
	mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Sato-san,

On Sat, Oct 14, 2023 at 4:54=E2=80=AFPM Yoshinori Sato
<ysato@users.sourceforge.jp> wrote:
> Signed-off-by: Yoshinori Sato <ysato@users.sourceforge.jp>

Thanks for your patch!

> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/renesas,sh7750-cpg.yaml
> @@ -0,0 +1,74 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/renesas,sh7750-cpg.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas SH7750/7751 Clock Pulse Generator (CPG)
> +
> +maintainers:
> +  - Yoshinori Sato <ysato@users.sourceforge.jp>
> +
> +description:
> +  The Clock Pulse Generator (CPG) generates core clocks for the SoC.  It
> +  includes PLLs, and variable ratio dividers.
> +
> +  The CPG may also provide a Clock Domain for SoC devices, in combinatio=
n with
> +  the CPG Module Stop (MSTP) Clocks.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - renesas,sh7750-cpg             # SH7750
> +          - renesas,sh7750s-cpg            # SH775S
> +          - renesas,sh7750r-cpg            # SH7750R
> +          - renesas,sh7751-cpg             # SH7751
> +          - renesas,sh7751r-cpg            # SH7751R
> +      - const: renesas,sh7750-cpg

As there are important differences between the CPG variants, I think
it makes sense to drop the "renesas,sh7750-cpg", fallback, like you
BTW already did in the example below.
Then you can drop the "items", and just keep "enum".

> +examples:
> +  - |
> +    #include <dt-bindings/clock/sh7750.h>
> +    cpg: clock-controller@ffc00000 {
> +        #clock-cells =3D <1>;
> +        #power-domain-cells =3D <0>;
> +        compatible =3D "renesas,sh7751r-cpg";
> +        clocks =3D <&xtal>;
> +        clock-names =3D "xtal";
> +        reg =3D <0xffc00000 20>, <0xfe0a0000 16>;

$ make dt_binding_check
DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/clock/renesas,sh7750-cp=
g.yaml
Documentation/devicetree/bindings/clock/renesas,sh7750-cpg.example.dtb:
clock-controller@ffc00000: compatible: ['renesas,sh7751r-cpg'] is too
short
        from schema $id:
http://devicetree.org/schemas/clock/renesas,sh7750-cpg.yaml#
Documentation/devicetree/bindings/clock/renesas,sh7750-cpg.example.dtb:
clock-controller@ffc00000: 'reg-names' is a required property
        from schema $id:
http://devicetree.org/schemas/clock/renesas,sh7750-cpg.yaml#

> +    };
> --
> 2.39.2
>



--
Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

