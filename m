Return-Path: <devicetree+bounces-3567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D93C7AF496
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 22:01:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2D88F281AF9
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 20:01:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD78348E9B;
	Tue, 26 Sep 2023 20:01:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF4430D00
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 20:01:28 +0000 (UTC)
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC74811F
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 13:01:26 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2bffdf50212so156780561fa.1
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 13:01:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695758485; x=1696363285; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xzh+BqCORH5y356NrL2kb0nBeLQs1vF5RJDXWt6M7dI=;
        b=u8gIuFWsvDmYLdBbN8h4LxaaLLoCgzQEotutfB6U8hkCZD5NL0D+4MA5G/2pm1EANA
         muQ/aN1JksAWHY6gzEOzert7GoJcb3MgtX3GzOY46fTYxCHc8PZb6xRgJQa0noKzIVu3
         4jdt7F555GXcpD1WbvaeQsFI2CixfjzLJAGYB5JbflC1Ys/27YFaVTZhsdtYGb+iIOYB
         OR08o9TIv61gO8QCgiSOTDF1TXLTsFj2Z8hFQQ0Kmb0VojsvwwrUGS1AGCn0aNSueWmA
         IOhnq17KEyA5caxQ2gp9cywELhh9ie5MeUxgS5AS0Wek3sy60nGfrRuQXXCKPaYYG0cV
         o2YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695758485; x=1696363285;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xzh+BqCORH5y356NrL2kb0nBeLQs1vF5RJDXWt6M7dI=;
        b=MQ73S0gx0ObIWtdtrAFVuJpWk0LXDQxDRlIe9XPS8lkfCuM0Jog+VGnAawcoAxv3F0
         vmnIP/fsLTablGT0XIk+j1obSUeEhepClzzQrzLtGjpvA0NcUxBzRo26JBmlq+LjYrMq
         t+5MR0JMa0dE+bjVR64nkEFQXWBSThkJFoJnl0l+Y7qmGP1lpkKGIhLZ6p3HyMT4icGw
         7Enz5219MnEVzerrF2063xa+JZYV+P8MDN1QpP6NXIN1nqfi55eNyNmGcOvgPjo18h8I
         Decdb8AEVPG3jwE+uXWzFhV3t2Qo0m9z7VXkuIquZcFxANSB/I5pXuB4b2Hl3nUijn4J
         id1Q==
X-Gm-Message-State: AOJu0YzpjuudGzNwwl+wM+ds/tvJcv5RaSV+1ewOwMSLNueJPZJZzCi3
	5wSqL5o2WY3tFtAydZ8rvsYC+w==
X-Google-Smtp-Source: AGHT+IH8Wd9vsEvjCwgGUfyF706J2MSG/pEBpaspbpK3ulVbLzL9tJWNFAc3r4j2FJxMmYwcpV8XHQ==
X-Received: by 2002:a2e:978c:0:b0:2bc:ce85:2de2 with SMTP id y12-20020a2e978c000000b002bcce852de2mr46153lji.37.1695758483882;
        Tue, 26 Sep 2023 13:01:23 -0700 (PDT)
Received: from [192.168.33.189] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id x20-20020a05651c105400b002c02b36d381sm2774571ljm.88.2023.09.26.13.01.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Sep 2023 13:01:23 -0700 (PDT)
Message-ID: <1be747ae-1d80-4ebc-9841-c0e98e64a0d1@linaro.org>
Date: Tue, 26 Sep 2023 22:01:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/13] arm64: dts: qcom: msm8916: Add common
 msm8916-modem-qdsp6.dtsi
Content-Language: en-US
To: Stephan Gerhold <stephan@gerhold.net>
Cc: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20230926-msm8916-modem-v1-0-398eec74bac9@gerhold.net>
 <20230926-msm8916-modem-v1-3-398eec74bac9@gerhold.net>
 <45665b43-3be9-4f27-aa88-12cdef56346d@linaro.org>
 <ZRMrqsZ0QeDNFHFj@gerhold.net>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <ZRMrqsZ0QeDNFHFj@gerhold.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 26.09.2023 21:06, Stephan Gerhold wrote:
> On Tue, Sep 26, 2023 at 08:49:24PM +0200, Konrad Dybcio wrote:
>> On 26.09.2023 18:51, Stephan Gerhold wrote:
>>> Most MSM8916/MSM8939 devices use very similar setups for the modem,
>>> because most of the device-specific details are abstracted by the modem
>>> firmware. There are several definitions (status switches, DAI links
>>> etc) that will be exactly the same for every board.
>>>
>>> Introduce a common msm8916-modem-qdsp6.dtsi include that can be used to
>>> simplify enabling the modem for such devices. By default the
>>> digital/analog codec in the SoC/PMIC is used, but boards can define
>>> additional codecs using the templates for Secondary and Quaternary
>>> MI2S.
>>>
>>> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
>>> ---
>> I'd rather see at least one usage so that you aren't introducing
>> effectively non-compiled code..
>>
> 
> There are 10 usages in the rest of the patch series.
> Is that enough? :D
> 
> IMHO it doesn't make sense to squash this with one of the device
> patches, especially considering several of them are primarily authored
> by others.
I see..

Well, I guess I don't have better counter-arguments, but please
consider this the next time around.

[...]

>>> +&lpass_codec {
>>> +	status = "okay";
>>> +};
>> Any reason for it to stay disabled?
>>
> 
> You mean in msm8916.dtsi?
Yes

> For the SoC dtsi we don't make assumptions
> what devices use or not. There could be devices that ignore the internal
> codec entirely. If there is nothing connected to the codec lpass_codec
> should not be enabled (e.g. the msm8916-ufi.dtsi devices).
See my reply to patch 5

[...]

>>> +	sound_dai_secondary: mi2s-secondary-dai-link {
>>> +		link-name = "Secondary MI2S";
>>> +		status = "disabled"; /* Needs extra codec configuration */
>> Hmm.. Potential good user of /omit-if-no-ref/?
>>
> 
> AFAICT /omit-if-no-ref/ is for phandle references only. Basically it
> would only work if you would somewhere reference the phandle:
> 
> 	list-of-sound-dais = <&sound_dai_primary &sound_dai_secondary>;
> 
> But this doesn't exist so /omit-if-no-ref/ cannot be used here.
Ahh right, this is the one we don't reference.. Too bad,
would be a nice fit :/

I only see one usage of it though (patch 7), perhaps it could
be kept local to that one?

Konrad

