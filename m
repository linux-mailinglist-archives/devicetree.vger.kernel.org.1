Return-Path: <devicetree+bounces-133601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 613639FB021
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 15:39:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B1BB31694E2
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 14:37:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C7291B21A6;
	Mon, 23 Dec 2024 14:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JMgV0k0g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421DF1AB6D8
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 14:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734964163; cv=none; b=nq5E+zfXn+NwVOwUyV9ZDR5lqnrKDVew0B2zvvgygJo4X8GZRsLvjjqreDNYg2gJys2eRYQVbdSzX97em9YRAnkKZ3Zx0/bKG1q0RwDdzoFzUYccze+s9n38hD+l9uEajc1IFbsEiGfOGHuG9z0mNx+EwtGWYJHgNCoI2a3fY+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734964163; c=relaxed/simple;
	bh=3dE+v4WYfgRHxcnqxklNMpWjQCmXMlS4tcHU3d80DeM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Zoq9cyqFjZXU+IlYDTpXvyrt0Akwl/SQsxIIr6bEVMq6YJIRaW/s5k8dJjJizxVKzYYdmALRbJmHpDuxO4sQHJDRVE3MEIvKihKBfAE2NzEWJg2u7nnQQxxm13wVj1bmz61v/kCQ0Gs+zUEDf6IGlq3wSrzdUP8Wf9d1uSwtPbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JMgV0k0g; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-aa67bc91f87so72705666b.1
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 06:29:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734964159; x=1735568959; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=rAqh6NsKdsBvHtpB6DSARs5FP9fo+coyC5VCCTaBA+I=;
        b=JMgV0k0gpeAH+HuGcUZAfN2j+zRCOU48s3dE+uBrXG+j9Wwh1PoGxGlGRZSGCVV/Kp
         cNtgDQs/cZ2Rfo+OOfAUAGHnBIXXBog6MkaEaVwuAcK+kTRuOBoWHjVnd3eC2nZ4fxeE
         6nX9vCLASc45pz7TSFI6uXuJi1+rA6HPrG/s/VjYJxCD59/R2B6TGy4BWpGtCD0mtB5G
         ZJpwSAPJsY8fVddwiOhgNznkiocI+9+JOVoghEqNtZ3fD8zRrT5rlchsZbWDPgnFE9q0
         YuwNsm2GftFXYz86EeR5R/pZLM+yn5BKVsXPF8z18iGNQZ6QIarolmT3R/9VZTHDLjdl
         hYvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734964159; x=1735568959;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rAqh6NsKdsBvHtpB6DSARs5FP9fo+coyC5VCCTaBA+I=;
        b=Wgd5VOLtTF6OiDuVYm4NAh9gNBNSKUlNlXO5FH6+MWas1BxXkxBgjZcmqpuITu8nFj
         Rxounvt7nBnzVJbJIUcwDd7bH1RYasSr9Ul+nX3NqRu/7fzacqL/cdoJa36RWIhHSL7V
         dtqRP5q4lGX2jE4usC+2XbJqc3IZeJRS5y3JO0q2iotM529rgT3UKPIoXn/I5HJQRWSg
         75t9sbtjd6LUmXM1/me7QgR0+JheWp7Okm//7dawsXZ7cueOjbj+0Vw9TpEJI1840taS
         e2IdCUV3G3XZZbc6/Jx4ROSLk/GL5gleaQ+T3/Fu9VQSb2D0wKj0V+V4ca8E8Mf/utAF
         aZ8w==
X-Forwarded-Encrypted: i=1; AJvYcCWMoySYQLW6wkjd906CfSUwHW1foEvkipQpzHt9bnUrn2+alIrOIZMorZqel8C/D7Yr0HdKwIg57FbS@vger.kernel.org
X-Gm-Message-State: AOJu0YxBwOeOWqt1yxzpZNdsvWZui6+2XA/GFkt7+URf10/L5P9EaO5T
	b8BzSUSYAzljOoxmsbsg44YJ3Ivf/DfZgVYS560dx0J418NkUdxhCO880h32xZw=
