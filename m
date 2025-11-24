Return-Path: <devicetree+bounces-241754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F28C81FD7
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 18:56:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A6A91345FC5
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 17:56:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E5F22C21FC;
	Mon, 24 Nov 2025 17:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UIl/Lh93"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4285E2C1786
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 17:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764006995; cv=none; b=AcvI6W+8DS0jeFJ3jLcI4pw5XCHcdblqdj5yb4/msbbjK5uJQbB7bYcN9/3MQXF1Zfxgm7Lqf7oEtLftHGpmirlfaB9wxY+VmolG+0wKDP3JJU4ehF//xK78jXLw0NXa/OUlOvDKdyO1G11okSx8rRdwJRDZ52wK1gyAB17oBVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764006995; c=relaxed/simple;
	bh=dPLZPXzQgDRDqQnurUjDg3r6SH40YxJqrAijPmz7Kww=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j8AKw0N2MPRuADgxHwGHlUh3wy6SxGDT8W9492Kcf2yzn9rc2mAA97GSoqSitKrWDUfb9bnuFB83YKh+Q6DzkaHuvSoRB+7ewRmbuiIXXy+MVMdBBgxC4WFGEkXId2L2Tnfo9YXrT9xXe+FXEEaCWKpyPr0EEKnEII2TQTgByOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UIl/Lh93; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47755de027eso24501585e9.0
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 09:56:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764006991; x=1764611791; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dgj16XmQKLfzuMiMJnYwYhnRMSc7HIdJxo40jdxC8fc=;
        b=UIl/Lh934qmWi/fRDKj+vjLLHtpKfarbEWH9a1s9fVxnia8z3TC77ajVrESH/bCyEl
         lSy2W/PzTCwg/SY1DmESxMIAVfqT1a13iwx9ldJLR6KPaxPK5aQKsHUq8UUgArcpYFu5
         gRHW6dX8+8cdkbOhy74a8AsIRufMWc0ES6Px8ryb7FcgB0pD8PVJO8w+v/k/Rjc3av6d
         dCDzW05OQxvYUhTTyvlBwLIMQNGQ9IWqQkyhOZ0UxQyp2cT73cFrzfUrXvv/Fhinv7xj
         nadw1rWzqFHdQOr988iZbGVsrsi5UqJssIJLNEt5+D6GptY8LAQ198BI3w18KJFyiZ/R
         xc7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764006991; x=1764611791;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dgj16XmQKLfzuMiMJnYwYhnRMSc7HIdJxo40jdxC8fc=;
        b=OrG7o75PwmlHzd+Di3Y5raQSneH9Q9oQE4QTrEiQUS8ctGGSL39e5MoztcVAs2xQbz
         QtlpqqRxrjrkSbYhewx7C2nydQd+Z7ETetnQwUKAJVZF5mf8LAk4JPM4nLqZQ/YUJ4AF
         FZX8DFjDehUH9uJqqQjxCoiXZnxuctrdZk2XMwkPHmGgreUuiLSWrs0XKS7soTOoN4TP
         NLhuf+GqqbclL0tk6U/AJgxoKwGYa593zhEqfD2f+l+/hMHmD3cwRYmbZXy33UOlYKVa
         k8eWbU4MQfK2M7Cc0Y1MId51YO0hTSfSSpqrouJ8On4ThhErPa6pN8mr+9aS062FtVfw
         SfPw==
X-Forwarded-Encrypted: i=1; AJvYcCXFTTAlO2w1HokKD5u6WfGjkE/8TTwATkMUaXHZ+QHt6g6eFUYYvDmZfOpmru54iNOl0tJMzhlqL2N4@vger.kernel.org
X-Gm-Message-State: AOJu0YxARO7vSRRIBtcagwFJZo3/WuYOGQrs91pZH5gUXsBxWQ6uQfoY
	/Bn06r/UM+u6p14wwzuRN92ziNZ2IAjGy2Cqs1/tJCUe46BQvTfRUmFhMXLOLK9c8Ps=
