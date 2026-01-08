Return-Path: <devicetree+bounces-252570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C8889D01286
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 06:44:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C81233014DDE
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 05:43:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2113F329370;
	Thu,  8 Jan 2026 05:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GhrpPwZE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AMAdmDRD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B8781BF33
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 05:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767851039; cv=none; b=EL/F/bRlHk9PjZMkd8MNtzfTZnBxkYzFbl6+SZuqcqG7D78TV+sOKyGaB6LxG+FNEEflbnuranaZI21qXzmvxcXOBE7vSfLZp/1oZqsSgJ0JlnEws/JWyzfUXvkjcML1kdOGszqylJSyjWo1Xt9a75/BKOrAUWuxpoMja+U/2Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767851039; c=relaxed/simple;
	bh=AvEdvduyVGsheEfFeWXrUyqWpyOpVMDffEXb51YYRcg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=EkR7nZdJCUe8oh4Lmv1yAjghkGxqWeGitHtX4OqADM4YRptrMF+nCDyf94h14hbOsqUn1Kr3jBq0fLFXY6yiclC1Vm6Ewbr2ch0OEkJn5a+lbFcqgJk2SBrKDKJUXeVPPOOAUpNeUx14u06KnYEGGm4n6WYwT0dZyOa+MFBMGfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GhrpPwZE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AMAdmDRD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6084RK7D2593336
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 05:43:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9juYGvJdkazTdgj/WwA/UxPKft5piYikDxFN5o/S2wA=; b=GhrpPwZET/bZGUvL
	OSJgX9UmFOt/HwCfmroLNYsYvfgGAv/7UJ2zkVZNgdikmcMJs4Kzs+H8+oXed0IM
	ql4ra2KQLfgm9oHU5tMlLuejhZv57Qovu4THSzralrPuum/wFT3Rie3WWQzhq2x0
	I+IlMeqbLBi+KKdB7JRzkLsDoU6vNy6p6zO1TDdQbL8LTzyYSIm5U7kPCeuH0PpG
	/uijjOzngqyBMTtnDDaEsRV2LEDwC04BKn5wEz/EOrUfEnz9IHuzrniBVVxbpRkC
	q/BCEewlXTFiaZZHpGAwF6oX94UK1/KxnqLmofXOhgSliX6QHhSzKIQ0kaDl9R49
	3rbqbA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhn293fkr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 05:43:56 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7aa9f595688so3736761b3a.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 21:43:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767851036; x=1768455836; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9juYGvJdkazTdgj/WwA/UxPKft5piYikDxFN5o/S2wA=;
        b=AMAdmDRDZuJXGy9jfTA+lwT1ZaJaLenbN+19FlikJpWJzz6WWesu9Y+K6Q4HQXnBKD
         JwO5msP/B3ORjPmgdbe5peKNcHmUjDKZa5AHZnJatcyKv6CoGr2iRwRoYdl73O0yokmi
         UlON/y5i9rkgguhnRCc+IDE2wIW/Vraj9fhIHyn7tZ7JDYgKieOpXObQNoK10Qdd/rSe
         n6DK/Bf/oUxwUw6ajN6UZixLIIKm34C5iyp8ll8MGNj7LTFmLSLtrpphoi3e8uv4lxLK
         I1QyS67C2wQlzq6JUfniFIdN9L6aGgwmqZBslAwbv4l3i6wn9MvJvpmQTqwAp0C3gddg
         0cBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767851036; x=1768455836;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9juYGvJdkazTdgj/WwA/UxPKft5piYikDxFN5o/S2wA=;
        b=q+BxteeHI/utNimQMQu8SVLxfSkbbT7kGyf0X1DQxCO8h4bDQocbt0A6uhXl3NDIkK
         5COh86o10mDoKlRQdA/OinFHEIGcHxDWjNipkSAwDfWI9KxuH3t6rWQNrRBiouDYj9jg
         fhyV6bjs2aU4QSl7D1Ucj7AbQqVnKIrUN5TDReWDlnlhXQ081zz7KzGOfOGNB/upWSLx
         ULU0H8MWX30FySJU79c1mKl4gZwi7EVbueLGCmIGmu/W6UcAfXZywnSLoZHFwTdV78Ip
         N1kciEt6vs7KwSjFieJZrvfXLcsAFgr7lD2iDwFqcDc38TGMqlLwVDG/s9oP6I6PSRdq
         X2rQ==
X-Forwarded-Encrypted: i=1; AJvYcCUX+DhgGBZhb2ouY5xE5rbsF28i4sHQuuwXHO77QY677SFhWCsK/HR2feXnTfQ+wouqPWitaS3rzu7J@vger.kernel.org
X-Gm-Message-State: AOJu0YwBnM14jyTX60a1vaFvuOwbsBYfYlpVWmDCZwfH4/BvqweUwNeB
	RCVVe0umJ6cJMw7dV4Y/XNi5R5gfhn3CyMBQ1956W0fvbuAHe7kuOis+ngVq/eGeEKuorSjl+sc
	FBNCzZZwzwpIjokRRP2/S9Et8c+UoUecSOBVVp0/C9mj8UWQ2/lZefm/sxHKnl5Ez
