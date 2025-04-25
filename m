Return-Path: <devicetree+bounces-170706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF25A9C112
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 10:35:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0E6031BA70A9
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 08:35:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64B8E231C9C;
	Fri, 25 Apr 2025 08:35:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OeRCwsOf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B5D61B6D11
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 08:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745570110; cv=none; b=AZtujJKI4TnqtowanIpBI3YD+zy03LAL3MkgxxxjN+35p11dpXFT+zN77KYv12c2d2E6ATR11Iz/PbhIBdLguqLGFZk4ZwMEFumtHREh4oqSPFE0SqaRcSZfIRFGdIU0C+xJlNoEbLlvgt/G3j9qCTSmxnzZndUFpVyCUUJk5EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745570110; c=relaxed/simple;
	bh=kTafQVInfgZE1CFO5s37dA0o4B8Xyn3K4GQ63U9KYqA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rqcEU4DRiIYzhqk1x4/MRAxLXSgib2YN+5hPR5ly1Zf9mlY3lfksqgIA4mKsdsXV/7K36/Ci1+eKhFgCeODPGILaavx4Eq1/B49MdmyVlpHRRXXMO5go7vIdxObm88DOWIV/9Ttcz8sNhEitU+dFi2GUfurgywAkYY1vqe207cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OeRCwsOf; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43cfebc343dso12682325e9.2
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 01:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745570107; x=1746174907; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+u8einId9BLaGDvz8um8Sc4lADMO7vEkfqq6FWkbjfA=;
        b=OeRCwsOfDSlQTRL1GpyBFom8xW1oRHEF9dsYVOaXhCKZS6I0P+T2fhnlS0vjmhBBcl
         /rEHOMJG1gvKFK9sP9BrVSXylOBI1HGlVDqmciGn4GCAP7BCLGV+4j//dc+djxePJc4H
         ZB9f80C7wrb8onPlprPDZ2xZQl1e9pwmkvEJk30R0eicfCsWwIS1CpaondI5ELgY9Kln
         GLC29osV4H66NyvXMRUD7avwXMf/bWk3dlinYwPtGBir2NK5SKPypgq03R52LigQS1N+
         t3Ttgg1MicoODUGSaRRECt4XuMuC8eX3TXidox6aqOAiCrYf7KtDSo5AXvrtck+1g8h6
         p1Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745570107; x=1746174907;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+u8einId9BLaGDvz8um8Sc4lADMO7vEkfqq6FWkbjfA=;
        b=Is8tb5TmwRUPqlzwMf1LwsbbsTrJIZ1Agiuv+XgaLUhqInZBXQY5pEAWyT6Ot9zNvi
         15hlPSxCkXrwgulJHX5vUsYIo6P/rOh3IURsR+vlFJMjRP5hEU5gSR8YpP+y3A41zBOh
         yz3gqjRQKfyHjIMISYFEuVTIaJZqxnVJ3Q5BrHHqxrl+Zayjf9pXNX10u+yzN16Nl4OX
         ozMUygx7AATFNODZQ8/KY36o+r0eoF04tYn26xkNXG2HvKly7uy8mKpNFAWLtAsVqugY
         jLJivC+TuMfObKbJHwLQf1e0Dr/qyDq5mDoF1m0bYeWzlJMkaN5p7cEscHGgbrJLmYNd
         DNuQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUpIWCUffcLurRQHrD6JWzKYhpTQfvCTLOjHY5OcZm1+clGum2VmmJoWL/4lUwDNUgD+crRTZU4Jbz@vger.kernel.org
X-Gm-Message-State: AOJu0YyiEuJCtckj79UTfWjYw74jeF8zpoiAI4UitMYSrkDQcIS96K9F
	3oz2rDO0yuKLpe9z4uC/GbM62HmXnS7t/wclLdqcV340QM+vd86zZz3unK8+Gko=
X-Gm-Gg: ASbGncuQfzJhMoHVk3K+1lBhuaHeElALWlHwnEjFZueIVyseszavvlaB+W75rLK8dCn
	tRp7jDpGNZsW9uXZDWdX3e5uXf8ZYTm9sruKp6qt1dDy3s1qcC2DulugLxmBGaRY+rErdDMEFt5
	tc2LWm1vjtuv5X4vf7knm7Qto5YFBbO0QIz6Hk0i5iMQC7h0I2ANOCssiKaaZAGBDPsP53WzlPP
	3RuW8fk4jn5JkK8wwgACflTxzqY2/ynB7vblNoImCSRjPLh5F8SCYn8DOxaWJaAWM+MYvEHwFaF
	H8eg/NSpAId5beT0XAun3B/M9ZI3C197z88Fla7Qaq92L2SCO93DO4om/JP58z5hVr+l8Huuy4I
	1G0Y34g==
X-Google-Smtp-Source: AGHT+IHbMaG/UpKmNGf2vUTKm7E0YA1Q3uH84FrSyUdv5AM2rW1f4hc1ymcUcyPYeZk5iuLyxezoog==
X-Received: by 2002:a05:600c:510e:b0:43c:f8fc:f687 with SMTP id 5b1f17b1804b1-440a66b034amr9285185e9.27.1745570106663;
        Fri, 25 Apr 2025 01:35:06 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2e0241sm49396355e9.37.2025.04.25.01.35.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 01:35:06 -0700 (PDT)
Message-ID: <2dd28ebe-f69c-49c3-90c2-aedc0484a00e@linaro.org>
Date: Fri, 25 Apr 2025 09:35:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/5] dt-bindings: media: Add qcom,x1e80100-camss
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
References: <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-0-edcb2cfc3122@linaro.org>
 <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-2-edcb2cfc3122@linaro.org>
 <3ec3fd62-bf21-47e7-873c-ce151589d743@linaro.org>
 <54eeb470-cd90-4bc2-b415-6dea1ce2321d@linaro.org>
 <0ab31397-580f-4e5a-b9ad-d9bf79d29106@linaro.org>
 <36feffed-4558-4e59-97db-2f0e916dbfc7@linaro.org>
 <krofzevprczeuptn6yfj4n656qsw52s52c7cgiwotidxmi2xo6@d3q5bb5zbccc>
 <f05cba73-6d8b-4b7b-9ebe-366fcd92a079@linaro.org>
 <lwv5pk3dtyyxgtrwxss43dyecesv7pvrzvgwacwrnztkiowfkp@jqosvhrs3jk5>
 <42b56d7d-26cc-4c10-aca2-a0a5a16b09f6@linaro.org>
 <3kprgpvzffupnjbh2aodsowwklliywpemzwpsftd2cng562yuw@37tpwmpemr2c>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <3kprgpvzffupnjbh2aodsowwklliywpemzwpsftd2cng562yuw@37tpwmpemr2c>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/04/2025 09:26, Dmitry Baryshkov wrote:
> What should driver do if:
> 
> vdd-csiphy0-1p2-supply = <&vreg_1p2_ex0>; <- individual supply in PCB
> vdd-csiphy1-1p2-supply = <&vreg_1p2_ex1>; <- individual supply in PCB
> 
> vdd-csiphy0-0p8-supply = <&vreg_0p9_ex0>; <- shared pin in the SoC
> vdd-csiphy1-0p8-supply = <&vreg_0p9_ex1>; <- should be shared pin
> 
> I don't want to allow DT authors to make this kind of mistake.

I require anybody submitting patches to show how they tested this.

So you'd have to lie about testing it for a mistake like that to get 
through.

---
bod

