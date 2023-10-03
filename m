Return-Path: <devicetree+bounces-5536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C40B7B68F7
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 14:28:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 9E6881C20821
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 12:28:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C85D222F18;
	Tue,  3 Oct 2023 12:28:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C68321361
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 12:28:45 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32D1983;
	Tue,  3 Oct 2023 05:28:43 -0700 (PDT)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-59f57ad6126so9841367b3.3;
        Tue, 03 Oct 2023 05:28:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696336122; x=1696940922;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cdrE52/yDmlFhN9BdIXTdjHpAQ6B5kQ58qoowkP5X64=;
        b=KtXlnKItwvMX32g/h1o5ul9dVsiNFHUYZQOT2tQW4e1y4c9Y4pHanhHIsV2V5BOe0F
         YicNEwipS1oAZ/Q2YkXu0q+FiWpYcoT07rmxy2nixmobNNz3NepUMqFnsyxon6/lOi1K
         nb1QbcrZ5qWaMt9IfrNfULxUBSycEzxEWntMBPDTifOon2B0k58hGLsu8dwOBxP5rH7Y
         HWLDi4rxYJKNgogq8x46TYiGFNHphYsi5ru5oRH0NQXHIYk7+1q/8IaPnG29uXhMHc6E
         2cAmejCKMAtDpuzgABSFIu9RMbRhAl43L3BzNJGRNc6t5SlmuAh2c8QpcZZLf3iXmbs6
         DBZQ==
X-Gm-Message-State: AOJu0Yyg/VVqLDxu3Z63Z7u2ja+WZl7eNgpngDhRfOGLsLcDn+dXdVM3
	g6D5z5c2g1EmWrXsVz22kc6itphigeU3nQ==
X-Google-Smtp-Source: AGHT+IHK74pLujS6LFa78LchaZohNp6YwS9aSZlfKmelSJ+bdEbXN+2cDGiDdnXZhfv1fPrLoQ48Jg==
X-Received: by 2002:a81:728a:0:b0:570:89bf:6f10 with SMTP id n132-20020a81728a000000b0057089bf6f10mr12284431ywc.25.1696336121904;
        Tue, 03 Oct 2023 05:28:41 -0700 (PDT)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com. [209.85.128.179])
        by smtp.gmail.com with ESMTPSA id j2-20020a819202000000b0056d51c39c1fsm342832ywg.23.2023.10.03.05.28.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Oct 2023 05:28:41 -0700 (PDT)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-59f57ad6126so9841127b3.3;
        Tue, 03 Oct 2023 05:28:41 -0700 (PDT)
X-Received: by 2002:a81:8392:0:b0:59f:7f8e:dc4a with SMTP id
 t140-20020a818392000000b0059f7f8edc4amr15076304ywf.22.1696336121420; Tue, 03
 Oct 2023 05:28:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929000704.53217-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20230929000704.53217-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20230929000704.53217-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 3 Oct 2023 14:28:29 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWq8R0QtDxNRkask3kipnSXmOzR_TjV3Hy0bkF0378CyQ@mail.gmail.com>
Message-ID: <CAMuHMdWq8R0QtDxNRkask3kipnSXmOzR_TjV3Hy0bkF0378CyQ@mail.gmail.com>
Subject: Re: [PATCH 3/5] riscv: dts: renesas: rzfive-smarc: Enable the blocks
 which were explicitly disabled
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Prabhakar,

Thanks for your patch!

On Fri, Sep 29, 2023 at 2:07=E2=80=AFAM Prabhakar <prabhakar.csengg@gmail.c=
om> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Now that noncoherent dma support is added for RZ/Five SoC enable
> the IP blocks which were disabled on RZ/Five SMARC. Now with this
> patch we get support for the below peripherals:
> * DMAC
> * SDHI
> * USB
> * RSPI
> * SSI

and Ethernet? ;-)

> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.7, with "Ethernet" added.

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

