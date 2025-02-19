Return-Path: <devicetree+bounces-148283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 73ED5A3B87A
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 10:25:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6423D3B9E47
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 09:18:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A6661DEFE1;
	Wed, 19 Feb 2025 09:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JwQ3U3eD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCCAA1DEFD7
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 09:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739956480; cv=none; b=oTIygjdWPVJapflbnVF4HGfxUBmZGiffHHcD/0f1esMNs7scoRZvsecYOi9QbQJXYMRXy/AA0TizOydCWpzcPdD/Zh7o92W1CCuHUfuSPEuyCExyA6j/UpDB1NTCIJ1BvJJDxHv5MnhLAmqCEXa/UnKixsS3HKdS/oXYOV469RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739956480; c=relaxed/simple;
	bh=vt4rT9YHovWLbL5WKB4RhLCxhRaR2niAMxbUVN7VX5g=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=qjx1r0r2+MmyeGQB8OTm1Atnn7yqlwTu9iP3UYUFBFgdc2cIYyTzGvRSNTl9QxyFmIFE92yYmTITwzozUrooWi7aNEGWwxp8S5ruuX6z2ZGBJRzdlzrwHO6sZeSCIvaVtXApnkkLeaGfrSgfmXLBv2FJDHxguXa5UaU6RflxuXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JwQ3U3eD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51J891S3008437
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 09:14:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IeqopofIxMoJ0SF0tmrZIswJs053GwoXuq3tHJKY+ag=; b=JwQ3U3eDjS18rFdu
	QD8RMrO2cnblEPf0uJyUTzJoKimPTv23FaeuItxIakKDUgjlgS25zrmeqRQzjSl5
	wAuPbsRkf1kwzcTVqOFP4kPgR8/gFzjvp24dxGUQvSc8u55+obvKzpTSXbFiIvo5
	zNUKZJ0gQ9KpYwxmP9amgW/L2WmZmQy2to7zY9wqB/tEmzfR+BGlQBEn60ryYKNv
	Z5i3YMnna4PZYKxtFK5fQEIOh+2R3oG1xpPhwBoBXe0WQnFabnBaQhcWVrzjYoz/
	Lq6joAKV4UvwP3pon9UyfuX8V8R2z+3Wb7lx+RtDETStSDW4FwLRTaQr/Q3xHQNH
	7mWAjg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44vyy39w1h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 09:14:37 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e249d117b7so9384356d6.2
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 01:14:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739956477; x=1740561277;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IeqopofIxMoJ0SF0tmrZIswJs053GwoXuq3tHJKY+ag=;
        b=s0g9WY0INotITMLz0TjzLmZqdzhU1uhSHO1CnAW7P1MXWDo1MUnlNNuY1pDTqKlMSZ
         QmZ52c31Y9EZbH3m05mTpbQ5YWvWVRRajbZ0YOVPG7me/DIsq7b++xbjuCLTjm9yCMno
         mWeEtuFYBAtPb+heSj/PKaAYy6wtPHmsXUgK8ZCDQyoZT9iodSApFH2+icSAXskqCV9S
         uqtA4pU8idB1sGAhHt18B8Nc+6wSBgFG/NZbX3Gy4KblILJuPTknrgpEuPi+aMJhdp+o
         2vmFbvrdv0EZrK2G40R9vgWpgkKEtolmTAeayZROES8OATUtNumRiW3oy1O+goaJSIUM
         raoQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOze2TrndB586/M0LTngyb/PlPVt2qkc1km+77vsomVssTcJF9zZV0FmxI2dOvHOHNxXxqXDBwcQR4@vger.kernel.org
X-Gm-Message-State: AOJu0Yxw/7Vtv8A7mUfa+p1LXCiU6VlrXWWSwTWn9UqgQJCtjxXb5tal
	XtBULmovNdoPb1ztTaE/dwh3WKHug9OfaD5hHIsCds+dYtzl59i4eCUv0IizukZuNatvcBSkITX
	BGseMaU/26EDDU7C9Z0kR6576TZI/x3S/TJbws4szMk4tsgXiPKjGKVZVLaM0
X-Gm-Gg: ASbGncu0UU+M5HXjDME7mtvK/p5a86Ga7Uw+6AhuYUvWq03ocCsn7u5Uwg+/2T7U8kf
	V7DY53H5Fm2uG594N6oNOhA7s2gI9q0uV/oUV+Bws8flZgPBPSioZ8wHMnTQ8qOEqWKjuI86JVK
	FOonBrIz7Q3aVjzKxIg0pDDhOx99ACs10sb8AVlcI/87rn3NMpXzTmkkKRb6tdNvuoef/wZEjsE
	0qPnIMf9y8Y+98D2gm36LtviQ52v8fJshskXscIM6yQArHcRvtbVfo0hl12G8qVV2ZymHCibHUd
	dYlE1X0x63DJjw3xcy0griDGRLeLoOx7UOKQn9rAWMxqM5n2OvHiVKwGroQ=
X-Received: by 2002:a05:6214:2a48:b0:6d8:99b2:63c7 with SMTP id 6a1803df08f44-6e66cd0341dmr83145026d6.9.1739956476887;
        Wed, 19 Feb 2025 01:14:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF/zkeorXc646BRrW5otRU2e8zonUuyZQUghLAIsYLF3ZC3687CPfBC9GiCGPZQsJgcV+PUmg==
X-Received: by 2002:a05:6214:2a48:b0:6d8:99b2:63c7 with SMTP id 6a1803df08f44-6e66cd0341dmr83144916d6.9.1739956476552;
        Wed, 19 Feb 2025 01:14:36 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb916db37bsm628608366b.165.2025.02.19.01.14.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2025 01:14:36 -0800 (PST)
Message-ID: <3c16c6a5-7c1a-4ae9-b865-7ea3c12767e0@oss.qualcomm.com>
Date: Wed, 19 Feb 2025 10:14:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: Corret white-space style
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250219090751.124267-1-krzysztof.kozlowski@linaro.org>
 <20250219090751.124267-2-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250219090751.124267-2-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: CcW08NgplSrxn62k7ZMpq_H-IakO7JER
X-Proofpoint-GUID: CcW08NgplSrxn62k7ZMpq_H-IakO7JER
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-19_04,2025-02-18_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 clxscore=1015
 phishscore=0 adultscore=0 lowpriorityscore=0 bulkscore=0 impostorscore=0
 priorityscore=1501 malwarescore=0 spamscore=0 mlxlogscore=837 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2502190073

On 19.02.2025 10:07 AM, Krzysztof Kozlowski wrote:
> There should be exactly one space before and after '=', and one space
> before '{'.  No functional impact.  Verified with comparing decompiled
> DTB (dtx_diff and fdtdump+diff).
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> index abb92c81c76b..f81a3c3ae334 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> @@ -990,7 +990,7 @@ uart14: serial@898000 {
>  				clocks = <&gcc GCC_QUPV3_WRAP2_S5_CLK>;
>  				clock-names = "se";
>  
> -				interconnects =	<&clk_virt MASTER_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS
> +				interconnects = <&clk_virt MASTER_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS

for those wondering, there's a \t after '=' that becomes a space

Konrad

