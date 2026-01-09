Return-Path: <devicetree+bounces-253392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3C1D0BDB1
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 19:36:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B71DF302EADC
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 18:36:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29BD623D7E6;
	Fri,  9 Jan 2026 18:36:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0307723EA84
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 18:35:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767983761; cv=none; b=SQGb8kcr5Q5qu+wMJvdf77HhDacaE+mBDYAHji88yN+x6HFIao9PNjUqzsp/idIHMWtfq+BxVy2OHFnB+wQfdX7wE4CIw9cyGdkFx2KO2chVZ6cd9si97CATx8lFZZEPifr43OPyzv4DrAQkBLbneZMcPT4zi1lxzGxYexUeR9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767983761; c=relaxed/simple;
	bh=/OswgkBEItc3w8E3juVd/K2jBM1nZ0KXsKSQ6/hrhT8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VRDV0nI7ka++M1i+ia+cl4yLRKtfrMQCd1arpWbGe1EbGwrwTdZOyDwJoIDH99Z0FewrRlufOWfHPQau23D21V+3KTSnSvcYBaF3EdZkh+Dc5ZBF1mdTbKtS95vu4iiNsNeLDCNQyI/mZqf1oELNZfNXAT8UX5XGJmnnoSd9CEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-5636274b338so1001829e0c.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 10:35:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767983757; x=1768588557;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kI7MDthQA3ktqoj3LLmvl8KmAEBVvsPZr76uV+u11SI=;
        b=dZpNLVNIiL/8qvHyT+3JdYhBcgDGNQnQOPKHuRvXq7UF6sioTM3AMBthgSB66yz60s
         /sHTNcq2wSyWsLUtJRDELO8580560e/H+4fYmWC7V3W59f+gPW1sTWT/e/wc0P0JbmPp
         7TCPphJ/ljzvZVgi44touNQnLPxi8B91QKWhyMqOst8IFtXEbeLBS/NbpETh3LEIK2Bz
         2Z0nZeWn6pD/zjwwV5H/gQwC/QmHrUUFZdtcmntBGPOut4ZvVCYWGPDKiGp9qVYAurbm
         BNYW73H+lLUKtrSenqMVZkY9evkoJ4Qanms9UpamvKEuTontS7wajIlf9+akn5PgqbrJ
         Mhgg==
X-Forwarded-Encrypted: i=1; AJvYcCVXAvRPTh3Ju56hIMoXA7g+FPT0sJF5MJxectWcsJKEdUCs7tJbFki7NQhEW8HIue0sgEF9be30lS2w@vger.kernel.org
X-Gm-Message-State: AOJu0YzUQ1mZCEimwQHDxwq0PiPSineiAVVjGfN0EVyyy9vs6MSFFi2m
	WHfCdSbg8bP9ANiN7RJkYaoYTBW0H0sLrvL8QwnTbL2dxtWma8rD5OwxcVdaZ8i+
X-Gm-Gg: AY/fxX70MZVjddnb4KtfBo3ye0Kopvcspk0WeJTQVU7GZWW9tJMcpuCpKrzSeGjUYjn
	zWr5g7Q2oiXX5D+IY7AVM++BQJ0diaDGvcJm6Im8E+9iNxB3bOOLgInaRqGOjaApWR7ONBzQ6oz
	Hann693j+L2Dz9l2I7T8EYjf3VA86nPCmP/0S8RAt1uZhw5cQLmtfT96SgT/ugCHFCiUlOx3pTA
	05NUuWQITZ9BkRfmldc02QqYZKXxcW0CXZJXOxwgB7C0C0kg5hKpKIY54yVEwLbFz1M8QpNwZUg
	/raGpCMI4T1WvliJXNIQAZ6A27xXv2VxPbrFbLKoQyXRPfJrJ089qOsdr2JltHudbS35mOTqJD7
	DgLrDJkWJJwUuiWg3/U5yu7ySzUI66PvBCqzRdeiN78d9ZtU+jU5ZjPBNDCory3hIZLMZW5l1QY
	frIohfSDbzKBHBM4uLUXDd/aXwa3nmgGb2GMhF7pTsY+Ci8H84
