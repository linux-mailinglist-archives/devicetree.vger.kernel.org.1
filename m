Return-Path: <devicetree+bounces-130740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E539F0CC7
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 13:56:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9AB2A16668B
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 12:56:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C14421DF975;
	Fri, 13 Dec 2024 12:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OhyI+DD+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2201DFE11
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 12:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734094590; cv=none; b=iUZ7EJ5Vlgo+VKGu2oOs+Abz9ZSZx+wUyl231CQ+Btfsbi6mivkelUScNPXaQ4RsVduTveWN8+knI0Zz5gWA9VUXKndc6/s9ZfI6CC9AZeNQcmpPha3Sm/VigMYFPsMS33LfL/ngzffRKorkyYyHq+WGtrE60aElhlNA+5b64PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734094590; c=relaxed/simple;
	bh=GMttzT4pot3dLqMBEdVTWxSOV0+jV+zYGFDjeNmFE4g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SnvDWN7mXJm3lB/bLQEBSIgmpq6x5tzJOntRejpVfNJBjL6N5vG0xYCN0LCpumJQFINxe5EuHDfRxxCOxJAQKoCYTa04s02QOyH3GfGd9rw6+s8Ow7Bg8IYanftiACnJ0pGeutGmijD2glSVdZSckIwfcfdY5A6mnizT8kn+L7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OhyI+DD+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BD45lhW017223
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 12:56:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SPsyxPu5glRW5NRlm6WjE2usv+YXfBn9Tyv4A04asGY=; b=OhyI+DD+Bx1Q9xNc
	dqttnd+unVGFf6/rG2ZpwZmGRZQ09gYvBQo08+Hle0/TyIvLrk/Gu+lmZXRSh7Wv
	DUUPZQBt+1yflmxqb5jknTJfDBSQOdvsXEKGJgx6Mq3EHe5pE6PIfFH1Zj+9gV3n
	LS4aW5j8Qe250iJKByU4+rgPxMJGbvf4Y+9nkkc64dhi1eMTbmAUTL7YKB+YmY7p
	d+4hVOv4kGaHS9E1W5mzKpFY2xD1XWiNWwd3+GwwICYG+LcrsMBsJiFlEk702VqD
	4lkkpo4yOMJ6LNphlYJzA2vSw2qqTWcCl/Hq0Gc4mXbn9pF3v4n+1toKzns+2Hcm
	X3Rilg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43gdkn1bq3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 12:56:27 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b66edf3284so14827885a.2
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 04:56:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734094568; x=1734699368;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SPsyxPu5glRW5NRlm6WjE2usv+YXfBn9Tyv4A04asGY=;
        b=uYSV5OPZaiCMeLPdd3VR9URNBgZ9r0EFOYJan6Dj0C532iHGErzmBrSyy/lfSF5Db3
         2JJYjic/cW2NvxUTqEoMT153AHhYv2V1M5d9PjLyDL8shr1fa2NKjzDPwGNTNq5p+KPV
         Zw9fU56YUkcWtdlhgCjPNQ8DSML4795WLAMBBAYnblPu7nXB6dxqhkwQEGdb/ApdEE5/
         d1vifPeIwvoKqDflxiSdaWjV6eIcuBOJRm8kPysPCaqn2rBNdS3ODagbD8eqaQv9L9XA
         6Jz+ubo5WfrOZPVvQgaqQSD33sSW7hwXEL9g9Gsqn45Hiag5MOildMd+jx7WsUipTYd6
         MkSw==
X-Forwarded-Encrypted: i=1; AJvYcCVoc0yKvY0ENyEEEpKJ39qV20Isx4V2sFOiL3pFcpONyTwfL6Zkt5pMbcp7woUBLJJ7By2sEXvV3AhQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4GU30hk6c0QD/jrak7chYc/uCfYy44pTyuOSqCCNP/lJhaH7Y
	6xNMMf/ekSl2ZedRViUZFLIqpsoximVscD82q3q4i4Yu7WClg1RuHlYXnvjIYCpXIyY6ugKl4s3
	Z4fsJPZBaIVGv0wlU7ng84h/0+G9sjfnkNlswHFkw68G4cE8H9DziQs3faL77
