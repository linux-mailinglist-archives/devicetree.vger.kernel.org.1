Return-Path: <devicetree+bounces-10162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F77C7CFD9E
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 17:13:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B19CE1C20D2C
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 15:13:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC4D52FE19;
	Thu, 19 Oct 2023 15:13:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7338F49
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 15:13:18 +0000 (UTC)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCDDD11B;
	Thu, 19 Oct 2023 08:13:16 -0700 (PDT)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-5a82f176860so77674617b3.1;
        Thu, 19 Oct 2023 08:13:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697728396; x=1698333196;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RAUS/Zsfe7KDG2Vf3z9LFXu6s1gB7Lx5yORTguT/oaE=;
        b=CkRj6mRKYpkaxSbVRaWNbGPCJI1zXt+xExD9xi6M6Ju4jfDKDtA8OFtkRLYkcziP3E
         8zHctaE5wqoxLA0Iy/qAyaI9c9O9+AMybrLzpdMWgkbdW+X5l83gd3QwZJxKED328dsg
         GVHzBLOd76/0+W9IMXwb0GMESFOwm6pdjOvehrvL9jzIDUiz6e6UQxSWPEIvqIUEtHBo
         2E6l4b+gzYlGd4TS9e5NzoCkIfyKmB5XP6Lk33mPBVhoLy+NH/DzNLgqIQgvELMePoTM
         XfiT4skyeKOFlcioYtOzt6oiLqHevbgkyokVEpY5nAiy1U0BVD7PCxo1ZwhW0udR7cVY
         fKGQ==
X-Gm-Message-State: AOJu0YwiKNTpcn9+0j3Wk+7s2+0IJTsMuB9IlA91pUgN5mN86hORqyQr
	QoEq5SICdVkTwhUa68Ym4EsepMVVeY2+dQ==
X-Google-Smtp-Source: AGHT+IGzNdbw1CC/Xk9MNJ9SNpIpBKJ2zSm8OuozagBHU3G8UeBUF7fmOPGSx8OOg4P8oOVKKJDR4w==
X-Received: by 2002:a25:37c4:0:b0:d9a:d7a5:e445 with SMTP id e187-20020a2537c4000000b00d9ad7a5e445mr2489019yba.49.1697728395770;
        Thu, 19 Oct 2023 08:13:15 -0700 (PDT)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com. [209.85.128.171])
        by smtp.gmail.com with ESMTPSA id z4-20020a25ad84000000b00d815cb9accbsm2114553ybi.32.2023.10.19.08.13.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Oct 2023 08:13:15 -0700 (PDT)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-5a7e5dc8573so99518267b3.0;
        Thu, 19 Oct 2023 08:13:15 -0700 (PDT)
X-Received: by 2002:a0d:ea95:0:b0:59b:54b5:7d66 with SMTP id
 t143-20020a0dea95000000b0059b54b57d66mr2731653ywe.34.1697728395073; Thu, 19
 Oct 2023 08:13:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230531111038.6302-1-francesco@dolcini.it> <CAMuHMdUkPiA=o_QLyuwsTYW7y1ksCjHAqyNSHFx2QZ-dP-HGsQ@mail.gmail.com>
 <ZTFFp8Yr7lq6HIab@francesco-nb.int.toradex.com>
In-Reply-To: <ZTFFp8Yr7lq6HIab@francesco-nb.int.toradex.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 19 Oct 2023 17:13:01 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXtA3LNL6UkWyz6oytfNpSv77EShfF-uQvnPJktMUr40A@mail.gmail.com>
Message-ID: <CAMuHMdXtA3LNL6UkWyz6oytfNpSv77EShfF-uQvnPJktMUr40A@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: serial: 8250_omap: add rs485-rts-active-high
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vignesh Raghavendra <vigneshr@ti.com>, linux-serial@vger.kernel.org, devicetree@vger.kernel.org, 
	Francesco Dolcini <francesco.dolcini@toradex.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Franceso,

