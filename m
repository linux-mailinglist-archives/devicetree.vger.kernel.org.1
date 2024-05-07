Return-Path: <devicetree+bounces-65374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2384F8BDF80
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 12:14:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 556951C20D58
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 10:14:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA49914EC51;
	Tue,  7 May 2024 10:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="UKb7Le6M"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CAD14E2DA
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 10:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715076850; cv=none; b=kbGC+GDlubLN54+UKNackxNKlmHuYnF+bFW8Z+cmTa+FnODjS2nYyJPaFgvTXktQMPVpwx42Xt0brK+6Fi9O/953lr5jh2LsG7vBT5YK/EwRKf5qjVNn08fxjzJB/UIZ6KaPB0MTd5klottdY/l05SDtR/NOTgQNBzTedFyBSHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715076850; c=relaxed/simple;
	bh=m3tCofB4NMIGnHABhiBunpQUZgNSb7hU8zxpgMZ6Rz8=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eLDsgXh3jyFAOd7yqtdV/ZT8RRr4UfzXPKHzlRY2FVysbhA4zZ0ey03owOe3cJkuLbj/8cQ3HMoVJui+Uy4SV1g8CHeRKg/f8DiH87wygAuoAgEvoez+ZfDxzwR0OCH5CegUsSlvWCHdOM+mHhtiuxJTAwjFvpyrLp/JCVA0XG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=UKb7Le6M; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 0A4B5424BC
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 10:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1715076836;
	bh=397X4zZ5qk6cmfxvJ66g5Oe/KXHQi7SbJr6mL/vXFTk=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=UKb7Le6MOVk1k/2ptLY+DbzWRud50gSZLHm7k48sC35E64Qu+PYdfXGTYPohU+T45
	 22Xrr21j0MHNOitStR+VN2tfQWJ+29klERQFJgbpYMPvoED8ZaknxJ+17W3PV5uL7l
	 KGFcNPM5U+GPric9pWYunjzi0+pzPTZvKuD1rJ8o3EB6tOJQOLdBN9jURxvmidLRFO
	 ec71EqR9TVzyHDxNbI1OIC36eayJxrNeQ88ste5VFaRJ1L8TbzQ9h8xYoLt6Y9OMFG
	 jlE95AhWDSYFpwBVHSrpcgKVzJRpp5dmAepllLAIyCNHFOb6mlCBBgdfqtnkx+6HbO
	 jJEiwPAyNm+eg==
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-43b036e641aso44533621cf.2
        for <devicetree@vger.kernel.org>; Tue, 07 May 2024 03:13:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715076816; x=1715681616;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=397X4zZ5qk6cmfxvJ66g5Oe/KXHQi7SbJr6mL/vXFTk=;
        b=IoAfXFTQPGZsoA/kb1ftzyUS+ByNfGJ2MISoJVuE1z0G47oy/YnkrOgQs5ltf6EoeM
         NC3/cdL5GfETpa2wSgGHe3qer2zuDkIecV44a/76uGnsWoVmVWa8RMYLXUoswSBW2OIh
         9XZEHwHcviOkHR+Jtnt9M3DoY9sY1PhB9ED2cxqMS852LjPFTyLPGZfSzd4tpqxcupRV
         DfyxrYtyF0e7806ZppzWGSVwWjuM9JsDjXiUZW50b/o5zRwesR0MQRTLYRrvIPRp7gbb
         roPuiAT2ZZziUgRV1Tg/lNAoPty1bt06fYQmvbDjNTDBLrXjXzIKNIU5e10uVhgsOBbZ
         o3sA==
X-Forwarded-Encrypted: i=1; AJvYcCWnqJXMEzPwkvtP264/5AvpWYSvJzQ9tTq7VsG6oGM17IzaLb1SoMcKQyfYfTHLAKALVP/3Sh/E9ePNCm/H8SHPxlmDmN8qPxWEAw==
X-Gm-Message-State: AOJu0YxoCUmGMnx/5wVktnsNRhIRgMWX9bhNNcVPDoaNfuU+Jh7ZzTrR
	TM46awWujb6RZfiHD00SPdkw8+/FLWlyE1euHQqHiieBUWjr0EbWYZYcmVV2vuHSn2J7hjflpP+
	QMjWQi6lSRVeIUdFX3yElEdUnuRF75qZ3jaBxMKnxAYls8IHl228ndi6/V9iZFHObNo63qZlSi3
	gXtB1xIQuSBA6sdtxQP18U3lGZDdLuLfdIThlf7TnteX0xHlvKGQ==
X-Received: by 2002:a05:622a:4e0b:b0:43a:712a:bb97 with SMTP id dh11-20020a05622a4e0b00b0043a712abb97mr15579361qtb.7.1715076816027;
        Tue, 07 May 2024 03:13:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEjgVEjWFG0Er1wzm6XME0OZo9sKv/t6H0/VJqg3xbQh7tYq4BfD/1KVLjHaQMTeCkQMWpcnkGoRTUTZ7VYW1c=
X-Received: by 2002:a05:622a:4e0b:b0:43a:712a:bb97 with SMTP id
 dh11-20020a05622a4e0b00b0043a712abb97mr15579347qtb.7.1715076815802; Tue, 07
 May 2024 03:13:35 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 7 May 2024 03:13:35 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240507065319.274976-3-xingyu.wu@starfivetech.com>
References: <20240507065319.274976-1-xingyu.wu@starfivetech.com> <20240507065319.274976-3-xingyu.wu@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Tue, 7 May 2024 03:13:35 -0700
Message-ID: <CAJM55Z-p9OLYCWHzhQ9HJ3vEt+u-qx0kxcWmGnO8FoarxJQiQQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] riscv: dts: starfive: visionfive-2: Fix lower rate
 of CPUfreq by setting PLL0 rate to 1.5GHz
To: Xingyu Wu <xingyu.wu@starfivetech.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Conor Dooley <conor@kernel.org>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Hal Feng <hal.feng@starfivetech.com>, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Xingyu Wu wrote:
> CPUfreq supports 4 cpu frequency loads on 375/500/750/1500MHz.
> But now PLL0 rate is 1GHz and the cpu frequency loads become
> 333/500/500/1000MHz in fact.
>
> The PLL0 rate should be default set to 1.5GHz and set the
> cpu_core rate to 500MHz in safe.
>
> Fixes: e2c510d6d630 ("riscv: dts: starfive: Add cpu scaling for JH7110 SoC")
> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>

This should really be based on Conor's riscv-dt-for-next branch, eg. the change
should be to the new jh7110-common.dtsi instead since the Milk-V Mars board
would most likely also benefit from this change.

In any case:
Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

> ---
>  .../boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi     | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> index 45b58b6f3df8..28981b267de4 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> @@ -390,6 +390,12 @@ spi_dev0: spi@0 {
>  	};
>  };
>
> +&syscrg {
> +	assigned-clocks = <&syscrg JH7110_SYSCLK_CPU_CORE>,
> +			  <&pllclk JH7110_PLLCLK_PLL0_OUT>;
> +	assigned-clock-rates = <500000000>, <1500000000>;
> +};
> +
>  &sysgpio {
>  	i2c0_pins: i2c0-0 {
>  		i2c-pins {
> --
> 2.25.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

