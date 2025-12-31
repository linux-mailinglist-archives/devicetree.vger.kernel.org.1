Return-Path: <devicetree+bounces-250796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B422CCEBE10
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 12:54:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DF91730076A6
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 11:54:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B2EF3203B2;
	Wed, 31 Dec 2025 11:54:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NzAjbr8o";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="if7H3RBR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7458831A570
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:54:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767182092; cv=none; b=quQC9atOH8jtK9t+m8HDzdadQSxzjHHotvelib55hf8nXPqoWfhayw6mEZ/Ft9Q+LO+Gmm7ilvbYe6QVXZbfoMw7KxDycuYXSBsBiFxhWqUBpL+IH4wIDwz9CvpPebRKAB4tlEXBioJYqVQK25zH/XZZusFHpIj62if2yrdsOLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767182092; c=relaxed/simple;
	bh=0zP5upKuKQ5lDKq3QT4779thMUVekVUPfSqU0P58sBg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XQ6rU3pUD72MG6kEru0rUue/VE0YCCFd5nYaPaMDHV+lYzx41bq8YsXwR39JWGMxSUgBXoMoCgDHSqhLpfnmiQccQ3y5LZ/TVEYSo9Z/bjbezeEKcYyXLr+LSeO9zAd0o5KK1w0f6ucaRj9zyehEDhvhl8Rvj954a0kBuLpsmmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NzAjbr8o; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=if7H3RBR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV6UIfC3539557
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:54:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	j1qCJuW+fO38KCWDHz/g7rRFRh9M8lcvoMgpIEKLPwM=; b=NzAjbr8oxNaqK8b3
	ggtHEV9DEyR3MsiJIhfarjpObo4rS0WGQFnbCCST/6u27XbE5vO9GwU5824q4v6I
	dTgR4GhHXQsp0GnHl1JiHnRGhQzCVO9luOWCY6Q685V4e8IpQfUcLBbLW+OZCa9C
	XqAnxHwD9tk6Nchor2L4AkYhWx+caCIwk/1WnBzaHciwLVEImLbvt1bc0CElgb8B
	cRnFJ5FOE5Fu5jkP+uxIPviQcyVqo32keiYtriTuCk25NnHPMuVGNhAbrTaaEJzO
	t1o4IvqhHSdjt8iU7moDgvPTxpYfnyDugARDuF5PD6JnA91UR0wMPv1CSzHrwgj6
	8SLXaw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc88ykfrq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:54:44 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee07f794fcso42533871cf.2
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 03:54:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767182083; x=1767786883; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j1qCJuW+fO38KCWDHz/g7rRFRh9M8lcvoMgpIEKLPwM=;
        b=if7H3RBR/kJ1+IpB7VNoQfXH7MTkM2+QVlBLYuLjwnssFqCbPsy4iLn5US1DgT4x0r
         QOg1D/GzFwZAKzxQqQ3vQQ0EisC199zRvPeGOYP8vqDmNqwFxmA4rPvF4tU8fRjLir7h
         HT5FVke1XxNcfm9inQmpNjaCxU5xDVkM4UeTKN08zR2u1H8ohPWUGjRvNbXiCbiqv7bB
         h2a2nCWCS0u88yTIBG/DEZiGtW226zENqWc2YmAd9Sfzw5CdFxHTHpb0xon58Bk7faHw
         fjvSbPfX79kGGtxhMuD/ydIn0pRKD42vbWpuGLE31xIOyr7rXIu0ORQNsuOPovGZCSTy
         RkXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767182083; x=1767786883;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j1qCJuW+fO38KCWDHz/g7rRFRh9M8lcvoMgpIEKLPwM=;
        b=tj+pBsub5ACfpt9B5MlfT6JL/ZVxMyGIr4AgE8GhMyJn0VLWK9ZKFafUcs7gLLvQ2r
         cnkBu+aVRWtp2UHC8Ed1+AvJMm0+4S+jqmB3kYtJlf+TXFufCZtYLakyWNXnMG0Bb8Ku
         GJDIE1HYQhXtsCERI8kHL9hNa8LcOVHnW/JWyt1pe3Ajl40mh2gxNawRS3R+ez348+/q
         VCJCRcNEqCSsuETlf+du+j2A9PVXIOAz4S9Dy5NJNJXFPotao9vaRgOGjfpvY6ERIeB8
         SS+ivsYZDFJo4pj4GbzNTCexCJA7SN99yAcMohz2QIpjYZNkmkR6MKIzGzn+CmFrSXdJ
         YSmA==
X-Forwarded-Encrypted: i=1; AJvYcCV28vzD/ZPAK2eyaSllspUI1gOXcNr2za2uZdELvTIIqTfphXuNeTY+ga2lTq7kzZl3j3XH4JZCu4/0@vger.kernel.org
X-Gm-Message-State: AOJu0YxfslxxtfrhxLaOFnkv3cwofDI1kmOtvupBPPEnO9/pE3H0sTl5
	SgQvthDbVtpz0cXNpAS575CpWfAUCAcnv7sjeq5/iHQo2ZspVUuvw7e/4ne8CAcoLbmwd/c2Bs7
	FrGBzylTktt1kr7dUcw7EDrBx5ohj92K0RnqLOYd1RWjGhVJ+fd3HDwOwlxFZeanoMp0ph2hL
