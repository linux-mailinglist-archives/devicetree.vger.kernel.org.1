Return-Path: <devicetree+bounces-10301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8637D7D0B01
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 10:59:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B74D11F238F2
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 08:59:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52CC610A0D;
	Fri, 20 Oct 2023 08:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="grpTpOTa"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5DA810955
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 08:59:40 +0000 (UTC)
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB514D46
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 01:59:38 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9bf0ac97fdeso87259066b.2
        for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 01:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697792377; x=1698397177; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cvAmJdm1L/4rW9zueL82ns0p9a2/AM1y8/kSiRhGWNs=;
        b=grpTpOTaVlvfzQUDG9HofMaueUjrGqiEEkfLq2F4OdyLR7rZxVPUZlIEG0mr/anooY
         GaYt9qWTwf6do6+gkosiHEMfDLI34bhpm6MqZf96yElzIYqxXMqEh6RQjfji3M3x9oZ8
         efysu6mHcIuTc5NbyaC2h6hNxWpViJHgEDFrv7FMN1s9FTE18v9AOZiUz49/+f8diIxF
         Ed6rGaJjQankOQKBFWYOHShr2jy8vBjmyNfsDpD9oWBeF1j1D9uwd/fx+waUdK88xU9B
         ytvkZmYzqoAKTIgGKyur/13l2tFJkWTP8hREqZvLmy4GkIqMTcZtsCjvhfQpq7eADRZB
         1Jww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697792377; x=1698397177;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cvAmJdm1L/4rW9zueL82ns0p9a2/AM1y8/kSiRhGWNs=;
        b=qMWwhALMPtj0j8xNk8PUI5Mim3uEUykUKKa0sA8NdinIAC6vzrQ2QN4Ef4qCgGi7Zj
         vFnH8ltG9zd8rcQwg50o7v47S5M+1K6xHP9jD4MWExiY3fdY64ab07gWy5HEKqQ73cF2
         KU7b7z3bFro71HW3AHlVqeD6gmfVGELoxGlVtj4lQ/HVOEnp4dM77lbO4wjasmLXwEaP
         ZX6XCVuiRSoFaKZ9/QviUl9gZ944gP1YrWUfAax4grBGwZSbdkA+KeCAOyRwaq2tNbnX
         gyXMw9d+vCt9sfLxAorLK6zcRlp6TZ1j1RTcFXyVXBBDFVbpBBGADaDXOJ49jhHGXHyD
         qqIQ==
X-Gm-Message-State: AOJu0YxjQS2vSS5Ieku48rWZ1LkQxOH77BgxNqvD00F0q3fk6y/ym+Lv
	kHyG6rmvSs78WTtaiciCKZcigA==
X-Google-Smtp-Source: AGHT+IExC8vevp0pndVAS1fIUdM8itmafKqC/1iLT5pWYt2ekKMsHxRecc1mgqSNbscHdmg7If2BgQ==
X-Received: by 2002:a17:907:1c9e:b0:9ae:69ff:bcdb with SMTP id nb30-20020a1709071c9e00b009ae69ffbcdbmr966887ejc.31.1697792377182;
        Fri, 20 Oct 2023 01:59:37 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id a6-20020a1709064a4600b009ae05f9eab3sm1071104ejv.65.2023.10.20.01.59.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Oct 2023 01:59:36 -0700 (PDT)
Message-ID: <2bc15792-78f7-4498-b397-d8cf6053d864@linaro.org>
Date: Fri, 20 Oct 2023 10:59:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] coresight-tpdm: Correct the property name of MSR number
Content-Language: en-US
To: Tao Zhang <quic_taozha@quicinc.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Konrad Dybcio <konradybcio@gmail.com>, Mike Leach <mike.leach@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Jinlong Mao <quic_jinlmao@quicinc.com>, Leo Yan <leo.yan@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Tingwei Zhang <quic_tingweiz@quicinc.com>,
 Yuanfang Zhang <quic_yuanfang@quicinc.com>,
 Trilok Soni <quic_tsoni@quicinc.com>, Hao Zhang <quic_hazha@quicinc.com>,
 linux-arm-msm@vger.kernel.org, andersson@kernel.org
References: <1697770311-15392-1-git-send-email-quic_taozha@quicinc.com>
 <07ef7cf2-c5dc-4248-b72b-bad913f4508d@linaro.org>
 <d6cba576-5b65-425a-b769-e26a2595b391@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <d6cba576-5b65-425a-b769-e26a2595b391@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20/10/2023 10:13, Tao Zhang wrote:
>>> diff --git a/drivers/hwtracing/coresight/coresight-tpdm.c b/drivers/hwtracing/coresight/coresight-tpdm.c
>>> index b25284e..97654aa 100644
>>> --- a/drivers/hwtracing/coresight/coresight-tpdm.c
>>> +++ b/drivers/hwtracing/coresight/coresight-tpdm.c
>>> @@ -892,7 +892,7 @@ static int tpdm_probe(struct amba_device *adev, const struct amba_id *id)
>>>   
>>>   	if (drvdata && tpdm_has_dsb_dataset(drvdata))
>>>   		of_property_read_u32(drvdata->dev->of_node,
>>> -			   "qcom,dsb_msr_num", &drvdata->dsb_msr_num);
>>> +			   "qcom,dsb-msrs-num", &drvdata->dsb_msr_num);
>> So you never tested your DTS... We can keep asking about this but still
>> testing does not happen :/
> 
> Since this new property has not been applied on the exist upstream DTS, 
> I tested this driver with the
> 
> local DTS. Unfortunately, the property name in the local DTS is not 
> updated, this is why it is not found

But your local DTS would not pass dtbs_check tests, so that's why I am
saying - you never tested it on mainline kernel.

Best regards,
Krzysztof


