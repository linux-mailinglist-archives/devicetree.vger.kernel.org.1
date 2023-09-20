Return-Path: <devicetree+bounces-1717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E147A7937
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 12:31:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 093491C20A4E
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 10:31:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B065979EE;
	Wed, 20 Sep 2023 10:31:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CBF30FA9
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 10:31:26 +0000 (UTC)
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0321DD
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 03:31:22 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2bffa8578feso60967191fa.2
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 03:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695205881; x=1695810681; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MVD5SlK5IIGGKLG6UNP4VEDAz9GKCdGc2ijrebuFT2c=;
        b=uZBeFSmRcdmcUtWWjV3NP1z73DKKds3IjxYtFKxKxflbFvRT2joiRLL/87kDo/+9af
         hpfdo6k9rbekNGrrALQmiF9TG/3zeTEBr2HmT0/sFEFjBZukR3TU4QWxy1OpL9ndC9ey
         ByvFuPfahw3TbDbJOSodcpbPfITLzbAM7sqkB66mRneUQoCVEgIKe4Ckm9DGYP846YjX
         LMh5Apa984jP7R29UFo+Qoa1IUZXawTDa0JeQc1N5utHg2OzCF50kRfoCBzFJGBBsWno
         SDdR148eJWHPLoQRasxjpslCBuS/Io6M5BOdSHzwXUpeywmwRbt5MAr1s7c6znr3Q1f2
         W/xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695205881; x=1695810681;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MVD5SlK5IIGGKLG6UNP4VEDAz9GKCdGc2ijrebuFT2c=;
        b=Wl4eidQmwQ8PppiE9QlZVIx11zVYA5IbqvhPUGXhdOcERm1JZtZKujaxhKL95arLDZ
         /e7Bwc4M4OHB/9+meg2DrsDqMinlFEpmIK55gcLgCLuGDY3O//3EiYwApDS9/3NZedQZ
         svPXVs2tqzpGkR/zGT2iQ8Y9fThVSkofspWWWXR38F/uu+Z+jMaLP7b41+5hXJ1eSjpn
         N9mMV0be5ImgR3a5VIfvYoI4P8MxYY1o/Q5SGog300kcriCdB1/CGobszr5prb99DMR1
         nEEcAOuRVDsQO7R+0YC0eFDrTSKhK3dcYPyP1feh2AYdw8s9xPI8BQKGdPKIWokO+opF
         kzPw==
X-Gm-Message-State: AOJu0Yy+igt8qZ49VXF4CzYkqTNbIHDci2eezLtq85RBIbfYk/ZzRfEi
	EfuHcDu4mjFG5z6w4vNZfJjKtw==
X-Google-Smtp-Source: AGHT+IHNqvuGUvh6tLyyqGFNnrZS8tPkhKrPSeCFZ5gntA/E1QFWtVaa4IX1aAwgMai+wj0aCBuWPA==
X-Received: by 2002:a2e:888c:0:b0:2bb:78ad:56cb with SMTP id k12-20020a2e888c000000b002bb78ad56cbmr1750067lji.37.1695205880732;
        Wed, 20 Sep 2023 03:31:20 -0700 (PDT)
Received: from [172.20.86.172] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id m21-20020a1709060d9500b009937dbabbd5sm9133554eji.220.2023.09.20.03.31.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 03:31:20 -0700 (PDT)
Message-ID: <0c3bc9d9-6c67-a025-ce86-82385794bd68@linaro.org>
Date: Wed, 20 Sep 2023 12:31:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 2/2] interconnect: qcom: Add SM4450 interconnect
 provider driver
Content-Language: en-US
To: Tengfei Fan <quic_tengfan@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, djakov@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 quic_tsoni@quicinc.com, quic_shashim@quicinc.com, quic_kaushalk@quicinc.com,
 quic_tdas@quicinc.com, quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com,
 kernel@quicinc.com
References: <20230915020129.19611-1-quic_tengfan@quicinc.com>
 <20230915020129.19611-3-quic_tengfan@quicinc.com>
 <dc209ac7-7a06-449b-a198-ce6fb3ba7ff7@linaro.org>
 <73a90202-1127-4469-a46d-7986343c51b1@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <73a90202-1127-4469-a46d-7986343c51b1@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/19/23 03:59, Tengfei Fan wrote:
> 
> 
> 在 9/15/2023 8:43 PM, Konrad Dybcio 写道:
>> On 15.09.2023 04:01, Tengfei Fan wrote:
>>> Add driver for the Qualcomm interconnect buses found in SM4450 based
>>> platforms. The topology consists of several NoCs that are controlled
>>> by a remote processor that collects the aggregated bandwidth for each
>>> master-slave pairs.
>>>
>>> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
>>> ---
>> [...]
>>
>>> +static struct qcom_icc_bcm bcm_acv_disp = {
>>> +    .name = "ACV",
>>> +    .num_nodes = 1,
>>> +    .nodes = { &ebi_disp },
>>> +};
>>> +
>>> +static struct qcom_icc_bcm bcm_mc0_disp = {
>>> +    .name = "MC0",
>>> +    .num_nodes = 1,
>>> +    .nodes = { &ebi_disp },
>>> +};
>>> +
>>> +static struct qcom_icc_bcm bcm_mm0_disp = {
>>> +    .name = "MM0",
>>> +    .num_nodes = 1,
>>> +    .nodes = { &qns_mem_noc_hf_disp },
>>> +};
>>> +
>>> +static struct qcom_icc_bcm bcm_sh0_disp = {
>>> +    .name = "SH0",
>>> +    .num_nodes = 1,
>>> +    .nodes = { &qns_llcc_disp },
>>> +};
>>> +
>>> +static struct qcom_icc_bcm bcm_sh1_disp = {
>>> +    .name = "SH1",
>>> +    .num_nodes = 1,
>>> +    .nodes = { &qnm_pcie_disp },
>>> +};
>> """
>> v1 -> v2:
>>    - remove DISP related paths
>> """
>>
>> you sure?
>>
>> + I still see _disp nodes..
>>
>> Konrad
> 
> Hi Konrad,
> only removed SLAVE_MNOC_HF_MEM_NOC_DISP related code actually as V1 
> comment.
No, I asked you to remove all nodes that only exist to access
non-APPS_RSC BCMs

Konrad

