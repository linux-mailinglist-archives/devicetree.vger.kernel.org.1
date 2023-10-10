Return-Path: <devicetree+bounces-7388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EB72A7C0496
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 21:26:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AFDB9281C39
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:26:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0978F3218B;
	Tue, 10 Oct 2023 19:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oszXq2R5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E4F165A
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 19:26:52 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A926D3
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:26:46 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-5042bfb4fe9so7433825e87.1
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696966005; x=1697570805; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M+6rfPIT5Qs4nYSzMA/UOS/nCpICENl2aTb8ca8T/Zc=;
        b=oszXq2R5PF4Sxmjfoec91fhXte2lRaPiyRiMvo3KuDlapP3Kdpa0dAEvuxPlN1ckB4
         azPDc7pk7Bz6V48ObIgnfNkxmpJPBI3LRQP5bruvcjRX5se/7TbYHagb0A2f8FV013Hd
         zm+bGO8wM9QJ6S62RjX9T3ShF9dbZAYivXGGdfZwwsArkk0TiWVuLUUtPihQgnXGqguu
         72ONN+bCadOA/eSZ4BnTCYCyqHMVrKKE2xjTzb9U46NgiKcghIFvAFVhugY9AoefME5H
         9CwVs9kVUbmNRlH/zpu1cpnMDpbUIwR+vzod6qCcTfzFQqi777nLFf2vV2DRnvglovqo
         bayQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696966005; x=1697570805;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M+6rfPIT5Qs4nYSzMA/UOS/nCpICENl2aTb8ca8T/Zc=;
        b=n8djnoGCqgSr8QVzjPN3v1+OrVTtXU2JMSKshBiTRJKdHXhR1QA9BlIuobvj7nhANj
         W/p8yRXHP0anM0im5gfPu8Pi39UAHFH6jcI1hFyefDCFJ1ZBJ708fUPyqRYpSxpPepOF
         84zO6SYC6e7WQ+M0Zy75ZXYapo6t+lgYRgA81VjDZvAvOyzc/3j/pgJweAsgt2Vt2Hzh
         IxR/dGnxqES1jKS+l/VF9w/Jwzbr0hGisrre9LMBXAfjNGbisqzgU+yDPIxd9RPDpNH+
         iEW5Xt6k6uY3wtuxzdaXpnZNsRbMyq8NqjvEUoTjSn+h/39g1EGhAozMraNKtnQkfzqc
         7U2g==
X-Gm-Message-State: AOJu0YxTkebAldA/mRLVx0d2U9HEDL6Dja2UvUWvUZNAaWHbeLC3fN6K
	O8QMi6Dk1oBMEkFIPdzU1RhRzw==
X-Google-Smtp-Source: AGHT+IFF5XFoH7IUXUg0uaL+/UGO9fbuPocNcepcEnAF4sm6ZJjbyl2BcOi6WWoOG40yH+aowuLq5Q==
X-Received: by 2002:ac2:5f90:0:b0:505:6fcd:dc41 with SMTP id r16-20020ac25f90000000b005056fcddc41mr13709463lfe.43.1696966004612;
        Tue, 10 Oct 2023 12:26:44 -0700 (PDT)
Received: from [172.30.204.182] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id d4-20020ac24c84000000b0050567a8b36esm1927443lfl.251.2023.10.10.12.26.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Oct 2023 12:26:44 -0700 (PDT)
Message-ID: <017265ae-c9d5-4ea0-94eb-9090945cbc91@linaro.org>
Date: Tue, 10 Oct 2023 21:26:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/4] cpufreq: qcom-nvmem: add support for IPQ8064
Content-Language: en-US
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Robert Marko <robimarko@gmail.com>, ilia.lin@kernel.org,
 vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, agross@kernel.org,
 andersson@kernel.org, rafael@kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
References: <20230930102218.229613-1-robimarko@gmail.com>
 <20230930102218.229613-3-robimarko@gmail.com>
 <5b57e0e0-490e-464d-bdc8-5823ad8da2d8@linaro.org>
 <65255add.df0a0220.ff2f9.021d@mx.google.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <65255add.df0a0220.ff2f9.021d@mx.google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/10/23 16:08, Christian Marangi wrote:
