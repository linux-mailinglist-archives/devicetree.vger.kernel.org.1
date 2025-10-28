Return-Path: <devicetree+bounces-232128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 57AF5C14872
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 13:08:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 888141A663C7
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 12:08:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AB9732A3D8;
	Tue, 28 Oct 2025 12:08:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K2i9Sqhv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3E132A3F0
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 12:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761653295; cv=none; b=meIwm3inBr0A3DU+/AiCxT8GBId4M/PM3jaNQzR1kfbjr2PeAEDFWO/xF9okm4w5Pclu7wq8e+1XJTfH+UDlAK/RgcwODkVBAAmMTWHLt4J7tscnNWSD3VTLrnmFLpcnf3LnAP0959Hyt7f/X1RCM16REc2oV2KuMnYG9Rewa2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761653295; c=relaxed/simple;
	bh=FFZIhW7dPQduoS7KNYpmAufTpW86vs1zECIWDOcIxOM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b/O7dAKKmrB/n795yudPx4p4zzqmOqL5y00uM7el3v/cEabInQq4UjgJWchHf4cjXlA9LgIgNleqyI8FmRQSsAZg2c7pX6RkcRjWCICuWUOpB1GEkcygdT8VX3DjuQI+ahJhReJR2OtrqjoIFq1Og4F2irQh+DPnNZAcT+5JU/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K2i9Sqhv; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47103b6058fso43441455e9.1
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 05:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761653291; x=1762258091; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OjjiZbIUuyLAf493CLwJMzPeawzS5Hi7KDfcQ8XqHPU=;
        b=K2i9SqhvhcTFN5t8WVdPFenAzKDJnwsKubl9rZC8x3Htax5UES0T2I6SAZjZy2k4yo
         O4G9ltAZ3OB/iV92UmlooAkR14Fj3hmqb87CAR05EO2Wb3SmOh38eHCy7rqE3YpIzany
         H+sGzx7SITrsa+PpzgXqFnSwb0g+7YYkQhtqDKvWrBdvRbl9FTt23CcdxOxpWuEZWrIl
         ySzV/OzpKWLiaEjkklTX0TIhV9U6CNVK81+yvhMxxSJCKKt3T3QlcgHuPjUjwPjiWM+B
         P0sLoRg39JShhSg0CcnljL4qtJOXUZnVpOV+Fu8vWKOUvTYfdnbGkK5lS3TuZI1aA0Jn
         7anQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761653291; x=1762258091;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OjjiZbIUuyLAf493CLwJMzPeawzS5Hi7KDfcQ8XqHPU=;
        b=OLK8Y0tweFAiEt2GxPUMYb/HIt6allmluw+s1/dMoXNYoWPhS0O5sPdQrd4l+anzWF
         IJxoBDBMrYYIUVEILQIDkEvXJlMPEYlDzQO6pmZvs5O2dlExU4t2wEyTjJmsSrsOR3i/
         dqP9vHO0BwqmjBvm6yfd424YygPQwoLzalSE9wBcTaSb6P97cE/Ylg+sdRNUDnM51CeL
         fcR8VMfGwrMFG0kLDEHEoA68JzEh8hQVGetgh6KR/8Aea7EYG+tpDgaWR/W18Yya9Bol
         ldQseoO7STJ0U4cF7Jd6mbR2sXzjiDDmsNOrDkw+q1QHCkDp0+vEUChkMP0u1z1rdaEP
         Jl5g==
X-Forwarded-Encrypted: i=1; AJvYcCUK6WmDnziFTZkfgTnJ30aAF0GH8AZQQ+nvFU3iLk6Jj9ptX5pZOpnhpjn2e+k/lKpUyaf8iTe7eSvx@vger.kernel.org
X-Gm-Message-State: AOJu0Yyn58rJL4KcSpVk2FEWdt7B9ZLjEcM5q6GdBRUSA1Yl1Eu4zGs3
	+dmhH4qEzNhaUA2txJQEN7b8NNmjReTGW/H7Nrb5pzUDuwIKAlnvgXL4Ado1aiNLgy00COINLpG
	QQmMa
X-Gm-Gg: ASbGncvWUhOgTJIstL7Hw9OaQ6zjrNhOTYZ/3gAzp6MKFrY/EJIFFAdzYktJzJ/cTe2
	sj80qIKcs9NL9qlVSKWl8eU5UMmtdaiNpLCQkX5m2XHF4VATgDJ4DYCrxE3vNRS2IwBLJU9KwvA
	Iu032kxlMhWu5pE4GGTxJYNEjCjN7xnR2KThfLrTj/mTW/xKdm/QHuHvl5nTVPquGO+8/UEcTzz
	dc91XjO18kCdh4PyGUTPBTm6HgD6hByWa+YzAcAPIAkKZXMXGOTy6hCZl1m/tU02RdHjXKxMksx
	zlQ17m1+t/BGnDIJHsEW5dQ91UJKc+ZbEn+RaQKI1OFDB90SWFfi8udeEHVDHWE0hd8jsmqa7ii
	Z6CcIxY/fhYj/ditqsWN1p9bZLGg46EBmZw0LXWgqiYIWvWkbReVQms5BnHirrPNX86Vp5EwBwe
	pjmL4VH6j+rl5VfMQdAhDXqS3/R6UyirGQ8SN8srrclA==
X-Google-Smtp-Source: AGHT+IGFpjPN8Cn5YgLMJOAQI6Ro/JGJGzDgKuY2HvqITluVdL/i2A10CTxri2/CVAdNVkSLxXekrg==
X-Received: by 2002:a05:600c:a08b:b0:477:c68:b4da with SMTP id 5b1f17b1804b1-47718176e5amr27234325e9.20.1761653291379;
        Tue, 28 Oct 2025 05:08:11 -0700 (PDT)
Received: from [192.168.0.21] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475dd4a36easm193604505e9.10.2025.10.28.05.08.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Oct 2025 05:08:10 -0700 (PDT)
Message-ID: <aaa361f7-6ada-4347-8bc6-3820cfc9feb4@linaro.org>
Date: Tue, 28 Oct 2025 12:08:09 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: media: camss: Add qcom,sm6350-camss
To: Luca Weiss <luca.weiss@fairphone.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251024-sm6350-camss-v1-0-63d626638add@fairphone.com>
 <20251024-sm6350-camss-v1-1-63d626638add@fairphone.com>
 <20251028-defiant-visionary-rottweiler-f97cda@kuoka>
 <DDTUHFIN3IEK.3FY5IS9S73ASO@fairphone.com>
 <0bf4ab2e-9846-4f8b-ad72-e9db6fb7d08e@kernel.org>
 <DDTVUXIIQQUS.2UUJ9BS4JCZ0V@fairphone.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <DDTVUXIIQQUS.2UUJ9BS4JCZ0V@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 28/10/2025 10:28, Luca Weiss wrote:
>> So that's vdda-pll-supply
> Just noticed, this S5A regulator is the MX power-domain, so we cannot
> add it as vdda-pll-supply.
> 
>  From what I can see, so far no other camss bindings take in an rpmhpd
> power domain, and given it's not referenced in downstream kernel, it
> doesn't look like it's necessary to control it, from camss.
> 
> Maybe it should be added to camcc though? Still not quite sure how
> downstream vdd_class should translate to upstream...
> 
> Thanks for helping with the other points, those are clear.
> 
> Regards
> Luca

Standard practice here is for MX and MMXC in newer parts. MX certain 
pertains to the clock-controller in this case.

---
bod

