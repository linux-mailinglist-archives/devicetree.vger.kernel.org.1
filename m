Return-Path: <devicetree+bounces-5811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E9B7B7FFD
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 14:57:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7BADF2813F8
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 12:57:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35AF313FF9;
	Wed,  4 Oct 2023 12:57:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA82E13AF9
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 12:57:54 +0000 (UTC)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAA67C9;
	Wed,  4 Oct 2023 05:57:52 -0700 (PDT)
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-d9191f0d94cso747192276.3;
        Wed, 04 Oct 2023 05:57:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696424272; x=1697029072;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nNWbuPqGRcDinjfq6bAk+Y11zIkNJyvZkAmw9q5qsww=;
        b=Ap1xCr5/lhNzhs2f7YCyAnn4I74pbz66+Dcit47dWg4d0XNqDEA5EIrpXILox6Xru9
         bNs+QibL5/LWXzHP0e3u5zrB/x9hilhiXykGYd9nQSlH0JZE50SeD+DpoweBmTQo1QOB
         Aj0sPpudR4rXTBqg1CFB7fk4FI7aIyurIERsTiC1yzupMf3875KZv+/LTktQXJ7iqmlp
         2LFTOTAN+bhx5IQH2vbjSYnf5vGgM04EQJJyHFb4wwYSqNVCp+n2MoOeUVZbeQkp2bdV
         Jv4Hschz+lpAJUqvRyVP963wqJKkxQJRJ4K0+2vRHhJh8InI0zHblH8fYGB1vc71H0Fy
         Jd9g==
X-Gm-Message-State: AOJu0Yy0exjksxBwnrGZAydmmuSlenbl8u6A57rKhtZ9GOkf1WM554SH
	tpGFzqq12gX8UwVF94A2/cWGwlOC9oOiUQ==
X-Google-Smtp-Source: AGHT+IFlI7GrP4XnGy9To4+xeIAvkni+tRCqK79kL7PecDcxv0beM5Q3akBlUZPKMCgklB6n6C31nw==
X-Received: by 2002:a5b:e8b:0:b0:d85:ae5c:527a with SMTP id z11-20020a5b0e8b000000b00d85ae5c527amr2037242ybr.10.1696424271990;
        Wed, 04 Oct 2023 05:57:51 -0700 (PDT)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com. [209.85.128.175])
        by smtp.gmail.com with ESMTPSA id l14-20020a5b0b8e000000b00d8679407796sm1009449ybq.48.2023.10.04.05.57.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Oct 2023 05:57:51 -0700 (PDT)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-59bbdb435bfso25087257b3.3;
        Wed, 04 Oct 2023 05:57:51 -0700 (PDT)
X-Received: by 2002:a0d:df12:0:b0:59f:4bea:512f with SMTP id
 i18-20020a0ddf12000000b0059f4bea512fmr2537506ywe.15.1696424271499; Wed, 04
 Oct 2023 05:57:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com> <20230929053915.1530607-16-claudiu.beznea@bp.renesas.com>
In-Reply-To: <20230929053915.1530607-16-claudiu.beznea@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Oct 2023 14:57:39 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUC+-=ni44+1UQyEgSvwOVa2pb_TVyWjM-5BrTGjVChuA@mail.gmail.com>
Message-ID: <CAMuHMdUC+-=ni44+1UQyEgSvwOVa2pb_TVyWjM-5BrTGjVChuA@mail.gmail.com>
Subject: Re: [PATCH v2 15/28] pinctrl: renesas: rzg2l: adapt for different
 SD/PWPR register offsets
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
> SD, PWPR power registers have different offsets b/w RZ/G2L and RZ/G3S.
> Commit adds a per SoC configuration data structure that is initialized wi=
th
> proper register offset for individual SoCs. The struct rzg2l_hwcfg will b=
e
> further extended in next commits.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>
> Changes in v2:
> - collected tags

Thanks, will queue in renesas-pinctrl-for-v6.7.

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

