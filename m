Return-Path: <devicetree+bounces-5806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6677B7F6E
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 14:42:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 5F7651F22473
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 12:42:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC23211C93;
	Wed,  4 Oct 2023 12:42:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5220310A37
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 12:42:11 +0000 (UTC)
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E408CB0;
	Wed,  4 Oct 2023 05:42:09 -0700 (PDT)
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-59e77e4f707so25496427b3.0;
        Wed, 04 Oct 2023 05:42:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696423329; x=1697028129;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qfYIbxbhG6tWeSHXOFYLnB4DgJpmc2ZApultzEIESN0=;
        b=daDc+VnZ4OLJoa/30MTWxayGcMFAcPaZvW1bh+FjAWg6ASCY8xCqYS5B8QFcN20nXg
         YnOTmvk79dSHDEMYdhl7xPz1LU0pgxOc03zEcT2cB6HC1jhWCgXBdM9zDgTNwdtxFE/J
         waFUoPofNOxHZs5YmDAJyn3VrTjJnrrjKFu17+J6hkw5chb1Yr19UOH7/w7VDrfiqPNP
         SKNxss0Os5OfKdpWPDgogXAeCFKm29PqYgE3Ovr8OwFZ/fsD/KYknDhmKkgjBwWrePXZ
         w61/8z8DzGCtS0r6GNWpN7pLKNk5YlrwrUcftlLldwBsmlBAl749Uf3nvh07Q8VSsCBr
         eg7w==
X-Gm-Message-State: AOJu0Yygn9wOwRBkPX81EpqtZqE24rxEeZKRZC+fhfVkt+0S//Lg4BfQ
	ijLZqNUx9khmHJjNcEeVfb8Cr35rilcAfQ==
X-Google-Smtp-Source: AGHT+IHKRCJtV45UvjJ3xL9x6x22b+xGRzz5BnzUqtec7blg6RmzYdiB0QNwvZUKP2uh+TcwgT8pfw==
X-Received: by 2002:a0d:e888:0:b0:595:9770:6914 with SMTP id r130-20020a0de888000000b0059597706914mr2096661ywe.35.1696423328797;
        Wed, 04 Oct 2023 05:42:08 -0700 (PDT)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com. [209.85.128.171])
        by smtp.gmail.com with ESMTPSA id a130-20020a0dd888000000b00583cf4ed41esm1120727ywe.2.2023.10.04.05.42.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Oct 2023 05:42:08 -0700 (PDT)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-59e77e4f707so25496137b3.0;
        Wed, 04 Oct 2023 05:42:08 -0700 (PDT)
X-Received: by 2002:a81:4fcc:0:b0:59b:fb60:fbb9 with SMTP id
 d195-20020a814fcc000000b0059bfb60fbb9mr2261281ywb.9.1696423327904; Wed, 04
 Oct 2023 05:42:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com> <20230929053915.1530607-14-claudiu.beznea@bp.renesas.com>
In-Reply-To: <20230929053915.1530607-14-claudiu.beznea@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Oct 2023 14:41:55 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVC5QKm2PgY4ObS5KqcOzmxo9J3OtaxA64+Miccuz6poA@mail.gmail.com>
Message-ID: <CAMuHMdVC5QKm2PgY4ObS5KqcOzmxo9J3OtaxA64+Miccuz6poA@mail.gmail.com>
Subject: Re: [PATCH v2 13/28] clk: renesas: add minimal boot support for
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
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 29, 2023 at 7:39=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.dev> =
wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Add minimal clock and reset support for RZ/G3S SoC to be able to boot
> Linux from SD Card/eMMC. This includes necessary core clocks for booting
> and GIC, SCIF, GPIO, SD0 mod clocks and resets.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
>
> Changes in v2:
> - used RZ/G3S specific definition for CPG_CLKDIVSTATUS register
> - removed CLK_PLL3_DIV2_2, CLK_SD0_DIV, CLK_S0_DIV2
> - added space after { and before } in array initializations
> - s/indexes/indices/g
> - s/.osc/OSC and moved it in core output clocks section
> - s/.osc2/OSC2 and moved it in core output clock section
> - s/SD0_DIV4/.sd0_div4

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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