X-Gm-Gg: ASbGnct43mvtFJeDYzkaIWluyvmCygWmouhbc++90uNTnp1j98PIFUa8Vzp4K4Q1LAL
	uMwbnDOecvr0U4lU0rBFfy40eDNRmAwtp0hAqBdncGBqmApU2TOFkohPH9BUjaSFWk1kBhzmtt7
	UeVivaPY/w+3khrbpSOSl6qL0VIodJH3VHUAIoTCEiqQ0yw3yVtjru2TdbaEzOeRb/6ojdXc1ny
	vqP7wFb+nbwZ2P1daexz4GIW0LrD4YLUOqc7vyJFnMwRDIj5cRmGiZ5zl6gkmR3aBSM35OdAY56
	BXSyAXzzAeuIHP+LoP0rojrbZm8rjldB/VX7
X-Received: by 2002:a05:620a:2943:b0:7a9:bf88:7d9a with SMTP id af79cd13be357-7b6fbf33233mr136599985a.10.1734094568425;
        Fri, 13 Dec 2024 04:56:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHhEp6KKzBxIcWe6wDHGk51pVr4pAr29fZikvoE3RJwni2r6ufWTfFBhktuM1lfYxiUEc1SFA==
X-Received: by 2002:a05:620a:2943:b0:7a9:bf88:7d9a with SMTP id af79cd13be357-7b6fbf33233mr136597485a.10.1734094568038;
        Fri, 13 Dec 2024 04:56:08 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6a3a80d6csm493602666b.8.2024.12.13.04.56.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 04:56:07 -0800 (PST)
Message-ID: <dac91ee1-4e1c-47d2-ba7b-6ab47582731f@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 13:56:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] arm64: dts: qcom: qcs615: add SDHC1 and SDHC2
To: Yuanjie Yang <quic_yuanjiey@quicinc.com>, ulf.hansson@linaro.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        bhupesh.sharma@linaro.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        quic_tingweiz@quicinc.com
References: <20241206023711.2541716-1-quic_yuanjiey@quicinc.com>
 <20241206023711.2541716-2-quic_yuanjiey@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241206023711.2541716-2-quic_yuanjiey@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 3fEzvzmw83ArVXjwYIvr61_ooaeD_hkS
X-Proofpoint-ORIG-GUID: 3fEzvzmw83ArVXjwYIvr61_ooaeD_hkS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxlogscore=999
 impostorscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 phishscore=0 bulkscore=0 suspectscore=0 mlxscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130091

On 6.12.2024 3:37 AM, Yuanjie Yang wrote:
> Add SDHC1 and SDHC2 support to the QCS615 Ride platform.
> 
> Signed-off-by: Yuanjie Yang <quic_yuanjiey@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 209 +++++++++++++++++++++++++++
>  1 file changed, 209 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index 590beb37f441..e52bf8c77884 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -399,6 +399,72 @@ qfprom: efuse@780000 {
>  			#size-cells = <1>;
>  		};
>  
> +		sdhc_1: mmc@7c4000 {
> +			compatible = "qcom,qcs615-sdhci", "qcom,sdhci-msm-v5";
> +			reg = <0x0 0x007c4000 0x0 0x1000>,
> +			      <0x0 0x007c5000 0x0 0x1000>,
> +			      <0x0 0x007c8000 0x0 0x8000>;
> +			reg-names = "hc",
> +				    "cqhci",
> +				    "ice";
> +
> +			interrupts = <GIC_SPI 641 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 644 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "hc_irq",
> +					  "pwr_irq";
> +
> +			clocks = <&gcc GCC_SDCC1_AHB_CLK>,
> +				 <&gcc GCC_SDCC1_APPS_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_SDCC1_ICE_CORE_CLK>;
> +			clock-names = "iface",
> +				      "core",
> +				      "xo",
> +				      "ice";
> +
> +			resets = <&gcc GCC_SDCC1_BCR>;
> +
> +			power-domains = <&rpmhpd RPMHPD_CX>;
> +			operating-points-v2 = <&sdhc1_opp_table>;
> +			iommus = <&apps_smmu 0x02c0 0x0>;
> +			interconnects = <&aggre1_noc MASTER_SDCC_1 QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +					 &config_noc SLAVE_SDCC_1 QCOM_ICC_TAG_ALWAYS>;

QCOM_ICC_TAG_ACTIVE_ONLY for the CPU path

> +			interconnect-names = "sdhc-ddr",
> +					     "cpu-sdhc";
> +
> +			qcom,dll-config = <0x000f642c>;
> +			qcom,ddr-config = <0x80040868>;
> +			supports-cqe;
> +			dma-coherent;
> +			status = "disabled";

Nit: please add a newline before status for consistency

(both comments apply to both controllers)

Konrad

