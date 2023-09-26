Return-Path: <devicetree+bounces-3530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCB07AF33B
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 20:46:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C319E2816A8
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 18:46:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C56BC4122B;
	Tue, 26 Sep 2023 18:46:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FD5423DE
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 18:46:42 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2F4A198
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 11:46:40 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-50437f39c9dso12959945e87.3
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 11:46:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695753999; x=1696358799; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NadJLUD/WUTfQyTRvPLc0aWcku/CjVqqV/Vkjig6NCs=;
        b=ibYqRr4kDH+TXfKLhwgLN2nadFEqOO9cZe1tAv1VCxhp0ZGZ9KvXr8vfeWRsr+sVrM
         YqTevnIMPqwdA+xbgXe0D+ODmoaPSg507oKPEauu8uMIlG4BjnIzx889Qs7An0fwAWHd
         zmVitu1nS7ymZgPxCjM57e+hfcrHMiF4mfWYfqb73T2ypKldR3sm+FZeepWNOzuKFyHZ
         +oadRjZcwIixnFkyy9kwFP1xWvqY9dVvDkDw2LyYnd0juluhjw75O1UXgqoGwyW9a8f7
         QpxVuLljp3fWxT1he4ISXx6jxceEskmCtrDvIVdxlovxjPX4uNl79Etp45jHZsO9E8FH
         MSzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695753999; x=1696358799;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NadJLUD/WUTfQyTRvPLc0aWcku/CjVqqV/Vkjig6NCs=;
        b=lV2ompRu8KWxZPJwv5ZKajaYhiu2v0tGK7ISlAA4LkvBV8xdz4hLhMh9dc/wVjECtO
         WacvmTIRE0tVdG96agr/aY/Br8eISsrg3FarC7S+nCP2p9rFfKJmjwTbrDZtHdhitBS2
         z+mGqnEPeVJMVwoLOPIuS79ZE7kaCFfQ1G6CmpPh6b/KDb9SnEoJ4XeOm4cOAdVCbIut
         xYG+0lMnPhPp9IJhACZ+uYdCJ/91vy9Lm62q28snASxo/pks9sbMeZ7cJZXnVG2M359t
         wAinegxzZ7nQC63pcNFuo0y2LlMIxraUOTdAZG3ZOPjqxF9MHHFsXyDHyPY2KeCpS6PK
         72uQ==
X-Gm-Message-State: AOJu0YwQoq73BYKgCXwCxgirehNHCBllv+F5UL2sad1I7UBQaNy9RA0r
	Ds9BbgyjNlPDL3Mp3JYGJnBlRA==
X-Google-Smtp-Source: AGHT+IH1edATO4YtoxPkIrT4GQA5z9UNOHT4LgI3ZsUXu8Kz0Gu9E3/9El902f/VDd6bVuMEACYkpw==
X-Received: by 2002:a05:6512:33d4:b0:4ff:7e1e:b4b4 with SMTP id d20-20020a05651233d400b004ff7e1eb4b4mr10395268lfg.39.1695753998826;
        Tue, 26 Sep 2023 11:46:38 -0700 (PDT)
Received: from [192.168.33.189] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id r5-20020ac252a5000000b0050306259d88sm2283081lfm.23.2023.09.26.11.46.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Sep 2023 11:46:38 -0700 (PDT)
Message-ID: <698c8d60-e284-4267-8349-b327712c94cc@linaro.org>
Date: Tue, 26 Sep 2023 20:46:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/13] arm64: dts: qcom: msm8916/39: Add QDSP6
Content-Language: en-US
To: Stephan Gerhold <stephan@gerhold.net>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20230926-msm8916-modem-v1-0-398eec74bac9@gerhold.net>
 <20230926-msm8916-modem-v1-2-398eec74bac9@gerhold.net>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20230926-msm8916-modem-v1-2-398eec74bac9@gerhold.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 26.09.2023 18:51, Stephan Gerhold wrote:
> MSM8916 and MSM8939 do not have a dedicated ADSP. Instead, the audio
> services via APR are also implemented by the modem DSP. Audio can be
> either routed via the modem DSP (necessary for voice call audio etc)
> or directly sent to the LPASS hardware (currently used by DB410c).
> Bypassing QDSP6 audio is only possible with special firmware
> (on DB410c) or when the modem DSP is completely disabled.
> 
> Add the typical nodes for QDSP6 audio to msm8916.dtsi and msm8939.dtsi.
> The apr node is disabled by default to avoid changing behavior for
> devices like DB410c that use the bypassed audio path.
> 
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---
I'm generally grumpy with regards to multi-soc changes that
have no need to be multi-soc..

Konrad