X-Google-Smtp-Source: AGHT+IHud3zIm9F51Mr6ORBurMAzgFFTjCPiggsf3lM4xn3CHT95QkPOPYYRx059GYT/9Ht4rmIoSQ==
X-Received: by 2002:a05:6122:488c:b0:559:14e2:9fc7 with SMTP id 71dfb90a1353d-56345f1d477mr4152773e0c.0.1767983756646;
        Fri, 09 Jan 2026 10:35:56 -0800 (PST)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5636dc36a20sm1359487e0c.13.2026.01.09.10.35.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 10:35:55 -0800 (PST)
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-5ecddf73062so2252295137.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 10:35:55 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW5faXhJNyVBnw13AsXDQlY4wJ55ARqduoXbM2XIdRBOEscD4vVO6I9j+WXKb0/4mrTPM2Vmt3DeC5V@vger.kernel.org
X-Received: by 2002:a05:6102:50ab:b0:5e5:6396:48e2 with SMTP id
 ada2fe7eead31-5ec7573b1dfmr6430422137.16.1767983754869; Fri, 09 Jan 2026
 10:35:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1764165783.git.tommaso.merciai.xr@bp.renesas.com> <1d7a6c1380a80d82680e606a8523c76e0000390a.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <1d7a6c1380a80d82680e606a8523c76e0000390a.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 9 Jan 2026 19:35:43 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW-CSVVDHXEXA5GwjERKaUHO4xxd9HCX0nez0vtCT18PA@mail.gmail.com>
X-Gm-Features: AZwV_Qhl0ZCxFQW4Tw2z2j1hLTuejm9SEcPf1C0HVyWLKtwLrOiE5-4aIHJu94g
Message-ID: <CAMuHMdW-CSVVDHXEXA5GwjERKaUHO4xxd9HCX0nez0vtCT18PA@mail.gmail.com>
Subject: Re: [PATCH 03/22] clk: renesas: r9a09g047: Add CLK_PLLDSI{0,1} clocks
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 26 Nov 2025 at 15:08, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Add support for the PLLDSI{0,1} clocks in the r9a09g047 CPG driver.
>
> Introduce CLK_PLLDSI{0,1} also, introduce the
> rzg3e_cpg_pll_dsi{0,1}_limits structures to describe the frequency
> constraints specific to the RZ/G3E SoC.
>
> On Renesas RZ/G3E:
>
>  - PLLDSI0 maximum output frequency: 1218 MHz
>  - PLLDSI1 maximum output frequency: 609 MHz
>
> These limits are enforced through the newly added
> RZG3E_CPG_PLL_DSI{0,1}_LIMITS().
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

> --- a/include/linux/clk/renesas.h
> +++ b/include/linux/clk/renesas.h
> @@ -153,6 +153,26 @@ struct rzv2h_pll_div_pars {
>                 .k = { .min = -32768, .max = 32767 },                   \
>         }                                                               \
>
> +#define RZG3E_CPG_PLL_DSI0_LIMITS(name)                                        \
> +       static const struct rzv2h_pll_limits (name) = {                 \
> +               .fout = { .min = 25 * MEGA, .max = 1218 * MEGA },       \
> +               .fvco = { .min = 1600 * MEGA, .max = 3200 * MEGA },     \
> +               .m = { .min = 64, .max = 533 },                         \
> +               .p = { .min = 1, .max = 4 },                            \
> +               .s = { .min = 0, .max = 6 },                            \
> +               .k = { .min = -32768, .max = 32767 },                   \
> +       }                                                               \
> +
> +#define RZG3E_CPG_PLL_DSI1_LIMITS(name)                                        \
> +       static const struct rzv2h_pll_limits (name) = {                 \
> +               .fout = { .min = 25 * MEGA, .max = 609 * MEGA },        \
> +               .fvco = { .min = 1600 * MEGA, .max = 3200 * MEGA },     \
> +               .m = { .min = 64, .max = 533 },                         \
> +               .p = { .min = 1, .max = 4 },                            \
> +               .s = { .min = 0, .max = 6 },                            \
> +               .k = { .min = -32768, .max = 32767 },                   \
> +       }                                                               \
> +
>  #ifdef CONFIG_CLK_RZV2H
>  bool rzv2h_get_pll_pars(const struct rzv2h_pll_limits *limits,
>                         struct rzv2h_pll_pars *pars, u64 freq_millihz);

So these definitions are shared with the DRM driver, and thus are a
hard dependency from DRM to clock driver.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

