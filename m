Return-Path: <devicetree+bounces-144180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C9CA2D2BF
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 02:48:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EA2E57A5FB3
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 01:47:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45E061E492;
	Sat,  8 Feb 2025 01:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TsB+Vd+W"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB7101CFBC
	for <devicetree@vger.kernel.org>; Sat,  8 Feb 2025 01:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738979322; cv=none; b=MrQBI+WN+6jjMVRmpVeUUN/IBwOm2pYWH8Lkv40RoEklDFMtschttAqTdD5ehgSsLGDz33yk+MISce4GB5FbwfYKxEIvtuYwZlNf/fdhDsakDBGD+TjLWwZRedRvG6GuFBXTk1lIq0noOmvJ0ZydpTrv/DqPYNNuZ3vh/udTcdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738979322; c=relaxed/simple;
	bh=VpnMtAzmUxjiP0Pu54O3XMOA1CWxorcIsLG1hejl4CY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nW/rRuQJZrDdoIvJgH2QQPnUTY9xib9B0dLp28GanqgymVXlPWXG6l0+UVWy7sw48adKYU/qN03JGpqJiu6qpvv/+CPglxMzFamqAQF8bXQvcYtUkEtJ43s6ZwM0KwtdeXS27k7Wsp06PdGxFJUaLMbCkoyfjrkcDPKeakCXQrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TsB+Vd+W; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 517FsMe4005864
	for <devicetree@vger.kernel.org>; Sat, 8 Feb 2025 01:48:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xl9UdSwizgDLzhJeCFKLohTvtuP335q16GE/Hoo/GDI=; b=TsB+Vd+WjAPWLV8S
	SWRLnk3lUbmSLak+N6HWs8Y2yR/zz0dXx94bjOjbYjn+04Al3ZHfQQb3ZTKgxx4H
	bV298dCuuBKRsctsaHNI7mj/DSuRkNhEsQFxpm5MH8Y4FFlP8crhoRu7bSDcBiEd
	J7ckFc/2hmALwhubbfE9pV3epDkL+j6rkcCXtIhZ7LOe4z5WHYATQ+Z2FZV6xfCV
	z8nu5LjUvPXF15rtGpFxu5Osr/qggExRTK/Qznqb+Nk8EyWGZoj7U2lAmlhc+VgU
	QiPNJlOvw+8Lri6OyMfeky/c69DGaHuA68q+35cy7BsN/u0gO9laxdZHcuLUWITD
	TxwvQA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44nn7fs6n2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 08 Feb 2025 01:48:38 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b6f499dd80so43043685a.2
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 17:48:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738979318; x=1739584118;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xl9UdSwizgDLzhJeCFKLohTvtuP335q16GE/Hoo/GDI=;
        b=GFtyUdB9DPGgj1mct1LyboYWmCskKrYgTOXvjO9P1zSbbsaHImyiTt4TzVcGp6UNgg
         30iB73fuii1qwaDUs+8dwIqaoDCOklIeFSVUCxaU4HWEUgYqj3kqJPeQzWjJKf/69dF5
         +r78K9M/iSuZq4gRWaAX0XaG9LyqxY0WgeFDCwMg9+hOMLxAqLIV7w4jhQgLsj6I/58P
         yEBtvX9GNoNEvYuyVZHrgp531t9ixVzMOhKs4CexU/+wS7bqN19ljs4GmRaES9ggrjgB
         f+Rew2SrAWkkzD61O+qcFGzwxioEkTx6LHTfkUhub40yM1EHE4ON8GlWbsJ0/pfSGGyw
         Hkfw==
X-Forwarded-Encrypted: i=1; AJvYcCUStu9ncd8TBdWnPE/x3TY9f/oDT1hvtB+KfaUdK1PUWAh4JuoALb/dLGysK2agO42+HzAkwXAkk7tb@vger.kernel.org
X-Gm-Message-State: AOJu0YxuDlGpqAzdXJCgiSdaB+HaB6dTuP+JoRE5/xCkdAHm6TIka7UZ
	AN2aDPWO5Lp7VOxrhXPt56X+41JDlCuG9wMXTqLM/+ps5RvhAdIBlV4a7nw3XJy7iQzMAX2KPG/
	2HM7VgK7dykeNYgL7txIjG5bgcTpQ8dtPaGhYmhj7Bmd/7aVxEdaBnCr7auVn
