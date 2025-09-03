Return-Path: <devicetree+bounces-212166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D891AB41EA8
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 14:17:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5BE357A6756
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 12:15:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 656282D4B5E;
	Wed,  3 Sep 2025 12:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KYU+xiYt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94A3F2C15A3
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 12:17:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756901823; cv=none; b=mPXxEFRayUujPZaK8Xpxh21hbHP+76/MZ2CVOlz/w6jkD4EwAYhdHTHOR2VfeChYTgDPAJmP1Ms++UI8eBZHJofk2r0k76HwngArLfASJal5D20YVwM3+Ch0SdjPIG04VjpFaFENj0sjniHvWOwFAxOQhuLPpXrf0wXf9+VP2Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756901823; c=relaxed/simple;
	bh=T9zMBVSfXXkcPKE4WZiFLlE4rfzCAascmEHlP0GQHuc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FsuH+1DBRdquZuHi62S62Sz/e/DNIlrrTre8w9OTE3ObiFQj66nJ5V9QstyGXgf21sme816/zIGF6sHxMrdvzun2H/FlXLw/QRWFbyn+OhioMKGZAqi5Ltts3OHPLlvXXLrONOtdZRrZSW/Yo/8CqSibFBjuhjL/zVRx5lPiqVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KYU+xiYt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BFPO9011462
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 12:17:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ylMxvgn2/5WfIAh5ue+ghLhJ
	nilgf124w34Bfp/g+Q0=; b=KYU+xiYtbGF16ZrnYQ30qSyxDrDHePo4wS4BDehd
	xZDa7FuTtBmztCwX2/BxLelgs45bcCSAdA9j42JfwuSLoG+3ivRmYQB/HjkJ9Ohw
	8oTsN1MEN8qm7wn9Y6qbX/JpDM9S3myjJzAzJCurU/iAqH9TbTI/wIVhfvC4dfke
	FSNwgdcwi39udkw7U9+6Nk2FpYj7vhBK5ooRoy6kXtrIvHDJYTDV5hYdIhstXQTZ
	jw78iRxKqKTRKZk9gzjbpC+43PhVF6MpICFQjkZG6jQHsmnK3gsuLVKp8+CHyHvU
	swMRUtp9telc5Ol7FfWNZVUdkkHhD9Qh2+nJASDzg7YOrw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmjkht3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 12:17:00 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b32fe42b83so55418611cf.0
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 05:17:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756901820; x=1757506620;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ylMxvgn2/5WfIAh5ue+ghLhJnilgf124w34Bfp/g+Q0=;
        b=OHZGo/ia99QAOWpwd6NdqsKtcXudWfFphgMScBqUN8KbbasrF0tIDHdIAHqqrY40X4
         8Aew4RIHLPKksaccE9D4xiuDIAlfwvJg5nHnTktDIZyQ1I77h7TlkWVHBTR7Gn/+Gy5x
         bhtumShXhkx+ISVfpczly/eYdqCJn8zhybDVRvTosFuwaZbOxiueFOUKpWJd3WDfr6F6
         kDhUJ007pU0WKdmRTapXWyoAOYvZ0mo62mPU1rcUMQl7L6n7+iYyGJYYlk+p+eN0EICa
         DnEsbqtR4kZndmBj2Vkbc3DXFkWuGA7O66ZgA4SQMt4xk0VoDieiBeOIztsgdgglPlTp
         lF2A==
X-Forwarded-Encrypted: i=1; AJvYcCUR6h7h6P7C4pXT0jXcUFYfdD4iIhx/6rI5ty1+Qt04Dh6T9hMJRSefo/00fuJANYzgiEd+L3VRAwC4@vger.kernel.org
X-Gm-Message-State: AOJu0Ywh+6CDUVye4Sb/i91wGwOrq6PD3q/pPkzsuGBN6dGvVLuYsZTq
	oPm/7ndWCbVgvmabAdFKIHZ+pZqYCP9qMA4aLFp6c6VesUOVBGifpTvmEWVuhvsbEJ19CDIJ9bM
	NZ1s1FKiY0Ry8lCx+CnDkWX34Sa9bTpeYqB3iyDR0yyfkW/d1YUQYtWz6X9DqzZn9
