Return-Path: <devicetree+bounces-227877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C73BE558A
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 22:15:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F1ACB583F01
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 20:15:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED0942DA777;
	Thu, 16 Oct 2025 20:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U6uWQEdv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BCC4334680
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 20:15:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760645716; cv=none; b=I5zWIG3AbdrG456b6cD5odZNk/tHfM5n8A9raOvK73A3PrriV41MiqXq3ZLcdS2Gd4hLCmJD6zXizVLlwxjX8j6ac6epPubkpX7ovYpJpyZ7hc1lH5F2zmEQgMm80kWRXd6nPRE7wQ8EcRpYyzKWGLX/pp4Quakvb3khrjZKtgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760645716; c=relaxed/simple;
	bh=wPqImp611aCZjTLetms3dJbHlLAZwRO5YDLgqdiV4I8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LwPtVpsbo0s2brMgqsOfwnJpQAjpkr1EnAzZpn+qUAtNH+BTn51iReaRgnvZ1+Hlx/S41MXIi7QCvGf+JCGKjHHmpwK8icoPIqu/IGMB4KKGnu2HJK53IfHCShwlccIZTmHFTI9qt2rLB2avWnM0+5K0drAtuE5x0sh7fuOGENc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U6uWQEdv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59GEd4LF024777
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 20:15:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9zBcpy2TVGpV6SdEbPYF0b4m
	pBJ4QckghSj4HE7U+Z0=; b=U6uWQEdvwc0Atp6F/+uCApeLSUsymXEe4pHLtXao
	i8NlEGgPilQYtDRy5RAmjrXbBMIRWy1dEEYOrvfitNOJvjF8ezUAohNAJQrIbxTT
	sGJj4JP47vIt1OZxxyPhy/baVufsqdQF9qwwPceQ0wgJOLKrL9WC+OxFPNlTW+4I
	HwnP9YgD9Yfun3o081dWWNpjw74Fa1qPOFSmckY6Qaq/wDCdgBUXJHQMmJRIjVay
	4JvNmf0BNXza2ZsheozKSGcBwzHJIjCVqhcBIcIGL4x/34q16diC0+XQ7T5Ll9Sz
	+lpQlgRhGLI4u1Ub0a5J72PhLOIozLPkYO25V0+a4S7jIw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qff11n5t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 20:15:15 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-87c2085ff29so20986936d6.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 13:15:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760645705; x=1761250505;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9zBcpy2TVGpV6SdEbPYF0b4mpBJ4QckghSj4HE7U+Z0=;
        b=DSNjNAGD2m89F3aLYxGHKjpc2vP7H8FmV6Gd2rtYwvDFF4K/9PzpI/JdBKVwgHksJi
         BI1BmBAroSyHYL7738tx/FY5skPJdwbEd6ilrNnFWkteYHPMbNojLtMGEz9J3T8ahAtH
         B77C7MggyihTLZYo/ex++ybuBDIFBEQ5Vsjl+Tay9wyMHQ8BmgAb58cmZEbrMKtVqS9h
         Ip3MHf2vd+FOpWDBHfgYuEperwYOiF/GG6qfQgClRw+LG2zEQR3l5hvAornATlrl5frs
         +XXuZ8K7BKTV0/+s5kEJ2/El72QCYb27dp8ElP1In1bqZ9S42wbPJQddUOatQY50ZHEl
         BAHg==
X-Forwarded-Encrypted: i=1; AJvYcCU5X253d+CRZTTACdGNjHdJWLT2jZWjOK1fxbM0WCalWpyZq9DN7AWjeIbvy7EK5UtUtCEkGt1As3hS@vger.kernel.org
X-Gm-Message-State: AOJu0YzsAwXlTyb3dCeaQBt5k/AFv5AACOs82SpZ4PjvHoUpOWC4Mu1f
	RP7EHfwYTv5zIAQvnqLDgGD4Kmv2mG0m6MsDNQP+GmiXK9YyT3eDAD/siu3h+wD3RUxLSpFOyl1
	0kbtACAf+d0fXdCkr6b6W16HgK1KBMuYCMw/kQek6HfcTF3VkT2JoNZZl/h6g3ma0
