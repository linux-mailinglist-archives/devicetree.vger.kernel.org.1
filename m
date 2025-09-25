Return-Path: <devicetree+bounces-221343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 47654B9EAA0
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:31:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 057A11BC772A
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:31:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB06D2EACF3;
	Thu, 25 Sep 2025 10:31:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jaVnSH9T"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154A7279DCD
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:31:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758796270; cv=none; b=oRmRpfveCUTggliHpdiY/Oku/5EPhvVqWsk0t6uhV3bL4K+s/RWKwlVY6qLJRW95GabP8XOuXAhakOryzAPYEhHmRWaV2056zv/lB+ABNxANUZszYrX2EK7+/Ibf7gSfTAzMcdWWieFETDx8N7rYq0zHKmdz2WUzKvLCmVXLe0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758796270; c=relaxed/simple;
	bh=wisyOsT1C1Ryv/jHBjcqfX3RaZbeaqQn0I1N4fwU0kk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZKvVSn/rrh5nnATpf0f9hUYQed6Kl9HPfHZa2x05KsRq0dBwED3jCicoqcZl4BwT4mnpqMTC4iXH/jyyj0PAhDCyE4r4wqjCQZmPovsCbkY4HJEIZDZ191Fj9NrqaJ3K80OQe8JQG+HFXyJ8V5yfLNb3mqLm8S4SJf2yNoI2chI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jaVnSH9T; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9Poxu018025
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:31:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9va7HlxAnrOb0SWBv/l/eGsyAXzytQ6OTnJXw6Kj/CY=; b=jaVnSH9TL+MauIXV
	ZdEuaaEKl/EaHg+c5k1FktyhOXnSiJA0uyQ/66lSPjIrXw3LVTJiC6l28RHPbgMR
	k9UlMih3XkiqH2Z3lw/+UAYFi3lKaXuAgJE0eNckpBRRbmf+QiQxzEEcO6Q7urEt
	bAJjYcthxJmeidWyZt5gkL8pnz8A83Jp3cuzpC7E02hI+J0PROhScuV5oPkVgc0n
	cC73cS2oaGsGZ4LZDMunMo1SPywKR4rEQfo3LJO35Ew4Z6IjO3bEwYSw5pbthYRF
	Y3XA6xodR4UhOK6YOO8vjnMkOVRr6YVIzZVPjRCV4HfsVF8sKmGGqmcI9JLp52OK
	81wChQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kkbqdw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:31:07 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-850dfe24644so34605085a.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:31:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758796267; x=1759401067;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9va7HlxAnrOb0SWBv/l/eGsyAXzytQ6OTnJXw6Kj/CY=;
        b=vBL+zcMrab+v4IbHsKG0+g6ojd74QBd7416zcdm6Dp+Zp5ErxO/Cziav0SAuJB8lHM
         4BW6FZl1bg49F7/9KvApgyESBza8NxXvGNwBnHt2A8ZBB4cW06GiUiZOoQ8+R4OMsR5J
         KkgoKgr1f1JZKIvJARTCiyNtNr3tAO+Z0IK0slbRtejLF3NllCTXsROJJV+m/9QQX/wS
         JArxI0S/tHumv2u8U1sKxnSEJrq0TxikkheCbSlUfY/HpIXwcK+eubucNPnmifNjxXDI
         XAP45FuOWFJokn+vC1gOxBM1Wp/+7jbQw/QjD+2mx1MzB2NbF7BTzKdPPPhqECl2tUJV
         sVOg==
X-Forwarded-Encrypted: i=1; AJvYcCWjQF2W3GczGy88+pxCL0kM+1jqY00P+15g8nJfQsY2CLYTOd7xSkprlelumB4jASNSNQmosZYwUE7c@vger.kernel.org
X-Gm-Message-State: AOJu0Yzc9/jDlnQhzZHgmTVErkUh7/9yvAqOfKgEhqMn89vENnorIju0
	UoW9W4c6/Lr6beVWLAvzg8obXA5JxZTOfgveiewXI2hNGFyLkIM9eD91lSz+FOjxbk29UMGrZFy
	fy1a3EmD9ny3k2s+mGZZnmwAYCO1Xwm8batswme+0oX+U8ShkR4JxkcXLOFUq3mzujndnsZ93
X-Gm-Gg: ASbGnctstl0y8bkchR6zeevCSlYd9MkQdOLu9XZv2ZR2Cy891Oq5+uQ8pvPP5cZn3VD
	HZrxVD/cIjYkccbG6b6pl9jOulPmd+0aJ9wwlr5AUjPTvfbMuq7qPV7e9wKtoHmzHwWx+nVC65w
	aYM+SZDbt8h9EOGQZIqvMLgh6WPg55x+/YcTJGFLdmWHWX9ZtMvg3KWTebGTss2Wr6grJ+FaDRO
	5z7nd8pOrWo6lquikj6kt2BCn5oSJcuz9B+vUiqiwHpTI4+DxdbNQ+8eKFpWK/IiatXTv9Z32hm
	kvHyLRGCDyP64/eCc7OBZczquuSahHivMUb4qn3fKiDeeC5mt7EMcmifwj/M2pkbDFllGT8xCgD
	fZMuRR+6bDILR4ibUuJB4og==
