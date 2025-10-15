Return-Path: <devicetree+bounces-227300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7A8BE052F
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 21:12:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23162428316
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 19:12:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 508F9305042;
	Wed, 15 Oct 2025 19:12:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pJG/aXgq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D0F630101E
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 19:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760555548; cv=none; b=n8TA1XsLs0q564j9YMuqHrdsg9rdohO89F/Zu8TFKpNb2bD/NxlFlV5Qqdk7H1gR0rRPA63LwxG3QXgYxfrkOfsQW+FCYLYcLcqyA2I3K9jo2pYd9fP4RLXzHzaK/LSyelaC9UgD5aKqDnyqKOF1flWlgpX19MvFjBiIXznprv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760555548; c=relaxed/simple;
	bh=4QK2T6kGZyFylzPYSzPxH+9bXfmmQQta6fIUzxi82kw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Zw57xWmcKG9WiQzAxh8Xv245HDFl5KYJk/I6pDYY3rPM87DXC30LvDtFGwUYa3jph32H8lw/23XAxk2f1mGRKoiSMKHx07Vl8Fi1ngbmqbm1BMdd3063iu2/W4+xe+bC9BL3cCzQm7rkP6pUuizGHOzzay1WU/bhY5c98RbPePg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pJG/aXgq; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-46e384dfde0so70896665e9.2
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 12:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760555544; x=1761160344; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zX0FQJMNOkesxTSiczvMscK9aHeUEgUhQXWADwrmqhs=;
        b=pJG/aXgqTPZ6GB70+XnOb3h9OZZnIcsS0otLdSaGUVnkmYKNx3qz8fuMEtTm+nec2i
         356bG56xys9klBWxh+4vX/HXlMhSQesz0UeFhRVLfCd86ms8XizN40N8lANcmaQ5cggX
         PWVdsrcL85RtAIW15UT+Xw+fE+JssJhyDjAMydB5o2wcIA8XIeVg8fEhCTYQTG/DmYoU
         RMWyfK43dGV5ApmMTKCg5zZg2q1RR1rjVZG2FMJ1DziiKwmRvEmr4BCFvCEeR1jJ56uq
         GrBOfA0e+EJg+3VQSbQYmQq74bOpbyYcSeh/3e6KTt/KyaEnkEHj5RjdpV4m4F0Pjcqt
         Euvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760555544; x=1761160344;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zX0FQJMNOkesxTSiczvMscK9aHeUEgUhQXWADwrmqhs=;
        b=dD725b3ObpX5mfmUBlp/09YpSyplDO3KHRHI0dXAxJEsy229fIXkGknnoULKVhMimq
         mGaIxrmpgNLRYgyr5O+mKDam5WF/lXY4loCnqDcMET2oJEqTMbMFHcTYojpKSWg2ilzu
         Cc94oUNvkpzeq3gNMQK6GbfZct6FRgGzOzEVfmQ5SL0awRkEaHNVUrdzQrkNQvsbMFrT
         mi6Dx7cZP5txSN3P+2WXEjsyaznpKakPnGU3IOB44NkhdyWTdi9Ni8YIeuaMkf0SI/e+
         W0Ezn+PAPqMM97/XUyw3rv2wiSjgN3vRpM75pRA1QXxOousHG5tNZyW2pDXZwLX8O+PI
         b02g==
X-Forwarded-Encrypted: i=1; AJvYcCUWdz9lAZXNxnPV4vRtG86VG35TxrN/sKO8lu4RASe0kW54Nx6kMjESVTIqB9ogB6R80LrI80NHqJKL@vger.kernel.org
X-Gm-Message-State: AOJu0Yyk/LfOunUpPWoD7pAcnPqehFYL2Tc3TMl7Vn2K90pYRTOPR5r/
	N3jPW5XMw93EzTnD9Abny15gpeR29PMwkO/F8iVkv+LPgdDC15rBmTXO4UsWY8YaHo4=