X-Gm-Gg: ASbGncv/AswKbBxUtDiaZWxxsnVRSe30MLqJujj0kc9QyR/OhcrLTBcKAi4pdNpqvCq
	9bPtSVQMsycFO+whT3Vj50vAX45jHj9DAykhBrwYi4qzZaXE3Mvk0JLeFUZOJea5Otw217potMq
	s0ImACnLWwnffq1u3pFE4ld2/O0APbAdtMbqvJSuXZdypjo9+IrP0MI3UhbQ2njMXA/tVleIOgv
	nLoxkOSQXSIp+xzL+XixTNDakiKHH4jfzUgZ/Mn4IR6YdNpisSienPW0ShXl6YO7MbsOLJdw/yt
	Aav784dPjYPtKQ8rMgFYI8uBnGilVFhfOLXPY32dneiQHxFXID8M8obpaJFnt2LG9MT/x4S5LUf
	HRO+OmKRKA5G8MHLAgArDFY2pxMnPnTEcqnWhA9xXuAhMj7atUQrgv49H21eUa8/b3rd9+4sTzP
	nsZap/yvZURtU=
X-Received: by 2002:a05:622a:1103:b0:4e8:9086:e6fc with SMTP id d75a77b69052e-4e89d273e19mr19028801cf.18.1760645705059;
        Thu, 16 Oct 2025 13:15:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHe5fnMVrV7X7OK0iMbXtKG9SypwzE4pSZ+g5Jctt4v8KdtBGL8mmMoU8EYU/SoOlRUrLoUiw==
X-Received: by 2002:a05:622a:1103:b0:4e8:9086:e6fc with SMTP id d75a77b69052e-4e89d273e19mr19028171cf.18.1760645704394;
        Thu, 16 Oct 2025 13:15:04 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088580ae2sm7280651e87.117.2025.10.16.13.15.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 13:15:03 -0700 (PDT)
Date: Thu, 16 Oct 2025 23:15:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 7/8] arm64: dts: qcom: sdm845-oneplus: Describe TE gpio
Message-ID: <rung7om2fvwmfyihgsnn7j2b6pak7sjt2ayzy42ovugroti4jy@wt6chj662llr>
References: <20251016-s6e3fc2x01-v3-0-ce0f3566b903@ixit.cz>
 <20251016-s6e3fc2x01-v3-7-ce0f3566b903@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251016-s6e3fc2x01-v3-7-ce0f3566b903@ixit.cz>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX5dk/9t3HwaG6
 6tPVFI8THn3GslTIW0OHjFTjrF/+P8CnkH7j/HERylPU4SJoPUN+AZ+v2IsmiT7C3ZyglWnrQJp
 bB7AP1lcFbwnqrBNz+wfWXrpuPtY7S7gGXeuKRLTeTHdfxf9PAhYDEB9r2q7p7EDoc/5L7Y30EO
 ia18aPq64lYMls2c8EzMPF45nrNAfecSa9sjTLfcIV/N3ZoqnUjGMPr3Xvllj8eUdNBHwsG9Dq5
 76XEfhBt1YQM14V3rTMoTE1E8nYORb3ioP3u8rONlWzvYIkbgxLFVei5JQW70L8Ls1NrUEiCodl
 qs2vAr6fHXI/VWpUS/GEvOMST7J5PaAi/Fv4h9cDQ==
X-Proofpoint-GUID: y3WKUP2kTwCP04AnXIzF3OWBy0modlqV
X-Authority-Analysis: v=2.4 cv=PriergM3 c=1 sm=1 tr=0 ts=68f15253 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=HryFia7_YQCGBQHkU4YA:9 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: y3WKUP2kTwCP04AnXIzF3OWBy0modlqV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

On Thu, Oct 16, 2025 at 06:17:02PM +0200, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Describe panel Tearing Effect (TE) GPIO line.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> index a8e87507d667b..b663345de0214 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> @@ -460,6 +460,7 @@ display_panel: panel@0 {
>  		vci-supply = <&panel_vci_3v3>;
>  		poc-supply = <&panel_vddi_poc_1p8>;
>  
> +		te-gpios = <&tlmm 30 GPIO_ACTIVE_HIGH>;

Isn't it GPIO 10?

>  		reset-gpios = <&tlmm 6 GPIO_ACTIVE_LOW>;
>  
>  		pinctrl-0 = <&panel_default>;
> 
> -- 
> 2.51.0
> 
> 

-- 
With best wishes
Dmitry

