Return-Path: <devicetree+bounces-144864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A17E2A2F854
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 20:14:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3D9E0168F91
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 19:14:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2B29255E56;
	Mon, 10 Feb 2025 19:14:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pmGCU/Jf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ACED1F4625
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 19:14:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739214869; cv=none; b=FsvS7XmgwyG+2kN8BzSBdZ7pz1lImHmmsSIl0VMDIMOxIergtgbUiOXAgatYbGC9j/5R+XvW5h4hQbKLxISGBD2Lg2tCZx/IbVzIkC+Wdd1utbp7I2RFC01FvPIYHME1fMCU8HT/iC/9YwIla7Lm4vY7mL6hQIDzWFTnhrgQtik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739214869; c=relaxed/simple;
	bh=X9wUf0/KLMn21rtND5bb3daS3KaNjeTHthMpob+ENes=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=SAQDyV9IwiHFpga++t1ysYziAwW6PlC8A2XmbSO26apQq5DuANegGMFhPihe6XkgtJfNkgSd5TzKzPyFhBeHgtvjHur11nJkVlxl/bOlck8r3iH98RPgnlnpHLnXE9EVGdmR5M+GArXyPSTruUUEBHtRBfme++yzY0AN0JZR5DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pmGCU/Jf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51AAEK6w014440
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 19:14:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ETjjjuQUc5pHSX3yBeU6idxOQ9U9vuazBiCwM3NwEKs=; b=pmGCU/JfshY/9Mh0
	zQBJzaek2Ddrgwzg5swf9mG4JSzJdGKUk3OI8NCiYCEy/wp8BOSkBFgBC1gxI93Q
	rL8eThnX3J7ZYkm53xq9pnxjLdqg2/yKJkweFYXSyd3g0LudXO4CN6UHCNm5i10V
	MF+N3GNvPReKMtNLo6GQmkqatGldG4/z5wbNYNRqpvrjvj76se8rI0jitHHG2Nl/
	Xir8AJoZN7NtPHvTNXMmARDAsUSCA6ViYbqdn0hT/6mgWGKzKrriWDIezbEd36Wd
	YBWcUZTLmk1JMQREcXeEM8JEIuVJkm0nbrQZu6oaLXaEItDtrSG/ZwBBpy6N84qA
	uhFK2Q==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44p0guwbud-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 19:14:27 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e1b2251f36so7586476d6.3
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 11:14:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739214866; x=1739819666;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ETjjjuQUc5pHSX3yBeU6idxOQ9U9vuazBiCwM3NwEKs=;
        b=jNYFX/eQjktChiiM+bYwz57lDCipT/2t0/s4hDXsl0FsHc2qop15smSSYt5bOBPdOf
         2RRWk+Qa8K/6spI3EyeuDZizwShcWr0uhw5mEAaSi5E6xAKuH5OwPfcd+5YQcFlC2LSb
         9sVRW0OMScHKlCvzwWM7iGvsbYtZYJvAa75XJMfIYzbZyakQdbL6rP+HEDUYWQ3JHpRk
         BFe8kH0d03q4f8/yUbHafWVusZg+KjrrCAcQvDn9ab6yX3sXXUMUnh0ih7/JQotg/KlS
         OvkS1T846Lr84ejnvd+GoqHIHUnRhLuxrqEiUXQ0BZvwm9Yn0+ccY75KGjGOBMPqwTgL
         MYpA==
X-Forwarded-Encrypted: i=1; AJvYcCVADv5E+bHhgnXp5Jast4areM/fYNoD4Y6CS+jNkiuB45xsU8Ejthdg/rRSawuOR9U+RekBFyKXsHYd@vger.kernel.org
X-Gm-Message-State: AOJu0Yyge5ZU9S6b71ki1/Xw6fgiA1B/3fZf8Vk2L7ag4Lfaaaub6DgH
	0p08u2pAueF1vypI7wAVoMvDVXB3mrR3L34MUplJJp5/vwQNPB4bJh/VVZ7J9T/y2idBk8vIlmD
	sIFpP/Si7OU8RnTSBEzh5Dp9SXLRv/T+XR9yKHqOMuW3EcG1mTMGbu1AEiklL
X-Gm-Gg: ASbGncsUqNl5VU9HCMVNKov7F7NDSaTsh+TTYBF1kKmyhgdT4x4s1U8YKpXzpncb2QY
	hsMfukQpj+pugPtf7TNAFa4oAZrcDPWZDrgqghDQfpDsIPNoQA0J0FyotxmR2VkbZDYRW87CrR0
	veO7tqGiKU+i8qasP60hlNRQwjD/k0y0+QZiGkLWhBpOQY33+P2SbE09+GhOPtEfNSq/P5mfmf8
	zGfZcwaJjas/lgpUAbzbAblAKF7OQf3Yjq8ccZsGRTCiyocQGb7O9gG+dEpPmidg+4Ab5H8ubeA
	9E0e4oVZOZuuXVQ4MpwQxF/feYYZX2/IciOEVo23neZOY06ebK6t8Egs3oA=
X-Received: by 2002:a05:6214:226a:b0:6e4:2e03:c55a with SMTP id 6a1803df08f44-6e445705e57mr80589626d6.10.1739214866442;
        Mon, 10 Feb 2025 11:14:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFi3+tZ3onY9PM5B+ZRVR/Zg17E/DK7VPjVLQUCOO6KcOVvBRA2fmi6hwkbimYG7gCvx5WsRw==
