Return-Path: <devicetree+bounces-5817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3597B80B8
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 15:22:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 7C3051C2083B
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 13:22:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8129214291;
	Wed,  4 Oct 2023 13:22:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B2431427E
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 13:21:59 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03664A1;
	Wed,  4 Oct 2023 06:21:58 -0700 (PDT)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-5a505762c9dso579917b3.2;
        Wed, 04 Oct 2023 06:21:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696425717; x=1697030517;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KVzjW9Eo52+SfKHVjtESmESLgB/bR8EgYwxS/kFJXaU=;
        b=XoFG6HF7r2ykjVvHvQy0z2sSJETwAvMUrOXt0bOSlfepHUBRBVIULvUCm9QdW6Njpm
         vDFRS4bXb3L+7JEvuoSeiEpUdZLqPPkS0zgY+aNKyYQtdbfKnE0xXJOcPuC3Y+iMQHo9
         FSM6CZhce2WzeUIn2PsXtmoIBirybFpkmcPq7UL/6GFdy2oIhi27keOKYZUvC+s+wmzV
         nfnWQlMChK1oFlWX8Uxuxq+60N4acdNpkFeeH1Ao7MwyMSw22SYb+cT+EqTINtUIbeyE
         iSJHV409oYdkrOR6DEcvGrPFdaySu7YY7bL6I83GDsOjupxI8r7aS4iKC8pqofuEgdUj
         Jnsw==
X-Gm-Message-State: AOJu0YzkUD656JC5qcOgY+4RXBCgBJdgSe41/SVJITWv8RZdo7mNUDGo
	J58jmGaUZSwG1oydCtlgk6XO8OrfhipucA==
X-Google-Smtp-Source: AGHT+IHyqcV23pigUpA0knuyVjlhROOr5hdHcHUKFwCYzjIRDBFGw+vzYl6kX/U1EJOjvFmJDs+/EA==
X-Received: by 2002:a0d:fb83:0:b0:586:e50:fb50 with SMTP id l125-20020a0dfb83000000b005860e50fb50mr2561771ywf.28.1696425716915;
        Wed, 04 Oct 2023 06:21:56 -0700 (PDT)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com. [209.85.128.179])
        by smtp.gmail.com with ESMTPSA id u76-20020a0deb4f000000b00583e52232f1sm1133550ywe.112.2023.10.04.06.21.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Oct 2023 06:21:56 -0700 (PDT)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-59c268676a9so25310877b3.0;
        Wed, 04 Oct 2023 06:21:56 -0700 (PDT)
X-Received: by 2002:a0d:ee01:0:b0:59b:c6a4:15c7 with SMTP id
 x1-20020a0dee01000000b0059bc6a415c7mr2252067ywe.46.1696425716334; Wed, 04 Oct
 2023 06:21:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com> <20230929053915.1530607-21-claudiu.beznea@bp.renesas.com>
In-Reply-To: <20230929053915.1530607-21-claudiu.beznea@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Oct 2023 15:21:43 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVx1rNzp417=11Bi+RQUbuauuh_QASJyWevag-htVeY0Q@mail.gmail.com>
Message-ID: <CAMuHMdVx1rNzp417=11Bi+RQUbuauuh_QASJyWevag-htVeY0Q@mail.gmail.com>
Subject: Re: [PATCH v2 20/28] dt-bindings: pinctrl: renesas: document RZ/G3S SoC
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
> Add documentation for pin controller found on RZ/G3S (R9A08G045) SoC.
> Compared with RZ/G2{L,UL} RZ/G3S has 82 general-purpose IOs, no slew
> rate and output impedance support and more values for drive strength
> which needs to be expressed in microamp.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
>
> Changes in v2:
> - defined drive-strength-microamp as general and make if/then schema to
>   not allow specific properties depending on compatible

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-pinctrl-for-v6.7.

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

