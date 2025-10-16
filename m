Return-Path: <devicetree+bounces-227486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CFBE1BE209C
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 09:54:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 546BB3517CB
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 07:54:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D9952FCBF5;
	Thu, 16 Oct 2025 07:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yvuSWFrX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF2823AB95
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 07:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760601266; cv=none; b=VvXLADnATmbYZ2Ogk1AJg+Y0SbvhWS+5+BMebVAytU9M+8N0DN78HS0fXA+N0SdLnp/fMlwYkcqcFYkFqR/aIUA65kvbdP0xQ5lPbjGisqcB60BgBR2t+RTel0jC76uDo3CiRdJpIfjqVUUORE0qsF7QVYQCRPTgHL7nIw4l79s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760601266; c=relaxed/simple;
	bh=CfvRVCErtGHXBxkKWgrElBI+QODUT4a0FK4sms8pPYI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N5K/uCqJPbBF5AUJNL5n06sWjJpXF93tkizT6Wo39I3Ea+QgO6kTXYYuw7qtRcgDTqInn5Ra2wPjw/FPmTxj4OIU+LNvMOQd5OUinWxvrshp3lZOhV5L0mpgQ2VNcSV4OLW+vm5ZYdLKEw3j6zy/FLAzdFoNycpyVEBUipLRS5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yvuSWFrX; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-591c7a913afso55925e87.3
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 00:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760601263; x=1761206063; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QmVtWvRHyMhniNi0gQhG72brgXAlVXx/qF66DGWagrQ=;
        b=yvuSWFrXE6/c//r6iPe3nmYPuruGcDQEh/hVuSV76sMAWvB4s2p/+1XOHNnS08yCaT
         TRIgu5DeJ3SUuncJYc+cZaqdl9lhpZVd+A7V1yTSaBH9Mk0bN/LiLRIzu35s0rDqu3GU
         yyDDDutpEz4w0tnKWQNp4Z21ZJs05qbBSi50SJK0SdcEGLbwoxFPwy98qHEypjcjobkq
         qnQDuDmXbYtAXDRKNCe3SQ2ablYRg8Wt+/rL9RsUUP5vPJ8luLIGjOT0MYG+bvE0pt83
         wHzcV5df3zkCFy4N0PPXK0VZrq+1OB2ULg2WXWtsHHGivcoVKzFbF78xrzY51dKdbZYi
         qRoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760601263; x=1761206063;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QmVtWvRHyMhniNi0gQhG72brgXAlVXx/qF66DGWagrQ=;
        b=jLbiph8Q0JnG7o84nKK5G0xuQWLe/FUy9myMqW2Z0TQNsGFdo8WiOLV6GwTpQSgSsj
         POHz05hVWoIPGcJHrzcgGYjA1TIe4WHNqGK8mHpj4742sMF3S/TgMT2lqVS7bB+2MAxT
         8YP909mPGhjFvZ12n0pc8xTys8+wEcIRJuSKgqdCVdU+uRIXRai9DejDHNkHLVeRXdRy
         IvHXnShGf7Hoj/cT7VrHZ1RfbgbKal7bm2OuzPHldZn9NBy1fXSzt6hF+IUBOlQgSNcR
         QSMfYR7kaHiFX1cQewXSpa1U7s9bwR1NwfMWMoIfb+5Qlv17vN1dxXj8eB9G1kGqLx6K
         ogfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLBqwZ5x0fqs2bcnqIhZjBORmD7IwP0d7JysTQEeuZZputLL/qvraaegplBn1faVXK5IRYThTBdYHE@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+3itJm1MfEbnRWKldyPL2ULGL1r4ikTA+YzYrs9FqJCvd23F3
	4CJ7f3tFXClZ9Dp36ofONO0PoZOHwBCXONad0cGA0d2R266lo5NTr2wzo8PF3sVxJcU=
