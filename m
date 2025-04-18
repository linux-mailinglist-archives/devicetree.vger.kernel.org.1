Return-Path: <devicetree+bounces-168677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3D0A9402C
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 01:06:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D397F3A5013
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 23:05:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AC1F25486B;
	Fri, 18 Apr 2025 23:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hAnD0l4J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205B5252919
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 23:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745017549; cv=none; b=Wpr0AGWks1u0hK++yCf9HsD6BScnf43q/yP3LLL9JcgB3FQtVoBBv8ZzU6USSvXp/Pes/qePVLZZf7C0lhKqgWna5xZLqDaTQgWDweKdfC9FtV5sNOQLtyemLy0jPgebRDPn6W1hbR0KX9souNsJYfTJagxUG1Lht98/yR76jes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745017549; c=relaxed/simple;
	bh=hEJgUS8qfyBdIBBy1jMSOghOaaiuoTU40a3fcivZFtk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a5C9E3QEiRHButoofM908S9BkP0ZSs5tsJ+Tb4/t/zUA5oxObkFtYZVlsIOJOQYFPfcq3GpTVQIBpu35aAOPU2L8L46sU4d3aWVsCUQHmh6BjpqlTMZaTlwcjYDdMkooIhaiJUIaZGxdqecbLEmseqjHYXURHGtD2svhPfBDQ9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hAnD0l4J; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53IEpR05013293
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 23:05:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=V8QJgEdBBmdXG00IRKFSzJ2Q
	lscxaEHZ/g5OcrgAEXw=; b=hAnD0l4JvW6vvYR9/nEtwghNNnBudR/3MMl0Rv/s
	2sKLvJdo5E1i50B3jfKpUXyR8e3BguEcErmZ6xLmH2i3e3TuCw0+OBb35tcOpga6
	jPxc4vBDu3KwOib7IkIwbzh0WeggUVhTIoLVkBB5ngwpO1A/kLDJoSd7qilvqkoO
	EFEF4M1J6zXguFsaODwAXvewCm3Qf1g60AteSI6e3DwQ5syfyPOaDusv0TYN1rJr
	fa1eLuDvI5ghSGV/VfEVljreu4AQlCZ954gssG8q+VM25Faui6CQly6uSpuqlPac
	pQ1Y+p5rPc/0pgbT6/lBjFOihEuPH8jHAn+zRbF6qJe9WA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4628rvgem0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 23:05:45 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f2c94f8f11so21550566d6.3
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 16:05:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745017543; x=1745622343;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V8QJgEdBBmdXG00IRKFSzJ2QlscxaEHZ/g5OcrgAEXw=;
        b=tpi2vwgQXE/QYFpI8sFrLKli1xnV10x/JqqXbea/SvRv10fmsGcTkplG1/aLCspWns
         4ab7P8hiPlD7O26+k3Tj3/h2wUPt/gF+NSrwjh746Z90sZ5CKULHTnzVzK76fIPh0yt7
         l4AtWyZjL6ihqE284KsSBk3DTEj6YGY2lwsX3om4/Fm4WcYZCI1w/I9WOo9Swxezw1de
         JsyZhcchBTV8eaqJ8kL8j51UMcQGj0v+LgnEjfTE2xk9ZWOFd1JVuNiYFQjmUcVnh816
         2fL+KPKynQnMiIZNSHcspcNIAEjvPNHq9XMmXH10j4PozT68VrVDnlv0/6cv6rvNiwy+
         4qeQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhnjTstt4gesJ/c2M77lUCsSiVldkdx+jqHb02ux2gSAqCp+koGAB+CRlKhNeP1uwsiiJK/n3xoAFs@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3qjO8r86wOOXdBTPp9ue5E4Tj5S4NMkvk2scwZvl9tsMrlG0e
	irZ5VEbID4wB3k+G0w4hUq2qmhed+lCz3qHVslQSWchCtCcU9xxG4qyvxeNL+6OmtNV0svrMHfh
	K8xIgJLYiTZUJpk4jCnPoEj8P/dCk6ayXeAQDlCVjzksqEmkcaQGmnKKRtWGI
X-Gm-Gg: ASbGncvi8e1aRjFJO04sPyM1do1/OentNjFqm/8rcLQTTC/pPLAO0JJ7YqaLDNsSOlc
	z6fevpHqrQNIyiSpy4stHsOFdLIblI9nb7oB3jOghBcpbvo9S7qjG83uGJaIEqBX0G4PHBh8LAR
	zvqkrMcFu4qR8l/FsyB2rU7/IXEg8AyrnRR4xaH93Axds/ggmhpwT9QR4kH0waahAdg1stbi2w1
	UBP0iQ43PjFdNxrQt2DmmMDbBWrJWNKdLQ1SbGr+PQ6abKtylWfOJDTsq6IUPtXSX/ClpzLnO/x
	WFcXNlwISc1+NVRequPBHYebYGAIbuWu8Qewz104SU0dRtAtaV+MrgqK9AS/WCa92m5L3pAP/tQ
	=
