Return-Path: <devicetree+bounces-252885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2383BD0402A
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 16:48:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 25EF03037BEA
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 15:46:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABC6449659;
	Thu,  8 Jan 2026 15:40:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D425E500975
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 15:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767886826; cv=none; b=BJ4zf+EEt5ATndzIBTVcpDztCa0i8Dc0dTI+u9DuER1KuEldCn+viX6Yn1/omfEWVOLSL0TyrP9DbNkzwJMy1f1t/0E2LuEhWIN6KyYiLgLY8uW3dYjPZHdaobabneD0fO7sHFPfXxiJyWoB/gPwgU5FaTKrrNur7C10Dj3pPhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767886826; c=relaxed/simple;
	bh=G7JSDJeyfhq10WIyx1yxqUoIHN0VScyPB72n/Phi9m0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DQRL196SiGkPWDuhQ7Uv/y0QwwH836o+7b1rnkwNDseatu6k0GOKkC9WRaRpUXcOQlE7/MfJF1fcq/qjen7NWKZtKV8TGZPXvj9+CNLguTBvpIWhj+GbgIJW+ne2FDt4UZ2GxlIswtpfA2RBG3tt68+7C7wOCMhfBdNjLGtKbME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-93f542917eeso1061403241.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 07:40:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767886823; x=1768491623;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LPCEMds3NUNJIzMjaHhQoyBDppqgLalAn8n+Qce6geo=;
        b=kAzhhOidPkpELJvy2Kqkmcm0bVqshru1/pdFs4HDjb1neff/ATXb3SXNgrUCsCA8uf
         2tpd4EhXsSfUaE9DK0UvFyzFQ4shNQQsALZ8d2K16b8V2yiASFU0JFi8C1nFRwyKGVF0
         l04zp8ooUlWLloqYj4y3SiwO+QSgRYqidVKbQUfXFcSMf/RhoI9f9rK1O9wpK6Uqi0rm
         m9zB6qHbVWzvF6tHz4kUilNorWqRDuUljn/YqGIOxaI5grw0fvBj+DohCSxPG559IFJE
         wSPIZYMauAg/RSN7kH+kwq98MqM3O52j4HM35a5tv/IcQRbtVaVs1ioqbyu5RK4dgONh
         c6xg==
X-Forwarded-Encrypted: i=1; AJvYcCX4vnbKqtWVkJJL/+mdXxXAK9K6FKOyjSNhWagEQQQMNmnkHkJ/oI4B9urudnQeWrwEXp+wCddByqnL@vger.kernel.org
X-Gm-Message-State: AOJu0YxTQTFZ9jTpZnOpxhmeFZKC4d0YmozTbp6vmHGMJQaf6HvYHkU6
	07bsVAFm8h2KaB5NbGwChhaOFoScEnRE2yWpgxhKxoHeOYd3oO8QCK72+zMA+EAA
X-Gm-Gg: AY/fxX6D68GPR6hvfgsZa6ja5khgLM1WnpkgqJpBi7iISB12x/nEXGD3+NPf94K2PQB
	fDTjme7tQowaObdqGSNsNQy+ALa9UlWNnZWxtC2OVWYZpActTdkNsFlPIObfAj/YVqRhD6hpC8M
	fwDWnaymtkROyfaz5BN/Q4kRZ5LN8WOdyeYg6BOmetp0Z4JUxVCYaXOSoBGZy7wIDPeg2A+HTcJ
	muHlnXyjAW9+sW/bpaZQbJO6ZWwOkoQ5Djfx7JL4hui3zH7cpdS9c/FDS+n6e8y/GkNtHUNOGLM
	w6qKkvvAe334jdP9c2YV+82j1zRSsr3yJIYP+YZlfvpMv49NMANc4NTB61PLBOu4ZuhZuLBOvJY
	YcSPtHytjN+THJepVU4gJfth9Ai557AbLLqRq4kTSAMbr/IcrgW3qHZLgbvHX6XAdQpF08JAc+8
	pzddma4j4KIqunHrQydy931OoJV0rLXKLNZS6rro6KflScI5S5w5J/
