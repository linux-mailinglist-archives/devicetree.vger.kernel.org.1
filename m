Return-Path: <devicetree+bounces-130382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3287B9EF423
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 18:06:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6E93328C29D
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 17:06:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F9EC2253EE;
	Thu, 12 Dec 2024 17:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CNomjwdY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE0E4223E99
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 17:04:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734023053; cv=none; b=T6wllRpP/CHN8tekLoJDt5pjTVel1o1rlIbwkrVtLafxfa6EMXfsRJif/MQkLNBwUOL8OhMAYKiENHOhs/HIUJfo3AM8lb1bpPBDkKJEvuoAew39B+Zc3zs/JMxNNdHarbAbSESjkySTq/qMrRuGkXX0cpZTy8GGcP63nqy3p88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734023053; c=relaxed/simple;
	bh=rBjwzO53CbAB9t5GEYSOjc+7gazVend8nDzOa2WOHHg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=APQEpu94JiGwJj6GfGjEoX5z8GcW++VrkuyhHcycBOsgppilfOgE9BMD8K2k6GWJDUQ0JS9p2qfvIu8NrhuBmjxQo81vzzJrKwpy8/IUzCm3xVPPwcTc0VJIHMUm+IWRzyd2xI/yvlxN4wgB2RlgKbwExfSw3gRnj7WdTlNpR1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CNomjwdY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BCGMNC6002233
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 17:04:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fNew4i/yxHEuenMoncvUi+FNwXBhAQ4xpLpoY8gs/d0=; b=CNomjwdYP/mLl0vy
	SxQHxGb2CceC7C1jcS9jfXNg08Sk1xrxhj4KqbjntBJ97uxztDiJnPkoXL2Dk0Gz
	CUjSAz02PXqbEcaHiHdSxir4BWu96neFQhYkiB9F+Z++INm8VgYUt1O49Jz7GTYL
	AhXbhOBudN2rLZrCPE6oxkZjIJ26eQVYxXxabqeSbQLT+D98Gp3eEStO3xM4NXF0
	ULT6WRCm2Z5AXm/A0DtD3XpY9b9ujOSZJjXE1O9mlrAsc2EVahBSCf3ILniX2u8t
	2oL4oDt3MFLrQ5mGBG6CZgHBhBg2iNR1YxMkSr6tKp5ijJ6i/IQlP3IO5CHhnYXf
	cJumEQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43eyg666ym-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 17:04:10 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6da2abe1720so2028446d6.2
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 09:04:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734023050; x=1734627850;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fNew4i/yxHEuenMoncvUi+FNwXBhAQ4xpLpoY8gs/d0=;
        b=WQYuJiSJXREtibpEUeGfR6dRj9Re5unzsRSeoASWGWMfXZRF5KkWHMDpG2bxg8jKKK
         adrs10JSOnCzg034OMBAG3zE2hYDoEPMveXLo6M7Ym4/oHAEDpO0vfEMwdDAt6Jxx48s
         PO+B0B8jXaOrZS+A/w2ALDlMe9lmCwQMBfIHwnqG9GMYAS2CM8rgNILis+0117HnDlKU
         RPpli2nyrfp2JfZc/8/wDVq/SCDFiBezy8n2eu2HVhdNz7T3JK2Uy5bduXuupuGp7x7n
         2H5mw+69KKcH/Qx/ez+4xa93UEoRIts7eWGwrjGZGVCZzGfK16/e/KTyhhJoCT2LW4pO
         rSpg==
X-Forwarded-Encrypted: i=1; AJvYcCWMOXOUy9V2pbyt/k77wEVKKn3k2SafcUzq0nCmZuSyxZyHT5QEWmnz9mBfRBo3zpVdrVBzclzQOrIi@vger.kernel.org
X-Gm-Message-State: AOJu0YxYB1Y0JVSbGrd/ZpyFvvhcaHB/O7AvE4vLznucfgPMSAaqEX4R
	ritBF/x5ohS14Bm0ZyUcA0ui+h2kHFPitfBRB+r0KCZHcj+/OEF1lLMqBTAFvQq0dPHekbFDV6r
	gVC8nNCcmLdY7MAhrpmEgXI7OoqlEoP22J0WP5UcjWAiHVHm6UbXlmJPY/ixo
