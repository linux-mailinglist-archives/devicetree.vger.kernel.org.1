Return-Path: <devicetree+bounces-8154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AAACE7C6E4F
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 14:37:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DB8AE1C20EEA
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 12:37:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2388C208D5;
	Thu, 12 Oct 2023 12:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBFA7210F7
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 12:37:37 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B9A1E4;
	Thu, 12 Oct 2023 05:37:35 -0700 (PDT)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-59f6492b415so7565457b3.0;
        Thu, 12 Oct 2023 05:37:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697114254; x=1697719054;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8VvU3puvotE/99F5YQMan21kUt/9MD2QqcXXWV38kAE=;
        b=R53+kKnSDdmZpHcGIJvdIPVjbYGNRwJc5MWQ0gtuVs5qhfyHvZTeIy9yZnCQQFo9GW
         0t2HDFSKHud0KyTBVcmXvdXrLepmXROBe35HzhCG2YflPeWbLgOgGKD7qeRPxX0uplU+
         L4h0R3ZqbY/oWm4jETc0MzT9EFnPxZwhhJxZcWQIZGqznEveyH5oyoHZn+f0LYZpSkBC
         Lx0nlTP2CTjv8ESX+k3XrfVigGfGAgaTGs1+TLfAYSFNQ0BSMj/SdzI+Vu6xdI2FX4MQ
         jmWwXgGDi5vM6tzGd3+8sWpX4plq2jb0wrN4lzHkSnmobVC0THdLxNYsf1CbiXinh9MV
         VvCA==
X-Gm-Message-State: AOJu0Yz7HVSyMIm5tKbCSabQLfjID6ZJPPjk35DC5K6IfPf9VpDbvXxB
	cvPtLmRC+ZBW9n249cTzOfLRRuN9aEFreA==
X-Google-Smtp-Source: AGHT+IEDeW0U4ZqiltY3Jtm1U8rlmTuQSaZd9uOZZm2tf4ot+MoTbfP6rjKFQ50vUAgVMVjM+NUQIQ==
X-Received: by 2002:a0d:d797:0:b0:5a7:d4d7:aaa1 with SMTP id z145-20020a0dd797000000b005a7d4d7aaa1mr4693324ywd.16.1697114254108;
        Thu, 12 Oct 2023 05:37:34 -0700 (PDT)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com. [209.85.128.175])
        by smtp.gmail.com with ESMTPSA id o206-20020a8173d7000000b00583e52232f1sm5901880ywc.112.2023.10.12.05.37.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Oct 2023 05:37:33 -0700 (PDT)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-59e88a28b98so7353417b3.1;
        Thu, 12 Oct 2023 05:37:33 -0700 (PDT)
X-Received: by 2002:a0d:cad1:0:b0:5a8:11de:a7f1 with SMTP id
 m200-20020a0dcad1000000b005a811dea7f1mr179712ywd.9.1697114253605; Thu, 12 Oct
 2023 05:37:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231010132701.1658737-1-claudiu.beznea.uj@bp.renesas.com> <20231010132701.1658737-2-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20231010132701.1658737-2-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 12 Oct 2023 14:37:21 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWAz+c5xDS0RXhaMHzPDZ-Co82Wibg6kMZrJ89n6cHccg@mail.gmail.com>
Message-ID: <CAMuHMdWAz+c5xDS0RXhaMHzPDZ-Co82Wibg6kMZrJ89n6cHccg@mail.gmail.com>
Subject: Re: [PATCH 1/6] clk: renesas: rzg2l: Use %x format specifier to print CLK_ON_R()
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
> Use %x format specifier to print CLK_ON_R(). This is easier when
> debugging as the value printed will be hexadecimal like in the hardware
> manual. Along with it "0x" has been added in front of the printed value.
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

