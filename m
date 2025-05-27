Return-Path: <devicetree+bounces-180820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A89ADAC4EA6
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 14:26:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F2F53B40ED
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 12:25:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0DE4269806;
	Tue, 27 May 2025 12:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jTjlI23q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA1CA264F8B
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 12:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748348773; cv=none; b=kP69FD4TYv+jkAav4B3WrBlDQwqgnSywBvDK8/EtM7hWRmsFzjY9CUMD5U8daFaLnYwYqjcDQSE8CWVVaCcyX+yrjY8wCHz+iBhQFhdsoY2bpY3Cal3lviKac09vdJcxKjfuaZAfec9ALpNNyH6r9niUbjekJLoX4cNnFWXYW0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748348773; c=relaxed/simple;
	bh=fM0vRwBMxorOIhQNnNbmUaQmnFKU/onoNSRD3Seu0ao=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=czbyNF5B3AIUYcOcnJOpKZjljiUrhqvRxSR70kPx6IAeR/0Fp5HzszpwA8j8PpSHtgEa4/P7EyPlH4IvTSURwMotlORwXPaSzSgtJKFDLJAH4dxjoIrkuIvwAcNu3NgYz6ioZBJGnnsKmdzYRo/75S/yfCLN/8Mhwgjll3H0QSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jTjlI23q; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3a3771c0f8cso2400479f8f.3
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 05:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748348770; x=1748953570; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nlX5wgZ807rg2otTHb6eiNJdskenA3vuBmoIAlMxE3c=;
        b=jTjlI23qO6hQF4tNDqEkeFY9N7grLR7rJzJlPJTyEFwquJA3eBQWzmd9jzb1f4TE8w
         3nZ+ruHS482IO8msWdnC4rlcn8uQ9sLi3O/vvL71uTgykJyX61xEU4L6poPe0FvlShgz
         JaEHSiGGYYcwKbS7hIanR1vOYCOHavcMsdo2nwhM4SOohbTRFgROzALJCdCaUhbHW3FE
         XpZ/MFBowRe8+zI1FW5Lku2tEwI0iSuzvYqZ9VuPHVdt9d80FjS6TzqRnSd9/Zne4NK8
         r5XOOboOeHdRVWJWvQfCtFn9hQktjhj2dEuNj/XvdJ/amD67RT8n83uMEvPEMH1nQA5+
         ZcHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748348770; x=1748953570;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nlX5wgZ807rg2otTHb6eiNJdskenA3vuBmoIAlMxE3c=;
        b=qMiAkQy+Oro92FwLvHh43HJQcOtgaG0fdpiZkGB8yBR+ICVFgnnt5hH59YJyFu0Ekx
         1Lu8fHGF3dm8hYteKyPXU8lfLyE8sVTP0n+djbbFhHYWPWq+RN4xRErnINwnhvcNvXol
         YuvSv5NhwG972l17n6qAYqrd7Nxdlu8yGvhUG2LANe9Z/ogXxURO/XS89aFNLYbAmJND
         qEs20R0LiEy8K6JoB3wlNAOz73fcWrj/FIbFLrY0Ibf+6vWl3hG82aLXhvgLYagFvaRw
         NuYD2Z7BnDRgIg96MnBc4Cbpe7t+gon++aCSjjBfHExWMFdyxCpkQMn3y8gHZHS0foDR
         lMNA==
X-Forwarded-Encrypted: i=1; AJvYcCWuiotXsmdlJg7MlUvT05K93QywkCHeHjmp3ux1v47333zCjK5gIOTH0lc5sJddDuw8XikJqmvNs1Gh@vger.kernel.org
X-Gm-Message-State: AOJu0YyH0bt8ZjfpV0l2XSObcvaxtbZooJFmY/i62E9857zy+J72xqlB
	2/brMS1k3i56h8obugSFh6qNozEQaPvl28W661S0QWeoMVPjDUFLkQYPNkERwG3p0EI=
X-Gm-Gg: ASbGncvmIPmnDU8wwbECsQ9hPIw4xJ0dONL2qnt4Kc62OH7it6NXKmVF78TT6PukzwM
	4sigMRLviD+bPFJ/yLZk5e8s6IDYAQDiK9XT0rGHcU4T7FLi086L2013kdhvjfdv9f59e4ooQ2s
	B64b0lC11/BpFmznuFZ4BPVQf/otnrYl2z3eNlW09oLJCeAeh7pvHnYkLXHzwLAGgt4eMz8T2Co
	2Vd5qacR4GI3WgVf6kFgp/m11GIU47tQwqbxVODCoIp4WaCp5TqEHcLb5rUoJfOT1n6FnWi0tZV
	IV6FhV7T1mZ3etLtL6bRsDRVCE1Hec6shyeBlvat/QgNkKx2vaNnE0l3ZF9HVB8QZB/3h6t0rtw
	GqIkph9nrvMC4PRmZ
X-Google-Smtp-Source: AGHT+IGSXfGdKP76E+voScAgxzkXTjTLIJ5G7H9dlDZ79GKUItZtXNtAfGBIwcxqnJ3965Y7OhGq9w==
X-Received: by 2002:a05:6000:18aa:b0:3a4:c909:ce2b with SMTP id ffacd0b85a97d-3a4cb47e859mr11143560f8f.54.1748348770176;
        Tue, 27 May 2025 05:26:10 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4d6c9faffsm6782308f8f.74.2025.05.27.05.26.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 05:26:09 -0700 (PDT)
Message-ID: <83b0b7e1-6b5f-41e8-94b1-3073c47e9840@linaro.org>
Date: Tue, 27 May 2025 13:26:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: media: qcom,x1e80100-camss: Tighten the
 property regex pattern
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250502204142.2064496-1-vladimir.zapolskiy@linaro.org>
 <20250502204142.2064496-2-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250502204142.2064496-2-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/05/2025 21:41, Vladimir Zapolskiy wrote:
> There are 4 CSIPHY ports on X1E80100, it'd be preferred to tinker a too
> loose the regexp, which covers all these port names.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   .../devicetree/bindings/media/qcom,x1e80100-camss.yaml          | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> index 113565cf2a99..680f3f514132 100644
> --- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> +++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
> @@ -133,7 +133,7 @@ properties:
>         CSI input ports.
>   
>       patternProperties:
> -      "^port@[0-3]+$":
> +      "^port@[0-3]$":
>           $ref: /schemas/graph.yaml#/$defs/port-base
>           unevaluatedProperties: false
>   
Acked-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

