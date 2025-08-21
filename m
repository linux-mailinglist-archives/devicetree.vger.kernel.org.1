Return-Path: <devicetree+bounces-207380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4849CB2F575
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 12:37:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0EBA11CC3268
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 10:36:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E57953074A7;
	Thu, 21 Aug 2025 10:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GVVeM7wW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73D62307487
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 10:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755772570; cv=none; b=FMoTK996waC+Mij3HUuvyx26xEUvPcZQNUw1zEepQdB0FP4P6Zrz4Jsqlru/E1VjhZRTT+j95lGez1jhYL+N5mBlD/D8vdKdfoC312/4P4mbVZLhjm4Fhe50jh2R34cveA+NKKvfT2BbKfnu4CbIdvVciss38hojhUT2u9o5qkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755772570; c=relaxed/simple;
	bh=RDuV1besyzzDAzdyFeQhw0JwJepUWtsZGZmkP0nNXDw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RxNwA0nWK3VrmMToImtvXYhYNEaZSs4I3hVCYSv2k+vJftZOVhQm/NnC0hjV5NNulc4zX974Fr7hmTU7wls1aBsHhusbEU9Bln4pyT1vW1cZy0KoITCBXo4IHPn2F7BAiz7hdgWYglKTPM+azl7pUr9bGzD4Ryf2S6B7a051CnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GVVeM7wW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L9bB85024226
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 10:36:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7oo2zqFqG/uy2ujzQIvz8umA
	iinujNdzdiBtiiHUTrI=; b=GVVeM7wW3PQpz36KtSKHXA79R1SZCspJcF5r9uyi
	OKQkaeZtpNw+/A1Whiwkh+K3IyE4EWBS+h2HQuOd8kZFr1tmWExrArY5Tyzfbe+P
	f0IlHRHGbcxxzNkS4t2tqpmWywHvE6EtMoScQuNk95ZSz16Fd/kjHi9+8zh9U8Kg
	3vc2yYdqviPozvZgOcdookVZ2SqHRKF0eT6ms42zB5gxuJZeznWCFhgjK4xWnsTp
	X3feIci0VaQupEf+oVnV0HPIDycorZNffGd7rl6WNeoJfrMzE4OMzVogFIpmbiTB
	LWeN6YI+RUm95Egq4aMINaq8O/3heQUHuxrgLAt6DmaZMQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52ad4ma-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 10:36:08 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70a9f534976so26718546d6.2
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 03:36:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755772567; x=1756377367;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7oo2zqFqG/uy2ujzQIvz8umAiinujNdzdiBtiiHUTrI=;
        b=sH+pSlRrryMbFqK0P95fQ3rtIarJNiKLhghhCjBXlg5YLTLPgVXE8ceNDyaWQFmC+a
         RF1SBUSJKwg1SyT4B882cLFErnvCInra93ghfrbzCtGDHTsSgYLSD100oPgbwhtW2zwR
         wLDkXHVED8MOUYDc+ZLeuuiqnT2/Zqb/1FsJ64uHezZPwZ3y/IrwaFdl9Qm0QhGeHXDr
         UpAr34l0mlIXXW0LVm9F5sszljCrcMxJnitvCeEfETUydRhCSLycAxDZcD+IfYqRqzs+
         f73MuStbOPJiEkFF4Unk70ev9xjMoyIV/mbkk2zJhThX9R88NPSozL338C0Ch/d0c67U
         57eA==
X-Forwarded-Encrypted: i=1; AJvYcCXvY5SlQvxn8Tkx2VSwd2qhTVTsmM1y94kzJCGuIM5m+UVOiTuYptdIyHtafRCny4wm/Joe+fj9gMk5@vger.kernel.org
X-Gm-Message-State: AOJu0YyYGrq3LDnXrTsAF0xvxuq2sHHe+JN3XrQpXdOOAPr/BjcVC+/C
	ltOlNt3kcxrcrR7Lj51o0PYrL9ZAJpsDLB+ToDME+1gOtkBEAaOHex/Ngk7fA378SMeHD3mbkIZ
	tTSzA43HTQlFwwAwgcJo6sNFrFvhWpjJLjYoGqTkWp3vE4QscF9K9Ll83XmTqYJoz
X-Gm-Gg: ASbGncsrYDZCP789qXFqrV3aONkhI8JxNajNePVkTTRN6GvqOyx/GWYx9EMgiq++l2d
	FXh9EwaRhsquD2OQvJsc8JmXeNETxWiv0T1rYOb8ZiT1lof0NuXOZkBquJ43MWnYfgN6MaFjZBB
	PrMKMjB+ZaKGnnGeIE7L56qQflxb534EWWUwNUfNI/axo7O4JdsTVbdoCyN65hoDqItmp69MB+9
	vj4qHKrMeg/Pn7wIz/kD2lSiwuMbxPgu6kimJPgceDhoiPRwm5RdfHBFwtj1Ol7DN63Krsk5qx+
	KmEN8jiE7ZujLZxqmKw+Klpg7U5I8zSLNpi5NjcNBXy9BFravk+WbuideY0vgMmxd3zCBIL6ijR
	4C8zv/FiC71ljB3M+B1Zxc4Vkuk3+tQ+ba6Nf/TdscP1b7oBSsMnn
