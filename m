Return-Path: <devicetree+bounces-47320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BADB086CCA1
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 16:15:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 37DF31F23E9F
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 15:15:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C638145B20;
	Thu, 29 Feb 2024 15:14:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YD6oVK1e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62DE11419BE
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 15:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709219679; cv=none; b=noIv1isgaK6K9gfJKP1RiQW48sVoDWMNUjjNHfy24IYXkSjGmxeumoGLUXpqSFSkpooj7v4ExSD3QdNH+apkS3pX/WQLampbl+pmdOWoYaAWoLpH1/S5yFFYM06ZKg+pzD4o/NfIlkJqnVBL9tmwtYeGoSo6uByOBJ/8E2OQPUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709219679; c=relaxed/simple;
	bh=U3qnUc8IBsWLSEXwIfnE6BHqdnjdGBMwUdUaI3x6YoI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t/dbTGkn/Tb5WEgGMN8tRgAaMz7dU2Dua/4+G0mHIdYwIj20YPVPJ7qbkFeRoFfKPzoylxxCgwErr9fbEc2fDvAiNsLN0Nuz/j0z+5aJ84E6rawFNZxZoYsE//vQbBcdNC/g4Iw5vxLW2jsYZaLccW41FAD10Z1ks7/QGl29sKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YD6oVK1e; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a3f829cde6dso171554666b.0
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 07:14:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709219676; x=1709824476; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MVE9DU7rmEk/CNvhWzICuNaXsKr8VC3TR8YsW/9MZqE=;
        b=YD6oVK1e+aLwNTWq6Iv3C2Oh7CXl75nL4dK4k5Y3FKaKl6C/19LziYShXo/N9PSe86
         qrXxvYXc1HEaB6bSO2KHVBepPq9gS8Wxfe5ltRmnk68NwDEbATDDr7N/oOfCNL+QjMMe
         tBt8lmm3VMXQsJqUnCQ3gyh2jZTpGGIhx/7FAP7EhwHnCgbjV/nSBvV8WEULRfJwPOBz
         wOvTUXvC0RSaiPSGeYTX+/Aqx8NLHuCZTnoDxCTEFqv5xo9jyd2lFs/fDPcwyaApBCFZ
         1Qz2NRcJZflkezA5Ej/65FUpTLvmzgSLaQUu+6gvNNJFcF0QGmVG4M9zgjBqPUujytuf
         Oxfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709219676; x=1709824476;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MVE9DU7rmEk/CNvhWzICuNaXsKr8VC3TR8YsW/9MZqE=;
        b=m6YhxOvn9Ps9nZDC925ziWf5o0d11Z+aegWHiXlgnEvcxM8TIKLabUHmQv6sZGujkU
         cOysYmuPZiR7K/Inmv0ZY9vF7z0kPp8udbvIOBH1LrMldvBP3Evwr6TCo/DaiPHINy5P
         V+NVq66gAQFax9GL8bp6ivxNaFdyYjn1s4ZIzK8NmJLO9JcHFbqCtlbACVgy1Hpu4lqI
         0Wi0jpBmb0hLCRU6U47TAYH+4Zc/aeTf62aZkJRfZxInI36lZjOxhGEYhry0tnLECIFH
         OuF9/DF1w4VmhUK5QiAyoiADFU6ut8AxbGlG1xoCQwidqqNjrR5t7Ilan0ExUWXw/b7a
         6rkw==
X-Forwarded-Encrypted: i=1; AJvYcCUhRSSyJ4l7BpPjQpJN2WDzl682tumA7gMKsjPwzvQiyXuN1A6Kmy2AuadAOvFU+UEnFqG02onndfqAamD1kHzej/hzXQnlmEuCDA==
X-Gm-Message-State: AOJu0Yy/MiZwRjX8QI/7mpS+kiyjgamObXg5CGjMoSjcmXvAfLNIsAFa
	INVwfGkG95gmVCVnYR+pTn1uuFfaNyIIexdDVAqH8WdT54zbFRYBc6EHzUt34po=
X-Google-Smtp-Source: AGHT+IG3HiK9vi/FSQstkQBVfznBqi5USv0Sf0kvqj2li9fRkVoBKlFoTkDiuzCHGx2Cx5F7Yu7ujg==
X-Received: by 2002:a17:906:f28d:b0:a42:e2ef:2414 with SMTP id gu13-20020a170906f28d00b00a42e2ef2414mr1637962ejb.35.1709219675874;
        Thu, 29 Feb 2024 07:14:35 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id wb4-20020a170907d50400b00a3ee5c19ee5sm769010ejc.109.2024.02.29.07.14.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Feb 2024 07:14:35 -0800 (PST)
Message-ID: <1287b244-51e8-4103-b098-255f0cc30d10@linaro.org>
Date: Thu, 29 Feb 2024 16:14:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 06/11] dt-bindings: usb: ci-hdrc-usb2-imx: add
 compatible and clock-names restriction for imx93
Content-Language: en-US
To: Xu Yang <xu.yang_2@nxp.com>, gregkh@linuxfoundation.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
 conor+dt@kernel.org
Cc: s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, peter.chen@kernel.org, jun.li@nxp.com,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240228113004.918205-1-xu.yang_2@nxp.com>
 <20240228113004.918205-6-xu.yang_2@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240228113004.918205-6-xu.yang_2@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/02/2024 12:29, Xu Yang wrote:
> +        # imx93 Soc needs two clocks
> +        if:
> +          properties:
> +            compatible:
> +              contains:
> +                enum:
> +                  - fsl,imx93-usb
> +        then:
> +          properties:
> +            clocks:
> +              minItems: 2
> +              maxItems: 2
> +            clock-names:
> +              items:
> +                - const: usb_ctrl_root
> +                - const: usb_wakeup
> +        else:
> +          # other imx Socs only need one clock
> +          properties:
> +            clocks:
> +              minItems: 1

Drop minItems:1 if it equals to max. Everywhere.

Best regards,
Krzysztof


