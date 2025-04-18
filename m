Return-Path: <devicetree+bounces-168527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7FEA935F0
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 12:23:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 48E0B7B40E3
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 10:21:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B20F270EDF;
	Fri, 18 Apr 2025 10:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zkmtQaSk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6615526FDA3
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 10:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744971778; cv=none; b=Q6bqIsSbRzoy/jla/+2cVwRtwVhsDaC3VqL1nwYpPrTjFDiyP1/tXgzKM3Z7hLQTrOZf692d8A6mGgKgRlXbNsIBawly++L3BELKD9+iRh6lx2rJXurJqdS4uT8mKmSVXzg3tPR0DW1Vjw9//FEURn5Der3w/QUbOu97RXNekbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744971778; c=relaxed/simple;
	bh=kdcZo7k40rdzUo4iOEDODFuxSFIAmXugWOJxYj68wOQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oDkgNZVbP14I1+wmKzdd6RFn4aYSRG5dDmvKht2O3n0tlI/2D8OSpbc6vqQnbd76LNHk/yeo4ewDFMDCvKeasbdFtKklM+9oiKUZAksN0oRyOrhKHbsI4x1yeiJBpm6FAjsjAWbAmVey7/fQhUWdx0LZGCWbQ/aFUV4MRRCToek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zkmtQaSk; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43cfa7e7f54so11480405e9.1
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 03:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744971774; x=1745576574; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/k0Y0aoMA2GBez0xVc7/5fQuBfWbJDDhwqoAabodniI=;
        b=zkmtQaSkONnWKoe3Lk3IQcZtBDYyiiVoOV0AACyTUGAL5BMnfEbe0ybHqE/XHBPVH9
         OWqPC+xC1oHeDEw4UzLkG1Ziulenj9Udyyp34ps0/cAJDZSXpHt20Mmco3R1Dz9la1Hy
         rr7XabZEvJ76dXvifA7Vx1nm1ePcYXRmRVjRG1uNve/K2cGWsL8xXSIg18uypEIWmKsJ
         QPtzfKv3PYdAwkPleWUnUfyU5cU+z+ezaWTQWfC3r0O84RF+xRRFdolK9DzQISRCWvXa
         FNIJ2bucZA0fSFP1m04CBwKOZGbin/pIRSsxAGTz9KXuVAvFV2GamJm8rz59P48F6wGj
         WhgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744971774; x=1745576574;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/k0Y0aoMA2GBez0xVc7/5fQuBfWbJDDhwqoAabodniI=;
        b=fEUZt1y/Hi7aGqjbBCIAwT5DkbEKuNDVvqf2RvG9HvByEd4Lgqsa6AklgDJ88AbfNU
         Aq7+rLaAw1BuOzT6hdQTd+GysKyirtf8wRlwF2ptGQgvSlyTF/O7tZBfn4A8TFHrjidX
         hPVjBzrt/p0JzXdI2O2eqHUUiIDUGNQ7zeUEO+FG1HvDdpFTB7FjnrcN2ferLz87pGF/
         nENpgmS/ROGP7bJpD8Q2SYt4GKNakHSBWgjs5R2V1+7vx+WlIVE5hiaXs3OYz6YZ1uZ+
         PbzpxlKIKjNGHwITMqLDiAJH9xfxtjl+dDtwg2pAFCj+UymR4G+GG4RI6i6L5hdcPLkT
         flsA==
X-Forwarded-Encrypted: i=1; AJvYcCWYsbYkeJ5ky81iQSW+TDK3UBZJeI1HG0wTOHlI0NFypJYkIRaEUdSRe7W9o9Sn5hPBdo5pKvcq0mbO@vger.kernel.org
X-Gm-Message-State: AOJu0YxjBwcl94VfC09BicPypZ8oNC15VyJACCpK5ZYNkxrGmji8aeAQ
	oYprtTmVNRJuLQJksvU+3M0lWkvcTD6w2BUSGHob7hJoXIOnHKuWJ7AegxcEouY=
X-Gm-Gg: ASbGncuY0r7FZGVYXJGUTBqkMc7bJ7nBW5ghUiJSjFFDbRvYXlV8P5S1WDBkwZqmfg6
	HNaeyUyxDow6+iMpzx/98fxZNyK9/U3zXs3ry81NYfIdtY2JrpI+8kwFwSshq3iERSf26n3vpoQ
	WpZUxNcgmqdTMH9n4VH8FghvqiGlOJA2ckTrtP39+6D/0kwsDeMh60nMHyP8R3KLD7wAlvGeCil
	S4+BDm17J8LtRpiSQX1azONfFd7sxJUTBn187svmaGZ+W3dE2bw+as3h6jItGg0ibnwOIIrOy7j
	sUTaaB6K9PblSh2+5dKVj1SChVaZ93NlW7//JMzbmm6vcBNYikSxERv0hQOEqjXNoziaNRHJ25N
	baUsAbQ==
X-Google-Smtp-Source: AGHT+IEV+ngZedvb1G9GddVsd006y6aowAa3golTbSy0UL6/dPU7ikOlFtQiwJbx/8C4Y2tbwGajLA==
X-Received: by 2002:a05:600c:43d4:b0:440:67d4:ec70 with SMTP id 5b1f17b1804b1-44069732095mr22695595e9.8.1744971773715;
        Fri, 18 Apr 2025 03:22:53 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39efa4a4c8fsm2264681f8f.89.2025.04.18.03.22.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Apr 2025 03:22:53 -0700 (PDT)
Message-ID: <a6689177-0f82-4b1e-b1c5-c50751d0f0bf@linaro.org>
Date: Fri, 18 Apr 2025 11:22:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: media: qcom,sm8550-iris: document
 QCS8300 IRIS accelerator
To: Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250418-qcs8300_iris-v2-0-1e01385b90e9@quicinc.com>
 <20250418-qcs8300_iris-v2-1-1e01385b90e9@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250418-qcs8300_iris-v2-1-1e01385b90e9@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 18/04/2025 07:28, Vikash Garodia wrote:
> Document the IRIS video decoder and encoder accelerator found in the

Document the IRIS video "encoder/decoder" or "transcoder"


> QCS8300 platform. QCS8300 is a downscaled version of SM8550, thereby

is a down-scaled version of the SM8550.

QCS8300 has a fewer capabilities compared to SM8550.

Note: It might be nice to give a brief overview of what the differences 
are since you mention them or instead of making it a diff of 8550 just 
to state what the QCS8300 can do.

> have different(lower) capabilities when compared to SM8550.
> 
> This patch depends on patch 20250225-topic-sm8x50-iris-v10-a219b8a8b477
> 
> Signed-off-by: Vikash Garodia <quic_vgarodia@quicinc.com>
> ---
>   Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml b/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
> index f567f84bd60d439b151bb1407855ba73582c3b83..3dee25e99204169c6c80f7db4bad62775aaa59b5 100644
> --- a/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
> @@ -24,6 +24,7 @@ properties:
>         - enum:
>             - qcom,sm8550-iris
>             - qcom,sm8650-iris
> +          - qcom,qcs8300-iris
>   
>     power-domains:
>       maxItems: 4
> 
Otherwise looks good an applies, please update your commit long and add:

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

