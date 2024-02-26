Return-Path: <devicetree+bounces-45892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB6A86729A
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 12:07:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 71046284459
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 11:07:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A2691D529;
	Mon, 26 Feb 2024 11:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Rl+HF+12"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 936EF1CD36
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 11:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708945641; cv=none; b=KZg384IzO9oOGpWVL4p0oFKBvE2be0FwMJyEO5V+uLma7lLB2EKAV9y6kaGFRN84Yr3P/U3P/wRvTQIhA2k5cG27q1K/nEtM/oEVuJ1Ch2cbLK6rfhigp6iRcpqiP+thft+r38dLtTGjHRb7Ka4bPv92MbZLSXMU207hV2DxpX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708945641; c=relaxed/simple;
	bh=o469wJxegXoezlqIjGIYFTGOxZj7oatMUK25fXsLWMQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OOtyxvLC55SW63PMdzrL4jwofJATV3ZDDWgjScwJ17vpQF5+yKnJ/dUEVCJcspexRYC+CvXD8f2JGpkZyB4vZ04qIaNIuUGlqZ/Enh0HEg4m7SjxmEMXWQ+u5gegVoxZmDoa3nTy03jM8xD1TbXAH4Rzm/C4e74VpsXL3s6aBkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Rl+HF+12; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-33da51fd636so1807668f8f.3
        for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 03:07:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1708945636; x=1709550436; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sbYFot8CFgR80jEb1giXs1QlZ5tdKUJQ13JHlGGWOQM=;
        b=Rl+HF+12qGuoSaZtjaHwjYMekpfeYazHg+qsLpnXZztZn9bpBkO/lHkDH+HV1oZ2rw
         JxIB434KNVmBagPglH0ODBMzOpZmSw09MpnVkfX0HSAUkOZvgktxGg1ZeO5JjqXcbdxQ
         vqRNZQkzVPOSVTmajZKvAsQBXYkafgdQZjv9ZITiCMMNPiiQ8LjvYPtRORh0S4mNK1bu
         EZ43Q0Pd1g270tq+ViJwYUqwAn8c/SlG9qewic3ltBIPYGnwuyIvoI/leZod/Z2kuh44
         5WBH0BNnmsfH2UgbCUk0OpucNOoRqQDHpzL4kocqqP53fdMnF10Y1DfIrzHYe9ka5vQe
         zpIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708945636; x=1709550436;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sbYFot8CFgR80jEb1giXs1QlZ5tdKUJQ13JHlGGWOQM=;
        b=fsTR0nf2ipVOp9omajnuEBIdvFXYqqeRIbP26UAON1spEebADWHJaCI5o9geG15HGm
         HY4RFa+afPeiT04m5CFE/gOHgMGqqY5W0CD/y2dKb4rcGziVedUj7kb92Piks6M1bP1p
         sHHhoQJBLYVk3APgawHNxN2PYz3NN65jFmNHQktP9btZr0ThdjdYr5agHkymjc//C5Uo
         MLnNJG9rfszBnd7QTeDU05xlUWkrDASCuE96l/B1GAutal03O0TPO+wkWU/1/jPuDWvN
         JlzpZR3kGKexjzMubWqNh98iNqCcqREaLBSl/knWyFCiv+VFb8y/zk/W8CCgwUtkUGJP
         nLZw==
X-Forwarded-Encrypted: i=1; AJvYcCX04h1CUzQcIF2urN2CqWSAyhlfm9TE0WcZa9roKE6Esyxkm78L3N+VoVGcwD0A6ojbOxiW/pV6UphiBkt8xrg9TOJcWhN18HTfsA==
X-Gm-Message-State: AOJu0Ywv5L9T3c5NKnKxSxELsroe4WFBK2GfncUHoU9ooTTGZGic1/6O
	5M7uD3tvCirCWQeCTrk8SNqLBsRtK4o20WOC7VHNdZ0/zKz/23OJ7TM8zj1U3U4=
X-Google-Smtp-Source: AGHT+IGK+Y/yeiSY4i4LNG0FETbSsj8V00Fvy/EDeAdcI/jF6nTA4lWShcFts2QfASsHYeWulz4MLA==
X-Received: by 2002:adf:e682:0:b0:33d:3be4:6c75 with SMTP id r2-20020adfe682000000b0033d3be46c75mr4901520wrm.71.1708945635764;
        Mon, 26 Feb 2024 03:07:15 -0800 (PST)
Received: from [192.168.1.70] ([84.102.31.43])
        by smtp.gmail.com with ESMTPSA id bt1-20020a056000080100b0033d9c7eb63csm8150307wrb.84.2024.02.26.03.07.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Feb 2024 03:07:15 -0800 (PST)
Message-ID: <6d82dca4-3ffe-4c51-9f74-cd6cfbac7f7a@baylibre.com>
Date: Mon, 26 Feb 2024 12:07:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/14] mfd: tps6594: Add register definitions for TI
 TPS65224 PMIC