X-Gm-Gg: AY/fxX4S4cjeOD299HTqiSRkQlWox6rMqLAytfiq/dd8ScV+1gGY4Qn98B1nUY0qIUJ
	rtkAM1qY+C8G1GaSX8l+Bmzq62qWWzyOgg7HxDuW3nAWoTHovhdm6t/frs+D82aa+zNqG1bbEQk
	vHPIaSMoz6VcjPQquxMXNiB3dPQ9fI9jrIPqGM+zLF5goTU96QM0+DNvKJW2HRNGHsIWC1/nnxT
	kIcMyV+gXs0s0TVwfH45SQduLK6hJfw3OIv8t1tqJfWs5f+yripYPHo66zwDW3ejzy16AWaoYmi
	8pRtcH1AbRiIrfu+BaDw56/DMDRK623QdZ8PllGJzXMIsTPLVzoS8s9SPQqL92XhcySWSgEjqnh
	FEVEFS04sM54im/x5utyjXTxgPOclGNQhRLiy5N5YDnplTDSKjWj4Yw==
X-Received: by 2002:a05:6a00:3688:b0:819:bad0:1002 with SMTP id d2e1a72fcca58-81b801ce2e1mr4583446b3a.66.1767851036108;
        Wed, 07 Jan 2026 21:43:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHnGXvVBwjg+OlVqdtRspe68mdXj50cfZhBEQfYeS+shK2KO7XbARsjqeuwfs2lK6B+sXzLIQ==
X-Received: by 2002:a05:6a00:3688:b0:819:bad0:1002 with SMTP id d2e1a72fcca58-81b801ce2e1mr4583425b3a.66.1767851035574;
        Wed, 07 Jan 2026 21:43:55 -0800 (PST)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c59e7c16sm6422553b3a.53.2026.01.07.21.43.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 21:43:55 -0800 (PST)
Message-ID: <32f4a425-e181-41ab-913f-55e3dd3b4fd5@oss.qualcomm.com>
Date: Thu, 8 Jan 2026 11:13:51 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFT PATCH 2/2] arm64: dts: qcom: ipq9574: Complete USB DWC3
 wrapper interrupts
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260106185123.19929-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20260106185123.19929-4-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <20260106185123.19929-4-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: xK9cmdYWc7nAgXi9XF9yOHeq0n3Y6rfz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDAzNCBTYWx0ZWRfX4J4UV4HK7APC
 Wj5Oge1rVj3UN9/9doweE40lseLa/fSeZY3LHgjEx7Z5cdSNKadpfDKjwwj0+1lc+ZYiGlIIgr0
 WnUDn/KkRVSnw3/GFvP2BefiCrFEav5BVIO9mBuT8kTl7DA7KkjG7QEg+zrU5JRarINuXnACK6V
 Tj1bLN2sCtC0nsbz/L077oXhyZrVZHEtl/El21rgaxQj3GNdo4onuJ4jTMSW1i2Tg4bpi00DLtL
 rzgEHFUV2c65CHWnREFyTVfDK1Aaz8Netch9Icd45ituRIyThZey+ukLr+F8+Ub/lA054r13ZgZ
 RQUdl3qs+KuO1zQnduQp1OfW7xVleo1cuqsCuleDkc+BESD2oaOvnAwWSN3MP+mlcmXu8pDsStg
 HLBmmzjJZo78VVqcNEofV//BJ5fPQ1mlMBRqxwpBWnlU8mFHIfTlYayC0wDcw8LsAbNdRvLIfZ3
 xlu6eesbIt0r6516z5w==
X-Authority-Analysis: v=2.4 cv=P7k3RyAu c=1 sm=1 tr=0 ts=695f441c cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VcDojdCpVXZduQiRT-wA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: xK9cmdYWc7nAgXi9XF9yOHeq0n3Y6rfz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_05,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601080034


On 1/7/2026 12:21 AM, Krzysztof Kozlowski wrote:
> Complete interrupts for DWC3 node to match what is required by
> Devicetree bindings, as reported by dtbs_check:
>
>    ipq9574-rdp433.dtb: usb@8af8800 (qcom,ipq9574-dwc3): interrupt-names: ['pwr_event'] is too short
>
> The actual interrupt numbers are taken from reference manual of similar
> chip, but not IPQ9574, due to lack of access to it.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>
> ---
>
> Not tested on hardware.
>
> "lack of access" = no IPQ9574 at all.

Initially the SoC was named as IPQ9048 and after sometime it is renamed 
as IPQ9574. But unfortunately, the reference manual is not updated with 
the new naming.

I can confirm the below interrupts are correct. So,

Reviewed-by: Kathiravan Thirumoorthy 
<kathiravan.thirumoorthy@oss.qualcomm.com>

Thanks, Kathiravan T.

> ---
>   arch/arm64/boot/dts/qcom/ipq9574.dtsi | 10 ++++++++--
>   1 file changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> index 86c9cb9fffc9..d7278f2137ac 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> @@ -765,8 +765,14 @@ usb3: usb@8af8800 {
>   			assigned-clock-rates = <200000000>,
>   					       <24000000>;
>   
> -			interrupts-extended = <&intc GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
> -			interrupt-names = "pwr_event";
> +			interrupts-extended = <&intc GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&intc GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&intc GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&intc GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "pwr_event",
> +					  "qusb2_phy",
> +					  "dm_hs_phy_irq",
> +					  "dp_hs_phy_irq";
>   
>   			resets = <&gcc GCC_USB_BCR>;
>   			status = "disabled";

