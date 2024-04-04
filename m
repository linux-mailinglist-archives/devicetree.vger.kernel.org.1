Return-Path: <devicetree+bounces-56413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D74B889905C
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 23:29:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5EA3E1F2744C
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 21:29:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5585013C680;
	Thu,  4 Apr 2024 21:27:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="FvU/y63L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5305713C66B
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 21:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712266060; cv=none; b=s1tM2ng9L4xumbq0VTwQt2uPYSRbr5T85OfCS8edzg08l+8smJ72fjNpKspghwA0jAYjAIAkm7oEhnUHONz5VGG4kcI/PHdnznbwdT3N89WLJFKnm7G5KXRZbKKhZrLlBOl+UIehHJnij5ykbDsgacFVQMI+5sv++6sO9xDWVdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712266060; c=relaxed/simple;
	bh=eMUg1AHIopq0JWrAy/6R4bPWzAbokiHXfnXaA0Emzn8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FjZrKqk+bgr0iinSV7yGOm791dkPD9AnXEpcv0kItK9VCaKrgSmT5b4G4/IiS11T1uiSzrjFroKoszIoetTRCpPbjsW/gL9ICU4Kf+dyBdBQMzOSDcOl4mgeDi48FbhGBdGzwE4/e03NCa+sY6Bf18XCzNS7shOyppOKLvEYpUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=FvU/y63L; arc=none smtp.client-ip=209.85.166.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-369fe4e650aso7159345ab.2
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 14:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1712266056; x=1712870856; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JivkPtYm65IsO1ddY4sRkpm5UlWEeBHwlfhWJ8irw1I=;
        b=FvU/y63La2NI/3MKOPFeud41mRRewyiK3d9+2JPWhc/zM6vIrPwLzwG1qUUMNeCNjy
         sOZPpsVjUGFvgUTeiChxvxRoNsWWU8PZLdThMhGh22KeJksUk+VuagRucPEIso9RVZfr
         0+47Uxuok5E3UphNfQqvOLqnHyXdJ6Jpyl5xkQ2B1CmlE0Oy95V52thlO05gIKV1kM0L
         BWPd+V+loST6hhrRftD1lMlL8BJ3l/SQ5RfJECS2Uf1xgPBc3y++dk2DSQs/2o+x/An3
         IUZGSEh/RkTSJfudMbDx8X9NtnwXxFGdxJlNva+EvmEyw+zyuZhZUBuX9ImytDyajEk0
         Jmgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712266056; x=1712870856;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JivkPtYm65IsO1ddY4sRkpm5UlWEeBHwlfhWJ8irw1I=;
        b=kGo88gJZxT57dvI1PKPvNZIDrhQeUqBs+XDurQ3vG4CksEGwSCRM1xu6TTFqCWkRiO
         fPTyTR15AT2UlrlLLMVuduVjvCQZBLeQjXnxAuMY44lVlJJim4UzhMe+FAzRJ7FpeQGQ
         JB4tnhkgKnKZ0Z+NnHy5c4WZafP+G16ThOeDsAIGibjD2S5jLM6QDhzF1z5slPF+9rgr
         s1vUalJFiI/fad3aAuuZYFvPUz3G8nQgSWNbdvv5+B/5g3IJx8vBhMKK8onJ90fIJasU
         PuDdTxMndQ9txRMZgrneAD5kAavV0OzNQSBc9XxKsDLRezOAcEHAz81lhL708nac3mts
         OHVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXvmQmKZFJnLNltz7egwLL0vC8n4UOCoJAn4V5hyTEkSJSRBp+yuPNfIcmdNxMrQYBgA6aqYYtaoqV2bPAhJ2Cddr/OrvVTrbKvIg==
X-Gm-Message-State: AOJu0YzoNNAAtBlUxvXYB0BPBHfL7UlcWMC2VSGa+gbqzXPjC1LEPTP6
	rgOaM2vZDrIkl8RMu454RCpFa340WWpOhfhF1d+vz6c90iDuRgP9eLr9KZt+lKA=
