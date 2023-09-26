Return-Path: <devicetree+bounces-3465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E5C7AEE7A
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 16:37:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id A24DC1C2074F
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 14:37:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AEE53C16;
	Tue, 26 Sep 2023 14:37:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1E010EF
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 14:37:18 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41AAB116;
	Tue, 26 Sep 2023 07:37:16 -0700 (PDT)
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3ae5e6a536bso224320b6e.1;
        Tue, 26 Sep 2023 07:37:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695739035; x=1696343835;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X6PrewSG4swx9L/T4VeN46rKLAc+cC9QOSk8MgUINPk=;
        b=ZsO5UxeQq9SnVhwphb9cFaGLlv/OGduWQIyiE0qM0W0oP1uwhuittV1dBspXUHNHXj
         zViZG7umxmigwv9D/CWKeVg+i70DNYUZtqH3MIKGz8y0WFQ9QJfmNCY+ADY5VrLqWZan
         6oKEEmMtAw9jtSfP+Wc/oTijnbbk/Os5oZ0ERR4pTliup5/1fSC+4L4zbZfIubCW/jMS
         rLWX80ttrJXD6Cc1YwD2nQ83fwzWXW8fmZEQa1xHs2NawPiQkftvAd92GRUWn2bZzpPv
         UtSoDMc4mN/T1pSnstaUJsbgZ6yylSiHITuuZrYOCRqockzkvVffOeXfv/tzZ39oREzW
         pCsA==
X-Gm-Message-State: AOJu0YzRLGDUnEuqlLLl0n9+dKPoBombu+HiXxdS8TaKqdEjZJ1q9YmF
	iFVHFLX/d4we7NdUPjpoLKqBSCiCbV3RBw==
X-Google-Smtp-Source: AGHT+IGZYWcRgYqgr+ldrPHc3mGpBz/NRwp3iwn4/xPW5znsXqaKB8fkHVkyvs0PSr6FvMoYBtkIWQ==
X-Received: by 2002:a05:6358:9989:b0:142:fb84:92e6 with SMTP id j9-20020a056358998900b00142fb8492e6mr13345347rwb.9.1695739035278;
        Tue, 26 Sep 2023 07:37:15 -0700 (PDT)
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com. [209.85.215.177])
        by smtp.gmail.com with ESMTPSA id i10-20020a633c4a000000b005740aa41237sm9699680pgn.74.2023.09.26.07.37.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Sep 2023 07:37:15 -0700 (PDT)
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-578a91ac815so5812761a12.1;
        Tue, 26 Sep 2023 07:37:14 -0700 (PDT)
X-Received: by 2002:a81:9c03:0:b0:59b:54b5:7d66 with SMTP id
 m3-20020a819c03000000b0059b54b57d66mr9404795ywa.34.1695738558151; Tue, 26 Sep
 2023 07:29:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com>
 <20230912045157.177966-31-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdV2GEKF0QjKudz529_tmUksTNMJtZu9NwC18KX-AXwaeg@mail.gmail.com> <64e91f8d-a94e-c835-75ef-ce9ab557dc54@tuxon.dev>
In-Reply-To: <64e91f8d-a94e-c835-75ef-ce9ab557dc54@tuxon.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 26 Sep 2023 16:29:05 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV_xdNtM3Qv+9iqiyHCALMPx4DzC4-DWbXLCtum-LS_Hw@mail.gmail.com>
Message-ID: <CAMuHMdV_xdNtM3Qv+9iqiyHCALMPx4DzC4-DWbXLCtum-LS_Hw@mail.gmail.com>
Subject: Re: [PATCH 30/37] pinctrl: renesas: rzg2l: add support for RZ/G3S SoC
To: claudiu beznea <claudiu.beznea@tuxon.dev>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	ulf.hansson@linaro.org, linus.walleij@linaro.org, gregkh@linuxfoundation.org, 
	jirislaby@kernel.org, magnus.damm@gmail.com, catalin.marinas@arm.com, 
	will@kernel.org, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	biju.das.jz@bp.renesas.com, quic_bjorande@quicinc.com, arnd@arndb.de, 
	konrad.dybcio@linaro.org, neil.armstrong@linaro.org, nfraprado@collabora.com, 
	rafal@milecki.pl, wsa+renesas@sang-engineering.com, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Claudiu,

On Tue, Sep 26, 2023 at 12:58=E2=80=AFPM claudiu beznea
<claudiu.beznea@tuxon.dev> wrote:
> On 21.09.2023 17:58, Geert Uytterhoeven wrote:
> > On Tue, Sep 12, 2023 at 6:53=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.d=
ev> wrote:
> >> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>
> >> Add basic support for RZ/G3S to be able to boot from SD card, have a
> >> running console port and use GPIOs. RZ/G3S has 82 general-purpose IO
> >> ports. Support for the remaining pin functions (e.g. Ethernet, XSPI)
> >> will be added along with controller specific support.
> >>
> >> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >
> > Thanks for your patch!
> >
> >> --- a/drivers/pinctrl/renesas/pinctrl-rzg2l.c
> >> +++ b/drivers/pinctrl/renesas/pinctrl-rzg2l.c
> >> @@ -1330,6 +1336,36 @@ static const u32 r9a07g043_gpio_configs[] =3D {
> >>         RZG2L_GPIO_PORT_PACK(6, 0x22, RZG2L_MPXED_PIN_FUNCS),
> >>  };
> >>
> >> +static const u32 r9a08g045_gpio_configs[] =3D {
> >> +       RZG2L_GPIO_PORT_PACK(4, 0x20, RZG3S_MPXED_PIN_FUNCS(A)),      =
                  /* P0  */
> >> +       RZG2L_GPIO_PORT_PACK(5, 0x30, RZG2L_MPXED_ETH_PIN_FUNCS(PIN_CF=
G_IOLH_C |
> >> +                                                               PIN_CF=
G_IO_VMC_ETH0)),  /* P1 */
> >
> > P1_0 and P7_0 have IEN functionality.
> > I don't know how to represent that...
>
> I think Prabhakar's series at [1] may help (or make a step forward) in
> supporting this. I have in mind to wait for it and adapt RZ/G3S afterward=
s.

OK.

> [1]
> https://lore.kernel.org/all/20230630120433.49529-2-prabhakar.mahadev-lad.=
rj@bp.renesas.com/

> > Is there any specific reason you left out the XSPI, Audio clock, and I3=
C pins?
>
> I kept only the necessary support for booting and having SDs, GPIO
> functional as a way of proving that all that has been added has been test=
ed
> (similar to clock support). Thus, with e.g. XSPI support I will add at th=
e
> same time clocks and pinctrl.

IC.  I all fairness, you did write in your patch description that support
for e.g. XSPI will be added later, so I'm to blame here.

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

