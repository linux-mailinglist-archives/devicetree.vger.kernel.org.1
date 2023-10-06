Return-Path: <devicetree+bounces-6368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D787BB1F0
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 09:09:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA6F4282067
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 07:09:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6565A5CB5;
	Fri,  6 Oct 2023 07:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A52054414
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 07:08:58 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD3D7EB;
	Fri,  6 Oct 2023 00:08:55 -0700 (PDT)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-59f82ad1e09so21831857b3.0;
        Fri, 06 Oct 2023 00:08:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696576135; x=1697180935;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bDvOGTbwmYKB4yj3dggVQge2NMSHumJx3EfGcewWqNg=;
        b=P8PqJC3G4xGo2+ilG1ft2/Fvof8Lb9RvotJJWcCR3e3+cfi+17OQFjLia0vWd8OGqP
         veIej9+m/+D1C+r63oFOplgNuVO/zw0sXdBVAdenYsYb6m02Eg/OwGZCLQb+zPvTRk4O
         2ysBmddfNkWTWe1Zfz6PJhkSGVlFKY1b45BF59lLwUy+0NDp7J/5xEOMCzIcO/83sRym
         QZo5wiPKaoZMnWJYYSqXSpYFzrsAzIKfoazD6nSEoJa4+5OBOaH93WUEFQAyOVpQf/HR
         s/OriPE924HzA3N8s33ZtMew23Fidj2N2Z3cR8H/9NlRs2mcmq5f4ujeLenGzX3iY9BY
         Vobw==
X-Gm-Message-State: AOJu0YzmlpjW4rnsDfxKejp16M6y1Vz2gByJMyZbaTZp1lnYw8OFV2cM
	bz7BWBgztb6VviPOGNt8Af7y0hxoWkh4iQ==
X-Google-Smtp-Source: AGHT+IEzHd2u+JyGUA1VxiF3B0cNwRjyZsMoyah2KMOfTfFEXGCZr9IfDNYyZvfkFLKQKb+xtrobBg==
X-Received: by 2002:a81:9289:0:b0:5a2:4409:2124 with SMTP id j131-20020a819289000000b005a244092124mr7760070ywg.35.1696576134761;
        Fri, 06 Oct 2023 00:08:54 -0700 (PDT)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com. [209.85.128.178])
        by smtp.gmail.com with ESMTPSA id u195-20020a8184cc000000b0059f4f30a32bsm1086046ywf.24.2023.10.06.00.08.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Oct 2023 00:08:53 -0700 (PDT)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-59f55c276c3so21557857b3.2;
        Fri, 06 Oct 2023 00:08:53 -0700 (PDT)
X-Received: by 2002:a81:4a55:0:b0:599:8bd:5bdf with SMTP id
 x82-20020a814a55000000b0059908bd5bdfmr7486809ywa.50.1696576133283; Fri, 06
 Oct 2023 00:08:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231005155618.700312-1-peter.griffin@linaro.org> <20231005155618.700312-20-peter.griffin@linaro.org>
In-Reply-To: <20231005155618.700312-20-peter.griffin@linaro.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 6 Oct 2023 09:08:41 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUgW1qx-7ADh89BRE4Hhk7-+R7o5VrswcBMymxh7zWUnQ@mail.gmail.com>
Message-ID: <CAMuHMdUgW1qx-7ADh89BRE4Hhk7-+R7o5VrswcBMymxh7zWUnQ@mail.gmail.com>
Subject: Re: [PATCH 19/21] google/gs101: Add dt overlay for oriole board
To: Peter Griffin <peter.griffin@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
	will@kernel.org, arnd@arndb.de, olof@lixom.net, cw00.choi@samsung.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	semen.protsenko@linaro.org, soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Peter,

On Thu, Oct 5, 2023 at 5:58=E2=80=AFPM Peter Griffin <peter.griffin@linaro.=
org> wrote:
> The LK bootloader on Pixel6 searches for a dt overlay in the
> dtbo partition with a board_id and board_rev that matches
> what is baked into the device. If this overlay is not present
> then the phone will bootloop in fastboot and you can't boot
> the upstream kernel.
>
> This commit adds a dtbo for the production oriole variant.
> The other pre-production board overlays are not included
> at this time.
>
> Adding the dtbo here allows for a better experience when
> building/booting the upstream kernel on Pixel devices
> as all the DT required to boot the device will be created
> as part of the kernel build process. Rather than having to
> fetch the dtbo from some other repo.
>
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>

Thanks for your patch!

> --- /dev/null
> +++ b/arch/arm64/boot/dts/google/gs101-oriole.dtso
> @@ -0,0 +1,21 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Oriole DVT Device Tree
> + *
> + * Copyright 2021-2023 Google,LLC
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +/ {
> +       board_id =3D <0x20304>;
> +       board_rev =3D <0x10000>;
> +       fragment@boardbase {
> +               target-path=3D"/";
> +               __overlay__ {
> +                       model =3D "Oriole DVT";
> +                       compatible =3D "google,gs101-oriole";
> +               };
> +       };

Please use sugar-syntax instead of manually defining
fragment/target-path/__overlay__ constructs.
You can override these properties in the root node of the base DTS
using the much simpler:

    &{/} {
            model =3D "Oriole DVT";
            compatible =3D "google,gs101-oriole";
    };

The generated DTBO should be identical (modulo naming).

> +};

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

