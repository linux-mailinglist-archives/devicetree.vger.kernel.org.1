Return-Path: <devicetree+bounces-228787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B728BF0B87
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 13:04:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 642F84F2CAF
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 11:03:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E13D02F6921;
	Mon, 20 Oct 2025 11:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wl5ufinM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F7F253F39
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:03:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760958226; cv=none; b=gkmZahsHZZgFxJev2Qt9qV35RBC9qdHOGu9cwEBLZLfq7L5h93tLxVHCkioXMpDxlTVYnMrgqw9ZHbW+eKHGznQiCdfF+TW/n3XszY5A0bcZTLws21JpEYLhqDGMymtEWwxbbi/zw9fMRCTpRj7eM3vl6Y0fU2+msikn3DhzGoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760958226; c=relaxed/simple;
	bh=GwE8FjDB4hgHZTroAXgWDyHg5DjY49WcxEpUMw9oLvU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qW90GbfAcjVYLh6y5hPxtCtT4jZAulOkUMa8H2jnamGf6eW0RKLn3ZCb5kpdcNOBH10YJi2XoG4+xTt00bND0Y0aRRmE89AtCoE44bJIFz+g1/XA/28DqU4+grohe0KYntw/EwAAMFD5Cl3pR2SEpop7Be+rznxuVgGNTn460KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wl5ufinM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JMIq2D028857
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:03:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tWB8h5H0hYMzjnnlPftSrbIL
	TIoJkun3efvv1qjHRHk=; b=Wl5ufinM7COLLnxZ5k8yozvYZX5Pvp684nsk7B0x
	f7SHDgq6bBGSvoNhsi4a19kPrgs9F/o+YyvVx1HBFkBV9DLD+9IA0GZZrB0jpwPX
	bmkmL/xDdRpTkyi2lwaB6IUdhMrhgmb8Muwo1oFO+SGKtuS9d9ZDElG1jps9wzek
	5GxZ4W8/rAc3NkI9/LiOYmJ5pJ5E9pZqWoN8x/sSiZajuZg0BVhg4IM2nZ6MuNV3
	fXj/phgyFoLB2vA0m1XoUB03AdvmWCJq4mlKqsVn2eK/MIGzY8HTqS0j6rzsrZcx
	90tnsjrZqNg2ftRTEXJiAEF0wGZayiQCYAFEpnteDX/7lQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v3nfcg2j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:03:43 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-84a3a7ac082so1483501685a.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 04:03:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760958222; x=1761563022;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tWB8h5H0hYMzjnnlPftSrbILTIoJkun3efvv1qjHRHk=;
        b=e78Pybkono/CUy14GK5w154tObfbgTa6F3PzkIvfpbfdyOPK/7g09vQafwHHRM0oEL
         IZknyOEHnnptyisVAv/5nWCIlITT0baLbHI5iwNRG/diDYMxG+mKF9yyuGB1R2CnWrCz
         jmiB9Qe8gipeNPZqULS/sIkfgnb8P6Lciyjo3nNKPxL+8X63YUrqYF9tOFTTOXLGWKch
         FU5FHbV79fJ8PqJZ+TG4ERqvWWZE5Y+5Zwb+M3I3XrN0HAnOFxGkruPUZZrFVzZz/Vl7
         aPScRj7nl0d0QSGqcqgsHk8QR4cF1Ain1JHt1WYlx8MqA6JQQDHEX0w99WybLaMREjuz
         A15Q==
X-Forwarded-Encrypted: i=1; AJvYcCVaQ+C+0tJ1Y5Nepv0CUynj+xF6ReHH7aHmqmLnR7fwPxYpqmQkGVq//7wxRnODvhfAbJn079m2hQU0@vger.kernel.org
X-Gm-Message-State: AOJu0YwUIEljhYLazjTCPE7+ZvcID3aQpzSgtW8ndNE0Ae9HcuM23Nbp
	J46sYBwOykyqZXrXL7w+K5hWq6yimKpSFAIoPyCg7oEx21KnbOkK0E1Z1hRxKL9xB2HbCTErPyr
	LlguXb8h1tFnjAFf6qHCjznlqXnbbOVuHkJCnljM6tREPvOAbAXLXv67kPT+kzasB
