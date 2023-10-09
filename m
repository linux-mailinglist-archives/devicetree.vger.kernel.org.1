Return-Path: <devicetree+bounces-7039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B74B7BEC39
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 23:03:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E9A5B281ACA
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 21:03:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53D733FB33;
	Mon,  9 Oct 2023 21:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Tf09s6Zu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AE0F38DC0
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 21:03:54 +0000 (UTC)
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84A0BED
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 14:03:49 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2b9338e4695so63402051fa.2
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 14:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696885427; x=1697490227; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=43JczQhR06svhP3+MFO67a4XDgSpc7xK7wWPqbVY3mc=;
        b=Tf09s6ZuTFQ61khnhibD7Law+sJmp194b8dKjNVEczJTXEhSz/iVrQ/og+vR7IueXD
         iPeRaN50OUwiiJwg3v5pn9mrFTc1IBPzFhe/41h9cogtoH64juBQPq7CPoMyd1ux+nfT
         TsvA3ttggXKCHyvvNk2XEnqpYC38TW8Jg0kOUB2zIw0sGUGwVUMnbMz/UohfBJQqT9Ua
         XwikSQjW3z7gF5C+sh5o18UHRX0BYYQRMSaXwMZybOf7wWaYhC8ejAYBrBm/BV5Pcgft
         15l42CY0jrN8qqG5NVelUakkdT0BdfXGJxcpjPvuaRv2qKoRXShg27SwaHAv43H2ZeXJ
         Sw8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696885427; x=1697490227;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=43JczQhR06svhP3+MFO67a4XDgSpc7xK7wWPqbVY3mc=;
        b=uGNW3gNNv+TtjB38vOdBcqEkiZJcn8maTsfQTwzZUlBPtzwl4CNhjZgcRMn5TSfYZz
         xVLOmvqrHT7FK3drcU+TrYjL8w5HxljW/T+0EeoTZGTEW/h6djL1wNdmbgxqRNabkfdb
         BaPkRloNfyp9r3/0cOVXKEbEMFk14T38zIY4NntFNb7vfWdqSAedQhxDO5m5TXqCscQd
         9VPcOy5Gwpjjm4yH+FQHkhGGjG74lH/70U6k9Zugu35YqGq634nRn+7i9aXTLt+uvOA9
         0yFlbKlRWdI1xu685HB0BVT+Q7jpJuqNR4hCHMUlid8zKklFdpVHuCNPQH9qaXCZq1Bt
         SBhw==
X-Gm-Message-State: AOJu0Yxe7jIxB1S1HEhveECN7jouEMHxvLlqiKRyYjT6U4coR0xcGSFX
	0JFo7VOVK5J3Lenuyq1hJjIYUg==
X-Google-Smtp-Source: AGHT+IFMY7QqUdgo8VEEaNfc3AJxOGVDc5LmcHQuYLgMIPjPJlsAadiflZalp6ZB8QmqLruGsgB5CQ==
X-Received: by 2002:a05:651c:104:b0:2c0:240:b564 with SMTP id a4-20020a05651c010400b002c00240b564mr13779157ljb.15.1696885427576;
        Mon, 09 Oct 2023 14:03:47 -0700 (PDT)
Received: from [172.30.204.90] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id a19-20020a05651c011300b002bff365c7bfsm2155195ljb.35.2023.10.09.14.03.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Oct 2023 14:03:47 -0700 (PDT)
Message-ID: <0a039a5a-46c8-4f63-a9e4-fd5b197340ab@linaro.org>
Date: Mon, 9 Oct 2023 23:03:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: arm: Add new compatible for smc/hvc
 transport for SCMI
Content-Language: en-US
To: Nikunj Kela <quic_nkela@quicinc.com>, Sudeep Holla <sudeep.holla@arm.com>
Cc: cristian.marussi@arm.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 andersson@kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
References: <20230718160833.36397-1-quic_nkela@quicinc.com>
 <20231006164206.40710-1-quic_nkela@quicinc.com>
 <20231006164206.40710-2-quic_nkela@quicinc.com>
 <20231009144154.vfx5caqxtyezulxx@bogus>
 <b1c9ad08-5aad-ccbd-247c-a5b2aaa42b5b@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <b1c9ad08-5aad-ccbd-247c-a5b2aaa42b5b@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/9/23 16:52, Nikunj Kela wrote:
> 
> On 10/9/2023 7:41 AM, Sudeep Holla wrote:
>> On Fri, Oct 06, 2023 at 09:42:05AM -0700, Nikunj Kela wrote:
>>> Introduce compatible "qcom,scmi-smc" for SCMI smc/hvc transport 
>>> channel for
>>> Qualcomm virtual platforms.
>>>
>>> This compatible mandates populating an additional parameter 
>>> 'capability-id'
>>> from the last 8 bytes of the shmem channel.
>>>
>> While I am happy with the simplification here, I am also bit nervous how
>> long before Qualcomm abandons this. I hope this is adopted as is in all
>> internal and downstream code without any modifications and this is not
>> just a push for upstreaming some change to minimise delta with internal/
>> downstream code.
>>
>> -- 
>> Regards,
>> Sudeep
> 
> Qualcomm is using patch on all the virtual auto platforms using 
> shmem/doorbell as scmi channel. This is already being used without any 
> modifications in our downstream code. No delta for this patch series. 
> Thanks!
AFAICT Sudeep is looking for a solid guarantee that it will continue to 
be used as-is, on more than one platform and on more than one BSP version.

There have been cases where such firmware interfaces had silent ABI 
breaks (or were replaced altogether) between qc downstream branches and 
this would be unacceptable. Understandably, having a unified means of 
communication for *all* Qualcomm chips (i.e. not only auto) going 
forward would likely be expected..

Konrad

