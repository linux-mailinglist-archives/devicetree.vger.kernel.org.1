Return-Path: <devicetree+bounces-168911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B81AAA94DEE
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 10:18:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D9463B38F8
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 08:17:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E15BA1D5178;
	Mon, 21 Apr 2025 08:16:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j3Iz+LpB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524081A38E1
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 08:16:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745223376; cv=none; b=lLvGXPGahnCxNttPw0OMTbAHXAPZf4TzHBAsnyfY7tB4WxvC4sv+BRSbTfD2lYx+j9P8yimYTWGn+PWjhI9c5Op1SUwh845NlcKG8mIqxwQ8b4s0HEe97S94yzqEgrxHBaRX6vyzp4HOILjnOsEKmQ2xfM00htjp1TF7xQ6FcaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745223376; c=relaxed/simple;
	bh=6HD1n8xs7n5w8LD46uLZq9L7Kk07vE8rM1+aHeJvTPA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=frLzppPPlWZbtq+hJHAWVFgNW7Jo2oF37Uf/UVNBc+fE6Xdr+eT8yfPql+kVG/aBnDzE0eUEo66z1P3yT4od/rbW2yGsOEpiPFTCJsZi8DY6TePdgofIV79lEIhpKC6hClsD33CkJlhreyr0HgtYZ0OMsa5mu+iWjsOSJYM14mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j3Iz+LpB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53KMKDSF008977
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 08:16:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qARCO4unAM6dJGj6oIu6kaF+8Quq5ZnXo3x6/YySZCc=; b=j3Iz+LpB8LorWG4/
	1CRgb50Hdr7BG4LFJAXQcqfgg1+Uj9+RXqkWfEfMwjm6Apr+D8X6NSY0xWaIuiPb
	/8b4y4IATVJqv5A4W1NFSukAznl4+FtXIAf29CGI6SUP8+15uI+PgyGQ/vJlGzTc
	OJC/P7bHBUgYXsXmTkC2GpGB/vr5ToGLBauB5n6BbdB3Fw2TqPrV7e/ha9ILEL1n
	zai/mocynsO2NurF4QT4Cn0FxuUSuYd3QNDdlXDj+Bkzhx+1gn/wTaoigp8VD9EZ
	bkn2lu58n0V5tc2ASxUlKGGAUnFYjV7lMu5pulZzGR+MYYZPmuNf1VZjQpDQ51By
	NTUDIw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46450pbc3r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 08:16:14 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5b9333642so455286585a.3
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 01:16:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745223373; x=1745828173;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qARCO4unAM6dJGj6oIu6kaF+8Quq5ZnXo3x6/YySZCc=;
        b=fsXAqOTlQag/xQSZl2OLWhykAnoVHNUzNriwPaBQQ7DW9IdlJB9/IXFfHVTsYpoIqP
         1016GurMFBAqdTC8SSoiS+fjSLngff8w8MAEHFOfkkD8HSyje0/5LUne0bmkcJ6viNQ0
         KNRk1NgC5xZzGBXDTN8LdRk4SVR8zVOHmo4TOItmjZTS6EQU8bmTR77fTF6xGGoGjzxZ
         AqId0nJIb4CoNTYrt5bEsH5LExgVebJBgsf8vgS/PJCpFLGvSuiIRrfpyS/uJptGNpCn
         HdHsefBzU/+vVztCgcovtbo3dthSqmCuIbCqsyPdaXK9DwUnMFQk2xHx59hMwUh0ZLwA
         pFqA==
X-Forwarded-Encrypted: i=1; AJvYcCUA0BoVlt3qie5nu9+8FGjjQXmtAdlEpSU6/WA2ptxjP4vh2QqhObLz9sIiWFyBW3xdiUweXWFkWuds@vger.kernel.org
X-Gm-Message-State: AOJu0YwXH6Zu0ja9h02hV/XiqpsNeFvMdhwRR930hUbqeT+nBmkoQq83
	65SqXHNGw07G6+z+dk9rUelyo0z2O753csyTUGTbDNT6PdzK7h1vGA4Dp0nriOXXaVjsvAoeGtK
	HZdAnnVTtiBJS7/gFyR163rF6BMMxRuJVLq+mwpW3UueGoegDVz4QLetOGmQ2
