Return-Path: <devicetree+bounces-252887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C93D0493F
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 17:55:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7AB2836B0DB7
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 15:47:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BC3C27C162;
	Thu,  8 Jan 2026 15:45:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CE6321CC55
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 15:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767887110; cv=none; b=ISCdsWGu0UxIq+L8ubOVR4NcbuQ9X5UirWQW4cUgN7vpTmMCb2GfZSrUem/XYmJYqRs3+A274xJDT2WH9TnM8WqWZfI8qo6LS3sAwCly+xUjvBuvaB3wq2BBlVPSEW0Se+jOze9o956mv3w9crBSL5PYs/MHh+/t+VEOp+v81RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767887110; c=relaxed/simple;
	bh=BBsNKmsId5cR8LindZ/7FZKftktXvKprwoHo7JbEZwc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=o9n/plMmRkpKVUIfqqIdnEikipGA+29CNMTRZLLBTjv6qy78zy7sddQwHqLUz860MGxxlttacHbHEnZsL/eM7LVhrNzmdH6roHhafsJBUmbWM67eIyd0OaR8uTICkuGU+IaBEL8BINrhVoCZqMa5hhedyCqnHPBJPcFzP87wFbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-563497c549cso1322425e0c.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 07:45:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767887107; x=1768491907;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lx9OXbti98lXjfXlLYihiIxjP9eLHg+VOozfKRmOdZY=;
        b=NaSrWbNICwMlZDyS6KrhUSMINf7CuX25ecO63mH9hy5fLr1Mln7rbGuGjt3fzW2UgV
         H5FBC70grokB51Ec6Q/5VnuLJbkqQQ9RoN748B31hRyN3K0P3w7K7zBQg+icQymJhEXT
         ALVW9dK3c1CGKIgLZxQN3D7tcjbSf3NtO7CkvLg9DV2VNf5jRPFfKNj5I1rRUbTlNcFm
         8prTx/VnYG5joFzkKaM/Hq/QvxCF0lekWbnpeJlo7S8SY55ZLe+5I42zasadkxC39LkZ
         kGEb+HNkYGWUkTnlrI2DXBu4ch3xAkbIzDBDRcjs3oMGhOG9xXNi3SM5Yh6qZ0586hQM
         dNEA==
X-Forwarded-Encrypted: i=1; AJvYcCXkWt8K60+99SXJ2WgGaThZq0kyEqo+b7YsgVXCrmMbYl5fSrXdiULBcRWZ+tKgt+8mv4pZr2BTi7b1@vger.kernel.org
X-Gm-Message-State: AOJu0YydU9Y6iYj1UHEBuzoKFPR9PsAfvB2KlVex7lkrLX7esw/TiodG
	da73rel/uwBgydrLbUwjG9N1mbKeJNH4XO0U2mneoddCDlok/uM5tP+8hkJvh+lr
X-Gm-Gg: AY/fxX7F/+R2ElHvhFxY6IPSGWOo/URaoBNazHU+OylqBTA/7DEzLgeNd+BwbdOGJCz
	n6vW3K3ZNnziDZvDDhzzAqeokvdlKF8ztBDQlKOyt7hqWffS2pzJRjwSVcCJF+Eo3xCSw1/TycE
	BevDBxnJXJjP7oKeJjfiYaM/fQDF6rkSlpj4KGbmrU8X11ThRJPVf3UO6/D6yl0KHoTVhIMNs5E
	vHx+nSgCdGqi1mYT+GcaKeCP2B4lvEhk6ahhzYkH9IThXCqdn/fhwFCzj3qDltNnyOIthToJOep
	L/zFrOdA9edEMpjjilSChILVF3Gxfvl2i05JwcYi+7SIOL7QGIlf3k+7FGLdxF6sXPP6LVSCsN3
	oLkGaJ5F8rezVeDpZSlCisZe2bWwdi/FrL12cvSaueQw3yn5ntc2krxuv5HYuJQi10TbydpPyaq
	yA4JrDxf9x20H3kRZ6PEvBmCK6QfRLHcvSQrAYiHPDoN2wPTJ7
X-Google-Smtp-Source: AGHT+IGOSwH63rzDsH58A2mB8kdDZO2Jd0uV3LyOm68thn9F8J7CiWpWYbhB8FqSu0Y1XAiEM3p1xg==
X-Received: by 2002:a05:6122:208a:b0:559:dc01:8cd9 with SMTP id 71dfb90a1353d-56347fe3cd9mr2368604e0c.12.1767887107511;
        Thu, 08 Jan 2026 07:45:07 -0800 (PST)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com. [209.85.222.42])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5636106e953sm789663e0c.8.2026.01.08.07.45.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 07:45:07 -0800 (PST)
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-93f5667f944so2030595241.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 07:45:07 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVsjLM+f23HQUbZX4qfwWDkbMqsBy7rFKSzOM5Kq+qZgSLQxXjiCKMRkV14iVhHDPqivXb+0UxSGY5z@vger.kernel.org
X-Received: by 2002:a05:6102:6050:b0:5ed:d33:a65d with SMTP id
 ada2fe7eead31-5ed0d33ae20mr2185253137.34.1767887106092; Thu, 08 Jan 2026
 07:45:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251126130356.2768625-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251126130356.2768625-10-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251126130356.2768625-10-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 16:44:54 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWajzk_NxzmgvazqO-SHiifqtq42rf84JeAQPD8jzEAGQ@mail.gmail.com>
X-Gm-Features: AQt7F2qatq2GmDh9d4ZT43bcryI7HhqWDkEF1PCTTBINYtLEjKdyngOLyqdhCe4
Message-ID: <CAMuHMdWajzk_NxzmgvazqO-SHiifqtq42rf84JeAQPD8jzEAGQ@mail.gmail.com>
Subject: Re: [PATCH v3 9/9] arm64: dts: renesas: r9a09g087: add TSU and
 thermal zones support
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: John Madieu <john.madieu.xa@bp.renesas.com>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 26 Nov 2025 at 14:05, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/N2H (R9A09G087) SoC includes a Temperature Sensor Unit
> (TSU). The device provides real-time temperature measurements for
> thermal management, utilizing a single dedicated channel for temperature
> sensing.
>
> The TSU loads calibration data via SMC SIP.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

> --- a/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g087.dtsi

> @@ -955,6 +970,37 @@ sdhi1_vqmmc: vqmmc-regulator {
>                 };
>         };
>
> +       thermal-zones {

I will move this after stmmac-axi-config while applying, to preserve
sort order (alphabetical).

[...]

> +       };
> +
>         stmmac_axi_setup: stmmac-axi-config {
>                 snps,lpi_en;
>                 snps,wr_osr_lmt = <0xf>;

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

