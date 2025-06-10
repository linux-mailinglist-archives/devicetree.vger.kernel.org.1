Return-Path: <devicetree+bounces-184264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C22AD3782
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 14:57:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 039C217BEEF
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 12:55:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D41E29614C;
	Tue, 10 Jun 2025 12:49:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Bhm5/DLv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351F322D4D1
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 12:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749559755; cv=none; b=UbpBYMfcMaoot7OEnTw+kifzqUBHLPaoa3LPVVZ0CY1/OrEpi7nH3lePip9crehQhh93hKcPHGPLeL4ZCDjeGZ8PROnIf4gphQcCj1NEV5YmAkVPVVbWXq8xICH7h6x7gtNZi84AI/kpXejADJd4y8p2Pk/e93GUfG4Q9JZEWUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749559755; c=relaxed/simple;
	bh=8pGLEakmr5aQtq0MNQDWSHLHa7dbD9TZs7Ms+ip8HFY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uCGu3QmqCzUF3jRkjJ4na6KBtpk28tH9jQ6FmX7QuxNZX+0VG2AtDYWzYPPJwHjg+TuyTqRQeV5+6eaaLpGvNBbHCP/D8lC0ta7WSAjcg5G1yqN1noN3yqiiEHBv6PY9XzbcXLSipDBO55gmF2spMspFQxZ8Bp58LcRQSgYGdYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Bhm5/DLv; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-32a6c0d613eso5246631fa.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 05:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749559751; x=1750164551; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SMSrvswUbazeYbvuGhFOqonwWDg71HMAispluXuK8zE=;
        b=Bhm5/DLvjaW7Lzd2TrS1xdXkF4QN/1Kj5tZuUxkAr48g7SwiTdS+236ISfos/7uzUT
         K4nsyz6XH2RXYlDoqvQazhA7kytzjNDRQWUZNOwC1mxcANVeCVs5MgeVvfTC4apAhgPP
         YLUgAT/K+IOeuhOBvq0Z18IlzfBZEt+Nxl+2yhpIYKYocs6ElD7plIjPKt10xZ8QREDY
         AZYafGM4N9tR6xRBZWDo9FtRYsrF4RU0kMfd+jF0ogJA14hEWYPj/kOssvG3G6BdWQ7q
         iEDa/qLT61X33uQb6BguiUlYh3zbkH6FGov0oxVd8HNdVnvYc7ljcJYJAoOPrPfz0QUY
         eQ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749559751; x=1750164551;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SMSrvswUbazeYbvuGhFOqonwWDg71HMAispluXuK8zE=;
        b=blD+/vqh3Y4+btaGlzEb5RHydQgHV4Guks/Ll1q3R+q8tEcJBzUg+f2RC9vgOfrEuP
         MF7I3H6z1Am5yk6MMSD1LY5HxEtf0n3ccbpEmaPZyo/PMkHOu0dJ3EsqOUV5CKmE8LEB
         e7ghOw+j0k2v0tJKnVnQx96lHoARIC4X72oNxSB+K1Bod4solvZF7voklKDJdtCY90aD
         phJnEGV92OEx/2jQ3oT0RZpzu5Q5JmeDQ+e4NxeGnhqmlFmqzRI35WAtuE65x5/A1R2M
         2zwhWvq17dR51qLZIaZAXwuCO1kdLRoBPCwyTxoswbs2RSxp7Ax9pi5IPLIoCFnQ3759
         qIGw==
X-Forwarded-Encrypted: i=1; AJvYcCVs6/d7+4Jbw32Ru4gvgjJwRHARjV3gYV+nkQIl8vPnHXN/XHx8uatXK4m/QupPa1AWpQyIE1MK/Ctm@vger.kernel.org
X-Gm-Message-State: AOJu0YzCLwa5EBJJD93qow1z6lnE9cYs5wUZXLhgJ8KkH8/GLHrLuOhs
	5OmribqsE9lGc2WHL2J7wqZebcvY1v6Qv3mkjnyauyWMzNLTRazCh8fYFTwrJPMKJVw=
