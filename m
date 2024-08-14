Return-Path: <devicetree+bounces-93547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A32649516BC
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 10:39:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C80331C2170C
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 08:39:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41E6B13E020;
	Wed, 14 Aug 2024 08:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N/A7XsXi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8891113D88E
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 08:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723624741; cv=none; b=HzItix70U8cmhEViNAlumdV9Bihs0gK7QtzDQ6UAPXYd0aokN+URKRdZIetDV4XREMyyiOzlFx+0WaxxPfb4WS9Th/ouVFPYCnYwgWRkCIwoeze9hRVQPcHMQi4Y29Pfw+FWL+7ipvPXQKiCM9xqIVAio1xhoASG6YPX3jDtAXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723624741; c=relaxed/simple;
	bh=k3LZIbJC6SbEMPcf0jDkx8T7ydMWVDaKAE6oJ+3wJ6A=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=IycfvxpxtB6a3Luznqg+siOzGAXGsNPH0Zv+Tijjump0m3aUN4JYw+RYMzejd6M5l/nKxxrHuy7b5SpwvzAWhUOHey8OgdM31MqtqiBS8sXkzZyOSRmY9ahH3O7Jchb00+Lj8nNSOa0OIB5VB07AO3yG0hXTqWTQWqyGZ79UKDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=N/A7XsXi; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-428e1915e18so43690225e9.1
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 01:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723624738; x=1724229538; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IHdxeHNm+1FRbkeBdiemUX179sX/QuT2onbeHn/GgO4=;
        b=N/A7XsXi/0P6lYB3fGMt7vKX+LSnaFUUxYqv9x4q3OyrQYoMsFsh+D0DwcCXaZxFls
         Zg3r8hQUk2e4RdpD0ISsv1Zfn7SYFB5nDAAN+YqnaSHl7eeIpeCeUDF/7DnJjGb6u+fF
         5Y47XzuMQWGw9rRFruQ9ht3pbJLAKqfxQlTbnWRGUEL951EimOPdoW6A5RjzQX1d8ri7
         hgnRnA5C4qI6PIkF18AJ73DmTonlKAm/KvmF93a2OjDhUCTbWHYOj3QfXYtSJXEjpKA0
         svffxP68wxZoGkKs4tkdE+ulHsl0LPPIs2XmwuodYPy+IEqQlb1z0b6nYMNRzF1Is1Ht
         qfiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723624738; x=1724229538;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IHdxeHNm+1FRbkeBdiemUX179sX/QuT2onbeHn/GgO4=;
        b=UIsNX0uZXDvh359YYksVwE2Tl0zHXt63EVo9le8IkuJpho6x6RVdbX8GEPrL4L9HiC
         SASy97WZFT52I38CHQFVNYTcPfQnC2xOfD4/KcNSJTWpmGHEinQDLTaO/liuIgpTdZLV
         4wCQzBwHp/6BYY8ojowMpB8B0RoSLPoj/cygV+OJ8GStpRrRqBZ5JU27wFi8LdiSFfLF
         rh13S5llVKQ6nQp3pCcaT7UT23naTF1i8wawW/Den8NV1fHn8P26gCqKwsXW+oUnzE92
         IeBaYfCxFSx/m9w+IEP9l7qkJMuKANO5hQg3s3G1s/uSdb8JJIoWfSutavQWGYad06LP
         OvWg==
X-Forwarded-Encrypted: i=1; AJvYcCUCRCwEm0ONnw5rDR57qxnEAxKPbMSV2+W2xjb8EpA+O4cmgPaE2B0MpCMmUS514zxDyIXJ35wTGYjWwub3tVWiIkZG8P7TKfV54w==
X-Gm-Message-State: AOJu0Yz7U/vvg0dFPT7mubUB3C54d2uJsPycIuuSR/xSkZ6E0fo7o+Du
	dgtMSejeQqoqXQR6kVzi8wHLCuL6fiS+1J4T5ZzPMUCVraF/G1YVhQEXUYLiooU=
X-Google-Smtp-Source: AGHT+IFILwzqUFJd2UA4neJoxnKD8D3iaFrnGex1CBxT9crccrJjwE8Btov67RvXkKnHLW6UnOuQww==
X-Received: by 2002:a05:600c:190f:b0:426:5f09:cf57 with SMTP id 5b1f17b1804b1-429dd247fe9mr14269095e9.19.1723624737641;
        Wed, 14 Aug 2024 01:38:57 -0700 (PDT)
Received: from [192.168.0.25] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ded80241sm12810055e9.48.2024.08.14.01.38.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Aug 2024 01:38:57 -0700 (PDT)
Message-ID: <03d1e27a-aaaf-426d-8391-bea4f74c5549@linaro.org>
Date: Wed, 14 Aug 2024 09:38:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] media: camss: add support for SDM670 camss
To: Richard Acayan <mailingradian@gmail.com>,
 Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org
References: <20240813230037.84004-8-mailingradian@gmail.com>
 <20240813230037.84004-11-mailingradian@gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240813230037.84004-11-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/08/2024 00:00, Richard Acayan wrote:
