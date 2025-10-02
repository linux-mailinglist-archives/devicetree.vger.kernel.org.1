Return-Path: <devicetree+bounces-223390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B3702BB3E35
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 14:28:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DA9CC7A2483
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 12:27:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82D9C3101DE;
	Thu,  2 Oct 2025 12:28:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1B73101A9
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 12:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759408120; cv=none; b=Js6d32qWl0yPomDkdJQ12xYOo5mQlZELE0oNIqqJCeVQwX3MAIwUTRMKM9s/5P1KakWgupq3ufJefIDn/Wj6Alkn5/w0xsKUXdaPIEyPVPh/niYejcW7m5mTn0UIumYXmebsSx6cQSjs5kZXnfWtfb5W30BGxiV93yaq+wDsAlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759408120; c=relaxed/simple;
	bh=crq8yfuHaLUS3p5H/zdDJJGaYFs9968BkE02+nGHfFA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=W8YFbI1C1hFjS03DFYda3cgPgdtRpAiwVtMFpUjawyOYBG3UAA5EARU7ZZJfEWxUrw01KgrXegLxLE/MWAQqdsiEvPeG5MKuVii39pA2k97UsVExw2i4O0z62Ijq/MBlP95LMrhKibpeVFSnDMKZyJyFGlo4I6RKK7Rv94T5BaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b3c2db014easo192230266b.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 05:28:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759408116; x=1760012916;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cJO2rpeSfonOqfgPMdFd9YnOjY8waVVypT7pLmPKhlg=;
        b=PcmkHR8JjY+1Dvf2Xsl5UwFCVYZ8hGo9E2fNO591EGrtv1eMFmVTr3vsQX6QbaNXjJ
         zWBTLBq790rFEhOqDb5M3Zs7DM6s9YlYFuei3WQn6u7ApLa9kK3yBKe11vb8Gs0+DmWM
         cL6tv+K4OST81gkOE9KzGUVVn7HAUafs56AeCYICPKzFAd4Vz/1R2p09HgsiMgVmp6RI
         uevtHp2LvvS/VymDZh9jJmQD+knejFGeMsszalZ8FBZ/aC24CVR4hnKafEoyrEEOqHlG
         yvpxARYckirXC15urm+9mhNUwq8FHnqH8DImzoN2UKFe5pNQM2xOMIUZXf9MQuunIOou
         Xvmg==
X-Forwarded-Encrypted: i=1; AJvYcCVgGmKYy0ccQ45VGLzNqlES+aRh3rM6U8FVxm9xy+1G1WvVv9cWoEIuFz44LajhR4Cym1Ac6jqnGNVr@vger.kernel.org
X-Gm-Message-State: AOJu0YwyPaqkENL9K8gn3BVKBGaRqU2WwX15wOuLGEfLqQEwHyReY111
	LJuJV5Lx8i2niwXl7yTcmT1pDH2xvc7QT9O3fEOi2GJssu2fU+sO2AAZLGJJqTyUiRE=
X-Gm-Gg: ASbGncvTuo851KEEhiknqqpKwhcx+x1Uzcu3AN7nE7aHKyiQPetWkEjN70RDCD2jd2D
	fpFbib1WfIj+prFKfCxD7zlR2ImP6xYBZUyqxkoa19y/QI37f7H66+kiAiMeNYYGbE7tYAJbOpK
	MIsO7QSHsFQZOGhVdTX63Zfss1aS2T7BAXWcEJcl1Mtml+EOu3xfKh76F/JWDLpDaj+bIdDL2UT
	gm02MzrCvP8M4mHZeOO8lkyfun2cdGeACZHqeR5/AYTlBKJ9fxm/ADYUgins31ElScBvJ+sWOZe
	ONWrtEJmogcZsI6Yvm9KoM/CtevyD+7TcYz0Vt00iQKNrdtD6tFf4iQVY25kRR25pwwImEWKxug
	fReZe4Jk+mtFcRJZbDYGF/6ZKfDX3WNDfMczuWE0pGKKkN+o2Jo6dk3itRZIkSz1+jK7UVUZVnp
	BpYs0thHsjAjMCVsw+WBU=
