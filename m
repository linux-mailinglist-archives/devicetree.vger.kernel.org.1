Return-Path: <devicetree+bounces-137161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CC028A07BE0
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 16:26:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C30F2163352
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 15:26:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAB7921CA0B;
	Thu,  9 Jan 2025 15:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="To1hMgJQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE1021C9EC
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 15:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736436408; cv=none; b=VBlmqzMJO9nMTpfWrQtxmYOTS88VNTDZvC4snZrY2P7EBALwy1w5kjcs7z08uebM7kKw2qZYkCI9Nj+zMwa47NoXYRGkCWzyJNCWD4vNbqIhXa4906bQ66WCm7bJL4V7XwBS502VmnKixL4f5Bk5d7th0SsxkWEvbuEG37LkI1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736436408; c=relaxed/simple;
	bh=zB1eImIDeBqdaEFaM7I2YKtQA3G/wvlznhGE1FbI5fM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WBOBTCIDORhkbyzM1AyLa5sXBI7b0awhnCeGGHjyoPv1D0AWJd/qv+hK7wMKic+hJ9NlFq4BiMYkh9h5+As15U78yu2dWZW0bVVSJT3K5IFXUY3VxtDcuSIP/VL9bI3RfOF82hko8H19TpRRyzceY8Gn2BasBHGnFj3FpeMafDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=To1hMgJQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5098wcBA007282
	for <devicetree@vger.kernel.org>; Thu, 9 Jan 2025 15:26:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6+h6xa6+40NGkRF0JCkZzHAOxU4fWXRVzFmoD2HZSDI=; b=To1hMgJQheDew7vF
	PxlqoO2KPrHY+Fw347Bp8a3dLUtDtqItkB4FavEsU/pwUpUXc/MaXuAj8Hq4GhbF
	3+mjyZzSaZtWd73GEPbuZuo4lQI17Fri/XCC7JuQFPCCiYGoQLnfNmMfmCvjNAsY
	0obWZOCl5BkMqvVr4w/9NeNZ1DE8JhAz8ZJ61YZC6JZ7FpkgejVloCw81G21EVnB
	11ZJG/7lBAmMG1vwNVXHX+gWNCVoQM05Y740K+yq9lgRKhThF8/hiYbmLe1KWvpH
	aHgJg9pkllvpQI9o3GiJnktiwt3hQIa6DKz+GH7jtqRqTGNkDVtbGx2FSlpD5K02
	hZnXpA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 442bdxgw80-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 15:26:46 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-46792962c90so1388841cf.3
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 07:26:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736436405; x=1737041205;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6+h6xa6+40NGkRF0JCkZzHAOxU4fWXRVzFmoD2HZSDI=;
        b=iRz3Rb8Oj7I2oViTTmIpc3MfV5qrcotvT59Dw4SDlWbxmQhDfk8EUysX1g4G49xXeq
         x3W3p09PHukUCGNXWNXV+Hk4Zndoxq6HDq0m+nAtmd/e2wSQIoSUNBJwsvJGI0Fcu1O5
         I5YL0MWIeU5I8brHADEa1+C6HpiB2kBuqJ+kFamAnzJ8MuZC5w5b4jwZwhbmGlgKMAdZ
         XVpwkU+3XQoMMOxOy1b2TzbVo9GdK/W5gnV1kLKW3uAEmKS50UJxc0EFmhQz3UthRUs8
         b4hJvjvTht5Gk/MI//SarDe7jO2d/llkVOjSsjAq67WeKRhOp5CvukH7LJBp2eLSTVmx
         8raQ==
X-Forwarded-Encrypted: i=1; AJvYcCULO7r06iw/JuzMn4za0Siu2Bz91G5zREt3qthhjaEQG9dnvXU8Q9tMVtlQfvV/e0OC0r6Y8B9WKbqP@vger.kernel.org
X-Gm-Message-State: AOJu0YzhxEjT/bsVhskZHTPsmOROAii73hfoXjAtuhBBEdvT1B2Kbo3s
	YkmXGqX8mYRbo5WR30eiL2+5xW67lGLWqFrmkt/G8QLxZPJRhn1nJv+3hsGzHDJQGQM5x+tnPAh
	pumUyE7KQ9LI9A+yoSockLOAlCUg5asMqu8n048nIsWUwids9dKp+JGwKfz2w
X-Gm-Gg: ASbGnctyzxPAgYjP1yzFL27TKuXOlSDHZmkBjgvtb8rSrLFpBeOiYfDnYVY+GDjIKg5
	giZS+weHSuK5elyBrwSYsuVDAVorPLsHFRgnhgT0r4+XHPFQtB5jx20qb3xNlWPqEkecsCOqSRZ
	/8V6G8CHQovRC5eFS3WLEV4iMvx526xbQAy+oHVCRLZ4AhcfZ/MNIFUKgBN5pJ8YfBwGSGssWpo
	13qZQOemOrbzGOkIzBK4Qb+0KLJPNA0g0ZaFDIuQ1vR8pqv876KQZaPtwfrl3W8jgDuFWqj0RUJ
	6On2pOo5eXI4tgFxY+lR7iqv5EhvMVLLQ/Q=
