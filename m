Return-Path: <devicetree+bounces-158754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A75A67F13
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 22:49:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 030FA3B7B01
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 21:48:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9724420550A;
	Tue, 18 Mar 2025 21:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cfhtXEwu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25B81F0988
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742334526; cv=none; b=WRXqBL0aOqY1JiTaqxZFq92Cc3P/2WdJv5BUAga8ZvqRAsBbeYFs5z0H5K2ose32BaEp+YCQxXV58jGLGmdrk4GHrI32hZVdzpRBzyb7ibQEQmhUrOz9uyKrwfsIoo5rSGZPYTpQ+4TZEo9PdwFJjzzCmIG5e1iQb1A4DmmP0aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742334526; c=relaxed/simple;
	bh=9QWi9Jbu2T/CyKwbiyJQWuyZbY48B9JmNpyjsuhsu70=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MhwHtqMbIb6tdPLSVzqY/ZqQ1Bt5SO90yrn3fVzf+hZoAmt9ua+WgvX94nKhEdStjvcZVLlxmWkeP3nEMNT+d1faUjXQiPlf/dkNzGcqpLf8qxlPcaszX4YMNBsC92qaRtuUl83U4qE1hSL1WV3gzf9+/FiM8HQTk/Rr3eDq+6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cfhtXEwu; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ac2aeada833so20952566b.0
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 14:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742334523; x=1742939323; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=duoNyUPDpZ35AJzrwQXSbOfWB68wwqzf/wrWJgrnJcc=;
        b=cfhtXEwu2LdGKmKztXYwu9hsns9j6UgYEwbAQuhomB08WLLs8Rk1jQQ75ymRgIpUev
         Ec2lHjJu42hoRduOq0sKg2ZO4kD3lh8FVIqC6qQ74Ca286iZGsg/cgo3cE/Vj/onLc3T
         8iV2an/UN00eyCtRs0JTlY1yvXcbd/Z6MRVlrg1cWlqPCYbnxhU0yy2OjE/QIj1xNvab
         dibQljxjX95KFclCUeSfR3wyNHVEHqiuW7WW8LBOjs4g3UK8rcQri3XxnyjozkuUmX5e
         4g9mwveFRzoYatgZQV6ewoS3+kjulVr7/gTGIH4d6xB03geaVyhoMhf/xAXxDlblzwWL
         5yqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742334523; x=1742939323;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=duoNyUPDpZ35AJzrwQXSbOfWB68wwqzf/wrWJgrnJcc=;
        b=ewc3poz6GmQJfJ0zvPRsatX0MaBPNWBSxQdVvGCP9Q4RQuZ0zsPo2UmM67Lm36uXXL
         5cBbnZxs9+KlGMmmYYL33vlo0CFmzN+YRNVZ1Kx4l62A7KnCwdmHqe/nxpl8gHaTKFk+
         lpvL9VIT7r1kUFGsLdQOxtY6YDA9cuABgK7J23ESpAX2sz90aqc/fZyWHI1lu4AA9iaN
         T0QM/dOlPlYoQ0Lrc88tHJ/pTdwyndVfe20o5Pq0EzdSo7WmK8izSFVsF9YCi216ONZL
         2XPIczgQsuOmok369zHdavYo4pVBsVFYXGbiJoGh5NDJOo4qaH34tASBJCLbC5Ik0Pxk
         ilNQ==
X-Forwarded-Encrypted: i=1; AJvYcCW56W1OoSwsyrgTvOsBpdZqrTrbByOQv1AtvJqnoVp1PUFXyf3phsrAteEoV+rOfp/6aK1EOOS6FRud@vger.kernel.org
X-Gm-Message-State: AOJu0YxkGnW427jLmM0PksQeQl3s96U0z/YEuCxMlsrn9RqgY3IK3PMG
	TxT5W+cuhPvr9N7QEBL4rLDGaAgqlr9YX8Nv32jPVj8cBFrDp/CjKiz9sHZeJfM=
