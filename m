Return-Path: <devicetree+bounces-5597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 77ABB7B6CCD
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 17:15:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 731681C2081B
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 15:15:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61F0E347CE;
	Tue,  3 Oct 2023 15:15:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6018FBF1
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 15:15:08 +0000 (UTC)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5409AC9;
	Tue,  3 Oct 2023 08:15:07 -0700 (PDT)
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-d89ba259964so1083560276.2;
        Tue, 03 Oct 2023 08:15:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696346106; x=1696950906;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cNhSWAJYWgEDGwtiwjiH8QlfR14j4fmvgyQzNmxJTSU=;
        b=hTTSn+f/bb+WTxFkvDp05w1vE/lXlwsWqeqPT4+qH/40lO/BCZJctOJGZYFqmWQ9tM
         /s+xSAGesrsVct28+zPj5ZVDwZl6Z7QotY+zEusjU4/H0Wi02H8eampKA//fh82nBTwl
         PRUbFloArUCcI2w9oE0VjOz3/R1qh8lk7hxmd7xLo8XL6Lv0Tq2lxkst1covBvYTSbs8
         k5EXDJabrOFHiVASeWKGbZE0241i4l7DC9d/4h4OgpcfO9TCkBvo7KYhE3sOVj5CliXR
         g9v9QoEV7neziIzvzx8xtH2OeC3lLDmrWo/FzhGkHNAebd+MtCzMis+Tuvi4RnKwKQqV
         qpfg==
X-Gm-Message-State: AOJu0YwM3wBS5ogjM6gVmTRIwzvk2yYQZGck5crEgDviBwdVqCJwngS8
	ErDWM80uVMgWIWnUPxGeRif1okY9SFBn2w==
X-Google-Smtp-Source: AGHT+IExJlaND/bKWaUuUpX2KdLNm1zvoB5Wk69ljUOGH9ijRnq7wIvdjSmpFe3169JwdwbYzwC47A==
X-Received: by 2002:a25:941:0:b0:d89:4343:a0a5 with SMTP id u1-20020a250941000000b00d894343a0a5mr13217297ybm.42.1696346106075;
        Tue, 03 Oct 2023 08:15:06 -0700 (PDT)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com. [209.85.219.174])
        by smtp.gmail.com with ESMTPSA id a9-20020a259389000000b00d8128f9a46bsm449515ybm.37.2023.10.03.08.15.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Oct 2023 08:15:04 -0700 (PDT)
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-d8181087dc9so1082657276.3;
        Tue, 03 Oct 2023 08:15:04 -0700 (PDT)
X-Received: by 2002:a25:c791:0:b0:d81:6e88:7cb3 with SMTP id
 w139-20020a25c791000000b00d816e887cb3mr14108080ybe.47.1696346103886; Tue, 03
 Oct 2023 08:15:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com> <20230929053915.1530607-3-claudiu.beznea@bp.renesas.com>
In-Reply-To: <20230929053915.1530607-3-claudiu.beznea@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 3 Oct 2023 17:14:51 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXsECEfYmqiGSdkkeyCvD87mAp_LGHdXy+Q_hDAPNRiFg@mail.gmail.com>
Message-ID: <CAMuHMdXsECEfYmqiGSdkkeyCvD87mAp_LGHdXy+Q_hDAPNRiFg@mail.gmail.com>
Subject: Re: [PATCH v2 02/28] clk: renesas: rzg2l: wait for status bit of SD
 mux before continuing
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
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 29, 2023 at 7:39=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.dev> =
wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Hardware user manual of RZ/G2L (r01uh0914ej0130-rzg2l-rzg2lc.pdf,
> chapter 7.4.7 Procedure for Switching Clocks by the Dynamic Switching
> Frequency Selectors) specifies that we need to check CPG_PL2SDHI_DSEL for
> SD clock switching status.
>
> Fixes: eaff33646f4cb ("clk: renesas: rzg2l: Add SDHI clk mux support")
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
>
> Changes in v2:
> - initialized msk

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

