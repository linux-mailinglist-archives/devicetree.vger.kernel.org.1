Return-Path: <devicetree+bounces-214972-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 22092B4FDE3
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 15:47:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4BA577B5AFA
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 13:44:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78E5133A026;
	Tue,  9 Sep 2025 13:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ojpuLWI/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3DC6341676
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 13:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757425554; cv=none; b=Y1T17xDVpFhSxCw6tD3Hclsbx55ytMqpoJOEtLnWl6N2KybkRk8lYqmkFN66GWKL9Y5rxgbY5yRsvMVwPENiWXWCaAK2n1fkb4mcQ4zQqlBxvFIS6SHWZAwOJ6Q0z9IcPf8V9Nu4UJ8iXVcw6KngPbeYA5ULDDPKEfBpbsnDjMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757425554; c=relaxed/simple;
	bh=f8iTI5TMMdpEw/sT0b2613CiwUc4tfz3GQE8z1ur25c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b7xm3Oym/MAYrWNmUj6LU5JReAhntuRNb2ycmTPpVyFnzaDGf5B6ydskWqwk2frhRq19WIRLmSI4aqgK6Ea0PYFFUanKFiaRY//BmvbYuYKBAh3s4Slc9+RFcDS+9KOy4vjbrng3oUSJh0tLf0jzaQWtFZidDJ9jS8ZP1D6fo+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ojpuLWI/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899M2Zd002327
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 13:45:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HtGgkybPm6v0URRLFra4Jz238QIDHfHOy7Lnfw1I7jY=; b=ojpuLWI/i/8rSiLF
	PgiIWFM8nkWUz1lFRxSdfSPkqpjx7ZZT+kmzidsQYFlscsuU6w2SY9cyRYaooE3E
	ptoNqi+5sNeEb4staNh0kx46MBRGmsbYyPrVrEYY5WORfuMMbglSMBT3ozl9lVBn
	z5zYXhM+VWba4/FTPj16RPPoKGJRqWZ1v7gD1hyJ9QawZfhbHOUH8hRNfma59hz9
	WkQjGf1vgygkjBrijmeBjjObrZuT11rIKe7AtXl74mjKPun427GNvMZeZ522OUxo
	0v0oYx1PqN8y3bRrOFqGIO+FUiHH5HXGF9w07sKa7scU32TpI17pe+Zy7Tcr0jpx
	gTW5XA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqg07ja-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 13:45:52 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-77243618babso5687206b3a.0
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 06:45:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757425551; x=1758030351;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HtGgkybPm6v0URRLFra4Jz238QIDHfHOy7Lnfw1I7jY=;
        b=R2qoLLztGPbA4ktq9apm+f5izHLOCeOIKASpvVtt9ZbeHfwXTmSOefhaqA+wyQs13y
         tcz0bxE1RheR+CKg9vvTT8vKYo16doSP5b7f/PlX80I/JBh0JM6HIf3i/L7CiVvXbbK2
         VBFtNz6j3GdMdhWa0YGbWOf0aKufV3Wfg8jSNhCz3iRicO2mgB/DRX2bzNYfQWesxdek
         nBJygn8oPpxZXRI+LzuUGd9DkNJlUpxEq4PmPeG3VKukWbBieZJVpbrTcM99K6eaPGuA
         AhewezlTpwGfemjbrQVbdEe2kbSdMUfSoB2OOmdMKfcPwpvlBJeFGEuLSiab9FeX6wmu
         V2/w==
X-Forwarded-Encrypted: i=1; AJvYcCWu9jEcx2Tki5W6NioN1l6VaE8tSEtKr05vMHCmwJYCRB4rfqBXIDlpiJQjlxBw3miFXd0Ormld6wzz@vger.kernel.org
X-Gm-Message-State: AOJu0Yw24CVjH6L96rkO4Lem4AjI+S8kfIXg1fvowhwJm1Mzg5gX+X16
	9K9ESzZMV0NwRIfsS/3eudw6UeaF0aKjjnC3in8PsiL+EIkDrW1rlUJXRBxcUCumprGLqDnmDox
	31CRBHMi3uccU/b+SYm1gSwptbG0ZPKJxuNz/hXCnPduWbcyyrndcaz2RUGEpX3H9
X-Gm-Gg: ASbGncsfAWFj1m0FAgzfebvHtAt+wxuhpmusiwfNxIs4NLbTGNmhJwe8Jp3gakp8zsj
	HcVjanpimp3qW7NvKPpLROiRZ67D1IV1NlEG+Wc4u5V1IGQgbi1Soxc7SJyypinBHbu5ex9jC2R
	tdR1nT7JIWukUrYzobS3LuYJ779aNdmSEF8cuuLyuMbfDO6gHnKU3egg8Z9mFX1w1BI8QqTZHr4
	BZ+wNSFV433fyQn81s27JGxAna6z/oJGBqvu844NsXbRV2dCvFw16ynZgeBx1/RbXTvINyKu/l1
	M+yxzMAaygNWafEdahcErcxeztdX/CxTdRCmYLTKsstELo7a5O1W9+y13FKGMg==
X-Received: by 2002:a05:6a00:13a2:b0:772:48c5:c761 with SMTP id d2e1a72fcca58-7742dcccbd2mr13013035b3a.10.1757425550847;
        Tue, 09 Sep 2025 06:45:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE6cvRFc+/YxS+v49Zyl4iRKsKHIagabDncXnmXjWPenP1jekeJK1Igj52NaYuVapCTIrXssQ==
X-Received: by 2002:a05:6a00:13a2:b0:772:48c5:c761 with SMTP id d2e1a72fcca58-7742dcccbd2mr13012985b3a.10.1757425550288;
        Tue, 09 Sep 2025 06:45:50 -0700 (PDT)