X-Received: by 2002:a05:6214:5184:b0:707:62c5:975b with SMTP id 6a1803df08f44-70d88e6e24amr16306246d6.15.1755772567143;
        Thu, 21 Aug 2025 03:36:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJD+FeF4dIo0pLY6T95BYJZrasalSuOqAYF2ufCE5H5qdImROfk2vmGTbiJggf0s0m/2xKdA==
X-Received: by 2002:a05:6214:5184:b0:707:62c5:975b with SMTP id 6a1803df08f44-70d88e6e24amr16305876d6.15.1755772566559;
        Thu, 21 Aug 2025 03:36:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef369bd7sm2985905e87.68.2025.08.21.03.36.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 03:36:05 -0700 (PDT)
Date: Thu, 21 Aug 2025 13:36:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Prahlad Valluru <venkata.valluru@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shashank Maurya <quic_ssmaurya@quicinc.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: lemans-evk: Enable Display Port
Message-ID: <e2ke65gru7b75rnlg5cqlxpk3e7322tewvt7gvugjgnoezgdfh@6pqiymj7nipu>
References: <20250820-enable-iq9-dp-v2-1-973c9ca22474@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250820-enable-iq9-dp-v2-1-973c9ca22474@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: JXGTOD20OWGlYDjsFlEcVzIBQGeYIywS
X-Authority-Analysis: v=2.4 cv=B83gEOtM c=1 sm=1 tr=0 ts=68a6f698 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=MzpP2GudIQyLNU4cacwA:9 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: JXGTOD20OWGlYDjsFlEcVzIBQGeYIywS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX4x5fx+zbj8HA
 LuK63tl68+NJY6lkmUExfORcBJW1JomhmbtiH1TubvW6ncdxIihy3CkZK16ktbZdCUbpmU/VdPB
 LeDoLS4Tq21BBBBYEdXSHaXDBTbCNc1BLkISqbwe8FHq+9jhGYevsI+oYdb3I16tMoR3hY4Lmp5
 N3PmlYmArr0L+j97d4zPVdvNN40HEVmkYfrUcJYa4keIt+VQKhblnvf5hQSiSkPpAeEwIeRteSO
 Zal5esVv9xQh0E2BWKMRzbaTtkJQ140VrZykOPz5vEX5HOp/QJQ8e7IDR2EqOVashHDatqOpzXD
 pt0Fj/j4esBTwIj31OUjQnrPEG/bUiILzWzuZz/cucm1FoGidPCa9QERw3CeDgAKEWf9Mkxnjfi
 GSpagzsQUbRGztr8M7iVioebIHgkWQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Wed, Aug 20, 2025 at 07:58:35PM +0530, Prahlad Valluru wrote:
> From: Shashank Maurya <quic_ssmaurya@quicinc.com>
> 
> Lemans EVK board has two mini-DP connectors, connected to EDP0
> and EDP1 phys. Other EDP phys are available on expansion
> connectors for the mezzanine boards.
> Enable EDP0 and EDP1 along with their corresponding PHYs.
> 
> Signed-off-by: Shashank Maurya <quic_ssmaurya@quicinc.com>
> Signed-off-by: Prahlad Valluru <venkata.valluru@oss.qualcomm.com>
> ---
> Changes in v2:
> - added dp-connector nodes for edp0 and edp1.
> - Link to v1: https://lore.kernel.org/r/20250711-enable-iq9-dp-v1-1-6d381e105473@oss.qualcomm.com
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 84 +++++++++++++++++++++++++++++++++
>  1 file changed, 84 insertions(+)
> 
> @@ -261,6 +331,20 @@ &sleep_clk {
>  	clock-frequency = <32768>;
>  };
>  
> +&tlmm {
> +	dp0_hot_plug_det: dp0-hot-plug-det-state {
> +		pins = "gpio101";
> +		function = "edp0_hot";
> +		bias-disable;
> +	};
> +
> +	dp1_hot_plug_det: dp1-hot-plug-det-state {
> +		pins = "gpio102";
> +		function = "edp1_hot";
> +		bias-disable;
> +	};

Please move these to the SoC dtsi.

> +};
> +
>  &uart10 {
>  	compatible = "qcom,geni-debug-uart";
>  	pinctrl-0 = <&qup_uart10_default>;
> 
> ---
> base-commit: 1aa50d938e88fcad1312467bd09be4037bfe68ff
> change-id: 20250711-enable-iq9-dp-addc9c7195c9
> 
> Best regards,
> -- 
> Prahlad Valluru <venkata.valluru@oss.qualcomm.com>
> 

-- 
With best wishes
Dmitry

