Return-Path: <devicetree+bounces-167510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 62270A8A977
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 22:42:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F10583AD594
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 20:42:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D72A725525E;
	Tue, 15 Apr 2025 20:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TYVt+EkH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2446F2550A1
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 20:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744749739; cv=none; b=SEZWvngvg4TLg9ijZ9c7uVgXb6gjiwd9FdZ0aBjSxPMlh6sFP2+dAOS8LiSC6GEfHOc8WfZFXLBegICx869Ss8UouoktV8iA33cAgvaiZsT6d0w9QWd8zvNKRAzxwnP6a4EsHSXPGpRyRFfjNpB5nwE2ZI4LtZy815ymmAFrtmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744749739; c=relaxed/simple;
	bh=8+r2FGp7NpPSlTBV3si+uV2IgqEpMlSZHG1cbkO+uo8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DyUFUQfzfZKfuVt/z5+0NHDhb65833zrF64Sgilo0ZeirWHDZLXSPrpaMMvJy5zhINk1g7Yzze3Fvd/c1ih8DyaSw3Hsa/KL5kBYeExhIm1sq33iJC6jR0jMJq0cinVXe7Y/K9yyNcn3zkpTA6Z2k6icKbDj/fr7BucG19Lbw7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TYVt+EkH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53FJG49L006072
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 20:42:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mU9Ng0qug28Jh4BDCJoMLEhkmy5bjFM2h3Cuyk4xt98=; b=TYVt+EkHPDM6kZr1
	l/mvdfuKM+Cd566VctX17vyF4J8zHALt44KMIRS1OQRLFYbMFvKesP/8Yhrm/zFt
	MVa0Cvtryzmgz2jPKJ2vC0gI+f59CcheYIne87pVvwqSN7C+yR/GQ4gyp5RkPdUT
	du6KcwJ9Lpa86vDA6nw8EBfZuxv9lvAOYFoMNPnd8M35RhQfz13jMjTDAEmrqjFU
	TYW3I3UH8QZVjmzENTxG0a2kwTUTtC1nF4SferYRDgXAc56amifPxJSCFlADOXWa
	F0klwHCpPSecp9rVQaB+EICMC0WweI5mknXPXPA3u5Xs+3nZVqhtq7uPg+NMP2/R
	Qs7A5g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ydvj9hwq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 20:42:17 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e8f3766737so13383806d6.1
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 13:42:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744749736; x=1745354536;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mU9Ng0qug28Jh4BDCJoMLEhkmy5bjFM2h3Cuyk4xt98=;
        b=F4Xcf8Jk1NGTsGvSWdV0Pf1dMlecSgIzagjU3f6j8WZSKOMLOmO8SV8US8C/5176JH
         xslJvSOyG3EgtP++VDKV2p7Sl7tmvC5ncKe2GS1c0dndoxgfhflnjAik0hv5Kn3pQRw8
         oLU68U5fsf9PzwAVSEIV8NJ5dFLw/PHCg+TdAxFKtgxQIQWqADynmiJ1OR4IxyZUvJLQ
         WosLx+AE51BXfXWcAeFAS3eRCcRkQhvB67IM56eG4DRkqeU8Hv0hsDoejXJpkjGU+iVM
         F+IXnt0yVVfYr/3oW4MguXFP+lN6SOHOBG7Bh9hgRrz4xHK4m63Ninep5yUN+sxC7Hfk
         j/kg==
X-Forwarded-Encrypted: i=1; AJvYcCXc8+ZhHtVa1p+0GQJLp6/7+vQF9pki1bd8vcXGss8/I1zC5EmYxkQ1tWFvnHXY54GTBnoAcuE+/EtY@vger.kernel.org
X-Gm-Message-State: AOJu0YyDcaj1nTHlnTQkwyNRabtButvVRhU5RMCvDm2t14VUepcnPeeJ
	If4HdwWUmLaxAGNLzN/dA5RWtc2PRwzCIYMMSnTxGo9c1DnlHnbOkBPmrY1SdnaphRuT+kmpO9O
	DF5ggH6Ai3BdPmB1vr7UtlaeX3zRXGCLhfbHsyebII2pfVLex6SyB6T9gfAQ2
X-Gm-Gg: ASbGnctmRcA2qEsdKG49TaU78Cx+dYonn1qhBlkY/u8pl7ENQXdzBhl6Kpjr68iXDbU
	MLpPU2emoPzg8ezSniQq68ERCvG8ZhJXjrUG7tt7nxhD/WLaG/yEAZ0Wz76hWCWNA0Oy1M1mOi+
	HfBvz2UKABjzezysIfuROShRGyD7q6rF1UwqAeocQ90FVRUwCcb+secOihaeEWXz/vIJ+4LWxsv
	xSVR8QIQaPEr6jL7hWPQRku7Wq63pmWTx+aDSDevCT+YGWCFNzuLRFYW8kX0w2tRuGGc+PwIoW4
	ZFTvAKmIn3x8MpakrstauWHo3y8k8E1Wc8H0lGuE4l9AnYV0+l/2ZvQpRp9JOZprfjQ=
X-Received: by 2002:a05:6214:4388:b0:6f2:af37:d876 with SMTP id 6a1803df08f44-6f2af37db46mr1007486d6.0.1744749735943;
        Tue, 15 Apr 2025 13:42:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFYZ8eiWZEjmrL8B6TQt0du9E9d6llGXA7T1hyo8KqVSDqUVr9v7jg73YZI0D4YR1szkACiMA==
X-Received: by 2002:a05:6214:4388:b0:6f2:af37:d876 with SMTP id 6a1803df08f44-6f2af37db46mr1007326d6.0.1744749735572;
        Tue, 15 Apr 2025 13:42:15 -0700 (PDT)
Received: from [192.168.65.126] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccd223sm1163106866b.133.2025.04.15.13.42.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 13:42:15 -0700 (PDT)
Message-ID: <6a60dc5f-a5ca-4e59-803e-081f2bf39c37@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 22:42:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/8] arm64: dts: qcom: msm8916/39: Introduce new UART
 console pinctrl
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sam Day <me@samcday.com>, Casey Connolly <caleb.connolly@linaro.org>
References: <20250415-msm8916-console-pinctrl-v1-0-a1d33ea994b9@linaro.org>
 <20250415-msm8916-console-pinctrl-v1-2-a1d33ea994b9@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250415-msm8916-console-pinctrl-v1-2-a1d33ea994b9@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZIrXmW7b c=1 sm=1 tr=0 ts=67fec4a9 cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=24vTPU9P1E0Q2TJVNyoA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: oMK0vSqTn2bd7-E7hxdWsPS1U-nRTr6t
X-Proofpoint-ORIG-GUID: oMK0vSqTn2bd7-E7hxdWsPS1U-nRTr6t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_07,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 mlxlogscore=697
 spamscore=0 impostorscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150146

On 4/15/25 3:52 PM, Stephan Gerhold wrote:

[...]

> +			blsp_uart1_console_default: blsp-uart1-console-default-state {
> +				tx-pins {
> +					pins = "gpio0";
> +					function = "blsp_uart1";
> +					drive-strength = <16>;
> +					bias-disable;
> +					bootph-all;
> +				};
> +				rx-pins {

A newline between the two would be appreciated

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

