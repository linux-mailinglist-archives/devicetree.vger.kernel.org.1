Return-Path: <devicetree+bounces-176988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 354D8AB6252
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 07:28:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6AFA33B18E0
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 05:28:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8748A1F3FC6;
	Wed, 14 May 2025 05:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dVihJdk+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DFD21E7C07
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 05:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747200509; cv=none; b=cbbkZiluM8ncVPEkTxDRmwgxKVdJI2stOTNfgaVN+/bU2JxrBbsRc5rMsYRgZ7oblReKpGpVHy9ef0zH4ynkQy4h4Irqca4QaCepCx9XlrDGvNVSUPBKmAWDJmISi5KQplOxbAWwUfYqrAEsb9tP9oeU0LfKzCgqxzayVUaagu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747200509; c=relaxed/simple;
	bh=JkeFk5JvtELodwEn2MQCcvDJk93HA88o+taJ9J75Wvc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W1ipJ6uJpc08fFV1tmIvXmi6m9kB0qnLbk/AnWjXjSvGxCun1JesSEZH+GuxUPsolTgvhK5jtL+0zPZHeN64lLNAQtI3rIaWALzeYKVh4yIXVnomVHrrow4idhgdgkSj9ngzMNWl3pZ6QZDIkIjErqrcHy12Gkn27x1z616J9Ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dVihJdk+; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3a1fb17bb8cso4051844f8f.0
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 22:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747200506; x=1747805306; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fu+kToH5ynZZEiBVPI1+qje7yD+2OfrJbW9noNa4CNg=;
        b=dVihJdk+ifDgF3QyP8rRJJzBytMIYTapriOYoM6ZnyTuWmSF9CQhG4Y58jNjQKeI7f
         XvjQ3XBLfV3pq2TG9L7oFn91xIfnX5ijcey5ajzes8LcebC0CPRlziYwkdp+E2Ya7P2U
         OivLsOZeUx6v+eTBFXLwSIaZwi1gU/AjeKeqc6k87HbEnID4mlPTdGvpg874bzXh1XXP
         npceKV8lSYqFWgdu0afboQMPVWMfoFOwN02kNhOKp+kifGZWOsPMFWDHJkdC5uXaFLAQ
         RAlNBR1BOF3Q/2bSLJIZda0z7LqT3SkqFqwiYt4lE4ROWzDyNpYP25K5hgUby7suEnti
         jaDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747200506; x=1747805306;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fu+kToH5ynZZEiBVPI1+qje7yD+2OfrJbW9noNa4CNg=;
        b=qXeMsI8MnxHggNHxz6u+MLqUpq15wSQGetQeWmMBanLjbI3W1bZ1AjYfdZ1JUfcP9Q
         sVlSJWOQbNNgSIiu04BeE75gfAvVq+4HnIULvA8ghRPlXXSOr9SoX4AvNOuExibsGqoa
         HC8o6HpyeKHsHp5o4Z465cDUTNlNzqcaYsHj+QE7QxRAgT5iajcYfvxhq9ahBWiRbm0s
         6jjlHzKK4B9ojVBCNd33hr2pQ3LF9TWc6rCkY1uNtlwmzWG68zW3PHMjKFDTRPsLw7ZS
         2Mt/Zk3Uuur68uAEmhD1R84/FWPUzHwa6Vp7FGmJP7aWyxJ1HpNs69gez05JBhPuY58O
         jbBw==
X-Forwarded-Encrypted: i=1; AJvYcCXoO4yKi6ou2zeEMea2GcQavFUjDFVucF9rp4Hw861LWSyXbA3auUNkf3vK77jaZ3gCNA2GNj0WIjjV@vger.kernel.org
X-Gm-Message-State: AOJu0Yyxn0fTolCaZa+JpfK2KP6F8B1sl2aJ+EUvAs5uhVNdHswmqMiS
	daNhyt0MNmXrVEJTHQ5/CsktlGvqG9z/rz9TLWRDEHE23DR1G2RfK3dlzzAaIyI=
