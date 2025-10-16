Return-Path: <devicetree+bounces-227490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA44BE2154
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 10:03:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 61056351CB0
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 08:03:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AE412FE587;
	Thu, 16 Oct 2025 08:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gWlGH7Os"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428352FBE1C
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760601828; cv=none; b=L8GxUQqIDK5NNV6yMN7tIQvvmreCSGn1lYiHtg6rLO8dvN3SQv9UsFE+g/y1CqQvaDlsNl0Jm4yS9/eZ+S4nq0eHwwuiM9f1Hk3BoHALyBxQ0J0DQqccyRWeAjWVxRcbUYEmf+tvCsy/W8PaDQQcp7c07St/BCmq19ZRPbkAz1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760601828; c=relaxed/simple;
	bh=Upf+vZPf5FtAc5nFbo/GsuIEVrSiRNpKkQuMnHoDkKY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ChEHVvqUwlTYySByL73yTwBzQKr/FFSeSTryoJdkR3iNzba/voDAChC6l3ZeITlIiWvEx38dId/s4oLPwXRULajvz4/Y+nKkRgdPWuQl/GWcXuS2yNvvGcsheAqxHB8B2awZ609aGrAt6Z54ovHPqP0m8f8+CBd2DWIVa3tJleU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gWlGH7Os; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-57bd7f0e2daso72989e87.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 01:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760601824; x=1761206624; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SI3iJaG6AehsZaDVHen+J6EpKqRu7s9HPBybFYzEdgw=;
        b=gWlGH7Os+/ZnhKC7HSZP/PbQmY20AL8hDGE96MbwYi57o/couwbx84q3/gZyYBA4dJ
         optOTlN5VLfwO+ZaAjT7MX8446a/jfp0CBtJO0LTADsCzz7PvIS3bitSYM6vAviYn8OX
         SfxXF0zzCqCLrbD3/ARobYWmVM0NU02IqvP2bb87vWi4soAfHwHhHu9c/5ifAkhgnuXg
         WJI0miFxLcfCFGkMKPQFIJWWIbgluWUPyS34r/wStU7eyf4fvT4Sd4zOg7rSxAiHp7Ah
         ZZq6EYUUocgvij1x3Vq3SX9KOnTzFSOEfU6Vm3Q1lEEhcqCHaosbJSoJoXM8oy16AYsg
         mbhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760601824; x=1761206624;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SI3iJaG6AehsZaDVHen+J6EpKqRu7s9HPBybFYzEdgw=;
        b=f+s0IPZi3Bqx2q4pvsc2xbZsPrRc0T3CF+Disw6k3YefDGtU9UsM8UtKLOfXz8kCjZ
         ZYlRgJ+1Eiw6+qfI2QpMG9qpBDGWIxxvXCCXGxNe6KLp3OSjzx5M9M8MY3Xc0Cbw6qdx
         VGiZ2ditKqg2iezWcb/lJXzZSiwiBZWCxFbAHmLfk1PTk9BrZD/sUyhMzOGzr40QZCxO
         1pS1Mlg33a2+KnyEm3cFgUBlVxQMj6Vh4YYuR8oKzgzr171R1E0ogOH/zT7i/DZxXME9
         COhmFQyR4mGtIXo8igLCn9jBYvDiAv4DHvCjAKxYCqmwp3LEvHva+ARw1eSDC7qKFpcb
         J16g==
X-Forwarded-Encrypted: i=1; AJvYcCUpm9sWMPbDbISDl4ndvIm1U4nuc2hjKW8zU3uKjKk/HoFSziyayOAC+QTACPfl/E/ca2b1p/7RPCH8@vger.kernel.org
X-Gm-Message-State: AOJu0YyEfSIsPbPj0Z5gjxetgl1z5G0JsMmHbddGHKrS/txWAYmsPdkw
	jV3X9KHn0E1oUFXehePGjyaJAIsuW/HxRl52tgMXXSta2fvAlrbV0D7/UD2jlAGh0Pc=
X-Gm-Gg: ASbGncvMR9qdiFJf42GURVED/clrDngSwQYTzgJQ5wgIcotyqD1GNBtgOOC7khxIGFJ
	WTYuOrUCY2TbPO1Ze1Wa37fNQP6RPgniHgocSETn5LTm5bfLbJeTQ4wiOCh1u0Uhzci1fq9o2bL
	JemNUzegJTjKrMRSX+W1MR/eiiRPsUsJvk7Ql3u42Ujg7YU3RS5oS5ZxqQlEt8iaB8y9LEEd1FS
	6ijuq+aWZ4j5psPFYpSKB42aKeInlmNpXnqfCHmZ2zU6BUUD+KGeLydy2NZfpZkP0wyQceDizlH
	LpmBceDotaAUFLouh7r1FW0VB8yyWZEHPOQhVlfnYu6bxMy5GdedP/xIWk/v2yMPPxyVrM7pVOe
	gRYfOyNLmi6hMdj7mTzN033xOe+BFFKdz4yyXOtJqb2aw4LqRc4EPCvAEoSCVTGr94udvekgOV4
	9BHBX+JAIQ4ZDTTGW07M01RAVdFWOUBOSw2lBoe4Yno12pIXqVSYwuO2/IPvhdlTsvGkkSIQ==
