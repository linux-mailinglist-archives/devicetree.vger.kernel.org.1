Return-Path: <devicetree+bounces-137076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE96A076C6
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:12:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 387EA163B5B
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 13:12:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3462218AC5;
	Thu,  9 Jan 2025 13:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ue0KuKUR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E6C218AA0
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 13:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736428314; cv=none; b=WcE6QduavEqrhP9jSoDuw1dDSNjUWFNTjxbREXG3PQ0HMMscm2+smGmyfpByhY+6UoHtBcAF8GAXjoU1CyvSeaZOFAsWeoKqMXElDCy4n8qmxHnjL/48peGQ4XXwvpLYr5ruJ+OlS8klYfDYb6fX4jRqGLHuA5fpAw5e0GBwPYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736428314; c=relaxed/simple;
	bh=rEfDHif2k/cUFRgYFQXP363rHi3KLnxYgxFlHnkElyw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IE+aH2ZrONr/cPkllzNVJrW7/qqPzRzLpmFJJ3I1hEcX5trTVXozHxN6dWNVbiWpRIIsPMTLTvAYrgGgnGH3KEaIoHfbPZ7Vyar/uj9dHFgFoPYxyUvMQHW3yfOVeBE8pWCEb9HoXz51hprgjFJPVGTySQnyAZFhMTmt68vQE0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ue0KuKUR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5099Nr45008095
	for <devicetree@vger.kernel.org>; Thu, 9 Jan 2025 13:11:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GNYgBzr7+PYOLhPzCHQQoOI0wbcUWcQWNOky2FZhSeU=; b=Ue0KuKURi6sp0qiW
	zB3DHfwgYz+1JOG13cZS9gwXwdusfdj9QJFr2rsdnlCNvJegdkXkpNCyZfVO0+s7
	muNIxr3gHQvclg9JG6PH4fwfqcC7afyIeB9EBWE5GPzl2RlpcdAIFywZCkpm5/ga
	L8gPYi5wdXLMPBjMccXLGpPuoSh7t64Twbrb0MVCCRv8OYsM8L5jyHbPtOTrgTRU
	jS1tVY/06rzzz/92P652BPs8Ye9R75/SFQ4VmDPFjHr6MJHSI0mPcYnhelstVWZB
	HZSy7Ydb75zQW+RWy//4T3qZ1OAwZTfG0LmgTHllszaJZY1HMFjPVdTgwuDv+YQ+
	nqbhMg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 442bsm8h1c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 13:11:51 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4678aa83043so2171691cf.1
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 05:11:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736428310; x=1737033110;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GNYgBzr7+PYOLhPzCHQQoOI0wbcUWcQWNOky2FZhSeU=;
        b=UkQK00yrC9GGCbqzTw7YM5MgXRkXBoTu0jcCpXe+gMidDPaXCdpMlqyn37dycaQWM0
         FoZqu3tb/RqlX0O0Nlt7MrW2xSAcTjuNKhRWPKWzMJHxGPYI9sX0KEPA6F9DYsRWAv2t
         b/0lUNT1yiV2dLt/MvQ1tT4DDXqtYMlG0rlcKSfVg3OHzm2DttPXcuoFb5pOxhhEwuNB
         N/Ajr/rp8B2kPa7DDD49BUmcqi52Q1GZPeo1FGFQG+ao1F0kSyh1WTTxAmgp3ZR+ChAr
         1T3wGBM4Zb3rYFBZ9zwitwQ31N+27mDA2Yjk3ZcxBAOkepnB/wCA+boyVLl0+dw2Bmya
         iyKw==
X-Forwarded-Encrypted: i=1; AJvYcCWDKcdHcbuiZCqT1WB3DnmlllmkAj2lIBsFRVnYuHWkHD+a4ljIVZSBZA5UiWoGR10rxQXfX5sRPitr@vger.kernel.org
X-Gm-Message-State: AOJu0YyoCceUGe8Wh3pjAeVesCZryXlMANa34bAGl2dOzj+9iiNjlPl5
	02i+apwatkKL+tLuj1ZN7Jiv6wdYATZ2mYsLLeJNEFlFAtNBLCV+mrydX7s2qEjj8t2unHwGv72
	SVpMh7O79g3SfZV9z0t3zMHkwnOXZDWDQj6um68ZJJ/pa2xVPNEqNDY2IixLp