X-Google-Smtp-Source: AGHT+IElVj0dNlCq61Gmg+a2jG0qLRTZYsV903K0FDvcUKd4h4atrwC0mHGHEVMKo4m8dryHIv35jw==
X-Received: by 2002:a92:c56f:0:b0:368:9913:7ed4 with SMTP id b15-20020a92c56f000000b0036899137ed4mr4633296ilj.25.1712266056436;
        Thu, 04 Apr 2024 14:27:36 -0700 (PDT)
Received: from [100.64.0.1] ([170.85.6.190])
        by smtp.gmail.com with ESMTPSA id iz16-20020a056638881000b00480b6389b3bsm134868jab.34.2024.04.04.14.27.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Apr 2024 14:27:36 -0700 (PDT)
Message-ID: <74d6213f-51de-4d48-a7fb-844d6bb57fa7@sifive.com>
Date: Thu, 4 Apr 2024 16:27:34 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] clk: starfive: pll: Fix lower rate of CPUfreq by
 setting PLL0 rate to 1.5GHz
To: Xingyu Wu <xingyu.wu@starfivetech.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Hal Feng <hal.feng@starfivetech.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Conor Dooley <conor@kernel.org>,
 Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20240402090920.11627-1-xingyu.wu@starfivetech.com>
 <8d21b1bc-9402-41d4-bd81-c521c8a33d2d@kernel.org>
 <NTZPR01MB095662C4A6FCAEB7B35C48FF9F3DA@NTZPR01MB0956.CHNPR01.prod.partner.outlook.cn>
 <bcf12c0b-d569-4d64-adfb-bad053c182a8@kernel.org>
 <NTZPR01MB09566AB865A0266332268DC69F3DA@NTZPR01MB0956.CHNPR01.prod.partner.outlook.cn>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <NTZPR01MB09566AB865A0266332268DC69F3DA@NTZPR01MB0956.CHNPR01.prod.partner.outlook.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Xingyu,