X-Gm-Gg: ASbGnctrY72HfeCwMLI0CUEkUxoOWjP3g2Kk6KJo8QI1G+dmdTD1+6WoJ9HgHV9nmc+
	MFgcwvD2nKqwJEkbX2XO4nI2WbJCLltsar36u11FuDJJn6BCsQAejaQjWQ/y/pEGGZPxddQ0txy
	upIedFuy32u7S5uizNkt5VNy/tcM+2KzlpBY1y6eGGQXUvf3K5zP9RHmf+cAjs6jkkC3/jwjQG0
	wtnL1azfUXX6qQbLJJlOdQuEDYmgcueSqJYqPajDhfmGb+t3TOYdUDo7B2qrQklqCEU/kU7EIUG
	cQpXnFBC847H9H9zxzrNE6kH/3XM2HhlQ5AQd4VAC2z+u+OQt9nvQr1s6547s+rLKGC6qYHLMYb
	rCPC73S5OLf8I
X-Google-Smtp-Source: AGHT+IGR8fcXwr8UrIba7uq3uRKgiVAoO7flrB6Ax66vVZKivN1s8Mt+EFttdNMqYIyUx78KHccYtQ==
X-Received: by 2002:a05:6000:381:b0:3a2:229:2a4d with SMTP id ffacd0b85a97d-3a3496a49fdmr1286717f8f.22.1747200505555;
        Tue, 13 May 2025 22:28:25 -0700 (PDT)
Received: from [10.61.1.70] (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f5a2d2e9sm18279823f8f.75.2025.05.13.22.28.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 May 2025 22:28:25 -0700 (PDT)
Message-ID: <017682c3-76c6-47fc-81f2-1da2a22a9d34@linaro.org>
Date: Wed, 14 May 2025 06:28:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: media: camss: Add supplies for
 qcom,sa8775p-camss binding
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
 <20250514-rb8_camera-v1-1-bf4a39e304e9@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250514-rb8_camera-v1-1-bf4a39e304e9@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/05/2025 03:40, Wenmeng Liu wrote:
> Add supplies bindings for qcom,sa8775p-camss.
> 
> Signed-off-by: Wenmeng Liu <quic_wenmliu@quicinc.com>
> ---
>   .../devicetree/bindings/media/qcom,sa8775p-camss.yaml       | 13 +++++++++++++
>   1 file changed, 13 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,sa8775p-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sa8775p-camss.yaml
> index 083e1193c474265edb445dd30717360de57ff986..aba46c0bc11faa062199f563602494bd2f62367c 100644
> --- a/Documentation/devicetree/bindings/media/qcom,sa8775p-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,sa8775p-camss.yaml
> @@ -125,6 +125,14 @@ properties:
>       items:
>         - const: top
>   
> +  vdda-phy-supply:
> +    description:
> +      Phandle to a regulator supply to PHY core block.
> +
> +  vdda-pll-supply:
> +    description:
> +      Phandle to 1.8V regulator supply to PHY refclk pll block.
> +
>     ports:
>       $ref: /schemas/graph.yaml#/properties/ports
>   
> @@ -164,6 +172,8 @@ required:
>     - iommus
>     - power-domains
>     - power-domain-names
> +  - vdda-phy-supply
> +  - vdda-pll-supply
>   
>   additionalProperties: false
>   
> @@ -343,6 +353,9 @@ examples:
>               power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
>               power-domain-names = "top";
>   
> +            vdda-phy-supply = <&vreg_l4a_0p88>;
> +            vdda-pll-supply = <&vreg_l1c_1p2>;
> +
>               ports {
>                   #address-cells = <1>;
>                   #size-cells = <0>;
> 

You can drop this from your next submission.

We are fixing the PHY schema to give a 1:1 relationship between PHYs and 
their associated rails.

---
bod