X-Gm-Gg: ASbGncsXl8aLPBHbyV7dG1xB9uEjN5ZzpuGeiUUV3UCJTaQmFUp4SYyClkK3b7MQ4gL
	N/hz6YUF485uU66PuCF9y9LK9z5c6LXDCA63t39MKq26ZOGGvFziz6qBWOKIaoaROfJiDE1/xwT
	bRxKu24Roo6kJ7g1QxBHb76cHJfM9+qQS/9atZvJB/L9kgJNMRp41xwaRi6H5w7xz88w5HqPOAR
	ey7zSK3iUbdU5GZdv6b+rUHwSqiizMwAIu7lPnrmRBuL9OgVOlAT4NTlNpQ2fpUu8uMrb8+B//k
	CMRPQDb5mre8MdDOEQHxdghQQ9Bwa01BvbdgTg==
X-Received: by 2002:ac8:5748:0:b0:466:88ba:2026 with SMTP id d75a77b69052e-467a16def05mr6097041cf.14.1734023049821;
        Thu, 12 Dec 2024 09:04:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH8vgfWWK+oQ5exWPFkUHGzlUOH1BmQ8/OxS0NIBoRvTTZC3B/uHCd1ekuzkScTL2816D1C4Q==
X-Received: by 2002:ac8:5748:0:b0:466:88ba:2026 with SMTP id d75a77b69052e-467a16def05mr6096841cf.14.1734023049283;
        Thu, 12 Dec 2024 09:04:09 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6810027c6sm662648366b.104.2024.12.12.09.04.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 09:04:08 -0800 (PST)
Message-ID: <d41df236-48b1-40fb-a19b-5d7024884186@oss.qualcomm.com>
Date: Thu, 12 Dec 2024 18:04:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: Add coresight node for SM8650
To: Yuanfang Zhang <quic_yuanfang@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241210-sm8650-cs-dt-v2-1-cf24c6c9bddc@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241210-sm8650-cs-dt-v2-1-cf24c6c9bddc@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: vlSUzpEr_AMjWKrJu-o7OIW0DUn0HMA7
X-Proofpoint-ORIG-GUID: vlSUzpEr_AMjWKrJu-o7OIW0DUn0HMA7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 mlxlogscore=999 phishscore=0 suspectscore=0 mlxscore=0 clxscore=1015
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120122

On 10.12.2024 9:23 AM, Yuanfang Zhang wrote:
> Add coresight components: Funnel, ETE and ETF for SM8650.
> 
> Signed-off-by: Yuanfang Zhang <quic_yuanfang@quicinc.com>
> ---
> Changes in v2:
> - Update compatible for funnel and etf.
> - remove unnecessary property: reg-names and arm,primecell-periphid.
> - Link to v1: https://lore.kernel.org/r/20241210-sm8650-cs-dt-v1-1-269693451584@quicinc.com
> ---
>  arch/arm64/boot/dts/qcom/sm8650.dtsi | 165 +++++++++++++++++++++++++++++++++++
>  1 file changed, 165 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index 25e47505adcb790d09f1d2726386438487255824..76620d478e872a2b725693dc32364e2a183572b7 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -5654,6 +5654,171 @@ compute-cb@12 {
>  				};
>  			};
>  		};
> +
> +		ete0 {
> +			compatible = "arm,embedded-trace-extension";
> +
> +			cpu = <&cpu0>;
> +			qcom,skip-power-up;
> +
> +			out-ports {
> +				port {
> +					ete0_out_funnel_ete: endpoint {
> +						remote-endpoint = <&funnel_ete_in_ete0>;
> +					};
> +				};
> +			};
> +		};
> +
> +		funnel_ete {

Node names must not contain underscores, use '-' instead

Also, nodes without a reg property/unit address don't belong under /soc

Konrad

