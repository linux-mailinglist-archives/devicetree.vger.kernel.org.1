Return-Path: <devicetree+bounces-243729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A7551C9BB19
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 15:02:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 69EA84E29B9
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 14:02:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70676313E02;
	Tue,  2 Dec 2025 14:02:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03540214228
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 14:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764684154; cv=none; b=JT8In37SYnyKOr3J6n/RUUzhBHyyr4dZAD90moWN7pShkyFSgG7JgEnWASuJ4Z2pwAvd5i+srrvfRuWS0jVsOTJ7dYRoi1akaKEa6FpcB7qN4ijsYeyfGf/O8de5rYhm5Hk0x6QuKWlcP7kz3abC56q9BINR375VfStz/pP7jTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764684154; c=relaxed/simple;
	bh=ak/Rt6uWiX+MT4pBJfZ+PD2Fezju7a0RibofMkxgxGI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VR6Z5PZg7KpWvayEDpqIDuW9qoB7ZgOQYBrtQpPsGTDf0JQmaoVaolsmrwoB8RockLAze3VN1CPefUNHCVAVwGmiX1M3iTApXRgkKe6wD+ozORrveP+0bDkNRJgPftPQs1eM7ENcNWX8OsWdn0NxvjFszvY+dcg0ymcmLN+3HYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7d26a7e5639so6081488b3a.1
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 06:02:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764684151; x=1765288951;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DcG/XQXLp9HYcvharszf8uW0YuqvJnIwjKHOdBnLhz4=;
        b=aYy2+DSXTjIIMSzqgKW1exljzt0pCS4+RvGN+CrRR8TanD9wjEghM57J+sS75QoB4V
         I1RVqrZBhkC7p8SpccW+ECiwy0EdbpR6fdPFtxnKog9ellcnq0DtMSSgeA05Pjn1fnX+
         w48hNK4SrqQJTbvd9VVUlwHRHua7hu31ky+HggFBZEkRaACGNqMbL2KlAK/EqyFPVX18
         XWDbIKCfOVsJrHO0KDlOi5gth2H37re+FFjP2iD4dKaKDRk+47kt0KqFYblWJ4tls6xn
         jOj4r19k7JCDQhRzWUhNu5oN3lJ00h02PzVmPAWgOE0aHFzweMVT0NogW+71fY66BAcV
         tz5w==
X-Forwarded-Encrypted: i=1; AJvYcCXHo+Lde4Dag+UfFTcvo72/Pr0eVgyrSxU9+jULIefrfu+hcAOODP25opovdVHeAGk4dL7xQf8bB+L8@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7CWU+3Z6nPf6n/MSswD4OYzPnsuFJXEx9sV8afL3q6E1/Dpr8
	oRmufa8LGCvlLl73b5dOCYEhRcb3k0H2S9wPOP3RkuOgtf9Sc+mRabQ8oabExQGU
X-Gm-Gg: ASbGnctSlS1HWkX/cxdf2YjCgHjAcumr8b+OcjW17fPStTk48lsVyGTwfUYpNS0fB2d
	NhCc/Pwv4LvLQ9Zz7hIuw9MkmD7R9a18kRKFXmnt4MpHkTbOPcubOk7Z+Dkz3FJGlpuicCJQ3yc
	cChI4tM42S9ZRSBDuPLNf2Vf5AS7pjBcTnfsJjP9oLGH11+dgU32awz2Cot6pwik4GKimonQvWM
	eMLM/9HrrBbpsl2OPUeGK8Z529r9o9Q1ohO0lITYqgVBDPPPeZhDYxQmaJkz86v4d9QuB6Ntdmm
	BgMqDh3uS4+465G1FxtQs+8z1RwL0ksaJZdtuLNAZAz3Xpv30hel8/M121phobKYxMi0V8ttFEB
	wr68c6CS81uQUDZbhHRBwmxKPeZ3/16wfnsYBI3tNPot5Oy5vDsSlEZ82t412CzdfoqNQPhWfCq
	FiNfXCSb0LmYmGpIm4OBl4YAsinMI/AthDOFkKCRRs8azbj1t2aZja
