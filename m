Return-Path: <devicetree+bounces-10932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F6B7D3892
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 15:56:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9764DB20B14
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 13:56:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A40A1A580;
	Mon, 23 Oct 2023 13:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ikHzxRvQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE7C011CAC
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 13:56:42 +0000 (UTC)
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AB7D101
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 06:56:41 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2c5071165d5so14874231fa.0
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 06:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698069399; x=1698674199; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZGDsFAnQCaoq3b3jA1o7GPQU1Dt8En35Q16rALo+5eU=;
        b=ikHzxRvQbVpH5vrJmgvBAYlQUvzHU9PiKsK3jk0Kmm9nAkwXa+R/KoHWEBKABWq9gA
         b1nhvkRVfBg3W0Fde2H0nKxr/WuKc3vlcWyheKUuHjx+RUFBFZS6Sytuoz5x1S9/wrYk
         8jcyyupv/GK+MwjnLIQ3rZcXaQJqfzO6H4/wRYtnYxh7dCuVsHCeXM/SjTkor6klpiku
         tAPWnEO4lWRfj06IOsrlBYDggeZJ2+42uqfeZn/BdcbANvuzqjoXn2CHIzMeAUCnQ8Hf
         Q0edfjZ+DRjFi9s0g0A760GrnACCCAW13KrG/PNcFQPUXYIS/tey+VkVV/OEf9KEunYa
         hi8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698069399; x=1698674199;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZGDsFAnQCaoq3b3jA1o7GPQU1Dt8En35Q16rALo+5eU=;
        b=kVw9Gd3yq/SBv9ny4Jk1fLc61vUuMfQEdBQFJQxxsEZyOoVTvPAVnv9iYBBFN1DONB
         KPxPEKeIrBCZ8xLUVsLpBpolbNGLcUYCe0xPtWJhjE5HDz1KDsxPrheF+vUlIdGCb/Lv
         J59jHVccyxlN33zsg/dwPxoLDYfnHmgycv/e9ylH+MVxOKrrHSQA0ssqZXIVs5kZM2NA
         mMiR95a2uHhrTLG5bRF9ttdnTkQfPBSPB0LJUnTOVeJsHLPt4ehHf3fMaUl7tAeyZK5P
         JAJ5WvzGMQhZ7wAeR8+fdB/T1wAWiLdBz1lJcyPDRu45slITa5ozXf3qQZvjWS4kM543
         NjXA==
X-Gm-Message-State: AOJu0Yz40D06vWlnrr/ODeDAGNCW0iMVTpQxlzTSc8vEXE3NlgmO8p97
	71GxGxwX9cfs0WtlAnYgGUyBuQ==
X-Google-Smtp-Source: AGHT+IGu1bOYZpsjOtP1nsc004gIteSqjbTZ8e3xJlLp6zjU7iNPT6jIXRlHtD1TSO07ZMCnrEmR2w==
X-Received: by 2002:ac2:55a5:0:b0:507:9a87:26c1 with SMTP id y5-20020ac255a5000000b005079a8726c1mr5143576lfg.26.1698069399499;
        Mon, 23 Oct 2023 06:56:39 -0700 (PDT)
Received: from [192.168.204.110] (178235177080.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.80])
        by smtp.gmail.com with ESMTPSA id c8-20020a056512074800b004fe202a5c7csm1704041lfs.135.2023.10.23.06.56.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Oct 2023 06:56:39 -0700 (PDT)
Message-ID: <1e9605c6-0afb-4613-927f-c07227334f51@linaro.org>
Date: Mon, 23 Oct 2023 15:56:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/5] soc: qcom: memory_dump: Add memory dump driver
Content-Language: en-US
To: Zhenhua Huang <quic_zhenhuah@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com, quic_tingweiz@quicinc.com
References: <1698052857-6918-1-git-send-email-quic_zhenhuah@quicinc.com>
 <1698052857-6918-4-git-send-email-quic_zhenhuah@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <1698052857-6918-4-git-send-email-quic_zhenhuah@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23.10.2023 11:20, Zhenhua Huang wrote:
> Qualcomm memory dump driver initializes system memory dump table.
> Firmware dumps system cache, internal memory, peripheral registers
> to DDR as per this table after system crashes and warm resets. The
> driver reserves memory, populates ids and sizes for firmware dumping
> according to the configuration.
> 
> Signed-off-by: Zhenhua Huang <quic_zhenhuah@quicinc.com>
> ---
[...]


> +#define MAX_NUM_ENTRIES		0x150
The number of entries makes more sense as a dec number

> +#define QCOM_DUMP_MAKE_VERSION(major, minor)	(((major) << 20) | (minor))
> +#define QCOM_DUMP_TABLE_VERSION		QCOM_DUMP_MAKE_VERSION(2, 0)
I feel like doing this:

#define QCOM_DUMP_TABLE_VERSION(major, minor)	((major << 20) | (minor))

...

someval = QCOM_DUMP_TABLE_VERSION(2, 0)

would make more sense, since v2.0 seems to be the only supported target..

[...]

> +			if (phys_addr > phys_end_addr) {
> +				dev_err_probe(dev, -ENOMEM, "Exceeding allocated region\n");
> +				return -ENOMEM;
> +			}
> +		} else {
> +			continue;
You can check for the inverse and bail out early, saving yourself
a lot of tabs

[...]

> +MODULE_DESCRIPTION("Memory Dump Driver");
Missing some mention of it being QC specific

Konrad

