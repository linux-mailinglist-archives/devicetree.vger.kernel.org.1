Return-Path: <devicetree+bounces-248296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BD7CD0E8B
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 17:38:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9054230596AC
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 16:37:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DC3D390DBE;
	Fri, 19 Dec 2025 16:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KzfCMohl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68607390DB8
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 16:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766161141; cv=none; b=V+WQRgiSVzZK7jr0/HPIF44c4sc7Vp+hCu214uH0zSP3GqrkoeLBVo2ZCpLuFShhORiORruCyvWyRQ23QLP1tlmF7zdcBn63+oR/bnA+pV7lGYW34me75ixWEwZuxrWaoPI1IYgXEyBiEwAuLE5UtRAEhaUiWy9l+ASE2XkhhHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766161141; c=relaxed/simple;
	bh=76McvnfT1vgXqcmj5nLToKdiSaYoQdSKm0XytE77Gg8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Bymoh8kcxogWv8Dl0ulg9awWjgd0coQnl3Wlp6sTu+5j8e01sfh91toug/ODkbgpiWoZZBrFeKauz107GzXPc/s9rheD+ebdBMWsrF/P2zC0fo0ZAJnbBZeaZrjam+EXG09dfbD+UiBeweHSarZx2zeeU7+I8ZaSsm11D1M+ie0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KzfCMohl; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-597c418b79eso133915e87.2
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 08:18:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766161138; x=1766765938; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X/Hi71EFMwbT8ptNwXW/+PuikNBEe+nI+EX1MWn7rrc=;
        b=KzfCMohluoFutBJeB+siIcTTjLp9eupIKWdc6piLhDQHCmm04hQMdqAxuYH7tMz4xA
         p5TVLapzwt3prWDVYqKNmXCtf0JWnzwU8VcCrke2HNZOOre4mrZ5l47z55u3m3+Xn77b
         GY6cq3NV2xHFxKUW3XNPTOqhnzGte6FFvaUBWTwzqDnpkmUNc8VQzX6IFdoUI2tj9owN
         96eNkT/w1sMzNuQQM+uDf98hYU29Tzo3op/X6+MfYxxfAbv5sXlgF47eRSp7fG1/SvVn
         KfwF/DW8Vidin1MexpMBs2WNp88yTVt0ypmUi9D7njC0DYfnwbhvR3W32T7WkQvluR44
         YnGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766161138; x=1766765938;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X/Hi71EFMwbT8ptNwXW/+PuikNBEe+nI+EX1MWn7rrc=;
        b=FsALAyJlBJx177thkYaptBfmLfPFRSC0NPOO4HDaWJgSbqKnvdE32RRabo+YhL5vy5
         v+XKk6kzJSbeUs8RJA2j/HlsRRomMQbImV4l9Q1cI3KQzGx0GwUHCpOsrplZC6jEKtZV
         3FjlBAedpQlbPf12g/jkqAPH8bzr1F4gx7L0lXblgr325GyY5KAby6PSnogO9v0rBdtU
         g5GnI/mVk1x0n5RVooZnOyDglHib0mQmu9MP4/qzoyGVqiDUTSk6heHF023Z/vaFAlY1
         U59rzezMpD/jAovln2AQpRt0MvMBbhkgvPUo2XJMxlcAGfvyhoIs33qa6tiGRwSnjAna
         HoYw==
X-Forwarded-Encrypted: i=1; AJvYcCXnp8BbvY8/cGnfqhZMunZv84trZJeHMmt+1BRYrksaDkb+4iYoeeU4dpYRob+w9F5NODW88SZLASnP@vger.kernel.org
X-Gm-Message-State: AOJu0YyeSSUphOlZjTJtrMhBxhxzvgM/3sTOOP1zelIRbQ8cN6TMNV/K
	m9DucJ37J7d7+wYMcw0HiAJWacVdNmQ+7eGXzmSu2EPBU9KoTCue3kMXtfKPDkPlRaM=
X-Gm-Gg: AY/fxX75JANmb2lw3sYs3CKKuHgJBN7M1hW794FfsyR8lKX5DRenomVf7wjVP3cibYS
	KMvFIniwM7DiGInCdW/1Qi1jDx4jVWcp2t4+VwoYywWC/h25vHCAtpctJuc6uEk3QHmzKPpRHEG
	ep00tB4zor44e+MgVH8xij6U+KAMEJk1/q4GmsJyi2MTeyleMh3HXylgwrBmedlKDyTB8zyytvW
	E6zOTklbkI/zSkLMtynNiPVkRS6dPw9tVxkKdzVP7HfxbKaMQhIDCI30y/qkiyjPtyVF1xFdbaE
	s1U931mjsSiWn9692H5xyNwCkjVulk320+4AqWMmdQc4rSY8X34H4bZOLnG4o2x5uCh33V0WOvY
	ehtzbIP5EP8+S4zN8lBz9dwpYXEeDu9YHMhNnMNpVYAUZeQdGS2h2jDjXTtkJ+NJvYJlWi1gv1k
	7RcppQaWo+B0kPueI54ZAl2cL1DPlF4otw3CijzDHW8Gs9SDhWyWaAyMXddI5RN5csew==