On Thu, Oct 19, 2023 at 5:05=E2=80=AFPM Francesco Dolcini <francesco@dolcin=
i.it> wrote:
> On Thu, Oct 19, 2023 at 12:09:06PM +0200, Geert Uytterhoeven wrote:
> > On Wed, May 31, 2023 at 1:14=E2=80=AFPM Francesco Dolcini <francesco@do=
lcini.it> wrote:
> > > From: Francesco Dolcini <francesco.dolcini@toradex.com>
> > >
> > > Add rs485-rts-active-high property, this was removed by mistake.
> > > In general we just use rs485-rts-active-low property, however the OMA=
P
> > > UART for legacy reason uses the -high one.
> > >
> > > Fixes: 767d3467eb60 ("dt-bindings: serial: 8250_omap: drop rs485 prop=
erties")
> > > Closes: https://lore.kernel.org/all/ZGefR4mTHHo1iQ7H@francesco-nb.int=
.toradex.com/
> > > Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
> > > ---
> > > v2: removed reported-by
> >
> > Thanks for your patch, which is now commit 403e97d6ab2cb6fd
> > ("dt-bindings: serial: 8250_omap: add rs485-rts-active-high")
> > in v6.4-rc5.
> >
> > > --- a/Documentation/devicetree/bindings/serial/8250_omap.yaml
> > > +++ b/Documentation/devicetree/bindings/serial/8250_omap.yaml
> > > @@ -70,6 +70,7 @@ properties:
> > >    dsr-gpios: true
> > >    rng-gpios: true
> > >    dcd-gpios: true
> > > +  rs485-rts-active-high: true
> >
> > make dt_binding_check complains:
> >
> >     Documentation/devicetree/bindings/serial/8250_omap.yaml:
> > rs485-rts-active-high: missing type definition
>
> For some reasons it works for me (and worked when I did send the patch)
>
> $ make dt_binding_check DT_SCHEMA_FILES=3D8250_omap.yaml
> ...
>   HOSTCC  scripts/dtc/libfdt/fdt_overlay.o
>   HOSTCC  scripts/dtc/fdtoverlay.o
>   HOSTLD  scripts/dtc/fdtoverlay
>   LINT    Documentation/devicetree/bindings
> invalid config: unknown option "required" for rule "quoted-strings"
> xargs: /usr/bin/yamllint: exited with status 255; aborting
>   CHKDT   Documentation/devicetree/bindings/processed-schema.json
>   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
> /home/francesco/Toradex/sources/linux/Documentation/devicetree/bindings/p=
hy/qcom,usb-snps-femto-v2.yaml: ignoring, error in schema: properties: qcom=
,ls-fs-output-impedance-bp
> /home/francesco/Toradex/sources/linux/Documentation/devicetree/bindings/a=
rm/vexpress-sysreg.yaml: ignoring, error in schema: properties: gpio-contro=
ller
> /home/francesco/Toradex/sources/linux/Documentation/devicetree/bindings/i=
io/temperature/adi,ltc2983.yaml: ignoring, error in schema: patternProperti=
es: ^thermistor@: properties: adi,excitation-current-nanoamp
> /home/francesco/Toradex/sources/linux/Documentation/devicetree/bindings/i=
io/adc/adi,ad4130.yaml: ignoring, error in schema: patternProperties: ^chan=
nel@([0-9a-f])$: properties: adi,burnout-current-nanoamp
> /home/francesco/Toradex/sources/linux/Documentation/devicetree/bindings/i=
io/addac/adi,ad74115.yaml: ignoring, error in schema: properties: adi,ext2-=
burnout-current-nanoamp
>   DTEX    Documentation/devicetree/bindings/serial/8250_omap.example.dts
>   DTC_CHK Documentation/devicetree/bindings/serial/8250_omap.example.dtb
>
>
> any idea on what could be different between us?

Are you using the latest dt-schema?

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

