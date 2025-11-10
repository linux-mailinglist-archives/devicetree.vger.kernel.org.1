Return-Path: <devicetree+bounces-236733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FF7C46C6D
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 14:08:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2204918893E0
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 13:08:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B12B930F55F;
	Mon, 10 Nov 2025 13:07:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vf/otQfw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C035F2FB970
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 13:07:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762780051; cv=none; b=jtr+YXP2g6rqGn5F3hMYUfwKPoMULXBWEYLqkVzZUIufxazg4jI/iMYMLROJkHbQ71vvVuXDC+3S/HJkU+thLXlNm7M6kQPjpNkGQkqjCycxI4Qybg9lzflgBmQjVGVxWINtOOBeA1N9yt0i2v4DcEOIr4LgmDYxRaPD3kOR7EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762780051; c=relaxed/simple;
	bh=xLE0g0V6VtstEXCgX58na2I3K9PHtFDdOQGN69zLTms=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PwMtfnrOd7YnFP437sWDo9DFmkFOCj2u+S3iTAv6xgqkeABYNOSxiq4NTirE3MmIbv0qiM1yLPRFvrxNN772irU3tZpEEw0HLbbansG5iH5cWTsvgJpT7uNNKq9PefKKBoWuSyDDwij/0Fw1ckVG2dOJTIowIXPHOZZZJvbgROk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vf/otQfw; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4775895d69cso15429065e9.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 05:07:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762780048; x=1763384848; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B4cJaSvdyQCbEMb76mhwbw00KVaPl98c0awaqdZ3M8o=;
        b=vf/otQfwqJttX7Cmx+sZy3Ed8WICcoJ58/hUXTGsHageFxn4m3AQAESc2NMFRZBGSJ
         Xasiu0RwIeVSI1pJ2bnUpy4PtKtU+/r74rWsLn1myMLYuzUd/emun1AHYDYPNq44V1ti
         2t4v7MjAZQAIyHg0mNe8tGhTRCUS/brU1c6R9eJWKmE7Qg3oAbwfcUqCLCv/iMV2Hwr1
         VMcPJhe6ECBZdbzqhfMcuyDjLeZCUkl6/dEAo3ysNHSTcEHj9qiML7bJjW1ukYDTGZuR
         tWWBOBvYtpSnIrNg5PoUcLi1gUFxJe6/C96L5Q0PKweRcR//W8iJFl1z+HsQJgsLC5ud
         okvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762780048; x=1763384848;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B4cJaSvdyQCbEMb76mhwbw00KVaPl98c0awaqdZ3M8o=;
        b=C9GfxGaALJisNWMIY143q444/dEkFVioehOD1Hd2+DkBZ9cafVRfPrzWbiz4gVsXMg
         NsvYOK5xKisIG3RMtLJUUrhfKV4JtdbyYkGXDZnoAad8UIp3qYlKeYe+Slyz9P8q03Xj
         qoPqUsZn2jlNPQMFttpeDObJcxJ5JkExhH0kgrhfeuKRw/BxoUFM0hxxP2R3kux51erj
         VFrnY+taNMXqs+mLvl3D2KOcox4+OrxXjbFxLo4aIgjUiPRVka6pWhIjJOfy3hc3x/tm
         R2JlTyom6oQw3hH/rjcrV7rW8SyzXSUozzF41mPCMVXbSz/thxwgawLagkxJkPnb00Y3
         /TsA==
X-Forwarded-Encrypted: i=1; AJvYcCV7JoXEkTB0TJ/iriTayvQl23aQqrBKVaml0dpFvb4pkXN8GBVl1pIL04Iwa8+Rbs7NLevuQT2dKb7s@vger.kernel.org
X-Gm-Message-State: AOJu0YyteZ8SncleyH++hKmiPx/x1uUxq3iGOqhAcO2blOcVkloM+W+b
	YpNag4p7CY8Dxno+RMDZY+vz8Mt0dGbJNHcngnKQ1cV2XJGD49iIRr6OFpsd2fKKMMM=