X-Gm-Gg: ASbGncskeZAyy1SXf6N1h//ttCN9SoF2tH+WgLvrL6krSCug4i+BDBpvb2Dme6TFb2P
	k7QvA4URuvgbWKT4KGsSLA4nAEehhj26Zir5KGkkpnr5k7/Sdogs/dewiq+F4XLvCnqlvSbq+j3
	60t3fIOr3HOElBWN5N0YERcvjSfj7iuQitquYiEEQeYYg1dPHTHMzJnuHpgOpkqXLCvMqiA6iFG
	AIxzr7sBm2qJT3cn5Yd2ir4iMtZBKBJ15B8V3BiU5bGDf2bBEHCuz4HtZpi6hwNFjF8RexDQg6N
	ziSFI4QTuhHefFgohBfIHBhNxN6mttombep1QSdtnJ85ErCudkIxtlbzJDssSWuTzkZrhGw27lL
	uX6AM+OeZgwatFWcrPIbnpUQJP8iGq5TIWfiU+WXgj2Tt+grrAGlc9mav4qmP+QLF0Z9+/cSAJp
	SJzAYpSSEX0ksTGNbUjY9P7yLo/3kmmm0=
X-Google-Smtp-Source: AGHT+IF06W/HXbWDQcnvIov2Jj/jxhVUXmUlc3LWIaSEPfb9UpbLNwCGC29SRRaa+u05btkXLemWAA==
X-Received: by 2002:a17:907:f50a:b0:ac3:3e43:f451 with SMTP id a640c23a62f3a-ac3b6abe286mr34843266b.5.1742334522980;
        Tue, 18 Mar 2025 14:48:42 -0700 (PDT)
Received: from ?IPV6:2001:1c06:2302:5600:7555:cca3:bbc4:648b? (2001-1c06-2302-5600-7555-cca3-bbc4-648b.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:7555:cca3:bbc4:648b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3147ef34asm921171966b.68.2025.03.18.14.48.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 14:48:42 -0700 (PDT)
Message-ID: <b1ea0500-595f-48d6-9358-649c25fd4ee9@linaro.org>
Date: Tue, 18 Mar 2025 21:48:40 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] media: dt-bindings: Add qcom,qcs8300-camss
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Vikram Sharma <quic_vikramsa@quicinc.com>
Cc: rfoss@kernel.org, todor.too@gmail.com, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andersson@kernel.org, konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250214094747.2483058-1-quic_vikramsa@quicinc.com>
 <20250214094747.2483058-2-quic_vikramsa@quicinc.com>
 <20250223-observant-auspicious-basilisk-d78ba9@krzk-bin>
 <66c35bce-c657-4c12-ad02-58c995ae385a@quicinc.com>
 <f2899540-f9ac-4013-a703-25800429f97d@kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <f2899540-f9ac-4013-a703-25800429f97d@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 18/03/2025 07:16, Krzysztof Kozlowski wrote:
> On 18/03/2025 06:52, Vikram Sharma wrote:
>>
>> On 2/23/2025 5:03 PM, Krzysztof Kozlowski wrote:
>>> On Fri, Feb 14, 2025 at 03:17:46PM +0530, Vikram Sharma wrote:
>>>> +properties:
>>>> +  compatible:
>>>> +    const: qcom,qcs8300-camss
>>>> +
>>>> +  reg:
>>>> +    maxItems: 21
>>>> +
>>>> +  reg-names:
>>>> +    items:
>>>> +      - const: csid_wrapper
>>> Why different order of entries than sm8550?
>>
>> Hi Krzysztof,
>>
>> Thanks for your review.
>> I did this change to address a comment from Bryan on another series.
>> https://lore.kernel.org/linux-arm-msm/e152ff78-caa5-493a-88da-96a6670eb2a2@linaro.org/
>>
>> Please suggest if I should keep the order same as sm8550?
> If you chosen the same order as x1e80100 then it is fine, but that file
> is not merged so it is your responsibility to track any differences and
> be sure whatever you send is always in sync with x1e.
> 
> Best regards,
> Krzysztof

My mistake, I hadn't realised/remembered what we merged for 8550.

Vikram, please follow latest committed example @ 8550.

---
bod

