Return-Path: <devicetree+bounces-217105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8BFB56D4F
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 02:25:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8975E3A34DC
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 00:25:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 224661A0BF1;
	Mon, 15 Sep 2025 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q/VdOuRP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AD03196C7C
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757895953; cv=none; b=axuT3gsX0znvFeMETz52EVfVCGQ3EacH/a6Em72MCfMj5zuEqbZL49BUdxgy8gdUDNNQwfjlpfQVjj0YLbMCq21STvHzsIRyPFwmgyayLq/pFcWbpWPfA+Acwu7voCl8PUPhH8/fbQC7yFQWU/vZO6qNde7E9wjx3GmtsA6qsQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757895953; c=relaxed/simple;
	bh=9JOf/x8+vDjy49a7WWpdGMIbreT3j1CYdjT28WFGevQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dPIlSyolsuU+sYHt+QQLB0lerAYpcwgk4B34O30TqTbv5nKesfPDqT/foGLLVe8pSsvq7wrqS/2W7hNSSJUt78xNZvhd+YDypex6Xbnq/n12LbYWSnWUr18MGGvwMT2RHS4GDV/SKUSLznRQwEDUedGDzLp4odGITc9FTqKVDgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q/VdOuRP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58EMtCfM023565
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:25:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=umfpL2GBjS9X6IOBDeqr9RDX
	8YX0yJCkvFLrjCSzMrU=; b=Q/VdOuRPJ02gOPVvbn9xqZ0rGNTbRnAuiX3RPCqG
	+gpYA/5bpaKpE5nJsUax2nxXhbQo1EVnq8aLw1H7Ssxi2OpBc3gmCJhbdzJwFKjo
	Kn6u5gp17nbfSUEaVHS/KQVkngVoLLiYkTJliLTg+EY1s6l19cFtmKHjhlN7GffA
	6RR/h9V+83nmb/aypwZLVrEt7IYRpB4CU5+Sio987VbSL3/4f91fucW+8rl+fQIU
	VHwPxLHxWAT3xxJ0DS4t5dcBIpNsAgFVWLHe6evlHClcV+tqsN4zisnekU2Mbywq
	xklXEPw8U+SE213h3VcjZNzX0A2PbNVR6qom4bnvDLjKGg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 494wyr36fm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:25:50 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b7a2999d38so9632181cf.3
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 17:25:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757895950; x=1758500750;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=umfpL2GBjS9X6IOBDeqr9RDX8YX0yJCkvFLrjCSzMrU=;
        b=xMuSYPkriQBNud8Ytm0Ruh6PxXigUqWYcGeN2Hlga4UFsPuaV0WzT9IGbcOxzlwG0e
         feH9Vm6mXe3oGupmZWdjfuSudTYGxRwijisk6KfGcjPsJj6ywqoCHhu8ZrXD2y+OD8H2
         gXTiQli+bvAFFmAVLg3e1qcZIM6BnalA+qL6ITCdhSJncGU0Vl5CVk+RWGSh7ujMvRZB
         rIpdGgG6T/QbbBAEjtnqPbGA2Eprn3nsvXKNDosLhyXfYbrIo31x5hnv0MlJGq5SM5+O
         ycprZ8EUvUhhjF8Ut5mdcw/eEDQzqX9TnS9VGmyCZ3/zx1OxvjcbAbdox7k8hNiphUqh
         LNZA==
X-Forwarded-Encrypted: i=1; AJvYcCVZXiAM3kVs8EHipf1FslNju0cDWWXkbhOMkICRT2Kz9es2vF4X8qfqaLjjmGP71QzJE362RWY1talR@vger.kernel.org
X-Gm-Message-State: AOJu0YxLcMJ/650IwBMM5YXdoJ2W0GllXguu5VNFZIvUGvUaWAWaw2fS
	XPht0nxe7T+BaDfEiLA/TrsjLWJVLcquEaUABLCUUwFBWNIhB3w3mZz3AexLbRUCVNDy16YCnvu
	lVn18IGZHzDyiM4kBFWJ2Of+gAV+Tvc1pJYxxVPDF5B+wGVZEpFu6TvTB+Qi/Jd9o
X-Gm-Gg: ASbGncta0C7SdGLF9H+y9wS2lh8BJKoa0rwOubHVh1jj3t8fO1wHgAd15rrw9tOLOlg
	KAjvG0TNJM2mYvzry3g1vhMONNjIaOehyFSuYSLw+t4Ce9fycVoHrmUsV/vrkMrLNA8mdzs6vfE
	p4bx3p/DMzUWVqqabYG+L5sE2nshNAmu/XEj2CzMcF8K75Zp+kYOS7IuHIXfLGff+zvuDgjYUtP
	BAlmAJrsN66UVKRYYIRUW9oTu8+/OqmRQjk1OY0ME+3RPBkPpW/nZ4JcRdAGwMAXThbGYeVEacJ
	tiJB7motmwcOZcxKvCepCzIDPQFXXxOOfp14Idxfjo/sb+ffNkdD0sHuT4kEwp4wPeENvWjUkLw
	vPu/SyhVFn2sYcTW8cBv8RejI5cYLG4uOOyifG4eHJefrvGGADsYj
