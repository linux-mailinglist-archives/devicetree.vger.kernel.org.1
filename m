Return-Path: <devicetree+bounces-248192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EC0CCFC07
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 13:19:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 77A3B30088B5
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 12:15:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22D1232E744;
	Fri, 19 Dec 2025 12:15:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MQWK+gld";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hmkm+qXH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99FDD2C11CF
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 12:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766146507; cv=none; b=QfRTC+BYn2biq3q9UUpMmy0+Bs/LDR1R2QthFhna7DYYs1vLJIWG6V+k1U299y61fdPpIlx8jrQ2iU1hguHRyydLFRXh8neWcP5NV0ggJ3FqgCDbuM8AUr2XxyZOfjXswMNmHhuVf6FiX15vEWJ9fU5EyPL11B9vCf5jsresejU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766146507; c=relaxed/simple;
	bh=UQFnqfpoGaxH3DpBNuTdo+sgVnPba6y9y0VF6lSdj8o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bCFL04M24Mz7Nf0SUH9XCUNVQA8T9PWrNrLH9pfcoPVwXjaQoLRS86dCZ7PFYmfbPj+h9C7xHkf3NCb9b2fMdrmQz1ubkYwPpd3GnREKB8IfjsN4BDyZjPZiAaK98HJ2o/GCr2QW1Aq4WKvhgS/GZ03czOO3KEXVKFIAbjngcwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MQWK+gld; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hmkm+qXH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJBgTRj3991646
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 12:15:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nJw+rSPPz1j+Hiy4cMx22Rygn7YhcBCsDSvGWid4WXw=; b=MQWK+gldS/PiBNrJ
	CunZG5Jb25eEO3waYTaSsU5IAU8BZN2cwx+u+NciyiHK6gXHdEI8IhNZDWUqiIiU
	BnPJoX94BW9iZVjPLOSl3bc67awa3qEOSUGXxs+n75eCljM2jFBGev+UC0/0jn+i
	69Xmy5H/KSKFxAUyx6UeHvrtzzgfq+qMetPrYUYtEnqVKZMK9y/vWyk3hfzeadbW
	u4McahLmaiKLTjdJYIokAHu7O/bLFpV0XZckTaQfGEpjdy+EIMVPGHjrZ5VNKZsC
	TIAQCfM8FEJEZ/LpgQdBROHpwg0+AfpDQ31Q21yOXe4SW1+iN610xaqJjMkI3t9f
	g9sR/g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2dahe0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 12:15:04 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee07f794fcso3896141cf.2
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 04:15:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766146504; x=1766751304; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nJw+rSPPz1j+Hiy4cMx22Rygn7YhcBCsDSvGWid4WXw=;
        b=hmkm+qXHJJoqV4MLqOb9kEFkLsGY2tj+Y22P3cvyghtoZzLvRltNRKQcca+LYpmN2g
         7xo2mJmQSSf4eK6HoGzmlgvkZZl4+5oYHzd5iiqrvJDjKSXuRDLHA1RKvo8N44x7ZAfK
         n1B/OKBdYGD1fFocBP29BCHpZwcYNsyZJw8HJeoGhKf4umZd5FfJuFGas2/NbmZuzBoO
         WP94q6rXPd5x2A6VOVRVMFuF1tG6nfr7+wlXsYpq826RZau1FI9/3GKmSn/8opFBWhS2
         YTf49s5yg7zrEc1N2x1g4p5Sf+wZHkODkf8BDE3cuziVHTKJIzhZxiGzl/RgDTKEY647
         x4+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766146504; x=1766751304;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nJw+rSPPz1j+Hiy4cMx22Rygn7YhcBCsDSvGWid4WXw=;
        b=Auu9/7N98dIuqe308thu+QzkfypVS7F9cTyGEO/cjLo9F14li0mViogRcK1Yqhj3K8
         KH2YzVW0Spn9WauZpHrD/foIylYFu+1AdNlDLNphkacVgxfyh2yVmV6J+3GsfazBTIFE
         EL4a79qhZMJNvGd/yO4SuUbrVTPmzNuGEAmPb0hvTCV1MJOpgwXpIwYFpC3k6qkJTjmh
         Vv9bewej/UqHDstaoGSWBu9TgP/5eCWzO+aun/yGDr1b/MFXiX/ESTvqJFYgeO0BvrdG
         QT5STc95RoFJuO+IhpZ1uGeCXpos8ZWKdk3qqgicMCfqh5DV5RYkJuPUhYNVy4u3Pb4R
         AKiQ==
X-Forwarded-Encrypted: i=1; AJvYcCW/BWC7giUg6x7UM8vSbETkghuItyZjF/s5F+UW65eSUE0JwsYe5ua6D19rB8EYMqezSP5SGo8o/RVS@vger.kernel.org
X-Gm-Message-State: AOJu0YyZ8jNEOzSeRgK4ZMAl1Cg1h1XDfAQi+HuDhGdIvdmorevJDDHe
	Wc8L0mmCsuzNhxrVEmd5AkqjMznxjbgbIAUn2FTXgQdcSgBoTzkimUgfoo0WZIVfUJnZNJIabFN
	H3i6eLQM8PYqOuizDTDV6gm5TT42ZkuN3MC3NJKS5m1gPbtHUs1jzSCGNOhXntY6r
