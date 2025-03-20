Return-Path: <devicetree+bounces-159465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFE7A6B00F
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 22:43:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4045E188A175
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 21:43:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 146C522576E;
	Thu, 20 Mar 2025 21:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LcDeJcgR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5DF8F6E
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 21:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742506992; cv=none; b=D0avjLXt885ohPmWz+sM6IBvUCm5HVxfjYoXIihCZX1/OlCM6SNeqfW4h3kp59N0pGvurR4OJW6KX6ZfGsnpWzkHvzfUw9BLdTxkxDM2ASP8E3mj4rlOst1tfUj0cpdXgxpsuuH8fBb31XIiYWkO4yyG4I2FwI70vPGb/U7ceaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742506992; c=relaxed/simple;
	bh=mOnDqgj0BSZmK+Rt4jod6O1D9Yk05JHk1R77dSq+p8U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BzlK49/T6parJCJZy86jbU3IIziqI/iuHsDkvRi9SMsxRaP/F6hh0AauxQnjSd72lYCGq9bJ7HgcgPupkHLtrQ6UjTqyMAAGaIFdhNiae++863XaUh0olKg1Y8bdEUVj8ns3CcvsB2y+awKX1PClr2l2dTOrTibJWy4jnr7Wbos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LcDeJcgR; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43cfebc343dso9560145e9.2
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 14:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742506988; x=1743111788; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HOP7UU/BixFyu9/NC0nZ1KUzXLkUEuMKRRqPCxM5rYI=;
        b=LcDeJcgRK/37MHc62RdAnHClLMYusE5uKEMsicsMNd5mLfpjBaBmpHKP72M/iNu9Xt
         C/8uhLWqJ1D4kvhcS1PDswtXVe7YlWTV7eT2GbVD5MhuX3zYq6i808HZjf6z9JZ7XAn/
         YE8YDJHKnNSiw8VE5jaZ39pnrYDfLWR0XYilRJXFNirwU+B1WwHelz/v6hB1g+Pq4MKm
         38pcP9IrrKmwH2FnIZS7RFTm3170ySP6IDBjmHCUkIDK8TKwzxvT9RqGDQAwSHsNxq39
         C7cP6+8dLoLxqbB3b1h3AuDayyZ5PoZPjgFQIjtGO6yacCCQC5ZZzT+k3Fn/yafddI+d
         kktA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742506988; x=1743111788;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HOP7UU/BixFyu9/NC0nZ1KUzXLkUEuMKRRqPCxM5rYI=;
        b=ggMqQhc0V2eD1eveWUu22vAhsq9Fo+mjCNAoID8ZsguekDVcA94DYe6XyGsPLVQnF0
         7RSLkP0cAbt7UMoHdsq0Ran3tMeEMN+upheeMUCXKMO9yrh6dl5KLZ+P/L2xVj6UdLKg
         YNbUYhUyVkiPeYpL8msgmwLvKkbYePTLiwMZCG2uWKeXk/Tk+NCWoXpYsRh9vERRy/XH
         SrHrLR/y/4cGn2H+92s2oQNEDZ6sG/IbRp9d7qh2n4OEQkO2jZVN6aJwpd77sFFdz3MF
         UNzIlTkZ8d8kHZBSMA2XB0Y3K2T+k3zfNrXSByR3snHXBPnqLpvyj1it5+PqiUxWuu+W
         /l5w==
X-Forwarded-Encrypted: i=1; AJvYcCUWeocMO1EFhKZeCu6nnZN7opKrSlb9Ck+KWdLH7986+MgyEy2/0g0z0d8G8tP1xnz7jXA5ffNIbwM3@vger.kernel.org
X-Gm-Message-State: AOJu0YwepCWSE/W2r1yE0XNnh3oDU74k4aOx62PzvWGq9+B41+cv1jTJ
	/C8YLEAn2mNCY0SuWr3jFrx3ozI5oIksEQ0MkMs3QrFGGAWNCJZjZi60oiAxw84=
