Return-Path: <devicetree+bounces-243447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C79C97B8E
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 14:52:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E25D3A199B
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 13:52:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 124783115A6;
	Mon,  1 Dec 2025 13:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jjO7OiZ/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Pvp48CPV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DB7B30FC2D
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 13:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764597139; cv=none; b=ImN+vgs6GMOP0755SG2BCqPxd9P1rSIYxRNqZNtBWqYqzGs4y+wQVCUOn+slqyF2vcN7HxEIWCUheu7iZdPcob1lZVnSep7TzNb335dKp8IHzlp8aRlQufY7iMxl3vt6utKLgUNuXHL7AbV2t511at7RorHCaxiacpdp3LNYobY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764597139; c=relaxed/simple;
	bh=EdBa2yLMarweBQz0sJUl4dwDNu01XZVe4Vj8ey7u1kw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=djfv0H8cbiWt2vjLx1gd60iLMIvJMrZ1GjdE3Vp9RxeltOrPtWkqzZaylEvd8oYvYt0AoTgBjOVsALdkSMTf48uIwady8j/P0MLZWH1YScej8qz6u2aXb1LfgxG2uoVcMn9y+9VHEnQzVzDjd8PvzorOM7Ea9LdUvWIf1k1F2eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jjO7OiZ/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Pvp48CPV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B1BK5Mv106130
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 13:52:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HSWsLfGRcOlbhK/JblDVcW8zBtmlwoasmX/RtgoQmXY=; b=jjO7OiZ/j5MNFp1j
	V74DHcTyhZsMbvTLGWpQP2Lfe5jDt34cr+RW0RsXCCoL0XFVnJEDx/bvx3t+Nif0
	DBGiIoHAO7NbVJaREes5NVZzuVykNBVGstf3ZR53bNWP7usSfqSUkcVlaGC+MHKs
	3qUwuXG/kpI/T7wsOiA2apE4fggu0pnuWaEl26IHKF+2c5x3zTfD9R4/Cl6cfuKW
	XMk7Esa0mhJ47qzrkeve0fLEEoWOLLVF07j8lHepgpPiXMXe0yecVb5+L11b+n8l
	omN6b/2aKj2T1kVxMfgNbFQB2BUmksX3+pk8vH2lWr/45UdAcFrPQEtICRhJVmBx
	SmTgCQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4asa238cfy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 13:52:11 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed5ff5e770so7531511cf.3
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 05:52:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764597131; x=1765201931; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HSWsLfGRcOlbhK/JblDVcW8zBtmlwoasmX/RtgoQmXY=;
        b=Pvp48CPVtqfS017Q9viLwS66/NiZpWiWei3bJ85KDsVCJ4GTVFTZd9SKQ5jEMvlD01
         iq/TUjremKwII9KwSAyaTbpdpvCQEDRpHGrzTNOHgYINzs9Vaen6L1dYAWPWo62S2CZi
         AXSeItbR68X5TjPcIyCtMKrwulZ044F35vXlET6g+/tML/hXbZPb3UTTIp8HeYoLZCo1
         toNSWP1Y1ZfS16/D8AB1qXdR7xHHtR4TyBVUKPMMcMdOSJqxD0dbhaxCrRH0zPGDqywU
         EzwmooMcS16LpLjNAYkVmECUeLr/V58gI4r+uAT/GT8OIwpl4sqiwDtYm/nxt21NndDF
         jYCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764597131; x=1765201931;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HSWsLfGRcOlbhK/JblDVcW8zBtmlwoasmX/RtgoQmXY=;
        b=tMXhfqkmfWaRJQ1uED51f0E0meSzcrvH5M6m7TFeptOA18CR9Xfl7AxOyH7s5Iv2i5
         l9uOsyshx3OUxGImJ7LlD1PW0ATXWNi5uJXKGn5oFEluEpOe8y6RcVPNFFY+OHkMPcYw
         np5JMPCqKBouiiTVJ6Lnm0WWGuIRtCxcUQ+4FoU1cN8leR0Ju4GWjOB3gfbnHbeRFwqV
         XoQvVYmGNH/nlsi95oQo7IWJOdup67pYi2tTaqTE2o6S9vNKtomDVqxY+LLLS9/VeT1G
         3fG+pQmkGnM27UGgIMrH11NtS5cphK6S7NdKF6cmBaA2J57jZFHI9zkovPmkB5Y+9L0D
         R+gA==
X-Forwarded-Encrypted: i=1; AJvYcCXRSQpWegZLSzTZGutHTCMkAj7P0R/9eoLQQ9FQzpmZz7elbS5LXKwOdvbEDEsoUGgUvadMRsoqam+p@vger.kernel.org
X-Gm-Message-State: AOJu0YwJ9yTAm0OOOZX1dPj2Ha6CsZDESeMXji3cmO7FeGdwXyZtZNgs
	umnX4ECaA5t+WWSoZ8wNFJHi9bBgA530ho5j5W9k9F0MIHzOco4XH7nT3OaSgmijuIU25WFbkHL
	xm+xQ9bCCv5QYmLoJ22pOmIeSyBjGbheDcxeEgQ1TfwLQ+sAwZWtrKXToPmrNxPrY
