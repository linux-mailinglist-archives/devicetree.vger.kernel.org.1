Return-Path: <devicetree+bounces-176989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 812EDAB6257
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 07:29:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BAEF63B33F2
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 05:28:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17DB91F416B;
	Wed, 14 May 2025 05:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TpwJv5xR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A99B1E7C07
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 05:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747200539; cv=none; b=hqkvWGTbZ6aooKQ8XK4KujgbhyiE2bAWi7N7/HgPqlldps059+shVfU3Q+814dyellAXIGGbbTksvSs/ef0960JYN8hS9ItZvW4YQ27eTLR1ftvTInkohyHdDjCqp4CwjYV80Ji/6XM32RSPgjt2rzrba0lzGwRAXcN4AmZOmdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747200539; c=relaxed/simple;
	bh=5dTwjDqUGC71o92UrTZQlZyU+5wMlvQZNqYAOZynkT4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O1y5LRANaoAgQZVe4bJ8l3Ne6AnKRZNQqXXszgsh6cADNFArXx5I8cULhtVttRJsDI3VfrjvedZaFDGJmuW/An0imgItNM16TM//pPB6QO4FKmwRNsEFzxv7L7nKLfcE1xW/MqLdtOA9gldzMkc+gFBvLEkpIvI1SfZlsXSGBgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TpwJv5xR; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-442ccf0e1b3so73370115e9.3
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 22:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747200535; x=1747805335; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nmEU5NrY0WO7E3ww65s2y0b0wKsXCEAa4aBHaeCuKV4=;
        b=TpwJv5xRrFdE281NAmtGg71gLpjkMOJScZz0UndpQiYQQoMgtol4h15g8DIIfyj+Km
         RQx03bYO2KNoRqakOpwSvYtY6mRKw61uJQCZDhvawAZzafUWoJqYhXHs+iKGOuw5iSlD
         8gZCGcl5ne09ay4/NfPIZK3VyK2E93ALlJylb8awh8OHXQlHU9R5rPPuS8aUJHHNJ5yF
         L97a5uFPCZWiKAcDHegMPiHKMIrWEWZBPXfvUEnBLZI9IvYjr++3bzvW6+DNSHBRbWL/
         Abjq6+/STJqRFfE6ov+byFjQeTLtxt6lHkgtEWKAUJbWoHxHyT6pwlm8yqqyAUppqjUn
         +SDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747200535; x=1747805335;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nmEU5NrY0WO7E3ww65s2y0b0wKsXCEAa4aBHaeCuKV4=;
        b=r/B5ynajV0fTdznxx84aagxiPldaXyKkziRqsBUbQxrqd4hFbj8ga2MFyiudOM/+V4
         ywl28XoGCAxpSpRmSBcOCBC2HYMXqeI4bsTm/FgaUcDuSiGHziBoAMhQ0NsrKyZET63M
         6nEG7bLOAxMWMXkDIng9ybcCypQYdUNrXDghs0tP62EyXHJmk32HGjexxL7n97cHE+09
         nH3DL717jgFvBchP3h1yUERc79ISpYwaOWu8as5fdpcOISCxHvSmg+F1K4is9qLZG4JG
         6XMZ4d729Xdru+Bpc+FtEfRTOTuU7iGbsAvk2GX7hGVGn+5P+2XcTOhV4ghS2MUHx3e7
         xylQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1q5zSZ5rfJTDTjVOiZdWLs0ldInv4l4oXkt//PC4ofel4GlSIwFj6tTeP1RCsntFQA18cLSkKOwl4@vger.kernel.org
X-Gm-Message-State: AOJu0YyEBk8hSYMd2BYUB/55aIV+mW4RGWexeOqlQrZOfpKJOUJ3SSaJ
	/Zp+JaAhnrjx4gZN6m9pGfKizqB/K1lS8DMqiX0MZsjA3XgLyeJuvHx/ild0gpc=
X-Gm-Gg: ASbGncs0nKdjPCg4++kGFoy62h+aDaWkt8Mq64QkYvXoROEmjojfO9z3Cto/Y8IZKmf
	8SpGKxpVY5LnD4HIxRubF2fok6EHYxYwBxLCRO0q9sNVYWidNDCIb+JpREqnLOOlIKgYmC1zj3H
	aiv9EHwtMRk3NWAKhwaMsZ0AU4CMx0PousYkAtzgbDL+c9x66HwVekfUgkLUxQsw1GmKk10Us5h
	yMKHRKjFgfVDsaMBZzXkOJYGq/g2ItR1W8W8NZiJ2T5XLSk5fb2p0XqA6vvAwL83mZvJs6fAtMS
	Kyaz+GhlcCBY+n+FO1DHI0Ma2YQ11WZWvHJ1dJsy63XGKxq+lp8f7uCo1RYh5RjUTy+sxo/SVe2
	erM5W5KuYaLyeVmTqcmOOQj8=
X-Google-Smtp-Source: AGHT+IEGAcfwKJBoQWtEXI0dUeoF2qoiKr1YbPO1n5TUPTbwmsk0AI4hKrFkPAFUSxZdY24ZnvFA2w==
X-Received: by 2002:a05:6000:1786:b0:3a0:b4a7:6e56 with SMTP id ffacd0b85a97d-3a3499512d4mr1435912f8f.56.1747200535475;
        Tue, 13 May 2025 22:28:55 -0700 (PDT)
Received: from [10.61.1.70] (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f5a4c583sm18144903f8f.84.2025.05.13.22.28.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 May 2025 22:28:55 -0700 (PDT)
Message-ID: <684be594-85e2-49ee-8b9b-cf0b6d444cf5@linaro.org>
Date: Wed, 14 May 2025 06:28:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] dt-bindings: media: Add sa8775p cci dt binding
To: Wenmeng Liu <quic_wenmliu@quicinc.com>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vikram Sharma <quic_vikramsa@quicinc.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Andi Shyti <andi.shyti@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org
References: <20250514-rb8_camera-v1-0-bf4a39e304e9@quicinc.com>
 <20250514-rb8_camera-v1-2-bf4a39e304e9@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250514-rb8_camera-v1-2-bf4a39e304e9@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/05/2025 03:40, Wenmeng Liu wrote:
> Add sa8775p cci i2c support in dt-binding documentation.
> 
> Signed-off-by: Wenmeng Liu <quic_wenmliu@quicinc.com>
> ---
>   Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> index 73144473b9b24e574bfc6bd7d8908f2f3895e087..117e9db86d0e1b3cf7c5366860fb56e8e72a4059 100644
> --- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> +++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> @@ -25,6 +25,7 @@ properties:
>   
>         - items:
>             - enum:
> +              - qcom,sa8775p-cci
>                 - qcom,sc7280-cci
>                 - qcom,sc8280xp-cci
>                 - qcom,sdm670-cci
> @@ -184,6 +185,7 @@ allOf:
>           compatible:
>             contains:
>               enum:
> +              - qcom,sa8775p-cci
>                 - qcom,sc7280-cci
>                 - qcom,sm8250-cci
>                 - qcom,sm8450-cci
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