X-Gm-Gg: ASbGncu969C/WznO25ztgOaIwN1WOIxqnAxHDNMa7dx1Rn3RC1ABXv89V9hw9egOzd2
	RKkpDPUXGF9jeQtKEjlDQY1iG4mK7G1iznkSYf/AvfznLlv+dSZ7f77Zgl/cceludqHhbb4bWkl
	1sX5lXC1gPckDuYWN76x8DOzL+RUyHw9mohrZS497+y8xBGzNR1rOU9saTgUUJDT3fn2i+niJo0
	pzkQVU3KIPahCQ8PrHMzFGQ9areprB6Hi6iTHh+NmcBZCVCxwcU0YaQSpunBl5zXWTERwG8nmpY
	lpopFWFXtzI5ALBp0OYtVkpvIb3IT/38VHDYEe3YmfTqcx9v4/BGO0B3buylCBNqYlIzI/m5tn1
	ihpuqgzo9ifyAKYUcsLRuiQ6AYHHPFWf63G43n7TsRQKDaSPSI+P6JykNcjHw7RPUIwnZF6weAB
	cRsdfP69kyjCDpyd0ox7bfwA==
X-Google-Smtp-Source: AGHT+IHbd0cW44W3/gflLhZW99H6UzVn2a320v+osYcGxzgftCt49JmvdlRHRiYyZeC4FCtJAzNpwA==
X-Received: by 2002:a05:600c:6383:b0:465:a51d:d4 with SMTP id 5b1f17b1804b1-46fa9a8b48dmr229438345e9.6.1760555543790;
        Wed, 15 Oct 2025 12:12:23 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce57d49bsm32016093f8f.10.2025.10.15.12.12.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 12:12:23 -0700 (PDT)
Message-ID: <15b35191-eaff-4971-bae5-2d5a8cb9f864@linaro.org>
Date: Wed, 15 Oct 2025 20:12:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: media: qcom,qcs8300-camss: Add
 missing power supplies
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vikram Sharma <quic_vikramsa@quicinc.com>, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andersson@kernel.org, konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
References: <20251015130130.2790829-1-quic_vikramsa@quicinc.com>
 <20251015130130.2790829-2-quic_vikramsa@quicinc.com>
 <bfa0d4f2-45c6-463e-8afc-d90edcf8cf2f@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <bfa0d4f2-45c6-463e-8afc-d90edcf8cf2f@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 15/10/2025 19:41, Vladimir Zapolskiy wrote:
> On 10/15/25 16:01, Vikram Sharma wrote:
>> Add support for vdda-phy-supply and vdda-pll-supply in the QCS8300
>> CAMSS binding to reflect camera sensor hardware requirements.
> 
> What are "camera sensor hardware requirements"? You do add properties
> to the ISP.
> 
>>
>> Co-developed-by: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
>> Signed-off-by: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
>> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
>> ---
>>   .../bindings/media/qcom,qcs8300-camss.yaml          | 13 +++++++++++++
>>   1 file changed, 13 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/media/qcom,qcs8300- 
>> camss.yaml b/Documentation/devicetree/bindings/media/qcom,qcs8300- 
>> camss.yaml
>> index 80a4540a22dc..dce0a1fcb10c 100644
>> --- a/Documentation/devicetree/bindings/media/qcom,qcs8300-camss.yaml
>> +++ b/Documentation/devicetree/bindings/media/qcom,qcs8300-camss.yaml
>> @@ -120,6 +120,14 @@ properties:
>>       items:
>>         - const: top
>> +  vdda-phy-supply:
>> +    description:
>> +      Phandle to a regulator supply to PHY core block.
> 
> What is "PHY core block" here?

I mean come on, I think the meaning is clear.

>> +
>> +  vdda-pll-supply:
>> +    description:
>> +      Phandle to 1.8V regulator supply to PHY refclk pll block.
> 
> This is a copy-paste example of a known to be wrong pattern.

You're right about the name, please align with this commit

git show cba308979b012664c7fe7c5baa818fcb68e86363

Thanks for spotting.

---
bod