X-Received: by 2002:a05:6214:5185:b0:6d4:1ea3:981d with SMTP id 6a1803df08f44-6f2c4678a3amr65315736d6.43.1745017543572;
        Fri, 18 Apr 2025 16:05:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEf26KzMLQvj2MKIJpjhCLfMiXPBJMSzk9JeFklWtqtVydsNaw/jNQAzTgwl2B8HD3Bgw+5bQ==
X-Received: by 2002:a05:6214:5185:b0:6d4:1ea3:981d with SMTP id 6a1803df08f44-6f2c4678a3amr65315506d6.43.1745017543272;
        Fri, 18 Apr 2025 16:05:43 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-310907a6736sm3482341fa.51.2025.04.18.16.05.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Apr 2025 16:05:42 -0700 (PDT)
Date: Sat, 19 Apr 2025 02:05:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8650: add iris DT node
Message-ID: <asfwnyn5grm426vq5qatrxfffv3wmbuzx6266rblanzqepffzx@7773dcxfaqe4>
References: <20250418-topic-sm8x50-upstream-iris-8650-dt-v1-1-80a6ae50bf10@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250418-topic-sm8x50-upstream-iris-8650-dt-v1-1-80a6ae50bf10@linaro.org>
X-Proofpoint-ORIG-GUID: O7nwajWlZ9MLB9PPOTZnxUR53IOha_ZT
X-Authority-Analysis: v=2.4 cv=RbSQC0tv c=1 sm=1 tr=0 ts=6802dac9 cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=CGpxOeS8x3tCTpWUsd8A:9 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: O7nwajWlZ9MLB9PPOTZnxUR53IOha_ZT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-18_09,2025-04-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 suspectscore=0 adultscore=0 impostorscore=0 clxscore=1015 bulkscore=0
 phishscore=0 priorityscore=1501 spamscore=0 mlxscore=0 lowpriorityscore=0
 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504180176

On Fri, Apr 18, 2025 at 03:20:35PM +0200, Neil Armstrong wrote:
> Add DT entries for the sm8650 iris decoder.
> 
> Since the firmware is required to be signed, only enable
> on Qualcomm development boards where the firmware is
> available.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8650-hdk.dts |  5 ++
>  arch/arm64/boot/dts/qcom/sm8650-mtp.dts |  5 ++
>  arch/arm64/boot/dts/qcom/sm8650-qrd.dts |  5 ++

I'd say that these are 4 commits.

>  arch/arm64/boot/dts/qcom/sm8650.dtsi    | 94 +++++++++++++++++++++++++++++++++
>  4 files changed, 109 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
> index d0912735b54e5090f9f213c2c9341e03effbbbff..69db971d9d2d32cdee7bb1c3093c7849b94798a0 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
> @@ -894,6 +894,11 @@ &ipa {
>  	status = "okay";
>  };
>  
> +&iris {
> +	firmware-name = "qcom/vpu/vpu33_p4.mbn";

You shouldn't need to specify this, it matches the default one.

> +	status = "okay";
> +};
> +
>  &gpu {
>  	status = "okay";
>  
> diff --git a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
> index 76ef43c10f77d8329ccf0a05c9d590a46372315f..04108235d9bc6f977e9cf1b887b0c89537723387 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
> @@ -585,6 +585,11 @@ vreg_l7n_3p3: ldo7 {
>  	};
>  };
>  
> +&iris {
> +	firmware-name = "qcom/vpu/vpu33_p4.mbn";
> +	status = "okay";
> +};
> +
>  &lpass_tlmm {
>  	spkr_1_sd_n_active: spkr-1-sd-n-active-state {
>  		pins = "gpio21";
> diff --git a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
> index 71033fba21b56bc63620dca3e453c14191739675..58bdc6619ac55eda122f3fe6e680e0e61967d019 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
> @@ -824,6 +824,11 @@ &ipa {
>  	status = "okay";
>  };
>  
> +&iris {
> +	firmware-name = "qcom/vpu/vpu33_p4.mbn";
> +	status = "okay";
> +};
> +
>  &gpu {
>  	status = "okay";
>  

-- 
With best wishes
Dmitry

