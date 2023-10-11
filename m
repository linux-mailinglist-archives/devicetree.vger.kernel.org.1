Return-Path: <devicetree+bounces-7587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C62C7C4C31
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 09:44:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1737B28212C
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 07:44:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 469CD199CB;
	Wed, 11 Oct 2023 07:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B521929B0
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 07:44:10 +0000 (UTC)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02644A7;
	Wed, 11 Oct 2023 00:44:08 -0700 (PDT)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-5a7ab31fb8bso27191877b3.1;
        Wed, 11 Oct 2023 00:44:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697010248; x=1697615048;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TAbstOtgr1+rfCeSYFk49UDtYafhh+G+CKqe3mK9hKE=;
        b=OCYNSo9Pwoueo0hUDZZyu9IrweR8X0lE2hwm6+wskOGDrJFJsJv2a/rLFojq4RB7z2
         WNbe3ItyBFkSesBdpRtw+dGdppx/8rqjEgpnKvAxJXnBCcNgHrpdUG/VJZZvTK8ypQYI
         9EIfyC9DU6ANVKMH05eejInAmchMZpLK7YsejzgeXbHOHHdkh/EVbwN11Kr90Ud7gorp
         fNTwqMdrJZqBl0O09TgH5rKbOF2ULe0xB7CXW4NoIeYjCcHuN1E07uoBEPW036G2B8LC
         SlZjaEDiaTcoC4eWae7Y8LRWYIZaz94+DBoNG+5S/U7vXB4cjUBCeZxgR7wcH8RD7aeH
         SzwQ==
X-Gm-Message-State: AOJu0YzLJXm4WHbTZO8bB0RoPhJEeMTygclLb/+xjZxEm/4STBNLOUx6
	jRIbB+Ht3qzwih/C6GQzKRDkb+GWFhilBA==
X-Google-Smtp-Source: AGHT+IHdLacTtW4sW/jjWkcl0xGv09d1La3FoEDUqUukceZWTSqqBhtyI+n0KZvHhXOgXMPduM5ZDg==
X-Received: by 2002:a81:d24f:0:b0:5a1:d398:2e with SMTP id m15-20020a81d24f000000b005a1d398002emr24707493ywl.37.1697010247892;
        Wed, 11 Oct 2023 00:44:07 -0700 (PDT)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com. [209.85.128.169])
        by smtp.gmail.com with ESMTPSA id i84-20020a819157000000b005a7bfec6c34sm1075535ywg.46.2023.10.11.00.44.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 00:44:07 -0700 (PDT)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-5a7ab31fb8bso27191687b3.1;
        Wed, 11 Oct 2023 00:44:07 -0700 (PDT)
X-Received: by 2002:a0d:ead5:0:b0:5a7:e5de:79a4 with SMTP id
 t204-20020a0dead5000000b005a7e5de79a4mr562439ywe.17.1697010247014; Wed, 11
 Oct 2023 00:44:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231010132701.1658737-1-claudiu.beznea.uj@bp.renesas.com>
 <20231010132701.1658737-2-claudiu.beznea.uj@bp.renesas.com>
 <8226bd48-4297-0b32-c733-2e569114a934@gmail.com> <e1c9c2ca-144c-49fe-940c-9ca8ad40e377@tuxon.dev>
In-Reply-To: <e1c9c2ca-144c-49fe-940c-9ca8ad40e377@tuxon.dev>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 11 Oct 2023 09:43:56 +0200
X-Gmail-Original-Message-ID: <CAMuHMdW7jXSFx5kU6PKr55cXw2+Hu_J-Z4NdUk=m_2AxuaOC0g@mail.gmail.com>
Message-ID: <CAMuHMdW7jXSFx5kU6PKr55cXw2+Hu_J-Z4NdUk=m_2AxuaOC0g@mail.gmail.com>
Subject: Re: [PATCH 1/6] clk: renesas: rzg2l: Use %x format specifier to print CLK_ON_R()
To: claudiu beznea <claudiu.beznea@tuxon.dev>
Cc: Sergei Shtylyov <sergei.shtylyov@gmail.com>, magnus.damm@gmail.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	mturquette@baylibre.com, sboyd@kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Claudiu,

On Wed, Oct 11, 2023 at 9:37=E2=80=AFAM claudiu beznea <claudiu.beznea@tuxo=
n.dev> wrote:
> On 10.10.2023 17:52, Sergei Shtylyov wrote:
> > On 10/10/23 4:26 PM, Claudiu wrote:
> >> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>
> >> Use %x format specifier to print CLK_ON_R(). This is easier when
> >> debugging as the value printed will be hexadecimal like in the hardwar=
e
> >> manual. Along with it "0x" has been added in front of the printed valu=
e.
> >>
> >> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >> ---
> >>  drivers/clk/renesas/rzg2l-cpg.c | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/clk/renesas/rzg2l-cpg.c b/drivers/clk/renesas/rzg=
2l-cpg.c
> >> index d62f1bc1f60e..764bd72cf059 100644
> >> --- a/drivers/clk/renesas/rzg2l-cpg.c
> >> +++ b/drivers/clk/renesas/rzg2l-cpg.c
> >> @@ -1213,7 +1213,7 @@ static int rzg2l_mod_clock_endisable(struct clk_=
hw *hw, bool enable)
> >>              return 0;
> >>      }
> >>
> >> -    dev_dbg(dev, "CLK_ON %u/%pC %s\n", CLK_ON_R(reg), hw->clk,
> >> +    dev_dbg(dev, "CLK_ON 0x%x/%pC %s\n", CLK_ON_R(reg), hw->clk,
> >
> >    Perhaps "%#x" instead of "0x%x"?
>
> Yes, better, thanks!

"%#" is not very common in drivers/clk/.

And to me it always raises the question: What does "alternate form" mean
for this conversion specifier and this implementation of vsnprintf()?

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

