Return-Path: <devicetree+bounces-228896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F06B3BF1D87
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 16:29:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 07EF7422FFF
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 14:29:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E2B9325489;
	Mon, 20 Oct 2025 14:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KgIhKfy4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75483136351
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 14:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760970577; cv=none; b=bjnPV1c8a2PJoNz1iqBwphXJ0YczKiNNB29ZCrOSgIv20rmvo9IcrF6krZtyhgXDbRBAfm2bD2qkweie88wurqjKUW6IKTWWvXgpDNZEoM/kGYw/mPu+VIeE+1tqzRFg9cuRU5MEBSREtv0161JllB1bkAd5d99+HfUH3E7jfwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760970577; c=relaxed/simple;
	bh=X7IGd3KK52vsYXMhrM/sak5eUWBh9m0RLIV6Uoj15+4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E8YP/9SnlQ3m9vo7W8zll/ChJ2ENhDV7GM8VBTl2ujlR5lDbhGJEyAkRHE+cFRKsO4PLr3+5WUv15cE8yXaQHyy9YN2ExlGqHI1ojj4jSaNKtR1oaVzVVQ08whVO/F+bHmk9qH7lq06afBO8TACqS3t1WM1ta5j23UAcPbFV/LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KgIhKfy4; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b3d80891c6cso1059493366b.1
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 07:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760970573; x=1761575373; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2JR/OKSNOnF+l4tQRJr2FhhTssgUWExohKzJa6PLCZs=;
        b=KgIhKfy42b75V72wMvAz0SmIKxr0YxpNl+4X8ImLHv4zPHDmNKZlbfzV820EqrZbBf
         PJhinJslT8SSrauCRc6ic4A0ENA8sSujNRqThnY1UM5RDqB2zRwAs8Z3EwXyb6WInIor
         eAT+2+V/B7TaJ29iZP07re6jnS99bD2ziSPqKkE590WjrqujP7yMsaz6+YYQqwHQ5Z1l
         mpJr8EhS2TRZNAWXVAi6eWenqcN15yQQJfY6W8NmGjOxlcrV+HyFGvJ5KHytBKhlLD24
         PS1GiWRgh19f0oTSoBS7L7qJpgMWkowYEdXsV0IOLlOwtV6D+pjXm8MBHvBImzlAUHLc
         wRSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760970573; x=1761575373;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2JR/OKSNOnF+l4tQRJr2FhhTssgUWExohKzJa6PLCZs=;
        b=PVhxlmug7aVmyh1qJgJCAyxJZjkOnD7LrpsybsoIpmNl8kl5NzFCRHihsmGmJK8fHY
         m/HdR3lfVzZuPjNuE3chrnFZdsqVImMHh1KZX5XNhGPzVP0qZjA3FLF7RbOCx5GRC5I7
         CEgvjf1xRuUIFyeIPg1sdN6lFmTGPLgMcGqSM2Ggj8/jaFp0TwSdC+TAP37XGBwWmlqm
         GquY3IDGOG3zclS7qONVs08f/VHb+HeftuRAiH+4xjq8lMA/vk9AL1leeU74OpI0JLQv
         1fCaXQcPFP4DsEWmiNIhX2sjUWhDpn5BOh6AEo72VTwST/LnTT1uLDwkoffTdVHGciCT
         Q6Lg==
X-Forwarded-Encrypted: i=1; AJvYcCXLp58cvfNCQ8VFgJPGF1n7U8vcMU9me2PvJ5h6g/Y/0jsMqb7nGJHtk+LrtQL8h+TIFKCKAs1PB4+4@vger.kernel.org
X-Gm-Message-State: AOJu0YxwdgUaiVBom4z99xXIWujHIYmnoM0s1Yjf6BRyKQ3HdRF9xETr
	+m/zVb2gWA7gulsOepbzyn7kFJNq9C4ylfU+tboK0Cyaa8LgBtu34HRK
