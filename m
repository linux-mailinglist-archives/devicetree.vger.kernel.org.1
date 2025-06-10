Return-Path: <devicetree+bounces-184527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E440AD448F
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 23:13:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CF2D0189C8C7
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 21:13:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 603DC269CF0;
	Tue, 10 Jun 2025 21:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KwXFrcy4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BDE22741C9
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 21:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749589992; cv=none; b=r2bHF6K1uZ9usINvGP4DPe7aPcNZ+jLHSxTYEdPqHg2QgBeqHkNRX+dXPXQNXd77LtDxxO0igmifOe+OySx7zKrn2umUED5Zh/7MznPF2bjTuuqEQTzbia6ZrMCWCFDECRxDVfISYfttSFdxqiKUUle8Vkdm09tkaCjkQ8a5EYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749589992; c=relaxed/simple;
	bh=LKWM/AKNK8qV65zQK7Jy6+2LGnIoiSxOh8JQeCjGVoA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Okb1qfxXfRK+I5yirtqOBBu2kdF7GUiVZJ8Ae1DxhWsumXXNjGYwa0G4aUl3yLJIRpV0vluaIaG6Btn0FB/09iv6wDr0jgZ+atZnUnf1IFOrJXb9IWoGMouQHh9eMOqiJquNemvTxQ+eL2Q5nfHDlGtT7E3wDeV6FhHLizAx84A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KwXFrcy4; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-32a6c0d613eso5819381fa.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 14:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749589989; x=1750194789; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+Jm3QNJuhpnWPil7MXWGSQJymiOAg47jty10YrAXHYA=;
        b=KwXFrcy460yCn7r6faVdnqJ6U2Ht5DCc9sZMY/Xui2HztaOriVCYRN6MG0NRyVpt4N
         Z6j8IP16+UQXuLlWPk0CuzUxfcQWlmi2qxfp30YBIyWb5rS0McZ1Yz7uWMxz+7EPLQH/
         OVUpo6DfgMehivtbVBhZmkUWGrR6q3usOyHZel6VoXoP19rcybLalrk/UVb+KOB4vJhm
         FnSWilA4xgqLuKTXcDlwTsXUzbiwrLoQH+wRZvll5lT8WUj2xo9B1mSNKeX4wXl3J3xS
         EBgIubWNU+ytE7DQKWYmUegbQ0lsOp6D4Slbgx7T3PvhCbwXE1/TrmI9J64CqkT6hyV5
         JsBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749589989; x=1750194789;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+Jm3QNJuhpnWPil7MXWGSQJymiOAg47jty10YrAXHYA=;
        b=tOudWvuCu7TUaOZgk+ZeMpXnJIXjNpG4ist/QUMJB1sstZ/oE13tEUNd3y1E4ynlb4
         8w6hbgh7ONBYXtIfe+sXoyY1AXHOzP7CNR0f7kcbMh2DmZbuC4U2Qxxe+otx9HAc+5nl
         SETn13wslcIc5rgDqlLIQ4GSZ4CgAvRI35zMyUw+dY85S5k30BDxH5ZNwbxV+iv6OxAV
         Vq0TZwDdpc4OhODthJ25KP/i6Zrso6YaplrQVpzCIE7K0lALxLp88vDAluUGoSuQ+3bE
         taZ5Q8z52CcysGNMv88kB5PwqI9cz+dYi4SA3S4nP21g/whI30QRxoCR9Ba97hGmlkuO
         WokA==
X-Forwarded-Encrypted: i=1; AJvYcCWbv7OFyQazBbFUasIoSUZJ9hoH8N8IkAebL0AuTGuCt0nAKXAVN7psTrjLvaFImCjp/pHR5KKM24z3@vger.kernel.org
X-Gm-Message-State: AOJu0YwMg5gQr4YAWQ8/QW2WicEWqj7o+7ysndsofWGUnoCTQ2hg92ps
	B6Xe0H/RFWRy5QxFK8wFDW6g9e9RZ0wdFzhgelHw6Qwr9RD5RGv9wrHef+QFD4AgFGY=
