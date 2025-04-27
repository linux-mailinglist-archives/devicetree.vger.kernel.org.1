Return-Path: <devicetree+bounces-171321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AD3A9E4BB
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 23:52:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D5AE07A8292
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 21:51:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 284D11F4736;
	Sun, 27 Apr 2025 21:52:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TzxNj1Po"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4B71DED5B
	for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 21:52:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745790755; cv=none; b=myklzf8gr143TcBO7Kpvua8O+xzfxlfYjH59MRwjsJXgHLwV0IyXU5QsZX8P8FY7SR3/6s6lUIwJlcYO8DIEJjfnBAnJWGRBTSCm+N2uQSkN4buWpfF0Em/FO1VOecM6syD6vBhc47YPLjikRW/mb2aDcEcPnSckYlIampgp2TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745790755; c=relaxed/simple;
	bh=NLCEKxqfnuKPb5qhY6v1wHEJ3q7ORDM42IQIZbtYrhM=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=MSlaGV+aM4XTXnvUgvK9wb0HJW5j/6dDyLJbAJtw3SGrt0/t7823VTOOqN9lIcRBF/TESxCcbxtTt7g73NbHUAs7yp4y8b9k5Y80fpABBwCpM/Wln/vHsffzpHbqET6KbS7K/Educrok5hyRRNITohYZHQ4eKNHIRV11Bkj5zng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TzxNj1Po; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43edecbfb46so26610015e9.0
        for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 14:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745790751; x=1746395551; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zP6Vr5wl96BWIJPHe0GcdZz6u57VK+LDg/4JZWIexRo=;
        b=TzxNj1Pojr7RTolJ10dsd6eT9YAdZyQxrutENJJtTaFcL6dnXfl2VfA4flUmLn9Y6O
         IA2VCJesCJZ0o+FNl+wc9PuCLi34SD9SM9htndynSGPDlZ1Y3HT/euRXNKqpBpRBtb2T
         vwvRk/PjAin6KorHfoc7H/nqoCt8FNBe4kkusgjQzSXLTftuBp5i+Ovj9oJwkKGKExl/
         GZ7B8CSBSSKzmf/0iRmqlodqsmBl2yjn+kpE98m5NsQr/93xFj2je091lhtW7kPQJAHO
         V1gpn5Udyuij0schJhvNotXZCFyUcr2MLZHg5T+upNOtdCd1MnrkQebwgFNRKF2RH/tC
         TEYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745790751; x=1746395551;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zP6Vr5wl96BWIJPHe0GcdZz6u57VK+LDg/4JZWIexRo=;
        b=pRi5EerZMJLfvkuQWOHKvoRHT9zf22ufa7w1Aic9mw9WA89qFLaTq4hAT/Lp4E3JBy
         QdKUkkazZLjL2K3LkrPLqBTmcgtVQEMEpXgPWpWjU5ApzkS5pxJppMrTGIx8vz4eQGLp
         /jLJfe1AVl0nTLY/RnFG3qY8jEvfoVV7rmUu6uq2cNtBgDaWyWX+aawwrJZlE583pvHQ
         NuNe3inaGj7q82133YjaQ7Z8jcHBjZBLMTjnP8GcRjmaIBsH+X7rMwEXGD6XC9mlzMTQ
         chFdTfGCkUe9i/LLXAUalnmnFsD6Ol7Vnt4P64+S91hNBw6vol6NXVMfteIw3iXmsNOy
         M4FQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJpEGBDrQjLH4xUNM9Ll5/TaPCt1EYKam/Kq2vtLw8a/+R5IyVNnsfVToHX5TB0IaVaesDCTxAEi8b@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9O9IxLm3P4VickfWcxcKxZ8/gaaKJ5sdNkc7ejdgxRAWrWb2X
	+88xII45WoAnCO8K5LpmPpr1OFIAgOmclRYZO5/vvDUTB/mRWrQzQt5UNuVfUhI=
X-Gm-Gg: ASbGncuoBtBNs1EEKXdlka0LYuFcl3irAYpmQ6IVqLsLT+xqle9D8Dhx1+0ly/0d+m2
	Xn88zHSRgc/bfjaC/mzIn3YFiG7HYx099hbATXrLSW0uwGSBJdN9vL2HpH5kdF0r/WGB6IIQDQz
	lEK1fYmlmylpTphxkgK89yRrlaCi1Vimc00MWwxG05NO2IHPZGUJE0eJObYAm9XTmGfZWOlW6UK
	ZXVBVLPezrwuW6rox59iysbWgtDswQF3MWKfjBTn5fF9dwvdn9XUToKWzxrnMx0lfsZQkj4yrAl
	JmQUgZ7oz06Xk5QqZFK6hsTGf0+3ptYGgwKTKTsN/DFe/WDKJg4GJXlGbti7o/RaQicAfBKREJN
	JpDS3dHhdH59xRsvk
X-Google-Smtp-Source: AGHT+IF9NtTwXVCry4ECIh7ifDI7xSXFecW32O3JGgQylC/n1HXWQ9lefOctYA70jHd9LbL7GdOPxg==
X-Received: by 2002:a05:600c:1d8d:b0:440:59eb:bfc with SMTP id 5b1f17b1804b1-440ab848458mr54631495e9.23.1745790751367;
        Sun, 27 Apr 2025 14:52:31 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2a1544sm138759515e9.11.2025.04.27.14.52.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Apr 2025 14:52:30 -0700 (PDT)
Message-ID: <fcf5eb3c-a2c4-41ec-8c6b-d8aee5a9f906@linaro.org>
Date: Sun, 27 Apr 2025 22:52:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/5] arm64: dts: qcom: qcs8300: add support for video
 node
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250424-qcs8300_iris-v5-0-f118f505c300@quicinc.com>
 <20250424-qcs8300_iris-v5-4-f118f505c300@quicinc.com>
 <47dtgkfqcpalixg36vxcurkmh5z52kdp7rbcvwl56wsyjsisdo@ylmmrvwde4nz>
 <d8db0361-b8d9-4ed5-0f92-f66f280f62e6@quicinc.com>
 <00fb511e-80b5-494b-acce-23093932c4ad@linaro.org>
Content-Language: en-US
In-Reply-To: <00fb511e-80b5-494b-acce-23093932c4ad@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 24/04/2025 13:20, Bryan O'Donoghue wrote:
> On 24/04/2025 11:28, Vikash Garodia wrote:
>>
>> On 4/24/2025 2:51 PM, Dmitry Baryshkov wrote:
>>> On Thu, Apr 24, 2025 at 02:20:48PM +0530, Vikash Garodia wrote:
>>>> Add the IRIS video-codec node on QCS8300.
>>>
>>> Nit: you can not "add support for the video node". You can either add
>>> video node or add support for video en/decoding.
>> Makes sense. Will wait for any other comments, before resending.
>>
>> Regards,
>> Vikash
>>>
>>>>
>>>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>>> Signed-off-by: Vikash Garodia <quic_vgarodia@quicinc.com>
>>>> ---
>>>>   arch/arm64/boot/dts/qcom/qcs8300.dtsi | 71 +++++++++++++++++++++++ 
>>>> ++++++++++++
>>>>   1 file changed, 71 insertions(+)
>>>>
>>>
> 
> Unless you get another comment, there's no need to resend.
> 
> I can fix the commit log for you on the way in.
> 
> ---
> bod

Oops this is isn't one I can fix for you - dtsi.

---
bod

