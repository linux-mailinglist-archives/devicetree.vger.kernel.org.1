Return-Path: <devicetree+bounces-5209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E97E7B59EA
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 20:22:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id DEDB62815FD
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:22:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E3651EA7F;
	Mon,  2 Oct 2023 18:22:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157B11E524
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 18:22:06 +0000 (UTC)
Received: from mail-oo1-xc32.google.com (mail-oo1-xc32.google.com [IPv6:2607:f8b0:4864:20::c32])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18AACAB;
	Mon,  2 Oct 2023 11:22:05 -0700 (PDT)
Received: by mail-oo1-xc32.google.com with SMTP id 006d021491bc7-57e40f0189aso26179eaf.1;
        Mon, 02 Oct 2023 11:22:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696270924; x=1696875724; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jfENVpQuZdv1PgXfltbR7B/XTb+JunRgWdUE5rSAEv0=;
        b=cp84VvZVpK+OWorzyB+1nvLycbuGqyGLH+7a9wSCxz5piVk2fn0EXVYBWH1bDTKUzG
         WyQJyO45VJr2v6pHjvNaCgRZ50b2jt0NdanhJg4irIAxVVS5yJIkcv+WOG21IjEBzAbI
         KERJ23hsx+SasG+nE/GA878CjZnyylZse3WbSNQacdKmdbgL8WjpQyuk8gjeTftdb6q+
         GdpWMQSXLhiZRWdsJeRojhwfXYpicYaa7FuXzulH5oITnVJd5ARaelb9YlJoEAWWU6N0
         sgc4KOHmiPC9le7RTLZvF/h/ECCR6u+Dng7BKSbsy01pW661wh607pHw9L2ySYQLTLEz
         9X2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696270924; x=1696875724;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jfENVpQuZdv1PgXfltbR7B/XTb+JunRgWdUE5rSAEv0=;
        b=f0y6xQsnr+FcwjPNE0NnbDr8auYQ7vFqRKC69c3DqdfAClWI7gb5i0uvBMUisko8tT
         YaYDgWyJHbr8IjnMVOcQmTWrdibliyGFVv5NbOL0ULwZiZN78Pl1fHXpNWcAeJ87OABp
         QwQKDsTdSam4cPl6Z/FhjCRpvK51SAMoi96BGKfbWIKLU3hxC0em28PlbYfA74/QR1I2
         W44L1vy+6dZY7qoBfpNi7lKC5Aa/jvqyDBc5yn+osc80yhtzw3a3qMTFd7kuGVM+iJEu
         /Rorn/KUVDbhHUU1bjJ6TcodF/qyB5tZNzE8KifSb5ew+MQiTa/6a6THQs0zhPoRQly3
         CC3A==
X-Gm-Message-State: AOJu0YzNoEZl0lURxzEGB5lRLNzJwxbvFC+ZPqQf//Iqdma6Uz5sSvea
	OMxsabfOPTlkFlxjK5FbKmlZjSCgz4aMglWCKn0=
X-Google-Smtp-Source: AGHT+IHC6KT31UbIzqXi5TZPU7mVY6wLqS+UeMb1ep1LavYVR7vDcy5MaFclxAkz4aB2p3t5R8ulrintOTk3LDBNiM8=
X-Received: by 2002:a4a:3459:0:b0:57b:7b1b:108a with SMTP id
 n25-20020a4a3459000000b0057b7b1b108amr11529642oof.8.1696270924335; Mon, 02
 Oct 2023 11:22:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231002175052.112406-1-tmaimon77@gmail.com> <20231002175052.112406-3-tmaimon77@gmail.com>
In-Reply-To: <20231002175052.112406-3-tmaimon77@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 2 Oct 2023 21:21:28 +0300
Message-ID: <CAHp75Vd701sE-pkTWYi=PsOpVoBa-fbOm91P3bGLruCn5U1KXA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] mmc: sdhci-npcm: Add NPCM SDHCI driver
To: Tomer Maimon <tmaimon77@gmail.com>
Cc: ulf.hansson@linaro.org, avifishman70@gmail.com, tali.perry1@gmail.com, 
	joel@jms.id.au, venture@google.com, yuenn@google.com, benjaminfair@google.com, 
	adrian.hunter@intel.com, skhan@linuxfoundation.org, davidgow@google.com, 
	pbrobinson@gmail.com, gsomlo@gmail.com, briannorris@chromium.org, 
	arnd@arndb.de, krakoczy@antmicro.com, openbmc@lists.ozlabs.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Oct 2, 2023 at 8:51=E2=80=AFPM Tomer Maimon <tmaimon77@gmail.com> w=
rote:
>
> Add Nuvoton NPCM BMC sdhci-pltfm controller driver.

...

> +/*
> + * NPCM SDHC MMC host controller driver.
> + *
> + * Copyright (c) 2020 Nuvoton Technology corporation.

Shouldn't it be at least 2020,2023 ?

> + */

...

> +#include <linux/clk.h>
> +#include <linux/err.h>
> +#include <linux/io.h>
> +#include <linux/mmc/host.h>
> +#include <linux/mmc/mmc.h>

+ mod_devicetable.h

> +#include <linux/module.h>
> +#include <linux/of.h>

...

> +       pltfm_host->clk =3D devm_clk_get_optional(&pdev->dev, NULL);
> +       if (IS_ERR(pltfm_host->clk)) {
> +               ret =3D PTR_ERR(pltfm_host->clk);
> +               goto err_sdhci;
> +       }
> +
> +       ret =3D clk_prepare_enable(pltfm_host->clk);
> +       if (ret)
> +               goto err_sdhci;

Why not use devm_clk_get_optional_enabled()?

--=20
With Best Regards,
Andy Shevchenko

