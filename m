Return-Path: <devicetree+bounces-227304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EDABE0584
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 21:20:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7984B3AF1B2
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 19:20:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B2ED30147D;
	Wed, 15 Oct 2025 19:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E3PiPsOa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E4027E05F
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 19:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760556020; cv=none; b=HKZ4+z46gBWVfOm0cVc5nu9Xm+Upznv3y3+HkRZx3wNNaBoCmfNBl0uJlJWnUGCEtt66ekydGR0JOnAsyRZm1VdWfRRXGEca0Oi1WViKA/FZN46Y+OjVf/QvbMHqVbW67b7HQCwfrh8AnJrZMa80end/V8XY30l7OEolNqYebRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760556020; c=relaxed/simple;
	bh=ep33UcssLfRjc51oBeoQ2Wt7olaU3sFvDFA0ufe3ojQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Fsb1/PWcTcAJQBd3/zugUAzp0CvKEz0xSSfUYrNRnXZOm5/Uv/uDGDONJyt8A0SssvGnfaf2udr40nTnvF0+5XPwCUK5WKxDviwOLY2RrCBZ9uAvgAP57eRRr1Qb0JxcA13nDJ7OY+r1MXg3tdP856Jpl4l2I7RishKvx/FTaPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E3PiPsOa; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-37645b8c09bso4728451fa.2
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 12:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760556017; x=1761160817; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8mjpeIrj5Li1/mScwEA3BsQSOlfS1kTZ1a40z447tpk=;
        b=E3PiPsOaV9wRYQPcEuSfhVaFQJpjVUCf+1DcvZMDPzyaYo7JA5KkQhN8Qbx+fBQied
         9sjZmNJqfr+YDKCzcpyc34lJkXV2lRTwjYEYvceEGUX7t0y1SrHCCKf4yFr8HY/qeZmK
         FbziR1SIKyrxyD3R2MPOYU6J2dXjF5uSZtTOQh8OwuwScwHLTW1udbazj0r0B5eodUjq
         2HxJScN1pdHiPfQLuBJC8F+QJgr3mKV+MNZgzGTW1pLSurAApQkupHRaRvnbJ4mJO2UX
         NFwf1YRdwdBhhwitug8w/kAQPuC5E3WdyMrjId4r5cAzdPMpSz2+RA8hC9WjpsCnrhmz
         y0kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760556017; x=1761160817;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8mjpeIrj5Li1/mScwEA3BsQSOlfS1kTZ1a40z447tpk=;
        b=o7bUvZPK0qJJUcxqA5VJCeIKcbHfQ4BRz6U6CndnNcUFlN/O3vCynXFxXtkMf77Sh2
         vSZmYSkzQhXOXIHzkMEZ1CSgbKUfrdMmGgry1BCu5bjNupNNY9COtP+2ERMblyNuAM6V
         qu/mpvE4lk9YUwDRSpF6RQJ8bxEWLdC4yTsH1YChdZUC7EC1ETX0NpL9qqv+5Wl/8C4H
         4k+4Lq5yMJcy79YhLgspahUFYS+QC1+pE6MsQW53g9oaiO+KaXG+6p4NH1pl16izuHMI
         8WNxiax82J7f/qI05LuUMGVNFiLEktg5o8arj8Gp8PTTfcDzOQsayKG0PQR+jqTPa7Xc
         LaQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXRHAQgDeE1f+sNVvGcM/C8AoeKEXQDXob2PoUKfADgUW9ta932/TW0lk1Ecxm21UsLUIKGnhXyHS1n@vger.kernel.org
X-Gm-Message-State: AOJu0Yzadr3UILtHZ9eHnp6SqdcQioY7yihFyzkmYLgCZFNqzTucYJiY
	v0YJyTyJJccmFPhpxopMHuC5IR0KilT8mXwNUZ9woOQBo1lqIe7L0Bf6CaYi/XS2PDA=
