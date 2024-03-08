Return-Path: <devicetree+bounces-49383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC4687633B
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 12:25:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C4BD4B21A34
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 11:25:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF0E856456;
	Fri,  8 Mar 2024 11:24:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Kh3XUnRY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A288255E4F
	for <devicetree@vger.kernel.org>; Fri,  8 Mar 2024 11:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709897087; cv=none; b=bLVwc70y51uq7lllay4EXpuAgwUYMTaMpOOSOyl/BFhVZzkuXbZkuZVnDlBA2zfeeedAXlB4PxE/ydSELis3/DttX0vgcgytgHQ9tiq79kjEDG7ygtwe2+SmqwXW1KFb+3NNR8Aw5KDp9Udty9zu1d3jjZo6M7BbgQI6txP353E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709897087; c=relaxed/simple;
	bh=32OmyjYik9xrpjbPpqrSbFDA5zVyxxWLCeHykPUBaPM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SpawMsjcGBbxdxBaAmQEwHoOuBsF3ol9KxMif3kUflizqL7aYDn7rPzQZvAAcysEHloCRc4HT0k2O6h+G1aRhv0plKeW+N6uAFMV2TPXmklTTe7yECKLIqj87O/G3zeOa8kuVSlTLpX7X55S1TsGITaXVtv1h0F1J6VHoQqdqKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Kh3XUnRY; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-56829f41f81so943168a12.2
        for <devicetree@vger.kernel.org>; Fri, 08 Mar 2024 03:24:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1709897083; x=1710501883; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oAeQj9nX/mCE4SAm/UXcMQjsHuY2Atxy9Nfnai0Y6DQ=;
        b=Kh3XUnRYgHinumYr+ZDxhYLZdhhPQlzzIqn/+5uEAvivTxTO/clUUHDkBxLJqHlXLq
         BbZnt+h3Hk9Xo4aoriD8FJhl9yOGLbdkPtzY4yhS9krJT+zVL2eEO+wCsMydMdGCKFHm
         n28IWEePL5dEyiUO+WlOhSVtAVq3lqooY1jfma95gLmJCY0Pk6xOicW9sG+q+8HSD6o1
         LtT5sTBVwhl0v1kx/QqRXOCBPkR/pEROFSA9bZ4oAPJJo6syHFlEY6f6BYMAF27zhvuR
         k6VkmzgT9R+H7QCwHeBX4LJOix/nhLMMqy20I/wkX60OPBkmbWRp4SRKFnlW3ZkDggOh
         PYxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709897083; x=1710501883;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oAeQj9nX/mCE4SAm/UXcMQjsHuY2Atxy9Nfnai0Y6DQ=;
        b=vME19XYy7N3eUnnUructKzG6ooN+573kRxWzdUd8exP7Ow/+N3vdzeftny+8L5E9aw
         plu5E4xipDPXUz273q2Li6GcRKIjPBJtFWWKdFi3rX5kL/WWGtqnuKo78gW9Bk18aaAX
         8s8jVtAD2G86Qqbs/pQUn4e2Znf8DdA2uk1Z2XXhzh4tmk1I7kHy02OigZFOMB237Zey
         qlNj1DEUjSOy+W712JKs1uxOasDvFKW1hynp4hehDstN/OX2kpSGRaWErAohLiIvj48w
         cnywCjau1VGSX8qelG+LjKHKFaDilN6/Jp2A/v7frYdgo89l6bFZ6jLJJd96wmpTR2BB
         SZvw==
X-Forwarded-Encrypted: i=1; AJvYcCUqE0VGxs+wLqeLCyh8jqLhMS1t+B3TzmpBKxQOt1zjfIaC3xFgP/wUPm12orxqwtWEXCe8XKhyaKKop9qen9WzRQsi4WyPPI9h3Q==
X-Gm-Message-State: AOJu0Yyn8AtYUtT1aAkqj6Xl0d+wU+AZhdXJFoKkoMbgJK+dsONdBr29
	hSBFOnDt5Neaxh45SRPcBBHr18WePwlEd+lmpMJnLqa8/KnM4JiRAuzPqCAGFOc=
X-Google-Smtp-Source: AGHT+IEvYNFKidP5dUJN9E5a69C7gwcEqHa2YT+x32x0AhHetixroqJyaFVB68JQgbsLBfpod0hk2Q==
X-Received: by 2002:a17:907:1189:b0:a43:f587:d427 with SMTP id uz9-20020a170907118900b00a43f587d427mr13911312ejb.34.1709897082984;
        Fri, 08 Mar 2024 03:24:42 -0800 (PST)
Received: from [192.168.1.70] ([84.102.31.43])
        by smtp.gmail.com with ESMTPSA id k23-20020a1709063e1700b00a42f6d48c72sm9307224eji.145.2024.03.08.03.24.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Mar 2024 03:24:42 -0800 (PST)
Message-ID: <44295772-4635-42c2-b7b5-cdc37505715e@baylibre.com>
Date: Fri, 8 Mar 2024 12:24:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/11] mfd: tps6594: Add register definitions for TI
 TPS65224 PMIC
