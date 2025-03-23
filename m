Return-Path: <devicetree+bounces-159915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 19860A6CF78
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 14:24:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5CB5D3B263B
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 13:23:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8834E40855;
	Sun, 23 Mar 2025 13:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="iJdN6KkE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D301338DE1
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 13:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742736223; cv=none; b=NKLMybVwf7j4N/JHtA77z1Gr61AM8O2+I7o5gJuqPLUQuerGZO8ayfkyn+8YA38xkfK15HGUOm7Lo97zK0UM0I7xK5Savk2Dg073RTDkAZf5Rier2hEogk88terugeQWJsQtlzWmP2ngWcCLwFU30BcxV39XlkybQ4hu+JVNU8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742736223; c=relaxed/simple;
	bh=8m4ki5WTnTOqAS5pWNSqJZYFt1pRtJBBaNdNuRgGqXg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N1v1HROkbINmiGWnicWfAa1bQRSd7F+UkqR+mH2/BQb/Wz5e9IZaQrwH96uIFDfEsldx4T6XGGv2e6QpwGOqJJbI6fE21NbDPQy4zA2ldCW6LAW1RK+wquXxutXESNfQVj/8CvzLkUiHR7FUWQHcxLPYdzrr2QSnDkTNrbII2xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=iJdN6KkE; arc=none smtp.client-ip=209.85.166.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f53.google.com with SMTP id ca18e2360f4ac-85b4277d0fbso126246539f.0
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 06:23:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1742736221; x=1743341021; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/rjwFsPUVvvPhnWO0yZbKmPZex9tHV8eOTprS6xHwcQ=;
        b=iJdN6KkEoO5d6nCwNnG8fjOVK+pA5vdpz/EQ9eFEbYOpTL1Xv4iMBif+VFjRgoEeBs
         Z+W45wdktyQnCj6zGNtK8Fm0x3D4WGqp6eVMPGu97Q+Lds4yC8rQEj0AxovYJ7HPT+Kb
         vsWAThvd39hRKJK9X+kkjcD7KC0GC1R/LsDzncDmj5qPa5jf4T8ZaLcfR1lEamMewTGF
         i+eogd+0NUM4VCcmfLPOeLqgTceV3dJwGV+r3f1WNqBTccFILEwSa+58S4E4Q9amWAGC
         5WjakV0LIQEVlqHjhgf+5x5Na5ZudN3Iz0vMBVFyNHkbMc87DfYjEVXtdxTkY8tNFupo
         VZMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742736221; x=1743341021;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/rjwFsPUVvvPhnWO0yZbKmPZex9tHV8eOTprS6xHwcQ=;
        b=pVQgzDzAHxVHUGiG8SiV6ILwtTfagdNoJNI8aIAi2d96M3i39+wBIV1TIqtFEeBHxC
         ZNsv0+E/Awt7p9ukeGAQ8blnw9lAab1fy0At/NCj7h2FAMaEEqpFUc8ANNFVA34wbytl
         AdkYvsfOM2YHtaEfmEmxGOgLyPvrOh38NA43oBATEBLMn3WuIFhMiRDdiao+3cys18MG
         051kmLT9vrNOux1t1NM5VrPMZu0C6BkG03zDBdsZLn+F8oMOPMlNCV6LAHdZCO0C4t6V
         fuXCudy/YUe3d1MsJq0ZE0VaE+1bBxLn+8E6KbP3Lp8YTYF0NXLWpRwU+6UdZnIYQRCb
         QMMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOf/CyypGGHtFwG74N4cHH3ZC1pQP4Tjq38gk6FoMesmfVH7dTBhR8YgseLOS/wqvSQcHKX1n1NZ53@vger.kernel.org
X-Gm-Message-State: AOJu0Ywd5P0x/Ov+ffc8mCrfAxu6yVv4f5ssLIzi9sep9nE6bnbejcRq
	X0MH0sFLXjO0UbS5nRG4sYJvVT4l9Abp3/k8fQnNetg6dR4hbT3njeP8vouDbyQ=
X-Gm-Gg: ASbGncuXsGRKWqK16qg6k+KODqBh1N6pvftsTPQwepPAIIT2XNjcAjCN3vMrWb96onV
	WG26mw2o8oUCT+bk+YlnlwSVOzAkP9RsUqwjCPSIWdO6MAkPj+XNVmwrDk8j7CTz4hHW0qXwzkV
	/jjfKVIm2L9DcFzqZcGrwdeS+Zy7XgxCUnYR+l8awv7mw/cmwQWiIgOLsSMVsa8JCqnI16TD9HJ
	huJkjTOmY59IfMr2xfRNap00Q19V0AMGG14FwVdX9/YdBxGBjA1Y6+0jnB1CXRx5KgTjKSghkX5
	K/XASPu2PopxhLZ5H4G9deLgabmnXN6Hd2mcwJy0SpWM15nBcHAdW5E093sADxCgnrycYj5HDkQ
	o74QVSZUWmodR53E1UQ==
