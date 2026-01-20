Return-Path: <devicetree+bounces-257247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DBAD3C485
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:05:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CDD6B527732
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 09:46:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7131A3A7847;
	Tue, 20 Jan 2026 09:42:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2133D6485
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 09:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768902152; cv=none; b=LkxihJgc7VTX2Y9AwjijQN1sAf3+ixOk+sV9EeIzNO+09XPHnxH9n1lD/gOx1tFWDJqzqMJvgTD39oFMaDr7GdF4zKeVnM4N+7EUgPPksyV8t6WCM0ub8CbZjsrnP2qTfKy7Pge2UGsVBdtvB6B8DkTfpk8l16L6BnuYke1lbf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768902152; c=relaxed/simple;
	bh=8oF7WvkLTpbnCP6yb2DMCynlFu+13M83ZUzjQuNxXOc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OMqrb8jOkWQzIo3FEifwC3tELut72pf0LRA0Lh9aHd2RJGnj13sGXqqPe3pLw9luxkT3VFiEN+gFk0ZwvlYeRXqNjza+EdFAc41uWLkmUK7l8gQ8puK+vzLqxMcz9kDxK8dvizDTOb/vPnpi0KPTn+QbZtmQdvotzRV0OLS60qU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-5636784883bso4231702e0c.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 01:42:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768902150; x=1769506950;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=97LNh80TR77S8pwS2e4ZBU/MTmpHjj3Q16znIrdsedk=;
        b=hHp4ya+TT0/DbfdGDo+YdkWNuZfSSxcPvSGLIoG3iXE5kxkuMGJGZEU7qRQp5WWVag
         4g4U/FMIU9yGiMOhtqnyuqqznEf9DmQrMzlflWKZYCa4fL7HFzb7QlKzR99CaPrSMAap
         ZXcmOXDTQ5SZWgyIn6ssy687igpZlmNy2TYFWf2tE3nq2S+0BCFY/HlM1nqwzFP/viJv
         Awg1VVI9qJ8HHrWLB+70E1T1QPQlXLqa6c1XEnE7OJWNsf5Q3a+a/cEmF0AQeTO1JV5r
         SpFlBYZTJPpEN8hGCfwCPDTq0XuoCgY0GvsW1ZSutuMaRy672g13+pb8CoO4ZH1dl1pn
         y3Hg==
X-Forwarded-Encrypted: i=1; AJvYcCUemB/yuKYMM01hwydAaeYyVHRYzXfRdHt3l8W2bBLHBZT3voxkLqQZHvtEW95k80vODUPWPshaqP7Z@vger.kernel.org
X-Gm-Message-State: AOJu0YxNhvpsmlyEOObGWRJSDOtUqIZg6taxv4FfzR1ISeSJqjm6p5dD
	W7tIXQiPzPHhoA9vn4HQfs3PpbhYQf3S042CXyBKa2thjc2trSn3Tl7c9+z/bpL1
X-Gm-Gg: AZuq6aLiSxi8NDeiH0S6YQj1Lt24MXwxiJHOpRIDWg9XIM/8HHj57Vt4RVJfT/bw77G
	xnlPXZN0lBZyz2tOBnbp9xV/cgjraMYbAII+XwgVYjUq7uYMR723thffBIofNWa0OOV2mC2H1HG
	X1WVXRuy0oTxwmY8Dla/ICsU0j1/Olzg7GOMHrfb+epxoCtd8E6ZJX3QPNUaGmlwxlvYlsF/2DG
	kIreSWo0NYkulHTm4ClTPO2j8FT7/hBcj80lJ9vbdiGiGpSwvSk3rHQcvGB5F61z8KBw0RaBBlr
	eoWZGVU4eSPmyh2wgMZi5dCp/HvVn5gOZ75rntC/3kyC34/DUQ8EU6ZQ2wyfjF8hNjoZt6C7M8w
	7AcRQLPt+oPct9/RufskxCOJpyPGBDVDvAxnifXPatCvpV3VHKSrVFCYtH1ZYD89zi07GTmR1iA
	5DCl3Y6cbpXvtPYnBo7OfF9tM9Fm6YiXN66HndF1GjRTTvydGb0S8P
X-Received: by 2002:a05:6122:da1:b0:55f:c4a6:c584 with SMTP id 71dfb90a1353d-563b72be5cemr4242242e0c.1.1768902149703;
        Tue, 20 Jan 2026 01:42:29 -0800 (PST)
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com. [209.85.221.174])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-563b6fdb23asm3349231e0c.4.2026.01.20.01.42.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 01:42:29 -0800 (PST)
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-55b09f54e98so1726338e0c.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 01:42:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUaisig8WxyRMmXMnMO7o+3/1hseVSI+1lPro8jrxBRIbw0IpVIHY46l6zGj23eeM+RI2rJ6mM8rRRN@vger.kernel.org
X-Received: by 2002:a05:6102:1610:b0:530:f657:c40 with SMTP id
 ada2fe7eead31-5f1a712440dmr4338759137.22.1768901715766; Tue, 20 Jan 2026
 01:35:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260118-rz-sdio-mux-v5-0-3c37e8872683@solid-run.com> <20260118-rz-sdio-mux-v5-1-3c37e8872683@solid-run.com>
In-Reply-To: <20260118-rz-sdio-mux-v5-1-3c37e8872683@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 20 Jan 2026 10:35:04 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVf7MjEAaTAy3kgaTcfs240UcnL_yFWfYH_eqVfp-6jvA@mail.gmail.com>
X-Gm-Features: AZwV_QifN5dzgWIfmsNWfdw085d37JEd6a5y3M-TObPOlkszfcRmE9SintqdNzo
Message-ID: <CAMuHMdVf7MjEAaTAy3kgaTcfs240UcnL_yFWfYH_eqVfp-6jvA@mail.gmail.com>
Subject: Re: [PATCH v5 1/7] phy: can-transceiver: rename temporary helper
 function to avoid conflict
To: Josua Mayer <josua@solid-run.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Josua,

On Sun, 18 Jan 2026 at 11:29, Josua Mayer <josua@solid-run.com> wrote:
> Rename the temporary devm_mux_state_get_optional function to avoid
> conflict with upcoming implementation in multiplexer subsystem.
>
> Acked-by: Vinod Koul <vkoul@kernel.org>
> Signed-off-by: Josua Mayer <josua@solid-run.com>

My
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
on v3 is still valid.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

