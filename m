Return-Path: <devicetree+bounces-7279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3AD7BFDFD
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:40:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 07D562828EF
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:40:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 508AC1DFE1;
	Tue, 10 Oct 2023 13:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BaJC1Lss"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBDDE1DFDA
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:40:35 +0000 (UTC)
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 844891732
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 06:40:01 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2c012232792so70442361fa.0
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 06:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696945200; x=1697550000; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VPq482qd0uFnYCTndvvcH3roYJ83oyZMr/h7yZTA8GE=;
        b=BaJC1LssAglvkYG9wr0GE0RnmTYiGrcAWIq/3NFH0qtaoJ8Ko8qE9RvmdsNfI7+BTx
         BJ3Z8hsUw1KAgnzgDYmhP1l7h+op1QXg0ymy0/4lrht++TsiE2gFPxScEq2Q2sRg2OJu
         rZbH6W+sB7nRy7iF4A5g0Uwd9XY3O9MrXb/mcqP1WCdHR2Hr0igbWBF1QXJDUHZTEgNl
         bjPBiFA/P/yn8U638jrLCa1sGgsiz2OzR6YDh8hlE0JWVa/Un7UeNPiMHVNmfn95bRzJ
         3jcSd3yxQlruRYRPHs1P/IW4ib4QvUN22HCmvBK3njhyyy7ldNC4U2Xw6+CB5rUrSppF
         ocMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696945200; x=1697550000;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VPq482qd0uFnYCTndvvcH3roYJ83oyZMr/h7yZTA8GE=;
        b=G9eTvMifTAF7iq3ZLpMTnsx140cuWcCMmKyA/WCuuFqpQq0+OQdSkW7Y/AB8R8Q71H
         FYEzOym2NMFkIGT9v9A2xSX+OY7tbzAmJh7lZurTzZqVRZPTEA0+O8Yha7i2cP68drV7
         7ndDC2p/CuXm9gR1QCp1jfIQsXFhIyWMZ5UMKoeA+NlkZr+CEk8OkljV8kNekYU00+VZ
         G4byTO3wc7zw0FUQQrU+GaTEV7kgz5HRlysTNnpvTUSJTcb9RhNZ5ndaXwNTgQKPSqnh
         V3XYRjpb1FCNmdUHcEDMMXZHt8h8R0FC8GaXkxzZxIZ+IqhINKSKg8EOPpx3iCZinBxR
         wTGw==
X-Gm-Message-State: AOJu0Yyx5Kph1bwAgJ+DYK876i6y/HgG6kmkYyHYU38UxPKMYM5eWjku
	gq0TCqEeAt1mNZgbkGdsWsydxQ==
X-Google-Smtp-Source: AGHT+IEPlGDrahStHKnKG47gG0rsi2y8WXHGO9qkv87bzjG90NgAum3ZDiEy7lwyeUbHN+8DFs5AqA==
X-Received: by 2002:a2e:9805:0:b0:2c0:2b44:6eb7 with SMTP id a5-20020a2e9805000000b002c02b446eb7mr15831807ljj.35.1696945199692;
        Tue, 10 Oct 2023 06:39:59 -0700 (PDT)
Received: from [172.30.204.192] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id y9-20020a2e3209000000b002b9b9fd0f92sm2348720ljy.105.2023.10.10.06.39.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Oct 2023 06:39:58 -0700 (PDT)
Message-ID: <5b57e0e0-490e-464d-bdc8-5823ad8da2d8@linaro.org>
Date: Tue, 10 Oct 2023 15:39:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/4] cpufreq: qcom-nvmem: add support for IPQ8064
Content-Language: en-US
To: Robert Marko <robimarko@gmail.com>, ilia.lin@kernel.org,
 vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, agross@kernel.org,
 andersson@kernel.org, rafael@kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
Cc: Christian Marangi <ansuelsmth@gmail.com>
References: <20230930102218.229613-1-robimarko@gmail.com>
 <20230930102218.229613-3-robimarko@gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230930102218.229613-3-robimarko@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/30/23 12:21, Robert Marko wrote:
> From: Christian Marangi <ansuelsmth@gmail.com>
> 
> IPQ8064 comes in 3 families:
> * IPQ8062 up to 1.0GHz
> * IPQ8064/IPQ8066/IPQ8068 up to 1.4GHz
> * IPQ8065/IPQ8069 up to 1.7Ghz
> 
> So, in order to be able to support one OPP table, add support for
> IPQ8064 family based of SMEM SoC ID-s and correctly set the version so
> opp-supported-hw can be correctly used.
> 
> Bit are set with the following logic:
> * IPQ8062 BIT 0
> * IPQ8064/IPQ8066/IPQ8068 BIT 1
> * IPQ8065/IPQ8069 BIT 2
> 
> speed is never fused, only pvs values are fused.
> 
> IPQ806x SoC doesn't have pvs_version so we drop and we use the new
> pattern:
> opp-microvolt-speed0-pvs<PSV_VALUE>
> 
> Example:
> - for ipq8062 psv2
>    opp-microvolt-speed0-pvs2 = < 925000 878750 971250>
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---
[...]

> +{
> +	int speed = 0, pvs = 0, pvs_ver = 0;
> +	int msm_id, ret = 0;
> +	u8 *speedbin;
> +	size_t len;
> +
> +	speedbin = nvmem_cell_read(speedbin_nvmem, &len);
> +
> +	if (IS_ERR(speedbin))
The stray newline above this line triggers my OCD :D

> +		return PTR_ERR(speedbin);
> +
> +	if (len != 4) {
> +		dev_err(cpu_dev, "Unable to read nvmem data. Defaulting to 0!\n");
> +		kfree(speedbin);
> +		return -ENODEV;
> +	}
> +
> +	get_krait_bin_format_a(cpu_dev, &speed, &pvs, &pvs_ver, speedbin);
> +
> +	ret = qcom_smem_get_soc_id(&msm_id);
> +	if (ret)
> +		return ret;
speedbin leaks here

you can free it right after the get_krait.. call
> +
> +	switch (msm_id) {
> +	case QCOM_ID_IPQ8062:
> +		drv->versions = BIT(IPQ8062_VERSION);
> +		break;
> +	case QCOM_ID_IPQ8064:
> +	case QCOM_ID_IPQ8066:
> +	case QCOM_ID_IPQ8068:
> +		drv->versions = BIT(IPQ8064_VERSION);
> +		break;
> +	case QCOM_ID_IPQ8065:
> +	case QCOM_ID_IPQ8069:
> +		drv->versions = BIT(IPQ8065_VERSION);
> +		break;
> +	default:
> +		dev_err(cpu_dev,
> +			"SoC ID %u is not part of IPQ8064 family, limiting to 1.0GHz!\n",
> +			msm_id);
> +		drv->versions = BIT(IPQ8062_VERSION);
> +		break;
> +	}
> +
> +	/* IPQ8064 speed is never fused. Only pvs values are fused. */
> +	snprintf(*pvs_name, sizeof("speedXX-pvsXX"), "speed%d-pvs%d",
> +		 speed, pvs);
Then drop the format for `speed` and just throw in a zero!

[...]

> -	{ .compatible = "qcom,ipq8064", .data = &match_data_krait },
> +	{ .compatible = "qcom,ipq8064", .data = &match_data_ipq8064 },
This change demands a Fixes tag, because you're essentially saying "the 
support for this SoC was supposedly there, but it could have never 
worked and was broken all along".

Konrad

