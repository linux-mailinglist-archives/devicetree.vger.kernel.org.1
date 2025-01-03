Return-Path: <devicetree+bounces-135290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F39A00635
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 09:46:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 086A016552C
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 08:46:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C43901CD213;
	Fri,  3 Jan 2025 08:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B4RD6cMg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A913E1CD205
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 08:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735894000; cv=none; b=cNbJYKJX6M727132hg6aL4OmDKlIENL2Hx1GPw2sM9GsnD0aAsyrzXKENKQ+uWQwqDF/OA6ReUjRSYakMbSNkc41q50q/VyFfE0AxZJWfQ9Yy8do/KcY8SgKzfsRcqYCpdCyei4l2IwRXspTTTvJ3Ujr7obVOF7iJg+2B5InHok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735894000; c=relaxed/simple;
	bh=O+EAGVQHC9pWEgyYom/lJW4JcUi14Rb7WDSu5s1H+wA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h3eExlDBxcZGpwSRhAns4ZOT7FZO8J/cV0gG2ukwdHkyhd+xXiWTRwRXsn9Kvp9tfY4zLQ7bMB9fPpYO+x28FygZTyNll4aUTSMgkB+cte+WKzqtl+C71hE5Ttk+FO1afM1dwaUcR5EdkV7UJ6JEpJRFXiKbtJaKpE16xex/Ow8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B4RD6cMg; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5d3f57582a2so22947278a12.1
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 00:46:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735893997; x=1736498797; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4KLCC6CLZQeihBKxyImt/0LORJzTXRC0Daw+prTUMzI=;
        b=B4RD6cMgsd2xMhA4EtaZuu2FuyHcpdvqneMO5zt8nUNWqXOjwDlnCWsLNGfP+WwKGP
         1GH+iFS++4zjRl9Tj+WdDGXnsMQp00UsKI9oNHMnk7ntsjGkgZ3cmA3jkJH2Csj9F7GL
         9P7I5NoPUTXHPzNmqVzU4HvY1X6f5fKmg7tW98XPZXe6RLgtiSpWGxPu4I9hEYFzhRGK
         3ts36+H2TVzLZLOnYKIIxc/5eDgPwiiJA2YTvPutet+BhaIJOxcQg9OntFuPQVXYDR8C
         1hJDgbxVBwN+ce8PqcC21vIh9w4ewsvWmN1rm5L5vLHGwZ0IyKeKdNlhol/7T5u4UaQK
         zpvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735893997; x=1736498797;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4KLCC6CLZQeihBKxyImt/0LORJzTXRC0Daw+prTUMzI=;
        b=JMFPmWSkToDMNmEDRSEg+nGyXI/7mFyaBGcok6OyPJSolOHRzAsbkWr/pPzykyp+FF
         gR7AhKycGOpcvfheTLBdG9C9BOucGqCq0Ogc0sx0+uQkoloL3aEyGZDkAjmkT3+QDPK2
         K92HekqCqFnztdkAQLYvXioqNsB1E+QQntAGGm/bxEfYVrpC3h1vb+mEnnPfGmBoJ4Ye
         swkiOiX56a5kL2Mssufuo6/Uynu33M2TSh7mvhzpjBJ4Msmm2T5aUOpcsexKMBK0P9Z1
         OoQa5MBJcJSvMSaQOKf8CYhnXIgguTadHQWKDYInCuXbHasS2qc1FMX55Jj/9h6Mmc7T
         qeOQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZ/fl/xlxNg+dEx4WoWdb4/4UJcQhLN18OLN+6HuFvx2zIAHDLvkUd/2EmPZjdVJXLnk7qGJBDTcVa@vger.kernel.org
X-Gm-Message-State: AOJu0Ywawtd/M+hQv+ccoykf+4WHa3dHpzh5B3rRF1vPwPPTVkJw8rhi
	ngW9coJU3IdlVB3GKiss2OtC7r9w31IMVkysDv5u4c32TDP7FfgISlXZjk4c3fs=
X-Gm-Gg: ASbGncvpTx1hCxGqsfxt3S/1aGGxmBSI3zHFwUQ/5dKDqb+gt9qVIf73ZGw3/8K0j+W
	Dl4jjAroRu6jsN9eNE+e/V8xZm5sCTmhr3eIKmMYCXFeMTc9mXZ2U/Co05EmP2XbhtNill8qbne
	sX4V/a+wIzmMn0YdDwblGN9goEsX+QX4OBbkirj3OqBnM97MU2nOKSKqQirWZR6Peublc28y04M
	iSCOZIFc6Vb0H/7fcejUk9a3MtI++XjnZX5CH2A2h3mW5HAAhA3mAO6TtKw2E1G
X-Google-Smtp-Source: AGHT+IEcs3R944zYh9ReswLIXPTV3wRvlLj0KFBEAD5OyqwmCdtx2diikm4O85f1161OsuoDmNRPMw==
X-Received: by 2002:a05:6402:3510:b0:5d0:96a:aa90 with SMTP id 4fb4d7f45d1cf-5d81e8f3832mr38382049a12.17.1735893996986;
        Fri, 03 Jan 2025 00:46:36 -0800 (PST)
Received: from [192.168.0.14] ([188.26.61.92])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80701c8c2sm18984792a12.84.2025.01.03.00.46.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jan 2025 00:46:36 -0800 (PST)
Message-ID: <df9c9c22-b3f2-4665-800d-d6d085d580ef@linaro.org>
Date: Fri, 3 Jan 2025 08:46:34 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: samsung: exynos-usi: Restrict possible
 samsung,mode values
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Sam Protsenko <semen.protsenko@linaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
References: <20250103082549.19419-1-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20250103082549.19419-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 1/3/25 8:25 AM, Krzysztof Kozlowski wrote:
> "samsung,mode" property defines the desired mode of the serial engine
> (e.g. I2C or SPI) and only few values are allowed/used by Linux driver.
> 
> Cc: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

> ---
>  Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
> index f80fcbc3128b..5b046932fbc3 100644
> --- a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
> +++ b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
> @@ -64,6 +64,7 @@ properties:
>  
>    samsung,mode:
>      $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1, 2, 3]
>      description:
>        Selects USI function (which serial protocol to use). Refer to
>        <include/dt-bindings/soc/samsung,exynos-usi.h> for valid USI mode values.

