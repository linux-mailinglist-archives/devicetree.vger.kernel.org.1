Return-Path: <devicetree+bounces-20914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 22145801925
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 01:54:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A21C51F21126
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 00:54:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B440315DA;
	Sat,  2 Dec 2023 00:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uswY8Ldg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05A4A103
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 16:53:59 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-2859bde1d62so2662052a91.2
        for <devicetree@vger.kernel.org>; Fri, 01 Dec 2023 16:53:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701478438; x=1702083238; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wWpew+j0iOnh0aSpDX7YrdE/c2uqLvGCTRlanK0mkVM=;
        b=uswY8LdgGagZ82uSCflNA4VXCzqtF2K2Cbs42ZVCRLZwW2G5pm1iFhk1o5kwggwC1R
         fgPvghMN3KbUo4v0zpmMoE1mueBDBjKlgCCIsOmP0MyA9u3LkReOe4qFs8YqXyQzUbf8
         pxU7U79AHItRqKxinPYI7GWpgyjT1s2Ag5EliV4L1TZyYUlLWpB9tVcPoyj4VBlEGjzr
         7F13Hfusijx2KuRg0/R/OSu2v33lKlta/myInTQ/bLEi+BBgYzAlGzgfSYiGvq4cCrYE
         pW2zkycejetpxGLXtNPUgTGO/0VpoG4iimYWQ6EQNp4l6SKlHtc73yHTY3d9uc/pq7JU
         eqoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701478438; x=1702083238;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wWpew+j0iOnh0aSpDX7YrdE/c2uqLvGCTRlanK0mkVM=;
        b=B6DeEveC62I6owz47gCiALhUoXt3LoN0hmwNR/b9PUoLfmwU+fzzIlw0v8cLBGT+iT
         GqhqGvaSLbVklKMSuSVKM60H1VRqCU2N0x9kLpZQQoNZPfy4JWX3EL85iA2e8ImiXcV9
         fcSCGxuGmv1ze2Z3tudCII6hOt8WI4cLfNpOiuR8VgE2mU1Fp63bPIvxxqmLMhwCP5U0
         m7I4j4foNF/2LqVFqFL0EqpP6FmsnCIgA0O4pSZXirIdAGKU3sX8B93+UXgIHqpm8u+V
         35nu9PVmTIfBFnB3gjGINL9oTfhvsC0GLDtpZoVA3lBN7i5H6r4to74p7YL/pUqdVdVS
         ZFFg==
X-Gm-Message-State: AOJu0YwSLB/YTvbWhx7diCEzTkn8oemP5eIYapzPEJYkgxoE7eF3GyOB
	36A1w+0LGp/KT7cGk2Od/rTFCiHslD0STpl+0obNeQ==
X-Google-Smtp-Source: AGHT+IFihTDxIDcxGjYUzhV8+6lrC1XGUY94TBxc7PdRpNeXgfGgALbLtvyxmBUVArqYNaxwc3t7/shSGo0x2UfFRA4=
X-Received: by 2002:a17:90a:1f05:b0:286:6cc1:8678 with SMTP id
 u5-20020a17090a1f0500b002866cc18678mr223772pja.93.1701478438430; Fri, 01 Dec
 2023 16:53:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231201160925.3136868-1-peter.griffin@linaro.org> <20231201160925.3136868-16-peter.griffin@linaro.org>
In-Reply-To: <20231201160925.3136868-16-peter.griffin@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Fri, 1 Dec 2023 18:53:46 -0600
Message-ID: <CAPLW+4=2aK-XJ69cTBzwhQF8s3E9in-NFkK3h43L7C+oieqyDg@mail.gmail.com>
Subject: Re: [PATCH v5 15/20] watchdog: s3c2410_wdt: Add support for WTCON
 register DBGACK_MASK bit
To: Peter Griffin <peter.griffin@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
	will@kernel.org, arnd@arndb.de, olof@lixom.net, gregkh@linuxfoundation.org, 
	jirislaby@kernel.org, cw00.choi@samsung.com, alim.akhtar@samsung.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, saravanak@google.com, 
	willmcvicker@google.com, soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, kernel-team@android.com, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 1, 2023 at 10:11=E2=80=AFAM Peter Griffin <peter.griffin@linaro=
