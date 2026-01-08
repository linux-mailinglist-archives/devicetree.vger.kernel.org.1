Return-Path: <devicetree+bounces-252960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 31242D0526B
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 18:46:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B3E8F30787A9
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 17:43:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E07D302750;
	Thu,  8 Jan 2026 17:43:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3C2E2FD7BC
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 17:43:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767894189; cv=none; b=SbEqOc5YWfzozsrhzP/P2Ce5yYVpTf8uWi2+GHZGgSq21IOJqqJBODyKKaU/KfBcj5Mxkn/dWS3Os+OMjPs389pLl8j2zfsIcIfbiifRAlrLvKusCJvWF+QviicYYyOM5gmpLjyWUqeyCFxHA/kIK13abd/sTE5o1VyCJzGayw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767894189; c=relaxed/simple;
	bh=GAMmRH8WG4SuwJpSk40B1/V0uVXYQJKFg56MoYwmk70=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HNHkFjF5uK6UlrOKAwRvpCe7Yx6mrXKWRIKDlqt36iPEM/9Z5Kt2RISjHW7VsI402JuHFvymXVQIa/hm0T+c+otMJZouh75La/cGAdcuw4vfQYPmyaK3IMV4YD+ngwbceg7tw/WMGDuFDGjEWfaZc3RrbmGFO1gv0UCzkd7mHKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-943d0cafe77so1143176241.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 09:43:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767894180; x=1768498980;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pfe9XNi/Cjru8cNLH+ivGd+Nm2hyK8hmMgtx6v7K+ro=;
        b=CKxwJGSte4nRXRAJAmaVKCZDIUApJtszxhh2kR6etpEEEIBQfZBoIXwJsuBdlEpuKX
         CZeLJmxfMV7qYZ4hn9iQjorTHFtIwSvWYUUGG8rv8i3OCk73h8+7Pz5x1QGOgZNriDux
         Mtg605zxsI5R0ERdzOUO3W+AFM5ZXbDRbAmhrsjpYAY7qmAV2v6TwSkXSnKgEAQmx+Jv
         Onzw5VUQmMyVHXCylGGILWBt3B7j3KfaXd7xaMb/7XDrkjuqblfEaM8XNrc/gtSrF+wt
         vPIl6vhen9K+OcfcQxIyr/a4Vh2AmpYUN+wrmd6fnukhaaYXl6ALJLSWmNj2lQUwfE9A
         PqSQ==
X-Forwarded-Encrypted: i=1; AJvYcCXTwqloUuetYJy7W6rrLwtWpbfStO168CQWQl+9GZ1dUnSBzXJEQ3sX75FBdZDMDr6+CEk6udpz0Hm3@vger.kernel.org
X-Gm-Message-State: AOJu0Yw186kqpuqASiCnWmv7KtaTduxzBh0HfaSipxtgdSHU8sipIMgR
	3Rfhj38Pl6v492CYNEalecgPx04wGP+XNVeyL2ZwHSB/QpyLy/e/dQnPMDiWm/kB
X-Gm-Gg: AY/fxX62aoj16HKocQnzKtRGrOpzz/eiPsOYhENcz4qLRwiy5H5KLtiMY0FhFGxSoWk
	gAA/k3PIMcwBRj/6i3RtMGbkOiNfwQ8deztLz4r/UIYy2PjsH48fYX3wFTjPMvhYRCVWt6FkrO6
	KF14ohgzaFtdiKDKFootd6BuPOENC284TdQ20bhVHm2LIaODoE2pfoe0w5a/YFpj9EJt4ge8vGs
	ftFp3SoHO72v5+X+Sf5A5NcA6N5kKNw0jAC3JzGfxSze14/Mge9YJuWsUhpREqwUHgms+aS8heV
	m97Bq2fo1Nc2EeJCd8y7/tPozt7fXJOUlZ+Agj3jejx6XfRv3PGmnEETVbPIs1btzYB4EZE02Ue
	1p8VQsRumNlpBCBN39Gp3E2R+AnNJ06UZsL1Q3gXsdv39ZLDC7Q4P0X19tqfTVKltM1TKJCgxXT
	g5rza45nazIRWgno1f30Fva0sMBXs9L5SiEitFzjNdqGxkEXTd
