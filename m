Return-Path: <devicetree+bounces-10042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 550A47CF721
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 13:39:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 117AF281F6A
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 11:39:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 280A21A290;
	Thu, 19 Oct 2023 11:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4900D199A5
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 11:39:09 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E832D13D;
	Thu, 19 Oct 2023 04:38:46 -0700 (PDT)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-5a81ab75f21so80152697b3.2;
        Thu, 19 Oct 2023 04:38:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697715526; x=1698320326;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tEmcuppiYe9/vGVMnE/yydfS69UfeiisZ86D9IEml3c=;
        b=s/gbeLOsEbiP/tI5/Ji8OiKumoX1Q94FzsnI0nC+yrJkb6jlnWa5k6E3OQTqeHP+iO
         lKmVeGKlMx6ftovBBjDryxPZRY1n6NndI6QNHbgmbLbRErpgMASC754pxXDX3INsfwYE
         nMvaVAjLcr2ORCjABYKPEm4PFRUq4KI4lcR9MpQiAUh7v84dBOV0wclfSerkQrcjYpT0
         PbFZZ1ingKKUv/Fc7aIwfDvMpluFFfhTLobgmWgBpw5x+IofHKvXZVSVv1XeETfC3MhE
         koZUTQ073x7kUoUjr+zpMxV0X69OVZvgdnQFk3l/958AhHn6ylHjKj6JVNm4W00zzTOQ
         StXw==
X-Gm-Message-State: AOJu0Yws7/1m50cMDSzeCWbpdZrJngB4dSPnltY/Y5uFK/n0xi9DwG9V
	ehNuCcy2WCp8rVvDOjMb5FooYhvrlmsoug==
X-Google-Smtp-Source: AGHT+IHTWaIaU94N1svppKvIPZVBV84TAu1XQUkmZ+ueg9ZP+2cL0CrmgkpHtox84xBzULKHBETEgA==
X-Received: by 2002:a81:a0d5:0:b0:59b:d3cd:ffb6 with SMTP id x204-20020a81a0d5000000b0059bd3cdffb6mr2011656ywg.33.1697715525694;
        Thu, 19 Oct 2023 04:38:45 -0700 (PDT)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com. [209.85.219.177])
        by smtp.gmail.com with ESMTPSA id h185-20020a0df7c2000000b005869cf151ebsm2336476ywf.144.2023.10.19.04.38.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Oct 2023 04:38:45 -0700 (PDT)
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-d9ad67058fcso8392040276.1;
        Thu, 19 Oct 2023 04:38:45 -0700 (PDT)
X-Received: by 2002:a25:e057:0:b0:d9a:4b0f:402b with SMTP id
 x84-20020a25e057000000b00d9a4b0f402bmr2023488ybg.38.1697715525219; Thu, 19
 Oct 2023 04:38:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1697199949.git.ysato@users.sourceforge.jp>
 <eee98f679a9e86180ce047de319edcd30ac38d8b.1697199949.git.ysato@users.sourceforge.jp>
 <CAMuHMdXFuXKDKu7EAtECtMhOZb+Mzjfz7KWQVTSeTNo5G7xqrg@mail.gmail.com>
In-Reply-To: <CAMuHMdXFuXKDKu7EAtECtMhOZb+Mzjfz7KWQVTSeTNo5G7xqrg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 19 Oct 2023 13:38:34 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUyzGvDt-XvOwwuc-sDknx1z+kbEHe+HhT_2yi-vx-v7w@mail.gmail.com>
Message-ID: <CAMuHMdUyzGvDt-XvOwwuc-sDknx1z+kbEHe+HhT_2yi-vx-v7w@mail.gmail.com>
Subject: Re: [RFC PATCH v3 15/35] Documentation/devicetree/bindings/interrupt-controller:
 Add renesas,sh7751-intc.yaml
To: Yoshinori Sato <ysato@users.sourceforge.jp>
Cc: linux-sh@vger.kernel.org, glaubitz@physik.fu-berlin.de, tglx@linutronix.de, 
	maz@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sato-san,

On Thu, Oct 19, 2023 at 1:29=E2=80=AFPM Geert Uytterhoeven <geert@linux-m68=
k.org> wrote:
> On Sat, Oct 14, 2023 at 4:54=E2=80=AFPM Yoshinori Sato
> <ysato@users.sourceforge.jp> wrote:
> > SH7751 interrupt controller binding definition.
> >
> > Signed-off-by: Yoshinori Sato <ysato@users.sourceforge.jp>
>
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/interrupt-controller/renesas,sh=
7751-intc.yaml
> > @@ -0,0 +1,102 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/interrupt-controller/renesas,sh7751=
-intc.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Renesas SH7751 Interrupt Controller
> > +
> > +maintainers:
> > +  - Yoshinori Sato <ysato@users.sourceforge.jp>
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - const: renesas,sh7751-intc
> > +
> > +  '#interrupt-cells':
> > +    # an interrupt index and flags, as defined in interrupts.txt in
> > +    # this directory
>
> I think you can drop this comment.
>
> > +    const: 2

And given the second cell is always zero, and the driver uses
irq_domain_xlate_onecell, I guess this should be one instead?

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

