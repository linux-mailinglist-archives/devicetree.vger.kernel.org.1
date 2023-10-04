Return-Path: <devicetree+bounces-5722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E93F87B79C6
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 10:11:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 9A8D4281452
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 08:11:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FD95101E9;
	Wed,  4 Oct 2023 08:11:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CD2D2E6
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 08:11:28 +0000 (UTC)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E01A4A6;
	Wed,  4 Oct 2023 01:11:27 -0700 (PDT)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-59e77e4f707so22540467b3.0;
        Wed, 04 Oct 2023 01:11:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696407087; x=1697011887;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VNgqb3ogEHljK/s/zCJeiDzbGvte6UXqv8/D2qJ2ym4=;
        b=ZYK5m64MOnGA8YTAeV2tiORL9AdLx+4BXWrpEWgCPvGU1iFdKoTSHRV8jLvzlLSWLq
         LLfTGWFxXqh5vjm8fw69MPC0XJkLEI3Ig5V21BIdk3BA1T9CIs4VxwE9+UdyZCNpfi+A
         zs09hajQpWTwDVY+vdKZFqlDQJI3oYwR+yXBd9KtgOatUkapR1bMWi8P9p0eRNIlBrm8
         Ea3pWSDExvuXZjnJub+dXDCS4NZzYNXrUtx/KUkoZebs3S9qAhnBeGIAk6l3zoVqMNzC
         LLOYWGj3Nh6QzABN3WXGquzF2o+sILLslqrptA5AwVFOvV7R2pg3zN/v76agdAm6Ae+F
         1LYw==
X-Gm-Message-State: AOJu0YwY5mCRbNBSyEGQpnYEUuoUK2nLzETetO/ssUue5KuB04T6GIQP
	BKgt0oiSkVXQwuJA2ak0/42A/2e7wIWPDA==
X-Google-Smtp-Source: AGHT+IFeroNisVnSgtZNX1YFfffHyQZ0Z4NTkeg2rgkAf7MQgLzryT6LktpCzDxf7u83desFvnesWQ==
X-Received: by 2002:a81:a008:0:b0:59f:5041:bedb with SMTP id x8-20020a81a008000000b0059f5041bedbmr1838913ywg.8.1696407086812;
        Wed, 04 Oct 2023 01:11:26 -0700 (PDT)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com. [209.85.128.179])
        by smtp.gmail.com with ESMTPSA id a74-20020a0dd84d000000b005a20ab8a184sm995752ywe.31.2023.10.04.01.11.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Oct 2023 01:11:26 -0700 (PDT)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-59e77e4f707so22540287b3.0;
        Wed, 04 Oct 2023 01:11:26 -0700 (PDT)
X-Received: by 2002:a0d:d7cc:0:b0:584:4bbb:963b with SMTP id
 z195-20020a0dd7cc000000b005844bbb963bmr1795264ywd.15.1696407085921; Wed, 04
 Oct 2023 01:11:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com> <20230929053915.1530607-7-claudiu.beznea@bp.renesas.com>
In-Reply-To: <20230929053915.1530607-7-claudiu.beznea@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Oct 2023 10:11:13 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUgVfxWrVP51b3nbeDThedjzWGJb95-oU5bdPeTTjWu8Q@mail.gmail.com>
Message-ID: <CAMuHMdUgVfxWrVP51b3nbeDThedjzWGJb95-oU5bdPeTTjWu8Q@mail.gmail.com>
Subject: Re: [PATCH v2 06/28] clk: renesas: rzg2l: remove critical area
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linus.walleij@linaro.org, gregkh@linuxfoundation.org, jirislaby@kernel.org, 
	magnus.damm@gmail.com, catalin.marinas@arm.com, will@kernel.org, 
	quic_bjorande@quicinc.com, konrad.dybcio@linaro.org, arnd@arndb.de, 
	neil.armstrong@linaro.org, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	biju.das.jz@bp.renesas.com, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 29, 2023 at 7:39=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.dev> =
wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> spinlock in rzg2l_mod_clock_endisable() is intended to protect the access=
es
> to hardware register. There is no need to protect the instructions that s=
et
> temporary variable which will be then written to register. With this only
> one write to one clock register is executed thus locking/unlocking rmw_lo=
ck
> is removed.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
>
> Changes in v2:
> - removed also the spinlock
> - s/reduce/remove in patch title

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-clk-for-v6.7.

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

