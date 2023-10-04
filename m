Return-Path: <devicetree+bounces-5816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4093C7B80A5
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 15:18:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id B00E01F225C8
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 13:18:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0673F1428C;
	Wed,  4 Oct 2023 13:18:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86CD71427F
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 13:18:18 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67F369E;
	Wed,  4 Oct 2023 06:18:17 -0700 (PDT)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-59c268676a9so25262317b3.0;
        Wed, 04 Oct 2023 06:18:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696425496; x=1697030296;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/wMp+Vg307cSobQ6lm2WKyfxk9n+yqBtBGToupSFTGM=;
        b=misch/BJVoWoaIq2vp15aDmvzrFy0U7a5fO8B/2Wl0/a/GxKCAQFyxcOQVfsfBB3tW
         pWNTab4AH9kvqKqir+8OoAgxI3GKE5V32f81itWfNs2Ju6/91L6NKwHTF0sDsjyYYcSe
         ywN41ADhMthIm13PmqexFHNCfdXeKDVHSJDuNYYVenIvNdkptIu8kFDcO5Qsju+jsLOo
         oUtjeD7xtB/20F98l3pAKkPvzCKnLZgqJPL/XERAp2YO3qqjnT4mFAaMPVeQWfyS4c26
         SIDushCEhA5F61jsJV8gCW5Rszw02fmOprGehWFy9klC6rMckK+Ic2dIifB97WNH/OPp
         Ms5A==
X-Gm-Message-State: AOJu0YxTRNHjcNaVvpMfNaKwRlVw2IfLqn9sQ1RnbIopCXVpqHpNNo3F
	BWIK/2gaIH+braaXjUsRZgGMZckZUJEOvA==
X-Google-Smtp-Source: AGHT+IFjpDJ/TWx4mYP1vTavRlFj+pulva715y9H09RW7jK91X92kkZz4JebvV1USCCHTPWyZrqxgA==
X-Received: by 2002:a81:5c57:0:b0:561:a123:1041 with SMTP id q84-20020a815c57000000b00561a1231041mr2480757ywb.29.1696425496426;
        Wed, 04 Oct 2023 06:18:16 -0700 (PDT)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com. [209.85.128.175])
        by smtp.gmail.com with ESMTPSA id n16-20020a819e50000000b005837633d9cbsm1114124ywj.64.2023.10.04.06.18.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Oct 2023 06:18:16 -0700 (PDT)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-5a229ac185aso25149567b3.1;
        Wed, 04 Oct 2023 06:18:15 -0700 (PDT)
X-Received: by 2002:a81:4811:0:b0:5a1:eec1:b42e with SMTP id
 v17-20020a814811000000b005a1eec1b42emr2615702ywa.0.1696425495727; Wed, 04 Oct
 2023 06:18:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com> <20230929053915.1530607-18-claudiu.beznea@bp.renesas.com>
In-Reply-To: <20230929053915.1530607-18-claudiu.beznea@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Oct 2023 15:18:03 +0200
X-Gmail-Original-Message-ID: <CAMuHMdX+3PinKKrWbtnaGGJZcARSyMewQR6QvYVGnM7NT0ObXQ@mail.gmail.com>
Message-ID: <CAMuHMdX+3PinKKrWbtnaGGJZcARSyMewQR6QvYVGnM7NT0ObXQ@mail.gmail.com>
Subject: Re: [PATCH v2 17/28] pinctrl: renesas: rzg2l: move ds and oi to SoC
 specific configuration
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
> Move drive strength and output impedance values to SoC specific
> configuration data structure (struct rzg2l_hwcfg). This allows extending
> the drive strength support for RZ/G3S. Along with this the DS values
> were converted to uA for simple integration with RZ/G3S support.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>
> Changes in v2:
> - s/indexes/indices in code documentation
> - s/micro amps/uA in code documentation
> - added RZG2L_IOLH_MAX_DS_ENTRIES for "+ 4" statements in code
> - changed struct rzg2l_hwcfg::iolh_groupb_oi[] size to 4 to avoid
>   oversize it in next commits when RZG2L_IOLH_IDX_MAX will be increased
>   and thus avoiding issues when executing
>   "if (index =3D=3D ARRAY_SIZE(hwcfg->iolh_groupb_oi))" in
>   rzg2l_pinctrl_pinconf_set()
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

