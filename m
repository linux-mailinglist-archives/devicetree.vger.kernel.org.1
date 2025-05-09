Return-Path: <devicetree+bounces-175313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CB8AB09D6
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 07:42:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 35A76987872
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 05:42:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 316182690E7;
	Fri,  9 May 2025 05:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a7E7HWqF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4600E139D1B
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 05:42:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746769357; cv=none; b=iEcPUhLCxVsdJV/lZj0icvB1HKNx5aZtyaGcrGBDm262R8G3Kd9ohbDZibDm0iRRzT86V3jsoUmSxpte1vnq6xKqlrmQA9PBxlTNJW093Xs//ZtfaC/uVGFAujIo4fMBN/XP6pw7dxO/ODjiAMyBFe5LZq9lvNaIBcbe39SHIUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746769357; c=relaxed/simple;
	bh=nlEmbJ8kowVWrxtp8ZPPnA24ZVcc7YXBJ3NRexlf0qc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=grQltemIVFWwX7BCva2pX+3fwju+Pm2MowwnUaSQjMhox7Ig7Kl4U7In0/8lcoavY2rnMOxhktWf1paHSJ0C1CHYYDYAukWlDusB86zJVXwYJ278Sm6SaY6WGLaDC6ZCCEP6DVLOvR5xkhZU2CkNMQcrX7hQOeX5gd6S45cWfFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a7E7HWqF; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-39d73b97500so146505f8f.3
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 22:42:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746769353; x=1747374153; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=VDVR1Thqfw1bgEDLPyd4Iuy7qTJd3mmQiIKanFQKIDQ=;
        b=a7E7HWqFdLPI8Hzp66Sy18g7JGpg5XBv+O96py9wdxVbbp991l8FGIE+TKK9nFK5R9
         aN513L4ttwGEnZHHBnX5Kd/uWSSWB6w8VdeVopghOZ4JgIx9UwQ1EWj1tb4JumdD4WF3
         vNtpbMj0CF1Ejd/0DTKQzLDoMG4kGZzGpwblqnf06tUgVPkkY+Orw1m1PDngoi8skYZ6
         U+KAh0yf/5f8uHqPyenoIXkG4iP93WzOQV590xjSw8UX3VGi7V94lQQ2ZEU3NimTYU3Q
         Sv8Wj2qw/+b2Sn7Qs73XCmKnVJ0c/P9/vuuB8ZqYn6U9N/pri2FstfrM3us5tAdVG+3v
         VjOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746769353; x=1747374153;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VDVR1Thqfw1bgEDLPyd4Iuy7qTJd3mmQiIKanFQKIDQ=;
        b=RPmP6RRoso3nDU5u8yRlOUBcdf+p17pkY+far1AQ+fPhuv26n6p0/HBhasfsuFnoHA
         3k1UqekHF1AlXFU5J8Ae4+G5qbTOB4N7xYab/w8/U3qzq8MUZd5ewhwjtGtXlDGaqxos
         LUQzAmwol3bmTzOBNsDCd3SzhK3mnbyzYKVzy9/j63EWRyBqCZ5liCgbUh7lOu5hEMyn
         BIOTkyEa/GJOQD8nKc22IGIotXhn/+0xGtGULfH7LJjB4i0k59BX/bpDShr7wX36EI9Q
         nEm2HMreQjTJa1ui5nFPzJGzeWPK+KUZ7WGt+3T2pAu8bdubgqb5eamieweVjbzqsknF
         haIg==
X-Forwarded-Encrypted: i=1; AJvYcCV/toYbHurtBJg1qsRcG3HCfbqFIzZPcrx9IHl7TTQpKFcOthkMbvPeOCmpg1JhJGrVlMtN+x2aYTsA@vger.kernel.org
X-Gm-Message-State: AOJu0YxLlrKYHNjBi8RWVyg2iUY9fB8xUg0LDaqolYqeerOGLtNLayWY
	BbYEfXCUDLdX79J9Coy6XTkYvX2gwG4xj+5fdRdBF5DpQdGFlwttpWyoO+X8zlY=
X-Gm-Gg: ASbGncvk7bZ+XYDgjHci4SMKSdXZTQoCTZvfxr3nx3Gj/AenHlzB2QBSn0k20U9CvuJ
	eaEvrQ9VdBN7aJ+7YKVBY2sAMe0IHrWXFpMTpng8UTXSHavCdr4j00bZbaFKN8wBHzzwmHSuqN9
	YSyUqZSFTb9w0O6rMDKRVmDYD9+zYvkujXAkXxjCwfit8TBWpvLaxTqWg9ustz5zVLX3j1Nr6TT
	vH+K7OS2Z89nJho72hrIxppC0QNFNW5ksWh7+80Du4tYX0ce+dYCjft2eo2mDYmxKF7KDCvUvpV
	8caAl6l5O4YEc97566iKVhKcf4dWiSduDhdYQ+EPc6nH1KK1DOISN6x/ezM=
X-Google-Smtp-Source: AGHT+IEpdJaYB/kvIU1c1XgAwSfpcq+dMJR2nY0PEUGwwcTbhYeeqOtCvMZ9IctlLuH6l2gHlQ+lKw==
X-Received: by 2002:a5d:5f8f:0:b0:3a0:75ff:261f with SMTP id ffacd0b85a97d-3a1f6487679mr488337f8f.11.1746769353563;
        Thu, 08 May 2025 22:42:33 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f58ecadfsm2103911f8f.22.2025.05.08.22.42.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 22:42:32 -0700 (PDT)
Message-ID: <7b36aa5d-8c81-42c6-a69f-38f9b157a361@linaro.org>
Date: Fri, 9 May 2025 07:42:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: display/msm/gmu: Add Adreno 623 GMU
To: Akhil P Oommen <quic_akhilpo@quicinc.com>, Rob Clark
 <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
References: <20250508-a623-gpu-support-v3-0-3cb31799d44e@quicinc.com>
 <20250508-a623-gpu-support-v3-1-3cb31799d44e@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20250508-a623-gpu-support-v3-1-3cb31799d44e@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 08/05/2025 18:19, Akhil P Oommen wrote:
> From: Jie Zhang <quic_jiezh@quicinc.com>
> 
> Document Adreno 623 GMU in the dt-binding specification.
> 
> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Drop. You changed patch significantly, like 90%!

> ---
>  .../devicetree/bindings/display/msm/gmu.yaml       | 34 ++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/gmu.yaml b/Documentation/devicetree/bindings/display/msm/gmu.yaml
> index 4392aa7a4ffe2492d69a21e067be1f42e00016d8..afc1879357440c137cadeb2d9a74ae8459570a25 100644
> --- a/Documentation/devicetree/bindings/display/msm/gmu.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/gmu.yaml
> @@ -124,6 +124,40 @@ allOf:
>            contains:
>              enum:
>                - qcom,adreno-gmu-623.0

I don't understand. 623 is already here, you document nothing new. This
makes no sense, I never, absolutely never reviewed code like this.

NAK


Best regards,
Krzysztof

