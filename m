Return-Path: <devicetree+bounces-5805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EC01B7B7F59
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 14:38:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 8F14F2815A7
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 12:38:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06CBF10A09;
	Wed,  4 Oct 2023 12:38:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACBB6101F6
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 12:38:05 +0000 (UTC)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B77B198E;
	Wed,  4 Oct 2023 05:37:26 -0700 (PDT)
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-d86a0c97ae6so2231390276.2;
        Wed, 04 Oct 2023 05:37:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696423045; x=1697027845;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m0eRmMumZAzpcA204HIbmaGshHcqOkFU7CedEjUB2w4=;
        b=WHpuGKIMw6PHJglUambBsLHBibIdoddNLjl35TCosAiWwzK1FHRIx4GeppfLBHeaqh
         nJ3qWqAR94uUDta8lHu5VLx1s9dTZ5idFEdYm6nxC8BMRsuzQ2+miFaDoynJJKMhPs2G
         Z+XKluqj1i270iyQLQk8OcdSPe50pH6Rc239UA/Y9PRZiaZ5d5K0TC0B0tpzSpjLiu+u
         UEln6+ComQjfzQ7VnSKiTAlM9iMELH09Y/ISY471mh3L5u+RKCdRxHxfFvd3ypuh7w7W
         gVtcE3LsxuzD39BeNrVf7/wk7xlDmHDhZFXwullxFMKBJ8de0uSC2nZ1saIFo1SJtKnT
         hOgw==
X-Gm-Message-State: AOJu0YzFUpRDbb0JHzokQwzBu9K3QmryYZAuKQz5xQqPw8LpFzgUJqzm
	iM4qLk6r/14rZOAKHF4Scpf+9dtzrmEx9A==
X-Google-Smtp-Source: AGHT+IE6aiPISN3Sy+GQHhlmGqas7LqydsUQB/Ki8oqiQroN5qUifjPwQEhEdkJyDSMcZLrmJMAqLQ==
X-Received: by 2002:a25:3601:0:b0:d22:c8b9:8c9b with SMTP id d1-20020a253601000000b00d22c8b98c9bmr1963001yba.13.1696423044823;
        Wed, 04 Oct 2023 05:37:24 -0700 (PDT)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com. [209.85.128.169])
        by smtp.gmail.com with ESMTPSA id 194-20020a250dcb000000b00d748501d9b4sm1025252ybn.21.2023.10.04.05.37.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Oct 2023 05:37:24 -0700 (PDT)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-5a1f00b75aaso23789787b3.2;
        Wed, 04 Oct 2023 05:37:24 -0700 (PDT)
X-Received: by 2002:a81:a24a:0:b0:59f:7f8e:dc4a with SMTP id
 z10-20020a81a24a000000b0059f7f8edc4amr2814911ywg.22.1696423044119; Wed, 04
 Oct 2023 05:37:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com> <20230929053915.1530607-13-claudiu.beznea@bp.renesas.com>
In-Reply-To: <20230929053915.1530607-13-claudiu.beznea@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Oct 2023 14:37:11 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUnt-bLeJmQxbviWAmgmCNHb8EDo1QM5LyhYJRA07KGqA@mail.gmail.com>
Message-ID: <CAMuHMdUnt-bLeJmQxbviWAmgmCNHb8EDo1QM5LyhYJRA07KGqA@mail.gmail.com>
Subject: Re: [PATCH v2 12/28] dt-bindings: clock: renesas,rzg2l-cpg: document
 RZ/G3S SoC
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
> Add documentation for RZ/G3S CPG. RZ/G3S CPG module is almost identical
> with the one available in RZ/G2{L, UL} the exception being some core
> clocks as follows:
> - SD clock is composed by a mux and a divider and the divider
>   has some limitation (div =3D 1 cannot be set if mux rate is 800MHz).
> - there are 3 SD clocks
> - OCTA and TSU clocks are specific to RZ/G3S
> - PLL1/4/6 are specific to RZ/G3S with its own computation formula
> Even with this RZ/G3S could use the same bindings as RZ/G2L.
>
> Along with documentation bindings for the RZ/G3S (R9A08G045) Clock Pulse
> Generator (CPG) core clocks, module clocks and resets were added.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
>
> Changes in v2:
> - collected Rob's tag
> - squashed with
>   [PATCH 21/37] dt-bindings: clock: add r9a08g045 CPG clocks and resets
>   from v1
> - updated commit message to reflect that bindings were also added to
>   this patch
> - removed R9A08G045_USB_SCLK
> - @Geert: please note I haven't collected your Rb tag as I did the squash

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in a branch shared by renesas-clk and renesas-dts for v6.7.

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