X-Gm-Gg: ASbGncvJQKIfIb6sgQzUXUJBUvgLxiXISamUjHGOE6P8AFaMsdBNamSr8x5olTtdYOp
	13w96kX7vK2Kj4b05IOm1KzRS+AHQU3rX+vvMEtufnXW+Xu0aHU3GXLvZOI8MMeWZtEaI/MCjnA
	wPFyItpG5AVHEJdc3AUPsheO1ycIKJ9CRYKOf4k2F9GRMrrmiy2IwOr9MHbxXTROFMBIiBXgooK
	4OxTE+dvx7jPSwiEHIQhENRZkgVCBHpQBSj9oUL5N1Da4B0n0vei8vhIctcniB9Z5KhbAOB8ylB
	yn7ll4Vv15sgC91pptVPAKC8c9wg3ZHXx3Ga63Hqy2cGSQDy52IXZ49Bl9jTrhKZa2/rLowuCiJ
	jiLeiwav4yYnAkcvSrsISn2GAbUFNSL3diH6Kvnw+uv/EoUgF5e5DWubeyRVtPMOYrhY0W08syB
	VQEJsfBM1cvakCZZ/2GVDs8SBdXi4E9crzT9y6w2xisfEApPNNiBh3GBQ=
X-Google-Smtp-Source: AGHT+IHcCOONTIlqmfkXgQ46x6qRMAz8cIzqeP6tpBIy8/x9/ya7VMOfAxTxh9tydHHTLgqTp1lvxg==
X-Received: by 2002:a05:600c:3b8d:b0:477:641a:1402 with SMTP id 5b1f17b1804b1-477732308acmr85105745e9.4.1762780047939;
        Mon, 10 Nov 2025 05:07:27 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:2b20:d700:6e9c:533c? ([2a05:6e02:1041:c10:2b20:d700:6e9c:533c])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4776bd084d4sm252075645e9.14.2025.11.10.05.07.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 05:07:27 -0800 (PST)
Message-ID: <adceca49-acbc-4ae6-984c-5a8916aba8be@linaro.org>
Date: Mon, 10 Nov 2025 14:07:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v3 5/9] thermal/drivers/mediatek/lvts: Add
 lvts_temp_to_raw variant
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
 Chen-Yu Tsai <wenst@chromium.org>, Fei Shao <fshao@chromium.org>
References: <20251016142158.740242-1-laura.nao@collabora.com>
 <20251016142158.740242-6-laura.nao@collabora.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20251016142158.740242-6-laura.nao@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/16/25 16:21, Laura Nao wrote:
> MT8196/MT6991 require a different version of lvts_temp_to_raw(),
> specifically the multiplicative inverse of the existing implementation.
> Introduce a variant of the function with inverted calculation logic to
> match this requirement.
> 
> This ensures accurate raw value generation for temperature
> thresholds, avoiding spurious thermal interrupts or unintended hardware
> resets on MT8196/MT6991.
> 
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Reviewed-by: Fei Shao <fshao@chromium.org>
> Tested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Signed-off-by: Laura Nao <laura.nao@collabora.com>
> ---
>   drivers/thermal/mediatek/lvts_thermal.c | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/thermal/mediatek/lvts_thermal.c b/drivers/thermal/mediatek/lvts_thermal.c
> index df1c0f059ad0..31796a5b8858 100644
> --- a/drivers/thermal/mediatek/lvts_thermal.c
> +++ b/drivers/thermal/mediatek/lvts_thermal.c
> @@ -300,6 +300,18 @@ static u32 lvts_temp_to_raw(int temperature, int temp_factor)
>   	return div_s64(raw_temp, -temp_factor);
>   }
>   
> +static u32 lvts_temp_to_raw_v2(int temperature, int temp_factor)

Same comment as the previous patch ... _v2 ...




-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