> The camera subsystem for the SDM670 the same as on SDM845 except with
> 3 CSIPHY ports instead of 4. Add support for the SDM670 camera
> subsystem.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>   drivers/media/platform/qcom/camss/camss.c | 194 ++++++++++++++++++++++
>   1 file changed, 194 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index 51b1d3550421..f5d8443d4157 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -584,6 +584,188 @@ static const struct camss_subdev_resources vfe_res_660[] = {
>   	}
>   };
>   
> +static const struct camss_subdev_resources csiphy_res_670[] = {
> +	/* CSIPHY0 */
> +	{
> +		.regulators = {},
> +		.clock = { "camnoc_axi", "soc_ahb", "cpas_ahb",
> +				"csiphy0", "csiphy0_timer" },

Per previous comment, you're specifying camnoc_axi here, so you can just 
set it to whatever it was 80MHz I think.

You shouldn't need the Camera NoC clock to do an I2C/CCI transaction ... 
  nor TBH for the CSIPHY.

Should probably live in the CSID alone.

> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 19200000, 240000000, 269333333 } },
> +		.reg = { "csiphy0" },
> +		.interrupt = { "csiphy0" },
> +		.csiphy = {
> +			.hw_ops = &csiphy_ops_3ph_1_0,
> +			.formats = &csiphy_formats_sdm845
> +		}
> +	},
> +
> +	/* CSIPHY1 */
> +	{
> +		.regulators = {},
> +		.clock = { "camnoc_axi", "soc_ahb", "cpas_ahb",
> +				"csiphy1", "csiphy1_timer" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 19200000, 240000000, 269333333 } },
> +		.reg = { "csiphy1" },
> +		.interrupt = { "csiphy1" },
> +		.csiphy = {
> +			.hw_ops = &csiphy_ops_3ph_1_0,
> +			.formats = &csiphy_formats_sdm845
> +		}
> +	},
> +
> +	/* CSIPHY2 */
> +	{
> +		.regulators = {},
> +		.clock = { "camnoc_axi", "soc_ahb", "cpas_ahb",
> +				"csiphy2", "csiphy2_timer" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 0 },
> +				{ 19200000, 240000000, 269333333 } },
> +		.reg = { "csiphy2" },
> +		.interrupt = { "csiphy2" },
> +		.csiphy = {
> +			.hw_ops = &csiphy_ops_3ph_1_0,
> +			.formats = &csiphy_formats_sdm845
> +		}
> +	}
> +};
> +
> +static const struct camss_subdev_resources csid_res_670[] = {
> +	/* CSID0 */
> +	{
> +		.regulators = { "vdda-phy", "vdda-pll" },
> +		.clock = { "cpas_ahb", "soc_ahb", "vfe0",
> +				"vfe0_cphy_rx", "csi0" },

You don't need csiX clock in both VFE and CSID.

Should almost certainly only be in CSID.

> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 100000000, 320000000, 404000000, 480000000, 600000000 },
> +				{ 384000000 },
> +				{ 19200000, 75000000, 384000000, 538666667 } },
> +		.reg = { "csid0" },
> +		.interrupt = { "csid0" },
> +		.csid = {
> +			.hw_ops = &csid_ops_gen2,
> +			.formats = &csid_formats_gen2
> +		}
> +	},
> +
> +	/* CSID1 */
> +	{
> +		.regulators = { "vdda-phy", "vdda-pll" },
> +		.clock = { "cpas_ahb", "soc_ahb", "vfe1",
> +				"vfe1_cphy_rx", "csi1" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 100000000, 320000000, 404000000, 480000000, 600000000 },
> +				{ 384000000 },
> +				{ 19200000, 75000000, 384000000, 538666667 } },
> +		.reg = { "csid1" },
> +		.interrupt = { "csid1" },
> +		.csid = {
> +			.hw_ops = &csid_ops_gen2,
> +			.formats = &csid_formats_gen2
> +		}
> +	},
> +
> +	/* CSID2 */
> +	{
> +		.regulators = { "vdda-phy", "vdda-pll" },
> +		.clock = { "cpas_ahb", "soc_ahb", "vfe_lite",
> +				"vfe_lite_cphy_rx", "csi2" },
> +		.clock_rate = { { 0 },
> +				{ 0 },
> +				{ 100000000, 320000000, 404000000, 480000000, 600000000 },
> +				{ 384000000 },
> +				{ 19200000, 75000000, 384000000, 538666667 } },
> +		.reg = { "csid2" },
> +		.interrupt = { "csid2" },
> +		.csid = {
> +			.is_lite = true,
> +			.hw_ops = &csid_ops_gen2,
> +			.formats = &csid_formats_gen2
> +		}
> +	}
> +};
> +
> +static const struct camss_subdev_resources vfe_res_670[] = {
> +	/* VFE0 */
> +	{
> +		.regulators = {},
> +		.clock = { "camnoc_axi", "cpas_ahb", "soc_ahb",
> +				"vfe0", "vfe0_axi", "csi0" },

Please try to zap that csi0 clock for your v3, only specifying it in CSID.

---
bod