X-Google-Smtp-Source: AGHT+IGGG9s0wXtoxGsq0U0Depu7p7I9nYSz8VthyzwNRgLyv2wgLeIEplXVM9vmQjg7e233jqdPoA==
X-Received: by 2002:a05:6512:3d91:b0:57e:ed2d:190f with SMTP id 2adb3069b0e04-59a17d96fa9mr709065e87.7.1766161137426;
        Fri, 19 Dec 2025 08:18:57 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185d5ef1sm795622e87.2.2025.12.19.08.18.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 08:18:57 -0800 (PST)
Message-ID: <2ae1a0a3-b105-4c0d-abbc-4b9d708b0272@linaro.org>
Date: Fri, 19 Dec 2025 18:18:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: media: camss: Add qcom,sm6350-camss
Content-Language: ru-RU
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>, Luca Weiss <luca.weiss@fairphone.com>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251114-sm6350-camss-v2-0-d1ff67da33b6@fairphone.com>
 <20251114-sm6350-camss-v2-1-d1ff67da33b6@fairphone.com>
 <de7ad562-80bc-498e-a6fb-cc26bb6343f0@linaro.org>
 <r6EgtiSu8pqs2ouFERTw7fx8kYZ3RcSbGklwd17UPxNGGd3sbRDl2BPyplkABZVu3qyfrIzRMisa0qTSrm89BA==@protonmail.internalid>
 <DE8FV81S45S5.CH6K1QAX940D@fairphone.com>
 <a428f8b9-c338-4404-8dc1-da6daae37d5c@kernel.org>
 <d7dfeb7e-c0b2-426e-8572-023715c33674@linaro.org>
 <272d039c-25a0-4db5-96a3-c28907882cd2@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <272d039c-25a0-4db5-96a3-c28907882cd2@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11/16/25 16:05, Bryan O'Donoghue wrote:
> On 14/11/2025 17:06, Vladimir Zapolskiy wrote:
>> On 11/14/25 18:09, Bryan O'Donoghue wrote:
>>> On 14/11/2025 13:06, Luca Weiss wrote:
>>>> Hi Vladimir,
>>>>
>>>> On Fri Nov 14, 2025 at 1:40 PM CET, Vladimir Zapolskiy wrote:
>>>>> Hi Luca.
>>>>>
>>>>> On 11/14/25 13:15, Luca Weiss wrote:
>>>>>> Add bindings for the Camera Subsystem on the SM6350 SoC.
>>>>>>
>>>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>>>>> ---
>>>>>>      .../bindings/media/qcom,sm6350-camss.yaml          | 349 ++++++
>>>>>> +++++++++++++++
>>>>>>      1 file changed, 349 insertions(+)
>>>>>>
>>>>>> diff --git a/Documentation/devicetree/bindings/media/qcom,sm6350-
>>>>>> camss.yaml b/Documentation/devicetree/bindings/media/qcom,sm6350-
>>>>>> camss.yaml
>>>>>> new file mode 100644
>>>>>> index 000000000000..d812b5b50c05
>>>>>> --- /dev/null
>>>>>> +++ b/Documentation/devicetree/bindings/media/qcom,sm6350-camss.yaml
>>>>>> @@ -0,0 +1,349 @@
>>>>>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>>>>>> +%YAML 1.2
>>>>>> +---
>>>>>> +$id: http://devicetree.org/schemas/media/qcom,sm6350-camss.yaml#
>>>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>>>>> +
>>>>>> +title: Qualcomm SM6350 Camera Subsystem (CAMSS)
>>>>>> +
>>>>>> +maintainers:
>>>>>> +  - Luca Weiss <luca.weiss@fairphone.com>
>>>>>> +
>>>>>> +description:
>>>>>> +  The CAMSS IP is a CSI decoder and ISP present on Qualcomm
>>>>>> platforms.
>>>>>> +
>>>>>> +properties:
>>>>>> +  compatible:
>>>>>> +    const: qcom,sm6350-camss
>>>>>> +
>>>>>> +  reg:
>>>>>> +    maxItems: 12
>>>>>> +
>>>>>> +  reg-names:
>>>>>> +    items:
>>>>>> +      - const: csid0
>>>>>> +      - const: csid1
>>>>>> +      - const: csid2
>>>>>> +      - const: csid_lite
>>>>>> +      - const: csiphy0
>>>>>> +      - const: csiphy1
>>>>>> +      - const: csiphy2
>>>>>> +      - const: csiphy3
>>>>>> +      - const: vfe0
>>>>>> +      - const: vfe1
>>>>>> +      - const: vfe2
>>>>>> +      - const: vfe_lite
>>>>>> +
>>>>>> +  clocks:
>>>>>> +    maxItems: 30
>>>>>> +
>>>>>> +  clock-names:
>>>>>> +    items:
>>>>>> +      - const: cam_ahb_clk
>>>>>> +      - const: cam_axi
>>>>>> +      - const: soc_ahb
>>>>>> +      - const: camnoc_axi
>>>>>> +      - const: core_ahb
>>>>>> +      - const: cpas_ahb
>>>>>> +      - const: csiphy0
>>>>>> +      - const: csiphy0_timer
>>>>>> +      - const: csiphy1
>>>>>> +      - const: csiphy1_timer
>>>>>> +      - const: csiphy2
>>>>>> +      - const: csiphy2_timer
>>>>>> +      - const: csiphy3
>>>>>> +      - const: csiphy3_timer
>>>>>> +      - const: slow_ahb_src
>>>>>> +      - const: vfe0_axi
>>>>>> +      - const: vfe0
>>>>>> +      - const: vfe0_cphy_rx
>>>>>> +      - const: vfe0_csid
>>>>>> +      - const: vfe1_axi
>>>>>> +      - const: vfe1
>>>>>> +      - const: vfe1_cphy_rx
>>>>>> +      - const: vfe1_csid
>>>>>> +      - const: vfe2_axi
>>>>>> +      - const: vfe2
>>>>>> +      - const: vfe2_cphy_rx
>>>>>> +      - const: vfe2_csid
>>>>>> +      - const: vfe_lite
>>>>>> +      - const: vfe_lite_cphy_rx
>>>>>> +      - const: vfe_lite_csid
>>>>>
>>>>> The sorting order of this list does not follow the sorting order
>>>>> accepted
>>>>> in the past.
>>>>
>>>> What file should I best reference?
>>>
>>> Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml
>>>
>>>>>
>>>>> I'm very sorry for the vagueness, but I can not pronounce the accepted
>>>>> sorting order name, because it triggers people.
>>>>>
>>>>>> +
>>>>>> +  interrupts:
>>>>>> +    maxItems: 12
>>>>>> +
>>>>>> +  interrupt-names:
>>>>>> +    items:
>>>>>> +      - const: csid0
>>>>>> +      - const: csid1
>>>>>> +      - const: csid2
>>>>>> +      - const: csid_lite
>>>>>> +      - const: csiphy0
>>>>>> +      - const: csiphy1
>>>>>> +      - const: csiphy2
>>>>>> +      - const: csiphy3
>>>>>> +      - const: vfe0
>>>>>> +      - const: vfe1
>>>>>> +      - const: vfe2
>>>>>> +      - const: vfe_lite
>>>>>> +
>>>>>> +  interconnects:
>>>>>> +    maxItems: 4
>>>>>> +
>>>>>> +  interconnect-names:
>>>>>> +    items:
>>>>>> +      - const: ahb
>>>>>> +      - const: hf_mnoc
>>>>>> +      - const: sf_mnoc
>>>>>> +      - const: sf_icp_mnoc
>>>>>
>>>>> Please remove sf_mnoc and sf_icp_mnoc, they are not needed for enabling
>>>>> IP to produce raw images, and one day you may use them somewhere else.
>>>>
>>>> Ack, will give it a try.
>>>
>>> Disagree with this.
>>>
>>> See the Kanaapali patches. I'm asking new submissions to be as complete
>>> as possible, instead of limiting the hardware description to the RDI.
>>>
>>> So listing the ICP noc is the right thing to do.
>>>
>>> So please include register banks for
>>>
>>> - bps
>>> - cdm
>>> - icp
>>> - ipe
>>> - jpeg
>>> - lrme
>>
>> This suggests to get a DT backward compatibility lock forever,
> 
> I'm not entirely sure what this comment means.
> 
> The objective here is to get a full and complete DT describing camera
> hardware that can be consumed by
> 
> - CAMSS RDI
> - CAMSS RDI + future goodness

Here the problem is manifested, there is no even a raw idea of "future
goodness" and how it looks like practically.

Hardware can be represented in DT in many ways, why one arbitrary chosen,
and never tested or even verified for correctness, representation is
selected over any other one?

Let's start from the beginning, why putting everything into one unstructured
pile is better than accurate splitting of various CAMSS IPs into own
device tree nodes? Downstream has different device tree nodes layout,
why is it worse, should it be expected that Qualcomm in downstream moves
to a "better" proposed layout of device tree nodes for CAMSS or only
upstream Linux shall suffer?

Somebody said that there is an idea for "future goodness" to modularize
CAMSS, did it change?

> - FreeBSD
> - Any other DT consumer of upstream data perhaps even CamX

FreeBSD or CamX are software, and they shall be excluded from consideration.

There shall be no guesses about software usage, the only concern is if
the hardware desription in the shape of device tree nodes is proper or not.

Partial verifiable description is a proper description, and adding unknowns
of "future goodness" does not serve any reasonable technical purpose, it
adds an illusion of a proper description only, and it was proven that this
illision shatters even for CAMSS, see CAMSS CSIPHY case, when a wrong DT
choice can not be undone anymore for legacy platforms. It is good to acquire
an ability to learn from the past.

Everything can be added ad-hoc while keeping the hardware description in
a proper and correct state.

-- 
Best wishes,
Vladimir