X-Gm-Gg: ASbGnctN2pzX/SKHsJ6PWSDBpZ+/kwvDXlukb94GTrKt+qRy2ITjUW000nMQi+b2jaG
	VqPhacvEyj2egSKJtW7QLSZrIVUZlS6HBjzDCRF+iaRh6sCIBKOL09mmX1FQ4S5cOeIa8WW0r4P
	LUd6jU/lVKT+A2xEGKKkyokKIQECIvfeaOETEsy9CedLBzh9jyBWlkjgYMj7Ah9fOPxLrG2f1+A
	7qbCrYeF9RE77X9jc8mhUVfba4xlMqo4hzwJm5AiI8RjNfIKjFcTGIUzfmdTVKMBi09yHRqWs7Z
	RY71fiMp5q28MuZCROyZwqRljh1ADF1fj70=
X-Received: by 2002:ac8:5e4a:0:b0:467:825e:133b with SMTP id d75a77b69052e-46c7108eed3mr33342251cf.13.1736428309894;
        Thu, 09 Jan 2025 05:11:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFCeDVZrbZMWQibNMNrxaFt3Ya9WrO8tuNQ4vIKOezNZklsG4aWWaAtbuPScIua3vZy2tUY3g==
X-Received: by 2002:ac8:5e4a:0:b0:467:825e:133b with SMTP id d75a77b69052e-46c7108eed3mr33342061cf.13.1736428309525;
        Thu, 09 Jan 2025 05:11:49 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d99091e9absm592973a12.45.2025.01.09.05.11.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 05:11:49 -0800 (PST)
Message-ID: <f05f86ff-abfe-42d9-b92c-7788829fe95f@oss.qualcomm.com>
Date: Thu, 9 Jan 2025 14:11:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 6/8] arm64: dts: qcom: ipq5332: add nodes to bringup q6
To: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>,
        jassisinghbrar@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, mathieu.poirier@linaro.org,
        konradybcio@kernel.org, quic_mmanikan@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        dmitry.baryshkov@linaro.org
Cc: quic_viswanat@quicinc.com, quic_srichara@quicinc.com
References: <20250107101647.2087358-1-quic_gokulsri@quicinc.com>
 <20250107101647.2087358-7-quic_gokulsri@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250107101647.2087358-7-quic_gokulsri@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: H6k3BpCWs2RWt0Sj1I-zZxa4a8_h6Zvq
X-Proofpoint-GUID: H6k3BpCWs2RWt0Sj1I-zZxa4a8_h6Zvq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 mlxlogscore=898 spamscore=0 impostorscore=0 priorityscore=1501
 clxscore=1015 adultscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501090105

On 7.01.2025 11:16 AM, Gokul Sriram Palanisamy wrote:
> From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> 
> Enable nodes required for q6 remoteproc bring up.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> Signed-off-by: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
> ---

[...]

> +		q6v5_wcss: remoteproc@d100000 {
> +			compatible = "qcom,ipq5332-wcss-sec-pil";
> +			reg = <0xd100000 0x4040>;

Please pad the address part to 8 hex digits with leading zeroes

> +			firmware-name = "ath12k/IPQ5332/hw1.0/q6_fw0.mdt";
> +			interrupts-extended = <&intc GIC_SPI 421 IRQ_TYPE_EDGE_RISING>,
> +					      <&wcss_smp2p_in 0 IRQ_TYPE_NONE>,
> +					      <&wcss_smp2p_in 1 IRQ_TYPE_NONE>,
> +					      <&wcss_smp2p_in 2 IRQ_TYPE_NONE>,
> +					      <&wcss_smp2p_in 3 IRQ_TYPE_NONE>;
> +			interrupt-names = "wdog",
> +					  "fatal",
> +					  "ready",
> +					  "handover",
> +					  "stop-ack";
> +
> +			clocks = <&gcc GCC_IM_SLEEP_CLK>;
> +			clock-names = "sleep";
> +
> +			qcom,smem-states = <&wcss_smp2p_out 1>,
> +					   <&wcss_smp2p_out 0>;
> +			qcom,smem-state-names = "stop",
> +						"shutdown";
> +
> +			memory-region = <&q6_region>;
> +
> +			glink-edge {
> +				interrupts = <GIC_SPI 417 IRQ_TYPE_EDGE_RISING>;
> +				label = "rtr";
> +				qcom,remote-pid = <1>;
> +				mboxes = <&apcs_glb 8>;
> +			};
> +		};
>  	};
>  
>  	timer {
> @@ -488,4 +526,28 @@ timer {
>  			     <GIC_PPI 4 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
>  			     <GIC_PPI 1 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
>  	};
> +
> +	wcss: wcss-smp2p {

All other DTs (except the odd cookie ipq6018 which sneaked through) call
these smp2p-foo instead of foo-smp2p

Konrad