X-Google-Smtp-Source: AGHT+IFQUuQcOCuI3tM4YhXzg+UnN47ADQ/XuyruPZs5YGbyiVJXjaIV//YEeMnUPsTbUGsuoI6JUw==
X-Received: by 2002:a67:e113:0:b0:5ec:c528:4df0 with SMTP id ada2fe7eead31-5ecc5284f85mr2235795137.34.1767886823312;
        Thu, 08 Jan 2026 07:40:23 -0800 (PST)
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com. [209.85.221.173])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ed091d93f8sm4887077137.9.2026.01.08.07.40.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 07:40:22 -0800 (PST)
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-55b0af02ddeso564078e0c.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 07:40:22 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXg46ziILQtmLbxx04tmShXlNA04u/2gzoPmAOsl/kqQK6WgnXRpnIZM6tfq0eB+SklWXCEMKVloMcE@vger.kernel.org
X-Received: by 2002:a05:6122:8c8a:b0:539:2a2c:6efe with SMTP id
 71dfb90a1353d-56347d53d51mr1984301e0c.4.1767886821868; Thu, 08 Jan 2026
 07:40:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251126130356.2768625-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251126130356.2768625-6-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251126130356.2768625-6-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 16:40:09 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWY1+xo0sLs_OxLNf0ES0pZy+Q-u309gRXuTsZ3cf2ACQ@mail.gmail.com>
X-Gm-Features: AQt7F2q4mnTwj4mP8-vYCbbynRSDudO3B41aJiCWB2w7nQNsSq50R88G--5ck-E
Message-ID: <CAMuHMdWY1+xo0sLs_OxLNf0ES0pZy+Q-u309gRXuTsZ3cf2ACQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/9] thermal: renesas: rzg3e: add support for RZ/T2H
 and RZ/N2H
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: John Madieu <john.madieu.xa@bp.renesas.com>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Cosmin,

On Wed, 26 Nov 2025 at 14:05, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs expose the
> temperature calibration via SMC SIP and do not have a reset for the
> TSU peripheral, and use different minimum and maximum temperature values
> compared to the already supported RZ/G3E.
>
> Although the calibration data is stored in an OTP memory, the OTP itself
> is not memory-mapped, access to it is done through an OTP controller.
>
> The OTP controller is only accessible from the secure world,
> but the temperature calibration data stored in the OTP is exposed via
> SMC.
>
> Add support for retrieving the calibration data using arm_smcc_smc().
>
> Add a compatible for RZ/T2H, RZ/N2H can use it as a fallback.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Thanks for your patch!

> --- a/drivers/thermal/renesas/rzg3e_thermal.c
> +++ b/drivers/thermal/renesas/rzg3e_thermal.c

> @@ -381,6 +385,21 @@ static int rzg3e_thermal_get_syscon_trim(struct rzg3e_thermal_priv *priv)
>         return 0;
>  }
>
> +static int rzg3e_thermal_get_smc_trim(struct rzg3e_thermal_priv *priv)
> +{
> +       struct arm_smccc_res local_res;

Missing #include <linux/arm-smccc.h>.

> +
> +       arm_smccc_smc(RZ_SIP_SVC_GET_SYSTSU, OTP_TSU_REG_ADR_TEMPLO,
> +                     0, 0, 0, 0, 0, 0, &local_res);

Can this crash? E.g. if this SMC call is not supported by the firmware?

> +       priv->trmval0 = local_res.a0 & TSU_TEMP_MASK;
> +
> +       arm_smccc_smc(RZ_SIP_SVC_GET_SYSTSU, OTP_TSU_REG_ADR_TEMPHI,
> +                     0, 0, 0, 0, 0, 0, &local_res);
> +       priv->trmval1 = local_res.a0 & TSU_TEMP_MASK;
> +
> +       return 0;
> +}
> +
>  static int rzg3e_thermal_probe(struct platform_device *pdev)
>  {
>         struct device *dev = &pdev->dev;

The rest LGTM.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