X-Received: by 2002:ac8:7d92:0:b0:4b7:a709:fd37 with SMTP id d75a77b69052e-4b7a70a011dmr16759451cf.2.1757895949593;
        Sun, 14 Sep 2025 17:25:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSFctYddLyvI4rFUAowjI9dGidDYhUfC2/597iRwVg8EfqOz4vn10TnEsSVnUIZT+CZiziHQ==
X-Received: by 2002:ac8:7d92:0:b0:4b7:a709:fd37 with SMTP id d75a77b69052e-4b7a70a011dmr16759161cf.2.1757895949113;
        Sun, 14 Sep 2025 17:25:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e661dbc29sm3255796e87.147.2025.09.14.17.25.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 17:25:48 -0700 (PDT)
Date: Mon, 15 Sep 2025 03:25:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Paul Sajna <sajattack@postmarketos.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
Subject: Re: [PATCH 04/11] arm64: dts: qcom: sdm845-lg-common: Add camera
 flash
Message-ID: <hzqsdhqvgw2cp4xnxocyddhz246ovicwaml2n3qqdooohscyis@3uo2qjlrapr7>
References: <20250913-judyln-dts-v1-0-23b4b7790dce@postmarketos.org>
 <20250913-judyln-dts-v1-4-23b4b7790dce@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250913-judyln-dts-v1-4-23b4b7790dce@postmarketos.org>
X-Proofpoint-ORIG-GUID: dZIJcxnfsfD3p7Qq9xqcuCUj2eZ32pce
X-Authority-Analysis: v=2.4 cv=SouQ6OO0 c=1 sm=1 tr=0 ts=68c75d0e cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=sfOm8-O8AAAA:8 a=Gbw9aFdXAAAA:8 a=INp5xvtxXxILuIktMPQA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=TvTJqdcANYtsRzA46cdi:22
 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAwMCBTYWx0ZWRfX04+9rNMJqSE2
 XrMGKP/2hRdur5E5viJ2byCF4kd6YU3HYo4HWPz/BHcSCLOhSH1pRAGTN8xhH5hxIFFrbLWCtnk
 wGcLbeqa5R/dGxuUAlgtlEh6zD4MgdtsE7EEGll6y1QMDHgvL2zXvdukOfxFzlFesRpOafDTrHS
 ez3QDMRPNXEHEUA9GTQYlPJrDlproGy47h4KFo6HQ8cmso17oypNT7RC7WHuYFAbMmDWVpxExqK
 UiNzTrETCTBPVRPrfc+tFJb7RiUaDBXqbHdbtabJouaLgzXs+L5eH0EXvmx0lMcwkJXmTCpFkGM
 uPOB1eyjR7g5zGfQVblyerH6FrqFpC2kZl2HGjbulQpvYv4K9Ygu6XM8elLychJNmvp1KbQng7u
 spBQhU7s
X-Proofpoint-GUID: dZIJcxnfsfD3p7Qq9xqcuCUj2eZ32pce
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-14_08,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 adultscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130000

On Sat, Sep 13, 2025 at 04:56:37PM -0700, Paul Sajna wrote:
> Add the camera flash so it can be used as a flashlight
> 
> Co-authored-by: Amir Dahan <system64fumo@protonmail.com>
> Signed-off-by: Amir Dahan <system64fumo@protonmail.com>
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> index d6129ce03f537f0c8c78c2ae5f39be6146cab7dc..df826bca2bef5e3f85cf49708020a47b8d6bd8bb 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> @@ -604,6 +604,20 @@ vol_up_pin_a: vol-up-active-state {
>  	};
>  };
>  
> +&pmi8998_flash {
> +	status = "okay";
> +
> +	led-0 {
> +		label = "flash";

Not allowed, please drop.

> +		function = LED_FUNCTION_FLASH;
> +		color = <LED_COLOR_ID_WHITE>;
> +		led-sources = <1>;
> +		led-max-microamp = <850000>;
> +		flash-max-microamp = <850000>;
> +		flash-max-timeout-us = <500000>;
> +	};
> +};
> +
>  &pmi8998_lpg {
>  	status = "okay";
>  
> 
> -- 
> 2.51.0
> 

-- 
With best wishes
Dmitry