X-Gm-Gg: ASbGnctE+rmZKR54ZtuJYOZkFE2GJqFMr43rRxttrch0QJBtbdWa26dX4Y7jrfOxwyQ
	CoI1oNepMxGMBTEGpcA8KuBHI35e9jxcMd5kW95rnOIbj3oL4Ov39FUPUb2xTrGxFf1lbCuKBhy
	vfnfRWgcd/Hb9Kg2J8pn1+LL7GiOqVP7qiDWB0e0xPL3o87x+VWzZqbkyBaNZiMQsfm1ynUD3zQ
	xSpmPvHplPtSWDSnWtI+5D+e1Ucdyr0HdwhBC8OcUeZ3jC2NEt41jt/6qXmkWm/LDrCiNK1Yyrn
	ZxvrxnZHFFwZKKkK2cN9F/u6EBy4mDulkbjz19URcMDGabU9hfplZJI9IysPIejxf7I/jYly332
	SKJV/mziBS9I1xiBw9fSYewq5X7kKIJFPIHeW/HG4bXJNS8ZxBTsPvilyhHkeZOxgKKpYTYYFeJ
	pXwh7quwyhJzY=
X-Received: by 2002:a05:622a:1451:b0:4e8:aff9:a7a8 with SMTP id d75a77b69052e-4e8aff9aa38mr85571781cf.52.1760958222020;
        Mon, 20 Oct 2025 04:03:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE3ulAC5BvhoDz+6jrsrwTh0BMNZ8/dl/jE+ChosHXeyCGiP54CwsbF4BKvdsYJ7LNOOeCVAg==
X-Received: by 2002:a05:622a:1451:b0:4e8:aff9:a7a8 with SMTP id d75a77b69052e-4e8aff9aa38mr85571321cf.52.1760958221575;
        Mon, 20 Oct 2025 04:03:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-591deec11a7sm2433662e87.47.2025.10.20.04.03.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 04:03:40 -0700 (PDT)
Date: Mon, 20 Oct 2025 14:03:39 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
Subject: Re: [PATCH 5/9] clk: qcom: Update TCSR clock driver for Kaanapali
Message-ID: <jr6qz23acm2ipspsvyxjpabg3b4bspapia2pqd7b2grrtvnct5@v7mjwnr5o6qa>
References: <20250924-knp-clk-v1-0-29b02b818782@oss.qualcomm.com>
 <20250924-knp-clk-v1-5-29b02b818782@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250924-knp-clk-v1-5-29b02b818782@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: usBKbKJgROIlA2O67IxX93pjsO9s7urX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyNyBTYWx0ZWRfXw3IAUDKnHJbL
 Rrlckfvf+5q1L0Ue8W7d3xxwYEM0Zw41jEFFVZ4eUgull0XP/7rd1os0rFDHUYPaKXE74rGPm5E
 kp4wVAeuXjrda5SGasqXM/k4QkHg+LJbZ/wHv4dLoNPCjFL3OCjwas1RCa+5BRBxWeVwqQWW5tk
 I1ibLJGV9h8RAowOCTFiohBi62VLVd/w/BhhrnSTP2fMxP36qE64PQswdp2SA6AvwdfU4nOl1G9
 wDXf1DWEmd7u4Yja+nGd6dwypdSYtS4QMRTQnptJX01swT/SphE7TOse5gJ8aUY2OZiX0iJ3w2P
 Di04DLmaAbCNtSGgNzOXxWmOLEzyRRyW0xdrRmMIotHTBdMSRN9+3fGloqnellss5t2cryfb3aH
 VQ+MNeWjZkcbjfWTuXVHOy5iFcD52g==