X-Gm-Gg: ASbGncscvPfZMW5R7Z7J/sgs8xUV/w8VgKDmash+H6+6JRaHsc43g9InJBSMUp5eseY
	bta7GGgqqZJH0DnFHtoHsQZoeMADjy4von1T9klL+h2OIOF7i8+q+fqA557WIA4gNvZeIfiWML3
	civhguT1kAMXdtLwncl0GgLw7YJv/48/44Q6FzHnJLBVVKAw25/eSRx7Du9n4/PFQKGcuj1KVAv
	I8TbPgA3PcJLZXDt2l2pg6uepNdGD4DJV66cTrSZNuJTFuNXWCAA6gfBDrlhiINyHdX3BjpzpVp
	WKvCIJYe+0LAooqczziRR7dPNqx1oNKXTVaUCOEpwDitShjKeRhUkakME3t8LzW96o1gskVJbUB
	s20Xi8TJlu2XKOqep7G6N8qEBPmKQkinpYMxc3yUP645lppUDhMp1y8lsfGXrZ1TCGOss6kJN8X
	xYVzwk+n1UrJnTFTmZPQZeH0wE2c8G5kF9wMJRo59Xn5/YM3dlPS6sNjfTLx0=
X-Google-Smtp-Source: AGHT+IGIsRWmI5ge5lUIdUu2k73q0laJqSFh/LT9P2c/QCskl/jxZ4XreU8Hx9BrNbAPGj0+NboZdw==
X-Received: by 2002:a05:651c:41d6:b0:377:78cd:e917 with SMTP id 38308e7fff4ca-37778cdeb32mr7411751fa.0.1760556017299;
        Wed, 15 Oct 2025 12:20:17 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762eb6a963sm49042991fa.57.2025.10.15.12.20.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 12:20:16 -0700 (PDT)
Message-ID: <4eb4bb48-a8b1-4e58-a41b-b9277fbff6e9@linaro.org>
Date: Wed, 15 Oct 2025 22:20:15 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: media: qcom,qcs8300-camss: Add
 missing power supplies
Content-Language: ru-RU
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
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
 <15b35191-eaff-4971-bae5-2d5a8cb9f864@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <15b35191-eaff-4971-bae5-2d5a8cb9f864@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/15/25 22:12, Bryan O'Donoghue wrote:
> On 15/10/2025 19:41, Vladimir Zapolskiy wrote:
>> On 10/15/25 16:01, Vikram Sharma wrote:
>>> Add support for vdda-phy-supply and vdda-pll-supply in the QCS8300
>>> CAMSS binding to reflect camera sensor hardware requirements.
>>
>> What are "camera sensor hardware requirements"? You do add properties
>> to the ISP.
>>
>>>
>>> Co-developed-by: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
>>> Signed-off-by: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
>>> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
>>> ---
>>>    .../bindings/media/qcom,qcs8300-camss.yaml          | 13 +++++++++++++
>>>    1 file changed, 13 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/media/qcom,qcs8300-
>>> camss.yaml b/Documentation/devicetree/bindings/media/qcom,qcs8300-
>>> camss.yaml
>>> index 80a4540a22dc..dce0a1fcb10c 100644
>>> --- a/Documentation/devicetree/bindings/media/qcom,qcs8300-camss.yaml
>>> +++ b/Documentation/devicetree/bindings/media/qcom,qcs8300-camss.yaml
>>> @@ -120,6 +120,14 @@ properties:
>>>        items:
>>>          - const: top
>>> +  vdda-phy-supply:
>>> +    description:
>>> +      Phandle to a regulator supply to PHY core block.
>>
>> What is "PHY core block" here?
> 
> I mean come on, I think the meaning is clear.
> 

The meaning is clear, the expressed concern that the given description
of the property is very unlikely match the meaning, as well as the
description of "PHY refclk pll block" below is the mismatch to the
meaning.

The misleading information shall be removed.

>>> +
>>> +  vdda-pll-supply:
>>> +    description:
>>> +      Phandle to 1.8V regulator supply to PHY refclk pll block.
>>
>> This is a copy-paste example of a known to be wrong pattern.
> 
> You're right about the name, please align with this commit
> 
> git show cba308979b012664c7fe7c5baa818fcb68e86363
> 
> Thanks for spotting.
> 

-- 
Best wishes,
Vladimir