X-Gm-Gg: ASbGncv82+tmDAriFIzGjmJdaL8zdDYMWDfrllKS1xU5ej8LEi+pRLUa8OqKqXBiiqx
	fg486Eq9Py6hAeMrBA5p91MRLJdg3jji9RTTOIOCzUtWgEYSeWCVQqWAkmJbgUZUIcnNpg9xOT0
	Irx0KLAnUPhZ2wJEaaOknSHZBS6sXII/TxOMU136O1SkKX8yOqcidklP9bZ2n08I/yeqU49X13b
	39/c60VhKN6K1eIK7N8+MmnbIlfrwc0x7/qWvD55JhXsXwS6t+sIJCdE5rIoqIBeurEHFHr5N/S
	9GH8/xH0w0BfFxyd0lcEBIUrefSiXQD8zS9Ng+UVy3deQJqKYKmJ8rlfVH10tSnHCub8HdXhHL8
	idCg3uYsuMo9REu2iLd80qDtM4L6pm42BJGEOKivb
X-Google-Smtp-Source: AGHT+IHY1q8YmyvtVFQkg3FZFwHokHT/o2o35vML8BOoO8vhLwLta089+v0mypfDQ7uA7zZsqXirAw==
X-Received: by 2002:a05:651c:2107:b0:32a:85f9:5c0b with SMTP id 38308e7fff4ca-32ae3359b7bmr15305731fa.10.1749559751259;
        Tue, 10 Jun 2025 05:49:11 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32ae1b0d1e2sm14474271fa.19.2025.06.10.05.49.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 05:49:10 -0700 (PDT)
Message-ID: <739bad1b-f26d-44a6-9cc1-eee28023474f@linaro.org>
Date: Tue, 10 Jun 2025 15:49:09 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND] arm64: dts: qcom: sm8550: Add support for camss
Content-Language: ru-RU
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Wenmeng Liu <quic_wenmliu@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, andersson@kernel.org, konradybcio@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 quic_depengs@quicinc.com
References: <20250516072707.388332-1-quic_wenmliu@quicinc.com>
 <0367d5bd-a42e-4b6c-b841-ba20190b3127@linaro.org>
 <dc4720a8-2f15-44aa-9a52-8440c7518328@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <dc4720a8-2f15-44aa-9a52-8440c7518328@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 6/10/25 12:50, Bryan O'Donoghue wrote:
> On 10/06/2025 10:48, Vladimir Zapolskiy wrote:
>> Hello Wenmeng.
>>
>> On 5/16/25 10:27, Wenmeng Liu wrote:
>>> Add support for the camera subsystem on the SM8550 Qualcomm SoC. This
>>> includes bringing up the CSIPHY, CSID, VFE/RDI interfaces.
>>>
>>> SM8550 provides
>>> - 3 x VFE, 3 RDI per VFE
>>> - 2 x VFE Lite, 4 RDI per VFE
>>> - 3 x CSID
>>> - 2 x CSID Lite
>>> - 8 x CSI PHY
>>>
>>> Co-developed-by: Depeng Shao <quic_depengs@quicinc.com>
>>> Signed-off-by: Depeng Shao <quic_depengs@quicinc.com>
>>> Signed-off-by: Wenmeng Liu <quic_wenmliu@quicinc.com>
>>> ---
>>>    arch/arm64/boot/dts/qcom/sm8550.dtsi | 210 +++++++++++++++++++++++++++
>>>    1 file changed, 210 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/
>>> dts/qcom/sm8550.dtsi
>>> index e9bb077aa9f0..722521496a2d 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
>>> @@ -3326,6 +3326,216 @@ cci2_i2c1: i2c-bus@1 {
>>>                };
>>>            };
>>> +        isp: isp@acb7000 {
>>> +            compatible = "qcom,sm8550-camss";
>>> +
>>
>> This is the first time, when 'isp' label is used instead of 'camss', it
>> might
>> be I missed the context, is there any particular reason to do such a
>> change?
>>
>> If the label name is changed to the regular 'camss', then
>>
>> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>>
>> -- 
>> Best wishes,
>> Vladimir
> 
> List feedback from DT people is isp@ is the correct prefix.
> 

My bad, but I don't understand this comment, it seems irrelevant...

The expressed concern is about the novel label name.

--
Best wishes,
Vladimir

