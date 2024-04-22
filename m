Return-Path: <devicetree+bounces-61597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE948AD631
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 22:56:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3E81D1C208E9
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 20:56:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10DB91BC58;
	Mon, 22 Apr 2024 20:56:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BCli0xSw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2487D1BDC3
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 20:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713819400; cv=none; b=eLWuN7+1uYxlNFF2WC5AxFN69sD75D39FYxODvvYRlrlvROlvYH7+Gud5pS7bF6EsLD6jXO5+Nz8ul4frC9SI90IrVTwEXLCThaoHWaXuQU4RK+h2ZM+dHYRHoJeKC/qCA1Srcy+dhg29mygYOxojbK+RHMcih3DvomaM7qb7X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713819400; c=relaxed/simple;
	bh=DDhOnyuClil06214cAKYNK53ZV0u4glj2H13OgS0uRA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V1d07k0AdsZNxPuCOTzSicyF43Oiz5+KjqQcCQBmza0hbQriTto967kyu343lZIznZyATFEhINR1gPWRN/ZWQl5mqqCAuf/cnUjmUGuaebalcY9UbcpmK4W9Yr3Gn1WHyxAdRu0ZP9BJjGZBBD1ZP2l+EiCN0YSls6HsdgPIY2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BCli0xSw; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-41aa2f6ff00so4189505e9.3
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 13:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713819396; x=1714424196; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=8syfjY94AuQFB0ywEx9DtqxOrNOKBkSjKFppuwXTw5I=;
        b=BCli0xSwneHOoXotfmhAstj9hKdZsLAif755pHCYvd+k8icmQhcwPbHc5xTHIcCxkv
         FWYfVQ4NGZBsoviT9uaFzBgshx2uI+jlSTUQXfJmbkkN2qKSAW8cGAhzQL8RfnlDTvv6
         zj9ZpjdXCMhlQhEBtFsRLjXg7bQdv7jCUUgXNg4LuGJoxLzsm9L+I+L8isThL82fwQ2s
         eYbj7asiTxh3nXIKhQmzfKzDJLVKuepO0kcChpgVmi97JWnOO9/9EXyXjmMSUy9lztED
         h3WcZQwUlvPPe8SuZHpmHUpa4EcXtsgydj/3ug/Jhju7bFkIbS+L0pLIw/9ckID4kSf6
         QYbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713819396; x=1714424196;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8syfjY94AuQFB0ywEx9DtqxOrNOKBkSjKFppuwXTw5I=;
        b=Mm7lrqctwYXGcnKBESS8xDhy0O9OxFtXYTafOS3EUMUbmt3XIeKcf2d4f2c1OGncce
         ebL96yOrcvHFfZYGJk/sg6+hfy05hMRu/Oum60EsFdTh3tVcqXOZgvZwq2dhBSBTG4xU
         WxaIGdG0zjl2heKU9vaPpGpbcMBuJBA9Woa6qfDMHSjYg/9L+rPHiHOlDgtZUZ/YUMFj
         RjJQk2lEs2MZImJEU/cUqSDLXcPPEbt/GhdAzbZfVhuFP+9BVGQxCwZAJS64q0LqWBqO
         8mjYPSa+GQ4fK6nPK2VmNMz1D6FGpIjxh/Mzbcognp2UvKA2tpTJTXXygC0p/oZuXSx1
         GAaw==
X-Forwarded-Encrypted: i=1; AJvYcCXNit8v3HHqIL15FTnGDoGcZ5Tzzoxx2uozTDP875eF3XfcEmF4mapcQGmEq1hUzmdekpu9PSLG6glmfc4lZWuHYC1iS20oLdsxrg==
X-Gm-Message-State: AOJu0YxdloczosViBuvTXrs6dAIbytupAKB7SMQPOy+dIDlBRJDR0PSI
	dG9wpgI2b7UKBZFG1cL25QnQY/XeyQRRKmUOnVxbaqB+yRsXlARS3R2iGcK/aDE=
