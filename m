Return-Path: <devicetree+bounces-8168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 357957C6F0C
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 15:22:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E4B632827AD
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 13:22:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DD0329409;
	Thu, 12 Oct 2023 13:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202FF29405
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 13:22:16 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01F76CF;
	Thu, 12 Oct 2023 06:22:15 -0700 (PDT)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-5a7dafb659cso12021967b3.0;
        Thu, 12 Oct 2023 06:22:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697116934; x=1697721734;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AIuI2uTX18VQPC9BHJlaZd8vFXkZjrOtgINb889VA28=;
        b=eCHFmY/UQ5M8Hglfe3rocNg930JCqnaEDtypHXAT7RXLyt9DocHYChIAZ0c9djyWMb
         Oyv80iEAcMzusPRk6cNeFxXyvXzTRDHPk4+pF+XlWEX/HiunBkLVR4UmOSwmDxxvcIKN
         PVWeoZOT4LrQzct9/hViZMyD42jGCjblihxxn9YGnrShKeK8l2h6iE1uMMOIVcBkE2/N
         tPylgmxxCykIbRY1x3diJu+qFNDj27xmWJKAiORu/d7u8/P5SGt9y06riLb9wl0iXsuG
         0UZm/deWb7faVyzI+F/GJZGark+Z5rulxnumEhU9razzusG6mjijIzzw1lE8Q8iwPnJJ
         fq9A==
X-Gm-Message-State: AOJu0Yz8U0AKbgaCODbjTcDSq1R/6IgZiFKo/NRNs2p/qCI6emiMiTrX
	CAe5MrYm8aWu8P0dUhVFiXN1NnIoH7pM5Q==
X-Google-Smtp-Source: AGHT+IFohiDCOMCqK+Nd8DkbnJ2qG4u+A/2XF/G4pyd4gZMfQTJ4BUTWp3zMwWjQk8AhIZYmDQgIhA==
X-Received: by 2002:a05:690c:f92:b0:5a7:e85b:b8e8 with SMTP id df18-20020a05690c0f9200b005a7e85bb8e8mr4474586ywb.26.1697116934078;
        Thu, 12 Oct 2023 06:22:14 -0700 (PDT)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com. [209.85.219.176])
        by smtp.gmail.com with ESMTPSA id x132-20020a817c8a000000b005925c896bc3sm5934126ywc.53.2023.10.12.06.22.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Oct 2023 06:22:13 -0700 (PDT)
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-d81d09d883dso1051508276.0;
        Thu, 12 Oct 2023 06:22:13 -0700 (PDT)
X-Received: by 2002:a25:e20b:0:b0:d85:b765:782c with SMTP id
 h11-20020a25e20b000000b00d85b765782cmr21873299ybe.20.1697116933432; Thu, 12
 Oct 2023 06:22:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231010132701.1658737-1-claudiu.beznea.uj@bp.renesas.com> <20231010132701.1658737-3-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20231010132701.1658737-3-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 12 Oct 2023 15:22:01 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXcQcu2ra7EDEdCw4ZPw=ucu-PFzfR2JoB70=HML5t2Fg@mail.gmail.com>
Message-ID: <CAMuHMdXcQcu2ra7EDEdCw4ZPw=ucu-PFzfR2JoB70=HML5t2Fg@mail.gmail.com>
Subject: Re: [PATCH 2/6] clk: renesas: r9a08g045: Add clock and reset support
 for SDHI1 and SDHI2
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: magnus.damm@gmail.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	mturquette@baylibre.com, sboyd@kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 10, 2023 at 3:27=E2=80=AFPM Claudiu <claudiu.beznea@tuxon.dev> =
wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Add clock and reset support for SDHI1 and SDHI2 blocks on
> RZ/G3S (R9A08G045).
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

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

