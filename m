Return-Path: <devicetree+bounces-3577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6225D7AF52E
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 22:29:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 12384282DAF
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 20:29:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6DA44A53D;
	Tue, 26 Sep 2023 20:29:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFCC41239
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 20:29:36 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2AC012A
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 13:29:33 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-50317080342so16314441e87.2
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 13:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695760172; x=1696364972; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D9258uwtq3coU3t+1tIs8KA/35RKyIjzzfJr/GQseqo=;
        b=Kn8gmPlKFG6vGNGQ9LkPb3nGPjBpUIIilO4yIgzx6Y+3fHJVmuIA2oSx1Px9b96rbg
         /wnz2bWnD/oouO6Uff0qll5zECEzp1tPwe4iUkoK53wIuKQTUXu/M8+Md93wxPZYsa22
         hY2WPyEkSurRP7uwkELSS9R084bcC59LxbNUUycfy4m2irX2kt1NDvgpyNY/l7EStzAw
         Y2hblboNwb7qdnd/DGH0GkedWCkBEdtskZ5xyJr9mfsrTpFU5aZodXb7LpGzi0X3vqQV
         Iw+dlgF8FtdjUrCfBUJMsli8dP2fiCFFGP7fDlGDHscn5YcRvHVLrxVOq/stCj4lUZtb
         qS3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695760172; x=1696364972;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D9258uwtq3coU3t+1tIs8KA/35RKyIjzzfJr/GQseqo=;
        b=K+fHcfSEpYwMWE/X8bhgsIDk8HIl4CTnRO9k+4UP32VEaYqN4mTpEruz99gO30VBBJ
         jrP4ZXKVymlRjvzGOpZ3jk4p7je9u6ai/B8ZMgk3jz9oky5DW1wUfSGTU7oKK89b6s0z
         SQL8Ns8fkPqOLuUoYh9/O0J+W3wpv4xqfgkepNsiR2TR6+GJ1MGt3J2rJ4bGVNdQIRvz
         5lDbXBRB7bsEk74E9V1pIzx/Ib7QCikpFNY8J5C7o+hxZU6BkUY++MrOe1MbkXowsZIw
         rQOJpRH3uPcL1QDdQNYcai115Pxy9F1DLdv/MWyFC/p/rKLQbYsiGWTQA/7o7ZCTJqe0
         FVpA==
X-Gm-Message-State: AOJu0Yw6GUel7sj7r4rssimjiEQqssFdn2i8vk4+9hQ/HSDQE27s6UmJ
	F008HRlHZtlT4tJmbK++PIz71iimkui9eS7LPCqUKQ==
X-Google-Smtp-Source: AGHT+IEWdGfqoXQpw8oGs3pi0yTnQO9XFZdcS+pTOJ6+FUG8YdbjGBrfkQ1XI3zALmIXa+vUyBuVFQ==
X-Received: by 2002:a05:6512:546:b0:503:2dce:4544 with SMTP id h6-20020a056512054600b005032dce4544mr8317262lfl.59.1695760171703;
        Tue, 26 Sep 2023 13:29:31 -0700 (PDT)
Received: from [192.168.33.189] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id i4-20020a50fc04000000b005254b41f507sm7195167edr.32.2023.09.26.13.29.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Sep 2023 13:29:31 -0700 (PDT)
Message-ID: <4d8292ca-c5fe-4270-8d93-66b721903528@linaro.org>
Date: Tue, 26 Sep 2023 22:29:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/13] arm64: dts: qcom: msm8916-samsung-a2015: Add sound
 and modem
Content-Language: en-US
To: Stephan Gerhold <stephan@gerhold.net>
Cc: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 "Lin, Meng-Bo" <linmengbo0689@protonmail.com>
References: <20230926-msm8916-modem-v1-0-398eec74bac9@gerhold.net>
 <20230926-msm8916-modem-v1-4-398eec74bac9@gerhold.net>
 <2c9eda54-a90e-483a-abc2-865d82854b80@linaro.org>
 <ZRMwdRo9hAm4BO5E@gerhold.net>
 <278ac134-992e-460a-b37a-60a746eab107@linaro.org>
 <ZRM6dJXNvx93jFrM@gerhold.net>
 <9b9a9c0d-8a09-48a4-b996-554d7e1b9340@linaro.org>
 <ZRM-u3gIoOsHVp7c@gerhold.net>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <ZRM-u3gIoOsHVp7c@gerhold.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 26.09.2023 22:27, Stephan Gerhold wrote:
