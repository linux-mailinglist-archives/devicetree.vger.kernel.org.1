Return-Path: <devicetree+bounces-212232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E347B421F6
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 15:38:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED2551897A86
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 13:38:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3F6930AACD;
	Wed,  3 Sep 2025 13:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UpmHgTXV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9B03093DE
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 13:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756906695; cv=none; b=C/fGHfvugQTnsLZKnugOlXiJmjKxPDmpZEuyMlZoeaHtKkCfBneLQ4OUnXZVorFCebF8K8DQHJ/NmgfsBwon+ju7ehgfvDqua0De2fm7t+HXmC1LRWmYSCiGiih9AHZsOabUSuhJzB8Nfe5BtQNolDSfiihsktWAMQA7EouZqhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756906695; c=relaxed/simple;
	bh=LOn4lvVTz9RolUVuFrhuGbcWkHCfxy2FGtDMv4SJQ+g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MUu3s4VJEvpK6FKfGozErQh8cjZ9O+rgz+ZD46XeKMnmzqfTI6PQ1cwq2DwCyWUgurqsuERystnbs0uESPXhxaC1YB+saK0VMBApcn9v6Rjmw5DHm98xDk6mMUTKod+Mq34tbq9XtKwbXYgz+00TuqBFjZui2Ugb883e1CdWcFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UpmHgTXV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BEnj1013898
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 13:38:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+aXgx0C/TKBcTy6Wyua/O23sUvaZBDBg9e7hKnXJ9Os=; b=UpmHgTXV3+w3B4pt
	cREBVJYCxm0fGIOPXLriIEv6OMHG7Lal57rwNw+rbkwTCxBLFLJdPLdzXLiaUj35
	GcqpHQ92FITlQTgIY7urCVhiTjyJUOnmVILhH8Dgf1P7FdMZSbCIc4Nw4ancUIj/
	fDBk4mHUNyc/WTu87Kw1YwaFjssHcL1pVnnL0BYR/AK/tcJtfmfWS+sUpoc0DHsJ
	ZsVKGYTeG9J+x3KCFGj1so4SyqRvPZm/nL+IjU5Z0rJXw4BKysDU1ggGiuCGTdfR
	RjUxCgCcbI7OOwMYKFBkRQAJup95hfuAoAGVodfHlOBto5S+9tM1tB9ko0F4wBHb
	zHizJA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48w8wy7qfw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 13:38:12 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b3387c826eso12463661cf.2
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 06:38:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756906692; x=1757511492;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+aXgx0C/TKBcTy6Wyua/O23sUvaZBDBg9e7hKnXJ9Os=;
        b=pf2adW7Xz7+WwE9xv4SXJcfktKKS/tgvYGKUwqhr8LOB/1vM3ereThg00U1fL8U17l
         soCBmfxOyvS8x4fZKFkEFqcU/FAaCfL/uWB5Rmevi7FnitwYGxvRPSkmls/g79+OjIbA
         /k3UfuG5pBXMmoStTgS/a3zEZdkcyEW0HdXTXplzvM9OXfbK1jld/trTujkz41CJzMcR
         Y2QVU7oaqWI/cV1ytNLxrTH6l9QoJEMaqOAJ+GdUKQtwpmiOi/D73SMMGgp7yGcUD8sH
         1gWsRO/t2adwGi4CyYhKNGHwwdgcrK3avW5O6mxmrFnS8FeSPDoG0vSXQf1gtyu2A3Q+
         qh8g==
X-Forwarded-Encrypted: i=1; AJvYcCWenyIOidfyn9ovNkZofcX+giWIY+28j8jvLzW99axXwma57UWghPE3j4Ufsle1aSAFr4k0dhVaWMoh@vger.kernel.org
X-Gm-Message-State: AOJu0YxVThvQ70soA4H5TbaOncmOVZX9MhVkBBH2ueIHpAttNKkKO9+j
	OxAFDbryUckAMc+2xQB1z7+itzDph8dPaiIp5UY1iJuqxkhiwx2okVr4cMoVQ0HqHoFKmKSqCgD
	/zMIbrcu9nJwDSDWbwACYbbFM7KCGHuXqQ6JseALedPF9P5S8hp47RV6ZvFGKE8cd