X-Gm-Gg: AY/fxX6nQGXJ7LwfXdrBbVNl7Fk9nXfA/zvTN21KyZI5BanMtWM6orrkTi1NiEBA4eb
	QCLm75m/CcbvFllbzssslxkXP4VuzQlvMXkFT2A+38DQiSi/d7/4zMyu4db9mYrSG0DZ//th7iC
	CAWC08mZ5gtsB3RRwUbjVijDBOg3T+ahcHugsSLDTG42/y5ZdrnWDo1JYHNktO2BcNdkiKoXFg+
	skjuvbjHicDvzgY+7BXDztEpSGdfWpw+MdW9CSu5svA5s+626DPlS22YN2QBdK2CrabT8R6vV44
	J04BIeeCTDdGKDo4sKVd3y9wae17gCMV2g2ME90VpLYPbMDFNgHZ4vJMzf/pvduHNYzhyIaUVPU
	SZUVeRBn3FbDzVpuIU7j7/RDJSS4QxeVvMYmGrudzRm/zpF4T70XBdtYv9Kk98TnVUQ==
X-Received: by 2002:ac8:5a81:0:b0:4f0:299b:c785 with SMTP id d75a77b69052e-4f4abe04451mr371150991cf.11.1767182082910;
        Wed, 31 Dec 2025 03:54:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHGJ1FK4Fd4NmUhSbOSc+fWSuv7pniV2b7PVYOuXstMnLJz4znnJPci2xLqqyZATbWEGocdww==
X-Received: by 2002:ac8:5a81:0:b0:4f0:299b:c785 with SMTP id d75a77b69052e-4f4abe04451mr371150781cf.11.1767182082513;
        Wed, 31 Dec 2025 03:54:42 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037de1421sm3989946066b.41.2025.12.31.03.54.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Dec 2025 03:54:42 -0800 (PST)
Message-ID: <7eacdba8-1dec-45ac-b48d-55cc67a98ae7@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 12:54:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: purwa: Drop the Hamoa workaround
 for PDC
To: Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251231-purwa_pdc-v1-0-2b4979dd88ad@oss.qualcomm.com>
 <20251231-purwa_pdc-v1-2-2b4979dd88ad@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251231-purwa_pdc-v1-2-2b4979dd88ad@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=POcCOPqC c=1 sm=1 tr=0 ts=69550f04 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=E_S6SxJbg-Xv3qsyNckA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: NArhmurBA9C_BiF_tlb7cJyHr-I0_5vb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDEwNCBTYWx0ZWRfXwyiqHa4Ofxz2
 nMr7A2ABhsHAZDsOzVouPld1aN036y5Ypcx0LavkMEXshiWDjLp1ta5Fj9FUpStinVv1FNmJvw3
 ZwpImYhju+KfAZXd2fUPNyslMtiU42Hl9HMS+07HZOnd/EiNNShb6rrVjDc9SczUzgNpT79EcWd
 tvEePcW526/2CUB/bZc+6kifgUfezwRLHdsYxEmUy+AJidhrfgQN5USXwKOryVZaNHWYBdWd7bf
 q3K9ekeKmAOUsTWxK6PVqda7XvBdvQxkEW7/qCRQvhvf3wsomjppQ9JLJwdRo+V2GG5wVhn/FrS
 8737XZpjGDM8zrkjA8jpzCtQj5tT2O5VU+WbMU3v2aYSt1822mcM8PLlJzfdTOAc/RIib8qnjB4
 z6cRyfzkxkpmJompjqE0e6lJ3w6PetUYtEBUJMsIvI/+0xsAxaPv/uilxYNp4NKGngwjs+O1Y7b
 eVCkzC6VZ9Lvdlv/qKg==
X-Proofpoint-GUID: NArhmurBA9C_BiF_tlb7cJyHr-I0_5vb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 bulkscore=0 phishscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310104

On 12/31/25 11:18 AM, Maulik Shah wrote:
> Purwa shares the Hamoa (X1E80100) PDC device, but the hardware register
> bug addressed in commit e9a48ea4d90b ("irqchip/qcom-pdc: Workaround
> hardware register bug on X1E80100") is already fixed in Purwa silicon.
> 
> Hamoa compatible forces the software workaround. Use the Purwa specific
> compatible string for the PDC node to remove the workaround from Purwa.
> 
> Fixes: f08edb529916 ("arm64: dts: qcom: Add X1P42100 SoC and CRD")
> Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/purwa.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/purwa.dtsi b/arch/arm64/boot/dts/qcom/purwa.dtsi
> index 2cecd2dd0de8c39f0702d6983bead2bc2adccf9b..e3e2dfedf0b3cad90b767d6b28fb0c60078d192b 100644
> --- a/arch/arm64/boot/dts/qcom/purwa.dtsi
> +++ b/arch/arm64/boot/dts/qcom/purwa.dtsi
> @@ -152,6 +152,10 @@ &pcie6a_phy {
>  	compatible = "qcom,x1p42100-qmp-gen4x4-pcie-phy";
>  };
>  
> +&pdc {
> +	compatible = "qcom,x1p42100-pdc", "qcom,pdc";

I think it would make sense to add a comment above the compatible line,
saying that the PDC is largely the same as the bigger brother's, sans
the bug

Konrad

