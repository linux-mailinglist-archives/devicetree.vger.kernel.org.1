Return-Path: <devicetree+bounces-252200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D21CCFC52B
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 08:24:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0CA0430329F5
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 07:22:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C585827C162;
	Wed,  7 Jan 2026 07:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YXBWI/Hn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35531242D95
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 07:22:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767770543; cv=none; b=sy1dGgoHsS1oICyHYxSD/uSBVc0XmWaAeyuZ/BqNR7gejFu8atjFPJTWsOkgZS5AFQY98Z1PUefROhr5Mi3/FAzrEHY8QSvkfGZ6zKDtU9Iy4sFmYHyWfNG5KJSFwEhJHCTvA3p5xj7FWtAXlgm05bThHQan3PkizC8g1XWYQbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767770543; c=relaxed/simple;
	bh=8vdsbeII54VQ3U8MLcLDXKFxW9u4RQYw5yb2Attxl2I=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=oLFLMKKA2KxzsYlOEh1M0HVudZv+r5XyBLeUx0hX6jEWZpHRbyvXA897ZGFCwqr2uByz2mIUc009UCPn5SitfESeofUCEjohH0YVMcv8A9t0AEoY5Bm9N9vxeObKc/Aj4Kqda4PIipwV+XsKXrxfRrcXjtADX5/J35cFWdvlLwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YXBWI/Hn; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-7ade456b6abso1270233b3a.3
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 23:22:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767770540; x=1768375340; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=j0fvD/6IVkbuhi2W+VfhGVpu8UbGrrkC5tRDibWmgTw=;
        b=YXBWI/HnmsdQJeyWFMf1EWySMAj3uyyZYdh3WQoOTWB7wkz+XewNT77VWXQGdXtiA3
         kR01de4uJ2GrO7pAfC1CQQxT4FqaAFBwpOEWnqzkqkYrABNu+SCyxZnQydGXMKZOvHVX
         5SDDXVIqDfiXJQH/I9ElLl1ylYNrgOerXKQgaLDgR1lWRRuGxAIeyngw0weOl04zDHZE
         /mL8dummBxZt1hKr/r3ln0zBE1mVJ9zHEw2jE+9mYi0IhEK8qQOl/dxQORo6jMK6ueHw
         ZaouEx9zI/dwvu5ZwBihS+UFM3UkV7cAByaXQO8+kXJSY6x3KdizDqIXtIk/WDsrGPjN
         1X7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767770540; x=1768375340;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j0fvD/6IVkbuhi2W+VfhGVpu8UbGrrkC5tRDibWmgTw=;
        b=JikqejhgrXUfbOLVvg3nlnr1xJ3iUEWNnegPT2Grzla+u0hlSL/9QO1/+Y/aiJoEWs
         4ckiYI1oIyL+e1I/+uBeRmU9pxVOVS+KCTL98uotSnbXjyBFJIWcltbvWNKze3w/F3sn
         aBzsXCd1ev7wa4+f582ZriKEUG/W4BBc0L3YM+zEVqnmLEXI/nDbnoefaSqEJeZLqfRL
         bm5P94nD5me/L6iYZBNlN3rsj228z/+P6guBfr5UfEM6D0pkDc8xOQBCAeKXYlbu982Y
         E+1i3Da/WB/0vBAWjctSPpncqgeHjJAgTP7XaEYm5l4XobNvanKKeT3Ce3m4aCjs7D7y
         ffNw==
X-Forwarded-Encrypted: i=1; AJvYcCUNj4OWnIazxoAr0ksQBdYtmnCtQRtZqGTmvQ0rWMJYkVKkwbC3dlE25zvr5d+OhhqMn+4vTH9h/a3u@vger.kernel.org
X-Gm-Message-State: AOJu0YxngptD1dBD+R4zLF3cHMf7uS2HhmUqflsnnDqA85l5+QmhmbxE
	EoMcqJrt3C1FDpEA01mt/rEwA1apctPGpRfyQVVqsFTZHkeUqJvHd3fee0eTm1v97xE=
X-Gm-Gg: AY/fxX5whsMys+2/YZ94ECrrwJlMKeZUGs7qy4c3OFUCciQB9JbmrqPtBMC+vASjsrk
	TqbHvS5V0t+6YaJZY0lp8HeEHPiT+GvwrdTYKMnnZ3g+gdtG7J4p77Xp2luyWI9U2SQLVgRfzGy
	cVHI6psUwAkoC1lJMRu8wQDcJexVYD2hLen2NeaTaCJHgv45YoqrdtWplm6L9+nXO8e3nJbShmh
	pnP9PN88/T6YKi93A/NTvEb4+xK02pcOAXSK7TCt5u2k8WhluOtX5mR/6VHRR7iwKfabbofJTV5
	Te4BQqq2MBgD0Ru5fLZkYIKIm/iKWa0mKr8dy4BtAp4t1HVaYOsVeG21fJjknC9rLpW3B5uSIzu
	WIZHBOnypJU1acTEblHOL2LIxon1SCVTw92qpNQ11BmsbAAalj3bkS6A1ZeTIWbALRwA6TapKkz
	keOIqyF5wEV78DOu08CA==
