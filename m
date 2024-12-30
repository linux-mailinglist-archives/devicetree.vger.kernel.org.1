Return-Path: <devicetree+bounces-134731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B0B9FE630
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 14:19:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 97F513A1DED
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 13:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16CC91A83E9;
	Mon, 30 Dec 2024 13:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h/v3kOJR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B92BEAD0
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 13:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735564770; cv=none; b=m/fIlEliw8uUrrLZVSsZLzaZtU/Mvbzpf2gx7qDq9KJP89DJcNg8oWCmXA4mrzI0BvHoLEJ6v7AMgQFascEsOZnHDzw5sv1vLNQx37I9qrRiKB+hWr5B2gvSg/w9k6WTPuQmZ1kwzyg2e/xWB7aJeXOFgn2SNcGeVvH5iVU3m6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735564770; c=relaxed/simple;
	bh=P9V8RyAYeY/QXqKaIdNRYhKNZu3ImQwwZHC7Gns+eTY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dQYfF5Mfxm4WVabbC8KFp+JVBsKi2+zhpXMTjaDrGVMjs4haVa08i9+AunCsDm5n+12dp8R8rG7U6timvoA4aexsVUpOtNogMzEAaTHSw5urUW3MIUKG/+MH8VG1EngqWfvFwu4lzqzzuTWA1tagyTS+bb/roLx9A/7xon+h7mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h/v3kOJR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BU7FrHu027146
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 13:19:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NHFq+0HhJPokWAUjbZS/ExdVRM0xjW7ODn4JeKNX9PE=; b=h/v3kOJR94e1dZIo
	MB2EkEWlxdtROK7mHo50oMuOWq2Hj1bOJ3Igo4RYoA+IPf6B76FjjwgVn2AqRWey
	EKe/qWEptOV6ZMF6tmy6iqHKEhdWoFprmO/xLesrRmoLvF7eRPRFwMvdmXU9ybRM
	wvzAym53W77BXhogEzN0I5x8H+tJZsdQdygGEomHpIpFoH5rfquHjsmHEXF7qNFV
	CkGN4JUHHgixfWWx3elJUv1aZn4eXYri6JubA5mllWRtNkYrH9fhQIEVSVQdycKX
	czNzrMFkCcF6aKccytQfkrCx4wIk5Ysd3Qi+pICw/c1dXS0vmjU7PUAOjSmsGGuv
	lA1/bA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43upyr8q8t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 13:19:27 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-467a97dec51so6188871cf.0
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 05:19:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735564766; x=1736169566;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NHFq+0HhJPokWAUjbZS/ExdVRM0xjW7ODn4JeKNX9PE=;
        b=j9VdOci5RZwfyg9PBpaw01qOcDHBuE/SUoEn46RHlRwJTcr44hd7YOXPGR7rvBtm7f
         tEiyPQzOiLVletrghHzM6LMxyF65Cf2YYfzxWmgItPrXEJSZG5QRI6m3smGXxU+tnaPc
         UzTQBeWnjXWPJM+ZJ9RmYGGRP6SN3BefckeV/uTSdW+lF4WKTRV7GAoZZJGTw6GfVBsu
         QeFG/1/IAZrtJ649jkzwVQRnQJBomno9cF146CzkH0nZMwz4grJO/O7BkXvVMVKcb9ZF
         KNIVlvx6CwtYFMskHFcgImHjkFrg7h3J61yXARxQyNVH7nA3uX42IUdLbg+7WR6KVU5I
         B8ew==
X-Forwarded-Encrypted: i=1; AJvYcCWgvaPmzW+bblSc7A1glUYMa+CpOT5iDkQdkz6ObKlyjshQMzHAaVzxrRPzumACYF7S35ZFN2ZNQUrK@vger.kernel.org
X-Gm-Message-State: AOJu0YycD1avnCbZYcfFcbyeLd9ntFtjFOakoqvsaGK39uOqk9/oQpZN
	lhduw+db+oZhebbrwflHLYzBdDABwpWLTax5CIcgPQXiYGGAsinfKOEvoWm5x9r+28TPSOxFMr9
	L9FnHu/3Z1Cke31Tswpw9JN4SGYn3LJo2kx/HEIbAELRUWXuE+onH2XMKtJ31
