Return-Path: <devicetree+bounces-217101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E853DB56D3F
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 02:20:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 40AE77AC693
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 00:18:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 928C417A303;
	Mon, 15 Sep 2025 00:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GPInVoiF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152298462
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757895595; cv=none; b=a12maE336A6ccvNkgX/JUVDNVUeWi0E7IZos4MMdmfwSJKNYgSgsQeZihmkZT7+Lfqsuw3VDhbQgGRSTn/FaGOMEyJFIegL+8/Q10nydVfJXUr1aNZzOOQTJ+mnBbQRY+hK2vx4UhRpCYWni6R8dGpdsp1YvpJ1yTsFJUdtLPpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757895595; c=relaxed/simple;
	bh=Mt0agHXYjcgJbC62txGxd9j3OcLaiV9jsFfBZlS07lk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o40KXPdqftUanHOixwECbu/6XeMarqg+Swu4rDzVQY8qfAR2bQfy18n/36/hcOgkCfjTKupijMISzmQ3cbBJt24WyvtfBwi67UPphhwa/m5M65//gQRgKnq2PF/IRnJ3jtCebElKmhKeFi9V1kcp3K2V+qFY2khWUSvvY8Ylpmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GPInVoiF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58EL0RwD027849
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:19:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=p6RUAlaocnqnR7wsuVRgu77e
	RMC9aNnV4DXxPUYw8Hw=; b=GPInVoiFYQo2OarqZGwbhvWQaGWsLSYZOl4meVGs
	28ZgxCyb1L5B+upgUtVCAjNW0FLH415LGRVTsolIk1wybeoBT0PPXUNL+0rlISCH
	FIWZYWCYvcjLywfZkwsxxNu375rXKpJ+ban/cxZagC9G7QHJ3+SDdac+y/oxdJPo
	Ixo0bQ0lB74G3wX1sDHkcb3gebvJZbTRrww9BbQfs9/OCBQ0s9MHRrVIgaV3VIPN
	/0IskUzMHpZPR6tbEbGqSuPbrjeg6INOUlwFDlm7qtMxYxvHpfAdbWne+12coDGa
	1tscG+ldHfFEMypEXxARNKd9KaiSkIT5UMsqbyozkIYXrg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4950u52x2m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:19:53 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-827061b4ca9so254110885a.3
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 17:19:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757895592; x=1758500392;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p6RUAlaocnqnR7wsuVRgu77eRMC9aNnV4DXxPUYw8Hw=;
        b=anb5y/Eq9DQA/Pm5QDMAbE8l8AOZgGEQoMkXJoxcFDSufKuPB1TtyxWk15EAkfmwSN
         iKKdMExpakArdOb7+a788YA7Jgkhxr7DoG0aF6UhHZso8/u0wafMzcpArn8LUP1ZMHVN
         bqoMdaxbPzqlkPAvxAttidLTMeDh0VNsXy0sw3Kr0oHgC/3OiT/wlXpSz3U7H0mASVEC
         Qmk3TUlpk2wtbRb5sYf6s/xaW87JIwRH31GXxHgIzpbV2VZ0RijgpXqWdKrGhbV1+oXA
         ndrSxfiQWqPlQS4OsvF2jSSE2t+ZU4bjYrn+5Jfznzv1lHQnpHntv0uppN1sA2GT72Na
         K+NA==
X-Forwarded-Encrypted: i=1; AJvYcCVr0O+Zk3pGDiH3yVwu7deOyNDZQIbQWGV0XGmURw/0OKarT0FWhlpDIbI4iVGpDiZMlnxaPF2V9me3@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/Lmr4hAJIi9EPAZkIwuPxRkuMzLtAvFrBW5B2BJ6aOKlDGZ+t
	1Ouf9v79tp1Dr+5Jjq9eMyG74cPjZjc3RYCrnjo3x2F47lFKMTv7HCr2Npw2KfdEyFB3K7f0/X/
	1SJI0+KUJNHCPXYoBGVN3BlwMDsNco/WoS4b9SoUzl81/JwGJtBZDrIBKnMesVRJp
X-Gm-Gg: ASbGncuzUP1OymX8k7Mtw6tO3QjhZ10od3cj+hDG6La1hC7fqAdghT8IHFX160TfWaJ
	+HiWjh898L8RryAKiafR+7W9/QTLTeBV/IjTtjEIwlBCRq/vEiPufE4fbvEpXQGHzIeFS1p1cEx
	aq7y9td7jQW63vsaKfdIwbBdtOTgHvHwK5WVSLOxGpB1LjMWgkklRMHr1TNM/wTxvm8lHzJk1dh
	0rwX9zm065zWhHGprrNnvFA6Bn5cPmGxNAiSc34BePzZzPsgwQUtlJDIKQjnAaROdGd4/hWl8z0
	WtMFCZYAsJzGoc2J536r9rNuEBVkwLYZwmCJtJyq+QXizB/OzA1RBsbgspJjEjE3M8gYxolLadF
	o/snA92r2njwjnSonuBJtJdLtqJQWTL+D5d1AgHyiDAOGf08DGefp
X-Received: by 2002:a05:622a:4ac6:b0:4b7:9c5e:84ad with SMTP id d75a77b69052e-4b79c5e87d4mr42864581cf.15.1757895591845;
        Sun, 14 Sep 2025 17:19:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFCj4N70HdgyI43enSOIyoMIAg7MrsmXC9QaxOnHUaJ1JBgSkPZ0ERy+ZvYMZzZpA1N70rzng==