Received: from [10.91.118.43] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7746612d9c5sm2237291b3a.34.2025.09.09.06.45.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 06:45:49 -0700 (PDT)
Message-ID: <87e8c438-63d0-4f00-b147-4783ad208ab3@oss.qualcomm.com>
Date: Tue, 9 Sep 2025 19:15:42 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/6] arm64: dts: qcom: sa8775p: Add gpu and gmu nodes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>,
        Sean Paul
 <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
References: <20250822-a663-gpu-support-v4-0-97d26bb2144e@oss.qualcomm.com>
 <20250822-a663-gpu-support-v4-3-97d26bb2144e@oss.qualcomm.com>
 <f11b778d-eba1-4712-81c7-b83f2cb38b46@oss.qualcomm.com>
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <f11b778d-eba1-4712-81c7-b83f2cb38b46@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: p4y_ER4OEAymdFAM0s0yYz-RaqKeHrNq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfX2gedMs252PyT
 odgniaumOJzan4ZyHSkgB95yHbQ9rlvj7TjlIDPxMatcHGIZwNnzSECddLYGvWVg5hAqbHCU7wn
 NssH6xao1zfQr2S9lSlVYvgrZDmnqKxESAZByGsfIYmEPxjoOQppb7k5F8XZP9THtvu8ascCJKL
 lhRE2i490yeGGLPYAhhB+geNTvgxG5bJgLo9lmrpsTVo4FLzCV16rPRhctCDgAKAtZ/HYuS1DFg
 mT1eV0BK6/Y6ZCM2r3+1znZoeqYZsfTbk/npHB7v/jkatqtirGOzfsnoVrWHzsUVNsD3g4LPrfS
 hnSgWU+uXp1i1e9uf4TO0hIH5+W9vvKcvDSb/0AhRD841RtRwZ4R5auwkvcZEY7m047TAICt+Bc
 sXsR05QZ
X-Proofpoint-GUID: p4y_ER4OEAymdFAM0s0yYz-RaqKeHrNq
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68c02f90 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=2iJ5yM1ecYHLd0rZiA0A:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_01,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035

On 9/3/2025 5:56 PM, Konrad Dybcio wrote:
> On 8/21/25 8:55 PM, Akhil P Oommen wrote:
>> From: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
>>
>> Add gpu and gmu nodes for sa8775p chipset. As of now all
>> SKUs have the same GPU fmax, so there is no requirement of
>> speed bin support.
>>
>> Signed-off-by: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>  arch/arm64/boot/dts/qcom/lemans.dtsi | 116 +++++++++++++++++++++++++++++++++++
>>  1 file changed, 116 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
>> index 8ceb59742a9fc6562b2c38731ddabe3a549f7f35..8eac8d4719db9230105ad93ac22287850b6b007c 100644
>> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
>> @@ -1097,6 +1097,18 @@ ipcc: mailbox@408000 {
>>  			#mbox-cells = <2>;
>>  		};
>>  
>> +		qfprom: efuse@784000 {
>> +			compatible = "qcom,sa8775p-qfprom", "qcom,qfprom";
>> +			reg = <0x0 0x00784000 0x0 0x2410>;
> 
> len = 0x3000

My bad. I missed these additional comments in this thread. Will extend
this range to keep it 4K aligned.

> 
> [...]
> 
>> +		gmu: gmu@3d6a000 {
>> +			compatible = "qcom,adreno-gmu-663.0", "qcom,adreno-gmu";
>> +			reg = <0x0 0x03d6a000 0x0 0x34000>,
> 
> This bleeds into GPU_CC, len should be 0x26000
> 
>> +			      <0x0 0x03de0000 0x0 0x10000>,
>> +			      <0x0 0x0b290000 0x0 0x10000>;
>> +			reg-names = "gmu", "rscc", "gmu_pdc";
>> +			interrupts = <GIC_SPI 304 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>;
>> +			interrupt-names = "hfi", "gmu";
>> +			clocks = <&gpucc GPU_CC_CX_GMU_CLK>,
>> +				 <&gpucc GPU_CC_CXO_CLK>,
>> +				 <&gcc GCC_DDRSS_GPU_AXI_CLK>,
>> +				 <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
>> +				 <&gpucc GPU_CC_AHB_CLK>,
>> +				 <&gpucc GPU_CC_HUB_CX_INT_CLK>,
>> +				 <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>;
> 
> This clock only belongs in the SMMU node

Not really. This is recommended for A663 GPU like other A660 based GPUs.
I know it is not intuitive. Similarly, we used to vote GMU clk for GPU
SMMU earlier.

> 
>> +			clock-names = "gmu",
>> +				      "cxo",
>> +				      "axi",
>> +				      "memnoc",
>> +				      "ahb",
>> +				      "hub",
>> +				      "smmu_vote";
>> +			power-domains = <&gpucc GPU_CC_CX_GDSC>,
>> +					<&gpucc GPU_CC_GX_GDSC>;
>> +			power-domain-names = "cx",
>> +					     "gx";
>> +			iommus = <&adreno_smmu 5 0xc00>;
>> +			operating-points-v2 = <&gmu_opp_table>;
>> +
>> +			gmu_opp_table: opp-table {
>> +				compatible = "operating-points-v2";
>> +
>> +				opp-200000000 {
>> +					opp-hz = /bits/ 64 <200000000>;
> 
> 500 MHz @ RPMH_REGULATOR_LEVEL_SVS, 200 isn't even present in the clock driver
> 

Ack. I guess this is fine. Hopefully GMU won't explode. :)

-Akhil

> Konrad


