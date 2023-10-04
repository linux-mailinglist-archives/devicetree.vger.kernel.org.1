Return-Path: <devicetree+bounces-5829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CCB7B8111
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 15:34:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id AE4111C20444
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 13:34:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26AA014AA7;
	Wed,  4 Oct 2023 13:34:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D84C13AF9
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 13:34:55 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DDAEA9;
	Wed,  4 Oct 2023 06:34:54 -0700 (PDT)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-59b5484fbe6so25419887b3.1;
        Wed, 04 Oct 2023 06:34:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696426493; x=1697031293;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uLCUsporDKIFmsMxBll0mPmZXPU4EoOlZka8Vi8S45s=;
        b=JqZvrWLJtg+ZgV4flPdwjx4z0V5BLr7AHnCzQS725rYlED0S8qTmrs0h/lPoycrNGJ
         hyI9L7ogLL8UJC0AaN2c4loIkuhCe0mCCDi8WzD2zmAKZ8h0KGgBfchq5NFWUVf+1ZXd
         +kEJKNjQB4+LzoMk8a0BHG7GXfXDprCP10YS/z60jJb7xmZC1CC7O3eBIyell2p2QrNt
         LgE3K5WG6t3bpm0eCMMUSiXjNDJhfcLiX7kE1HUk36GEcq5dkMWR/B1H+XNgxd+yvpiF
         BJIpfUwXp4ywXYcs3m/NDKHv+HMLRGMREk/f91RF3a5ZfPtGOAX4oq/PcUsJpJNLconG
         crGw==
X-Gm-Message-State: AOJu0Yy+yL2Q5ULHuMwTjHnqBnw3ogw9Jb+XpFdfLm7Ae5BSahxaOtEo
	FL3KCVh2i6YcI/psY/jJVZfJtxBogkcP0A==
X-Google-Smtp-Source: AGHT+IHfp/PfHchI4K8HSjClRLsre6rlrd11GDlmmSIEVPqOr054sftjUB6yFRW+OGCHLgZFyMnsBw==
X-Received: by 2002:a81:6203:0:b0:59b:bd55:8452 with SMTP id w3-20020a816203000000b0059bbd558452mr2777290ywb.36.1696426493219;
        Wed, 04 Oct 2023 06:34:53 -0700 (PDT)
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com. [209.85.128.172])
        by smtp.gmail.com with ESMTPSA id c2-20020a0dc102000000b00559f1cb8444sm1142888ywd.70.2023.10.04.06.34.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Oct 2023 06:34:52 -0700 (PDT)
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-59b5484fbe6so25419417b3.1;
        Wed, 04 Oct 2023 06:34:52 -0700 (PDT)
X-Received: by 2002:a81:7c86:0:b0:59f:687c:fb36 with SMTP id
 x128-20020a817c86000000b0059f687cfb36mr2554657ywc.45.1696426492360; Wed, 04
 Oct 2023 06:34:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com> <20230929053915.1530607-29-claudiu.beznea@bp.renesas.com>
In-Reply-To: <20230929053915.1530607-29-claudiu.beznea@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Oct 2023 15:34:40 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUJkmZG+7gYNav01Y+7pfYKA5fPV3WygV8n_VyEZ-cDfQ@mail.gmail.com>
Message-ID: <CAMuHMdUJkmZG+7gYNav01Y+7pfYKA5fPV3WygV8n_VyEZ-cDfQ@mail.gmail.com>
Subject: Re: [PATCH v2 28/28] arm64: defconfig: enable RZ/G3S (R9A08G045) SoC
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
> Enable config flag for Renesas RZ/G3S (R9A08G045) SoC.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>
> Changes in v2:
> - collected tags

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.7.

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

