Return-Path: <devicetree+bounces-3198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F797ADA29
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 16:34:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 87A04281461
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 14:34:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92F541BDE8;
	Mon, 25 Sep 2023 14:34:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211081A266
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 14:34:50 +0000 (UTC)
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D7AA103
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 07:34:47 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-530ce262ab2so7330480a12.1
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 07:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695652486; x=1696257286; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=At5G8LjCiI/G/LK/Xh23Vr8bY4UZ5vnWbR2xhLShcaM=;
        b=BrlEPtkALjym9wTh/iSL1BZQleVuzmALvEyAldOCRwxYohndQ+cy4Q480nEVzELoRH
         R2CRdMfOVlcy1lzXTl/gWUn7zVqAW2s1BUmZq/e6csBdpIBA2bbpHCD5IKGT8NmdnMNM
         iFg1VJfr4cJbcn8iT/6KAq0f25lEXfgcBgsslebi+1EmvedP3dCobmjp6zdF8XSKMvEo
         iWYb/LkDcg4oe/q0Xa23tZILVvWag3Lh5zCntpbnfsWWQxOnbbFogIxSFu8vbvT6zueE
         6RkhDuRrGi3gUN5yZ9Oc6JBgFcJBe9yHyiiE7uDRkp/nJ++yCw1T3i8I2g+MgwN0HSwH
         Gpag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695652486; x=1696257286;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=At5G8LjCiI/G/LK/Xh23Vr8bY4UZ5vnWbR2xhLShcaM=;
        b=kDH3tammPYNlAq27OG+NEFqi1BnUg0s2Ysm3IwzZpmMnXvqKACj8VsyFLwyPr+J417
         RgQ17e6qyfZhqdnPht+seB4KOEONsjYPPUepKJcClbbrV+zZjjlt6/MSiVgtbAIs+NUr
         lk8B6L6kKdbGDcs6xjyNyrrcoT+LhWxHirAUreXIPzHaZhMrttBs/MF0xZoVwGoiW6J2
         QVoEGKaT4qugE3WarYe5fRTLhVm5/59PLTGyc0aqHFxzhsd5YOycLiAtiBcuYOY+0VhD
         9uLgcqX9PxsQwYuAXHYVEXdYWN3dxW6VZ6J5o6bp54raHlKlZSPg01v/pzNvkTrfRdpz
         Q/zQ==
X-Gm-Message-State: AOJu0YxgDma+cDEEDn0SRDySUHKpho3n4dVHQgJ5mnNCjZswZtMbEqbE
	uiYQUahp3F6qJiqYvkJ2xm1YrQ==
X-Google-Smtp-Source: AGHT+IEPZMcnUPRGiFdo+ag6klK/WjWV50YQqP08HeqcthIFRIeFK+cBJR/W1XtD65zduN4ZQ2PhWw==
X-Received: by 2002:a05:6402:2285:b0:533:c25a:aee9 with SMTP id cw5-20020a056402228500b00533c25aaee9mr6037310edb.34.1695652486088;
        Mon, 25 Sep 2023 07:34:46 -0700 (PDT)
Received: from [192.168.101.165] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id g7-20020aa7d1c7000000b0053112d6a40esm5615597edp.82.2023.09.25.07.34.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Sep 2023 07:34:45 -0700 (PDT)
Message-ID: <8e6a41b2-7ad9-4cc6-8f95-93b8c2e4151f@linaro.org>
Date: Mon, 25 Sep 2023 16:34:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: msm8939-huawei-kiwi: Add initial
 device tree
Content-Language: en-US
To: lukas walter <lukas.walter@aceart.de>
Cc: agross@kernel.org, andersson@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 phone-devel@vger.kernel.org, raymondhackley@protonmail.com,
 robh+dt@kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <9ca32137e42a22b016d8d417ee9e0dc024ef2aa9.camel@aceart.de>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <9ca32137e42a22b016d8d417ee9e0dc024ef2aa9.camel@aceart.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 25.09.2023 16:28, lukas walter wrote:
> Date: Wed, 20 Sep 2023 16:47:30 +0200
> 
>>> +
>>> +	reserved-memory {
>>> +		reserved@84a00000 {
>>> +			reg = <0x0 0x84a00000 0x0 0x1600000>;
>>> +			no-map;
>>> +		};
>> Do we know what this is for?
> 
> This seems to be some QSEE/TrustZone memory required to boot.
> I would name it `qseecom_mem: qseecom@84a00000` like other phones
> currently have it.
> 
> `[    1.162115] QSEECOM: qseecom_probe: secure app region
> addr=0x84a00000 size=0x1900000`
Sounds good!

> 
>>> +	};
>>> +
>>> +	gpio-hall-sensor {
>>> +		compatible = "gpio-keys";
>>> +
>>> +		pinctrl-0 = <&gpio_hall_sensor_default>;
>>> +		pinctrl-names = "default";
>>> +
>>> +		label = "GPIO Hall Effect Sensor";
>> I think we can have both hall sensor and V+ under gpio-keys
>>
>> And then I am not sure how useful the label is for the container
>> node, maybe you or somebody else can tell me whether it's used
>> anywhere
>>> +
>>> +		event-hall-sensor {
>>> +			label = "Hall Effect Sensor";
>>> +			gpios = <&tlmm 69 GPIO_ACTIVE_LOW>;
>>> +			linux,input-type = <EV_SW>;
>>> +			linux,code = <SW_LID>;
>>> +			linux,can-disable;
>> Should this not be a wakeup-source btw?
> 
> I am not sure how to change this. I would like to leave this as many
> other hall sensors seem to be configured identically.
Krzysztof, opinions?

> 
> Is this fine?
> Should I send a V2 with the signoff and reserved-memory changes?
I don't quite get it, what signoff?

Konrad