X-Received: by 2002:a05:622a:110c:b0:464:9463:7475 with SMTP id d75a77b69052e-46c7107797emr40246731cf.2.1736436404809;
        Thu, 09 Jan 2025 07:26:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE4GLduPeKDNMMg3f6b06qAGHVGQH9JlhR54n6Mbq46ZEQtZMeehpDZL5gdx3vs+xqp/LoU7g==
X-Received: by 2002:a05:622a:110c:b0:464:9463:7475 with SMTP id d75a77b69052e-46c7107797emr40246571cf.2.1736436404409;
        Thu, 09 Jan 2025 07:26:44 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d99046d7d5sm673553a12.66.2025.01.09.07.26.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 07:26:43 -0800 (PST)
Message-ID: <41fd6b59-249d-4f19-9ff8-4ae169a6db05@oss.qualcomm.com>
Date: Thu, 9 Jan 2025 16:26:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcs8300: Add device node for
 gfx_smmu
To: Pratyush Brahma <quic_pbrahma@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org
Cc: konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241227110024.30203-1-quic_pbrahma@quicinc.com>
 <1c8af731-c551-4d72-84a0-f14d57bec4ec@oss.qualcomm.com>
 <e7abe34c-9df9-425b-933e-cc744a63b80c@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e7abe34c-9df9-425b-933e-cc744a63b80c@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: hVLlQIgV5B7zG06P88hUJl3Wtb5AjgAQ
X-Proofpoint-ORIG-GUID: hVLlQIgV5B7zG06P88hUJl3Wtb5AjgAQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 mlxlogscore=930 impostorscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 mlxscore=0 bulkscore=0 clxscore=1015 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501090123

On 8.01.2025 1:10 PM, Pratyush Brahma wrote:
> 
> On 12/30/2024 6:49 PM, Konrad Dybcio wrote:
>> On 27.12.2024 12:00 PM, Pratyush Brahma wrote:
>>> Add the device node for gfx smmu that is required for gpu
>>> specific address translations.
>>>
>>> This patch depends on the patch series [1] posted by Imran Shaik
>>> adding the clock support for gpu.
>>>
>>> [1] https://lore.kernel.org/all/802d32f1-ff7e-4d61-83f1-f804ee1750ed@oss.qualcomm.com/
>>>
>>> Signed-off-by: Pratyush Brahma <quic_pbrahma@quicinc.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/qcs8300.dtsi | 37 +++++++++++++++++++++++++++
>>>   1 file changed, 37 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
>>> index 80226992a65d..8eb688e2df0a 100644
>>> --- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
>>> @@ -816,6 +816,43 @@
>>>               #power-domain-cells = <1>;
>>>           };
>>>   +        adreno_smmu: iommu@3da0000 {
>>> +            compatible = "qcom,qcs8300-smmu-500", "qcom,adreno-smmu",
>>> +                   "qcom,smmu-500", "arm,mmu-500";
>>> +            reg = <0x0 0x3da0000 0x0 0x20000>;
>>> +            #iommu-cells = <2>;
>>> +            #global-interrupts = <2>;
>>> +            dma-coherent;
>>> +
>>> +            power-domains = <&gpucc GPU_CC_CX_GDSC>;
>>> +            clocks = <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
>>> +                 <&gcc GCC_GPU_SNOC_DVM_GFX_CLK>,
>>> +                 <&gpucc GPU_CC_AHB_CLK>,
>>> +                 <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>,
>>> +                 <&gpucc GPU_CC_CX_GMU_CLK>,
>>> +                 <&gpucc GPU_CC_HUB_CX_INT_CLK>,
>>> +                 <&gpucc GPU_CC_HUB_AON_CLK>;
>>> +            clock-names = "gcc_gpu_memnoc_gfx_clk",
>>> +                      "gcc_gpu_snoc_dvm_gfx_clk",
>>> +                      "gpu_cc_ahb_clk",
>>> +                      "gpu_cc_hlos1_vote_gpu_smmu_clk",
>>> +                      "gpu_cc_cx_gmu_clk",
>>> +                      "gpu_cc_hub_cx_int_clk",
>>> +                      "gpu_cc_hub_aon_clk";
>> Most of these entries look totally bogus, please make sure you only
>> reference the ones actually required
> These entries are exactly similar to the ones we use in sa8775p as well [1] and the usecases
> haven't changed between qcs8300 and sa8775p.
> 
> Can you please let me know which entries you find irrelevant here?

Well, I'm particularly unsure about CX_GMU and the HUB clocks.
I >>don't think<< they don't have much to do with the SMMU, but please
check internally with someone who knows for sure

Konrad