X-Gm-Gg: ASbGncsVoUR9IIfh7VxkubjBHjs0vZV8UHEM7TQ9xcz9uoL4dySeifPgLzf+CBXBQsV
	GBWQfbcPsHwvZgbYa2IXk65nEDkaqnjobbvKTB/gm/F5OYxIq7Ang4t2Obsi756YG6tZSmNRjSH
	phRsOnOStX+CWAqAJUENAtZwI+YzN9vCBsTtGqlZb7gCi3jIZAMQjVQ9yDYmmNjRYkudENivMQ8
	ljsJUrwOCI5cR1JO6t3s6hnIhsILNojv5luS6h88QMcY+1qFcuA8vBApBUp3BczKrsc0xWzWh6q
	rFYxMNvMJLPoQQ7fK2CnefXb2hlhm77mvR6xYk8CvGCpbIiiM+ZcmeJ9mgiyLkWucuy76Cx3BSw
	T4qeCl/zFQARaxfhp6vROnDeyS/M/CAobcMQCT2HiMR5+Umu8XBSugg4kxW4SzHlDg1w=
X-Received: by 2002:a05:622a:1a94:b0:4ed:94e7:97bc with SMTP id d75a77b69052e-4ee58850870mr387824061cf.3.1764597130606;
        Mon, 01 Dec 2025 05:52:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHOcBof54FKlNxQypJiOwkIYUdhopho3zlmK8tqCpIc9TU8cOhP418zn9aWrVu9oDrWj4BKcw==
X-Received: by 2002:a05:622a:1a94:b0:4ed:94e7:97bc with SMTP id d75a77b69052e-4ee58850870mr387823431cf.3.1764597130126;
        Mon, 01 Dec 2025 05:52:10 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64750a90d5dsm12489095a12.12.2025.12.01.05.52.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 05:52:08 -0800 (PST)
Message-ID: <6e12f446-7792-44da-9e06-99729c3b066d@oss.qualcomm.com>
Date: Mon, 1 Dec 2025 14:52:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] clk: qcom: cmnpll: Add IPQ5332 SoC support
To: Luo Jie <jie.luo@oss.qualcomm.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Luo Jie <quic_luoj@quicinc.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com, quic_pavir@quicinc.com,
        quic_suruchia@quicinc.com
References: <20251128-qcom_ipq5332_cmnpll-v1-0-55127ba85613@oss.qualcomm.com>
 <20251128-qcom_ipq5332_cmnpll-v1-3-55127ba85613@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251128-qcom_ipq5332_cmnpll-v1-3-55127ba85613@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dOurWeZb c=1 sm=1 tr=0 ts=692d9d8b cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=OpNYcKt94wLiKn9aZLwA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: 9k02tFXbLUJRzBV_LzY3ZlSeVl7lsM0c
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDExMyBTYWx0ZWRfXyEuiJg6BBKda
 RZvNDRNil/hXLLyziqFmQT8OSrHURpUy0dThw1vGmCcJPChT1hI51KBiP3BXLEYf/YoWQs8smys
 VRt3wwcUjjTj+eZ8vYn4oH+EFA4b6BvAnGWFwmdemQz3U0EbEgflYQdxmdyqF2qeP8qVe9zn1oz
 yefjxWAKXx4lg3GYI14G0Qg6OAk5gbP0lt7geW2N8XLwQNIbL2ETKB7T5GKSMp5SE/mETT8Nbjz
 lvB0IvB4DVjtIAwoPQwBMuebpXG9XI7Vas2p/9EKwKsTJg9pmVfNgAcHKdYb62iDNFqoFjNpLPW
 WVBGe208EW07FVbCoe2cM6Zyiojx6VP2CVmhBG4PgiYxWBtjniN8qvModsz6JoT/JCmAWm4Yntl
 KHem4yj3eipF4kcf1N7uwP/KFlIJSw==
X-Proofpoint-ORIG-GUID: 9k02tFXbLUJRzBV_LzY3ZlSeVl7lsM0c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 impostorscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512010113

On 11/28/25 9:40 AM, Luo Jie wrote:
> The CMN PLL in IPQ5332 SoC produces different output clocks when compared
> to IPQ9574. While most clock outputs match IPQ9574, the ethernet PHY/switch
> (50 Mhz) and PPE clocks (200 Mhz) in IPQ5332 are different.
> 
> Add IPQ5332-specific clock definitions and of_device_id entry.
> 
> Signed-off-by: Luo Jie <jie.luo@oss.qualcomm.com>
> ---

[...]

> +static const struct cmn_pll_fixed_output_clk ipq5332_output_clks[] = {
> +	CLK_PLL_OUTPUT(IPQ5332_XO_24MHZ_CLK, "xo-24mhz", 24000000UL),
> +	CLK_PLL_OUTPUT(IPQ5332_SLEEP_32KHZ_CLK, "sleep-32khz", 32000UL),
> +	CLK_PLL_OUTPUT(IPQ5332_PCS_31P25MHZ_CLK, "pcs-31p25mhz", 31250000UL),
> +	CLK_PLL_OUTPUT(IPQ5332_NSS_300MHZ_CLK, "nss-300mhz", 300000000UL),
> +	CLK_PLL_OUTPUT(IPQ5332_PPE_200MHZ_CLK, "ppe-200mhz", 200000000UL),
> +	CLK_PLL_OUTPUT(IPQ5332_ETH_50MHZ_CLK, "eth-50mhz", 50000000UL),

I can't really find the source for most of these, but I see that there's both
a 200 and a 300 MHz output to NSS

Konrad

