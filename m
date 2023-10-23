Return-Path: <devicetree+bounces-10888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DC20F7D354D
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 13:47:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A7B31C20503
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 11:47:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 540FB101D9;
	Mon, 23 Oct 2023 11:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HAAkLz4x"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3FE4168B0
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 11:47:03 +0000 (UTC)
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07E9210EA
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 04:46:59 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-32dff08bbdbso474535f8f.2
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 04:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698061617; x=1698666417; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/aQyZPVzLxsI9C8y7ikgMEjlP5ljwGXoP1pnDJZm8wU=;
        b=HAAkLz4xwioukr6+tgVgn1LsG8F3t4W85R+Y/hFxbOSlDMUqmQQhMuVLTxJpDaqqhA
         sb5A4oI9PZQaSRSrxn4yAKkoJPeRMMozE6wH5U7qFfhv9pLFuHvKwqXoPhWOm7ugrLWS
         tNxS/pI3JMHgRCi1ehtyi1FIPSYGebZ3qthRM5drVXxMUZb/m1yWO1x94XSp5VSQqVdb
         1Fa5On4+oSE87AqISmFRFw9ifRpg+oB53akGZnSTqJOp2X2AIaD6GhD26ATYWtMdv6AL
         X43nV4VpP5nMniFwOLRm5VtV461x7C7YZxWdghunbsBRMlhZda8ZHz9U9iSV0t3FvqEi
         Pvbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698061617; x=1698666417;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/aQyZPVzLxsI9C8y7ikgMEjlP5ljwGXoP1pnDJZm8wU=;
        b=iTNTvEbP7pSE/f6st5Js+9ZNGqum//eEiKvhDHhQWPTrtCCYwgWqc83hz6nosJs5ai
         G/uZWOo/fXOOs5JuiKOsn4B/xm8msjbna2kWjGW06zKco+tbnIdGSBkEQrApKM1a+vzj
         RruW+UpCzPyTIXWu4Jl8T2sUR9Jdm7Aqoav0RHvKE4W1DME5TlxWottAI7xgTeg3WORG
         jWwJS1vV6RqytIyuglfyPCP39/f/FdbNf3DOXRazIGoqTTMpgrc4K/lNrltn4VIbX8gO
         85Mq5eX2i0HfpsfU4/misqrNHW3jNjBhW2BFoDrpveLBHLg3y7+ebc5zY0M/7XngJcnp
         NqLw==
X-Gm-Message-State: AOJu0Yx7p941v6h0jvj7fIZJ+NItuitx/uHl8KgkTZuvpVGTvbZ13E3/
	5o6RRmldsSYpy2I/8j5+98fcxg==
X-Google-Smtp-Source: AGHT+IFIBHuuBtLHDzJzg5LyNP4jp+H9d1fvC/QSxlNc1x81e0w8+9iEpYnaRg771nWBpgxf0Qwhjg==
X-Received: by 2002:a05:6000:1f07:b0:32c:837e:ef0 with SMTP id bv7-20020a0560001f0700b0032c837e0ef0mr8266917wrb.50.1698061617436;
        Mon, 23 Oct 2023 04:46:57 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id k12-20020a5d518c000000b0031f82743e25sm7579996wrv.67.2023.10.23.04.46.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Oct 2023 04:46:56 -0700 (PDT)
Message-ID: <454c4267-6bb7-456e-8dc1-cba83ffd1641@linaro.org>
Date: Mon, 23 Oct 2023 13:46:54 +0200
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
 andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com, quic_tingweiz@quicinc.com
References: <1698052857-6918-1-git-send-email-quic_zhenhuah@quicinc.com>
 <1698052857-6918-4-git-send-email-quic_zhenhuah@quicinc.com>
 <5bac8188-7d27-4efe-9493-dec4393fbeb0@linaro.org>
 <b455d4f7-0347-ac07-6d41-32b3f06c4f0a@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <b455d4f7-0347-ac07-6d41-32b3f06c4f0a@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23/10/2023 13:43, Zhenhua Huang wrote:
>>> +
>>> +			mem_dump_apply_offset(&dump_vaddr, &phys_addr,
>>> +					      size + QCOM_DUMP_DATA_SIZE);
>>> +			if (phys_addr > phys_end_addr) {
>>> +				dev_err_probe(dev, -ENOMEM, "Exceeding allocated region\n");
>>
>> ENOMEM? Does not look right then.
> 
> ENOMEM means the memory allocated not enough? any suggestion? Thanks.

The error code is okay, but we rarely need to print error messages for
memory allocation failures. Core prints it already.

> 
>>
>>> +				return -ENOMEM;
>>> +			}
>>> +		} else {
>>> +			continue;
>>> +		}
>>> +	}
>>> +
>>> +	return ret;
>>> +}
>>> +
>>> +static int __init mem_dump_probe(struct platform_device *pdev)
>>> +{
>>> +	struct qcom_memory_dump *memdump;
>>> +	struct device *dev = &pdev->dev;
>>> +	struct page *page;
>>> +	size_t total_size;
>>> +	int ret = 0;
>>> +
>>> +	memdump = devm_kzalloc(dev, sizeof(struct qcom_memory_dump),
>>> +			       GFP_KERNEL);
>>> +	if (!memdump)
>>> +		return -ENOMEM;
>>> +
>>> +	dev_set_drvdata(dev, memdump);
>>> +
>>> +	/* check and initiate CMA region */
>>> +	ret = mem_dump_reserve_mem(dev);
>>> +	if (ret)
>>> +		return ret;
>>> +
>>> +	/* allocate and populate */
>>> +	page = mem_dump_alloc_mem(dev, &total_size);
>>> +	if (IS_ERR(page)) {
>>> +		ret = PTR_ERR(page);
>>> +		dev_err_probe(dev, ret, "mem dump alloc failed\n");
>>
>> No, the syntax is:
>> ret = dev_err_probe
>>
>> But why do you print messgaes for memory allocations?
> 
> Do you think it's useless because mm codes should print error as well if 
> failure ?

We fixed this in kernel long, long, long time ago so we have even
coccicheck scripts to find misuses.



Best regards,
Krzysztof


