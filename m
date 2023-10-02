Return-Path: <devicetree+bounces-5215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4AF7B5A05
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 20:29:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 5BA49282FEB
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:29:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E72451EA95;
	Mon,  2 Oct 2023 18:29:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9BFE199B2
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 18:29:54 +0000 (UTC)
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 619A29B;
	Mon,  2 Oct 2023 11:29:53 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2bffa8578feso397971fa.2;
        Mon, 02 Oct 2023 11:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696271391; x=1696876191; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qmLeKYNGSecYfl9ikGzmRlf+uP/RUxaBYTCk9xIy0Aw=;
        b=DbSbo9wIoSd8VXWJK7J3XtQeAdMShrZRAb3e+r3PYbUQ8Swm4rEBvB0iKrErKFgijQ
         DB8WACJA5ysGKg/1wVDConn84bQ8q7Eb40mbEPZIglN9TMumvQoAoAIPBlvXfZVlSzxU
         gwgQt5fub2i8EJ0ER4D+FZ3qOoOsjPryM58bj6QVEBzuIuaz3cD2VyBxvuq9l/l6sM60
         ok1MNR/Kx9Yn+5k8OCvzbJ8LEi4BE5ujFNqx6+PiezqvL1EvLci0BkEXVmJBIj4NNdK7
         h8rc9h0KLX/6Lfi+f5tyLl57pkPZbVMnvW4sIyJR6BSVcjEFKAqNEhbk9a6cXetSeDbV
         YlUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696271391; x=1696876191;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qmLeKYNGSecYfl9ikGzmRlf+uP/RUxaBYTCk9xIy0Aw=;
        b=OiUK+Q7M8LkdKEy3H+rg+WAsRTVnc5wHxz6kfkRY+y+CTk65ibyB9XFmqzuwFIrejb
         cdm0PHszCx5xyZji/b8bjLd0T3eEZWAnrqgnCsjbVPDgZwryYvu4XSv3p0uUSNfb7qTX
         06hVhbi49XRqDNSjtyJsjky55pqcUKawSJUeKaccmPRNh9N8NYHA55jv4I2B2WSjLurl
         tFQqul9VfvreqexB0Ju9BN6y89TTGaEVg/S6TGK+8b+HWemPtNlqihkSXUrXF52OevUT
         DzP5nwT00s9BAn9hwg6/Yur/Xf/NDapMDTnMWO6H/G9unL/y0POdhg7pn33zp+FjnHvr
         6AWA==
X-Gm-Message-State: AOJu0YxT2RmQNVPCqXHFYlJHarUFXuD2KcXn8awiUBnXpfokp/lDi+T3
	7cyL989jaxQ8E6nvsL6dTxGoiRNjQPH95Hrv05k=
X-Google-Smtp-Source: AGHT+IFMt/wHWyitPjznMpFt2azasGJ7FG/aPXRTTkgmXI2UdwrxaMHvhIW7i3jpWxNdQII5HorAJCWm3hbhEz1OhSY=
X-Received: by 2002:a2e:97c9:0:b0:2bc:cc1a:139c with SMTP id
 m9-20020a2e97c9000000b002bccc1a139cmr9686291ljj.11.1696271391296; Mon, 02 Oct
 2023 11:29:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231002175052.112406-1-tmaimon77@gmail.com> <20231002175052.112406-3-tmaimon77@gmail.com>
 <CAHp75Vd701sE-pkTWYi=PsOpVoBa-fbOm91P3bGLruCn5U1KXA@mail.gmail.com>
In-Reply-To: <CAHp75Vd701sE-pkTWYi=PsOpVoBa-fbOm91P3bGLruCn5U1KXA@mail.gmail.com>
From: Tomer Maimon <tmaimon77@gmail.com>
Date: Mon, 2 Oct 2023 21:29:40 +0300
Message-ID: <CAP6Zq1jM3=D5PBp1z7=K6LRNJaZe3rEPutXm_xxo7p2Z60sWmQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] mmc: sdhci-npcm: Add NPCM SDHCI driver
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: ulf.hansson@linaro.org, avifishman70@gmail.com, tali.perry1@gmail.com, 
	joel@jms.id.au, venture@google.com, yuenn@google.com, benjaminfair@google.com, 
	adrian.hunter@intel.com, skhan@linuxfoundation.org, davidgow@google.com, 
	pbrobinson@gmail.com, gsomlo@gmail.com, briannorris@chromium.org, 
	arnd@arndb.de, krakoczy@antmicro.com, openbmc@lists.ozlabs.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Andy,

Thanks for your comments.

On Mon, 2 Oct 2023 at 21:22, Andy Shevchenko <andy.shevchenko@gmail.com> wr=
ote:
>
> On Mon, Oct 2, 2023 at 8:51=E2=80=AFPM Tomer Maimon <tmaimon77@gmail.com>=
 wrote:
> >
> > Add Nuvoton NPCM BMC sdhci-pltfm controller driver.
>
> ...
>
> > +/*
> > + * NPCM SDHC MMC host controller driver.
> > + *
> > + * Copyright (c) 2020 Nuvoton Technology corporation.
>
> Shouldn't it be at least 2020,2023 ?
will change to 2023
>
> > + */
>
> ...
>
> > +#include <linux/clk.h>
> > +#include <linux/err.h>
> > +#include <linux/io.h>
> > +#include <linux/mmc/host.h>
> > +#include <linux/mmc/mmc.h>
>
> + mod_devicetable.h
why?
> > +#include <linux/module.h>
> > +#include <linux/of.h>
>
> ...
>
> > +       pltfm_host->clk =3D devm_clk_get_optional(&pdev->dev, NULL);
> > +       if (IS_ERR(pltfm_host->clk)) {
> > +               ret =3D PTR_ERR(pltfm_host->clk);
> > +               goto err_sdhci;
> > +       }
> > +
> > +       ret =3D clk_prepare_enable(pltfm_host->clk);
> > +       if (ret)
> > +               goto err_sdhci;
>
> Why not use devm_clk_get_optional_enabled()?
Will do
>
> --
> With Best Regards,
> Andy Shevchenko

Best regards,

Tomer

