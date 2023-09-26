Return-Path: <devicetree+bounces-3544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B147AF3BB
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 21:05:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 461361C203A2
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 19:05:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B51AD48839;
	Tue, 26 Sep 2023 19:05:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BA028F3
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 19:05:30 +0000 (UTC)
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03901139
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 12:05:27 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-502e7d66c1eso15458004e87.1
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 12:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695755125; x=1696359925; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dUXWStiSrTgaM+wf5mDuYNTfzDznRYYmB0R3mrZd5PM=;
        b=TvuVf/E8uAnR03QmMoawj4T+te3lMnNreMAs8eMO2iFtRQcegyAcLUf4h20MNe/swk
         77rQWvmqMG1MLWhWTLCJObkb9VzS1ZGZyCtmtzqGEsKahO4OKjHDraYqHJt80qI4RqOc
         O9VoIKWleytksJSyk4+PPFytPadzLLcvpCYBhW0nGhYWZMTJMMfIweNHB+I3K+LeqwCB
         Z4y4fI0r2MnJV1A76zktzH/wRnvsWUl8pW/2CEfIp4Ajd5EbEoqG+WdX181tlnCvr9iI
         Vg1volBPCA/KWZnXAvmhov27eewP/iM8wMlfqsbediShyXBgh/CQYj/HTEx3SgjkWerS
         0woQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695755125; x=1696359925;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dUXWStiSrTgaM+wf5mDuYNTfzDznRYYmB0R3mrZd5PM=;
        b=tbugb1W9DGuOZq0I/beRUveA663vFVx+O/FBwoT37ZO4Of9gNDXWiE7/tiMe6m8A54
         ScF6vCX1bxCU3R6CluRtcrcdBaxZKy6Or5sDOCDhaA9XOksUmn/GO6tE5Zv4ISAfNoWz
         8YM2gSIxox5dgwX40ZQweDhdclpKZ8oTzPY8HiCHQzZfN61Ce7AbLNmuSsEGoQgc6Vnx
         UxLcPOUGh6aEHpOmmJyw+zu/5H3Z3034VhKU5TaEzBRScVkoX1jODe2nbVV7GaSRdu/s
         WJoJ/7rfOkaYbuYIFxW7+vhtmNXuA3MaSR/Tx+8stoJJyOPBxgwOStYTe622L4d3UZs2
         ftYA==
X-Gm-Message-State: AOJu0YxhgVfxpUnCWnbefK0qTkvlVXYIjgKNb/4gckjDv9PEFi94nApO
	PJ8uU0mSlTILG/ui/tuE9F8W6A==
X-Google-Smtp-Source: AGHT+IFjxrJqW2ekBZ4l4/RcwAGmRijfKXiEiowenhbIvEaoSQrR9DJsr4YCLz1Me157J5A9Xo2E7w==
X-Received: by 2002:a19:2d4b:0:b0:4fe:3724:fdae with SMTP id t11-20020a192d4b000000b004fe3724fdaemr7662744lft.66.1695755125257;
        Tue, 26 Sep 2023 12:05:25 -0700 (PDT)
Received: from [192.168.33.189] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id h19-20020ac25973000000b00500cfb168a3sm2283303lfp.139.2023.09.26.12.05.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Sep 2023 12:05:24 -0700 (PDT)
Message-ID: <959825a0-5327-46b7-b91d-9753601c7ba0@linaro.org>
Date: Tue, 26 Sep 2023 21:05:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/13] arm64: dts: qcom: msm8916/39: Add QDSP6
Content-Language: en-US
To: Stephan Gerhold <stephan@gerhold.net>
Cc: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20230926-msm8916-modem-v1-0-398eec74bac9@gerhold.net>
 <20230926-msm8916-modem-v1-2-398eec74bac9@gerhold.net>
 <698c8d60-e284-4267-8349-b327712c94cc@linaro.org>
 <ZRMo8oxIKJIY5WG8@gerhold.net>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <ZRMo8oxIKJIY5WG8@gerhold.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 26.09.2023 20:54, Stephan Gerhold wrote:
> On Tue, Sep 26, 2023 at 08:46:36PM +0200, Konrad Dybcio wrote:
>> On 26.09.2023 18:51, Stephan Gerhold wrote:
>>> MSM8916 and MSM8939 do not have a dedicated ADSP. Instead, the audio
>>> services via APR are also implemented by the modem DSP. Audio can be
>>> either routed via the modem DSP (necessary for voice call audio etc)
>>> or directly sent to the LPASS hardware (currently used by DB410c).
>>> Bypassing QDSP6 audio is only possible with special firmware
>>> (on DB410c) or when the modem DSP is completely disabled.
>>>
>>> Add the typical nodes for QDSP6 audio to msm8916.dtsi and msm8939.dtsi.
>>> The apr node is disabled by default to avoid changing behavior for
>>> devices like DB410c that use the bypassed audio path.
>>>
>>> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
>>> ---
>> I'm generally grumpy with regards to multi-soc changes that
>> have no need to be multi-soc..
>>
> 
> Well it's 100% the same diff so reviewing it separately doesn't really
> make sense IMHO. When I do "msm8916/39" patches these are generally the
> changes where strictly speaking there is no need to duplicate at all.
> It could go into a common include between both. We just haven't found
> a good solution/agreement yet how sharing SoC components could work.
My bottom line is that, somebody trying to track down an issue on
one may need to unnecessarily resolve 2 merge conflicts when reverting :/

Konrad