X-Received: by 2002:a05:6214:226a:b0:6e4:2e03:c55a with SMTP id 6a1803df08f44-6e445705e57mr80589336d6.10.1739214865950;
        Mon, 10 Feb 2025 11:14:25 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7d5f84968sm66674366b.164.2025.02.10.11.14.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 11:14:25 -0800 (PST)
Message-ID: <32b02433-bf2a-4f22-afb3-485bcef4f85d@oss.qualcomm.com>
Date: Mon, 10 Feb 2025 20:14:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] clk: qcom: apss-ipq5424: Add ipq5424 apss clock
 controller
To: Sricharan Ramabadhran <quic_srichara@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        rafael@kernel.org, viresh.kumar@linaro.org, ilia.lin@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20250127093128.2611247-1-quic_srichara@quicinc.com>
 <20250127093128.2611247-3-quic_srichara@quicinc.com>
 <47f7553d-74a2-4da0-a64c-cc49a2170efb@oss.qualcomm.com>
 <123a324c-561a-4081-be43-8d8ed0662acc@quicinc.com>
 <6c8bb178-1758-4b73-bbaf-8572dc1216d3@oss.qualcomm.com>
 <7031f2da-36bb-4655-a4df-fa85c99e6eb4@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <7031f2da-36bb-4655-a4df-fa85c99e6eb4@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: v0kc0t_6DSLxTmbgM0HDXA1oinpNryO7
X-Proofpoint-GUID: v0kc0t_6DSLxTmbgM0HDXA1oinpNryO7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_10,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 phishscore=0
 clxscore=1015 adultscore=0 bulkscore=0 mlxscore=0 spamscore=0
 mlxlogscore=999 priorityscore=1501 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502100154

On 4.02.2025 7:28 AM, Sricharan Ramabadhran wrote:
> 
> 
> On 2/1/2025 8:55 PM, Konrad Dybcio wrote:
>> On 30.01.2025 11:03 AM, Sricharan Ramabadhran wrote:
>>>
>>>
>>> On 1/28/2025 5:29 PM, Konrad Dybcio wrote:
>>>> On 27.01.2025 10:31 AM, Sricharan R wrote:
>>>>> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
>>>>>
>>>>> CPU on Qualcomm ipq5424 is clocked by huayra PLL with RCG support.
>>>>> Add support for the APSS PLL, RCG and clock enable for ipq5424.
>>>>> The PLL, RCG register space are clubbed. Hence adding new APSS driver
>>>>> for both PLL and RCG/CBC control. Also the L3 cache has a separate pll
>>>>> and needs to be scaled along with the CPU.
>>>>>
>>>>> Co-developed-by: Md Sadre Alam <quic_mdalam@quicinc.com>
>>>>> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
>>>>> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
>>>>> ---
>>
>> [...]
>>
>>>>> +    clk_alpha_pll_configure(&ipq5424_l3_pll, regmap, &l3_pll_config);
>>>>> +
>>>>> +    clk_alpha_pll_configure(&ipq5424_apss_pll, regmap, &apss_pll_config);
>>>>> +
>>>>> +    ret = qcom_cc_really_probe(dev, &apss_ipq5424_desc, regmap);
>>>>> +    if (ret)
>>>>> +        return ret;
>>>>> +
>>>>> +    dev_dbg(&pdev->dev, "Registered APSS & L3 clock provider\n");
>>>>> +
>>>>> +    apss_ipq5424_cfg->dev = dev;
>>>>> +    apss_ipq5424_cfg->hw = &apss_silver_clk_src.clkr.hw;
>>>>> +    apss_ipq5424_cfg->cpu_clk_notifier.notifier_call = cpu_clk_notifier_fn;
>>>>> +
>>>>> +    apss_ipq5424_cfg->l3_clk = clk_hw_get_clk(&l3_core_clk.clkr.hw, "l3_clk");
>>>>> +    if (IS_ERR(apss_ipq5424_cfg->l3_clk)) {
>>>>> +        dev_err(&pdev->dev, "Failed to get L3 clk, %ld\n",
>>>>> +            PTR_ERR(apss_ipq5424_cfg->l3_clk));
>>>>> +        return PTR_ERR(apss_ipq5424_cfg->l3_clk);
>>>>> +    }
>>>>
>>>> Now that you'll use OPP, you can drop all this getting.. maybe even the
>>>> apss_ipq5424_cfg struct could be let go
>>>
>>> ok, is the suggestion here to use devm_pm_opp_set_config ?
>>
>> Since what you tried to do here is binding CPU and L3 frequencies together,
>> yeah, we can just scale two clocks from OPP.
>>
>> On some newer platforms using the epss-l3 driver, or on msm8996 with a more
>> complex setup, we expose the L3 voter as an interconnect, but here it would
>> seem that we directly control the clock that feeds it.
> 
> ok, will update and check.

+Dmitry

Giving it yet another thought, we now have infrastructure in clk/qcom/common.c
to register icc clocks. We can register the L3 one as such and make the
description like:

cpu0: cpu@0 {
	[...]
	interconnects = <&apss L3_CLK>;
	[...]
};

cpu_opp_table: opp-table {
	opp-1234000 {
		opp-hz = /bits/ 64 <1234000>;
		opp-peak-kBps = <SOME_L3_FREQ>;
	};
};

as that will both match how we modeled msm8996 & require less code changes

Dmitry, Bjorn?

Konrad

