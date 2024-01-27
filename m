Return-Path: <devicetree+bounces-35757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3453983EA7D
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 04:07:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 673441C22291
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 03:07:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DBDCBE50;
	Sat, 27 Jan 2024 03:06:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ckk4zVxj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD247BA30
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 03:06:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706324817; cv=none; b=MEo0pssib0f3N9dWVmTUcmC862PFLktzkoXTUq6VDDfUgWOCl62BRrupWjsDDo31PIrw/1zom6oZVTGzyqs5C21R+0aQOqf6S1AvFdwfMYjEYcJwgNeC8c2NEh3HCmIFGXu860ZHYpIZAo0ajTGJilEupFcrc2RO5annrIVe5eQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706324817; c=relaxed/simple;
	bh=c/RwtjauwLz4QtK/LswNL3XoIzV8VGsHkn+HiYtZhsA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HXtMKi05PCcBizxoN1ALnSrif5MDK6xLDxm7qGhHacToXPPQ6uWphdLaW5MSBj9yNf9KNpCgIxuGRgcfsK+ICmO3Fxr7zvT7Mk6Fqz6GRKlRvru+sljWuyZNEeQ6wyj06IGxa9UFJkFiOMHTPlmrLH+cnuASmBdhaaeyF+I0wuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ckk4zVxj; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2906bd9f2ebso689609a91.0
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 19:06:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706324815; x=1706929615; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0HX6o7x5Qrawh4BTKJNdUmx4kLCDr1p1JB3TqBPFmMw=;
        b=ckk4zVxjvf2SYkEW6fY7cjCieaBl6wTkQh4PCFDzqZK4KY7vQAyt0HsckjVzz+H9Vz
         OPYYblCavxaj5Wj96M1vZzPdSLjTImkcIztYIs0Z1YkOZeK0JPGPvFs+XxrzyE/efH0a
         aHCJDUgz+G4MDyi/R7pEWiHAqfZvjUAHSf6wYRgSzOFeZSG6V4mvmQL8JtBFLJmUzZpR
         aCwsbStb4ZTddBElA2fx6Wen6tDVv4EgSC7Y5GQmucdeA5X1mnaVI/7T8DHXN4mSPpRZ
         5Pb7OF3wS5GKZPFFVafeaCqDjd6IVGsoJ5jztZTBcuKm4t1fTzky5xUyAnc62HDcOLar
         2OWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706324815; x=1706929615;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0HX6o7x5Qrawh4BTKJNdUmx4kLCDr1p1JB3TqBPFmMw=;
        b=Ljtx/IkxBi3bMRVdss8feXEIXiZ5o3rMuS0b5vy0FF76Eo6wuBwEulsUQ4hGDkkNfM
         G4NjFV7jJH8V8R+ybwffvIPHEfjRwvTzl9STYyzJ28m/J2YI4ey6pLM15YTB/P5MHF74
         yroghOQLQHuG2lo8ju913T3quw0fpjjNzlS42ufd1vcFrIzg3ugHDFQ9Ru2bArHY2h+M
         b+b9lM59vh05dhRdnTJcVsP6rnXfQlY5VblqgmZPrgDGtX1ueHU9PMmcRQhMj6228T5J
         o/s5zwcXRrTm4CZ3mpmvORwJTUcdyiCar8mnhhsh7ey0RP0nIVKVbyw9eVGVGmutbSTT
         wGYw==
X-Gm-Message-State: AOJu0Yz0R6xDu+udT8NFc286Jf29PQ+tQRx3M97F4J35ttHCvoDfQX5e
	FPvBPh1kWWVpjDtvht0jyePSRJs7bEKs4n0NjyMdW/d3+127dU32OS2nckS+685HLx0iE+XGld3
	LdHjPVyBvO2cKt8Oj1c+4SbaRRJW6bIgGk9dOWA==
X-Google-Smtp-Source: AGHT+IHF7rMEx/cYUS2iUI9ErPIclkV/OEfy8gF9A9nX1zv66a4NxhtGoqRgBb4t7EmcBBwG3i4FVcX8xOGEuEfyJDc=
X-Received: by 2002:a17:90a:4a85:b0:28d:34bf:fe09 with SMTP id
 f5-20020a17090a4a8500b0028d34bffe09mr2419171pjh.4.1706324815024; Fri, 26 Jan
 2024 19:06:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240127003607.501086-1-andre.draszik@linaro.org> <20240127003607.501086-2-andre.draszik@linaro.org>
In-Reply-To: <20240127003607.501086-2-andre.draszik@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Fri, 26 Jan 2024 21:06:43 -0600
Message-ID: <CAPLW+4=J8xk4v5gR3HBEo+H+QEzj=E=j7sE56fyOr1+TR2MsCg@mail.gmail.com>
Subject: Re: [PATCH 1/5] clk: samsung: gs101: gpio_peric0_pclk needs to be
 kept on
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: peter.griffin@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org, kernel-team@android.com, 
	tudor.ambarus@linaro.org, willmcvicker@google.com, alim.akhtar@samsung.com, 
	s.nawrocki@samsung.com, tomasz.figa@gmail.com, cw00.choi@samsung.com, 
	mturquette@baylibre.com, sboyd@kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 26, 2024 at 6:37=E2=80=AFPM Andr=C3=A9 Draszik <andre.draszik@l=
inaro.org> wrote:
>
> This pclk clock is required any time we access the pinctrl registers of
> this block.
>
> Since pinctrl-samsung doesn't support a clock at the moment, we just
> keep the kernel from disabling it at boot, until we have an update for
> pinctrl-samsung to handle this required clock, at which point we'll be
> able to drop the flag again.
>
> Fixes: 893f133a040b ("clk: samsung: gs101: add support for cmu_peric0")
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  drivers/clk/samsung/clk-gs101.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/clk/samsung/clk-gs101.c b/drivers/clk/samsung/clk-gs=
101.c
> index 4a0520e825b6..61bb0dcf84ee 100644
> --- a/drivers/clk/samsung/clk-gs101.c
> +++ b/drivers/clk/samsung/clk-gs101.c
> @@ -2848,7 +2848,7 @@ static const struct samsung_gate_clock peric0_gate_=
clks[] __initconst =3D {
>         GATE(CLK_GOUT_PERIC0_GPIO_PERIC0_PCLK,
>              "gout_peric0_gpio_peric0_pclk", "mout_peric0_bus_user",
>              CLK_CON_GAT_GOUT_BLK_PERIC0_UID_GPIO_PERIC0_IPCLKPORT_PCLK,
> -            21, 0, 0),
> +            21, CLK_IGNORE_UNUSED, 0),
>         /* Disabling this clock makes the system hang. Mark the clock as =
critical. */
>         GATE(CLK_GOUT_PERIC0_LHM_AXI_P_PERIC0_I_CLK,
>              "gout_peric0_lhm_axi_p_peric0_i_clk", "mout_peric0_bus_user"=
,
> --
> 2.43.0.429.g432eaa2c6b-goog
>

