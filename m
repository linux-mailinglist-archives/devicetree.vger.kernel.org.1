Return-Path: <devicetree+bounces-58295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5078A1459
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 14:21:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1DC731C21AEB
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 12:21:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 087CB14B081;
	Thu, 11 Apr 2024 12:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Fs65TK7c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F2C13DDD6
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 12:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712838094; cv=none; b=bj0RDgCkzqZNYEvImTtyHhY4P3kfO4cUlXSr5JG+iYfijU1xhudvqKDxNAJOZ66sLWuyUFzg+xvDXNUitBq00SyVmtObeDywC8b07XP/Qx2NgZAAfxvrYUG1rNuethz4qxzcyg/PK8KFl4m2JSzli6eQhtUT5rDEEXCyfj8zqtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712838094; c=relaxed/simple;
	bh=zHf2UPOwKhqPAUHf4IDMeXXXGq8rIrMH8W8XCAOwke0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s+bptIGZIsdAT22vSrTgs4CvKyQtB0IA3MXI2nKb+ABc9gqqsb5dUPVIx0+iNUBVoVa/kCjwja0jb8aNt6GJEl+OSiIo+Mfg3gIV78HCgmJZJlD/g8Hiusj2gJG7jz+Y6vZkhyD1RLyzPggRpVpciteJ5lKIpmcVCyNZKs/UY5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Fs65TK7c; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3465921600dso1740522f8f.3
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 05:21:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712838091; x=1713442891; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kh1g/uh+n+SvXBwe7LtwyhGlbTwxyPzRKTm4XGWj4zM=;
        b=Fs65TK7cDys3ePxBYQMS8uvCNjIXf3GaGORZa08Im1m9fb6bzfhlxsMimdgiXD97So
         b/aA+CSJVc7wA//4NpU//lE9gCkfYNY8irevoWwvx1O2Abh4jGQWthlISEadmZ5MxwTr
         tyq7IN1lq6bw119PxaqMYcQoASKYf9lMHPGRmGiMMd7y7ZYPLUB0KH/DeOcFU6ZrU8wj
         oO08UoL41QaJA7k1r83cC1wak1uei+opgVJmQKNjIJBg1ym3nSpuks++Mt/FrLLnab4e
         vsPvQF183h8rVYU3iI14w0hdByPvz11BstQZcFzH9MO8bNSsPjGGo/Wwb9/EmkAU6jQE
         /VCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712838091; x=1713442891;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kh1g/uh+n+SvXBwe7LtwyhGlbTwxyPzRKTm4XGWj4zM=;
        b=d6lAQiCXwEF3dDsgIK2QxxIzTTSXTQbcNIZW9vYF3frMA2WXY7Jmh72rOajc1swlhK
         pody4FIUimX5mdQ//xjGJ7sP/1SviNXAyPVQSJEqQzBokhrXJFuZ5wGzUqY0sNsxklhX
         ThpZyHple08ZaeZWPUzI74zVffvtdOD4h03Osxq2ZrmY+Xm+iHAR9cWs7Uh5peqFnlLi
         8K6k431ooauQ2hJD+lclwatVvZnxq9YAfYaYGoqBUQTcQvEqmuN/3y/+1nZWk5NxTZQl
         3dPmom/pkcV4osljpGwHV4a/OhVluIgEWM1hZhDEnHwcZqYhSG9dxff4mijcWkiXuQm9
         togA==
X-Forwarded-Encrypted: i=1; AJvYcCWabgyLNysavZs++16r0gZBMIDo6+wTRv/E7mj7BqFjEKbK744rMoBlEk/4QddYBjdsdGyOy8c3c439VU91x+rowcYYtle4oTDc3w==
X-Gm-Message-State: AOJu0YwZ4gtlFj4wxMUqXWwlZgSMOJSBCcKsYeR9107ms18jqabcZI9Y
	GX6FjKEgmLOjULCxezUkJf0aCmgfLO6rc3HKyNXK8aNL64ZFGeHo+uv+RewBMTY=
X-Google-Smtp-Source: AGHT+IEjuGMWfNFQ2RmwlzRXwcHh6dCuyCwEecfbbkGiJlJuwbowxBn8PEE6OGlSZab/hPjUISQMuw==
X-Received: by 2002:a5d:525c:0:b0:343:5e64:ea54 with SMTP id k28-20020a5d525c000000b003435e64ea54mr3709721wrc.61.1712838091399;
        Thu, 11 Apr 2024 05:21:31 -0700 (PDT)
Received: from [192.168.0.102] ([176.61.106.68])
        by smtp.gmail.com with ESMTPSA id r9-20020adff109000000b00341de3abb0esm1655188wro.20.2024.04.11.05.21.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Apr 2024 05:21:31 -0700 (PDT)
Message-ID: <7098c454-6a1d-46ae-aef9-63bb9ee82c6a@linaro.org>
Date: Thu, 11 Apr 2024 13:21:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] Revert "Revert "dt-bindings: i2c: qcom-cci: Document
 sc8280xp compatible""
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Loic Poulain <loic.poulain@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Wolfram Sang <wsa@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20240411085218.450237-1-vladimir.zapolskiy@linaro.org>
 <0b810e39-b82f-4cca-87b0-6e586690b242@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <0b810e39-b82f-4cca-87b0-6e586690b242@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/04/2024 13:03, Krzysztof Kozlowski wrote:
> On 11/04/2024 10:52, Vladimir Zapolskiy wrote:
>> This reverts commit 3e383dce513f426b7d79c0e6f8afe5d22a581f58.
>>
>> The commit ae2a1f0f2cb5 ("dt-bindings: i2c: qcom-cci: Document sc8280xp compatible")
>> was correct apparently, it is required to describe the sc8280xp-cci
>> controller properly, as well it eliminates dtbs_check warnings.
>>
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> 
> Subject:
> dt-bindings: i2c: Revert ....
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Best regards,
> Krzysztof

Reversion is not the right fix.

I'll send a proper fix asap.

cci0: cci@ac4a000 {
         compatible = "qcom,sc8280xp-cci", "qcom,msm8996-cci";

          clock-names = "camnoc_axi",
                        "slow_ahb_src",
                        "cpas_ahb",
                        "cci";

   - if:
       properties:
         compatible:
           contains:
             enum:
               - qcom,sc7280-cci
               - qcom,sc8280xp-cci-no-bueno
               - qcom,sm8250-cci
               - qcom,sm8450-cci
     then:
       properties:
         clocks:
           minItems: 5
           maxItems: 5
         clock-names:
           items:
             - const: camnoc_axi
             - const: slow_ahb_src
             - const: cpas_ahb
             - const: cci
             - const: cci_src

---
bod

