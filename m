Return-Path: <devicetree+bounces-6078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FB57B9CD6
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 13:55:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id A7C371C20909
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 11:55:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43702134B8;
	Thu,  5 Oct 2023 11:55:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8086F134A7
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 11:55:45 +0000 (UTC)
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 829262572F;
	Thu,  5 Oct 2023 04:55:43 -0700 (PDT)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-5a1d0fee86aso9792567b3.2;
        Thu, 05 Oct 2023 04:55:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696506940; x=1697111740;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wfh44W/W9192NRXUjtg9r/H6uVn53dQXRsrSz8XlQCQ=;
        b=ec/QTW0ftKxQMoypqlbN5hJQzUbrxr6JMqAztg5YN4ARZUaRDOUFaaG5OboFCaA5+v
         lVQfsa5vQzeL3XNbLhs2i+D6VukUKplsEeJIcvh1YMBXZGg8X8L20JHUTi83GRV94mCq
         I0rOQJb8VZPRabT/liVPFvp3dsuf5UFzV3bFtpr3xD47PglFj0k4Ii/ladmbqTbC73++
         Bio24XQwuemw2B/oIyISSRIEhxs23h2/y40LtBTc6y/nHzaAtQsILTorXwcavFWkysAc
         5Aao1eJUxF+u6XViokw5Mhq2S9aYlllkwuwoxEeGA+OAEn/GKTz9vkvNMyCSnM8UDkIW
         FG+A==
X-Gm-Message-State: AOJu0YzvoWpoM+jedWnRpxIP8mDsibNYay1xAlTBAW33KrwQKMeZaVFh
	RCvhvK7QXep/hbV8Z8P3rprMLAcTrr5dJg==
X-Google-Smtp-Source: AGHT+IEGm4x31KdTdpLX23XLA/l+elkcLcUPInSV3IW/nYogW0bhqLyG3r0od3qkBH9xkyODwsZL3Q==
X-Received: by 2002:a81:778b:0:b0:59b:ca2f:6eff with SMTP id s133-20020a81778b000000b0059bca2f6effmr5165133ywc.40.1696506940351;
        Thu, 05 Oct 2023 04:55:40 -0700 (PDT)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com. [209.85.128.180])
        by smtp.gmail.com with ESMTPSA id v12-20020a81a54c000000b0059a34cfa2a8sm448652ywg.62.2023.10.05.04.55.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Oct 2023 04:55:40 -0700 (PDT)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-59bebd5bdadso9966737b3.0;
        Thu, 05 Oct 2023 04:55:40 -0700 (PDT)
X-Received: by 2002:a0d:e3c6:0:b0:5a1:635e:e68 with SMTP id
 m189-20020a0de3c6000000b005a1635e0e68mr5446457ywe.46.1696506939824; Thu, 05
 Oct 2023 04:55:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230825090518.87394-1-biju.das.jz@bp.renesas.com>
 <CAMuHMdVEBREj_Y-wQ=fRQu9mnYyCF6Ut7ZhvRkM0N6eWFXp0Qw@mail.gmail.com> <OS0PR01MB592246E77539C513C1A7FCD686E5A@OS0PR01MB5922.jpnprd01.prod.outlook.com>
In-Reply-To: <OS0PR01MB592246E77539C513C1A7FCD686E5A@OS0PR01MB5922.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 5 Oct 2023 13:55:28 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXEEshPhaJCsmkTCagTcwv813CdaY1h0ORdoYe5RCTUNw@mail.gmail.com>
Message-ID: <CAMuHMdXEEshPhaJCsmkTCagTcwv813CdaY1h0ORdoYe5RCTUNw@mail.gmail.com>
Subject: Re: [PATCH v4] arm64: dts: renesas: rz-smarc-common: Use versa3 clk
 for audio mclk
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Aug 31, 2023 at 7:05=E2=80=AFPM Biju Das <biju.das.jz@bp.renesas.co=
m> wrote:
> > Subject: Re: [PATCH v4] arm64: dts: renesas: rz-smarc-common: Use versa=
3
> > clk for audio mclk
> > On Fri, Aug 25, 2023 at 11:05=E2=80=AFAM Biju Das <biju.das.jz@bp.renes=
as.com>
> > wrote:
> > > Currently audio mclk uses a fixed clk of 11.2896MHz (multiple of
> > 44.1kHz).
> > > Replace this fixed clk with the programmable versa3 clk that can
> > > provide the clocking to support both 44.1kHz (with a clock of
> > > 11.2896MHz) and 48kHz (with a clock of 12.2880MHz), based on audio
> > > sampling rate for playback and record.
> > >
> > > Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> > > ---
> > > v3->v4:
> > >  * Dropped clock-output-names from dtsi files.
> > >  * Updated example with dropping clock-output-names.
> >
> > Thanks for the update!
> >
> > > --- a/arch/arm64/boot/dts/renesas/rzg2l-smarc.dtsi
> > > +++ b/arch/arm64/boot/dts/renesas/rzg2l-smarc.dtsi
> > > @@ -105,6 +105,26 @@ &i2c3 {
> > >
> > >         status =3D "okay";
> > >
> > > +       versa3: versa3@68 {
> >
> > clock-generator@ (everywhere)
> OK.
>
> >
> > > +               compatible =3D "renesas,5p35023";
> > > +               reg =3D <0x68>;
> > > +               #clock-cells =3D <1>;
> > > +               clocks =3D <&x1>;
> > > +
> > > +               renesas,settings =3D [
> > > +                       80 00 11 19 4c 02 23 7f 83 19 08 a9 5f 25 24 =
bf
> > > +                       00 14 7a e1 00 00 00 00 01 55 59 bb 3f 30 90 =
b6
> > > +                       80 b0 45 c4 95
> > > +               ];
> > > +
> > > +               assigned-clocks =3D <&versa3 0>, <&versa3 1>,
> > > +                                 <&versa3 2>, <&versa3 3>,
> > > +                                 <&versa3 4>, <&versa3 5>;
> > > +               assigned-clock-rates =3D <24000000>, <11289600>,
> > > +                                      <11289600>, <12000000>,
> > > +                                      <25000000>, <12288000>;
> > > +       };
> >
> > Please move this node down, to preserve sort order (by unit-address).
> >
> > Same comments arch/arm64/boot/dts/renesas/rzg2lc-smarc.dtsi
> >
> > Unless we're gonna need a new iteration for some other reason (the
> > corresponding fixes for the clock index order are not yet in linux-next=
), I
> > can fix the above while applying...

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.7, now the driver dependency
is in v6.6-rc4.

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