X-Gm-Gg: ASbGncsLQUIhZMjdlIsgicV4BVd1gxfXwn8KNxe8OpEHJnK23GrohiZMSVdI2U+dwpq
	30xkWjpY6lbejafuf+NB8peA89IoixnJCJveuirDm6kk8hZc0nbGZbA2NbUMRUP0j9vRonk5QwG
	k0awcf6vxbjNdNcxrOyH4sKWRKXd4fY7lS3NuDu6d6Tc8XVbjXnPYaa3CwQaE5Lxi3UR/QLP6Hg
	hB66ZbsLXpwpCbaHb0Lw14yWU9etYMTmoyy0Zxrg3xCFtwBVqq5d1Ir1E5Uz14VQvM3uDsahr3c
	eH+lpniKPUUrXdVUQUTgl/kYOKGEHzZNvaVoWNfGoIgj2DdhRJxRXjHCD/3N45xZXZqYb8Z87GR
	HC5JVQIPvVg==
X-Google-Smtp-Source: AGHT+IG2v9hD+qLxQZ7dB2qhp9psuK3BMaWVUIJWRBgogDgcd+kbFyDF5hYm0wlh8L7Kn30Jqwwm2Q==
X-Received: by 2002:a05:600c:1d85:b0:439:8c80:6af4 with SMTP id 5b1f17b1804b1-43d50a218bcmr7262695e9.19.1742506988494;
        Thu, 20 Mar 2025 14:43:08 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d4453227dsm61164645e9.40.2025.03.20.14.43.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Mar 2025 14:43:08 -0700 (PDT)
Message-ID: <fa4a62c8-8373-4dd7-ad4c-e8668d142e67@linaro.org>
Date: Thu, 20 Mar 2025 21:43:06 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: media: qcom,sm8550-iris: document
 SA8775p IRIS accelerator
To: Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 sumit.garg@oss.qualcomm.com
References: <20250320-dtbinding-v2-0-8d8eaa4e76cc@quicinc.com>
 <uD9su4uJAo1PBanhrBSliY8k1KZvid_UHJJu8OYLgugkOMHBgQaYSpv93UpTrJoAzgsUMH-HomFg78fes-aqQA==@protonmail.internalid>
 <20250320-dtbinding-v2-1-8d8eaa4e76cc@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250320-dtbinding-v2-1-8d8eaa4e76cc@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 20/03/2025 02:54, Vikash Garodia wrote:
> Document the IRIS video decoder and encoder accelerator found in the
> SA8775p platform. SA8775p and SM8550 are irisv3 with same core and
> bindings, hence SA8775p is made fallback to SM8550.
> QCS8300 is a downscaled version of irisv3 and have different hardware
> capabilities. SM8650 is an irisv3 with different (higher) number of
> reset lines compared to SM8550. QCS8300 is yet to come in future
> posting, while SM8650 is posted as
> https://lore.kernel.org/all/20250305-topic-sm8x50-iris-v10-v2-1-bd65a3fc099e@linaro.org/
> 
> Signed-off-by: Vikash Garodia <quic_vgarodia@quicinc.com>
> ---
>   Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml | 7 ++++++-
>   1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml b/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
> index e424ea84c211f473a799481fd5463a16580187ed..6a89e9e3808758cfdbf6a51dfb9fc6559864253a 100644
> --- a/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
> @@ -19,7 +19,12 @@ allOf:
> 
>   properties:
>     compatible:
> -    const: qcom,sm8550-iris
> +    oneOf:
> +      - items:
> +          - enum:
> +              - qcom,sa8775p-iris
> +          - const: qcom,sm8550-iris
> +      - const: qcom,sm8550-iris
> 
>     power-domains:
>       maxItems: 4
> 
> --
> 2.34.1
> 
> 

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