X-Gm-Gg: ASbGnctgnLJY1pffEDNYqUrvr9KkfoKdj4202MTOWzIKhzbJKeflfIJGKTboHUC1riq
	uge4D0DuSsLG9OxqCIag3EDO1HRKZWYFjjS9d47Hp81LI5rKX3n8D0zerPG4ifbBVgFhzEXTIZQ
	0d2mqgRbwEUpFWcpla1uut7uSWed5fBa6o4jHuD7qE8w2fVYQoij/cgeD+v4OOhU7oOmIi71zjv
	xz4BUzXczFW6IpAd0iSOlBlpPXF2Y3x0eiOrnYE8dksBPDmu7HXmSURz5PU0DJfrM2FQIl7ahpR
	qsnhO/qgpr4hCroWc3jOckQLhCZyPYooX5c=
X-Google-Smtp-Source: AGHT+IES4HUmfaeY6ZkeJTU754L2mw/EvkulWr3aXvFlT4FFq2qQHLD9E+gJayvkPqjmyM0HmPEuZg==
X-Received: by 2002:a17:907:3d86:b0:aa6:6386:44dc with SMTP id a640c23a62f3a-aac2714a13amr469215966b.1.1734964159412;
        Mon, 23 Dec 2024 06:29:19 -0800 (PST)
Received: from [192.168.0.18] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f015b1asm525192966b.148.2024.12.23.06.29.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Dec 2024 06:29:18 -0800 (PST)
Message-ID: <766c50ca-cd2e-4d88-83d4-dd1cc2e0adda@linaro.org>
Date: Mon, 23 Dec 2024 15:29:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 00/23] arm64: dts: qcom: Fix remoteproc memory base and
 length
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 "Aiqun(Maria) Yu" <quic_aiquny@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Abel Vesa
 <abel.vesa@linaro.org>, Sibi Sankar <quic_sibis@quicinc.com>,
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20241213-dts-qcom-cdsp-mpss-base-address-v3-0-2e0036fccd8d@linaro.org>
 <94a6b2ba-fa52-42d0-a60d-9dc31e37057c@quicinc.com>
 <253e7889-bef4-453c-9f39-19ba0a6dd5b0@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <253e7889-bef4-453c-9f39-19ba0a6dd5b0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23/12/2024 11:52, Konrad Dybcio wrote:
> On 23.12.2024 10:21 AM, Aiqun(Maria) Yu wrote:
>> On 12/13/2024 10:53 PM, Krzysztof Kozlowski wrote:
>>> Changes in v3:
>>> - Add Rb tags
>>> - Add four new patches (at the end) for sdx75 and sm6115
>>> - Link to v2: https://lore.kernel.org/r/20241209-dts-qcom-cdsp-mpss-base-address-v2-0-d85a3bd5cced@linaro.org
>>>
>>> Changes in v2:
>>> - arm64: dts: qcom: x1e80100: Fix ADSP...:
>>>   Commit msg corrections, second paragraph (Johan)
>>> - Add tags
>>> - Link to v1: https://lore.kernel.org/r/20241206-dts-qcom-cdsp-mpss-base-address-v1-0-2f349e4d5a63@linaro.org
>>>
>>> Konrad pointed out during SM8750 review, that numbers are odd, so I
>>> looked at datasheets and downstream DTS for all previous platforms.
>>>
>>> Most numbers are odd.
>>>
>>> Older platforms like SM8150, SM8250, SC7280, SC8180X seem fine. I could
>>> not check few like SDX75 or SM6115, due to lack of access to datasheets.
>>>
>>> SM8350, SM8450, SM8550 tested on hardware. Others not, but I don't
>>> expect any failures because PAS drivers do not use the address space.
>>> Which also explains why odd numbers did not result in any failures.
>>
>> In my opinion, the "QCOM_Q6V5_PAS" based Peripheral Authentication
>> platforms may have the register information completely removed.
>>
>> There are two types of Peripheral Authentication supported:
>>   "QCOM_Q6V5_MSS" (self-authenticating)
>>   "QCOM_Q6V5_PAS" (trust-zone based Authentication)
>> For "QCOM_Q6V5_PAS" based Peripheral Authentication platforms, use SCM
>> calls instead of the register-based mechanism. So it is no need to
>> expose the PUB reg addresses for those platforms.
> 
> (Unfortunately) not all boards using the same SoC have the same
> firmware stack, and it's not obvious that self-authentication is not
> useful. Plus having an accurate register space description in the
> DT is "nice".

... And still a correct and complete hardware description.

Best regards,
Krzysztof

