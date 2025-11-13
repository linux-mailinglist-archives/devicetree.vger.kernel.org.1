Return-Path: <devicetree+bounces-238275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 817B7C5987F
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 19:42:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23B733ACC49
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 18:39:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 848F63126C3;
	Thu, 13 Nov 2025 18:39:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00C3330F53B
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 18:39:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763059179; cv=none; b=iIeesqMLCu68wDHT4/kLahe4qCNIbP7nAXuvy+32XF9a6EgqJVKi4RrI+pvNysjSYQ/MVL2zORVFKNNbHkNC8VbW3PPKdjbMfURIUCEqCZBf1wtq8f0jtCrvO20txSoYo7T82c5hwOHOqkRDMooAh97XdeqgYHd6fA9hXB/ZDo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763059179; c=relaxed/simple;
	bh=3c0sAkDQu1qBVzE7td1x+QSCl8WUFk7pNS0yIvPZ3RM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lcYyS/+kNR8BQlrf7zEgVEm+oUIv/4voCRhAyehpoturYkyCY4cMTrh1KrRxIksPkJR6+kifPorJkUahTIfeUQBopbsz18LDZoyk1sbX4o+C16+1AZthIKpJWtRm/6RuLyDvJXjA+3AZutaVNiy4GZHJrWj94KsL7HMcWy3xl5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-9371f7571cfso398745241.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:39:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763059177; x=1763663977;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fn33ddPk9bS9PgY509eYuCfPPBWfLh0ylYRDGrpE/Zo=;
        b=Ew7V3S8eVN6anG0q/kaMKcf9kISf6HhNeSE+JhMWn68qoPCjN73vn5Nx49iIdebrBK
         g2nU2kPkiOIAI8ZOiQ2PFBQd7T3+s9+t+gbSaZz3xeDG7kH3e+RxjHWzXBm+Bpgt5uGo
         gb1tWFymmH6Aohgz0kjBu575STYD5KnT82Fbxoid4Aqr2Jb3z7J3nazHknyaZT4HKAjk
         hFOVGR0amhckQKshQSfXLG8ment7seHq7W850BmplfInw7y2RkgZa8kOiWl5p8OdTt1w
         S6uGwOw4OnQKWsi/DUJ1fnrryuCJX1hQ/Lc364sEjEWqG+LKq7ugC23Y8jqF6/K9R5SO
         fLoA==
X-Forwarded-Encrypted: i=1; AJvYcCWs9Bm638k1AG2MpNRqc+VsOWXRQcVBIzA/wyXsw+NBQekq7UqFtL2jp86YfFo2kYjX0O6LAULbr8t2@vger.kernel.org
X-Gm-Message-State: AOJu0YzvdtT4UzBiwqJ7EnzaU4eN9mrpeQ/ME5CALyzom4gPRObkPUuZ
	OIbcf3QXP0jcb50oPEtkas5dqk4H0N2CzNApWIL68nhHQuyBtB9DW+VdBt2qqhYjpU0=
X-Gm-Gg: ASbGncsKiphATVZ36jGNjsCB0YRs4UhKs4QNxHvWYFaKJkq5yEFgBWYx0aNdf6lpmWJ
	FJQh89AxD/2nY5emoi5WItjBv4zyVVJiSZT+XC4xk/G2iAXqj3uObwA3wg7+i149dCAmA4HEaZW
	Kroh7wvIrIOTazlAdr4fsuTdM6vMif8Kq3qQukXuLynBXrIAJM2R0acbA6tbdI0HiK9zzgFDjFF
	QD/f0spN74o1UtnC61mSlv3KS9Psfj0cDRxox4B6gLt8JYkXpdKvPBU4yJVUjfmJQg5mJuMMDkl
	llqaQov8+TzdP1n2pg1h0FVdhOukGdaaPTQL/UcwG70LIUZTNKHQhkAUSGWj73UYa59WI+6NamT
	2fRN4VKe5WdIQKekMj4fN3t79P/cZrP9Bl9grttfCDmte/QtQtcmr76X0L1l1+N/dTsma4VOqM6
	LY4hfVzqmHQXelaEFL+BikpbszdjaXi5I+INVwmw==
X-Google-Smtp-Source: AGHT+IEg025/8GaZyuaPj//SE28CjtwYiYJ0/g9OHrwa2UkmjJux2bX9xa/IefVR6wQ+urh8XVR31A==
X-Received: by 2002:a05:6102:38c7:b0:5df:c390:ef5b with SMTP id ada2fe7eead31-5dfc5b94a70mr348208137.38.1763059176746;
        Thu, 13 Nov 2025 10:39:36 -0800 (PST)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com. [209.85.222.48])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55b0f359fa2sm1030386e0c.8.2025.11.13.10.39.35
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 10:39:35 -0800 (PST)
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-93720fd0723so369056241.2
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:39:35 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUc/bgnwcvk0vtzdzeub2Iryu/pxzeKABTFxiyK9iruj/802nf4SR+OxXZr6VrwElOBIav+WRGAM9Ts@vger.kernel.org
X-Received: by 2002:a05:6102:4b88:b0:5db:eeb6:812c with SMTP id
 ada2fe7eead31-5dfc5b96e0amr374019137.43.1763059175404; Thu, 13 Nov 2025
 10:39:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251105104151.1489281-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251105104151.1489281-2-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251105104151.1489281-2-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 13 Nov 2025 19:39:23 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXEjnPWzwLF49ryooEUPNeLtXEuHDipcCMq=wsXN=zD_Q@mail.gmail.com>
X-Gm-Features: AWmQ_blsF688r-SQvCXnNFqKgHzgSK8u69yJh9wFop3IkqSYjXU8VHfHFzFl3OY
Message-ID: <CAMuHMdXEjnPWzwLF49ryooEUPNeLtXEuHDipcCMq=wsXN=zD_Q@mail.gmail.com>
Subject: Re: [PATCH v3 01/14] clk: renesas: r9a09g077: add SPI module clocks
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, linux-spi@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Cosmin,

On Wed, 5 Nov 2025 at 11:43, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs have four SPI
> peripherals, each with their own clock divider, which divides PLL4 by
> either 24, 25, 30 or 32, similar to the SCI peripheral.
>
> The dividers feed into the usual module clocks.
>
> Add them all.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Thanks for your patch!

> --- a/drivers/clk/renesas/r9a09g077-cpg.c
> +++ b/drivers/clk/renesas/r9a09g077-cpg.c
> @@ -54,6 +54,11 @@
>  #define DIVSCI3ASYNC   CONF_PACK(SCKCR3, 12, 2)
>  #define DIVSCI4ASYNC   CONF_PACK(SCKCR3, 14, 2)
>
> +#define DIVSPI0ASYNC   CONF_PACK(SCKCR3, 0, 2)
> +#define DIVSPI1ASYNC   CONF_PACK(SCKCR3, 2, 2)
> +#define DIVSPI2ASYNC   CONF_PACK(SCKCR3, 4, 2)
> +#define DIVSPI3ASYNC   CONF_PACK(SCKCR2, 16, 2)

I'll move these up while applying, so all SCKCR2 and SCKCR3 definitions
are grouped and sorted.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-clk for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

