Return-Path: <devicetree+bounces-135040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 375259FF863
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 11:48:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 347BA3A06CD
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 10:48:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA6E11ABEC1;
	Thu,  2 Jan 2025 10:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="MsWnFG/w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BFB31A4F09
	for <devicetree@vger.kernel.org>; Thu,  2 Jan 2025 10:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735814912; cv=none; b=tYGPrxY4flXrDlSh9nC5q5KW4nmghOuGoh0Erlhwqx5ORI/edpHW3TzLhFcijS+0gGMthlHnM6Giqz7nt68J7qAbmALiPXSBnDs5vQNg7BDjLrUiWvu29I8UoGjjNeq9Xd9ihrzMKrs/t5Nw1FJRYNgcCeT0Ijl0iM82D4VMVm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735814912; c=relaxed/simple;
	bh=y6DMHxOijDlusyoIi9vYkliRXs2zYFrnr7b+Plgl+yg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SYeKMuEgpKQQ8d4v4nz9GdYLQ147tInO4/piDnMVObamSJIN3uW7rWGb3BQ/L3F5G/Tb4yw/NRnPCfGx/Zi/PKpAhaqYtAun0bozDVIe35jxP6L8NNurU6N0u02SxhF9fZ8LROWH1TtVSE1PPpXKp7HG348I7yzgoKclPwtpL64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=MsWnFG/w; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3862a921123so7630008f8f.3
        for <devicetree@vger.kernel.org>; Thu, 02 Jan 2025 02:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1735814908; x=1736419708; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GFIpwGB23LANAByW/n2mcZ10YJezzuFXcnQMI/Wk7QU=;
        b=MsWnFG/wxs89buC/0w56O97Z43uMiqdJ2nZ7Il9HLRr/0TKX3dY3yJQyjiljX/YbAl
         UypWI7TwvJITo9n8vhMH5cZXq1IVH++uS4kDwGH6HMLUvlUUTwosiRl9p52opu2FCahD
         dFZ7to11qUrv6oOB4GzCy3yn3bWsvrEIUjZKI0vgHGzvRpXMJT7qgUiy2aI4YrPx2h1D
         PMm0BU7EDAOmjNvn0aRNYmJtcmpda6rsjPpeSgHiUoocIsCM0oOVzfQKuElm0lsM9djT
         bXWYFL0XUgrlRxs/0bbcU5bbiokFqW+BKRsHY06wlKdwJMQVvJX6nBYc4kJ1IQZP1V/h
         7Avw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735814908; x=1736419708;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GFIpwGB23LANAByW/n2mcZ10YJezzuFXcnQMI/Wk7QU=;
        b=rqbQ+RcdoY9t8+FpdOfZGYzXsM1i7AVfj0rMX9xnTdVF/XMmlEYX9Cp7uHc8b/pMTH
         ohX6GomJb2xum9VJk3fFfJYWJzWS/n1DxqDCe8mxJupf0Fh7L6TV0fq3yx+0yHEjDBx5
         xDdnyQMNjO1nuIsCTKRhRvnnsmNLnsIsgOzllzWjuJ7JQLlWQ+0eerjIvu8Mx97oK6LO
         Lfa+3a8mzQRoJhg31eV6m7E1NDVt9hOWi1VcGZqBPcIh4KI4NQ48deIhI3sCrkKVWrWq
         St3+oba5VDWHJJKA0RT6Jn1fxyJ3dd17V0UpVmKqE8PaAmvDx7Qk9KNQSy7C4AwF28AT
         rv4A==
X-Forwarded-Encrypted: i=1; AJvYcCUTXoNFJwAmeDpMbi6X3eKehYhxCCqZIxWQb7fpbRbOI5ralRfJLhwdiDZ0AHfbGlY8oZ0h9chcJgXb@vger.kernel.org
X-Gm-Message-State: AOJu0YxE/5CIDT2QTEhd3NgBxurLRHVKIosrlD+B1FEEUOj4D3er48Xi
	SSPmtEjLqZHG1scyzbwmOcKM5h9MxJYIKgATMQSNA5oeIsZUiATDweBwNL7xhfU=
X-Gm-Gg: ASbGnct727FYdqUQHxmy0ouA8eSuVI8o6hYjnlfYz1BcSdsrHJSf0xH3QIEWrax0weT
	9Yh00P3IItJwuZTi9+WPaT4QligTxRbOeIoNCWRQ4fao5nroC3vzyOJUuyenPPuv6O8tvFi6SwG
	geS76Lxz86Z6VfygW5EHNWjPQf5UFe3ABDP4WRmLInpR7BYZDQUFkCJtVBBE3Ed4VhkEvy3747H
	NhFSgPCf884niIZk3afWPNCFkIczU6xiCt2lUo9vg93/uy+eL0a1V3dc8I1FfUfLA==
