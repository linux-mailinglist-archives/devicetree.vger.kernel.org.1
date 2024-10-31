Return-Path: <devicetree+bounces-117902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A25689B8462
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 21:30:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3061F1F238D2
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 20:30:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FA2A1C9EA3;
	Thu, 31 Oct 2024 20:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A2+KpKfi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668791487FE
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730406642; cv=none; b=mWLFLG/fzpeiPLnHXNeoaD+Vf7HChl+TXv06ZN/LCpjZtrUYVu93SftydK0pFvzlpc8moplkgGEgMAvRSX78DpJK4uYSjpfYpsa8jr/QKslBClAfWSQQY/Lv7eSTlxbGQ8scf/4MCpQ3l5YGGOr0srutliIk/GoXtdFzGkz7dlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730406642; c=relaxed/simple;
	bh=4wF+WR+58lXehmAx16bPIl0Hmrv+5u5wGZRUtY4WhAs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H1hce+6qIBfv0Syd3onZFb3RbMTIk9XjlD4N6CGtuND5CfMSstDz3w0D2cmshiF5WtpHBlkY1zH+7eKiz0W4xAxqaaH6ygt5jRlUw1x/mDQNd81oFIW0q9RpKplFPebjCEIGXCqiUSj1f8B3X8XJUFH0Yq/He5z8cJCevbWTCjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A2+KpKfi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49VEZcNk027381
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:30:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vn3QTWUjCAic1i2jtFrxyg3FZC1WBX+pK1/bjh3GN7Q=; b=A2+KpKfilPVw8X7j
	gf7IT53+mwotSyyijMjSdmuCOU8klTIoEdkZGLR6K5QrIzkM6cb0HSuaK5qtydYA
	vbXd6z5HkGeTu3M9XsJUqB/pNZaKxz0MPgj9N3TfQ+EMCscMbr/XWiUy8TMdzZ3m
	V8V7L1k8W/ls1mLcUY19iniL18U7N6YIVqYR+8JGcQebi2ew8VIXoLwG9WAbeeYo
	QOU6+SyzxlU4YeZzX69siE9sldbcX94n4GAUPj07Ko6kXWFHmgfEQEQzen8lvwVa
	TvugyhOEdBoyD6DfJQ/4iGpuSqJeGnRnM0L1jvsLzesemwgmnsMihFZrku5l6OKO
	ThkGug==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42k1p384gj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:30:38 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-4a487bd8d04so59392137.3
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 13:30:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730406637; x=1731011437;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vn3QTWUjCAic1i2jtFrxyg3FZC1WBX+pK1/bjh3GN7Q=;
        b=R1sx9iIMrg1oyeZ04mJhnZlCm3irdBYC5UEQJ5ZKyozoar5yWOGnh7Y0NOXNKE7EGc
         i530tuLo70SxLd/1phDmr0xME7+JAF9sbJrBWobxYd594Db3B/p80WZc17ZBUrpakBl1
         N7i9koGeF6UeP/79sRF5Yz88mUwdeg5pAoxbLu/YbhtbHRvcBIpSe3In0zYU7dUYmsgc
         lMsfxTo+HI8J5ZsWmUAIdNAJQ8pZYyWcdQKZQFf5LBrThBLQY+R3KFBWTBtIHbEZNknJ
         8HwpsXcRbYE1dsgMGkq5Ds8PGXD4cXqPHtmhKXFS3TnkAvr5fv8YOyF6iUgLLmCvVnAq
         Pt9A==
X-Forwarded-Encrypted: i=1; AJvYcCXkkLWx1C9otU1tFz6aSnDyoFUrTfCm6ODPaqs0W7yo3ddNaLuNXelAsS7RhjrpCeL5ju1i9qAD3fn1@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9jdYu8zf5ezsZNaWG/dMB998qTtUWK/jn+rHNz7lh8wTGM89u
	Pw0SjtNaiBTm7TbEcRZCu7NglhLhheePOzx2Mq8AeavqZbpdv0EBH8R+xrFoWYNdDwIwlhVgYhM
	xzG1gTueNiPAdnmdX2sZU1DwyUZZRVLNFz0egDvrl3L5THcTlXX1sXkCwBArH
X-Received: by 2002:a05:6122:308:b0:50d:a94f:6b5d with SMTP id 71dfb90a1353d-510150e3c77mr5462587e0c.2.1730406637210;
        Thu, 31 Oct 2024 13:30:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGdl28X3YUr9VOac9QD1ZHycOAxkaqooK6TaCu9jFulPQMeNW7RR5+G5iY1kNTYpQQ8cejOdQ==
X-Received: by 2002:a05:6122:308:b0:50d:a94f:6b5d with SMTP id 71dfb90a1353d-510150e3c77mr5462563e0c.2.1730406636788;
        Thu, 31 Oct 2024 13:30:36 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9e56641232sm101237166b.152.2024.10.31.13.30.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2024 13:30:35 -0700 (PDT)
Message-ID: <14a7bfdb-7106-4317-a54a-e0101c41cba1@oss.qualcomm.com>
Date: Thu, 31 Oct 2024 21:30:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: sa8775p: Add gpu and gmu nodes
To: Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Rob Clark
 <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
References: <20241030-a663-gpu-support-v3-0-bdf1d9ce6021@quicinc.com>
 <20241030-a663-gpu-support-v3-1-bdf1d9ce6021@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241030-a663-gpu-support-v3-1-bdf1d9ce6021@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ygD8X20nCHA-j476rFmrWTrl226tBjzm
X-Proofpoint-ORIG-GUID: ygD8X20nCHA-j476rFmrWTrl226tBjzm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 adultscore=0 spamscore=0 lowpriorityscore=0 mlxscore=0 malwarescore=0
 phishscore=0 clxscore=1015 impostorscore=0 mlxlogscore=986 suspectscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410310155

On 30.10.2024 8:02 AM, Akhil P Oommen wrote:
> From: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
> 
> Add gpu and gmu nodes for sa8775p chipset. As of now all
> SKUs have the same GPU fmax, so there is no requirement of
> speed bin support.
> 
> Signed-off-by: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 94 +++++++++++++++++++++++++++++++++++
>  1 file changed, 94 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index e8dbc8d820a6..c6cb18193787 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -3072,6 +3072,100 @@ tcsr_mutex: hwlock@1f40000 {
>  			#hwlock-cells = <1>;
>  		};
>  
> +		gpu: gpu@3d00000 {
> +			compatible = "qcom,adreno-663.0", "qcom,adreno";

Is the patchlevel zero for this SKU?


> +			reg = <0x0 0x03d00000 0x0 0x40000>,
> +			      <0x0 0x03d9e000 0x0 0x1000>,
> +			      <0x0 0x03d61000 0x0 0x800>;
> +			reg-names = "kgsl_3d0_reg_memory",
> +				    "cx_mem",
> +				    "cx_dbgc";
> +			interrupts = <GIC_SPI 300 IRQ_TYPE_LEVEL_HIGH>;
> +			iommus = <&adreno_smmu 0 0xc00>,
> +				 <&adreno_smmu 1 0xc00>;
> +			operating-points-v2 = <&gpu_opp_table>;
> +			qcom,gmu = <&gmu>;
> +			interconnects = <&gem_noc MASTER_GFX3D QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "gfx-mem";
> +			#cooling-cells = <2>;

You might want to hook this up to a thermal-zone right away

Konrad