X-Gm-Gg: AY/fxX61ZgYcu1+3wGZG5YMAHSdZ9iMJNMTn4+3vkaOALcXJl5IrDIapZy/dvg0ZLSn
	Ld0waAKePcUAYsln9b+nKtjDthyr7J73Cr5rzbxGZ1dNUzEcD8stvQy7QZMIQsscIVehCXiB/a3
	yCQYNBKgdG1+cgcDw+8byDIpjSlh8rjJh3nxsb1qh5CW8LzvNnLLCBNCoI6mGU0KhFWblmYH4+w
	3szga6brSp3VegNMrPYmi5BO6K1HzCInFGm0nKRbrXyN+hL+ysuS49RhuXneWMww904dNqkD1u2
	XlsWw/bpIh4W9DSEke5kP/MN99xPLR/AHjIhHSPZbhyL23n3nsItTyx08nYkJaX22ar9tTtJ796
	e3DrNXBrruY7Izuvkf2k7HUHyjel3lzsjzSrUf+Jk3y3Id59wygbx3qFJFyzXcL0s1g==
X-Received: by 2002:a05:622a:1983:b0:4ee:1924:c6fc with SMTP id d75a77b69052e-4f4abcb50acmr26037961cf.1.1766146503786;
        Fri, 19 Dec 2025 04:15:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFS4HkabLGuyRUOhz91CuH/IhIGHY6gRirFt8zT8c/tJwWScu7wuSxZ8hMer6BGze7hP0Yq0Q==
X-Received: by 2002:a05:622a:1983:b0:4ee:1924:c6fc with SMTP id d75a77b69052e-4f4abcb50acmr26037681cf.1.1766146503352;
        Fri, 19 Dec 2025 04:15:03 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f48606sm220723666b.62.2025.12.19.04.15.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 04:15:02 -0800 (PST)
Message-ID: <3fcd274f-2502-4b3b-8a39-daf5e1938bed@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 13:15:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: hamoa: Add the APSS watchdog
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251219-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v2-0-fdfc6ba663e6@oss.qualcomm.com>
 <20251219-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v2-2-fdfc6ba663e6@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251219-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v2-2-fdfc6ba663e6@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=AcG83nXG c=1 sm=1 tr=0 ts=694541c8 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=aBc-ZM-XDHzdhv_eksEA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDEwMSBTYWx0ZWRfX1Gwt0KgqzAic
 cym5gRwtVOnYg/VYL3ZBIslJGwKVnOECW2fdrOkxxiXUMtE7G39pwRHXokHDwSmMSClIcDsnPxd
 K3Wk/BnXM8NbvUU+nEPnsk21QvRKQseyQi28jqsoSda39rQf/k9GQ7aulQJ2JQRcwi/LsR8yAn9
 WxxJDnz6dX0CFl+jtlxj0VVKbhjrYNg68XZdtgnu2WBHjL1aCjwzh7kpN30biMLx4m/oWmkrdUJ
 tOzW6kG5OQDe4fdj4auHOZ1YeFh6oDChw+5zPIbBNF6K6wAXdJAC9iwWItRfyMRGDAchV3jLvrI
 waIiYXMI1gSJe4ZrQi2+NKcZ1NpX5jyrdps/7g2viCXscMJM8cdohXnEPyFryWGYP6ZSHR9pCiO
 kZhFiFvns3jyMBZZzAQ/JK58KNhoGuldNrNVH4Pox7cZKBixtEiCo4Nn2on1FTo2DsxEm2X24YR
 oG1I/A/3HPuiSNfFE1Q==
X-Proofpoint-GUID: 5f1QsD020nW0Evq1C_gUPa7g3nTD8LY4
X-Proofpoint-ORIG-GUID: 5f1QsD020nW0Evq1C_gUPa7g3nTD8LY4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_03,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 phishscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190101

On 12/19/25 11:00 AM, Abel Vesa wrote:
> The watchdog support in EL1 is SBSA compliant, handled by Gunyah
> hypervisor, but in EL2. the watchdog is an instance of the APSS WDT HW
> block, same as older platforms. So describe the APSS WDT node and mark
> it as reserved, as it will only be enabled in EL2 overlay.
> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> index a17900eacb20..b65dfad71c2f 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> @@ -8302,6 +8302,14 @@ gic_its: msi-controller@17040000 {
>  			};
>  		};
>  
> +		apss_watchdog: watchdog@17410000 {
> +			compatible = "qcom,apss-wdt-x1e80100", "qcom,kpss-wdt";
> +			reg = <0x0 0x17410000 0x0 0x1000>;
> +			clocks = <&sleep_clk>;
> +			interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
> +			status = "reserved"; /* Accessible in EL2 only */

This is technically incorrect - it's not accessible if Gunyah is
present, which is only somewhat related - if you run a different
hypervisor which doesn't explicitly block access to this region, you
can still access it even though Linux may be running at EL1

Konrad

