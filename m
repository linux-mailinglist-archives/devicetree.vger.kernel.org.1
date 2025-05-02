Return-Path: <devicetree+bounces-172925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D1ADCAA6FE0
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 12:38:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 768BB188DC21
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 10:38:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCE1022F75D;
	Fri,  2 May 2025 10:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dpNExA7J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4899D19D07B
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 10:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746182297; cv=none; b=eliqek8T8af+Z7YYSrB79XSnAqY/oaxCHg70K2vdsTV03W0Q1BnMpkBb8WhckX5w3lmJcug/VFdG7xUM3IOgDtQaMj/8M2L0kPR/XYVG70RUWG2KT7CKFcC2qqTOEsioff5l8WYFtakQ52u0twDDVo1fadW32B7VlPGjGzhd0HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746182297; c=relaxed/simple;
	bh=Dsp/Vg3p6mjWb/dCOEj15xgjKuqN4noVHOK2BkCe6n0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qeCQt6Q5zC3IP2p6uZFDtF3C98PIxM6biB74zXmYN4oitLOR8Ku3KEVaqAUOQNFL1thimpfwWj+8UB04ITUKnnLq9QcYaif79YGvnX7hcC7w+wmvp2TrtKBFiZuQpT6UyTJMsxB70tGSdW38fEdRP+mslg+ZxHjsVBg/DZoLF+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dpNExA7J; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5421NHoD010367
	for <devicetree@vger.kernel.org>; Fri, 2 May 2025 10:38:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	27eve1BdY3tnRAGhbk65ewCzrhADgzBYCgA51jfhing=; b=dpNExA7JoWLT/JyH
	x7iXR1JkA+iVcobGXUWBiJBKDGHwoZFbCt3wgauV3xs1Vpd4wupWuTcI49WMlIly
	KP1kFhOZWabqGmeGQHRc2UXDN9XIY7ScYTQpFSyakfqjAVLBVIScXR9fer0i9M9P
	8DmqtacryeGMu5zRLxh9e3Gymqwba5LgIQCbP/BAGCl8GduE7FtILmh1HaMek5l0
	u9C+EZl91iD+z0EyFTf/b3jJ88WnD0pMwT5AgJsemlQmDfBpAJqVsQhcAy4LOSmA
	52oaYuqEi00BFoSkSBS+AgoA6dmio7m8SxPWxj7On7xx76Y65SxaG3MSNwmAz5So
	5ZkXow==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6ubr21u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 May 2025 10:38:14 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-476786e50d9so5582311cf.1
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 03:38:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746182294; x=1746787094;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=27eve1BdY3tnRAGhbk65ewCzrhADgzBYCgA51jfhing=;
        b=Om1eokvp3f8UopA4ulEM3mqDKa0/MIri/BEKQc73XiOV2rquY589ajSTBlSbWYKeEy
         wQ7emIcPUEa/VXrMepctHRlwb2uOSoAaHu4VuiJ3YZshlVsCpfBzWnX9lnpqzXeC4Fww
         w69QAI21pRkve7SWRX7QvCjkIUtMBHtB9f0QlLU3qK1l4obc+QYgStGXQzEHTU7K9p5Q
         HRTWjRB3t/tbAXsSnFDfFpCUD3nqYpoitv21xDtIJkofXKe0XyvseOmrQ8UJ7bzK0KSr
         fuyEZloysjYoDYdnDymPGutN3EdWVCL6JOJWg5JjhqL9TzL3MrnjHEYgBmU3tw1TeG22
         Tv6A==
X-Forwarded-Encrypted: i=1; AJvYcCUDbWYkhMyf5lDd7TaZKV9IGTgJZzJjXR0jvR6aPYU2vdi/hYFYmoIXmRiemzndnr3OZKYcg44rUHKU@vger.kernel.org
X-Gm-Message-State: AOJu0YwJ8poMnu7E3X+UTLBQtcy/iPDClZ7ntiCTYoMExqI8au33Kicj
	7QwCIt2bv4a74QybtUv7t0GSx88owHvTCxKhEbHbgfistQLvprhL5D7If7La8v4t9fqFiLiiSvf
	8t9VnWjPNgUouU2GuYsTSpiNkjPKEzjKWNmsjk3htJ/JQoB7yCjhafSUwQ3Aj
X-Gm-Gg: ASbGncsqMbARGhyztVoMftq8retodK6otr3tset2hN6Va4L7Qrpdd5eq5RON4iXefoj
	tnWG6C9hofVPBighWbFpQMr2PpvusPniKB4t6oyVG6PDPKZwnp4sA/bvp9hDPwaY9t71j+x8BHj
	6N/4XV9wAR9kA7ZpVS5//1QEYZBf7fVQVOmaInQiFhut0I559pjkHSPCB9/VjtxukAUzrX+PGcj
	5+zys7ZE9Km66pdz6xwgJFOX7KvEKe075RhLuEiwAfL0BtSLaqQNu9afYP8KnGDh53asDI2za6A
	FJd5tjVN85AmGyR4/vud9m1jeGVWNkLsnFHHFWK0mCbfBJnJmw1c2dOf4vZA9xhk7Eg=