Content-Language: en-US
To: Bhargav Raviprakash <bhargav.r@ltts.com>, linux-kernel@vger.kernel.org
Cc: m.nirmaladevi@ltts.com, lee@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 lgirdwood@gmail.com, broonie@kernel.org, linus.walleij@linaro.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, nm@ti.com,
 vigneshr@ti.com, kristo@kernel.org
References: <20240223093701.66034-1-bhargav.r@ltts.com>
 <20240223093701.66034-2-bhargav.r@ltts.com>
From: Julien Panis <jpanis@baylibre.com>
In-Reply-To: <20240223093701.66034-2-bhargav.r@ltts.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Bhargav.

Thanks for the series.

On 2/23/24 10:36, Bhargav Raviprakash wrote:
> From: Nirmala Devi Mal Nadar <m.nirmaladevi@ltts.com>
>
> Extend TPS6594 PMIC register and field definitions to support TPS65224
> power management IC.
>
> TPS65224 is software compatible to TPS6594 and can re-use many of the
> same definitions, new definitions are added to support additional
> controls available on TPS65224.
>
> Signed-off-by: Nirmala Devi Mal Nadar <m.nirmaladevi@ltts.com>
> Signed-off-by: Bhargav Raviprakash <bhargav.r@ltts.com>
> ---
>   include/linux/mfd/tps6594.h | 354 ++++++++++++++++++++++++++++++++++--
>   1 file changed, 342 insertions(+), 12 deletions(-)

[...]
> +/* IRQs */
> +enum tps65224_irqs {
> +	/* INT_BUCK register */
> +	TPS65224_IRQ_BUCK1_UVOV,
> +	TPS65224_IRQ_BUCK2_UVOV,
> +	TPS65224_IRQ_BUCK3_UVOV,
> +	TPS65224_IRQ_BUCK4_UVOV,
> +	/* INT_LDO_VMON register */
> +	TPS65224_IRQ_LDO1_UVOV,
> +	TPS65224_IRQ_LDO2_UVOV,
> +	TPS65224_IRQ_LDO3_UVOV,
> +	TPS65224_IRQ_VCCA_UVOV,
> +	TPS65224_IRQ_VMON1_UVOV,
> +	TPS65224_IRQ_VMON2_UVOV,
> +	/* INT_GPIO register */
> +	TPS65224_IRQ_GPIO1,
> +	TPS65224_IRQ_GPIO2,
> +	TPS65224_IRQ_GPIO3,
> +	TPS65224_IRQ_GPIO4,
> +	TPS65224_IRQ_GPIO5,
> +	TPS65224_IRQ_GPIO6,
> +	/* INT_STARTUP register */
> +	TPS65224_IRQ_VSENSE,
> +	TPS65224_IRQ_ENABLE,
> +	TPS65224_IRQ_PB_SHORT,
> +	TPS65224_IRQ_FSD,
> +	TPS65224_IRQ_SOFT_REBOOT,
> +	/* INT_MISC register */
> +	TPS65224_IRQ_BIST_PASS,
> +	TPS65224_IRQ_EXT_CLK,
> +	TPS65224_IRQ_REG_UNLOCK,
> +	TPS65224_IRQ_TWARN,
> +	TPS65224_IRQ_PB_LONG,
> +	TPS65224_IRQ_PB_FALL,
> +	TPS65224_IRQ_PB_RISE,
> +	TPS65224_IRQ_ADC_CONV_READY,
> +	/* INT_MODERATE_ERR register */
> +	TPS65224_IRQ_TSD_ORD,
> +	TPS65224_IRQ_BIST_FAIL,
> +	TPS65224_IRQ_REG_CRC_ERR,
> +	TPS65224_IRQ_RECOV_CNT,
> +	/* INT_SEVERE_ERR register */
> +	TPS65224_IRQ_TSD_IMM,
> +	TPS65224_IRQ_VCCA_OVP,
> +	TPS65224_IRQ_PFSM_ERR,
> +	TPS65224_IRQ_BG_XMON,
> +	/* INT_FSM_ERR register */
> +	TPS65224_IRQ_IMM_SHUTDOWN,
> +	TPS65224_IRQ_ORD_SHUTDOWN,
> +	TPS65224_IRQ_MCU_PWR_ERR,
> +	TPS65224_IRQ_SOC_PWR_ERR,
> +	TPS65224_IRQ_COMM_ERR,
> +	TPS65224_IRQ_I2C2_ERR,
> +	/* INT_ESM register */
> +	TPS65224_IRQ_ESM_MCU_PIN,
> +	TPS65224_IRQ_ESM_MCU_FAIL,
> +	TPS65224_IRQ_ESM_MCU_RST,
> +};

For tps6594, ESM_MCU interrupts were supposed to be cleared by the MCU FW. That's why we only had to 
deal with ESM_SOC interrupts in linux. For tps65224, I would recommend double-checking with TI where 
ESM_MCU interrupts should be handled (either in MCU FW or in the linux driver). For some reason this 
might be different than tps6594's case, but it does not look very consistent to me at first sight. 
Julien Panis

