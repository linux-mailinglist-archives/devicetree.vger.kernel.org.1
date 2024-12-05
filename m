Return-Path: <devicetree+bounces-127688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 312559E5F0F
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 20:46:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9794D1885959
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 19:46:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDF3F22E408;
	Thu,  5 Dec 2024 19:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R08GK1uY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E12229B24
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 19:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733427994; cv=none; b=SleeSbn8W67S/8kRiGaMXM1H2XgazsPEH8DfBxwqacky4PU3hIBXwXrz8ESZ/IYb4uZNhPGW6g0yXC9HItnxEm5Cn+EKlqdaeiPm16pQR4iCrdWifw+679SIjxKAkoKkpdtK15MDBSAUCORCkF4gQ1uCtnfkDVYTOVsHiVeY0WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733427994; c=relaxed/simple;
	bh=0AUdpzdMUQKhlXXRWDIL0n3CVbX//W2XUTYGOHLx9PE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RvrJnK5D05UETV6eZg/g2cc7fPvWqYwPTnopS4hAEIyPnufawh+oQtW+ICndBFUKySJxw/V8HGDHQDVz+4gBSiJk6TxRat+lvgF14zsBVTbdOMQYEuk+B/iAqFsgPFxOliSJcH25pDgGXP0JGG6tyBUbI6Xu8fFy/ziVjqXRjgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R08GK1uY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5HaV4Z021239
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 19:46:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dSG1O+bYTyrcRa62Fx5O4atU7rZOKptw1L3OzbpcQAk=; b=R08GK1uY5+FmtGSN
	s8PhiOPI/EKtwq5qEQZn1LSGxgTA3SxOXP2QQNmEnT8CA68TVNpLOUttVXhtAk0K
	cuzmo2J93LWRE98UfyerMiDKaHwIWQPN1sDnH1wvP/FOgM/VRV1LeG/muNibm6e/
	zJRvvpM5/weru788Xx7sFTLYrSI2nZQHfXsDaqCl5T6Az4OxLf4pQgsFJ3Gpwmj6
	LuIVJoRBT3xLYJt8z5RjXhEsNhB0GffUki7g8btLKBdLZ8EjlisStMz6rdJJXAOS
	jzZJYLSve12J8wrM4vDnYzfGXPEmVeNw6H6GV449+231GXKPAxOKZMbcBaAhuu1B
	TSQ4HQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 439v800vmw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 19:46:31 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-466cbd99b11so3018491cf.1
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 11:46:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733427991; x=1734032791;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dSG1O+bYTyrcRa62Fx5O4atU7rZOKptw1L3OzbpcQAk=;
        b=GR4ThlQiWR5pGrckhvJ59cbkiMDWLWRcDt11ZRN6w1honwJlY0O/3QwMPCBl0/nxi2
         4B+GUPb99pQGJ1rPoSjTqFyO3vwMP/kDRW3YiK1L9RITpD/+dmgJ9v6Pa653D54hoGwr
         JkafR8s4Q9CW6dmN0+zQK6L85SyG8hmoqjNZy5TAeWeBhjxCvSHmSFPUGUbZ5JZ5xiU7
         IWrQN5pVyhQRQIgf5xbSCwOdYyHWMZSzyZxm4O0xFfh/WnVp4t/zoT/hQY2xcisl7L8l
         lwmqc/N8/33Ej5CMWKlhwerJSh7JXMTt30BK9avkmFBGqX8krA2khlA9WA10gMYxbj3a
         5aig==
X-Forwarded-Encrypted: i=1; AJvYcCWlUmUrswFrF0XReYZ61siXWA9PDCng4D65yiilZ4wYlGxI19x7wn3v+fHnxCeUPAd7TIFcN00sASFZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yys3/XbMTDuDOwFH8mR3H1SF0CyvNKU45B1t4XkmWMaqICbYbwG
	d5rGGDlySIye7wkh50oNEihoAYIyxVucftIVaeDPvnCGhpMu0KGyIzv4Oq/aaw5AWVsfSSRxJJK
	sU0uc3dCLLYLVgo38CVVMi7sv+HGtGBX1gnl/aAreTWB+zTEOZilV8PvApXZF
