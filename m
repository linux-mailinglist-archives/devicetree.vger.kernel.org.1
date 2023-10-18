Return-Path: <devicetree+bounces-9784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FC37CE72F
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 20:48:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1313F281693
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 18:48:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E0D638FBA;
	Wed, 18 Oct 2023 18:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7353C37148
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 18:48:45 +0000 (UTC)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 961E211C;
	Wed, 18 Oct 2023 11:48:40 -0700 (PDT)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-5a7ad24b3aaso87685557b3.2;
        Wed, 18 Oct 2023 11:48:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697654919; x=1698259719;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IQXL/afvptNPAl+icwRE6UirM13RVwbeagZySKbyPUc=;
        b=fu0FGdx4Ovtx7s8CcXC1lS3Q9NvnVFykfFwhkq/BO9yYtWnGQiKkrj9Mp7Zd0gB2fs
         /0PbRlukKOO/qRAzviD2Ech1RoA4Vs7v6FO4EvloO5Bfjgx+WpsNr4c0j/kCALb5nHX1
         q4pUy8FQK8WZXJDLT2nO7BDdwT5bWbyYcEQSP8Ax9o258LW8v/ynL6i5jeCKdpfQgpKs
         3Zuu/ZoXKevpZQRMVZunoARguX/9aD1jQq7E5D+5Qf09kOixpsYN/QFDjmT5uNsQUYpB
         dpRp17vRvq8DiR4gzYOSTDcwl5en8JTnCDMm4REgmr4pcJp9bAJOS0hcarABOHjst493
         e80g==
X-Gm-Message-State: AOJu0YymBWH8vdECQX8yr2+SEer0ssPfHA4u8KzuSsf4NbZhuW8vOiC0
	LxOtAbmSoNV9Yw3wrygGw/PstJ/8opL4Jg==
X-Google-Smtp-Source: AGHT+IHihTXj7X4hw6APkdCAfzrfQeFu94T0ynzTko/9pU6pQTYGL+r6GwSFc41p1nUqf0FjI3ZFZg==
X-Received: by 2002:a5b:207:0:b0:d9a:d170:1b0f with SMTP id z7-20020a5b0207000000b00d9ad1701b0fmr254038ybl.12.1697654919521;
        Wed, 18 Oct 2023 11:48:39 -0700 (PDT)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com. [209.85.128.174])
        by smtp.gmail.com with ESMTPSA id v33-20020a25fc21000000b00d865e9d394asm1500159ybd.14.2023.10.18.11.48.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Oct 2023 11:48:39 -0700 (PDT)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-5a7ad24b3aaso87685247b3.2;
        Wed, 18 Oct 2023 11:48:39 -0700 (PDT)
X-Received: by 2002:a0d:df51:0:b0:5a7:d8f0:a30a with SMTP id
 i78-20020a0ddf51000000b005a7d8f0a30amr152657ywe.28.1697654919012; Wed, 18 Oct
 2023 11:48:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1697199949.git.ysato@users.sourceforge.jp> <35311df6cf65c9f110604cbbdecad2f15ac602b6.1697199949.git.ysato@users.sourceforge.jp>
In-Reply-To: <35311df6cf65c9f110604cbbdecad2f15ac602b6.1697199949.git.ysato@users.sourceforge.jp>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 18 Oct 2023 20:48:25 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVjyPchHd8Hzcy+1Pv-57M_eD9rPSDmT88M3bSeEUn86A@mail.gmail.com>
Message-ID: <CAMuHMdVjyPchHd8Hzcy+1Pv-57M_eD9rPSDmT88M3bSeEUn86A@mail.gmail.com>
Subject: Re: [RFC PATCH v3 29/35] Documentation/devicetree/bindings/soc/renesas/sh.yaml:
 Add SH7751 based target.
To: Yoshinori Sato <ysato@users.sourceforge.jp>
Cc: linux-sh@vger.kernel.org, glaubitz@physik.fu-berlin.de, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sato-san,

On Sat, Oct 14, 2023 at 4:54=E2=80=AFPM Yoshinori Sato
<ysato@users.sourceforge.jp> wrote:
> Renesas SuperH based target definition.
>
> Signed-off-by: Yoshinori Sato <ysato@users.sourceforge.jp>

Thanks for your patch!

Please use a one-line prefix that matches the history of the other
files next to it:

    dt-bindings: soc: renesas: Document SH7751 based targets

> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/renesas/sh.yaml
> @@ -0,0 +1,32 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/renesas/sh.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas SuperH Platform
> +
> +maintainers:
> +  - Yoshinori Sato <ysato@users.sourceforge.jp>
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - description: RTS7751R2D Plus
> +        items:
> +          - enum:
> +              - renesas,rts7751r2d # Renesas SH4 2D graphics board
> +          - const: renesas,sh7751r
> +
> +      - description: Julian board
> +        items:
> +          - enum:
> +              - iodata,landisk  # LANDISK HDL-U
> +              - iodata,usl-5p   # USL-5P

These depend on "[RFC PATCH v3 27/35] Documentation/devicetree/bindings:
vendor-prefix add IO DATA DEVICE Inc.", so that patch should be moved
forward in the series.

> +          - const: renesas,sh7751r

Please merge both sections, as they use the same number of compatible
values and the same fallback.

> +
> +additionalProperties: true
> +
> +...
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