> On Tue, Sep 26, 2023 at 10:18:22PM +0200, Konrad Dybcio wrote:
>> On 26.09.2023 22:09, Stephan Gerhold wrote:
>>> On Tue, Sep 26, 2023 at 09:56:12PM +0200, Konrad Dybcio wrote:
>>>> [...]
>>>>
>>>>>>> +
>>>>>>>  &blsp_i2c2 {
>>>>>>>  	status = "okay";
>>>>>>>  
>>>>>>> @@ -243,6 +258,13 @@ &gpu {
>>>>>>>  	status = "okay";
>>>>>>>  };
>>>>>>>  
>>>>>>> +&lpass {
>>>>>>> +	dai-link@3 {
>>>>>>> +		reg = <MI2S_QUATERNARY>;
>>>>>>> +		qcom,playback-sd-lines = <1>;
>>>>>>> +	};
>>>>>>> +};
>>>>>> Is that not status = reserved?
>>>>>>
>>>>>
>>>>> Correct. This is here to simplify switching to the modem-bypass audio
>>>>> routing if someone does not need (or want) the modem. The direct audio
>>>>> path with the LPASS drivers tends to be more reliable and configurable
>>>>> (especially wrt bit formats, sampling rates, latency, channels etc).
>>>>> I know that at some point this helped someone who tried to use an old
>>>>> phone as some kind of portable musical instrument / synthesizer.
>>>>>
>>>>> It's not too obvious that these definitions would be needed when making
>>>>> those changes (because devices using the standard SD lines (i.e <0>) do
>>>>> not need it). If you forget about this you get non-functional audio with
>>>>> no error or any hint what could be wrong.
>>>>>
>>>>> To simplify switching between the different audio routing options, the
>>>>> lk2nd bootloader actually has an option to do this transformation in the
>>>>> DTB automagically during boot. It's sort of like a DTB overlay that
>>>>> disables the QDSP6 audio path and enables this node instead. The DAI
>>>>> links are also adjusted where necessary.
>>>>>
>>>>> Do you think a comment would help here?
>>>> I'd say a comment would be necessary here :D
>>>>
>>>
>>> No problem, I will try to add something simple.
>>>
>>>> While I understand this use-case, I believe this is better suited
>>>> for an actual DTBO or something entirely kept inside lk2nd.
>>>> Otherwise this looks very confusing to an outside reader.
>>>>
>>>
>>> Translating from the QDSP6 audio setup to the LPASS one is mostly simple
>>> but not entirely trivial (especially the patching needed for the DAI
>>> links). Main blocker for DTBOs is that you can only add or change, but
>>> AFAIK there is no mechanism to _delete_ or fully recreate nodes.
>> Correct.
>>
>>>
>>> I guess I could maybe derive this from the QDSP6 definitions using
>>> custom magic code, but the code complexity for that is much higher than
>>> adding these nodes here for completeness.
>> I hate to be the bearer of bad news, but this is probably more
>> of a "do we reasonably want this upstream" type question, as
>> you'll probably get some grumpy emails about upstream not caring
>> about what's outside the mainline tree..
>>
> 
> IMHO this is hardly a "downstream" type of situation. The whole point of
> the magic in lk2nd is to make the life for the mainline code base easier
> and simpler, while still allowing the "bypass modem audio" feature with
> an unmodified kernel.
> 
> Before implementing it like this I used to have this directly in the
> kernel tree, by duplicating each device into a normal XYZ.dts and
> "XYZ-no-modem.dts". If you apply this to the total of ~45 different
> MSM8916/MSM8939 DTBs I would like to get upstream this options gets
> extremely ugly. :'D
Maybe a kernel module parameter could be somehow useful here?

Konrad

