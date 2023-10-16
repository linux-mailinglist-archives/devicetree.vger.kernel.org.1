Return-Path: <devicetree+bounces-8781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0E47CA05F
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 09:17:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ACD03B20BDC
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 07:17:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EEC3156F5;
	Mon, 16 Oct 2023 07:17:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96E43156E4
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 07:17:18 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 267D1E3;
	Mon, 16 Oct 2023 00:17:16 -0700 (PDT)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-5a82f176860so29813837b3.1;
        Mon, 16 Oct 2023 00:17:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697440635; x=1698045435;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U/hJao9N8LKEsymdGe3XcTumREOueGROCRui0e9bORI=;
        b=fqbWOo1B9IT7oV9DJE2G6BTL6ftqN8R69ImBA9O98m//fcUiqDpoQirY1KADszBDU8
         ZDKi+Pr6MCDlVKGPIxnR4+doStu7e/W/x9OvKDNT0v0ly6obCtgB0hVyseXQ6Ql2gf+h
         WdvZ5FAuxhPwUjl4+OmlKRTsxOp8urgWKzUMArFgAd4ZgBgnpjmtF2zRd0CNpDS8RLUm
         XxgCPelgtQ85l6+4TBTsW99u9PxMuCTGPDF62hLXjcA1RbjLYrNy5hTSNBXp0jfot8pA
         xScrt/gPKUyaBlhVFlWyQlcV/qsZaYP6l7vj9wjSPk/suIMe4L+1U8DulUxigwk5wBD4
         +2qw==
X-Gm-Message-State: AOJu0Yy04e/J9wHWC1PkpBcF+QluBO/2BYFVnjl2OfmJhdtcwcKh+jt8
	kunyFE3hMLUNvNqqb5GzdBR91WJWfQDjNg==
X-Google-Smtp-Source: AGHT+IEiYzuvtOzE/nsuH2i8YjcGL7qm7T5nOCx+LrTmFqaalkOAZXa5XbyZAVm6oeClghv/A5qoTQ==
X-Received: by 2002:a81:8104:0:b0:59b:bacb:a84f with SMTP id r4-20020a818104000000b0059bbacba84fmr36356225ywf.47.1697440635163;
        Mon, 16 Oct 2023 00:17:15 -0700 (PDT)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com. [209.85.128.180])
        by smtp.gmail.com with ESMTPSA id s67-20020a815e46000000b005a7aef2c1c3sm2007845ywb.132.2023.10.16.00.17.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Oct 2023 00:17:14 -0700 (PDT)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-5a7e5dc8573so51670117b3.0;
        Mon, 16 Oct 2023 00:17:14 -0700 (PDT)
X-Received: by 2002:a81:47c6:0:b0:59b:1f6d:1958 with SMTP id
 u189-20020a8147c6000000b0059b1f6d1958mr31275633ywa.46.1697440633941; Mon, 16
 Oct 2023 00:17:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231009-approve-verbalize-ce9324858e76@wendy>
 <20231009-smog-gag-3ba67e68126b@wendy> <ZSzTqgVNSD9Q7V6H@APC323>
In-Reply-To: <ZSzTqgVNSD9Q7V6H@APC323>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 16 Oct 2023 09:17:01 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUV3bJmqWysPak4085ZXCn7x7fZOnfnceGxWrdC7cB3pw@mail.gmail.com>
Message-ID: <CAMuHMdUV3bJmqWysPak4085ZXCn7x7fZOnfnceGxWrdC7cB3pw@mail.gmail.com>
Subject: Re: [PATCH v3 4/6] riscv: dts: renesas: convert isa detection to new properties
To: Yu-Chien Peter Lin <peterlin@andestech.com>
Cc: Conor Dooley <conor.dooley@microchip.com>, linux-riscv@lists.indradead.org, 
	conor@kernel.org, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Daire McNamara <daire.mcnamara@microchip.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Emil Renner Berthing <kernel@esmil.dk>, 
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Chen Wang <unicorn_wang@outlook.com>, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Yu-Chien,

On Mon, Oct 16, 2023 at 8:10=E2=80=AFAM Yu-Chien Peter Lin
<peterlin@andestech.com> wrote:
> On Mon, Oct 09, 2023 at 10:37:48AM +0100, Conor Dooley wrote:
> > Convert the RZ/Five devicetrees to use the new properties
> > "riscv,isa-base" & "riscv,isa-extensions".
> > For compatibility with other projects, "riscv,isa" remains.
> >
> > Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> >  arch/riscv/boot/dts/renesas/r9a07g043f.dtsi | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/arch/riscv/boot/dts/renesas/r9a07g043f.dtsi b/arch/riscv/b=
oot/dts/renesas/r9a07g043f.dtsi
> > index b0796015e36b..eb301d8eb2b0 100644
> > --- a/arch/riscv/boot/dts/renesas/r9a07g043f.dtsi
> > +++ b/arch/riscv/boot/dts/renesas/r9a07g043f.dtsi
> > @@ -24,6 +24,9 @@ cpu0: cpu@0 {
> >                       reg =3D <0x0>;
> >                       status =3D "okay";
> >                       riscv,isa =3D "rv64imafdc";
> > +                     riscv,isa-base =3D "rv64i";
> > +                     riscv,isa-extensions =3D "i", "m", "a", "f", "d",=
 "c", "zicntr", "zicsr",
> > +                                            "zifencei", "zihpm";
>
> We do have zihpm, and OpenSBI can also probe its existence.
>
> Boot HART ISA Extensions  : zihpm
> Boot HART MHPM Info       : 4 (0x00000078)

Thank you, I hadn't digested the full output from OpenSBI yet, and
I can confirm this is present in that output.

Acked-by: Geert Uytterhoeven <geert+renesas@glider.be>

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