X-Proofpoint-GUID: usBKbKJgROIlA2O67IxX93pjsO9s7urX
X-Authority-Analysis: v=2.4 cv=EYjFgfmC c=1 sm=1 tr=0 ts=68f6170f cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=h2OAjeu8WJ8lyUsXYpwA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 spamscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 impostorscore=0 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180027

On Wed, Sep 24, 2025 at 03:58:57PM -0700, Jingyi Wang wrote:
> From: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> The TCSR clock controller found on Kaanapali provides refclks for PCIE, USB
> and UFS. Update the SM8750 driver to fix the offsets for the clocks.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/tcsrcc-sm8750.c | 34 ++++++++++++++++++++++++++++++++--
>  1 file changed, 32 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/qcom/tcsrcc-sm8750.c b/drivers/clk/qcom/tcsrcc-sm8750.c
> index 242e320986ef..f905f3824d7e 100644
> --- a/drivers/clk/qcom/tcsrcc-sm8750.c
> +++ b/drivers/clk/qcom/tcsrcc-sm8750.c
> @@ -100,21 +100,51 @@ static const struct regmap_config tcsr_cc_sm8750_regmap_config = {
>  	.fast_io = true,
>  };
>  
> +static const struct regmap_config tcsr_cc_kaanapali_regmap_config = {
> +	.reg_bits = 32,
> +	.reg_stride = 4,
> +	.val_bits = 32,
> +	.max_register = 0x18,
> +	.fast_io = true,
> +};
> +
>  static const struct qcom_cc_desc tcsr_cc_sm8750_desc = {
>  	.config = &tcsr_cc_sm8750_regmap_config,
>  	.clks = tcsr_cc_sm8750_clocks,
>  	.num_clks = ARRAY_SIZE(tcsr_cc_sm8750_clocks),
>  };
>  
> +static const struct qcom_cc_desc tcsr_cc_kaanapali_desc = {
> +	.config = &tcsr_cc_kaanapali_regmap_config,
> +	.clks = tcsr_cc_sm8750_clocks,
> +	.num_clks = ARRAY_SIZE(tcsr_cc_sm8750_clocks),
> +};
> +
>  static const struct of_device_id tcsr_cc_sm8750_match_table[] = {
> -	{ .compatible = "qcom,sm8750-tcsr" },
> +	{ .compatible = "qcom,kaanapali-tcsr", .data = &tcsr_cc_kaanapali_desc},
> +	{ .compatible = "qcom,sm8750-tcsr", .data = &tcsr_cc_sm8750_desc},
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(of, tcsr_cc_sm8750_match_table);
>  
>  static int tcsr_cc_sm8750_probe(struct platform_device *pdev)
>  {
> -	return qcom_cc_probe(pdev, &tcsr_cc_sm8750_desc);
> +	const struct qcom_cc_desc *desc;
> +
> +	desc = device_get_match_data(&pdev->dev);
> +
> +	if (device_is_compatible(&pdev->dev, "qcom,kaanapali-tcsr")) {
> +		tcsr_ufs_clkref_en.halt_reg = 0x10;
> +		tcsr_ufs_clkref_en.clkr.enable_reg = 0x10;
> +
> +		tcsr_usb2_clkref_en.halt_reg = 0x18;
> +		tcsr_usb2_clkref_en.clkr.enable_reg = 0x18;
> +
> +		tcsr_usb3_clkref_en.halt_reg = 0x8;
> +		tcsr_usb3_clkref_en.clkr.enable_reg = 0x8;
> +	}

Granted the size of the driver, it doesn't feel like these two entries
belong to the same driver. Please split it to a separate one.

> +
> +	return qcom_cc_probe(pdev, desc);
>  }
>  
>  static struct platform_driver tcsr_cc_sm8750_driver = {
> 
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