X-Google-Smtp-Source: AGHT+IENVLtDm//0s4zoP3FVOCZty2tw9Mx4m7bERvCUo2OJSxiEnc/IIpjbgKoYlXyGt/2cKq0SdQ==
X-Received: by 2002:adf:9b8a:0:b0:38a:4de1:ac6 with SMTP id ffacd0b85a97d-38a4de10f03mr11955498f8f.6.1735814907658;
        Thu, 02 Jan 2025 02:48:27 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.102])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c89e140sm38648430f8f.79.2025.01.02.02.48.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jan 2025 02:48:27 -0800 (PST)
Message-ID: <8361a42d-0c70-4a8c-b0a0-7056ba21b508@tuxon.dev>
Date: Thu, 2 Jan 2025 12:48:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 08/13] clk: at91: sama7d65: add sama7d65 pmc driver
To: Ryan.Wanner@microchip.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, mturquette@baylibre.com, sboyd@kernel.org,
 arnd@arndb.de
Cc: dharma.b@microchip.com, mihai.sain@microchip.com,
 romain.sioen@microchip.com, varshini.rajendran@microchip.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-serial@vger.kernel.org
References: <cover.1734723585.git.Ryan.Wanner@microchip.com>
 <549fa8590fe9b4380e413f8eed87392f28754395.1734723585.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <549fa8590fe9b4380e413f8eed87392f28754395.1734723585.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Ryan,

On 20.12.2024 23:07, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Add clock support for SAMA7D65 SoC.
> 
> Increase maximum number of valid master clocks. The PMC for the SAMA7D65
> requires 9 master clocks.
> 
> Increase maximum amount of PLLs to 9 to support SAMA7D65 SoC PLL
> requirements.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>
> ---
>  drivers/clk/at91/Makefile          |    1 +
>  drivers/clk/at91/clk-master.c      |    2 +-
>  drivers/clk/at91/clk-sam9x60-pll.c |    2 +-
>  drivers/clk/at91/pmc.c             |    1 +
>  drivers/clk/at91/sama7d65.c        | 1375 ++++++++++++++++++++++++++++
>  5 files changed, 1379 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/clk/at91/sama7d65.c
> 

[ ... ]

