Return-Path: <devicetree+bounces-236732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D03C46C59
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 14:06:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BA8FA4EAF38
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 13:06:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 371F42FCC01;
	Mon, 10 Nov 2025 13:06:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zHxosS5Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317351E2307
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 13:06:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762779973; cv=none; b=PKjqU3/c3VF8aHbptiBLpdLeIGtaQAuC6APzhKrohKiTx6oWrcgX2Un9H1VQ2g18r0cFVpsJ3upPO79KYDJgxY1kEArdGc0TVFOjOsp8VCfC8JgWvunsAfEQFoAQMcqsnoq4lEErWdQtjn90Od8kNV+ozZCBHkWQVYMM5gsylCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762779973; c=relaxed/simple;
	bh=EFduA5IK5SFrmlRbhZan0kyK7crRwbF+SBZ8qjksjNg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eIheaahDiVndKFaXIlV12MyBcKM4S8XKLRSvLbiTCyKW3HFLJDVS5s0QYJiPLtyAOEluTFoLYOrGb7veYv3nk6QbfXIC9SboyWr2AWbPuUOlbkBJkFQupyeCDD9NxYxkUZpSK0YSrhnfol1ffnIc1P5oecKfgchQ/HzpCrxDaeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zHxosS5Y; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-47775fb6c56so19817075e9.1
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 05:06:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762779969; x=1763384769; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IFcBbXPwvkiMGC/UX+vL3kGptND9Aa39FQ9X5eJiJ0I=;
        b=zHxosS5Y1Fu6z7SFNXxbBteAPLE9jFKuvxopE4oAdg3/UxSWDXPMADzsVVPic3M5iJ
         4b5EjgE1B6swH5nP8pDTaJIQUzlyAlCSpYmrrJYN74Wd4q5GbTkpetahmR3b+lQZ0MK2
         hT2pZv79IQNZvAnP6u7jrae426vMzTfKI86z8tuWKAMA4NWqUvMTGGeIuKXU676YADDI
         cN1YDSp1JUyIpbXAiRaqWFw3aHS3JJfNOqcmSfGCX8c6mTvc4M6MYk+ssMldaCHU1RD4
         +tV8jZ9Fj/pjhWxeE/ZLRkX7rG1Wf405XSqzlRYpkx40Se0BUngl1dc2yhVkAXjTTi6k
         LCuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762779969; x=1763384769;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IFcBbXPwvkiMGC/UX+vL3kGptND9Aa39FQ9X5eJiJ0I=;
        b=w05YnHVO3S+MgPuJSNs7iy1CJ4Oh9OtehYzJd6lPRuC7n6AkFL6QLPzoOxCfODJoLA
         FiE/smmHdZNPJuNsWUxSc233BxzNK+rPZE6WzuXkfzKXX2YLdvJRMU8f8/qsfiPFzhcO
         QySge4kPPlGd9EVRbZbnrt3RV8zN1s/dJkfkJpBsfoq35tiDdpXLrFuEtyvFLDuUuKXC
         YLkE417uzPtLJ+ky3HFue06wLfTBiRJu9sTI/1kdcZy86C8f2vtyK1aN/2fWZUoqcJd+
         PRL6ed4rh8+OANdnKOgMF106yV5lkcIj7I6arK/TeaGRrNpx0Q7rHKS88owJ39b7WUbD
         Jiyg==
X-Forwarded-Encrypted: i=1; AJvYcCWFso0dE4uj8B/rcDCQbmvBTtLGTmxOb9EBJ4dGpdbuLAvkad4ONSpg1XyHyMv3g0sJ+a7os4m/An9o@vger.kernel.org
X-Gm-Message-State: AOJu0YxKM1OPAuz3rAYMbJ6qKNYJopJRj/tS2yCAeqRu2e4R7BYXXZxb
	Y6M0D8qDuc0CzUKmRrY4sxQkl502BHwCRAmukuP+45T0U7OcGJDjevxeIvzfpXecqq8=
X-Gm-Gg: ASbGncvYZCpDC40+2X/3wLU+TWxgcT7SyIVrH2erIXX0Tp8LbhXqv+dFJ9/4Y/s3rjQ
	z9WYnvIp5IxJ9WzK974zpi0IMMgEdHXhZvfnZnxIVAftvJR5ELrtxMjeJrJVGYXkL5YqK4plXMo
	pc/DUzk4+oZ8LVD9iyNsKXE+wRiUSm7t5/76eVcLe6aaW15F+NdTGKq48/5NAx5s74d6z3apXaa
	sx09k4BxXztVL/QUiiGZqlJWfL+DkNGEYlmRgINhW0iLYSzamfj1jOLbL/47bJr+2cxs1EAxe6k
	zgjCvx058sh5Rn7BMpbZNhG1rUcih2CX6cihQY7K0DIz3eE3/rhVSe8zqMwZNtD7IsgE8NZmnDu
	WxHwglafYLzQbECCBb93nCQsjLCaruH+o7zf7y9F75WQxiZu1008yDjpFDx+29dSz3VHdJVZk+V
	mUOXPHH9GQkfCxPBG3aLU5B+87bObVLevBCpiXQKnZ1aBNiLgFl4iWlHg=
