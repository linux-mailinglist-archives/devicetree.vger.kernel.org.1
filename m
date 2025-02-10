Return-Path: <devicetree+bounces-144830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9673A2F65F
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 19:05:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 690C6164476
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 18:05:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3AB52566FE;
	Mon, 10 Feb 2025 18:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h8OT+jGq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C15C1BBBEA
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739210696; cv=none; b=Uu2ENbm9BdrFzbnbbfwJs9m8/anaXE5bwOA8njk1oqUQY8CH6S49zGSlf/feNwoyvdLfJuG7hZXcwJFW74i/Bzccc5fEdXDbAhmYwdXn3HC1ZIATxcXaheN2XTQBHCGuj0UdfxUQKn1fEHQzwmnnfr0i9YdLF/Iaq8rAdfC9J28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739210696; c=relaxed/simple;
	bh=tMeHC5JEZvHoYjUL6h8Fpu1kljamsFeH8uWJ5oc5YaQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fU7KdPPKpYP86kivYoQUzYnH6HmZuv6d5nU8wNXJBGveEmbYaLgzNfAqNC1UO4SgAkPk1JM/BH1wAdPL7d+C8jQLBRtiKNFQ7YfrhsSkJaK8EQOz1w/KZd0N73YuqduS26Wr0jLmpSAbkNQOqTObIm7O6ak7KO1mQtg8UsSGNrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h8OT+jGq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51A9NHXS009652
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 18:04:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/dXlE8mjFfEhLbpkqsSxIStmRgXHpPukFFECnF+Vvyk=; b=h8OT+jGq2ey7GF5T
	nyK85Is3h9rprlq5JpiLXjQ3M/VMiC/Ofw7CB1p3wtdCLjfnZ8ALbLldnR5gLy59
	PJJ3NCA+tujBRwYhCzfwepa2Ra/pBufv1KNMAZ2btavtIXDICwLqTKPMFfHdHXx7
	kGcawcknQUbS85hsrU5Vlc1z0wNfU1fLhaEM11W39HCTPTDSihcd2VjXkcJqVgpJ
	cbrKkcl0pejhk+wywk6zGE93eNF1fIjB99I+gqylPquhZq6wbN+pIpZ2BUkV7lCD
	yCG4wK/iJ61z3t50jsocUMFgU3o7gNt38qHomSQiGPzwpxQN5nc1Y3/aUUr/Qlsx
	tTispg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44p0dqd9c2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 18:04:53 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4718a18521fso2379641cf.1
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 10:04:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739210692; x=1739815492;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/dXlE8mjFfEhLbpkqsSxIStmRgXHpPukFFECnF+Vvyk=;
        b=rGe3V2Y/aGZemOx6Cco/s9HnsOPFMyNbgD8zdNbW8EgICoMP6Z0ndZ/EIP22mlEhQr
         +K7i/RVy0PxdJnTuwmZS2ECkBI4glbKEIGpEj7yE9Q8zHqisKVW6Iofr0jY1ykHr9gWs
         vdA1XLyckS6HX8m2wtDu57Sv+n5TVXlD1+98tDagl78U0qWbS81K6b6BAIz08eQXeD4q
         ZGqCbGxgBKSkh+8EkZmjv6n05rJycxDkVcNI/LOUwj0lHFHCtxkp5KOnu3xgXJEAsf69
         PXi24ytbWHql3Gxd/dsDhBh/uwnIm7VKVJChfUjFRWFpX50PAZlVKQvTeRgQLinE59Bm
         OBFg==
X-Forwarded-Encrypted: i=1; AJvYcCUjBVWwEWChGsn/gD9y7SeF6iCZ7Tj3RZ7nZuPwYr6jVqD6h4wMlDzlrIhE0EtG67Z81ZVQEvv3lnVN@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3L5z7vYlFIV9cShRjiPk3Pc590W4Ud0kLgruimGW8ZBLrOJWH
	KbIeS7MoPowCzWCp0fITY9l3ixHMFZmfe8QdIhiBHTvCFgVrXiH8WIY89KDcfhFiclaKJ2nNTzY
	U86GvMhiu5JI97Jyb2yd8HlfExxAwBFpcpXDjLIYhWsTmnxjFczhaPEHz22WT