X-Received: by 2002:a05:622a:4ac6:b0:4b7:9c5e:84ad with SMTP id d75a77b69052e-4b79c5e87d4mr42864371cf.15.1757895591374;
        Sun, 14 Sep 2025 17:19:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f163f400esm25360971fa.23.2025.09.14.17.19.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 17:19:50 -0700 (PDT)
Date: Mon, 15 Sep 2025 03:19:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Paul Sajna <sajattack@postmarketos.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
Subject: Re: [PATCH 01/11] arm64: dts: qcom: sdm845-lg-common: Add uarts and
 Bluetooth
Message-ID: <djduil6xb65qxmjp5qrxliskjii2nbijnd4w4rwsz4d7nmpo4f@crut3ib4hu6y>
References: <20250913-judyln-dts-v1-0-23b4b7790dce@postmarketos.org>
 <20250913-judyln-dts-v1-1-23b4b7790dce@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250913-judyln-dts-v1-1-23b4b7790dce@postmarketos.org>
X-Proofpoint-GUID: uYMYk0lMpOhh0BycX-ogNm1eAfHBhCxM
X-Proofpoint-ORIG-GUID: uYMYk0lMpOhh0BycX-ogNm1eAfHBhCxM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAzMSBTYWx0ZWRfXzkYoSIVlK2G7
 /z/kqACAWFGoXfLp8i1Uvrin5i3fgYNN89DE6H/khAof3zt5COgTjYnPyCP9dxy0FrB33wE0gI7
 DVX+VxMgZepFRiMYPFWwRRqPsJNEt1zHOYbzdgIZ+xXhZEl6MGsX/ds8g8bePLeEjtN2Fu4bSJr
 XosiK6yGfxQBRboosTDoSdWtdtoj8tAr2MAa4BmnX3/9VXMv670YzxbIZuRgewBf6sVWod0NKzA
 pDFYa1lJSHWY+qmBrLaDugwl0XZfy0e9hqe+7ETrEGTt03wXN9rf64wvhftoywN1LbK9/dSGD5a
 IGG+tGFVCe+mSrJUWdNeV3jSVG2ZSDK1LfR0fIhmJX46wNWno8eL+GkOwgWKWsihBM660e+J3u0
 eeQBdKId
X-Authority-Analysis: v=2.4 cv=JvzxrN4C c=1 sm=1 tr=0 ts=68c75ba9 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=Gbw9aFdXAAAA:8 a=zNG7vcL9-tlF-_c_ef4A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-14_08,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 spamscore=0 adultscore=0 malwarescore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130031

On Sat, Sep 13, 2025 at 04:56:34PM -0700, Paul Sajna wrote:
> uart9 is debug serial on USB SBU1/2
> uart6 is bluetooth
> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 47 ++++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts  | 10 ++++++
>  2 files changed, 57 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> index 99dafc6716e76e25aad0755e6004dc952779689f..1acc418b943443f3ba4f8a8a1cfe2c575da11876 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> @@ -31,6 +31,8 @@ chosen {
>  		#address-cells = <2>;
>  		#size-cells = <2>;
>  		ranges;
> +
> +		stdout-path = "serial0:115200n8";
>  	};
>  
>  	reserved-memory {
> @@ -159,6 +161,11 @@ vreg_s4a_1p8: pm8998-smps4-regulator {
>  
>  		vin-supply = <&vph_pwr>;
>  	};
> +
> +	aliases {

Please keep the file sorted. 'aliases' < 'chosen', etc.

> +		serial0 = &uart9;
> +		serial1 = &uart6;
> +	};
>  };
>  
>  &adsp_pas {
> @@ -595,3 +602,43 @@ vol_up_pin_a: vol-up-active-state {
>  		qcom,drive-strength = <PMIC_GPIO_STRENGTH_NO>;
>  	};
>  };
> +
> +&qupv3_id_0 {
> +	status = "okay";
> +};
> +
> +&qupv3_id_1 {
> +	status = "okay";
> +};
> +
> +&qup_uart9_rx {
> +	drive-strength = <2>;
> +	bias-pull-up;
> +};
> +
> +&qup_uart9_tx {
> +	drive-strength = <2>;
> +	bias-disable;
> +};
> +
> +&uart6 {
> +	pinctrl-0 = <&qup_uart6_4pin>;
> +
> +	status = "okay";
> +
> +	bluetooth {
> +		compatible = "qcom,wcn3990-bt";
> +
> +		vddio-supply = <&vreg_s4a_1p8>;
> +		vddxo-supply = <&vreg_l7a_1p8>;
> +		vddrf-supply = <&vreg_l17a_1p3>;
> +		vddch0-supply = <&vreg_l25a_3p3>;
> +		max-speed = <3200000>;
> +	};
> +};
> +
> +&uart9 {
> +	label = "LS-UART1";
> +
> +	status = "okay";
> +};
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> index a12723310c8b630a4961de671ea8b60f1f8b512b..49225e4fa80e5f45a36964d5d733dc238e4413f8 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> @@ -66,3 +66,13 @@ thinq_key_default: thinq-key-default-state {
>  		bias-pull-up;
>  	};
>  };
> +
> +&uart6 {
> +	bluetooth {
> +		/*
> +		 * This path is relative to the qca/
> +		 * subdir under lib/firmware.

Why do you need a special NV file? Please include BT information into
the commit message. Also, if qca_read_fw_board_id() returns a sensible
information on this board, it would be better to fix btqca driver to
apply board ID on WCN399x boards too.

> +		 */
> +		firmware-name = "judyln/crnv21.bin";
> +	};
> +};
> 
> -- 
> 2.51.0
> 

-- 
With best wishes
Dmitry