> On Tue, Oct 10, 2023 at 03:39:54PM +0200, Konrad Dybcio wrote:
>>
>>
>> On 9/30/23 12:21, Robert Marko wrote:
>>> From: Christian Marangi <ansuelsmth@gmail.com>
>>>
>>> IPQ8064 comes in 3 families:
>>> * IPQ8062 up to 1.0GHz
>>> * IPQ8064/IPQ8066/IPQ8068 up to 1.4GHz
>>> * IPQ8065/IPQ8069 up to 1.7Ghz
>>>
>>> So, in order to be able to support one OPP table, add support for
>>> IPQ8064 family based of SMEM SoC ID-s and correctly set the version so
>>> opp-supported-hw can be correctly used.
>>>
>>> Bit are set with the following logic:
>>> * IPQ8062 BIT 0
>>> * IPQ8064/IPQ8066/IPQ8068 BIT 1
>>> * IPQ8065/IPQ8069 BIT 2
>>>
>>> speed is never fused, only pvs values are fused.
>>>
>>> IPQ806x SoC doesn't have pvs_version so we drop and we use the new
>>> pattern:
>>> opp-microvolt-speed0-pvs<PSV_VALUE>
>>>
>>> Example:
>>> - for ipq8062 psv2
>>>     opp-microvolt-speed0-pvs2 = < 925000 878750 971250>
>>>
>>> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
>>> Signed-off-by: Robert Marko <robimarko@gmail.com>
>>> ---
>> [...]
>>
>>> +{
>>> +	int speed = 0, pvs = 0, pvs_ver = 0;
>>> +	int msm_id, ret = 0;
>>> +	u8 *speedbin;
>>> +	size_t len;
>>> +
>>> +	speedbin = nvmem_cell_read(speedbin_nvmem, &len);
>>> +
>>> +	if (IS_ERR(speedbin))
>> The stray newline above this line triggers my OCD :D
>>
>>> +		return PTR_ERR(speedbin);
>>> +
>>> +	if (len != 4) {
>>> +		dev_err(cpu_dev, "Unable to read nvmem data. Defaulting to 0!\n");
>>> +		kfree(speedbin);
>>> +		return -ENODEV;
>>> +	}
>>> +
>>> +	get_krait_bin_format_a(cpu_dev, &speed, &pvs, &pvs_ver, speedbin);
>>> +
>>> +	ret = qcom_smem_get_soc_id(&msm_id);
>>> +	if (ret)
>>> +		return ret;
>> speedbin leaks here
>>
>> you can free it right after the get_krait.. call
>>> +
>>> +	switch (msm_id) {
>>> +	case QCOM_ID_IPQ8062:
>>> +		drv->versions = BIT(IPQ8062_VERSION);
>>> +		break;
>>> +	case QCOM_ID_IPQ8064:
>>> +	case QCOM_ID_IPQ8066:
>>> +	case QCOM_ID_IPQ8068:
>>> +		drv->versions = BIT(IPQ8064_VERSION);
>>> +		break;
>>> +	case QCOM_ID_IPQ8065:
>>> +	case QCOM_ID_IPQ8069:
>>> +		drv->versions = BIT(IPQ8065_VERSION);
>>> +		break;
>>> +	default:
>>> +		dev_err(cpu_dev,
>>> +			"SoC ID %u is not part of IPQ8064 family, limiting to 1.0GHz!\n",
>>> +			msm_id);
>>> +		drv->versions = BIT(IPQ8062_VERSION);
>>> +		break;
>>> +	}
>>> +
>>> +	/* IPQ8064 speed is never fused. Only pvs values are fused. */
>>> +	snprintf(*pvs_name, sizeof("speedXX-pvsXX"), "speed%d-pvs%d",
>>> +		 speed, pvs);
>> Then drop the format for `speed` and just throw in a zero!
>>
>> [...]
>>
>>> -	{ .compatible = "qcom,ipq8064", .data = &match_data_krait },
>>> +	{ .compatible = "qcom,ipq8064", .data = &match_data_ipq8064 },
>> This change demands a Fixes tag, because you're essentially saying "the
>> support for this SoC was supposedly there, but it could have never worked
>> and was broken all along".
>>
> 
> Mhhh actually no. We are just changing the opp binding and introducing
> hardcoded versions. But the thing worked and actually it's what was used
> before this change in openwrt. Also current ipq806x dtsi doesn't have
> any opp definition so no regression there. (and also 99% downstream either
> use openwrt or use qcom sdk where this implementation is not used at
> all)
> 
> Given these thing should we still add a fixes tag referencing the commit
> that introduced the compatible for qcom,ipq8064? It's quite problematic
> as this depends on qcom_smem_get_soc_id().
Fixes only hints auto backports, you shouldn't be worried about putting 
fixes on commits that fix bugs.

I see this as a "didnt work" -> "works" commit, which in my eyes 
qualifies as a fix.

Konrad