X-Gm-Gg: ASbGncsGwnbZW4TxTGmVQeueOmFmGno+mIkLLKuDG1eL3dRSr4MFEzJ8Q2JBHYhs3ou
	KG+Oep0l3TfGR4ZtU4LjOXy0/KTh455u51TgY9sgSsWy3YBjMaFO9ku7qIlA+lnVy0X+AzqYiVM
	hLqStnxb/7LSCW5aEwVwE7LVDbmxGPYYnWMb7z6fvVbU76yjQTwH1YJG89MXXeG8Xv7X2k0N+ro
	cHz893JEXkiH0GbzDROnoWQmOpPRw4s05Ic9r16G0OTYKbua+VwGM+XXa7VWf+UZ8nIRRDygmL8
	rTrZcQ1rR1viHB4SRjIdiw9kTn4svnAjZQo5MK2JjnEXN7Lp16gI1uw0qTHGO4S1wuGPshAS2iM
	=
X-Received: by 2002:a05:620a:28c2:b0:7c5:5670:bd77 with SMTP id af79cd13be357-7c928049ca2mr1716048685a.55.1745223372992;
        Mon, 21 Apr 2025 01:16:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGjwyE7MQkTDxkTD4bMTdrQVyq0KgcRLomu9pE/oxDMbBAj8GbWGPITnj/B2mJvuVUIGwaJfg==
X-Received: by 2002:a05:620a:28c2:b0:7c5:5670:bd77 with SMTP id af79cd13be357-7c928049ca2mr1716045985a.55.1745223372683;
        Mon, 21 Apr 2025 01:16:12 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d6e5424b5sm869330e87.95.2025.04.21.01.16.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 01:16:10 -0700 (PDT)
Date: Mon, 21 Apr 2025 11:16:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: =?utf-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>
Cc: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: qcom: msm8953: sort adreno clocks
Message-ID: <nxv2k2ofiao47w7gmqcgfgn57heucs6yp2og3lkzlavjarado7@p5u4663yw3oz>
References: <20250421-a5xx-schema-v1-0-7d96b889322a@mainlining.org>
 <20250421-a5xx-schema-v1-2-7d96b889322a@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250421-a5xx-schema-v1-2-7d96b889322a@mainlining.org>
X-Authority-Analysis: v=2.4 cv=Hd0UTjE8 c=1 sm=1 tr=0 ts=6805fece cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10 a=XR8D0OoHHMoA:10 a=OuZLqq7tAAAA:8 a=StrfYul8zGH_qiMLSD8A:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-GUID: lEQhhzGnN7eF8t0BYNxA1K_uTDEJI68j
X-Proofpoint-ORIG-GUID: lEQhhzGnN7eF8t0BYNxA1K_uTDEJI68j
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-21_04,2025-04-21_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 mlxscore=0 malwarescore=0 suspectscore=0 bulkscore=0
 adultscore=0 mlxlogscore=863 phishscore=0 clxscore=1015 spamscore=0
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504210063

On Mon, Apr 21, 2025 at 05:09:22AM +0200, Barnabás Czémán wrote:
> Sort adreno clocks in alphabetical order.

Why? The order of the clocks here matches the order in which they should
be brought up.

> 
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8953.dtsi | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8953.dtsi b/arch/arm64/boot/dts/qcom/msm8953.dtsi
> index 4793a60fa946195d3220b6c44dec170d443f56db..8a7e80c959fad09f950fe202eba76d3aae01d1ea 100644
> --- a/arch/arm64/boot/dts/qcom/msm8953.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8953.dtsi
> @@ -1052,18 +1052,18 @@ gpu: gpu@1c00000 {
>  			reg-names = "kgsl_3d0_reg_memory";
>  			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
>  
> -			clocks = <&gcc GCC_OXILI_GFX3D_CLK>,
> +			clocks = <&gcc GCC_BIMC_GPU_CLK>,
> +				 <&gcc GCC_OXILI_AON_CLK>,
> +				 <&gcc GCC_OXILI_GFX3D_CLK>,
>  				 <&gcc GCC_OXILI_AHB_CLK>,
>  				 <&gcc GCC_BIMC_GFX_CLK>,
> -				 <&gcc GCC_BIMC_GPU_CLK>,
> -				 <&gcc GCC_OXILI_TIMER_CLK>,
> -				 <&gcc GCC_OXILI_AON_CLK>;
> -			clock-names = "core",
> +				 <&gcc GCC_OXILI_TIMER_CLK>;
> +			clock-names = "alt_mem_iface",
> +				      "alwayson",
> +				      "core",
>  				      "iface",
>  				      "mem_iface",
> -				      "alt_mem_iface",
> -				      "rbbmtimer",
> -				      "alwayson";
> +				      "rbbmtimer";
>  			power-domains = <&gcc OXILI_GX_GDSC>;
>  
>  			iommus = <&gpu_iommu 0>;
> 
> -- 
> 2.49.0
> 

-- 
With best wishes
Dmitry