X-Google-Smtp-Source: AGHT+IGR7slCBs96tv6VNtnAk2TAHbcmoVm3SJX6J6Iz2vIZCht8pCuOaKBAAR7b0dKt8qE3c/UO4Q==
X-Received: by 2002:a05:6102:d90:b0:5e5:6f1f:75ec with SMTP id ada2fe7eead31-5ecb6981b07mr2328360137.35.1767894179935;
        Thu, 08 Jan 2026 09:42:59 -0800 (PST)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com. [209.85.222.53])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-944122d6132sm6837048241.5.2026.01.08.09.42.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 09:42:58 -0800 (PST)
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-93a9f700a8cso1170392241.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 09:42:58 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVoZ0n4VlUOLgWh0CsCb038GNrIDwepGzTXsTRzIM9igkMPigyWjQ0mTofk/EBVLimIbt2HOptvGWvR@vger.kernel.org
X-Received: by 2002:a05:6102:5cc7:b0:5dd:89ad:1100 with SMTP id
 ada2fe7eead31-5ecb5cbb74bmr2376260137.6.1767894178396; Thu, 08 Jan 2026
 09:42:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260108165324.11376-1-cosmin-gabriel.tanislav.xa@renesas.com> <20260108165324.11376-6-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20260108165324.11376-6-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 18:42:47 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX0G92JmwneZp1h+AOF-Cit2scVGGWXCBZGwBVmJjUAVg@mail.gmail.com>
X-Gm-Features: AQt7F2oaRcSSM-TJ2lzWvwve1kr4JhP9eX1Et_7XoG_piUmKankXGgTr0tEIJaU
Message-ID: <CAMuHMdX0G92JmwneZp1h+AOF-Cit2scVGGWXCBZGwBVmJjUAVg@mail.gmail.com>
Subject: Re: [PATCH v4 5/5] thermal: renesas: rzg3e: add support for RZ/T2H
 and RZ/N2H
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: John Madieu <john.madieu.xa@bp.renesas.com>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Magnus Damm <magnus.damm@gmail.com>, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Cosmin,

On Thu, 8 Jan 2026 at 17:55, Cosmin Tanislav
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
> Reviewed-by: John Madieu <john.madieu.xa@bp.renesas.com>
> Tested-by: John Madieu <john.madieu.xa@bp.renesas.com>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
> ---
>
> V4:
>  * pick up John's Reviewed-by and Tested-by
>  * replace new macro TSU_TEMP_MASK usage with existing macro
>    TSU_CODE_MAX

Thanks for the update!

Looks like Gmail blocked my review comments on v4 :-(

> index c1b586128fa6..ba13ca8cbb8c 100644
> --- a/drivers/thermal/renesas/rzg3e_thermal.c
> +++ b/drivers/thermal/renesas/rzg3e_thermal.c

> @@ -362,6 +366,21 @@ static int rzg3e_thermal_get_syscon_trim(struct rzg3e_thermal_priv *priv)
>         return 0;
>  }
>
> +static int rzg3e_thermal_get_smc_trim(struct rzg3e_thermal_priv *priv)
> +{
> +       struct arm_smccc_res local_res;

Missing #include <linux/arm-smccc.h> (on e.g. arm and riscv).

> +
> +       arm_smccc_smc(RZ_SIP_SVC_GET_SYSTSU, OTP_TSU_REG_ADR_TEMPLO,
> +                     0, 0, 0, 0, 0, 0, &local_res);

Can this crash? E.g. if this SMC call is not supported by the firmware?

> +       priv->trmval0 = local_res.a0 & TSU_CODE_MAX;
> +
> +       arm_smccc_smc(RZ_SIP_SVC_GET_SYSTSU, OTP_TSU_REG_ADR_TEMPHI,
> +                     0, 0, 0, 0, 0, 0, &local_res);
> +       priv->trmval1 = local_res.a0 & TSU_CODE_MAX;
> +
> +       return 0;
> +}

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