Content-Language: en-US
To: Bhargav Raviprakash <bhargav.r@ltts.com>, linux-kernel@vger.kernel.org
Cc: m.nirmaladevi@ltts.com, lee@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 lgirdwood@gmail.com, broonie@kernel.org, linus.walleij@linaro.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, nm@ti.com,
 vigneshr@ti.com, kristo@kernel.org, eblanc@baylibre.com
References: <20240308103455.242705-1-bhargav.r@ltts.com>
 <20240308103455.242705-2-bhargav.r@ltts.com>
From: Julien Panis <jpanis@baylibre.com>
In-Reply-To: <20240308103455.242705-2-bhargav.r@ltts.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/8/24 11:34, Bhargav Raviprakash wrote:
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

You should remove the 3 lines above for ESM_MCU, since there is none
linux driver for ESM_MCU.

> +};
> +
> +#define TPS65224_IRQ_NAME_BUCK1_UVOV		"buck1_uvov"
> +#define TPS65224_IRQ_NAME_BUCK2_UVOV		"buck2_uvov"
> +#define TPS65224_IRQ_NAME_BUCK3_UVOV		"buck3_uvov"
> +#define TPS65224_IRQ_NAME_BUCK4_UVOV		"buck4_uvov"
> +#define TPS65224_IRQ_NAME_LDO1_UVOV		"ldo1_uvov"
> +#define TPS65224_IRQ_NAME_LDO2_UVOV		"ldo2_uvov"
> +#define TPS65224_IRQ_NAME_LDO3_UVOV		"ldo3_uvov"
> +#define TPS65224_IRQ_NAME_VCCA_UVOV		"vcca_uvov"
> +#define TPS65224_IRQ_NAME_VMON1_UVOV		"vmon1_uvov"
> +#define TPS65224_IRQ_NAME_VMON2_UVOV		"vmon2_uvov"
> +#define TPS65224_IRQ_NAME_GPIO1			"gpio1"
> +#define TPS65224_IRQ_NAME_GPIO2			"gpio2"
> +#define TPS65224_IRQ_NAME_GPIO3			"gpio3"
> +#define TPS65224_IRQ_NAME_GPIO4			"gpio4"
> +#define TPS65224_IRQ_NAME_GPIO5			"gpio5"
> +#define TPS65224_IRQ_NAME_GPIO6			"gpio6"
> +#define TPS65224_IRQ_NAME_VSENSE	        "vsense"
> +#define TPS65224_IRQ_NAME_ENABLE		"enable"
> +#define TPS65224_IRQ_NAME_PB_SHORT		"pb_short"
> +#define TPS65224_IRQ_NAME_FSD			"fsd"
> +#define TPS65224_IRQ_NAME_SOFT_REBOOT		"soft_reboot"
> +#define TPS65224_IRQ_NAME_BIST_PASS		"bist_pass"
> +#define TPS65224_IRQ_NAME_EXT_CLK		"ext_clk"
> +#define TPS65224_IRQ_NAME_REG_UNLOCK		"reg_unlock"
> +#define TPS65224_IRQ_NAME_TWARN			"twarn"
> +#define TPS65224_IRQ_NAME_PB_LONG		"pb_long"
> +#define TPS65224_IRQ_NAME_PB_FALL		"pb_fall"
> +#define TPS65224_IRQ_NAME_PB_RISE		"pb_rise"
> +#define TPS65224_IRQ_NAME_ADC_CONV_READY	"adc_conv_ready"
> +#define TPS65224_IRQ_NAME_TSD_ORD		"tsd_ord"
> +#define TPS65224_IRQ_NAME_BIST_FAIL		"bist_fail"
> +#define TPS65224_IRQ_NAME_REG_CRC_ERR		"reg_crc_err"
> +#define TPS65224_IRQ_NAME_RECOV_CNT		"recov_cnt"
> +#define TPS65224_IRQ_NAME_TSD_IMM		"tsd_imm"
> +#define TPS65224_IRQ_NAME_VCCA_OVP		"vcca_ovp"
> +#define TPS65224_IRQ_NAME_PFSM_ERR		"pfsm_err"
> +#define TPS65224_IRQ_NAME_BG_XMON		"bg_xmon"
> +#define TPS65224_IRQ_NAME_IMM_SHUTDOWN		"imm_shutdown"
> +#define TPS65224_IRQ_NAME_ORD_SHUTDOWN		"ord_shutdown"
> +#define TPS65224_IRQ_NAME_MCU_PWR_ERR		"mcu_pwr_err"
> +#define TPS65224_IRQ_NAME_SOC_PWR_ERR		"soc_pwr_err"
> +#define TPS65224_IRQ_NAME_COMM_ERR		"comm_err"
> +#define TPS65224_IRQ_NAME_I2C2_ERR		"i2c2_err"
> +#define TPS65224_IRQ_NAME_ESM_MCU_PIN		"esm_mcu_pin"
> +#define TPS65224_IRQ_NAME_ESM_MCU_FAIL		"esm_mcu_fail"
> +#define TPS65224_IRQ_NAME_ESM_MCU_RST		"esm_mcu_rst"

You should remove the 3 lines above for ESM_MCU.

Julien


