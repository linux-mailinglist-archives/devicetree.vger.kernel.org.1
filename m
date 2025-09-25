Return-Path: <devicetree+bounces-221646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 517CEBA1823
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 23:19:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 78FD41C81B43
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 21:17:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86F8E2E8B6B;
	Thu, 25 Sep 2025 21:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cTFdw3tn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB696321296
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758835009; cv=none; b=E3h6sEkoO6Y7BkdB4IzzeSFQ89X8QRmHdj96YsvawOw6CSW5B9reX1ip2eYQiPTEP+3Uj7bmsPjJJs2dfm1I9WJvfGF0DjvFSVTt4IaGH+yA3NqJxTs9SvS1sBIY5iExsq4IJJCat/BDfSahxLp7oGSB+TnHo46PMqtgays+o/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758835009; c=relaxed/simple;
	bh=RglpZ36kxS+z5qVy144dZ5rbhB8eMHcCR9GOuwDPVBQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e0TvobztcmG6v/smDL4nNAT8qIbnMa0SJf3andOBsP659cHMqJgdRMzi/JkefeuwJNDywGUhbAnYLjM+wQcyowLykIhYNosuCEu2j6rABBUJvcDwl+WA3B8uSdAnne+AEQDgCbfvMvZDhCESvOnG8mUVxtaEBJ5g29J709NNGkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cTFdw3tn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIUiXH024702
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:16:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=at38ec/t9CkX0+S+1EyG2jd6
	TX3Gl2UwrmZ9Ict3FUc=; b=cTFdw3tncju9PH/vdqLZIZXQrSnVtqlvO9+fDXbk
	8G1MjF6OOFZNwsYzcDzmmYjvZQNDNr95wFLkLYmFEWKztLtJukCFoUo6Dg5bsFdf
	zbzvdMFUb8YKCP2qsXHPj7WRgXJKs44XOqkFFAJ3ESc+rVOZsMquI8lNdOM+CVYl
	1GDtItPGQfNc4wVzR9FXssXO6L2/Dz5IipdpplscS5XM29jPaq0jPPlRfgvJvQ7j
	bTEP1gdy2s//1HtrvHlzxOMr+LeR8pUK6ZHwTANEGlAPzHWEsKLvQ+OWz7k+61O2
	WuB64iEewSNkgR0GTev7668k8F8Efqk3d5iZwfz73l3R7w==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db34ge3u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:16:46 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4cce66e91e3so47168221cf.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 14:16:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758835006; x=1759439806;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=at38ec/t9CkX0+S+1EyG2jd6TX3Gl2UwrmZ9Ict3FUc=;
        b=A/bIfwoOjBy2p3pWmL0Erro4BOGfo714GJz+MKcxJAkuCrRSlUhHZ93/KFQCY4euBg
         6yGSgB/9ABDW7ZL8/LifLRnyIQxdOJR2BrqsfkWIzAOwcz5V7TvbeqtcWt5Gug2dgwm2
         dUpt2oxMvqdJcQRmz03vMOOMe7S3LPmXKbR3Kgj0YSwEli5kCt1BH05VtQH3BLssOXww
         blLAxAjDYj/cR23BLnj3bohABfXcoy9Z9ZNtqPtJfzh2uO78YyR/v9oA9JRSFiw8ngro
         LWhRQ+Y1IgIUA/i5CMDWgDNoNTNCodp/XpWhQ5LhbUj4gOUfl61pquQSpS74uTqFc2hU
         6ocQ==
X-Forwarded-Encrypted: i=1; AJvYcCWcLh26LYBh4apfs4j3bqboWlUDVgXR9c34OWSmdMbdJWBGM+fEPM60SU2ita/HvZDUCjMJN57j4V4g@vger.kernel.org
X-Gm-Message-State: AOJu0YzwZ8UFT1ppcka6glN9Bml9e55ZcMFT2ikndNO35FtEEuYObD+p
	Bzg6W0bUdViO6wJb6X46S/wxRTifP86IGfmoGF5BalRgiNzXa8wCwistu0LQ1b6Nat/L91bOXzj
	aAoDCZQeM082+PILyqAycSWQ5vmc84zU8BCfUIbqzgJxPp15Fp2FawXHAA+38ADxrCWkNx7rw
X-Gm-Gg: ASbGncsdRqtjrfj70gr9HXPE5vhGVDt6kQ1J2VpaNSYYRMNDEGH8OaK8SlvZ5JkT7dt
	DFFwk40+nx+fEv6EjwOiFr8YoP11RqnTCNRlSUsMNhiS3DCh/jgUTuc/qG8W/TCrMq4m1MW0t5E
	z57QTV6xTuwNgQKtds9e8tJ1dUW/sOn4kFIBARdAp37Bsku8kyejsx3MfOIxHnp+I56giLmWHXb
	F0AzO0Z/gwE7eoLSUVev9YY/GUwbpv3PEdtHjpDwcXhO20B4cCBRGe0N4Vugj8qB3YQU5EojaM+
	U8wZJuMLgsyuSuinoMWzITGzsU3IF2rk58Hb7IMd7dFAlVc+k4PfjAFiPrL0XIM/T64ZeqvWTCy
	OhrOgKUhDMFrILo8obS9wCQek76qNgPpJTk3T7mn7V0ZPBVrOqbLM
