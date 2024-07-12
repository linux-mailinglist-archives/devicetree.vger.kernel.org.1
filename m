Return-Path: <devicetree+bounces-85315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDD392FA19
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 14:22:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A47CBB22372
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 12:22:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 479A116DC3A;
	Fri, 12 Jul 2024 12:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JHcOaI9u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E0E316DC09
	for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 12:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720786954; cv=none; b=JsDSLfaHUzEnOWE/ah4ozV8LUpZ8hzd+5oK6Pb7pme1UJx2A84QcBKyESulHhhJCDrZU61L+FAuQAC11d73pDEgH+AvuJBlQj1p2/XE0AK6af9/5H0T63IrP7u7BL0ofYrKo/SAP/R12sfYOFY69vEYk2Q/FuxAABzDtvCD9+yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720786954; c=relaxed/simple;
	bh=ndh8+cmiTmrlJG6pBn2MdCEewaZhfKn+jDdb2M86r7o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tXYFgHiRDACKnmDoeRSn7aYdQkMVQ011H1P8UQR1EYxPc2nBJATQzPWI17xfSe00vaRcuBnQ+FSXyEHqDC0m1gkzK8aC/VxPjvphQRul2YK3xOEEvshp+NqKn+wbObpOj/x7jZqmdQa6kPs4YYNv5vB0cZa4BSOpLJd1N8z7rHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JHcOaI9u; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-58b966b4166so2409600a12.1
        for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 05:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720786951; x=1721391751; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=PsV8xHFAWYzRcbpc0Ef1sOYCY8HDad4uEnIegVbVHc8=;
        b=JHcOaI9uk6WqyvUslKrGuXkXC/iNH2/ETsks2fKiWCPRRoW73juyKnjQ+xD1maC8Y+
         fvLTW9NrOlXhn9c7maLDyw9DG8VmGiHOqjW9U4LnUC+kRRAcQpNmqRxGNDk5R8HGBX2g
         KltlJvtSUA3lRaTOaOVK0TA6ILuIloNmYtcZ0l8OyELVnMujpoPjXUq31XRg8XAlEoGU
         o4S+7TKpqVGx1PnumI/QAAVjeM2QRGkWyfdcmclgwDtuE4GiG/8rZYth2ur3hzHXMRtc
         ziHnMJ3mUB4ZTu7xyUgMhrMeklasUgbvqcgFCln1JMuMiwwHNcpcsGKWZBIySfir8zgs
         NcKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720786951; x=1721391751;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PsV8xHFAWYzRcbpc0Ef1sOYCY8HDad4uEnIegVbVHc8=;
        b=KZhfghRdNOoVvCso3IitdXaztFEVAuheDFYLFoq+N2V8YPyEywgQW6q+TFyMcAISc9
         s/Obe8WChoEbow+Mq5e5E8bymSWTML7ZXQK7+EiBV2TWKR7HuAAYHgyNcNQi63or3vXo
         gGWQAdDN/9D0B9HAqBO9rQyPy9TbaNZIqEajg6UnEa8ZWHZuNNwwOosMXntyE6CEhiQF
         Q30rZsdHsq539JR3/NdHq8LeB3xA8tLT7F+v/xIsZ7L6we3ZOom1fdvTso/SWUOlp3pY
         +XAceTGDOTKNZraG51OUDVDEgDGfuB/iuiUmwvuFwe5PExj4KhtdPBltPrZPhWCkm+tj
         l85w==
X-Forwarded-Encrypted: i=1; AJvYcCVZi07afHEhCQNuNXoEDVznFaMwr0YZbOLSb+Jv1g5bq+RURGD46h6rSPV8FxeNC6A6GGNC4EKQRaU1PYEoGQBVDfkCDZDwG800mA==
X-Gm-Message-State: AOJu0YxMa6MvCzgarcoMaGZk8iUr4TElxBsGgVwfXV4JRI//Ob/fe/iB
	s1QN9l8Xwr+wFRwFOWcVqS3/b48eb3k8pyFottQe2ke9Sg7T/2YjWshr7I3iamE=
X-Google-Smtp-Source: AGHT+IFEW92C6jkuYK4GmK7kAHGgYMU+sl8qqPgOsPMuKMLNFoXSimzJQApUK+Hemh/ZiAiRy8Ft/A==
X-Received: by 2002:a17:906:f592:b0:a79:7dd2:5b99 with SMTP id a640c23a62f3a-a797dd25c52mr633458466b.28.1720786950649;
        Fri, 12 Jul 2024 05:22:30 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a780a855e24sm346648466b.177.2024.07.12.05.22.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jul 2024 05:22:30 -0700 (PDT)
Message-ID: <8f7cdb31-c50d-4690-b878-518bad545612@linaro.org>
Date: Fri, 12 Jul 2024 14:22:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 8/8] arm64: dts: qcom: sm4450: add camera, display and
 gpu clock controller
To: Ajit Pandey <quic_ajipan@quicinc.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Taniya Das <quic_tdas@quicinc.com>, Jagadeesh Kona <quic_jkona@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
References: <20240611133752.2192401-1-quic_ajipan@quicinc.com>
 <20240611133752.2192401-9-quic_ajipan@quicinc.com>
 <76f5e3c7-a90b-42d2-8169-e5e2211a14a1@linaro.org>
 <ba7d12d3-c582-45ec-beed-e81182fe3252@quicinc.com>
 <95a835e2-9fd9-467b-bd0a-8eeb80ddf678@linaro.org>
 <9c3de930-47b7-45a9-bf7e-6e506ea2accc@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <9c3de930-47b7-45a9-bf7e-6e506ea2accc@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12.07.2024 11:53 AM, Ajit Pandey wrote:
> 
> 
> On 7/11/2024 3:25 PM, Konrad Dybcio wrote:
>> On 3.07.2024 11:16 AM, Ajit Pandey wrote:
>>>
>>>
>>> On 6/13/2024 1:11 PM, Konrad Dybcio wrote:
>>>>
>>>>
>>>> On 6/11/24 15:37, Ajit Pandey wrote:
>>>>> Add device node for camera, display and graphics clock controller on
>>>>> Qualcomm SM4450 platform.
>>>>>
>>>>> Signed-off-by: Ajit Pandey <quic_ajipan@quicinc.com>
>>>>> ---
>>>>
>>>> None of these nodes reference a power domain (which would usually be
>>>> CX/MX/MMCX). This way, the RPMhPDs will never be scaled.
>>>>
>>>> The current upstream implementation only allows one power domain to be
>>>> scaled, but that's better than none (see other DTs for recent SoCs).
>>>>
>>>> Konrad
>>>
>>> SM4450 doesn't support MMCX and CX/MX domains will remain active so
>>> power-domains property is actually not required for SM4450 clock nodes.
>>
>> It's not only about them being active.. some PLLs require e.g. MX to be
>> at a certain level, or the system will be unstable
>>
>> Konrad
> 
> With active I mean CX/MX rails will be default running at minimum level required for clock controllers. Adding power-domains property for CX/MX rails is like a redundant code as that will also scale such rails at default specified minimum level only. Also we hadn't added such property for other targets DT nodes to scale up CX/MX at minimum level.

What I mean here is that, the minimum level may not be enough. In such case
you would also add a required-opps = <&handle_to_rpmhpd_opp_level>

Konrad

