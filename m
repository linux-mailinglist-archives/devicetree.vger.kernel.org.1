Return-Path: <devicetree+bounces-5821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D9F7B80DF
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 15:30:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 0F6E01F2261B
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 13:30:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD5D614A85;
	Wed,  4 Oct 2023 13:30:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9DEE13AF9
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 13:30:05 +0000 (UTC)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 740ADA9;
	Wed,  4 Oct 2023 06:30:04 -0700 (PDT)
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-d8195078f69so2171826276.3;
        Wed, 04 Oct 2023 06:30:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696426203; x=1697031003;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BSqP1HMvoJHAI12SXee3FprrGwc1/xQXuShGpL6vjO0=;
        b=GblXYSMK7EYzxZj7zOTU4uxu6O/L9f/YoOeQkUg820CjBmVMj6nbxIPMS/wgFCrfua
         aiS4i7CYqXXSypL5KKzhsdeGkcDDk6S+qzw4drm8/rPBwwlPy6uwWKTeG9WCyVjpqTDQ
         zB6uhbqLYPA4Ojhkc3/3d5UJDs3kg/EIwF8y89dikDibgBuWsE0WZSDfmpyF1wp9B5dv
         pNcg+g1Q3Rmn6VYYKgaufcz+Emb3TKJfLVO5YdvP7oJFqn8ehDXEz4yqm6EPTdXffOL+
         3gGAwwZhMMlvhpgMThJkZPuwRnjV3OwtGfM+UjY9BLnoGH6SbVfYwhFi/6XjpG7NlU1g
         /+5g==
X-Gm-Message-State: AOJu0YzoHMIyNiI78poAi2xLaS9jE1S/AYmhR1d6C4dlasWukDItf/yI
	oB8PNuRMvcULPmXw08oOFjcPQS8i18mW0A==
X-Google-Smtp-Source: AGHT+IFF/RAc9wvQa4KjDazTzcAPfz5hdIb9TqwFey5NG1E0jdrh2wW45C3vdyI09Ye8rglamn3rSA==
X-Received: by 2002:a25:8686:0:b0:d81:754a:7cb9 with SMTP id z6-20020a258686000000b00d81754a7cb9mr2009274ybk.50.1696426203249;
        Wed, 04 Oct 2023 06:30:03 -0700 (PDT)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com. [209.85.128.179])
        by smtp.gmail.com with ESMTPSA id j6-20020a056902020600b00d81bb7ef494sm1024809ybs.19.2023.10.04.06.30.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Oct 2023 06:30:02 -0700 (PDT)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-5a24b03e22eso26085347b3.0;
        Wed, 04 Oct 2023 06:30:02 -0700 (PDT)
X-Received: by 2002:a0d:c104:0:b0:571:11ea:b2dd with SMTP id
 c4-20020a0dc104000000b0057111eab2ddmr2405768ywd.32.1696426202539; Wed, 04 Oct
 2023 06:30:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com> <20230929053915.1530607-23-claudiu.beznea@bp.renesas.com>
In-Reply-To: <20230929053915.1530607-23-claudiu.beznea@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Oct 2023 15:29:50 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWN=c3rXKhM4UwYuAkaUp5AbmMf+eCkBe859EHnfxm7+A@mail.gmail.com>
Message-ID: <CAMuHMdWN=c3rXKhM4UwYuAkaUp5AbmMf+eCkBe859EHnfxm7+A@mail.gmail.com>
Subject: Re: [PATCH v2 22/28] arm64: dts: renesas: add initial DTSI for RZ/G3S SoC
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

On Fri, Sep 29, 2023 at 7:40=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.dev> =
wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Add initial DTSI for RZ/G3S SoC. Files in commit has the following
> meaning:
> r9a08g045.dtsi          RZ/G3S family SoC common parts
> r9a08g045s33.dtsi       RZ/G3S R0A08G045S33 SoC specific parts
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>
> Changes in v2:
> - collected tags

Thanks, will queue in renesas-devel for v6.7.

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