X-Google-Smtp-Source: AGHT+IF7Fd96mUgZBjBUyzdPCTDqsovLEsSmo2AzCv+iLTRjoA03l+8HJEkqodCvbMpbBAiH42tMqg==
X-Received: by 2002:a05:6602:3a0f:b0:85b:5869:b66 with SMTP id ca18e2360f4ac-85e2ca18965mr965437839f.1.1742736220910;
        Sun, 23 Mar 2025 06:23:40 -0700 (PDT)
Received: from [10.211.55.5] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-85e2bc13d74sm125798039f.11.2025.03.23.06.23.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Mar 2025 06:23:40 -0700 (PDT)
Message-ID: <ee9fb4b7-7829-4eec-815c-1e269d6abc38@riscstar.com>
Date: Sun, 23 Mar 2025 08:23:39 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND 4/7] clk: spacemit: define existing syscon resets
To: Yixun Lan <dlan@gentoo.org>
Cc: p.zabel@pengutronix.de, mturquette@baylibre.com, sboyd@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heylenay@4d2.org,
 guodong@riscstar.com, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, spacemit@lists.linux.dev, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250321151831.623575-1-elder@riscstar.com>
 <20250321151831.623575-5-elder@riscstar.com> <20250322162909-GYA15267@gentoo>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250322162909-GYA15267@gentoo>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/22/25 11:29 AM, Yixun Lan wrote:
> On 10:18 Fri 21 Mar     , Alex Elder wrote:
>> Define reset controls associated with the MPMU, APBC, and APMU
>> SpacemiT K1 CCUs.  These already have clocks associated with them.
>>
>> Signed-off-by: Alex Elder <elder@riscstar.com>
>> ---
>>   drivers/clk/spacemit/ccu-k1.c | 132 ++++++++++++++++++++++++++++++++++
>>   1 file changed, 132 insertions(+)
>>
>> diff --git a/drivers/clk/spacemit/ccu-k1.c b/drivers/clk/spacemit/ccu-k1.c
>> index 6d879411c6c05..be8abd27753cb 100644
>> --- a/drivers/clk/spacemit/ccu-k1.c
>> +++ b/drivers/clk/spacemit/ccu-k1.c
> ..
>> +static const struct ccu_reset_data apmu_reset_data[] = {
>> +	[RST_CCIC_4X]	= RST_DATA(APMU_CCIC_CLK_RES_CTRL,	0, BIT(1)),
>> +	[RST_CCIC1_PHY] = RST_DATA(APMU_CCIC_CLK_RES_CTRL,	0, BIT(2)),
>> +	[RST_SDH_AXI]	= RST_DATA(APMU_SDH0_CLK_RES_CTRL,	0, BIT(0)),
>> +	[RST_SDH0]	= RST_DATA(APMU_SDH0_CLK_RES_CTRL,	0, BIT(1)),
>> +	[RST_SDH1]	= RST_DATA(APMU_SDH1_CLK_RES_CTRL,	0, BIT(1)),
>> +	[RST_SDH2]	= RST_DATA(APMU_SDH2_CLK_RES_CTRL,	0, BIT(1)),
>> +	[RST_USBP1_AXI] = RST_DATA(APMU_USB_CLK_RES_CTRL,	0, BIT(4)),
>> +	[RST_USB_AXI]	= RST_DATA(APMU_USB_CLK_RES_CTRL,	0, BIT(0)),
> ..
>> +	[RST_USB3_0]	= RST_DATA(APMU_USB_CLK_RES_CTRL,	0,
>> +				      BIT(9)|BIT(10)|BIT(11)),
> 100 column if possible, also add one space between "BIT(9) | BIT(10) .."
> continuous bits can just use GENMASK for short?

You'll notice that every place that has multiple bits in the mask
also have a line break.  I kind of liked that as a way to highlight
that fact (i.e., it goes beyond my preference for 80 columns).

I will definitely add spaces, that was a mistake not to.

I will not define this with GENMASK().  In this case each bit
represents a single reset, and so each one is significant on
its own.  It is *not* a mask of contiguous bits, it's a set
of bits that happen to have consecutive positions.

					-Alex

> but may result slightly unreadable, anyway, either way is fine by me
> 
>> +	[RST_QSPI]	= RST_DATA(APMU_QSPI_CLK_RES_CTRL,	0, BIT(1)),
>> +	[RST_QSPI_BUS] = RST_DATA(APMU_QSPI_CLK_RES_CTRL,	0, BIT(0)),
>> +	[RST_DMA]	= RST_DATA(APMU_DMA_CLK_RES_CTRL,	0, BIT(0)),
>> +	[RST_AES]	= RST_DATA(APMU_AES_CLK_RES_CTRL,	0, BIT(4)),
>> +	[RST_VPU]	= RST_DATA(APMU_VPU_CLK_RES_CTRL,	0, BIT(0)),
>> +	[RST_GPU]	= RST_DATA(APMU_GPU_CLK_RES_CTRL,	0, BIT(1)),
>> +	[RST_EMMC]	= RST_DATA(APMU_PMUA_EM_CLK_RES_CTRL,	0, BIT(1)),
>> +	[RST_EMMC_X]	= RST_DATA(APMU_PMUA_EM_CLK_RES_CTRL,	0, BIT(0)),
>> +	[RST_AUDIO]	= RST_DATA(APMU_AUDIO_CLK_RES_CTRL,	0,
>> +				   BIT(0) | BIT(2) | BIT(3)),
>> +	[RST_HDMI]	= RST_DATA(APMU_HDMI_CLK_RES_CTRL,	0, BIT(9)),
>> +	[RST_PCIE0]	= RST_DATA(APMU_PCIE_CLK_RES_CTRL_0,	BIT(8),
>> +				   BIT(3) | BIT(4) | BIT(5)),
>> +	[RST_PCIE1]	= RST_DATA(APMU_PCIE_CLK_RES_CTRL_1,	BIT(8),
>> +				   BIT(3) | BIT(4) | BIT(5)),
>> +	[RST_PCIE2]	= RST_DATA(APMU_PCIE_CLK_RES_CTRL_2,	BIT(8),
>> +				   BIT(3) | BIT(4) | BIT(5)),
>> +	[RST_EMAC0]	= RST_DATA(APMU_EMAC0_CLK_RES_CTRL,	0, BIT(1)),
>> +	[RST_EMAC1]	= RST_DATA(APMU_EMAC1_CLK_RES_CTRL,	0, BIT(1)),
>> +	[RST_JPG]	= RST_DATA(APMU_JPG_CLK_RES_CTRL,	0, BIT(0)),
>> +	[RST_CCIC2PHY]	= RST_DATA(APMU_CSI_CCIC2_CLK_RES_CTRL,	0, BIT(2)),
>> +	[RST_CCIC3PHY]	= RST_DATA(APMU_CSI_CCIC2_CLK_RES_CTRL,	0, BIT(29)),
>> +	[RST_CSI]	= RST_DATA(APMU_CSI_CCIC2_CLK_RES_CTRL,	0, BIT(1)),
>> +	[RST_ISP]	= RST_DATA(APMU_ISP_CLK_RES_CTRL,	0, BIT(0)),
>> +	[RST_ISP_CPP]	= RST_DATA(APMU_ISP_CLK_RES_CTRL,	0, BIT(27)),
>> +	[RST_ISP_BUS]	= RST_DATA(APMU_ISP_CLK_RES_CTRL,	0, BIT(3)),
>> +	[RST_ISP_CI]	= RST_DATA(APMU_ISP_CLK_RES_CTRL,	0, BIT(16)),
>> +	[RST_DPU_MCLK]	= RST_DATA(APMU_LCD_CLK_RES_CTRL2,	0, BIT(9)),
>> +	[RST_DPU_ESC]	= RST_DATA(APMU_LCD_CLK_RES_CTRL1,	0, BIT(3)),
>> +	[RST_DPU_HCLK]	= RST_DATA(APMU_LCD_CLK_RES_CTRL1,	0, BIT(4)),
>> +	[RST_DPU_SPIBUS] = RST_DATA(APMU_LCD_SPI_CLK_RES_CTRL,	0, BIT(4)),
>> +	[RST_DPU_SPI_HBUS] = RST_DATA(APMU_LCD_SPI_CLK_RES_CTRL, 0, BIT(2)),
>> +	[RST_V2D]	= RST_DATA(APMU_LCD_CLK_RES_CTRL1,	0, BIT(27)),
>> +	[RST_MIPI]	= RST_DATA(APMU_LCD_CLK_RES_CTRL1,	0, BIT(15)),
>> +	[RST_MC]	= RST_DATA(APMU_PMUA_MC_CTRL,		0, BIT(0)),
>> +};
>> +
>> +static const struct ccu_reset_controller_data apmu_reset_controller_data = {
>> +	.count		= ARRAY_SIZE(apmu_reset_data),
>> +	.data		= apmu_reset_data,
>> +};
>> +
>>   static const struct k1_ccu_data k1_ccu_apmu_data = {
>>   	.clk		= k1_ccu_apmu_clks,
>> +	.rst_data	= &apmu_reset_controller_data,
>>   };
>>   
>>   static struct ccu_reset_controller *
>> -- 
>> 2.43.0
>>
> 