.org> wrote:
>
> The WDT uses the CPU core signal DBGACK to determine whether the SoC
> is running in debug mode or not. If the DBGACK signal is asserted and
> DBGACK_MASK bit is enabled, then WDT output and interrupt is masked
> (disabled).
>
> Presence of the DBGACK_MASK bit is determined by adding a new
> QUIRK_HAS_DBGACK_BIT quirk.
>
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
>  drivers/watchdog/s3c2410_wdt.c | 27 ++++++++++++++++++++++++---
>  1 file changed, 24 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/watchdog/s3c2410_wdt.c b/drivers/watchdog/s3c2410_wd=
t.c
> index 0b4bd883ff28..39f3489e41d6 100644
> --- a/drivers/watchdog/s3c2410_wdt.c
> +++ b/drivers/watchdog/s3c2410_wdt.c
> @@ -34,9 +34,10 @@
>
>  #define S3C2410_WTCNT_MAXCNT   0xffff
>
> -#define S3C2410_WTCON_RSTEN    (1 << 0)
> -#define S3C2410_WTCON_INTEN    (1 << 2)
> -#define S3C2410_WTCON_ENABLE   (1 << 5)
> +#define S3C2410_WTCON_RSTEN            (1 << 0)
> +#define S3C2410_WTCON_INTEN            (1 << 2)
> +#define S3C2410_WTCON_ENABLE           (1 << 5)
> +#define S3C2410_WTCON_DBGACK_MASK      (1 << 16)

Suggest using BIT() macro. Btw, checkpatch with --strict option
suggests it too :)

>
>  #define S3C2410_WTCON_DIV16    (0 << 3)
>  #define S3C2410_WTCON_DIV32    (1 << 3)
> @@ -100,12 +101,17 @@
>   * %QUIRK_HAS_PMU_CNT_EN: PMU block has some register (e.g. CLUSTERx_NON=
CPU_OUT)
>   * with "watchdog counter enable" bit. That bit should be set to make wa=
tchdog
>   * counter running.
> + *
> + * %QUIRK_HAS_DBGACK_BIT: WTCON register has DBGACK_MASK bit. Setting th=
e
> + * DBGACK_MASK bit disables the watchdog outputs when the SoC is in debu=
g mode.
> + * Debug mode is determined by the DBGACK CPU signal.
>   */
>  #define QUIRK_HAS_WTCLRINT_REG                 (1 << 0)
>  #define QUIRK_HAS_PMU_MASK_RESET               (1 << 1)
>  #define QUIRK_HAS_PMU_RST_STAT                 (1 << 2)
>  #define QUIRK_HAS_PMU_AUTO_DISABLE             (1 << 3)
>  #define QUIRK_HAS_PMU_CNT_EN                   (1 << 4)
> +#define QUIRK_HAS_DBGACK_BIT                   (1 << 5)
>
>  /* These quirks require that we have a PMU register map */
>  #define QUIRKS_HAVE_PMUREG \
> @@ -375,6 +381,19 @@ static int s3c2410wdt_enable(struct s3c2410_wdt *wdt=
, bool en)
>         return 0;
>  }
>
> +static void s3c2410wdt_mask_dbgack(struct s3c2410_wdt *wdt)
> +{
> +       unsigned long wtcon;
> +
> +       if (!(wdt->drv_data->quirks & QUIRK_HAS_DBGACK_BIT))
> +               return;
> +
> +       /*  disable watchdog outputs if CPU is in debug mode */

Double whitespace in the comment. Also, I'd move this comment up to
the function declaration.

Other than that:

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

> +       wtcon =3D readl(wdt->reg_base + S3C2410_WTCON);
> +       wtcon |=3D S3C2410_WTCON_DBGACK_MASK;
> +       writel(wtcon, wdt->reg_base + S3C2410_WTCON);
> +}
> +
>  static int s3c2410wdt_keepalive(struct watchdog_device *wdd)
>  {
>         struct s3c2410_wdt *wdt =3D watchdog_get_drvdata(wdd);
> @@ -700,6 +719,8 @@ static int s3c2410wdt_probe(struct platform_device *p=
dev)
>         wdt->wdt_device.bootstatus =3D s3c2410wdt_get_bootstatus(wdt);
>         wdt->wdt_device.parent =3D dev;
>
> +       s3c2410wdt_mask_dbgack(wdt);
> +
>         /*
>          * If "tmr_atboot" param is non-zero, start the watchdog right no=
w. Also
>          * set WDOG_HW_RUNNING bit, so that watchdog core can kick the wa=
tchdog.
> --
> 2.43.0.rc2.451.g8631bc7472-goog
>