X-Gm-Gg: ASbGncuBd3Hg/lOE/CF/2q37h5caEHEuI+frsNh/BHb1+LWhA/SZ/8wXbCd3xW9tbsn
	yIkpTC7VXZBkVYoIC48jMOUHtVDPuLXWKSZk+zmYJISwo1B9xV0d5ClJ0fkkVDEG++6b5qR5H8y
	Ye1oLKdbewitrGLud8t/DMM97v/+BgOFDs2obYKNrUrovgn50UiVY5kL5T6IHVXoYg9+qVarLNk
	dtUDGNRN22jI67FFBLE5PfCZ4u1YLOZ+MkimTg6q04OY61mj0i1VCE79zxaO5ccvShKy/lVvaCl
	BMHVbSalm530Bu+h5UHu8Q3DuvYtdLq1IkA=
X-Received: by 2002:ac8:5a4d:0:b0:467:6983:fe85 with SMTP id d75a77b69052e-46a4a8f0323mr198287031cf.9.1735564766196;
        Mon, 30 Dec 2024 05:19:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEvR6snFKsFaKyNqqe/Bt2HRaIn7T6BMuLgYLvbOr2C+FMHreEnXg5ipnU3OzTrvzzea0LKWA==
X-Received: by 2002:ac8:5a4d:0:b0:467:6983:fe85 with SMTP id d75a77b69052e-46a4a8f0323mr198286861cf.9.1735564765857;
        Mon, 30 Dec 2024 05:19:25 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80676f192sm15132682a12.35.2024.12.30.05.19.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2024 05:19:25 -0800 (PST)
Message-ID: <1c8af731-c551-4d72-84a0-f14d57bec4ec@oss.qualcomm.com>
Date: Mon, 30 Dec 2024 14:19:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcs8300: Add device node for
 gfx_smmu
To: Pratyush Brahma <quic_pbrahma@quicinc.com>, andersson@kernel.org
Cc: konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241227110024.30203-1-quic_pbrahma@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241227110024.30203-1-quic_pbrahma@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: K1qlUyLq1ZkddDo8cZBAGKgey_okk7Yr
X-Proofpoint-ORIG-GUID: K1qlUyLq1ZkddDo8cZBAGKgey_okk7Yr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 bulkscore=0 lowpriorityscore=0 mlxlogscore=999 adultscore=0 clxscore=1015
 impostorscore=0 priorityscore=1501 suspectscore=0 phishscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412300115

On 27.12.2024 12:00 PM, Pratyush Brahma wrote:
> Add the device node for gfx smmu that is required for gpu
> specific address translations.
> 
> This patch depends on the patch series [1] posted by Imran Shaik
> adding the clock support for gpu.
> 
> [1] https://lore.kernel.org/all/802d32f1-ff7e-4d61-83f1-f804ee1750ed@oss.qualcomm.com/
> 
> Signed-off-by: Pratyush Brahma <quic_pbrahma@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 37 +++++++++++++++++++++++++++
>  1 file changed, 37 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> index 80226992a65d..8eb688e2df0a 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> @@ -816,6 +816,43 @@
>  			#power-domain-cells = <1>;
>  		};
>  
> +		adreno_smmu: iommu@3da0000 {
> +			compatible = "qcom,qcs8300-smmu-500", "qcom,adreno-smmu",
> +				   "qcom,smmu-500", "arm,mmu-500";
> +			reg = <0x0 0x3da0000 0x0 0x20000>;
> +			#iommu-cells = <2>;
> +			#global-interrupts = <2>;
> +			dma-coherent;
> +
> +			power-domains = <&gpucc GPU_CC_CX_GDSC>;
> +			clocks = <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
> +				 <&gcc GCC_GPU_SNOC_DVM_GFX_CLK>,
> +				 <&gpucc GPU_CC_AHB_CLK>,
> +				 <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>,
> +				 <&gpucc GPU_CC_CX_GMU_CLK>,
> +				 <&gpucc GPU_CC_HUB_CX_INT_CLK>,
> +				 <&gpucc GPU_CC_HUB_AON_CLK>;
> +			clock-names = "gcc_gpu_memnoc_gfx_clk",
> +				      "gcc_gpu_snoc_dvm_gfx_clk",
> +				      "gpu_cc_ahb_clk",
> +				      "gpu_cc_hlos1_vote_gpu_smmu_clk",
> +				      "gpu_cc_cx_gmu_clk",
> +				      "gpu_cc_hub_cx_int_clk",
> +				      "gpu_cc_hub_aon_clk";

Most of these entries look totally bogus, please make sure you only
reference the ones actually required

Konrad