X-Received: by 2002:ac8:5fca:0:b0:4d8:8b29:228a with SMTP id d75a77b69052e-4da473524bcmr32387241cf.3.1758796266739;
        Thu, 25 Sep 2025 03:31:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEbCw5K8UPnmPioSAh+xplsbtqWhDI7k96Pzm8sTdNmD7qW/cWHlOH1L3fL1u8UsI42cuBtHQ==
X-Received: by 2002:ac8:5fca:0:b0:4d8:8b29:228a with SMTP id d75a77b69052e-4da473524bcmr32386991cf.3.1758796266217;
        Thu, 25 Sep 2025 03:31:06 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b367b79d1b2sm38869366b.10.2025.09.25.03.31.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 03:31:05 -0700 (PDT)
Message-ID: <333dc302-aee1-41a6-8cc7-f0315f3b2169@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:31:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/24] arm64: dts: qcom: glymur: Add SPMI PMIC arbiter
 device
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-10-24b601bbecc0@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-10-24b601bbecc0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: a4aboJOUfbTwzlgNNxOSR4iigR5pix6k
X-Proofpoint-ORIG-GUID: a4aboJOUfbTwzlgNNxOSR4iigR5pix6k
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfX0hTZrDuk+hB/
 2y62ol7c8qK6Fnb4CvsCJFyjZGgiqkjIftYuNIX/1YCYxre3/FYMR3pzG5LXnVvNvHS1zsuBH2y
 3t+oZt98KqYrlG2BN9mPUuzjoROAx3Y3pGed3KgUnaiag5Bz36TujP+DB3LtJvWz3sJJ7HIEnDk
 uKSDixJIxmrhpdGmeM1Ry66X5RaZMEHgmpt9J9ILp02/KpwDNoCpJ6Cb8G0+z4aJcSI46YiHeEh
 skYg1TGAcxlbPYxp+mPQG5iX56n39uzkVw/T6of0Fv6xiQoDvEcMSxRPSv+TXVUWZT2szD7YBsO
 DBjcoda+fkronmf/8aXGSULwOs1Gfq6Ue1Ej40sAMteFyDl5KpdGy+yOIfWdFAi9YVYH1OeWL1d
 Qe8HeOr9
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d519eb cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=uVuLLN3hS0IF7mqGKV8A:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089

On 9/25/25 8:32 AM, Pankaj Patil wrote:
> From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> 
> Add spmi-pmic-arb device for the SPMI PMIC arbiter found on
> Glymur. It has three subnodes corresponding to the SPMI0,
> SPMI1 & SPMI2 bus controllers.
> 
> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur.dtsi | 62 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 62 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> index 2632ef381687c2392f8fad0294901e33887ac4d3..e6e001485747785fd29c606773cba7793bbd2a5c 100644
> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> @@ -2600,6 +2600,68 @@ sram@c30f000 {
>  			reg = <0x0 0x0c30f000 0x0 0x400>;
>  		};
>  
> +		pmic_arbiter: arbiter@c400000 {

Is this label going to be used?

> +			compatible = "qcom,glymur-spmi-pmic-arb";
> +			reg = <0x0 0x0c400000 0x0 0x00003000>,
> +			      <0x0 0x0c900000 0x0 0x00400000>,
> +			      <0x0 0x0c4c0000 0x0 0x00400000>,
> +			      <0x0 0x0c403000 0x0 0x00008000>;

Drop the padding from the size fields, please

Konrad

> +			reg-names = "core",
> +				    "chnls",
> +				    "obsrvr",
> +				    "chnl_map";
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +			qcom,channel = <0>;
> +			qcom,ee = <0>;
> +
> +			spmi_bus0: spmi@c426000 {
> +				reg = <0x0 0x0c426000 0x0 0x00004000>,
> +				      <0x0 0x0c8c0000 0x0 0x00010000>,
> +				      <0x0 0x0c42a000 0x0 0x00008000>;
> +				reg-names = "cnfg",
> +					    "intr",
> +					    "chnl_owner";
> +				interrupts-extended = <&pdc 1 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-names = "periph_irq";
> +				interrupt-controller;
> +				#interrupt-cells = <4>;
> +				#address-cells = <2>;
> +				#size-cells = <0>;
> +			};
> +
> +			spmi_bus1: spmi@c437000 {
> +				reg = <0x0 0x0c437000 0x0 0x00004000>,
> +				      <0x0 0x0c8d0000 0x0 0x00010000>,
> +				      <0x0 0x0c43b000 0x0 0x00008000>;
> +				reg-names = "cnfg",
> +					    "intr",
> +					    "chnl_owner";
> +				interrupts-extended = <&pdc 3 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-names = "periph_irq";
> +				interrupt-controller;
> +				#interrupt-cells = <4>;
> +				#address-cells = <2>;
> +				#size-cells = <0>;
> +			};
> +
> +			spmi_bus2: spmi@c48000 {
> +				reg = <0x0 0x0c448000 0x0 0x00004000>,
> +				      <0x0 0x0c8e0000 0x0 0x00010000>,
> +				      <0x0 0x0c44c000 0x0 0x00008000>;
> +				reg-names = "cnfg",
> +					    "intr",
> +					    "chnl_owner";
> +				interrupts-extended = <&pdc 72 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-names = "periph_irq";
> +				interrupt-controller;
> +				#interrupt-cells = <4>;
> +				#address-cells = <2>;
> +				#size-cells = <0>;
> +			};
> +		};
> +
>  		tlmm: pinctrl@f100000 {
>  			compatible = "qcom,glymur-tlmm";
>  			reg = <0x0 0x0f100000 0x0 0xf00000>;
> 

