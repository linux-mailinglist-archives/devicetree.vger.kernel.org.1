Return-Path: <devicetree+bounces-12650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB607DABB2
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 09:00:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 907522816F4
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 08:00:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C08779DB;
	Sun, 29 Oct 2023 08:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37666AD9
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 08:00:47 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 095E6C6;
	Sun, 29 Oct 2023 01:00:46 -0700 (PDT)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-59b5484fbe6so29047247b3.1;
        Sun, 29 Oct 2023 01:00:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698566445; x=1699171245;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wq3KaWnfOKn15xc4xsqIdV2aDnDlx/ragRVM8DwqFD4=;
        b=H0wQIpcBp37h2wkDrolC+G5wR+/r+NnCHfgILo/Js4BKtGIhwbI6Hf9pmyDaO0pbLK
         Shllp7PXPnBs5ij2TwohsBU/PYOtFXwLAztJ19XIivEr+X0lfyq7VOvJWZWdwXpWYPCa
         5tPisSKw3/l4teFNarkFKy7KbF/sJpm6vVoJMJfN2eB01a2ebL5clMJ6LOaRUyqHICcl
         7qvFR8mRHrek7v/sTXjOy7qhmW2RBI6snM7GhCnch6cDIgr/Ck/2YgUZEmavSruieQeF
         zj9zkRZiUnAYQOZrTFJSGm1Q4i+rjMkk/7iy4ae7/JNN3ghiar/1ZXkh+8Ua0O/b6JZv
         Iz5g==
X-Gm-Message-State: AOJu0Ywp72PFDFSE8rzttfanb5ncA2kcBESHWrnU0+JpFWdmODQ1YP0r
	F/9yEgajlenS1TdvOBX2Uw/U8pq5BC7w2g==
X-Google-Smtp-Source: AGHT+IE5OxAFFISTEFObosT5Huf4SROkGuRN9vX13GQI/MnW2fhP1V5dUe7htTSGcbOP1j5hHA35rg==
X-Received: by 2002:a81:e50c:0:b0:5b0:6326:75a4 with SMTP id s12-20020a81e50c000000b005b0632675a4mr3217324ywl.7.1698566444767;
        Sun, 29 Oct 2023 01:00:44 -0700 (PDT)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com. [209.85.219.181])
        by smtp.gmail.com with ESMTPSA id p127-20020a0dff85000000b00597e912e67esm2766860ywf.131.2023.10.29.01.00.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Oct 2023 01:00:43 -0700 (PDT)
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-d9ad90e1038so2794123276.3;
        Sun, 29 Oct 2023 01:00:43 -0700 (PDT)
X-Received: by 2002:a25:d489:0:b0:da1:b041:70ac with SMTP id
 m131-20020a25d489000000b00da1b04170acmr5190692ybf.10.1698566443639; Sun, 29
 Oct 2023 01:00:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <mhng-ac92041d-85e9-4725-b61c-bc0fef5549ec@palmer-ri-x1c9a> <133b60f7-a71c-4fa2-ae19-4cad05596a23@sifive.com>
In-Reply-To: <133b60f7-a71c-4fa2-ae19-4cad05596a23@sifive.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Sun, 29 Oct 2023 09:00:31 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUdzrVX9PzZw4_KMg+-17GPAEaV9ZmfzuUWpjC4moUX5w@mail.gmail.com>
Message-ID: <CAMuHMdUdzrVX9PzZw4_KMg+-17GPAEaV9ZmfzuUWpjC4moUX5w@mail.gmail.com>
Subject: Re: [PATCH 5/5] riscv: configs: defconfig: Enable configs required
 for RZ/Five SoC
To: Samuel Holland <samuel.holland@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, prabhakar.csengg@gmail.com, magnus.damm@gmail.com, 
	conor+dt@kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, prabhakar.mahadev-lad.rj@bp.renesas.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Samuel,

On Sat, Oct 28, 2023 at 11:27=E2=80=AFPM Samuel Holland
<samuel.holland@sifive.com> wrote:
> On 2023-10-27 5:11 PM, Palmer Dabbelt wrote:
> > On Tue, 03 Oct 2023 05:34:13 PDT (-0700), geert@linux-m68k.org wrote:
> >> On Fri, Sep 29, 2023 at 2:07=E2=80=AFAM Prabhakar <prabhakar.csengg@gm=
ail.com> wrote:
> >>> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >>>
> >>> Enable the configs required by the below IP blocks which are
> >>> present on RZ/Five SoC:
> >>> * ADC
> >>> * CANFD
> >>> * DMAC
> >>> * eMMC/SDHI
> >>> * OSTM
> >>> * RAVB (+ Micrel PHY)
> >>> * RIIC
> >>> * RSPI
> >>> * SSI (Sound+WM8978 codec)
> >>> * Thermal
> >>> * USB (PHY/RESET/OTG)
> >>>
> >>> Along with the above some core configs are enabled too,
> >>> -> CPU frequency scaling as RZ/Five does support this.
> >>> -> MTD is enabled as RSPI can be connected to flash chips
> >>> -> Enabled I2C chardev so that it enables userspace to read/write
> >>>    i2c devices (similar to arm64)
> >>> -> Thermal configs as RZ/Five SoC does have thermal unit
> >>> -> GPIO regulator as we might have IP blocks for which voltage
> >>>    levels are controlled by GPIOs
> >>> -> OTG configs as RZ/Five USB can support host/function
> >>> -> Gadget configs so that we can test USB function (as done in arm64
> >>>    all the gadget configs are enabled)
> >>>
> >>> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com=
>
> >>
> >> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> >>
> >> As I expect this to go in through the RISC-V tree, I will let the
> >> RISC-V people handle any discussion about more options that should be
> >> made modular instead of builtin.
> >
> > I'm pretty much agnostic on that front, so I'm cool just picking up thi=
s.  I've
> > got just patch 5 in my queue for testing, there's a few other things in=
 front of
> > it but it should show up on for-next soon.
>
> Does it make sense to merge this, considering RZ/Five support depends on
> NONPORTABLE, and therefore cannot be enabled in defconfig anyway?

Indeed, that's a good point.

Note that this patch (and its review) predates the NONPORTABLE
dependency.

Palmer: are you open to adding a new rzfive_defconfig[*] instead?
I see there are already other configs, so riscv seems to follow the
arm rather than the arm64 (there can be only one ring^Wdefconfig) model.

Thanks!

[*] I do hope to reserve (possibly non-upstream) renesas_defconfig
    for the army of future Renesas RISC-V SoCs that do not need a
    dependency on NONPORTABLE ;-)

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

