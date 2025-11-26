Return-Path: <devicetree+bounces-242327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E52A8C89471
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 11:27:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B46053A563F
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 10:27:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2DA5301466;
	Wed, 26 Nov 2025 10:26:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="znVr6Z8I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FAE3016EC
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 10:26:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764152770; cv=none; b=dhDp8jot+QAZ8vLFsM6RSGusYfL7pMua+TE00DSKnJCuu/r6m/3ow0ZnbkVzNmIyL0MEj/UK+E9RGZXDftqww/rogIqNA1x8MCeVGV56uY1RMNqCksNpRpD+cthUDQftNBjffCuulWCG4kTEuZrvkncdFVZd/3z9SKz+UFDEs3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764152770; c=relaxed/simple;
	bh=8TeoVIiYjzF62s7vrUidETTbCqN+NWMj+WIHeNRMlM8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EneoTexu0+uSIZzlXT+ZQzvF+Ns3arelaymNx29PZieHU9HWLrfyCT/PpnOedbcW4y+n1i8AtPTmaHiCeEHJmhtz2RCagx7t5tI2KaY85ANmcIseh/Xg9e8bH+gmnKj2i5/6siCgqRvVZUoERTJeHVTkMG7dOMxQxsak6RdNPX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=znVr6Z8I; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4779cb0a33fso63681235e9.0
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 02:26:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764152765; x=1764757565; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NvxsFhXfVQ9j59jgaWngnRAynHeqG34fIlS4CA4ovkY=;
        b=znVr6Z8IHQ4gklxulnaiwKJVNcDA+AaU4MUJ8MAIDjSlnn7GLs0gAsEpyV4hH0OblS
         STRpVfMmIS+dqmh4DFhC05AxSF+YW3dMHGrHT4VQs4XRAxF0Qs3UKaNIXNK7OlOHU5Cu
         cplDwgJx/qF/WUTdOqlGLsfndhVY1ukxJQlwQnPc87/8Wb6nZUa2nZbtV1cL1IuPE3NW
         R9Bn+q8fQFpAs5w7hBsSYoe3Ar5aI8x711cxanCGCaJahJYfr71KrAWSUTW2bN0fyz/c
         nljxGeyWcvXhfRcuOBBZMG5EVa3gkXtFVG+w0mA21h8X7LVmKX4QrnSyZGbSVLyDtmuf
         A2zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764152765; x=1764757565;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NvxsFhXfVQ9j59jgaWngnRAynHeqG34fIlS4CA4ovkY=;
        b=HBtnv4pEyRSrlAipUP1kJGPP75KhklBXFcraKurG59T0mJ6jD9vJ/8RtjhHje4ubrU
         mPkJeOH/b8fzjyDi1MW77Rsh3IIwfimS9k4cKwNGjZ4iBttsV2m6f8X1OfRwB81HLcit
         TDOzxwr39V6HWSUtxgBkNK3b+61Xj5ajt5HVJ7E8Yx3IsuiiGG8TmI6Oh5PDXWI5AgR1
         UNMg616usURCqoHOI1mga46hwiqSpqu1YMi0tsOxqjeARfRt4KNw/xyaIUsDIDtRNg/o
         b3/iF3G9fywepUKRSC4wBYjq9C+8uqgv5AyuJvjHJ3NraAtF7JQ6nwK8OExMFfsjs7Qi
         ZQqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXvFXrD3Pdrrm4a/t1B7/dGsifXlyQFe3kUOQFkE8faN77aPmCRG0PR+G1Mt6jAvmTQkMq5K6uGd5BV@vger.kernel.org
X-Gm-Message-State: AOJu0YxGzH86RHRsxDnOcXTzUTB1/c3YJb4rZsK123i2hR9cyiMQilHW
	IfPoXOAWLUiInTT88TgeHBqnxNt81lYKgtmcZNg9GCnW4GcNJufZqAoQZZf/KBmBD7E=
X-Gm-Gg: ASbGncsUxmKrQ9VQGTvjEQb5ckuHtPlVE78t34/K1FFTX+KrVScvKxiRMXe2sjdVsZo
	fwPX7X/ZX4yww5SuEcEPZ4oIw7cUV9SzhOTgESgQqfMFFmImXzJlMlnwD8/K03AADEOKHOe53sX
	PR/EzYKVmoNjpWcqCApHncHGK4rq8dqdyOmnbQQaES64TFJWvmxX1ib+aKP72KWCzaOl4eYWCr0
	2SfpoHuqB7yjL286LMeyrrh4xaPwugSFok6is7Jmkib/DUZyu36b/2LCN33vdVYklKZQcReB410
	d9rwLtZiXEoFaoR/Bu7h3S89WisPpwe8orfMNvwtBs05cmoIQgj+qee8vYv+CScWS6Y5WMwWa07
	MucjXNjRPXKCh5pDbh9KTDRrIsbPjKmnbTpJmJUem71x71h0CIjv95R/jXJ+Ji+ea6Gc4LAmigp
	ERcsC4Pep6X5ZJR6+uy+TBSVWp42TL3XLUUCu33S8Th2fq1KnyW1b8tASPOUtwfsmUENG7j2S5+
	v5P
X-Google-Smtp-Source: AGHT+IH+8Ble4HAZIsNwoORdy1L1sOIPcFgL/QjCykwHkc2eO/RoB90to5ULd1S3p5yXNgSFZLaqew==
X-Received: by 2002:a05:600c:45ce:b0:477:79cf:89d4 with SMTP id 5b1f17b1804b1-477c01ff270mr225218445e9.31.1764152765229;
        Wed, 26 Nov 2025 02:26:05 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:1d25:f786:80b2:ed3e? ([2a05:6e02:1041:c10:1d25:f786:80b2:ed3e])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-47903e5fae6sm42780025e9.0.2025.11.26.02.26.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Nov 2025 02:26:04 -0800 (PST)
Message-ID: <38bd8a96-2d19-489a-b0ba-e230050f4827@linaro.org>
Date: Wed, 26 Nov 2025 11:26:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/2] Add Realtek System Timer
To: Hao-Wen Ting <haowen.ting@realtek.com>, tglx@linutronix.de
Cc: jinn.cheng@realtek.com, edwardwu@realtek.com, phelic@realtek.com,
 shawn.huang724@realtek.com, cy.huang@realtek.com, james.tai@realtek.com,
 stanley_chang@realtek.com, cylee12@realtek.com, phinex@realtek.com,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251126060110.198330-1-haowen.ting@realtek.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20251126060110.198330-1-haowen.ting@realtek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11/26/25 07:01, Hao-Wen Ting wrote:
> Changes v5:
> PATCH 1/2
> - Drop redundant description markers in binding documentation.
> - Add "Reviewed-by" tag
> 
> PATCH 2/2
> - Add "Acked-by" tag
> ---

Applied, thanks


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