X-Gm-Gg: ASbGncuDm8v1fvHCX1x8sfqJ7IwzHXjxUmva7mL+F3MJZQ1DIQuXSOue8vrZGbfVL1V
	r9CjN1BVUy7xL0pePwHEkKoN1+OWT9ld+t19H5PyH6FFopMbEpqVmCUN72ugNz3DQJTmP9Jlu/U
	MkIHjSUqY2kWehhX2Pli50mcbjBUlsa0etCqT++h6OfFlgjlvVKAKs43s9vDYEEgLMz43uwaCYB
	ul9nwHU8mZRICZ7d3veIDMk6lPprvvZnmDgLvbFMgWVhla7Y2d/GVUIoxWv03mPBIDbS2kAbKOP
	7QoxirtvEYsUrJv9zIA1yELHvXLwzUdznGF7+ORNHiwo1XwD/7/o3JSVdH8=
X-Received: by 2002:ac8:7fc3:0:b0:471:9a28:9cd9 with SMTP id d75a77b69052e-4719a289dbfmr12726641cf.12.1739210691771;
        Mon, 10 Feb 2025 10:04:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHeOBHNwBPFLqKk7v7EAlGEhL+XPZR0mkt4Crr9oJhTv8PqqBWqDxUyK2hzB28r7UWNYWjzrQ==
X-Received: by 2002:ac8:7fc3:0:b0:471:9a28:9cd9 with SMTP id d75a77b69052e-4719a289dbfmr12726381cf.12.1739210691341;
        Mon, 10 Feb 2025 10:04:51 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7d855b61fsm30721266b.124.2025.02.10.10.04.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 10:04:50 -0800 (PST)
Message-ID: <e0ef29dd-afe4-4ad7-95db-d21326744c92@oss.qualcomm.com>
Date: Mon, 10 Feb 2025 19:04:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] ARM: dts: qcom: msm8960: Add BAM
To: Rudraksha Gupta <guptarud@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sam Day <me@samcday.com>
References: <20250209-expressatt-bam-v2-1-e6c01c5d8292@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250209-expressatt-bam-v2-1-e6c01c5d8292@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ToT_-SMdSA2p92gra_XJ43qBJUlT1uGL
X-Proofpoint-ORIG-GUID: ToT_-SMdSA2p92gra_XJ43qBJUlT1uGL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_09,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 phishscore=0 spamscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 mlxlogscore=846 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2501170000
 definitions=main-2502100147

On 10.02.2025 12:09 AM, Rudraksha Gupta wrote:
> Copy bam nodes from qcom-ipq8064.dtsi and change
> the reg values to match msm8960.
> 
> Co-developed-by: Sam Day <me@samcday.com>
> Signed-off-by: Sam Day <me@samcday.com>
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
> Changes in v2:
> - Reorganize sdcc{3,1}bam to be after sdcc{3,1} respectively
> - Link to v1: https://lore.kernel.org/r/20250208-expressatt-bam-v1-1-8794ec853442@gmail.com
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8960.dtsi | 28 ++++++++++++++++++++++++++--
>  1 file changed, 26 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
> index 865fe7cc39511d7cb9ec5c4b12100404f77e2989..a5ef9269b78b25b404e1ab11e6eff2639f16b446 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
> @@ -279,7 +279,7 @@ sdcc3: mmc@12180000 {
>  			compatible = "arm,pl18x", "arm,primecell";
>  			arm,primecell-periphid = <0x00051180>;
>  			status = "disabled";
> -			reg = <0x12180000 0x8000>;
> +			reg = <0x12180000 0x2000>;
>  			interrupts = <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&gcc SDC3_CLK>, <&gcc SDC3_H_CLK>;
>  			clock-names = "mclk", "apb_pclk";
> @@ -289,13 +289,25 @@ sdcc3: mmc@12180000 {
>  			max-frequency = <192000000>;
>  			no-1-8-v;
>  			vmmc-supply = <&vsdcc_fixed>;
> +			dmas = <&sdcc3bam 2>, <&sdcc3bam 1>;
> +			dma-names = "tx", "rx";
> +		};
> +
> +		sdcc3bam: dma-controller@12182000 {
> +			compatible = "qcom,bam-v1.3.0";
> +			reg = <0x12182000 0x2000>;

The BAM controller is 0x4000-long

Otherwise, looks good

Konrad

