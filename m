Return-Path: <devicetree+bounces-5824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E027B80F1
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 15:31:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id CA0481F22629
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 13:31:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC76F14A8C;
	Wed,  4 Oct 2023 13:31:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB01613AF9
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 13:31:52 +0000 (UTC)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E14FA1;
	Wed,  4 Oct 2023 06:31:51 -0700 (PDT)
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-6c4bf619b57so1386615a34.1;
        Wed, 04 Oct 2023 06:31:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696426310; x=1697031110;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p9ucJyFSqlck3kxhOUMG+iWNRZOPUAh0vlr2AWk93DY=;
        b=wAxxTFVLErHfPnQ1aGhGR5/U9xZs8Lwr+0NZT3fbaPCVKJUi83AGhlU8q03cG9Zg+B
         scjZy9cgWxlpAkDGPGnQ82ZOeqUOAObOIQHyeaGI3xr/+Z4pH3gOh2cijE1+/nm1HEEe
         +FCQJesR+PS/FTlZk02uipN4BQ45v4oVYLXBlluO5WnlX8HSNgBHCTrOFzYrvLP+rrJl
         OIzBJqZCLgrHiWCzDDXN7YIAP9Yx8BSRM8QD0s1P1nmyrRXDcdg2BgqL8Fn1LS2Kr2hE
         QLMB8N2/gRZhgVIZHYqmicVSHCKQMUVL6IkkXKcZeuI+40Odtt0UnkpxmLkNirWZBCyx
         d7ww==
X-Gm-Message-State: AOJu0YzCSMpwpCCBczbU9lEludyP4AhTxNGLpAvhS4wc6UdzDK1cEwbH
	nH03IMPuQPqeNXOObPNbeqroXBZJU0UYjg==
X-Google-Smtp-Source: AGHT+IGOkv8Qt+TZNUxj75onSasoveNkmG+vsQpTVma5+ltjD6crZb8bg+55ZYx+6z5Pqe6d6RlNhw==
X-Received: by 2002:a05:6871:531a:b0:1e1:fdf2:dcca with SMTP id hx26-20020a056871531a00b001e1fdf2dccamr1479584oac.1.1696426310057;
        Wed, 04 Oct 2023 06:31:50 -0700 (PDT)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com. [209.85.128.177])
        by smtp.gmail.com with ESMTPSA id s187-20020a0de9c4000000b00582fae92aa7sm1139493ywe.93.2023.10.04.06.31.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Oct 2023 06:31:49 -0700 (PDT)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-5a200028437so26061047b3.1;
        Wed, 04 Oct 2023 06:31:49 -0700 (PDT)
X-Received: by 2002:a81:a18b:0:b0:5a1:d4d4:a312 with SMTP id
 y133-20020a81a18b000000b005a1d4d4a312mr2317655ywg.5.1696426309106; Wed, 04
 Oct 2023 06:31:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com> <20230929053915.1530607-26-claudiu.beznea@bp.renesas.com>
In-Reply-To: <20230929053915.1530607-26-claudiu.beznea@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Oct 2023 15:31:37 +0200
X-Gmail-Original-Message-ID: <CAMuHMdX5J65cVsb3qkVv9k95fvJfdBPMMxYaFAj7H_i4pKqv-g@mail.gmail.com>
Message-ID: <CAMuHMdX5J65cVsb3qkVv9k95fvJfdBPMMxYaFAj7H_i4pKqv-g@mail.gmail.com>
Subject: Re: [PATCH v2 25/28] arm64: dts: renesas: rzg3s-smarc: add initial
 device tree for RZ SMARC Carrier-II Board
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
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 29, 2023 at 7:40=E2=80=AFAM Claudiu <claudiu.beznea@tuxon.dev> =
wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Add initial device tree for RZ SMARC Carrier-II. At the moment it
> contains only serial interface.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
>
> Changes in v2:
> - inversed the pin naming

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

