Return-Path: <devicetree+bounces-2073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 134BD7A99BA
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:20:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D49601C20FEF
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:20:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DFB542C16;
	Thu, 21 Sep 2023 17:23:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5B812B84
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:23:07 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A17CE5AE2E;
	Thu, 21 Sep 2023 10:21:40 -0700 (PDT)
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-52f9a45b4bdso1423259a12.3;
        Thu, 21 Sep 2023 10:21:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695316899; x=1695921699;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=78TMJJFlsLVACVaST0yD4fr1cOAvW144T6j75QycuXg=;
        b=BAV30hJkYC7gDJg8tJ5MgmwgAeTItbBEzWUcixCeM/pAGaCgaQ8iMiyn0XLG6VH9AG
         ATLhbdtVyCC4KBdQdSsCTH0JJXuR7XVOSpV3URxP7TbirqHqYFRHRbBWD7+I3DjzCUZ0
         iu65ni8UHH5hJfVmugdCvjEeqTP4zFi4RxIie6MPXhe9eTmsLORXD/5wosNIUBMifG9j
         lSBCLxcxr0nbNY41dJQU3tqmp4sKBbaCaM27tuidbCQzJUwFo7JleTbtt8kmem84QoDV
         zKqJa3Leqv9IUbhA64LQUI3GFTuCZ4samvzOPMyY2jFjLR5XbI/opUALhieLgtJd7xXY
         YUKA==
X-Gm-Message-State: AOJu0Yy11+ifoLtQMj0zsVqtcJIIdGl/qpKcTULNtlXmQqyT9qQ/0DL6
	JbaLbcnQYqAHQbj57DOkw4bWirx05e9jlYr9
X-Google-Smtp-Source: AGHT+IH+uBVw292r+sxaKfU8NLmvm5e2Jkc2m0Sb1GJILXn42+85/1qKFwBKoGAB4t0PUKVC9cnpbw==
X-Received: by 2002:a2e:8098:0:b0:2c0:c6a:eb2f with SMTP id i24-20020a2e8098000000b002c00c6aeb2fmr5027753ljg.1.1695302182923;
        Thu, 21 Sep 2023 06:16:22 -0700 (PDT)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com. [209.85.208.180])
        by smtp.gmail.com with ESMTPSA id p2-20020a2e9a82000000b002c001e57e1asm337469lji.73.2023.09.21.06.16.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Sep 2023 06:16:22 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2c007d6159aso15303351fa.3;
        Thu, 21 Sep 2023 06:16:22 -0700 (PDT)
X-Received: by 2002:a05:6512:3987:b0:500:bb99:69a7 with SMTP id
 j7-20020a056512398700b00500bb9969a7mr6201266lfu.14.1695301737311; Thu, 21 Sep
 2023 06:08:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com> <20230912045157.177966-29-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20230912045157.177966-29-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 21 Sep 2023 15:08:39 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV5BuPPLkZUDfhjXzq_aQ+LFfEM=eXGT-XjmpxSjSqeJg@mail.gmail.com>
Message-ID: <CAMuHMdV5BuPPLkZUDfhjXzq_aQ+LFfEM=eXGT-XjmpxSjSqeJg@mail.gmail.com>
Subject: Re: [PATCH 28/37] pinctrl: renesas: rzg2l: make struct
 rzg2l_pinctrl_data::dedicated_pins constant
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	ulf.hansson@linaro.org, linus.walleij@linaro.org, gregkh@linuxfoundation.org, 
	jirislaby@kernel.org, magnus.damm@gmail.com, catalin.marinas@arm.com, 
	will@kernel.org, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	biju.das.jz@bp.renesas.com, quic_bjorande@quicinc.com, arnd@arndb.de, 
	konrad.dybcio@linaro.org, neil.armstrong@linaro.org, nfraprado@collabora.com, 
	rafal@milecki.pl, wsa+renesas@sang-engineering.com, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 12, 2023 at 6:53=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.dev> =
wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> struct rzg2l_pinctrl_data::dedicated_pins is constant thus mark it so.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-pinctrl-for-v6.7.

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