X-Gm-Gg: ASbGncun5LdyllInsWtP9ii8HQMOfm8spRQkKRhQtb+XJwL/EHTOgPR7xbtx6LOY6L0
	n2esc8Asg2VN9pEmKIKUokeoGUZZHz87dqgcgsBdPYjYpOc5ZB5eqgbWH0pU58/340J5NSlroWh
	hMC6M7h1qKVAkoOGgg2kMMQeBzCp1gyzPMof70S8UJnPgtADsLDv7oGPKIq5xsmltu49Vpk7qeX
	BQWHFwoiDwOpRrWTSGGLdIhgPpgfNbgdP0/3t5kjiWSgDqgJ10b1WVrQniZlZYkym6KrmisLorJ
	WWK1wt7YeIFF2Gef5sKHpsvDJwH8CRs4LXHnTV88lHWVSzrEAbaWx9UbPxoE8BqN/FE57mH7/kc
	Plu/T86fhrugn8ucGvXdTufx/fHK/oVK2aauW7otmvm3DVlo3HaNoXzkho2mpQtCbIR3xZykOmB
	EuE5i3SUlAzZbEyH9YHeLIJzwfZkJFNRp5
X-Google-Smtp-Source: AGHT+IG/fdWt7ok35oOxO1wrbFMUAezRTf+f2uzPz94aKfhnEmWUajzGD6PhgGurEGjl/Gai/41dbw==
X-Received: by 2002:a17:906:7315:b0:b3c:9bee:eb95 with SMTP id a640c23a62f3a-b645c9cd378mr1808744466b.3.1760970572663;
        Mon, 20 Oct 2025 07:29:32 -0700 (PDT)
Received: from [10.25.213.231] ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e8391523sm803404466b.18.2025.10.20.07.29.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 07:29:32 -0700 (PDT)
Message-ID: <64b28a11-337a-42ba-8765-d94b19070d66@gmail.com>
Date: Mon, 20 Oct 2025 07:29:28 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 7/8] reset: imx8mp-audiomix: Support i.MX8ULP SIM LPAV
To: Frank Li <Frank.li@nxp.com>
Cc: Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>, Shengjiu Wang
 <shengjiu.wang@nxp.com>, linux-clk@vger.kernel.org, imx@lists.linux.dev,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20251017112025.11997-1-laurentiumihalcea111@gmail.com>
 <20251017112025.11997-8-laurentiumihalcea111@gmail.com>
 <aPJZdAQwdoOP3cqN@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
In-Reply-To: <aPJZdAQwdoOP3cqN@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit


On 10/17/2025 7:57 AM, Frank Li wrote:
> On Fri, Oct 17, 2025 at 04:20:24AM -0700, Laurentiu Mihalcea wrote:
>> From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>>
>> Support i.MX8ULP's SIM LPAV by adding its reset map definition.
>>
>> Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
>> Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>> ---
>>  drivers/reset/reset-imx8mp-audiomix.c | 51 +++++++++++++++++++++++++++
>>  1 file changed, 51 insertions(+)
>>
>> diff --git a/drivers/reset/reset-imx8mp-audiomix.c b/drivers/reset/reset-imx8mp-audiomix.c
>> index c370913107f5..b333d7c1442a 100644
>> --- a/drivers/reset/reset-imx8mp-audiomix.c
>> +++ b/drivers/reset/reset-imx8mp-audiomix.c
>> @@ -3,6 +3,7 @@
>>   * Copyright 2024 NXP
>>   */
>>
>> +#include <dt-bindings/reset/fsl,imx8ulp-sim-lpav.h>
>>  #include <dt-bindings/reset/imx8mp-reset-audiomix.h>
>>
>>  #include <linux/auxiliary_bus.h>
>> @@ -17,6 +18,8 @@
>>  #define IMX8MP_AUDIOMIX_EARC_RESET_OFFSET	0x200
>>  #define IMX8MP_AUDIOMIX_DSP_RUNSTALL_OFFSET	0x108
>>
>> +#define IMX8ULP_SIM_LPAV_SYSCTRL0_OFFSET	0x8
>> +
>>  struct imx8mp_reset_map {
>>  	unsigned int offset;
>>  	unsigned int mask;
>> @@ -55,6 +58,50 @@ static const struct imx8mp_reset_info imx8mp_reset_info = {
>>  	.num_lines = ARRAY_SIZE(imx8mp_reset_map),
>>  };
>>
>> +static const struct imx8mp_reset_map imx8ulp_reset_map[] = {
>> +	[IMX8ULP_SIM_LPAV_HIFI4_DSP_DBG_RST] = {
>> +		.offset = IMX8ULP_SIM_LPAV_SYSCTRL0_OFFSET,
>> +		.mask = BIT(25),
> Register defination still perfer use macro. If not, let me know.

I see no value in adding defines for the masks (see patch 4 commit message)

in this particular scenario.


Is the assignment of the "mask" field for the "struct imx8mp_reset_map" item found

at index  IMX8ULP_SIM_LPAV_HIFI4_DSP_DBG_RST not enough to deduce that the

constant we're using is the mask for the DSP_DBG_RST bit?


>
> Frank
>> +		.shift = 25,
>> +		.active_low = false,
>> +	},
>> +	[IMX8ULP_SIM_LPAV_HIFI4_DSP_RST] = {
>> +		.offset = IMX8ULP_SIM_LPAV_SYSCTRL0_OFFSET,
>> +		.mask = BIT(16),
>> +		.shift = 16,
>> +		.active_low = false,
>> +	},
>> +	[IMX8ULP_SIM_LPAV_HIFI4_DSP_STALL] = {
>> +		.offset = IMX8ULP_SIM_LPAV_SYSCTRL0_OFFSET,
>> +		.mask = BIT(13),
>> +		.shift = 13,
>> +		.active_low = false,
>> +	},
>> +	[IMX8ULP_SIM_LPAV_DSI_RST_BYTE_N] = {
>> +		.offset = IMX8ULP_SIM_LPAV_SYSCTRL0_OFFSET,
>> +		.mask = BIT(5),
>> +		.shift = 5,
>> +		.active_low = true,
>> +	},
>> +	[IMX8ULP_SIM_LPAV_DSI_RST_ESC_N] = {
>> +		.offset = IMX8ULP_SIM_LPAV_SYSCTRL0_OFFSET,
>> +		.mask = BIT(4),
>> +		.shift = 4,
>> +		.active_low = true,
>> +	},
>> +	[IMX8ULP_SIM_LPAV_DSI_RST_DPI_N] = {
>> +		.offset = IMX8ULP_SIM_LPAV_SYSCTRL0_OFFSET,
>> +		.mask = BIT(3),
>> +		.shift = 3,
>> +		.active_low = true,
>> +	},
>> +};
>> +
>> +static const struct imx8mp_reset_info imx8ulp_reset_info = {
>> +	.map = imx8ulp_reset_map,
>> +	.num_lines = ARRAY_SIZE(imx8ulp_reset_map),
>> +};
>> +
>>  struct imx8mp_audiomix_reset {
>>  	struct reset_controller_dev rcdev;
>>  	void __iomem *base;
>> @@ -183,6 +230,10 @@ static const struct auxiliary_device_id imx8mp_audiomix_reset_ids[] = {
>>  		.name = "clk_imx8mp_audiomix.reset",
>>  		.driver_data = (kernel_ulong_t)&imx8mp_reset_info,
>>  	},
>> +	{
>> +		.name = "clk_imx8ulp_sim_lpav.reset",
>> +		.driver_data = (kernel_ulong_t)&imx8ulp_reset_info,
>> +	},
>>  	{ }
>>  };
>>  MODULE_DEVICE_TABLE(auxiliary, imx8mp_audiomix_reset_ids);
>> --
>> 2.43.0
>>

