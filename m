Return-Path: <devicetree+bounces-257251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D578BD3C481
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:05:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E804E56921F
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 09:56:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17FA83C1970;
	Tue, 20 Jan 2026 09:56:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com [209.85.210.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F32F33F389
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 09:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768902994; cv=none; b=TmPfO4SmCzHc4++NPrz39HJzhFjeGMgqVESgcZgjYc2R9FGBdaz9B24lA+CxGlppew1joPKSaT9AXz6fdRfMlguFVwMGl+4fslUJV3/Fv5S8+4xwPAgpcVtmqEDmIC/xuEqihEVfLzUGg1EQzbtz41hYzglYx0oMFvN5kLzHkZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768902994; c=relaxed/simple;
	bh=PhelJ3YKLy0g5664IUc1xRM3vK2MnAcXyilLWshEZX0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sBLtQAmkR9RSLpf0ji5qxYSJpim01N5s78h1zZBN2R/Me3WVcPJGcOyTigMe9cXv7/2LUM4PcEvrXZ/WnTCLm2Nuhl1Vsdtm21okMeKRLxoqpf7RCSCk6VZUrJSY/zhItSWad6e4l6MSEmZ1klDNQt0X3wJosFV6rTASm8xG+5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f67.google.com with SMTP id 46e09a7af769-7cfdcae466eso2780947a34.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 01:56:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768902991; x=1769507791;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cMqHiB2kIqqBrLa59wdqxa2/T5exJBY1xL1A1svqwlE=;
        b=wFq6bVzD91SXJ28UbMTSDj/U8kKOWO5ctfoO/pdGhfuttYpn982lvoqjcJSq/g5PFY
         uEBOuJcU6LkMYwJOo6Gh/7N7pGsefdIu9jxVlQGRF2k7w6nt6WqmtslmkooNgbpF3fi2
         aHW5QM0X8js1Dm1NYZ9B1zC6FuC9naZZ0Jj7yGbwWV4U7isK8bxzrcJN8fE9/efscWKs
         LNOZxgLg4cbROFX2VhzcnBHSzzwT6wzVhgDO+A4qlMenWiZVfEIpD/eqgQcyRhVM5GLj
         mJoxQUwDF2i0eovL59A7QCf63NLbX/jcrV7hnTcZEI+SUtMWadHkLzMQAsbIvSGWXTgm
         qY9Q==
X-Forwarded-Encrypted: i=1; AJvYcCX1VMGw6I/14XSrJkIAjXkSm1qzQl3+OX/mjWp0/IH5hVPAgJVWKgbTtjrRiuAyUc5Pzm3G+D8feUy7@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9gTur9dT68K8bcvsbdoNF7OrfcZ4rXhRHZDgkUD3Nnac3y+qW
	kE6xwWRjbfYRrdVhRn4TJ9rT8yeAZPQDp/zEZQDlbk4T6D5xNpOauATvq/SlWgqLx3E=
X-Gm-Gg: AY/fxX71mJUVh23tVcBsehgADccu6Xq5yaNRT6JDlHgkZnwnpVpyVueksjwSHlVc5UI
	8KXa+9h6YTxVnI6TNZxP1WJRP0JobIixbUA2AB5fo94uRDk6JjKpAem+VdGnv0hoACxQUulqQGH
	ndmEQEqn8LhBurJMHH8BWcgsNSEX2PHPpkz+2zHIHlkRqwAS8feNChdZFjvcF7f0QvjUlFIL2cG
	afgyxJcKy8PatQdikZbnp1AiUs+cFYat9ZtsoUD1ZvRBa1fgb1ENZXpsmDbXmsFiODP+prd4aW7
	gBl2MDcysprhBNMxTjVcxjqC17kEzYaZkuL8dkbhFvYb85nGFoEtA6yI8hdfYw69s/Rowy8YChG
	16WxWVDt4cQPf9iFAfzWPdcTltYEW5sYNSdt6uKv3udxBKynVOUtsxWxbCSUi1/fjTlzXle0LlN
	Eli+lwuMtMyZsTmYWIcrMm8xkM8LmoOp5HKGR+PTheanyet8X+bbib
X-Received: by 2002:a05:6830:4427:b0:7cf:d1b7:c5c6 with SMTP id 46e09a7af769-7d140a39eedmr712621a34.7.1768902990722;
        Tue, 20 Jan 2026 01:56:30 -0800 (PST)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com. [209.85.167.180])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7cfdf0efe41sm8197666a34.11.2026.01.20.01.56.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 01:56:30 -0800 (PST)
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-45c758f516dso3080635b6e.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 01:56:30 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXyF6dZ0vcX4k7+P60ZkNvD3KM9QZKSGjP8PAmJ7Pl7dkQxrpocw8NllSTZxZDDkRgGbhlkY/QMxAht@vger.kernel.org
X-Received: by 2002:a05:6102:2928:b0:5db:f6ef:560 with SMTP id
 ada2fe7eead31-5f50ae0a099mr264663137.28.1768902583158; Tue, 20 Jan 2026
 01:49:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260118-rz-sdio-mux-v5-0-3c37e8872683@solid-run.com> <20260118-rz-sdio-mux-v5-7-3c37e8872683@solid-run.com>
In-Reply-To: <20260118-rz-sdio-mux-v5-7-3c37e8872683@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 20 Jan 2026 10:49:32 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU5shzYs27wO2A0SoisGBMo8RHf9DO-ubC6VrhWECEPCw@mail.gmail.com>
X-Gm-Features: AZwV_QjEUqevj8OUxZ5xnP3V3BgNbEzQSiuy0CgomAkdvyQGaaSlv633jCWavtA
Message-ID: <CAMuHMdU5shzYs27wO2A0SoisGBMo8RHf9DO-ubC6VrhWECEPCw@mail.gmail.com>
Subject: Re: [PATCH v5 7/7] mmc: host: renesas_sdhi_core: support selecting an
 optional mux
To: Josua Mayer <josua@solid-run.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 18 Jan 2026 at 11:29, Josua Mayer <josua@solid-run.com> wrote:
> Some hardware designs route data or control signals through a mux to
> support multiple devices on a single sdhi controller.
>
> In particular SolidRun RZ/G2L/G2LC/V2L System on Module use a mux for
> switching between soldered eMMC and an optional microSD on a carrier
> board, e.g. for development or provisioning.
>
> SD/SDIO/eMMC are not well suited for runtime switching between different
> cards, however boot-time selection is possible and useful - in
> particular considering dt overlays.
>
> Add support for an optional SD/SDIO/eMMC mux defined in dt, and select
> it during probe.
>
> Similar functionality already exists in other places, e.g. i2c-omap.
>
> Signed-off-by: Josua Mayer <josua@solid-run.com>

LGTM, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

