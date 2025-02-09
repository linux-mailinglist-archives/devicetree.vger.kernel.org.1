Return-Path: <devicetree+bounces-144356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF75A2DDD8
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 13:38:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B6AFF3A3635
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 12:38:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD5061D9595;
	Sun,  9 Feb 2025 12:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qOCAGBa7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0391BC09F
	for <devicetree@vger.kernel.org>; Sun,  9 Feb 2025 12:38:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739104707; cv=none; b=JSBbZ5XBvfL61v8mafQZ3xVqMY21U8ujkc1kNfcyF/iqi9J9qMvkIxv/8FjjnBeWdkDE8H/EiMbsGOrqPgnZWazanaF+TEf/uArOJV9BHMGota1PhQoimZdkTdB8OgSw102FpPmsn9+G5m8chD32DlItJXg6Jfv/u3oOEf5E9WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739104707; c=relaxed/simple;
	bh=rDrFqLujkTwbfIZgl9Hh59irUkIi1NUP3JCL2TTllSM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NdbxtfNpnP7f40mB2s7I/xEauTpapwdu4i/zMr9mJdYlhVJYXZZRpQ+i1m5oyOeIhit/cr+oV0mhzWNJfwuw2Bus5BQ0gzAEfTMVvmKvGkTodewpqAhTdTlFuZSdDIpH915Pn9oBAnJS9NE0XaLUz4QxkjpaOzoECxl4pvdMt1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qOCAGBa7; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-38dd91c313bso255204f8f.3
        for <devicetree@vger.kernel.org>; Sun, 09 Feb 2025 04:38:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739104703; x=1739709503; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wea7b3/6KxPyJ8w3sB9xSdUtZBJ/VStaOad+Adh4tTc=;
        b=qOCAGBa7oViXVmmdWvk+df3Af2oFevePdUm3TVHOQi/B6IQaPNDpvgOFneYAjJPHQD
         hP0rC6fRvQx3iiQB2To8qs4XxhCbu6Mr3eyrNb1yBjKqMWmFCnbuSZAxwfNXxvvdfA3Q
         b2D+FreaXo3gmMco9rTsuIf2d+1wo+wx+c9YXj6LCETHtTzEu94cBGz8TgF57HJLV2Ek
         jytI1FpF44kI4JpE+CsxZ6snF5AYnEsyEBSzXcJb9a/RVOv0eliV/Y2853G6YGAewZC9
         0edcREbmDiLozNOV2ubnWuI1QgBfMFrfx1mHhUnfHJUP/2qn6LJnnaXUPFTAMY12DkBi
         JbbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739104703; x=1739709503;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wea7b3/6KxPyJ8w3sB9xSdUtZBJ/VStaOad+Adh4tTc=;
        b=Xeczx5WdSi8oQcq+RNQesUItP+oT96kcUoZP/12sstzvh9gJuqU2C/AQNS6vmYmsFn
         d5z5/+uS9FK+pv/gVX7Fjmh5FKZhH3pHTRfOlPlu4ICsVzyk8zW3/4AmGA9OJWem/Crg
         mp+aHX5Rl2vyXnLynCGTIIBFbsxpmLvdepSz6lHKJ9ZcZJ86Nm34L95Y8tbyhciLE8GY
         ZrtLowHY1dEwZdqyf3CkJLrz9ai8Ql1wJbl3pakcFzXdpNnJQKom5f4QTmyrxVVQS1g/
         1rpfmjXLMBW/R1fbT3GAFzcUlXiEH+lxG0AOaQ89pYcgeBYLTcttFj2LKdXw+F3yiNfJ
         UnAA==
X-Forwarded-Encrypted: i=1; AJvYcCWkbRcqa0ZN0KqKVUuYDR6hGmYqzW8JlW4IIbOy+4WqpnpC8Ak/6LI+9dj/eSX2hxmj65dic4Oc9jGk@vger.kernel.org
X-Gm-Message-State: AOJu0YzItKOkRZKgs5epzLL8HJ1Z6EruDhoa8wTR4C/8Ik1rdji1441w
	pBBSAucWIPIy+ULw299rvv70aybYVYSf5X3siz2NUOot1cips8Y9iKBc3C0ZXXs=
X-Gm-Gg: ASbGnctdygfCN8vzMuKZS2PucvhGOgiW3vFdgq7K+fqkHAWVsjp8m53wl/r2ppTEFmY
	yL+49gvJIdQl0QkOFeXt0Jm6iMMBlCVuJRqgZGJiXvp96/fYRNRl5FEcw6QsTFC+3rR/0/zwFVn
	W6bw8B8aPTQ37+oXiEItGG0Lbl44qxOnFSLPuM7bJvx7OFaO3wwUUmsjLFITt9IIiLXl8ap05tt
	VkIagEqDuHv1CNN3lZUZn9wzosxI3w0tgdANIYbT2XlV4BdI6zN5M32dMdyip5qUcFd6+afpSmo
	USD+otbBPfR5EDdW6X3pHaoLG5PWf8x/sVkxQUc9SVBOvKI5rDj37BA=
X-Google-Smtp-Source: AGHT+IHAn5dBvK+eaCAM1hEAPTzgaHWbJSRPVCMLhYu3o81y2gOi4Jhi71LuCjv1/0szAK/gcgf8sA==
X-Received: by 2002:a05:6000:1865:b0:38c:5d42:1529 with SMTP id ffacd0b85a97d-38dc9491b8emr6932878f8f.36.1739104703361;
        Sun, 09 Feb 2025 04:38:23 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4390d933523sm151223495e9.1.2025.02.09.04.38.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Feb 2025 04:38:22 -0800 (PST)
Message-ID: <15a1cb62-9d02-400a-9760-d741440c1b81@linaro.org>
Date: Sun, 9 Feb 2025 13:38:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: timer: exynos4210-mct: Add
 samsung,exynos990-mct compatible
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Igor Belwon <igor.belwon@mentallysanemainliners.org>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
References: <20250104-cmu-nodes-v1-0-ae8af253bc25@mentallysanemainliners.org>
 <20250104-cmu-nodes-v1-1-ae8af253bc25@mentallysanemainliners.org>
 <076daca7-55e0-40d4-8ea5-93254ecd19b8@linaro.org>
 <9142e874-cefb-404b-8932-3e712b2d8bf0@kernel.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <9142e874-cefb-404b-8932-3e712b2d8bf0@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 09/02/2025 12:14, Krzysztof Kozlowski wrote:
> On 08/01/2025 17:40, Daniel Lezcano wrote:
>> On 04/01/2025 21:54, Igor Belwon wrote:
>>> Add a dedicated compatible for the MCT of the Exynos 990 SoC.
>>> The design for the timer is reused from previous SoCs.
>>>
>>> Signed-off-by: Igor Belwon <igor.belwon@mentallysanemainliners.org>
>>> ---
>>
>> Applied patch 1/2
>>
> 
> Hi Daniel,
> 
> Did this really happen? You replied month ago, but linux-next still does
> not have this patch and now we got new warnings on next:

Hi Krzysztof,

thanks for pointing this out. Actually I forgot to push the branch :/




-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