> +
> +	parent_hws[0] = md_slck_hw;
> +	parent_hws[1] = td_slck_hw;
> +	parent_hws[2] = sama7d65_pmc->chws[PMC_MAIN];
> +	for (i = PCK_PARENT_HW_MCK1; i < ARRAY_SIZE(sama7d65_mckx); i++) {
> +		u8 num_parents = 3 + sama7d65_mckx[i].ep_count;
> +		struct clk_hw *tmp_parent_hws[8];
> +		u32 *mux_table;
> +
> +		mux_table = kmalloc_array(num_parents, sizeof(*mux_table),
> +					  GFP_KERNEL);
> +		if (!mux_table)
> +			goto err_free;
> +
> +		PMC_INIT_TABLE(mux_table, 3);
> +		PMC_FILL_TABLE(&mux_table[3], sama7d65_mckx[i].ep_mux_table,
> +			       sama7d65_mckx[i].ep_count);
> +		for (j = 0; j < sama7d65_mckx[i].ep_count; j++) {
> +			u8 pll_id = sama7d65_mckx[i].ep[j].pll_id;
> +			u8 pll_compid = sama7d65_mckx[i].ep[j].pll_compid;
> +
> +			tmp_parent_hws[j] = sama7d65_plls[pll_id][pll_compid].hw;
> +		}
> +		PMC_FILL_TABLE(&parent_hws[3], tmp_parent_hws,
> +			       sama7d65_mckx[i].ep_count);
> +
> +		hw = at91_clk_sama7g5_register_master(regmap, sama7d65_mckx[i].n,
> +						      num_parents, NULL, parent_hws,
> +						      mux_table, &pmc_mckX_lock,
> +						      sama7d65_mckx[i].id,
> +						      sama7d65_mckx[i].c,
> +						      sama7d65_mckx[i].ep_chg_id);
> +		alloc_mem[alloc_mem_size++] = mux_table;
> +
> +		if (IS_ERR(hw)) {
> +			kfree(mux_table);

Now mux_table is freed twice, once here, once in err_free section. Having
mux_table added to alloc_mem[] is enough. I'll do the propoer adjustment
while applying.

> +			goto err_free;
> +		}
> +
> +		sama7d65_mckx[i].hw = hw;
> +		if (sama7d65_mckx[i].eid)
> +			sama7d65_pmc->chws[sama7d65_mckx[i].eid] = hw;
> +	}
> +
> +	parent_names[0] = "syspll_divpmcck";
> +	parent_names[1] = "usbpll_divpmcck";
> +	parent_names[2] = "main_osc";
> +	hw = sam9x60_clk_register_usb(regmap, "usbck", parent_names, 3);
> +	if (IS_ERR(hw))
> +		goto err_free;
> +
> +	parent_hws[0] = md_slck_hw;
> +	parent_hws[1] = td_slck_hw;
> +	parent_hws[2] = sama7d65_pmc->chws[PMC_MAIN];
> +	parent_hws[3] = sama7d65_plls[PLL_ID_SYS][PLL_COMPID_DIV0].hw;
> +	parent_hws[4] = sama7d65_plls[PLL_ID_DDR][PLL_COMPID_DIV0].hw;
> +	parent_hws[5] = sama7d65_plls[PLL_ID_GPU][PLL_COMPID_DIV0].hw;
> +	parent_hws[6] = sama7d65_plls[PLL_ID_BAUD][PLL_COMPID_DIV0].hw;
> +	parent_hws[7] = sama7d65_plls[PLL_ID_AUDIO][PLL_COMPID_DIV0].hw;
> +	parent_hws[8] = sama7d65_plls[PLL_ID_ETH][PLL_COMPID_DIV0].hw;
> +
> +	for (i = 0; i < 8; i++) {
> +		char name[6];
> +
> +		snprintf(name, sizeof(name), "prog%d", i);
> +
> +		hw = at91_clk_register_programmable(regmap, name, NULL, parent_hws,
> +						    9, i,
> +						    &programmable_layout,
> +						    sama7d65_prog_mux_table);
> +		if (IS_ERR(hw))
> +			goto err_free;
> +
> +		sama7d65_pmc->pchws[i] = hw;
> +	}
> +
> +	for (i = 0; i < ARRAY_SIZE(sama7d65_systemck); i++) {
> +		hw = at91_clk_register_system(regmap, sama7d65_systemck[i].n,
> +					      sama7d65_systemck[i].p, NULL,
> +					      sama7d65_systemck[i].id, 0);
> +		if (IS_ERR(hw))
> +			goto err_free;
> +
> +		sama7d65_pmc->shws[sama7d65_systemck[i].id] = hw;
> +	}
> +
> +	for (i = 0; i < ARRAY_SIZE(sama7d65_periphck); i++) {
> +		hw = at91_clk_register_sam9x5_peripheral(regmap, &pmc_pcr_lock,
> +							 &sama7d65_pcr_layout,
> +							 sama7d65_periphck[i].n,
> +							 NULL,
> +							 sama7d65_mckx[sama7d65_periphck[i].p].hw,
> +							 sama7d65_periphck[i].id,
> +							 &sama7d65_periphck[i].r,
> +							 sama7d65_periphck[i].chgp ? 0 :
> +							 INT_MIN, 0);
> +		if (IS_ERR(hw))
> +			goto err_free;
> +
> +		sama7d65_pmc->phws[sama7d65_periphck[i].id] = hw;
> +	}
> +
> +	parent_hws[0] = md_slck_hw;
> +	parent_hws[1] = td_slck_hw;
> +	parent_hws[2] = sama7d65_pmc->chws[PMC_MAIN];
> +	parent_hws[3] = sama7d65_pmc->chws[PMC_MCK1];
> +	for (i = 0; i < ARRAY_SIZE(sama7d65_gck); i++) {
> +		u8 num_parents = 4 + sama7d65_gck[i].pp_count;
> +		struct clk_hw *tmp_parent_hws[8];
> +		u32 *mux_table;
> +
> +		mux_table = kmalloc_array(num_parents, sizeof(*mux_table),
> +					  GFP_KERNEL);
> +		if (!mux_table)
> +			goto err_free;
> +
> +		PMC_INIT_TABLE(mux_table, 4);
> +		PMC_FILL_TABLE(&mux_table[4], sama7d65_gck[i].pp_mux_table,
> +			       sama7d65_gck[i].pp_count);
> +		for (j = 0; j < sama7d65_gck[i].pp_count; j++) {
> +			u8 pll_id = sama7d65_gck[i].pp[j].pll_id;
> +			u8 pll_compid = sama7d65_gck[i].pp[j].pll_compid;
> +
> +			tmp_parent_hws[j] = sama7d65_plls[pll_id][pll_compid].hw;
> +		}
> +		PMC_FILL_TABLE(&parent_hws[4], tmp_parent_hws,
> +			       sama7d65_gck[i].pp_count);
> +
> +		hw = at91_clk_register_generated(regmap, &pmc_pcr_lock,
> +						 &sama7d65_pcr_layout,
> +						 sama7d65_gck[i].n, NULL,
> +						 parent_hws, mux_table,
> +						 num_parents,
> +						 sama7d65_gck[i].id,
> +						 &sama7d65_gck[i].r,
> +						 sama7d65_gck[i].pp_chg_id);
> +		if (IS_ERR(hw))
> +			goto err_free;
> +
> +		sama7d65_pmc->ghws[sama7d65_gck[i].id] = hw;
> +		alloc_mem[alloc_mem_size++] = mux_table;

This should have been added just after:

		if (!mux_table)
			goto err_free;

I'll adjust it while applying.

> +	}
> +
> +	of_clk_add_hw_provider(np, of_clk_hw_pmc_get, sama7d65_pmc);
> +	kfree(alloc_mem);
> +
> +	return;
> +
> +err_free:
> +	if (alloc_mem) {
> +		for (i = 0; i < alloc_mem_size; i++)
> +			kfree(alloc_mem[i]);
> +		kfree(alloc_mem);
> +	}
> +
> +	kfree(sama7d65_pmc);
> +}
> +
> +/* Some clks are used for a clocksource */
> +CLK_OF_DECLARE(sama7d65_pmc, "microchip,sama7d65-pmc", sama7d65_pmc_setup);