X-Gm-Gg: ASbGncv4ZzTxvb/+XySd+phf4Lq0AFYuJ4k1k7V8sWIA4fxFRfUNiY+dq6HUaEc0wYJ
	4dhAPhNYirDM4+YhhdFw5iD4R6iNVGZIbbfC7IvW+TSDS5CG6qosJUv3kM1FyeJvBltHWBsXaBU
	PFOBTg8cDRGSy3+qlwOkGzw7CJ6ZPkf8QVLyFw2UXDIoqrkb8TTXflqGgFCHxzGY4/5DwSRgTDl
	cMVJ8UCrQNM2iCJwIh2GOh3KzyZp5mzNWwog6RZZ2LTUGWryP6GW5Cx/9sKgKfzBXk3cZB+TVac
	sSlLLF6RRhQ3/iDMonOH+VrFEmcQQte0h4544hpz0QosPhbBPOzPbh2d/PP0pV7ywYfQba7ZhI/
	bAbjwZfZhk4n3MbedwJBD5Q==
X-Received: by 2002:ac8:5e06:0:b0:4b2:f5a8:21da with SMTP id d75a77b69052e-4b313e1a3c7mr154164701cf.5.1756906691946;
        Wed, 03 Sep 2025 06:38:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHctp8klVVlJwh/I9Cv1/2OINdIX9gzROyxCMvF3SPTjSmgb2xzFihn2uTLcDdSBJMQgIRRKA==
X-Received: by 2002:ac8:5e06:0:b0:4b2:f5a8:21da with SMTP id d75a77b69052e-4b313e1a3c7mr154164281cf.5.1756906691437;
        Wed, 03 Sep 2025 06:38:11 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b046aa92242sm149794966b.59.2025.09.03.06.38.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 06:38:10 -0700 (PDT)
Message-ID: <e6761fbc-9f32-4fb6-afc8-7f76b591453f@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 15:38:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] phy: qcom: edp: Make the number of clocks flexible
To: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
References: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
 <20250903-phy-qcom-edp-add-missing-refclk-v2-2-d88c1b0cdc1b@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250903-phy-qcom-edp-add-missing-refclk-v2-2-d88c1b0cdc1b@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Ycq95xRf c=1 sm=1 tr=0 ts=68b844c4 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=JahnCVLux6B-E1IX8mMA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: kYWbon-isuVaF6mneASbTInSaDy_imIZ
X-Proofpoint-ORIG-GUID: kYWbon-isuVaF6mneASbTInSaDy_imIZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAxMDEwMSBTYWx0ZWRfXxWPWqt+7TeFl
 K7gJIviszWKpZzmTuzhAfs7wRbXP6TT8iiOVpZlpx+m0JTntvaY6flyFroNXRmk4EnSsEwg2fjV
 2zLHMmBtrcLQQn9vZVvpk7liN8EhELXNdcJh3vyc7+TwLp3vuNNsPJVXxCoxEEfj7xv1rkSbwmf
 C2V4Nqv178ia+cDAaon4tZfT0kOZGxmn3StwIM/yBP6TOCzX6ZDB3MZTL/eqCQRpsndfwkryBnr
 2c2hzxiwK8twjGLh21hSm371hUcYxjb4M1Y2MLVXLtfr3oCKLMJd+cnSdnaXL96G1zTXiqjINSN
 ohmJZOXfSMtrnGjns6bLaW5xHOVR7KIv6mTBrEgIacOyOP7NfcdHsbV+ul2HB2aTvPjazbdjuSn
 q7J2P41h
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_07,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509010101

On 9/3/25 2:37 PM, Abel Vesa wrote:
> On X Elite, the DP PHY needs another clock called refclk,
> while all other platforms do not. So get all the clocks
> regardless of how many there are provided.
> 
> Cc: stable@vger.kernel.org # v6.10
> Fixes: db83c107dc29 ("phy: qcom: edp: Add v6 specific ops and X1E80100 platform support")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

[...]


> @@ -1092,11 +1094,11 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
>  	if (IS_ERR(edp->pll))
>  		return PTR_ERR(edp->pll);
>  
> -	edp->clks[0].id = "aux";
> -	edp->clks[1].id = "cfg_ahb";
> -	ret = devm_clk_bulk_get(dev, ARRAY_SIZE(edp->clks), edp->clks);
> -	if (ret)
> -		return ret;
> +	edp->num_clks = devm_clk_bulk_get_all(dev, &edp->clks);
> +	if (edp->num_clks < 0) {
> +		dev_err(dev, "Failed to get clocks\n");
> +		return edp->num_clks;

return dev_err_probe(), also please print the ret code

Konrad