X-Gm-Gg: ASbGncsoT7bnB0N10gMmsmHzFyBgfOSL0zzBurO72qw2coPtZ3/hGwDQn6kKgoN11Na
	N0WVAUkgOdm50HsMCZ7OSLC0lAnCRXqs0gupw6j6tzbAWxJo1OXfQjbydnwfoHygwFyN0aTYG/t
	RNC84J3HQjktWUBohCkTVV00DmoKIRG5Ft4d7ZtBssyzr9eBzEeUnqSu9KcDb7r8HeEiObEbrgn
	MRY/0k85w1IzmorQvMOk1BbhelzR8ofAWs4uA0xmuhEG87S6ayqO6L/Qr143ZAI8T0XolEHhsRq
	7vsM7GDYFVcTEYFW5cylkLbGGPBkop8=
X-Received: by 2002:ac8:578d:0:b0:463:5391:de49 with SMTP id d75a77b69052e-46734fa37b7mr2634451cf.11.1733427990988;
        Thu, 05 Dec 2024 11:46:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHoha39Xn33F4EOwHF7vpjSu272E8a7iWXvvm8l9c6Uvl2FQwoxl3+j9ecdP6Kv90q1aqjorw==
X-Received: by 2002:ac8:578d:0:b0:463:5391:de49 with SMTP id d75a77b69052e-46734fa37b7mr2634221cf.11.1733427990512;
        Thu, 05 Dec 2024 11:46:30 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625e96aebsm134594566b.65.2024.12.05.11.46.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 11:46:30 -0800 (PST)
Message-ID: <573d254c-9478-400a-9811-d8de7eba6dcb@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 20:46:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: qcs615: Add gpu and gmu nodes
To: Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Rob Clark
 <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
References: <20241126-qcs615-gpu-dt-v1-0-a87782976dad@quicinc.com>
 <20241126-qcs615-gpu-dt-v1-2-a87782976dad@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241126-qcs615-gpu-dt-v1-2-a87782976dad@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: PkuEYTay-LK7eygqic0Uvc-04b93wrcq
X-Proofpoint-GUID: PkuEYTay-LK7eygqic0Uvc-04b93wrcq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxscore=0
 impostorscore=0 adultscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 suspectscore=0 mlxlogscore=810 malwarescore=0
 bulkscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050146

On 26.11.2024 3:06 PM, Akhil P Oommen wrote:
> From: Jie Zhang <quic_jiezh@quicinc.com>
> 
> Add gpu and gmu nodes for qcs615 chipset.
> 
> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 86 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 86 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index 8df26efde3fd6c0f85b9bcddb461fae33687dc75..f6a3fbbda962f01d6cf2d5c156ea1d1d846f310a 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -387,6 +387,11 @@ smem_region: smem@86000000 {
>  			no-map;
>  			hwlocks = <&tcsr_mutex 3>;
>  		};
> +
> +		pil_gpu_mem: pil-gpu@97715000 {
> +			reg = <0x0 0x97715000 0x0 0x2000>;
> +			no-map;
> +		};
>  	};
>  
>  	soc: soc@0 {
> @@ -508,6 +513,87 @@ qup_uart0_rx: qup-uart0-rx-state {
>  			};
>  		};
>  
> +		gpu: gpu@5000000 {
> +			compatible = "qcom,adreno-612.0", "qcom,adreno";
> +			reg = <0x0 0x05000000 0x0 0x90000>;
> +			reg-names = "kgsl_3d0_reg_memory";
> +
> +			clocks = <&gpucc GPU_CC_GX_GFX3D_CLK>,
> +				 <&gcc GCC_DDRSS_GPU_AXI_CLK>,
> +				 <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
> +				 <&gpucc GPU_CC_CX_GMU_CLK>,
> +				 <&gpucc GPU_CC_CXO_CLK>,
> +				 <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>;

This one belongs under the adreno_smmu node

Konrad