X-Google-Smtp-Source: AGHT+IFjntT6k4Ggqzs01daHSIuv7X/dX6d2z4MC/qp/LQTz6WPJPvTolP0ZHgvqrsUi80U9YGSOCw==
X-Received: by 2002:a05:6a00:ace:b0:81b:ad93:a874 with SMTP id d2e1a72fcca58-81bad93a9d0mr1219225b3a.16.1767770539968;
        Tue, 06 Jan 2026 23:22:19 -0800 (PST)
Received: from draszik.lan ([212.129.72.149])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c52f8e10sm4038040b3a.44.2026.01.06.23.22.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 23:22:19 -0800 (PST)
Message-ID: <39019203631fdd183fb5ddaa7fada5da5f2a31ad.camel@linaro.org>
Subject: Re: [PATCH v7 3/4] clk: samsung: Implement automatic clock gating
 mode for CMUs
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Krzysztof Kozlowski	
 <krzk+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus	
 <tudor.ambarus@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Sam Protsenko
 <semen.protsenko@linaro.org>, Sylwester Nawrocki	 <s.nawrocki@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, Krzysztof Kozlowski	
 <krzk@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 kernel-team@android.com,  Rob Herring <robh@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Date: Wed, 07 Jan 2026 07:22:44 +0000
In-Reply-To: <20251222-automatic-clocks-v7-3-fec86fa89874@linaro.org>
References: <20251222-automatic-clocks-v7-0-fec86fa89874@linaro.org>
	 <20251222-automatic-clocks-v7-3-fec86fa89874@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi,

On Mon, 2025-12-22 at 10:22 +0000, Peter Griffin wrote:
> Update exynos_arm64_init_clocks() so that it enables the automatic clock
> mode bits in the CMU option register if the auto_clock_gate flag and
> option_offset fields are set for the CMU. To ensure compatibility with
> older DTs (that specified an incorrect CMU reg size), detect this and
> fallback to manual clock gate mode as the auto clock mode feature depends
> on registers in this area.
>=20
> The CMU option register bits are global and effect every clock component =
in
> the CMU, as such clearing the GATE_ENABLE_HWACG bit and setting GATE_MANU=
AL
> bit on every gate register is only required if auto_clock_gate is false.
>=20
> Additionally if auto_clock_gate is enabled the dynamic root clock gating
> and memclk registers will be configured in the corresponding CMUs sysreg
> bank. These registers are exposed via syscon, so the register
> samsung_clk_save/restore paths are updated to also take a regmap.

The implementation described in this paragraph this causes pm-runtime to
stop working for the CMU if auto clock gating is enabled.

See below.

> [...]
> diff --git a/drivers/clk/samsung/clk.c b/drivers/clk/samsung/clk.c
> index c149ca6c221725195faeb76b0d73374c3b48261b..06ea5deef4ee2ffb87dcd1410=
2561886ea80b7bc 100644
> --- a/drivers/clk/samsung/clk.c
> +++ b/drivers/clk/samsung/clk.c
> [...]
> @@ -357,6 +489,37 @@ void __init samsung_cmu_register_clocks(struct samsu=
ng_clk_provider *ctx,
> =C2=A0		samsung_clk_register_cpu(ctx, cmu->cpu_clks, cmu->nr_cpu_clks);
> =C2=A0}
> =C2=A0
> +/* Each bit enable/disables DRCG of a bus component */
> +#define DRCG_EN_MSK	GENMASK(31, 0)
> +#define MEMCLK_EN	BIT(0)
> +
> +/* Enable Dynamic Root Clock Gating (DRCG) of bus components */
> +void samsung_en_dyn_root_clk_gating(struct device_node *np,
> +				=C2=A0=C2=A0=C2=A0 struct samsung_clk_provider *ctx,
> +				=C2=A0=C2=A0=C2=A0 const struct samsung_cmu_info *cmu)
> +{
> +	if (!ctx->auto_clock_gate)
> +		return;
> +
> +	ctx->sysreg =3D syscon_regmap_lookup_by_phandle(np, "samsung,sysreg");

With this, the CMU driver (e.g. cmu_hsi0) now gets a reference to the respe=
ctive
sysreg (sysreg_hsi0), which in turn creates a regmap with a clock handle
(CLK_GOUT_HSI0_SYSREG_HSI0_PCLK), and the clock is 'prepared'. Hence the CM=
U
providing this clock (cmu_hsi0) is not idle anymore, and runtime PM for thi=
s
CMU can't kick in anymore

I see two straight forward options to fix this:

1) The easiest fix is to just drop the clock from the sysreg DT node. The s=
ysreg
clock shouldn't matter now, as the whole CMU is in auto mode now anyway.

2) change above code to use device_node_to_regmap() which ignores resources=
 (the
sysreg clock in the example case), and manage the clock manually during sav=
e and
restore in samsung_clk_save() and samsung_clk_restore()

Any better ideas?


Cheers,
Andre'

