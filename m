Return-Path: <devicetree+bounces-2029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E487A9860
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:42:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6AE7FB212A5
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 17:42:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99A2618B17;
	Thu, 21 Sep 2023 17:12:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D09199D5
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:12:08 +0000 (UTC)
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5A7B2AC41;
	Thu, 21 Sep 2023 10:11:44 -0700 (PDT)
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-578a44dfa88so808716a12.0;
        Thu, 21 Sep 2023 10:11:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695316304; x=1695921104;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+RPRgMtQ7qCU/brC+NvfIv29WXY/7wD47KIHBnDqHGA=;
        b=XW7Y/gyKkn3zry2MWC7GN9TNgLSt5dHxfZcLXb+szocF0kbYiYcDr3k5xn8E8otmxe
         i8fYRF1J0SVrzGsAoLft8EGRTOZzpAFin84604MiR93XGfUIz9KcCxBmZ+da4kspcQgC
         x+NeHoOuctMgJoYhlE+gd8++nbCc9Puj0lF2waEwcWPb48yMtOMPkwlkURV3MdeiRLmv
         +6asZqJKhKkjRK9pVhJ+y2TAfAOZeaxMP92rrZ5sMz0AwH6u3yoRmXlFN3f81h9wEPfU
         30Q7PlfFsvDZVmFNm7bubFsL9H5sT2VZ+go+1QluKg2pKhdnLqReWzpHTi9GwqlCRLCQ
         rPgg==
X-Gm-Message-State: AOJu0Yza9dRcTuHhjh/BgTEnkIM9KmOIRXW+YpDuvyZLwr70E+R+E/Rf
	tNhRSJRHLco34QiJg7x1P2f/hXsd6XzHQulg
X-Google-Smtp-Source: AGHT+IERK5CYoZHbPlYt3rNggsKsuNjahQunWcbVai6KndOpdvCGz4YrSvq0luFY8urPBXDa2JHl9g==
X-Received: by 2002:a0d:d8c2:0:b0:579:16e0:b1bf with SMTP id a185-20020a0dd8c2000000b0057916e0b1bfmr5944356ywe.12.1695298056358;
        Thu, 21 Sep 2023 05:07:36 -0700 (PDT)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com. [209.85.128.169])
        by smtp.gmail.com with ESMTPSA id e62-20020a0df541000000b005844ae2bfa3sm291931ywf.95.2023.09.21.05.07.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Sep 2023 05:07:36 -0700 (PDT)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-59c26aa19b7so10370997b3.2;
        Thu, 21 Sep 2023 05:07:36 -0700 (PDT)
X-Received: by 2002:a0d:eb93:0:b0:57a:9b2c:51f1 with SMTP id
 u141-20020a0deb93000000b0057a9b2c51f1mr4883712ywe.1.1695298055833; Thu, 21
 Sep 2023 05:07:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com> <20230912045157.177966-25-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20230912045157.177966-25-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 21 Sep 2023 14:07:23 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUWUMMQ9dp5mf5wQ2X6CtpdAKH=FU-3xvNHcVknAsv+=w@mail.gmail.com>
Message-ID: <CAMuHMdUWUMMQ9dp5mf5wQ2X6CtpdAKH=FU-3xvNHcVknAsv+=w@mail.gmail.com>
Subject: Re: [PATCH 24/37] pinctrl: renesas: rzg2l: adapt for different SD,
 PWPR register offsets
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
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 12, 2023 at 6:53=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.dev> =
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

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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