X-Google-Smtp-Source: AGHT+IEnVE+Aapr5Tbns2unULjlV828AzMgg2oiYgO6APwSwu3sLOLmmR7yNpTptydrXWSGu5s0kHw==
X-Received: by 2002:a17:907:3c89:b0:b3c:42d4:1c67 with SMTP id a640c23a62f3a-b46e31e02afmr900296266b.23.1759408116344;
        Thu, 02 Oct 2025 05:28:36 -0700 (PDT)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com. [209.85.208.49])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4869c4c34dsm190568066b.80.2025.10.02.05.28.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Oct 2025 05:28:33 -0700 (PDT)
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-637e9f9f9fbso793543a12.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 05:28:33 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUBvcuAwLaQBKnCSadSQlSZljy+hmxJbuKBSKXJKbnMrsvPJRCRmqUawhr0nTwfbXhQonkCdkgtf5Vg@vger.kernel.org
X-Received: by 2002:a05:6402:1d53:b0:634:b5b5:9fb5 with SMTP id
 4fb4d7f45d1cf-63678bb704emr8111645a12.10.1759408113266; Thu, 02 Oct 2025
 05:28:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251001122326.4024391-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251001122326.4024391-4-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251001122326.4024391-4-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 2 Oct 2025 14:28:20 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXPEZJ11sfLDk=O1oZq_OKz22G9wz3Sw5acMr1QVYG_Qg@mail.gmail.com>
X-Gm-Features: AS18NWC-_9Ox7ciqPoYRQmMsFw1knBxTffAhjo8400Hfa4uqpwmBsatJ-il-O0c
Message-ID: <CAMuHMdXPEZJ11sfLDk=O1oZq_OKz22G9wz3Sw5acMr1QVYG_Qg@mail.gmail.com>
Subject: Re: [PATCH v3 3/7] iio: adc: add RZ/T2H / RZ/N2H ADC driver
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-iio@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Cosmin,

On Wed, 1 Oct 2025 at 14:24, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> Add support for the A/D 12-Bit successive approximation converters found
> in the Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs.
>
> RZ/T2H has two ADCs with 4 channels and one with 6.
> RZ/N2H has two ADCs with 4 channels and one with 15.
>
> Conversions can be performed in single or continuous mode. Result of the
> conversion is stored in a 16-bit data register corresponding to each
> channel.
>
> The conversions can be started by a software trigger, a synchronous
> trigger (from MTU or from ELC) or an asynchronous external trigger (from
> ADTRGn# pin).
>
> Only single mode with software trigger is supported for now.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
> Reviewed-by: Nuno S=C3=A1 <nuno.sa@analog.com>

Thanks for your patch!

> --- a/drivers/iio/adc/Kconfig
> +++ b/drivers/iio/adc/Kconfig
> @@ -1403,6 +1403,16 @@ config RZG2L_ADC
>           To compile this driver as a module, choose M here: the
>           module will be called rzg2l_adc.
>
> +config RZT2H_ADC
> +       tristate "Renesas RZ/T2H / RZ/N2H ADC driver"

depends on ARCH_RENESAS || COMPILE_TEST

> +       select IIO_ADC_HELPER
> +       help
> +         Say yes here to build support for the ADC found in Renesas
> +         RZ/T2H / RZ/N2H SoCs.
> +
> +         To compile this driver as a module, choose M here: the
> +         module will be called rzt2h_adc.
> +
>  config SC27XX_ADC
>         tristate "Spreadtrum SC27xx series PMICs ADC"
>         depends on MFD_SC27XX_PMIC || COMPILE_TEST

> --- /dev/null
> +++ b/drivers/iio/adc/rzt2h_adc.c
> @@ -0,0 +1,309 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <linux/bitfield.h>
> +#include <linux/cleanup.h>
> +#include <linux/completion.h>
> +#include <linux/delay.h>
> +#include <linux/iio/adc-helpers.h>
> +#include <linux/iio/iio.h>
> +#include <linux/interrupt.h>
> +#include <linux/io.h>
> +#include <linux/iopoll.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/property.h>
> +
> +#define RZT2H_NAME                     "rzt2h-adc"
> +
> +#define RZT2H_ADCSR_REG                        0x00

I would drop the "_REG"-suffix from register definitions...

> +#define RZT2H_ADCSR_ADIE_MASK          BIT(12)

... and the "_MASK"-suffix from single-bit definitions.  But this is
my personal preference/taste.  Perhaps IIO uses a different convention?

> +#define RZT2H_ADCSR_ADCS_MASK          GENMASK(14, 13)
> +#define RZT2H_ADCSR_ADCS_SINGLE                0b00
> +#define RZT2H_ADCSR_ADST_MASK          BIT(15)

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