X-Google-Smtp-Source: AGHT+IHueovgOf9vNRdEw7Tq+614Umr42o/v1tdFfbZvhL4gy0JNz9ye0t7q+fbJ4l6vhEJ8KtivnA==
X-Received: by 2002:a05:600c:1f1b:b0:41a:5ea1:1aed with SMTP id bd27-20020a05600c1f1b00b0041a5ea11aedmr3561817wmb.9.1713819396311;
        Mon, 22 Apr 2024 13:56:36 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id g18-20020a05600c4ed200b00418729383a4sm17687007wmq.46.2024.04.22.13.56.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Apr 2024 13:56:35 -0700 (PDT)
Message-ID: <29352160-4943-4271-97f5-34afd6f35df9@linaro.org>
Date: Mon, 22 Apr 2024 22:56:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: panel-simple-dsi: Add generic panel-dsi
To: Johan Adolfsson <Johan.Adolfsson@axis.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel <kernel@axis.com>
References: <20240418-foo-fix-v1-0-461bcc8f5976@axis.com>
 <20240418-foo-fix-v1-2-461bcc8f5976@axis.com>
 <c739a512-9a75-4f48-b5ef-801191c298f5@linaro.org>
 <PAWPR02MB928111F5EEB4A46B56A89B239B122@PAWPR02MB9281.eurprd02.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <PAWPR02MB928111F5EEB4A46B56A89B239B122@PAWPR02MB9281.eurprd02.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22/04/2024 16:34, Johan Adolfsson wrote:
> 
> 
> -----Original Message-----
> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> 
> Sent: den 19 april 2024 01:05
> To: Johan Adolfsson <Johan.Adolfsson@axis.com>; Neil Armstrong <neil.armstrong@linaro.org>; Jessica Zhang <quic_jesszhan@quicinc.com>; Sam Ravnborg <sam@ravnborg.org>; Maarten Lankhorst <maarten.lankhorst@linux.intel.com>; Maxime Ripard <mripard@kernel.org>; Thomas Zimmermann <tzimmermann@suse.de>; David Airlie <airlied@gmail.com>; Daniel Vetter <daniel@ffwll.ch>; Rob Herring <robh+dt@kernel.org>; Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>; Conor Dooley <conor+dt@kernel.org>; Thierry Reding <thierry.reding@gmail.com>
> Cc: dri-devel@lists.freedesktop.org; linux-kernel@vger.kernel.org; devicetree@vger.kernel.org; kernel <kernel@axis.com>
> Subject: Re: [PATCH 2/2] dt-bindings: panel-simple-dsi: Add generic panel-dsi
> 
>> On 18/04/2024 16:01, Johan Adolfsson wrote:
>>> panel-dsi is similar to panel-dpi with overridable timings
>>
>> ???
> 
> I guess a more correct description would be 
> "panel-dsi is a fallback in a similar way that panel-dpi is in panel-dpi.yaml .."?

I meant how does it explain the hardware.

> 
> ...
>>> a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yam
>>> l
>>> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi
>>> +++ .yaml
>>> @@ -56,6 +56,8 @@ properties:
>>>        - samsung,sofef00
>>>          # Shangai Top Display Optoelectronics 7" TL070WSH30 1024x600 TFT LCD panel
>>>        - tdo,tl070wsh30
>>> +        # Generic dsi panel with timing overridable
>>> +      - panel-dsi
>>
>> ? Devices are not generic. This is very confusing and commit msg does not help me. Compatibles *must* be specific, see writing-bindings.
> 
> I guess I see this a generic fallback, that handles any dsi panel as long as the correct timing etc is specified in devictree, similar to what panel-dpi is in panel-dpi.yaml
> Maybe phrasing it similar to panel-dpi.yaml is better?

But panel-dpi is quite different. You always have two compatibles. I
don't see two compatibles here.

Best regards,
Krzysztof