X-Received: by 2002:ac8:7dce:0:b0:4d4:4a2e:531a with SMTP id d75a77b69052e-4da48d793d5mr67769651cf.30.1758835005736;
        Thu, 25 Sep 2025 14:16:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF5xlKRssdgPLBp/mVDcyq87qqnlkucZFhvWb7yeGXI6WmTeu/PYEaxkEmHz66PV1TGrfpY7g==
X-Received: by 2002:ac8:7dce:0:b0:4d4:4a2e:531a with SMTP id d75a77b69052e-4da48d793d5mr67769151cf.30.1758835004978;
        Thu, 25 Sep 2025 14:16:44 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313fc1640sm1139215e87.61.2025.09.25.14.16.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 14:16:43 -0700 (PDT)
Date: Fri, 26 Sep 2025 00:16:41 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
Subject: Re: [PATCH v2 04/24] arm64: dts: qcom: glymur: Add QUPv3
 configuration for serial engines
Message-ID: <dmuhltvj5shmysyjmzjhf6q6nvng45odpwbxsi7frmziunxtgq@xppf6cpyqt2r>
References: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v2-4-8e1533a58d2d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925-v3_glymur_introduction-v2-4-8e1533a58d2d@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MiBTYWx0ZWRfX9dWdLK5YEPXP
 AYIc9bXurVqxSSOUSOkaIhSI68QCQhZaWmtwbBbvvnHvGbahQXjYsv94MqLfs9XmDv+QfMoc6n9
 BcB7ZVaCeHlCpcF+xDifblQ0TR3B1RZJcTcMjQsicrmIN+aDXSq0DXE+EPHlGFmZN0UJgkPBmeS
 At8xISvTlus4hEipHzRgQaRX8/92OLaeo5AcUBpKIfOENexz0FuNcTWgsHBtelS5Cbe3IxCLJhg
 oPOqgc63yO/1I4hDRyUSeguwdSfaFG3LlLLXUVZjABdbaToJypkeMJWHZdX04/Eyo4/PVVV09GF
 Bh/nYTOhDjDNx0UGfc6th3KGPRjKA/Kwb8oV3vrUhHyy2oIbohhiMgYZeiSIfTwuNM9uljooucr
 vv28k0A0MR1hfPcaDRgB6wPoKqx/cA==
X-Authority-Analysis: v=2.4 cv=Hb0ZjyE8 c=1 sm=1 tr=0 ts=68d5b13e cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=wkpnFKx4ilImXzAVKykA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: r-y-eGuhwJP5i5Cu18rlhIYORXEGa723
X-Proofpoint-GUID: r-y-eGuhwJP5i5Cu18rlhIYORXEGa723
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_02,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 bulkscore=0 impostorscore=0
 spamscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250172

On Thu, Sep 25, 2025 at 11:58:10AM +0530, Pankaj Patil wrote:
> From: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> 
> Add device tree support for QUPv3 serial engine protocols on Glymur.
> Glymur has 24 QUP serial engines across 3 QUP wrappers, each with
> support of GPI DMA engines.
> 
> Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur-crd.dts |   43 +
>  arch/arm64/boot/dts/qcom/glymur.dtsi    | 3041 +++++++++++++++++++++++++++++--
>  2 files changed, 2936 insertions(+), 148 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> index a1714ec8492961b211ec761f16b39245007533b8..4561c0b87b017cba0a1db8814123a070b37fd434 100644
> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> @@ -13,6 +13,49 @@ / {
>  
>  	aliases {
>  		serial0 = &uart21;
> +		serial1 = &uart14;
> +		i2c0 = &i2c16;
> +		i2c1 = &i2c17;
> +		i2c2 = &i2c18;
> +		i2c3 = &i2c19;
> +		i2c4 = &i2c20;
> +		i2c5 = &i2c22;
> +		i2c6 = &i2c23;
> +		i2c7 = &i2c8;
> +		i2c8 = &i2c9;
> +		i2c9 = &i2c10;
> +		i2c10 = &i2c11;
> +		i2c11 = &i2c12;
> +		i2c12 = &i2c13;
> +		i2c13 = &i2c15;
> +		i2c14 = &i2c0;
> +		i2c15 = &i2c1;
> +		i2c16 = &i2c2;
> +		i2c17 = &i2c3;
> +		i2c18 = &i2c4;
> +		i2c19 = &i2c5;
> +		i2c20 = &i2c6;
> +		spi0 = &spi16;
> +		spi1 = &spi17;
> +		spi2 = &spi18;
> +		spi3 = &spi19;
> +		spi4 = &spi20;
> +		spi5 = &spi22;
> +		spi6 = &spi23;
> +		spi7 = &spi8;
> +		spi8 = &spi9;
> +		spi9 = &spi10;
> +		spi10 = &spi11;
> +		spi11 = &spi12;
> +		spi12 = &spi13;
> +		spi13 = &spi15;
> +		spi14 = &spi0;
> +		spi15 = &spi1;
> +		spi16 = &spi2;
> +		spi17 = &spi3;
> +		spi18 = &spi4;
> +		spi19 = &spi5;
> +		spi20 = &spi6;

This is a very weird numbering. Could you please add a comment,
explaining it?

>  	};
>  
>  	chosen {
-- 
With best wishes
Dmitry