X-Google-Smtp-Source: AGHT+IHcAxdLhGzdW1NI2UBF0IVQHMl6HFpUd/jJYBtOzICKf88GKwgE5spfrmYtn/8eULnHs4lGZg==
X-Received: by 2002:a05:6512:3dac:b0:57a:8ae1:6a8e with SMTP id 2adb3069b0e04-5906d8ec20bmr5447249e87.6.1760601824219;
        Thu, 16 Oct 2025 01:03:44 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881f88ddsm6922497e87.31.2025.10.16.01.03.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 01:03:43 -0700 (PDT)
Message-ID: <3202275a-25ec-435a-93ff-80a7ff8a8153@linaro.org>
Date: Thu, 16 Oct 2025 11:03:42 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] dt-bindings: media: camss: Add
 qcom,kaanapali-camss binding
To: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
 tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
 yijie.yang@oss.qualcomm.com, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
 Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20251014-add-support-for-camss-on-kaanapali-v2-0-f5745ba2dff9@oss.qualcomm.com>
 <20251014-add-support-for-camss-on-kaanapali-v2-2-f5745ba2dff9@oss.qualcomm.com>
 <dce1018c-6165-407c-8f3d-40859cb36b11@linaro.org>
 <0b6c157a-3d8d-4251-a704-31f8369f6a4e@linaro.org>
 <a0d9389b-67a5-458a-858b-ffdd95f7ccc6@linaro.org>
 <62a3f09b-50d6-4ace-8229-d71585378ae1@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <62a3f09b-50d6-4ace-8229-d71585378ae1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/16/25 06:46, Vijay Kumar Tumati wrote:
> 
> On 10/15/2025 4:32 PM, Vladimir Zapolskiy wrote:
>> On 10/16/25 00:43, Bryan O'Donoghue wrote:
>>> On 15/10/2025 20:45, Vladimir Zapolskiy wrote:
>>>>> +  power-domains:
>>>>> +    items:
>>>>> +      - description:
>>>>> +          TFE0 GDSC - Thin Front End, Global Distributed Switch
>>>>> Controller.
>>>>> +      - description:
>>>>> +          TFE1 GDSC - Thin Front End, Global Distributed Switch
>>>>> Controller.
>>>>> +      - description:
>>>>> +          TFE2 GDSC - Thin Front End, Global Distributed Switch
>>>>> Controller.
>>>>> +      - description:
>>>>> +          Titan GDSC - Titan ISP Block Global Distributed Switch
>>>>> Controller.
>>>>> +
>>>>> +  power-domain-names:
>>>>> +    items:
>>>>> +      - const: tfe0
>>>>> +      - const: tfe1
>>>>> +      - const: tfe2
>>>>
>>>> Please remove all 'tfeX' power domains, they are not going to be
>>>> utilized
>>>> any time soon.
>>>>
>>>> When 'power-domains' list is just a single Titan GDSC,
>>>> 'power-domain-names'
>>>> property is not needed.
>>>
>>> Each one of these TFEs powers an individually power-collapsible TFEs.
>>>
>>> This is also so with the other xFE power-domains on previous SoC
>>> generations.
>>
>> This is false, for instance there is no management of SFEx power domains
>> in SM8550 or X1E80100 CAMSS in the upstrem, neither there is no
>> management
>> of SBI, IPE, BPS, CPP and so on GDSC power domans given by CAMCCs.
>>
>> TFEx is no more special, if it's unused, then it should not be added.
> I agree with Bryan, if I understood the original comment correctly. This
> is no different to the IFE0/1/2 GDSCs on SM8550. All the other modules
> listed above (SFE, IPE, BPS etc.) are not supported by the CAMSS driver
> and hence there is no management. However, we need to manage the TOP and
> TFE0/1/2 GDSCs for the real time RDI paths.

Agreed, at first glance I didn't find the management of the TFE power domains
in the driver's change 3/6 from this series, however now I see it was added
along with the 6/6 change.

This my comment is answered, thank you.

>>
>>>
>>> You'll need the TFEx power-domain to process any data on TFEx with the
>>> 'lite' versions being tied to the TOP GDSC.
>>
>> When it is needed, the documentation will be updated accordingly,
>> right now
>> it is unknown what a data processing on TFEx looks like, it might happen
>> that there will be separate device tree nodes for TFEx.
>>
>> TFEx power domains shall be removed right now, unti; a usecase in the
>> upstream
>> CAMSS appears to use them, I haven't seen such code at the moment.
>>
> We attach these power power domains by name in the corresponding driver.
> For instance, the VFE driver attaches the TFE power domains mentioned
> here and are exercised from vfe_set_power() -> vfe_get()
> ->vfe_pm_domain_on(). You can also see the related codes with '.has_pd'
> and '.pd_name' properties in the CAMSS subdev resource structures. Hope
> this clarifies.
> 

-- 
Best wishes,
Vladimir

