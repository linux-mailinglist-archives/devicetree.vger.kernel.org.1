Return-Path: <devicetree+bounces-252889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 029B5D04234
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 17:03:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C2CEB30CB61D
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 15:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CEB039FCE;
	Thu,  8 Jan 2026 15:51:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6B476026
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 15:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767887505; cv=none; b=or0xAlMJC73RzCBPxAQlMoIyNHol8RhqQFSM16x6oohlDzbu6KVbS9li9flxUL3p54apfgj7peqJqSHccc3EQXi7tA5N3PhaMAWOSSEOwO8enJ9B9ULAjjCcRuaJHnY2sIsa6jNAwBJSveShGRFylh/ep9kx+nPjIJI9h946THs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767887505; c=relaxed/simple;
	bh=szg4XoxN3u9g+Ff2h/pAFUtLTJUETFvDphXYepeSKBI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QGrceKcW6xXu4q1km4P+340yEPaPXh/isneVHHKZxdo70ZyixgiUg1KrlJfj9RmF6ZryG1WY4dhILB0bWRl7AdMFqmQB76HnKTvbdnsszpYhhLoDcTvJ722jKWB1UQaO4jHSHV5W9Pw0RvenGGUD+F/J4hDdTIwrpxAeW6K8a+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-4558f9682efso2156181b6e.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 07:51:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767887502; x=1768492302;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jAzoJbmxW9Hq33LekfntKKNhXdUxUdN8KMqCFiNMSXI=;
        b=rYq961sKDf1A46pqD47pNAud1mBEABqADfAl+IV3PHspqCYBfypNWB4bdiJr+yz1o9
         yQUHisGi7TgMhwhRb7MVBfrdZNHg8/x4AIE7yNJ7R1ZpVGb2gVbsaUboUN0I4uCDTJix
         +y8S3PhSI+iHrN73s+PSHxdpFVbKzRXsGUkB9UxieVJ0UnjxEbE38L65pEYEE/uQCGLL
         UtODYGWEnGUWRK//QqhVzHgCr65+6q/ai+0SZuENGKym2za/lELK/RaBIYzd4+tOV6ZA
         WqCgGHNsnUMeQJUg2If0vvnWSPi4MHdvrUkJS8mzi+6aYbBPfsBuwfgxzKMecffmN6tY
         OZXA==
X-Forwarded-Encrypted: i=1; AJvYcCWmElpvNVYZyZtxLIvb1SR6RFKJ9Aa6J7ME0/GTlA6jYBsYCgqkVCRVnW96TvH5jxnqgxscaUIsVCCl@vger.kernel.org
X-Gm-Message-State: AOJu0YzV7GX1HE6ub6GW9wLFnM9ael8V13H1ql5BouKRci/mGFhkwKnb
	tNMIDZEFIb/wPnGxCIhQ8FTQdoYPt75Nh839wp2TbrtdvlZzikjzLg8D5M3LDbPy
X-Gm-Gg: AY/fxX6JYvjfmgQqF+i7Oh4KvKiE9EMqCY3JJA9Isw+gN58+qOPzz4+SxYyiGwLKhDg
	v+ZGxN7NXxwwA0eOv43cR4jOY0UQnbDKAkHy652S30CqLCVl0OF0ncA+uRFBcJpVK2E1v0cRPve
	joQakoPRygI00TONinconE0orbcbXTYMsQdVA36E2V339+kfeOlzR3I8/wO6gJMX68n9KkEraGC
	CIdXyMcjMnfhYvyGmbScJn44C4u0yRwXXz7McD9RdUXFCN56QzacgZRGK3M4WYq3zAKJhxJSoXZ
	xH2z/dS4i2Ri1KfSuBgSqWUmo9mkMeHT+BUFIdwr3bV0WJARWkkdUpbF4S1C/VjA0CUfpnBkYiE
	yWolAkQYOrDpZi5l+8kHQB3YfN6kXPUD4rhyhnh5V7+nRFP2ovWMYi5acJEwtT9u+xhUibmADUd
	5I64ZWzusU4UxJ20rghUlL5CZhWKuKPrfhDRg0y8pbJWecdrYxl1/fBvoNQvI=
X-Google-Smtp-Source: AGHT+IEj7ooP/3hnSdKGBKszFja/Mhasa4Y8MYVoTPSieZPgHLjmmkavZ1oAwgn0WITYayXW9s38TQ==
X-Received: by 2002:a05:6808:18aa:b0:450:bb92:7faf with SMTP id 5614622812f47-45a6bb5e8e5mr2967335b6e.0.1767887502053;
        Thu, 08 Jan 2026 07:51:42 -0800 (PST)
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com. [209.85.161.46])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-45a5e288bc7sm3804109b6e.12.2026.01.08.07.51.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 07:51:41 -0800 (PST)
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-65745a436f7so1933452eaf.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 07:51:41 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUvLs1TSn6GOF1It/wJlgRyB3ocqPRuwFNtuR1ai/NC9COSS3TJthpo7VfVW/w6P0KNAUj0puEqgNhF@vger.kernel.org
X-Received: by 2002:a05:6102:554b:b0:5ea:67f4:c1ad with SMTP id
 ada2fe7eead31-5ecb68aff05mr2439515137.21.1767887034584; Thu, 08 Jan 2026
 07:43:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251126130356.2768625-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251126130356.2768625-9-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251126130356.2768625-9-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 16:43:43 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX9zNBNtUNwLN4SgDbMpvyMOBYVhVwufgB4zC+F+OCgVw@mail.gmail.com>
X-Gm-Features: AQt7F2phv5yFw7C9wXRwfNBduSHOcvNWuCOsJEw2DhFFHSG9sOONm1vVQhQj4OQ
Message-ID: <CAMuHMdX9zNBNtUNwLN4SgDbMpvyMOBYVhVwufgB4zC+F+OCgVw@mail.gmail.com>
Subject: Re: [PATCH v3 8/9] arm64: dts: renesas: r9a09g077: add TSU and
 thermal zones support
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: John Madieu <john.madieu.xa@bp.renesas.com>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 26 Nov 2025 at 14:05, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/T2H (R9A09G077) SoC includes a Temperature Sensor Unit
> (TSU). The device provides real-time temperature measurements for
> thermal management, utilizing a single dedicated channel for temperature
> sensing.
>
> The TSU loads calibration data via SMC SIP.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

> --- a/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g077.dtsi

> @@ -952,6 +967,37 @@ sdhi1_vqmmc: vqmmc-regulator {
>                 };
>         };
>
> +       thermal-zones {

I will move this after stmmac-axi-config while applying, to preserve
sort order (alphabetical).

> +               cpu-thermal {

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