On 2024-04-03 2:44 AM, Xingyu Wu wrote:
> On 03/04/2024 15:24, Krzysztof Kozlowski wrote:
>>
>> On 03/04/2024 09:19, Xingyu Wu wrote:
>>> On 03/04/2024 0:18, Krzysztof Kozlowski wrote:
>>>>
>>>> On 02/04/2024 11:09, Xingyu Wu wrote:
>>>>> CPUfreq supports 4 cpu frequency loads on 375/500/750/1500MHz.
>>>>> But now PLL0 rate is 1GHz and the cpu frequency loads become
>>>>> 333/500/500/1000MHz in fact.
>>>>>
>>>>> So PLL0 rate should be default set to 1.5GHz. But setting the
>>>>> PLL0 rate need certain steps:
>>>>>
>>>>> 1. Change the parent of cpu_root clock to OSC clock.
>>>>> 2. Change the divider of cpu_core if PLL0 rate is higher than
>>>>>    1.25GHz before CPUfreq boot.
>>>>> 3. Change the parent of cpu_root clock back to PLL0 clock.
>>>>>
>>>>> Reviewed-by: Hal Feng <hal.feng@starfivetech.com>
>>>>> Fixes: e2c510d6d630 ("riscv: dts: starfive: Add cpu scaling for
>>>>> JH7110
>>>>> SoC")
>>>>> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>
>>>>> ---
>>>>>
>>>>> Hi Stephen and Emil,
>>>>>
>>>>> This patch fixes the issue about lower rate of CPUfreq[1] by setting
>>>>> PLL0 rate to 1.5GHz.
>>>>>
>>>>> In order not to affect the cpu operation, setting the PLL0 rate need
>>>>> certain steps. The cpu_root's parent clock should be changed first.
>>>>> And the divider of the cpu_core clock should be set to 2 so they
>>>>> won't crash when setting 1.5GHz without voltage regulation. Due to
>>>>> PLL driver boot earlier than SYSCRG driver, cpu_core and cpu_root
>>>>> clocks are using by ioremap().
>>>>>
>>>>> [1]: https://github.com/starfive-tech/VisionFive2/issues/55
>>>>>
>>>>> Previous patch link:
>>>>> v2:
>>>>> https://lore.kernel.org/all/20230821152915.208366-1-xingyu.wu@starfi
>>>>> ve
>>>>> tech.com/
>>>>> v1:
>>>>> https://lore.kernel.org/all/20230811033631.160912-1-xingyu.wu@starfi
>>>>> ve
>>>>> tech.com/
>>>>>
>>>>> Thanks,
>>>>> Xingyu Wu
>>>>> ---
>>>>>  .../jh7110-starfive-visionfive-2.dtsi         |   5 +
>>>>>  .../clk/starfive/clk-starfive-jh7110-pll.c    | 102 ++++++++++++++++++
>>>>
>>>> Please do not mix DTS and driver code. That's not really portable.
>>>> DTS is being exported and used in other projects.
>>>
>>> OK, I will submit that in two patches.
>>>
>>>>
>>>> ...
>>>>
>>>>>
>>>>> @@ -458,6 +535,8 @@ static int jh7110_pll_probe(struct
>>>>> platform_device
>>>> *pdev)
>>>>>  	struct jh7110_pll_priv *priv;
>>>>>  	unsigned int idx;
>>>>>  	int ret;
>>>>> +	struct device_node *np;
>>>>> +	struct resource res;
>>>>>
>>>>>  	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
>>>>>  	if (!priv)
>>>>> @@ -489,6 +568,29 @@ static int jh7110_pll_probe(struct
>>>>> platform_device
>>>> *pdev)
>>>>>  			return ret;
>>>>>  	}
>>>>>
>>>>> +	priv->is_first_set = true;
>>>>> +	np = of_find_compatible_node(NULL, NULL,
>>>>> +"starfive,jh7110-syscrg");
>>>>
>>>> Your drivers should not do it. It's fragile, hides true link/dependency.
>>>> Please use phandles.
>>>>
>>>>
>>>>> +	if (!np) {
>>>>> +		ret = PTR_ERR(np);
>>>>> +		dev_err(priv->dev, "failed to get syscrg node\n");
>>>>> +		goto np_put;
>>>>> +	}
>>>>> +
>>>>> +	ret = of_address_to_resource(np, 0, &res);
>>>>> +	if (ret) {
>>>>> +		dev_err(priv->dev, "failed to get syscrg resource\n");
>>>>> +		goto np_put;
>>>>> +	}
>>>>> +
>>>>> +	priv->syscrg_base = ioremap(res.start, resource_size(&res));
>>>>> +	if (!priv->syscrg_base)
>>>>> +		ret = -ENOMEM;
>>>>
>>>> Why are you mapping other device's IO? How are you going to ensure
>>>> synced access to registers?
>>>
>>> Because setting PLL0 rate need specific steps and use the clocks of SYSCRG.
>>
>> That's not a reason to map other device's IO. That could be a reason for having
>> syscon or some other sort of relationship, like clock or reset.
>>
>>> But SYSCRG driver also need PLL clock to be clock source when adding
>>> clock providers. I tried to add SYSCRG clocks in 'clocks' property in
>>> DT and use
>>> clk_get() to get the clocks. But it could not run and crash. So I use
>>> ioremap() instead.
>>
>> So instead of properly model the relationship, you entangle the drivers even
>> more.
>>
>> Please come with a proper design for this. I have no clue about your hardware,
>> but that looks like you are asynchronously configuring the same hardware in two
>> different places.
>>
>> Sorry, that's poor code.
>>
>> Best regards,
>> Krzysztof
> 
> Hi Krzysztof,
> 
> If I use the old patch[1] like v2 and set the PLL0 default rate in the SYSCRG driver,
> will it be better?
> 
> [1]: https://lore.kernel.org/all/20230821152915.208366-1-xingyu.wu@starfivetech.com/

Both reparenting cpu_root and enforcing the maximum cpu_core frequency can be
accomplished with clk notifiers. See for example ccu_mux_notifier_register() in
drivers/clk/sunxi-ng/ccu_mux.c.

Regards,
Samuel