X-Received: by 2002:ac8:5746:0:b0:472:1d00:1faa with SMTP id d75a77b69052e-48c32ec0727mr11918981cf.13.1746182293950;
        Fri, 02 May 2025 03:38:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEKHvEk56VJXvXDqb2SGsRRKO8oGVRV2j6K8YXDo+30VsX8SRDqdBcc7f+npY1XAg3WGjVVIQ==
X-Received: by 2002:ac8:5746:0:b0:472:1d00:1faa with SMTP id d75a77b69052e-48c32ec0727mr11918771cf.13.1746182293538;
        Fri, 02 May 2025 03:38:13 -0700 (PDT)
Received: from [192.168.65.113] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad1891a3bf9sm30951066b.50.2025.05.02.03.38.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 May 2025 03:38:13 -0700 (PDT)
Message-ID: <bd1ce180-1282-45f1-a893-5cc097eb6613@oss.qualcomm.com>
Date: Fri, 2 May 2025 12:38:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] clk: qcom: ipq-cmn-pll: Add IPQ5018 SoC support
To: george.moussalem@outlook.com, Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Luo Jie <quic_luoj@quicinc.com>,
        Lee Jones <lee@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250502-ipq5018-cmn-pll-v1-0-27902c1c4071@outlook.com>
 <20250502-ipq5018-cmn-pll-v1-3-27902c1c4071@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250502-ipq5018-cmn-pll-v1-3-27902c1c4071@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: HUU_2cSezF8XM81ygYhtoCvucdfH3Cge
X-Authority-Analysis: v=2.4 cv=bsxMBFai c=1 sm=1 tr=0 ts=6814a096 cx=c_pps a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=UqCG9HQmAAAA:8 a=Mz09UsMhJyW2FU7oNKkA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAyMDA4MiBTYWx0ZWRfXzV/Vqcf+WVJF x6TtDd96klXgDy6yL+od3FIfgEMHxqgrWSbyUbQyCQM6/L+bsdvT7yscTQA84DQKlquPrM3V3V1 6gQZ7bQ3TvAK1cu0FhQKYaauv9Vk+u7sGUE3oSWPmsRMRYMM0RdQH9nCQo5iAr/f89ZsI9NH5fy
 xSJMaBFA9UlT55B7eMXDZv+jxxvEc9XEQ3sUCvQFaWBM11ARJ5xxKFbVXVk7D0zarUAdvoVxC3q lwu/m6/LnNFuuYcN76+KehKkktA7zA3NVd86cnNRHWbZLGcdwWZzDFzIEK+fqM3MaXoG+BXD1Ha tBKVfcvY9WE2H0qpFVW0RqSuqIDKinqrK44nPIAygcS2EA80B9Rx5/y/P42K6KU9b4l3rTL7PKz
 HA6SwHnUlUi59q2KZjpEJ+zh7224c4pLHwkwRnqroqzk0W1jnZ03e57XojRrPGiy6Lur9v14
X-Proofpoint-ORIG-GUID: HUU_2cSezF8XM81ygYhtoCvucdfH3Cge
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-01_06,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 clxscore=1015 mlxscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 adultscore=0 malwarescore=0 bulkscore=0 suspectscore=0 mlxlogscore=678
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505020082

On 5/2/25 12:15 PM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> The CMN PLL in IPQ5018 SoC supplies fixed clocks to XO, sleep, and the
> ethernet block. The CMN PLL to the ethernet block must be enabled first
> by setting a specific register in the TCSR area set in the device tree.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

[...]

> +static inline int ipq_cmn_pll_eth_enable(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	unsigned int cmn_pll_offset;
> +	struct regmap *tcsr;
> +	int ret;
> +
> +	tcsr = syscon_regmap_lookup_by_phandle_args(dev->of_node, "qcom,cmn-pll-eth-enable",
> +						    1, &cmn_pll_offset);

So we have syscon_regmap_lookup_by_phandle_args() and
syscon_regmap_lookup_by_phandle_optional(), but we could also
use a syscon_regmap_lookup_by_phandle_args_optional() - could
you add that in drivers/mfd/syscon.c?

> +	if (IS_ERR(tcsr)) {
> +		ret = PTR_ERR(tcsr);
> +		/*
> +		 * continue if -ENODEV is returned as not all IPQ SoCs
> +		 * need to enable CMN PLL. If it's another error, return it.
> +		 */
> +		if (ret == -ENODEV)
> +			tcsr = NULL;
> +		else
> +			return ret;
> +	}
> +
> +	if (tcsr) {
> +		ret = regmap_update_bits(tcsr, cmn_pll_offset + TCSR_CMN_PLL_ETH,

I think it's better to just pass the exact register that we need,
instead of some loosely defined subregion - especially given the
structure likely will change across platforms

> +					 TCSR_CMN_PLL_ETH_ENABLE, TCSR_CMN_PLL_ETH_ENABLE);

regmap_set_bits()

> +		if (ret)
> +			return ret;

You can initialize ret to 0 and return ret below, unconditionally

> +	}
> +
> +	return 0;
> +}
> +
>  static int ipq_cmn_pll_clk_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
>  	int ret;
>  
> +	ret = ipq_cmn_pll_eth_enable(pdev);
> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				     "Fail to enable CMN PLL to ethernet");

Fail*ed*

Konrad

