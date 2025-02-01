Return-Path: <devicetree+bounces-142241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E788A249C8
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 16:26:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CB084165F9F
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 15:25:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1BE71C242C;
	Sat,  1 Feb 2025 15:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OK2zNtoE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FDA51C1F20
	for <devicetree@vger.kernel.org>; Sat,  1 Feb 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738423554; cv=none; b=nZTFMW7wF/NEUKifbIDnoO9gZNvl1aFxF7KNhub8HLTkDtNzYQaL4QV59LOXM6Ea5Rlg9MVUSCdb7tn/EOSuwOvj1DfqixVMG5oScAu+6/BThS9nGADx0fk9ehV70smvwqrzdRNksyyMkdLiggIXB/VFZuv9SVQ1XUV16qy+g1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738423554; c=relaxed/simple;
	bh=bMGJDTm54VyUfBj7wTKftvopxlIgt7SCO4Vc2DyNcws=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=tX6fRnN/WVVhNrxqW/morVcjGqhXOhT8YUkAuLyKKhPGBthWgq2PI3DA6B2o0/wHMXJ4rpsM0ECG6zVr1WNaJocYPEiVoD5hWgUsIBYXj15Zsa+XBDdSFeBuIRqnYXEWcqB5LtwNeHVIji6SmJ87wOmpCRKRjiiVx8B/KQ9GqL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OK2zNtoE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 511AHWBe027962
	for <devicetree@vger.kernel.org>; Sat, 1 Feb 2025 15:25:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QTo9BqCjU0lGgDcCNjXdcB4Ik7PEA06CtGWxusPeac8=; b=OK2zNtoE48tp2t9i
	29afXwALvJFiG7JeIZT7oaEtSPccfrQoAOYZ1/WAn3QDsiYcIXv8jINJtKK8nNMX
	lmNInehw8n7GCV9FuelvpwjaOSts6UYFdk9i8UDcDXMUPg5nEPvS+8WYD6PRgyI7
	5ShmS3RtACLeBUSzEHVBfu+SfflKw1r/nMSDQrydMsTnUH7iJnR6oL+1tKmdW4We
	irP8FMc9oxqXNHhuZKbQ2Ych3BI5pqUWVtx2mVPdMGwiRVOaFfzcLVASdIoDbT5s
	g+1VtxpFg3sk+nf6VHiaYU+CZz2xSyKWsfVkYC5SgRn9X5s69ggvazU96EsG0XcB
	4uShcQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44hd7j12a8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 15:25:52 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6dfba8de3cdso8644666d6.0
        for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 07:25:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738423551; x=1739028351;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QTo9BqCjU0lGgDcCNjXdcB4Ik7PEA06CtGWxusPeac8=;
        b=vXji2aUbIw3vNcZvfZtD60KvNN7uyyQTaejrilvOJcnPT82m+0leRJ3afTW2t3CJ5G
         hRhNLTctLWkptB9WoGGByer0IlCQ6gKReLA4z/SWActYx2AAft99h92ba3QMEywoeGi8
         s9yrJHi+uUoS85fyxvXGXufyF0HAbR09qsxKE7UKeO+Ah/+Ccqz+jDe961kY4i8sVUKN
         rnE3zoqgZPkY/Ar9swjp1vYlxQjAP8tAmm1dmIVfG3Uh4vSq4G3yJPQbsiZty6KpCrl/
         eD9NUrpQZaWntUpKS2vt9XMWLtBghw2HglqBVgjfoYuKOyVcYtawDPt/ZflWTQGY6Xxn
         YM6g==
X-Forwarded-Encrypted: i=1; AJvYcCVNA6CHlXZf8NZSpfpsqoESs/3w6GHQhd85YbXWeQ2O6xcPyksu3cwOVzkZUTRrHTXktCjItE4Me8f4@vger.kernel.org
X-Gm-Message-State: AOJu0Yyf3Xr59l4OD7J464CQhMtEHjVgYSj36yEttsXJZLG20ibBon0o
	XALgdmRJunYNQukirqV7q0jpsgshVOrkFBpZE0+qnyHCeDsFaBB5cdYeU3okCo4Vqx2sTZOf/cj
	qX63q/XPsbssBzrGYIqFSXNeCcs5x5TkFyYAFjnx3raj71iuB/X8HO+GPx17c
X-Gm-Gg: ASbGnct6iK9fnY19XAxaGCCngC/K/eHsjkeTOLSJxBgrhFx5RPkaYi4YADnajNWmcyd
	RYGmT8BXLFo2Hbt/l9xa7D36i1EGef5wz/AovJNWgvLI4/V6X5AoqqndQGI29BvkK30bBlk80tq
	sHrc6bDCrTCYC0j05xn4J4Hi2aybKjF22nCpbxnedyNHlEOPkCaAz5jE7/KPcvXeuZP4DQbQZBK
	mI1xNybh42DTAV6fqZSZiV8D0PhE/t/V2nzZnK4VAD9q1QKxTcubYKNYRohECgevKAWcJvNdcrq
	fUJK3YN7BmJTWLbEN52bJJ90XPagF/aNxepXjlNFSzuFbU61+FkH0Z+hi7A=