X-Google-Smtp-Source: AGHT+IFtXNJpzD2gW9iSn0NztWrLxTZvcOLBaFBOCFqkmNRmqw71Iuc2gfKNjESDEOfAEahNU8T56w==
X-Received: by 2002:a05:600c:4f8b:b0:477:569c:34e9 with SMTP id 5b1f17b1804b1-47773271a62mr83156425e9.23.1762779969396;
        Mon, 10 Nov 2025 05:06:09 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:2b20:d700:6e9c:533c? ([2a05:6e02:1041:c10:2b20:d700:6e9c:533c])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4776bcfcfc7sm240169015e9.12.2025.11.10.05.06.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 05:06:08 -0800 (PST)
Message-ID: <1e0545da-5d24-4ca4-863d-0d5671902d0b@linaro.org>
Date: Mon, 10 Nov 2025 14:06:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v3 4/9] thermal: mediatek: lvts: Add platform ops
 to support alternative conversion logic
To: Laura Nao <laura.nao@collabora.com>, srini@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, rafael@kernel.org,
 rui.zhang@intel.com, lukasz.luba@arm.com, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com
Cc: nfraprado@collabora.com, arnd@arndb.de, colin.i.king@gmail.com,
 u.kleine-koenig@baylibre.com, andrew-ct.chen@mediatek.com,
 lala.lin@mediatek.com, bchihi@baylibre.com, frank-w@public-files.de,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, kernel@collabora.com,
 Fei Shao <fshao@chromium.org>
References: <20251016142158.740242-1-laura.nao@collabora.com>
 <20251016142158.740242-5-laura.nao@collabora.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20251016142158.740242-5-laura.nao@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/16/25 16:21, Laura Nao wrote:
> Introduce lvts_platform_ops struct to support SoC-specific versions of
> lvts_raw_to_temp() and lvts_temp_to_raw() conversion functions.
> 
> This is in preparation for supporting SoCs like MT8196/MT6991, which
> require a different lvts_temp_to_raw() implementation.
> 
> Reviewed-by: Fei Shao <fshao@chromium.org>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Tested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Signed-off-by: Laura Nao <laura.nao@collabora.com>
> ---
>   drivers/thermal/mediatek/lvts_thermal.c | 27 ++++++++++++++++++++++---
>   1 file changed, 24 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/thermal/mediatek/lvts_thermal.c b/drivers/thermal/mediatek/lvts_thermal.c
> index 4ef549386add..df1c0f059ad0 100644
> --- a/drivers/thermal/mediatek/lvts_thermal.c
> +++ b/drivers/thermal/mediatek/lvts_thermal.c
> @@ -125,8 +125,14 @@ struct lvts_ctrl_data {
>   			continue; \
>   		else
>   
> +struct lvts_platform_ops {
> +	int (*lvts_raw_to_temp)(u32 raw_temp, int temp_factor);
> +	u32 (*lvts_temp_to_raw)(int temperature, int temp_factor);
> +};
> +
>   struct lvts_data {
>   	const struct lvts_ctrl_data *lvts_ctrl;
> +	const struct lvts_platform_ops *ops;
>   	const u32 *conn_cmd;
>   	const u32 *init_cmd;
>   	int num_cal_offsets;
> @@ -300,6 +306,7 @@ static int lvts_get_temp(struct thermal_zone_device *tz, int *temp)
>   	struct lvts_ctrl *lvts_ctrl = container_of(lvts_sensor, struct lvts_ctrl,
>   						   sensors[lvts_sensor->id]);
>   	const struct lvts_data *lvts_data = lvts_ctrl->lvts_data;
> +	const struct lvts_platform_ops *ops = lvts_data->ops;
>   	void __iomem *msr = lvts_sensor->msr;
>   	u32 value;
>   	int rc;
> @@ -332,7 +339,7 @@ static int lvts_get_temp(struct thermal_zone_device *tz, int *temp)
>   	if (rc)
>   		return -EAGAIN;
>   
> -	*temp = lvts_raw_to_temp(value & 0xFFFF, lvts_data->temp_factor);
> +	*temp = ops->lvts_raw_to_temp(value & 0xFFFF, lvts_data->temp_factor);

Don't do this in each functions. It does not help for the readability.

May be something like:

int lvts_raw_to_temp(u32 raw_temp, const struct lvts_ctrl_data)
{
	return data->ops->lvts_temp_to_raw(raw_temp, data->temp_factor);
}

or

int lvts_raw_to_temp(u32 raw_temp, const struct lvts_ctrl_data)
{
	int temperature;

	if (data->ops->lvts_temp_to_raw)
		return data->ops->lvts_temp_to_raw(raw_temp, data->temp_factor);

	temperature = ((s64)(raw_temp & 0xFFFF) * temp_factor) >> 14;
         temperature += golden_temp_offset;

         return temperature;
}

... and get rid of all the lvts_platform_ops_v1

(btw _v1 is confusing, it suggests there multiple versions of the same SoC)

[ ... ]

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