X-Gm-Gg: ASbGncsLSpS9NForVHBgTRtKZAGMJwbmx9uLanRYSwPmkKfDZ+8I0MjOR63MSPkgqDM
	x5dhsxiRuc8dU9VcQIBRZSHdpAX5OvrftBBkbRA9cQnD/T8TYUhvJelQWD0P3mudoqi0/almg/b
	Smv2dZ/8mQ3kQp1AlwDbxUUpa+HX3I76atC624KYMFLSRRpt3KFMjLJtPBbyNHb7fYB1qC/ITEd
	AqyRqxqRxfsjJ+QYqiHbgi0Z/YzQpSRwyzx75FCYKK5Gx3YZqkQx29mT4V869xn+aycPZgDheDD
	qvCgWDDj7e+bEvzKUImQn9bJQI3T3nL0m3b4LMDHHFtgX9j5eleVZCl71Wjrynh+L0G60IsLh1g
	FIdApHNo4rx3glqPTFGg3Srg1LTLQFdrC0qgP7jDu
X-Google-Smtp-Source: AGHT+IETS+TB0TrvfrEPPA2p4kx9c0fT3yVUwc0NfXrGV2E7vpHmY4Len4elBMuw0mxhWpUCsDohWQ==
X-Received: by 2002:a05:6512:3daa:b0:54f:c51b:d828 with SMTP id 2adb3069b0e04-5539c0c55b3mr101719e87.4.1749589988651;
        Tue, 10 Jun 2025 14:13:08 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5536772a9d2sm1710622e87.186.2025.06.10.14.13.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 14:13:08 -0700 (PDT)
Message-ID: <b4a7aed0-a05e-4d1b-965f-78e0c5e0709b@linaro.org>
Date: Wed, 11 Jun 2025 00:13:07 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND] arm64: dts: qcom: sm8550: Add support for camss
Content-Language: ru-RU
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Wenmeng Liu <quic_wenmliu@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, andersson@kernel.org, konradybcio@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 quic_depengs@quicinc.com
References: <20250516072707.388332-1-quic_wenmliu@quicinc.com>
 <0367d5bd-a42e-4b6c-b841-ba20190b3127@linaro.org>
 <dc4720a8-2f15-44aa-9a52-8440c7518328@linaro.org>
 <739bad1b-f26d-44a6-9cc1-eee28023474f@linaro.org>
 <dc82457e-de2b-43ec-a50c-08f7d8bdeff1@linaro.org>
 <1883d9d7-26d4-40b1-9848-ae0477cf95c7@linaro.org>
 <6bbd526c-3193-40c7-91be-e629949dca8a@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <6bbd526c-3193-40c7-91be-e629949dca8a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Konrad.

On 6/11/25 00:04, Konrad Dybcio wrote:
> On 6/10/25 11:02 PM, Vladimir Zapolskiy wrote:
>> On 6/10/25 22:02, Bryan O'Donoghue wrote:
>>> On 10/06/2025 13:49, Vladimir Zapolskiy wrote:
>>>>>
>>>>> List feedback from DT people is isp@ is the correct prefix.
>>>>>
>>>>
>>>> My bad, but I don't understand this comment, it seems irrelevant...
>>>>
>>>> The expressed concern is about the novel label name.
>>>
>>> I mean to say the feedback from Krzysztof was that we should use isp@
>>> not camss@ and I agree.
>>>
>>
>> Let me repeat it thrice, it's okay...
>>
>> I don't object against the properly selected device tree node name "isp",
>> here I object against a never used and very questionable label name "isp".
>>
>> Please feel free to ask more questions, if you still find it confusing.
>>
>> Again, I may missed a discussion about the need to get and use a novel
>> label name, then please share a link to it, it'll be very much appreciated.
> 
> To hopefully help out:
> 
> label: node-name@unit-address {
> 	property = value;
> };
> 

Thank you, here is a link to the wanted section of the dt specification
for Bryan's comprehension:

* https://github.com/devicetree-org/devicetree-specification/blob/main/source/chapter6-source-language.rst.

If for whatever reason a proposed "isp" label is preferred, then
since a label rename is not an ABI change, it would make sense to
do a massive change of renaming all camss labels. Otherwise there will
be an outstanding incorrespondence/confusion of the label names in
board .dts files, and that's bad.

--
Best wishes,
Vladimir