X-Gm-Gg: ASbGncstTIZ/NDWDyGQO+9udq0jncG/sFox0bf8DVYKbWLTpDo35/YX5RlTLtAX1jo9
	O7NA7HUVPcHA3kCS8oKdHZcXTyrhij8qJRba0CEt+C0g59OnXGMWURcA+j7aQPOWOybimRlfSVd
	D9G9jqwia7D3ojPPAeE4BhDksSPQqZ23nGSgFYhh2lw3oTkNkmngbt8Am4naGn//58r1dxvtIlD
	NPdxEwJK8WS0pwm5BQRhp6gSf/srYKjoB+tWqLHhepY0BXQMTjQeSQfxWhIDzxg77NZKy21X1iM
	lSJhd4aAjPA6fJT2/V2uOXslmpl6iUG8CCyXmNKzq3Q/7O8rvDTzDNOU0cpZlKdm4p3cLeKPq0j
	s5gZIqtnK23sL14sM8taMKnRmIPxKtDaRbz9RdBLX5VcAO5I/qCGXhGfL8Cu4EEcIKADlq6wGTS
	UoBvdxH13zvhVyEoW1NVbhc16jpm8WRfG+BPPLUq0ijxk8WP7CrJbFH9PpE/A=
X-Google-Smtp-Source: AGHT+IHsX/HilH4EoOWx6EsAJ+ylfUI4lAvcSrs8mZEm+Ft9+c6g8wGISR6HPEd0aILkxc47HsTiOQ==
X-Received: by 2002:a05:6512:3d11:b0:579:a9d2:6636 with SMTP id 2adb3069b0e04-5906d87bba2mr5552348e87.1.1760601262815;
        Thu, 16 Oct 2025 00:54:22 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881fe50csm6904428e87.33.2025.10.16.00.54.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 00:54:22 -0700 (PDT)
Message-ID: <46776a87-8038-42b3-8982-0cf83f8ba1c5@linaro.org>
Date: Thu, 16 Oct 2025 10:54:20 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] dt-bindings: i2c: qcom-cci: Document Kaanapali
 compatible
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
 tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
 yijie.yang@oss.qualcomm.com, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
 Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20251014-add-support-for-camss-on-kaanapali-v2-0-f5745ba2dff9@oss.qualcomm.com>
 <20251014-add-support-for-camss-on-kaanapali-v2-1-f5745ba2dff9@oss.qualcomm.com>
 <e2c43a8c-a9cc-46a1-9ddd-5d6dfc7e917b@linaro.org>
 <49eaf7ec-ac71-4bf3-9a4e-25fa633d815e@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <49eaf7ec-ac71-4bf3-9a4e-25fa633d815e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/16/25 04:56, Hangxiang Ma wrote:
> On 10/16/2025 3:30 AM, Vladimir Zapolskiy wrote:
> 
>> On 10/15/25 05:56, Hangxiang Ma wrote:
>>> Add Kaanapali compatible consistent with CAMSS CCI interfaces. The list
>>> of clocks for Kaanapali requires its own compat string 'cam_top_ahb',
>>> aggregated into 'qcom,qcm2290-cci' node.
>>>
>>> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
>>> ---
>>>    Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 6 +++++-
>>>    1 file changed, 5 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>>> b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>>> index 9bc99d736343..0140c423f6f4 100644
>>> --- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>>> +++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>>> @@ -25,6 +25,7 @@ properties:
>>>          - items:
>>>              - enum:
>>> +              - qcom,kaanapali-cci
>>>                  - qcom,qcm2290-cci
>>>                  - qcom,sa8775p-cci
>>>                  - qcom,sc7280-cci
>>> @@ -128,6 +129,7 @@ allOf:
>>>            compatible:
>>>              contains:
>>>                enum:
>>> +              - qcom,kaanapali-cci
>>>                  - qcom,qcm2290-cci
>>>        then:
>>>          properties:
>>> @@ -136,7 +138,9 @@ allOf:
>>>              maxItems: 2
>>>            clock-names:
>>>              items:
>>> -            - const: ahb
>>> +            - enum:
>>> +                - ahb
>>> +                - cam_top_ahb
>>
>> Why is not to give the clock "ahb" name like on QCM2290?
>>
>> On QCM2290 the macro in front of the vlaue is GCC_CAMSS_TOP_AHB_CLK,
>> and name "ahb" is good for both, I believe.
>>
>>>                - const: cci
>>>      - if:
>>>
>>
> 
> On Kaanapali the macro has been changed to CAM_CC_CAM_TOP_AHB_CLK. GCC
> clock domain doesn't manage the AHB clock but CAMCC does. I think it's
> better to create a new and more complete clock name to denote the
> differences between them.

Remember that you do not match the macro value here. Please provide an
explanation why the intorduced "cam_top_ahb" is anyhow better than the
already exisitng "ahb" name, or please stick to the existing name.

-- 
Best wishes,
Vladimir