X-Gm-Gg: ASbGncseT5PVCYclHznWpQ7aniivhEjILqVsG9AIb6/qRp/yCyNDx2W+zwTHrntNx80
	wWjANa7HdHVk0fSMWYviksqL6ioXjQgF1yBWEWKqItmd3Fl/q3TgSoW/xi7s982waoIeot+MKK/
	m0qaE4Ezs2eNts4qszB49CfswsYqEUC5+4x0DTKp4QzHl2hz4lCn+XbGByTawMzKmvZrVLPi41d
	E+yMObtBAtKnzcMvpklYoJESKJmfeYkP2IrzjcH9DxgD92zqmFx2SFAogczyYaRj5N+dazDQ8zK
	y8ed1FNvo2fLNB5MixUQCXZ+lPy4NQHAbCEmNAcp58bgEl96ypM52TcsGzmdKXak1Rz/sBNNDyn
	yUOyXSSPli6AF6W1cbWfziSzg7k4aTxrzL1NNJQyvkl7hHlsh2GLx
X-Received: by 2002:a05:622a:1898:b0:4af:af49:977f with SMTP id d75a77b69052e-4b31d843106mr158036081cf.30.1756901819543;
        Wed, 03 Sep 2025 05:16:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFf1JntwKpKDnqktzqn0jP9DtdNKaSUHktaQ51gxNmKUeO36CmdMwvJ8YX8+atEfF8/F8jfpw==
X-Received: by 2002:a05:622a:1898:b0:4af:af49:977f with SMTP id d75a77b69052e-4b31d843106mr158035581cf.30.1756901818930;
        Wed, 03 Sep 2025 05:16:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ace9c89sm482916e87.91.2025.09.03.05.16.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 05:16:56 -0700 (PDT)
Date: Wed, 3 Sep 2025 15:16:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Subject: Re: [PATCH v2 05/13] arm64: dts: qcom: lemans-evk: Enable GPI DMA
 and QUPv3 controllers
Message-ID: <olv66qntttvpj7iinsug7accikhexxrjgtqvd5eijhxouokxgy@un3q7mkzs7yj>
References: <20250903-lemans-evk-bu-v2-0-bfa381bf8ba2@oss.qualcomm.com>
 <20250903-lemans-evk-bu-v2-5-bfa381bf8ba2@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250903-lemans-evk-bu-v2-5-bfa381bf8ba2@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68b831bc cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=DESvhSBXdVqio9EQXHkA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: BZzNH23-fLvSi04EhRB3onDyKxPV8rLw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfX85vDr4GgtTne
 sIFkACbXZ89lA7CXKdnL+Nm8KjwZKwoVJHEsl66/6HksmTVe6rDNBfGOEdegzNFJERBc8Ao9m7x
 7nt8UVyUYKQBPTKwK6J9BOtahpv2txx3Lw7pEtoZuSB00m+sfTQ6mfeqVerMpBUPaOBwpwjYfkR
 7SCXu9DzNX0uLLesHOol4+Zn0v8rFDkXDEJOyjpMKdm6QF//U0kD/gynvuqVic7eDRwgjK26S15
 07OwLZ13mbBFDQf4Qm1xj7IMaWsGedoqo8PrcjFlO7g2fIfA/44O/V5zU8vtDgHCfG2DJ+DksLY
 qGtDKjsJUPz3ZcrYFxdRLHfgxuL7K8EAZAUhk56Z058+lnDE+qZ1SCR+rTbYpFrroaKtqHwtu7B
 9JJjOeS7
X-Proofpoint-ORIG-GUID: BZzNH23-fLvSi04EhRB3onDyKxPV8rLw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024

On Wed, Sep 03, 2025 at 05:17:06PM +0530, Wasim Nazir wrote:
> From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> 
> Enable GPI DMA controllers (gpi_dma0, gpi_dma1, gpi_dma2) and QUPv3
> interfaces (qupv3_id_0, qupv3_id_2) in the device tree to support
> DMA and peripheral communication on the Lemans EVK platform.
> 
> Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> index c60629c3369e..196c5ee0dd34 100644
> --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> @@ -277,6 +277,18 @@ vreg_l8e: ldo8 {
>  	};
>  };
>  
> +&gpi_dma0 {
> +	status = "okay";
> +};
> +
> +&gpi_dma1 {
> +	status = "okay";
> +};
> +
> +&gpi_dma2 {
> +	status = "okay";
> +};
> +
>  &i2c18 {
>  	status = "okay";
>  
> @@ -367,10 +379,18 @@ &mdss0_dp1_phy {
>  	status = "okay";
>  };
>  
> +&qupv3_id_0 {
> +	status = "okay";
> +};
> +
>  &qupv3_id_1 {
>  	status = "okay";
>  };
>  
> +&qupv3_id_2 {
> +	status = "okay";
> +};

You've added i2c18 device in patch 1, but it could not be enabled before
this one because it's a part of QUP2.

> +
>  &sleep_clk {
>  	clock-frequency = <32768>;
>  };
> 
> -- 
> 2.51.0
> 

-- 
With best wishes
Dmitry