X-Gm-Gg: ASbGncuMa9r7CtMzLVPabBrPBQSGgR6T1c7J3BbJ3M+UAlh3Sc0rhAa4DbpWu2ndGmi
	juYzCjUj2JKsMFOrrLVowUSacKAyIYWz2PNljFo++1W85NOoiiCotMR4VL38tVEUjP8Y5dKrgA3
	rKBRZ5cq/SQcFFsze6aWehmgJTqbRnWsXtvvHK0YHuFHTM+zw8z/Jhe//Jh470bE4Ex3XnIi79q
	KSITDtLUxZnbpcdBBUsvYJM0iO2fIZJbka9MV1icqRvgjwTEufDle1xBWUzxE6lteUT45Q758zd
	ICXKkg1YjsW3O26Ct7IaE7KtO5MQz8JfUjIJN/9LQiwmdiyljJYuYPfg3erNH34C8QDH+ELPXVE
	0GTHtiH59PCJiawj6Fa7Od7gbZbAyJZKqIDp0XBX2G43Y6yQo2Q20hJX3x42riP2OMqREw0OagF
	S5rEwqBlxV5qljiAEOFM8dwqBcmCVvFsK/g1x7VG9YGOWj5CjPPA71Lv2pyZZzDUReu+2QGULBo
	1hK
X-Google-Smtp-Source: AGHT+IF9jQYjGDYWRD+2xNGzxOUo7frTRxo+/YiP6cBgQWSgQQXQD/fGaLUkrkLZhoAvTfv/zaiUjQ==
X-Received: by 2002:a05:600c:1f94:b0:477:28c1:26ce with SMTP id 5b1f17b1804b1-477c016bbd5mr123402035e9.7.1764006991417;
        Mon, 24 Nov 2025 09:56:31 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:a756:bb6c:7b35:af9b? ([2a05:6e02:1041:c10:a756:bb6c:7b35:af9b])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-477bf198a67sm217894095e9.0.2025.11.24.09.56.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 09:56:30 -0800 (PST)
Message-ID: <190003b6-2931-406a-a8f6-ec8909c65162@linaro.org>
Date: Mon, 24 Nov 2025 18:56:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/9] thermal/drivers/mediatek/lvts: Fail probe if
 temp_factor is zero
To: Laura Nao <laura.nao@collabora.com>, srini@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, rafael@kernel.org,
 rui.zhang@intel.com, lukasz.luba@arm.com, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com
Cc: nfraprado@collabora.com, arnd@arndb.de, colin.i.king@gmail.com,
 u.kleine-koenig@baylibre.com, andrew-ct.chen@mediatek.com,
 lala.lin@mediatek.com, bchihi@baylibre.com, frank-w@public-files.de,
 wenst@chromium.org, fshao@chromium.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 kernel@collabora.com
References: <20251121-mt8196-lvts-v4-v4-0-357f955a3176@collabora.com>
 <20251121-mt8196-lvts-v4-v4-3-357f955a3176@collabora.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20251121-mt8196-lvts-v4-v4-3-357f955a3176@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11/21/25 12:16, Laura Nao wrote:
> temp_factor is used in lvts_temp_to_raw() and lvts_raw_to_temp(). If
> platform data is incorrect and temp_factor is zero, it could cause a
> division by zero. Fail the probe early to prevent a kernel crash.
> 
> Signed-off-by: Laura Nao <laura.nao@collabora.com>
> ---
>   drivers/thermal/mediatek/lvts_thermal.c | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/thermal/mediatek/lvts_thermal.c b/drivers/thermal/mediatek/lvts_thermal.c
> index 1c54d0b75b1a..b49441d82ffd 100644
> --- a/drivers/thermal/mediatek/lvts_thermal.c
> +++ b/drivers/thermal/mediatek/lvts_thermal.c
> @@ -1346,6 +1346,11 @@ static int lvts_probe(struct platform_device *pdev)
>   	if (irq < 0)
>   		return irq;
>   
> +	if (!lvts_data->temp_factor)
> +		return dev_err_probe(
> +			dev, -EINVAL,
> +			"temp_factor should never be zero; check platform data.\n");
> +

 From my POV, this is not really useful. The temp_factor is set for each 
version statically in the code. The scope is limited to the driver, IOW 
it is not a parameter other subsystems passes to the driver.

If it is NULL, then shame on the submitter who did not test the driver 
before sending ;)



-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