X-Gm-Gg: ASbGncuce9k5hY4DNHW9qN1EXvHh47Hn9AyEdTq6JilLr0eGuMBCK4ge8+exBnxDf6y
	6PThmip33asJtabHhk4KfAaxSSdWVkweFS9WBjD4bGIZ8rec+668QghjO8oNP6qvPv8m1CUup1S
	di790V7r5gHJaLZ+Q8deAWZGm0kUGlGqeopnfdacog5PLccSkZtG4yIZcTxCPxSU7VqHqQiX6ti
	qI5r3ErlXwuQmdv3aJ7JE4nmWWIqPP8xg1KTknfn25jc7xyYGWjCDC/MDaX8lZqDCuxxLZ+Dju3
	r7LLbq51rNNyESkvXikKQP+w8nrT2VsZ2a401TNn5k7sWO4f2mDKEDVzqHI=
X-Received: by 2002:a05:620a:244d:b0:7b6:d26e:9d76 with SMTP id af79cd13be357-7c047c4ae40mr346171285a.14.1738979317968;
        Fri, 07 Feb 2025 17:48:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE5DxAxvukpLhR34rHx9sdZvjTULj5Sql9mnUYRGRBbRwhSXMt6xgJkwCmMUpmSdxZ5jouzaA==
X-Received: by 2002:a05:620a:244d:b0:7b6:d26e:9d76 with SMTP id af79cd13be357-7c047c4ae40mr346169885a.14.1738979317611;
        Fri, 07 Feb 2025 17:48:37 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7a275537csm32549966b.66.2025.02.07.17.48.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 17:48:36 -0800 (PST)
Message-ID: <a02922b6-7b48-4305-8cf3-8019cbe9a069@oss.qualcomm.com>
Date: Sat, 8 Feb 2025 02:48:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8750: Add BWMONs
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Shivnandan Kumar <quic_kshivnan@quicinc.com>
References: <20250113-sm8750_bwmon_master-v1-0-f082da3a3308@quicinc.com>
 <20250113-sm8750_bwmon_master-v1-2-f082da3a3308@quicinc.com>
 <Z4k8T31cw_CxHFLC@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <Z4k8T31cw_CxHFLC@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 2DYu2xlRrxwT-WEb1H5_F9p3rrfzqLKU
X-Proofpoint-ORIG-GUID: 2DYu2xlRrxwT-WEb1H5_F9p3rrfzqLKU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-07_11,2025-02-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 adultscore=0
 spamscore=0 priorityscore=1501 bulkscore=0 mlxscore=0 lowpriorityscore=0
 clxscore=1015 phishscore=0 impostorscore=0 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2501170000
 definitions=main-2502080011

On 16.01.2025 6:05 PM, Stephan Gerhold wrote:
> On Mon, Jan 13, 2025 at 01:08:18PM -0800, Melody Olvera wrote:
>> From: Shivnandan Kumar <quic_kshivnan@quicinc.com>
>>
>> Add the CPU BWMONs for SM8750 SoCs.
>>
>> Signed-off-by: Shivnandan Kumar <quic_kshivnan@quicinc.com>
>> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
>> ---
>>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 74 ++++++++++++++++++++++++++++++++++++
>>  1 file changed, 74 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> index 3bbd7d18598ee0a3a0d5130c03a3166e1fc14d82..09fe3149da1926b74a98280fe209ae7f423db864 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> @@ -2802,6 +2802,80 @@ rpmhpd_opp_super_turbo_no_cpr: opp-480 {
>>  			};
>>  		};
>>  
>> +		/* cluster0 */
>> +		pmu@240b3400 {
>> +			compatible = "qcom,sm8750-cpu-bwmon", "qcom,sdm845-bwmon";
>> +			reg = <0x0 0x240b3400 0x0 0x600>;
>> +
>> +			interrupts = <GIC_SPI 581 IRQ_TYPE_LEVEL_HIGH>;
>> +
>> +			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
>> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> 
> The start of the interconnect path is QCOM_ICC_TAG_ACTIVE_ONLY, but the
> destination is QCOM_ICC_TAG_ALWAYS? This is strange. Interconnect used
> by the CPU should be QCOM_ICC_TAG_ACTIVE_ONLY.

I'm not sure if this is a question, but I second, both should be ACTIVE_ONLY

Konrad

