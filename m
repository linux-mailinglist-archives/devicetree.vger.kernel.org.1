Return-Path: <devicetree+bounces-8191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B53B47C70AF
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 16:49:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E6D891C20A44
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 14:49:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFB7F2421C;
	Thu, 12 Oct 2023 14:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BD317F5
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 14:49:35 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 066FEA9;
	Thu, 12 Oct 2023 07:49:34 -0700 (PDT)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-59f82ad1e09so12547297b3.0;
        Thu, 12 Oct 2023 07:49:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697122173; x=1697726973;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Eb3DoNCX4dAi2zJy5KwY6jsXZKuGpHpVa2pTm/f3Qp8=;
        b=uHJR/XF+SRPLsknhOkYPN9W6ZF9ZP5a/CPQLr9C+kRhp9noa1Us0RltwNuJM+jKjuE
         h99KZTFrWSQEGSfDMbPAoEi/V24DGyZG2H4bJBJtagOJxIQv2oObeH1O3QjHitypBwrs
         oOHIIkORUpO7HR7wbxYMLE3iEAUd4V63Pw8RjoFEY3++4gjXLhwbS9IUJOLkAMXL6H0t
         IlnCHFX+kuuEWcWWv/NaPLhoEolCj+uftAc02hEO7o8I6HcMXRLIW4EfsaIM8dcfML5e
         6KA5m4mMcXslaaJMCniBd+/P5kTCnFNRf9yy8MKy3MPNsHajPTmnvY1zg/fCGIG4bDEv
         CHvw==
X-Gm-Message-State: AOJu0Yx/002vagrs6Wf6zQ5XL2qTsbJVqpmz499sK7JDpCrRXGiuTYzc
	RLfihXNMIKkSuy2oG/ofNw9A1NKU1qjVQg==
X-Google-Smtp-Source: AGHT+IEX6MMAPtEhlapgn4TZtg0LJe+T4yMLUfOaieynyEGo/wAfg4iVc9aXjGIGv1FDvBGI0+Zcow==
X-Received: by 2002:a05:690c:d94:b0:5a7:fcae:f3e2 with SMTP id da20-20020a05690c0d9400b005a7fcaef3e2mr3007123ywb.43.1697122172833;
        Thu, 12 Oct 2023 07:49:32 -0700 (PDT)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com. [209.85.128.171])
        by smtp.gmail.com with ESMTPSA id p62-20020a0dcd41000000b0059f61be458esm5419ywd.82.2023.10.12.07.49.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Oct 2023 07:49:32 -0700 (PDT)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-59f82ad1e09so12546967b3.0;
        Thu, 12 Oct 2023 07:49:31 -0700 (PDT)
X-Received: by 2002:a05:690c:dd2:b0:5a7:fa8b:3fa6 with SMTP id
 db18-20020a05690c0dd200b005a7fa8b3fa6mr3757707ywb.9.1697122171519; Thu, 12
 Oct 2023 07:49:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231010132701.1658737-1-claudiu.beznea.uj@bp.renesas.com> <20231010132701.1658737-7-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20231010132701.1658737-7-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 12 Oct 2023 16:49:20 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVwO--GrdDP8pUHq-k5cVR31dGdvEM73z2E+NLEbD8GRw@mail.gmail.com>
Message-ID: <CAMuHMdVwO--GrdDP8pUHq-k5cVR31dGdvEM73z2E+NLEbD8GRw@mail.gmail.com>
Subject: Re: [PATCH 6/6] arm64: dts: renesas: rzg3s: Fix dtbs_check
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
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Claudiu,

On Tue, Oct 10, 2023 at 3:27=E2=80=AFPM Claudiu <claudiu.beznea@tuxon.dev> =
wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Fix the following DTBS check warnings:
>
> arch/arm64/boot/dts/renesas/r9a08g045s33-smarc.dt: /: memory@48000000: 'd=
evice-type' does not match any of the regexes: 'pinctrl-[0-9]+'
>         from schema $id: http://devicetree.org/schemas/memory.yaml#
> arch/arm64/boot/dts/renesas/r9a08g045s33-smarc.dtb: /: memory@48000000: '=
device_type' is a required property
>         from schema $id: http://devicetree.org/schemas/memory.yaml#
> arch/arm64/boot/dts/renesas/r9a08g045s33-smarc.dtb: cache-controller-0: '=
cache-level' is a required property
>         from schema $id: http://devicetree.org/schemas/cache.yaml#
> arch/arm64/boot/dts/renesas/r9a08g045s33-smarc.dtb: cache-controller-0: '=
cache-level' is a required property
>         from schema $id: http://devicetree.org/schemas/cache.yaml#
> arch/arm64/boot/dts/renesas/r9a08g045s33-smarc.dtb: cache-controller-0: U=
nevaluated properties are not allowed ('cache-size', 'cache-unified' were u=
nexpected)
>         from schema $id: http://devicetree.org/schemas/cache.yaml#
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Thanks for your patch!

>  arch/arm64/boot/dts/renesas/r9a08g045.dtsi       | 1 +
>  arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi | 2 +-

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.7, split in two parts.

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