X-Google-Smtp-Source: AGHT+IHe4cISQlwXBCx3AGWwoodO9GaCHkMeJbDG3cJuFs5uc658tJaEYaIiG7Y0a5DsYHddWeM0CQ==
X-Received: by 2002:a05:6a20:3d1c:b0:341:5935:e212 with SMTP id adf61e73a8af0-3614eb77688mr40568567637.18.1764684150783;
        Tue, 02 Dec 2025 06:02:30 -0800 (PST)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com. [209.85.210.173])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7d15f175f15sm17021487b3a.53.2025.12.02.06.02.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Dec 2025 06:02:30 -0800 (PST)
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-7bb3092e4d7so5599190b3a.0
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 06:02:30 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU2YShZW/3SpjKucVqvqrNiJcwHoF5+i0nVcoo/s4oO50qDUwpSgb0JJGTU/fMhatqx9Q9DcPqT3IEr@vger.kernel.org
X-Received: by 2002:a05:6102:26c9:b0:5dd:89c1:eb77 with SMTP id
 ada2fe7eead31-5e1de39d9cemr17004298137.29.1764683823416; Tue, 02 Dec 2025
 05:57:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251112-b4-of-match-matchine-data-v2-0-d46b72003fd6@linaro.org> <20251112-b4-of-match-matchine-data-v2-2-d46b72003fd6@linaro.org>
In-Reply-To: <20251112-b4-of-match-matchine-data-v2-2-d46b72003fd6@linaro.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 2 Dec 2025 14:56:52 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVJD4+J9QpUUs-sX0feKfuPD72CO0dcqN7shvF_UYpZ3Q@mail.gmail.com>
X-Gm-Features: AWmQ_bnP_BfEGwKLqJN8UevZeVXg10-IsXC-lVqCY3H9e2HFkqZ11liOD_Kw768
Message-ID: <CAMuHMdVJD4+J9QpUUs-sX0feKfuPD72CO0dcqN7shvF_UYpZ3Q@mail.gmail.com>
Subject: Re: [PATCH v2 02/11] cpufreq: dt-platdev: Simplify with of_machine_get_match_data()
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Yangtao Li <tiny.windzz@gmail.com>, Chen-Yu Tsai <wens@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Maximilian Luz <luzmaximilian@gmail.com>, Hans de Goede <hansg@kernel.org>, 
	=?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>, 
	Daniel Lezcano <daniel.lezcano@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
	platform-driver-x86@vger.kernel.org, linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Krzystof,

On Wed, 12 Nov 2025 at 11:37, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
> Replace open-coded getting root OF node, matching against it and getting
> the match data with two new helpers: of_machine_get_match_data() and
> of_machine_device_match().
>
> Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Thanks for your patch, which is now commit 6ea891a6dd370ab2
("cpufreq: dt-platdev: Simplify with of_machine_get_match_data()")
in dt-rh/for-next.

> --- a/drivers/cpufreq/cpufreq-dt-platdev.c
> +++ b/drivers/cpufreq/cpufreq-dt-platdev.c
> @@ -219,20 +219,13 @@ static bool __init cpu0_node_has_opp_v2_prop(void)
>
>  static int __init cpufreq_dt_platdev_init(void)
>  {
> -       struct device_node *np __free(device_node) = of_find_node_by_path("/");
> -       const struct of_device_id *match;
> -       const void *data = NULL;
> +       const void *data;
>
> -       if (!np)
> -               return -ENODEV;
> -
> -       match = of_match_node(allowlist, np);
> -       if (match) {
> -               data = match->data;
> +       data = of_machine_get_match_data(allowlist);
> +       if (data)
>                 goto create_pdev;
> -       }

I think this is a change in behavior:
Before, the pdev was created immediately if the node's compatible
value is found in allowlist, regardless of the value of data (which
is always NULL, except on RK3399),
After, the pdev is created immediately if the node's compatible value
is found in allowlist, AND data is non-NULL.

>
> -       if (cpu0_node_has_opp_v2_prop() && !of_match_node(blocklist, np))
> +       if (cpu0_node_has_opp_v2_prop() && !of_machine_device_match(blocklist))
>                 goto create_pdev;
>
>         return -ENODEV;

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