X-Received: by 2002:a05:620a:f06:b0:7b6:c6f8:1d28 with SMTP id af79cd13be357-7c00982326cmr615949385a.0.1738423551030;
        Sat, 01 Feb 2025 07:25:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF+tJvZOzHO9zhecnDoqQOoZhgTADi8PoLz0JR/IpfJMQZr3zy8CewISFLd+BDfgFAdPVutwA==
X-Received: by 2002:a05:620a:f06:b0:7b6:c6f8:1d28 with SMTP id af79cd13be357-7c00982326cmr615947785a.0.1738423550579;
        Sat, 01 Feb 2025 07:25:50 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6e47cf924sm457818666b.69.2025.02.01.07.25.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Feb 2025 07:25:50 -0800 (PST)
Message-ID: <6c8bb178-1758-4b73-bbaf-8572dc1216d3@oss.qualcomm.com>
Date: Sat, 1 Feb 2025 16:25:47 +0100
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
        linux-pm@vger.kernel.org
References: <20250127093128.2611247-1-quic_srichara@quicinc.com>
 <20250127093128.2611247-3-quic_srichara@quicinc.com>
 <47f7553d-74a2-4da0-a64c-cc49a2170efb@oss.qualcomm.com>
 <123a324c-561a-4081-be43-8d8ed0662acc@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <123a324c-561a-4081-be43-8d8ed0662acc@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: xc2WyqAkQ3bw3vxzM5K3n0dHJaA8nPlm
X-Proofpoint-GUID: xc2WyqAkQ3bw3vxzM5K3n0dHJaA8nPlm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-01_06,2025-01-31_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 suspectscore=0
 priorityscore=1501 phishscore=0 spamscore=0 bulkscore=0 malwarescore=0
 impostorscore=0 mlxscore=0 mlxlogscore=999 lowpriorityscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2501170000
 definitions=main-2502010134

On 30.01.2025 11:03 AM, Sricharan Ramabadhran wrote:
> 
> 
> On 1/28/2025 5:29 PM, Konrad Dybcio wrote:
>> On 27.01.2025 10:31 AM, Sricharan R wrote:
>>> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
>>>
>>> CPU on Qualcomm ipq5424 is clocked by huayra PLL with RCG support.
>>> Add support for the APSS PLL, RCG and clock enable for ipq5424.
>>> The PLL, RCG register space are clubbed. Hence adding new APSS driver
>>> for both PLL and RCG/CBC control. Also the L3 cache has a separate pll
>>> and needs to be scaled along with the CPU.
>>>
>>> Co-developed-by: Md Sadre Alam <quic_mdalam@quicinc.com>
>>> Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
>>> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
>>> ---

[...]

>>> +    clk_alpha_pll_configure(&ipq5424_l3_pll, regmap, &l3_pll_config);
>>> +
>>> +    clk_alpha_pll_configure(&ipq5424_apss_pll, regmap, &apss_pll_config);
>>> +
>>> +    ret = qcom_cc_really_probe(dev, &apss_ipq5424_desc, regmap);
>>> +    if (ret)
>>> +        return ret;
>>> +
>>> +    dev_dbg(&pdev->dev, "Registered APSS & L3 clock provider\n");
>>> +
>>> +    apss_ipq5424_cfg->dev = dev;
>>> +    apss_ipq5424_cfg->hw = &apss_silver_clk_src.clkr.hw;
>>> +    apss_ipq5424_cfg->cpu_clk_notifier.notifier_call = cpu_clk_notifier_fn;
>>> +
>>> +    apss_ipq5424_cfg->l3_clk = clk_hw_get_clk(&l3_core_clk.clkr.hw, "l3_clk");
>>> +    if (IS_ERR(apss_ipq5424_cfg->l3_clk)) {
>>> +        dev_err(&pdev->dev, "Failed to get L3 clk, %ld\n",
>>> +            PTR_ERR(apss_ipq5424_cfg->l3_clk));
>>> +        return PTR_ERR(apss_ipq5424_cfg->l3_clk);
>>> +    }
>>
>> Now that you'll use OPP, you can drop all this getting.. maybe even the
>> apss_ipq5424_cfg struct could be let go
> 
> ok, is the suggestion here to use devm_pm_opp_set_config ?

Since what you tried to do here is binding CPU and L3 frequencies together,
yeah, we can just scale two clocks from OPP.

On some newer platforms using the epss-l3 driver, or on msm8996 with a more
complex setup, we expose the L3 voter as an interconnect, but here it would
seem that we directly control the clock that feeds it.

Konrad

