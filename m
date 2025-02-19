Return-Path: <devicetree+bounces-148380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF93A3BD60
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 12:48:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6A8BE3B5AFC
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 11:46:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A3091DF27E;
	Wed, 19 Feb 2025 11:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YKkTuZqD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C05E42862AB
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 11:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739965565; cv=none; b=WadhojqyEKkHGNc+TLAprMUuyhXfYNXh4YRzalYSs770MIN6Wg1Xw2ligk9zpUvCZQRT21VtsJEe6Iq9wufAFjj3laWsGnPip970sD/vOSI0X+eJk2BudAnH52sqYAwl+wWnbJTwl+JxyPz1oEmpvPo2Z+nY6H5ryThBd2Jy0Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739965565; c=relaxed/simple;
	bh=iVVfLZ/Xexilj6DGdqpQ7mA+qvUkkMr2moH3ow9D3GE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Zm4SfLeWTiDM4J0V7J0lMFwvQsvXuifes1tOIHJA6NlsMPC1W8BSALCH60g7Ikk4RsdEku6/BUxmtuhgjDYx3O1bjuoQQALxAXcG5kbuJicESnCk3FV4KMGRARO2YF/Bb5sq9oq5l6RORwBEom4bqGBo6XfZ08gW9CrC0phclCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YKkTuZqD; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4396a4d5e3bso49845905e9.3
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 03:46:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739965561; x=1740570361; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=grVqY1qROVcqXbe9nYwk1uHL1rEHylCVGnje1QZKs3g=;
        b=YKkTuZqDO+eHlwH7hL+meqItmH/zuWnx/Wtl6j02Aq/s8b5chOnCJ1snpEo7kY4iKX
         2rzAw1SJc6IrBuFo4vQd+S37abp74kvo2ca/nKtXPEmKcnDBwcPUV8prvpy8SzaWXxmr
         a+6yvJqXK3n7PBxQSf8UVK9liFsrgyQxXYN6EgkFiXjxncUHxx+jkYeci/PDADTh259c
         wqieq4/9/o/T9NnGWyuW0CXfpYdjWsiFHQSeqGsUolYVEuKciPVApEbcKpEFR+9R/u1D
         c30vqNvnEWYNaZsbmevkk+woO9ltFWmrm71wSEHdG9KdXGOgu9QxaQwLjCj26z8dSRS3
         mObw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739965561; x=1740570361;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=grVqY1qROVcqXbe9nYwk1uHL1rEHylCVGnje1QZKs3g=;
        b=ULuu8im9aorNj/9ryQxvd1r11+Sg9TFbC+7Gx+q0rSvjKTZy04NLVr5H0yTlc84chP
         QoUYmcYx5xNd1yEBQn2MWpb1A/SRVxJQiZmoV4U2nZmHIerDb3VqBy/vKA4bNeH9dm8i
         Hph89nHcRr2w2Mcos6lxyl0mj2qckz1J+HoA39nq1WAEReie6qL1NFFN5yWrSP6Wh0mn
         wEyGEbJT2wmDkb/Rlg1nkmYMl4eEFwj16SaXF7A1MHDSV0RWGeH6DEjR1IJiHALuq/un
         b2TTY55zbKjpS1nUK78fsadnHQDAw+wN2UbAAMa5ZA7H/cKVWXAqItkNqxuRBkgNkOOR
         1hJg==
X-Forwarded-Encrypted: i=1; AJvYcCV4RFlAHir5wqvkaPvMsu82++11SoT4/ms8kC09pli55h9uyT2cCiOhz/v4Gle5Chi8MqYOkNN2CBnQ@vger.kernel.org
X-Gm-Message-State: AOJu0YymBQncS9tiMR6dYQXRqxAnCWjKXG/7Zao0v0WnIiZ+AHAt81bL
	3ba2xqWAc8Id2yTF5KOHR3tT83c5VP928WMHxzt0/SHq5a7mnbfu7rc5sSxO2OE=
X-Gm-Gg: ASbGncvPnKZ/a6jQoQI6EEcK7GI5ErLxSVie0Ddv2mdXR8go0BII65UrxfW6H7dfh83
	0bA/zh35TrTuF1jDTAk3HCskCukODXtrzurzU4P3iMprCpW4hNBuLfY3D7UJgbME2w9mB7c8cca
	F5bHzbMaXnLc8DSod39Uhq60lyoERj6EdLTYOsvjkoFWBivaJQcslFRsSNUre8cikt9dFHPzdJP
	MthN2O7POuBONJRE+fv+9N7cQjOd+393tp5ZQZ2O9dPXLjm8nG7NhoMCXAvX0JmRQxGWIkrtlpk
	pHO20EqnjacxfYS/nAh0kIKmD/y1CGOeK9UmizCHUkooQhFd653dt5w=
X-Google-Smtp-Source: AGHT+IEPrAp7TfB1wuRgwHmXZYaORWGATsE4Btm3PHkL+64VjJn57We6CAzaMyjRJEOlvwankmW89w==
X-Received: by 2002:a05:600c:3110:b0:439:9985:6984 with SMTP id 5b1f17b1804b1-43999de0cc2mr33956895e9.30.1739965561108;
        Wed, 19 Feb 2025 03:46:01 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43989087517sm77002015e9.8.2025.02.19.03.46.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2025 03:46:00 -0800 (PST)
Message-ID: <47c11da5-6235-4e13-ab91-580cfef508c2@linaro.org>
Date: Wed, 19 Feb 2025 12:46:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] dt-bindings: timer: exynos4210-mct: add
 samsung,exynos2200-mct-peris compatible
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250215123922.163630-1-ivo.ivanov.ivanov1@gmail.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20250215123922.163630-1-ivo.ivanov.ivanov1@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 15/02/2025 13:39, Ivaylo Ivanov wrote:
> Whilst having a new multicore timer that differs from the old designs in
> functionality and registers (marked as MCTv2 in vendor kernels),
> Exynos2200 also keeps an additional multicore timer connected over PERIS
> that reuses the same design as older exynos socs.
> 
> Add a compatible for the legacy multicore timer of Exynos2200. Rather
> than differentiating it based on the block version, mark it as the
> one connected over PERIS.
> 
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> ---

Applied, thanks


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

