Return-Path: <devicetree+bounces-71353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 528558D66BE
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 18:24:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10AFB28554A
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 16:24:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B256E158D85;
	Fri, 31 May 2024 16:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GSmQfjEm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C78E15623B
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 16:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717172673; cv=none; b=tLlJJfmax+gWpIUodcicAbMg9VqrKO6N220qkRfnZjqC5BgEi25M2QOyhKVCBuxeYapOysrcp71hYrvifYwZPC44GpeH9EM/pv0pUfQlRXfjw/FOEivs28IfDenTfl50KPdKK1Kn37fjb4AnQNqV//8ukXlTWKM+if+vXaJn36k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717172673; c=relaxed/simple;
	bh=WTA7d/z0xFHAQQEnzbGrEGNF6YB7HTz3I/13JSlNFYo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CF5BlfcZtJM/C4SbkSni4rp7j2gRvdC3KQCp96n7jt+X5k7j5/YZuFj5siDQNMHMailzAgbGnLa6hzRUUsmak83JC0rYV/vhRSCxjL9mCtKbm7dVVg3mXuXau8GD7G9GTYyPPgLACfBlibi8tf+sM5q60ysgxM4pYBbJS3nKxxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GSmQfjEm; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a6265d48ec3so225815266b.0
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 09:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717172670; x=1717777470; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=qJSdIzJxO297NdqW7w9lTW/tPIbe+iy5RtUaCB6QAh8=;
        b=GSmQfjEmBAb/9nt9NIhxeVK8sZfF3Z6EtTPmDfJOJgDNNl+6WxjYejQO0r6VUwtm5X
         Ex2eMEy2EaCQKdat9GduaGz2mojLtfDXVTgenZxAgGWpkvoh/NnVh6gloGZMMLjn2WuH
         BXezbHeWh9ZUM/UNuoSJ59GYVLanF3Do+/lAZyMSBqzTGYL9bRv6uKNxWmcEHkmutTG7
         DWRe19qfRtV1Wt1kRoyEkgrTiyg6PscTiYc8937VST3AYP2I+sq7s9N+bmjVkN3MwLJ6
         QJTstU2eWDzu2hZ85JqPTyV48ueXAUT2u42vFJ/tvmYTLEfmqTZttQGaub7FCEstAxcd
         cUag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717172670; x=1717777470;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qJSdIzJxO297NdqW7w9lTW/tPIbe+iy5RtUaCB6QAh8=;
        b=LOTGpTxYRRHIQPqbUl6Bu984JnWzYxjiGhbWLd1xLKOm0UDyvQhDANWECMkEXjk+bc
         wvcQvoyxpRtUcgerC+dGmWW/HGTeC6ezsVqAG9t+FoFASndM3W4ycxYngC/u+S1nKTYP
         aFfgac4uEV57aulT1xdzb+mfVRoGahsLra943QjX7P8jfLhWlWEy5olUDCUAo3POFKhX
         1JtHxaHtLb2Q9N7XY9ZNtKU3E1MqbL53SnDcYIoqghqq0wEQg4u53XAs4IgbA9fJ941c
         LQtL6VU0Q1DWoVHf0WvuJkBT1ZLnmqfqULTIgJ9vLo7r0/sWned1v+04ZtRcCpZV2K7+
         1Hiw==
X-Forwarded-Encrypted: i=1; AJvYcCVvDybOdX9mtxh/sd/Fd3hiMlWIgpB02J5aRcIhhoGQh2YBXjF8csF1iu5MeQKWl1pCg4x5PJJP6Nl2hHVPn0mSxYgzHXii0B74sQ==
X-Gm-Message-State: AOJu0YxckqtXsf8D/ruKflOKcr7WlEzrjUxlVdKYkrclax6OtgnoO846
	MP7vedSnpdbv6y1asrgcdoN9CmlT8JTleRfV1bzX/k+SXAWHl6OysePgrqeEvwo=
X-Google-Smtp-Source: AGHT+IHMjfm1hAmH8n4bh0zbfjiFA+P2dlsXvlXEHgL6/peyBYrgDM0fzWcbQ/J/s5N1R1UbimJSBw==
X-Received: by 2002:a17:907:9867:b0:a59:d4f0:cfc3 with SMTP id a640c23a62f3a-a682204a7a5mr170276366b.59.1717172670275;
        Fri, 31 May 2024 09:24:30 -0700 (PDT)
Received: from [192.168.128.139] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a67ea5869a2sm101989066b.123.2024.05.31.09.24.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 May 2024 09:24:29 -0700 (PDT)
Message-ID: <c64cd541-4572-4a1b-96ac-607a491ec844@linaro.org>
Date: Fri, 31 May 2024 18:24:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: mfd: qcom,spmi-pmic: Document PMC8380
 and SMB2360
To: Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240529-topic-x1e_pmic-v1-0-9de0506179eb@linaro.org>
 <20240529-topic-x1e_pmic-v1-1-9de0506179eb@linaro.org>
 <20240531161433.GU1005600@google.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240531161433.GU1005600@google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 31.05.2024 6:14 PM, Lee Jones wrote:
> On Wed, 29 May 2024, Konrad Dybcio wrote:
> 
>> These are just some more PMICs adjacent to X1 SoCs. Document them.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> ---
>>  Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
>> index b7f01cbb8fff..a2b2fbf77d5c 100644
>> --- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
>> +++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
>> @@ -75,6 +75,7 @@ properties:
>>            - qcom,pma8084
>>            - qcom,pmc8180
>>            - qcom,pmc8180c
>> +          - qcom,pmc8380
>>            - qcom,pmd9635
>>            - qcom,pmi632
>>            - qcom,pmi8950
>> @@ -95,6 +96,7 @@ properties:
>>            - qcom,pmx65
>>            - qcom,pmx75
>>            - qcom,smb2351
>> +          - qcom,smb2360
> 
> Abel already added this in:
> 
>   dt-bindings: mfd: qcom-spmi-pmic: Document SMB2360 PMIC
> 
> I've made changes to the commit message to reflect it.

Thanks, Lee

Konrad

