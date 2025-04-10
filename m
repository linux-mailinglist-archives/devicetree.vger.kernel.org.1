Return-Path: <devicetree+bounces-165575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB87A84A56
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 18:46:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96A5F4C076C
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 16:45:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D14C81EDA35;
	Thu, 10 Apr 2025 16:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aQ89n3SC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A30B1E8359
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 16:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744303530; cv=none; b=bhX9xqRBMxSSMnYwZnoPns8lga0xvMl0+vCi2VTdmUSNiG/1lnAfuwyNRv1CioJUjwd+3p6LxNo3Ais3+WYRWGhwiTbTwRQ8U3IxiFY24H0+JUbR5AhHSmPephDSIbRx22BX0rz6DHNvkXPFjjj7/d/k4rGwZVk+ouSWJ3Wekqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744303530; c=relaxed/simple;
	bh=toVJxsCZs0mg/KzWrt+p1Cfv80tQV9ZwpAdwDsA5bFI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c4eSxUKS/5bESQgelFbQ3MY+D4BSrkxMt4yjfCVB/9t/nnISDMnRtOBjU6hXLlL2Rzg9z7kiFOXuHGHT9HRBSildUqSYKX69n6Rz0Vq9xyop1LJT29j1aYj2ljf9w1D+dcS0/IN9Y5hof67ThaimRfwTraQ/pUGHc+D5u3GdK90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aQ89n3SC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53AFp8jX013900
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 16:45:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ph/TwOTsuOoy4t0qHG6t8cyk/gjzDnjqER/+zz16TPY=; b=aQ89n3SCYgvc+r/h
	oLxkgC0o36UAmeopbqy1nwC49N/O1E4NRAE/AsKsNhu+3kZCZ/le3ecT9VeIZTFc
	TqeaWumIopb7jfWlIVyBi4loalb472U5Xjjaopx0ldL+FfDZINUa6fl6FozNQZT/
	AjjruQCpNKyTfXio7OEL4sssUUutJ8ICOgi4th++XHwJjzqmACGysNGWszQhkd9S
	UCeqs0b+rYNtoaPMj5qmEQgQ0SzqZb22PwX7XhItOU/71zZ7gJMIJmbgb98KIVoT
	SzkuySueXEZ9VouVtGIInrvN0psSkvy6lUokFb3hYmlQGHsB9P+j1XwvUvIY5ydr
	t3SpOA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbefnt2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 16:45:27 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-47708fd6446so1623881cf.3
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 09:45:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744303526; x=1744908326;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ph/TwOTsuOoy4t0qHG6t8cyk/gjzDnjqER/+zz16TPY=;
        b=nKdmqJpsDfrjLKr0P1VAko2JnhNwj3xFhlHZQ/sIkMtlnUthSwqWOs6DvAZaahsgzp
         FFWYVUsSoy48Iu6VkDNkbCBq7ajQFqcsyzVHWn4XeXNGhAUiriKHiugqt7M1AF0orufq
         5FYDUPwKS1nkNqzOPWnyfqSlSOgNnXbEIXd/6tj+gGcuJ4OvArhFgKEodxeuquPRxdu8
         n2DMD8KizPHgIwuw8Z00YJGMRvdeb7v1P4l8tWGdwWhPuk6p+4kuyz/yUGhvwOOFA5eU
         cwehxUImzQQj7rYwrvDlbOxtUjJtY6vWrnjd1QAA0jN87MOFCz0OY4sFHkGFt9otla7L
         bwIg==
X-Forwarded-Encrypted: i=1; AJvYcCWlwPLzoQhJ5nIl+hDw4XtIdnz8vYxcGVat0X4kk6l4ywUJXZ32/owe3jBJtlOzcyNtA2yXELzEX/Zq@vger.kernel.org
X-Gm-Message-State: AOJu0YwTdOiLeRLwraT9tIsHrYCigf+Cs1Uo913TrFk7JFeFWiEO51XZ
	xL4MRGaHxQbAIxGHuVaspFJsIs007YMKHqvALCyDq3uVcn/JbrRriFt1hIHe3opLwkmLrHX0PA5
	nSYYtaWyqifAD2Elt8j8k1Tiy6W7RMgClJ4lK6OgHLNY+8eBpAvwVa0ia/2iK3zgiUdz/
X-Gm-Gg: ASbGncv8EmtYmG0Vad8qQxeoXPotCo39NBl15wmjjDZF9uE7Pbqr6Kox1S3dmxlvlVu
	RTLZQ7VYiLTS8A7PanroaslwevlzzMPgSemFH/d5VrdljMrkmkR5AZnCuqQCEvVhoIm/5c3CxT3
	zKLckGnWNR7SDbL7/rUyfZG75uoSPNVrgEEjs/h7CtN8CPK0iir3Ime9mFUen0rHFPyGehRsUEX
	WmguTHJQOQyYLyc1TBuj5RuZP4sfI9uk13kJC+IeeBsKdwIeKaLowhsx83AIbf5f7pCGNXM5ej9
	fPpFkULLKfWuOsyfrXnJGOWM5y09UYAKmZUdkwEvSQKUgXdR7zOSkRudZkGJi0HhxA==
X-Received: by 2002:ac8:5f83:0:b0:472:1573:fa9f with SMTP id d75a77b69052e-4795f342813mr44890851cf.10.1744303526230;
        Thu, 10 Apr 2025 09:45:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMOsdJr8nkMh+4BrEppKUlcMKOoa1a/rNq4t2HypiDG27rcGHFnEkG3dzZlHVO8pov7a+rqg==
X-Received: by 2002:ac8:5f83:0:b0:472:1573:fa9f with SMTP id d75a77b69052e-4795f342813mr44890711cf.10.1744303525896;
        Thu, 10 Apr 2025 09:45:25 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f2fbc0673dsm2618728a12.19.2025.04.10.09.45.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Apr 2025 09:45:25 -0700 (PDT)
Message-ID: <e87220f1-bf8e-4014-834f-ae99c0b032ca@oss.qualcomm.com>
Date: Thu, 10 Apr 2025 18:45:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: msm8953: Add uart_5
To: Luca Weiss <luca@lucaweiss.eu>, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Felix Kaechele <felix@kaechele.ca>
References: <20250406-msm8953-uart_5-v1-1-7e4841674137@lucaweiss.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250406-msm8953-uart_5-v1-1-7e4841674137@lucaweiss.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: jX6AoDD8NvZSHWzhMPQtMe8v9ZTgfocH
X-Authority-Analysis: v=2.4 cv=T7OMT+KQ c=1 sm=1 tr=0 ts=67f7f5a7 cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=TyM6OeZ_AAAA:8 a=dlmhaOwlAAAA:8 a=EUspDBNiAAAA:8 a=Zn5KjoL0Do0GK0u-booA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22 a=RxdkCTCKa-xTImXFM8fo:22 a=y4cfut4LVr_MrANMpYTh:22
X-Proofpoint-ORIG-GUID: jX6AoDD8NvZSHWzhMPQtMe8v9ZTgfocH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-10_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 mlxlogscore=999 lowpriorityscore=0 adultscore=0 phishscore=0 bulkscore=0
 mlxscore=0 malwarescore=0 suspectscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504100122

On 4/6/25 3:52 PM, Luca Weiss wrote:
> From: Felix Kaechele <felix@kaechele.ca>
> 
> Add the node and pinctrl for uart_5 found on the MSM8953 SoC.
> 
> Signed-off-by: Felix Kaechele <felix@kaechele.ca>
> [luca: Prepare patch for upstream submission]
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---
>  arch/arm64/boot/dts/qcom/msm8953.dtsi | 32 ++++++++++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8953.dtsi b/arch/arm64/boot/dts/qcom/msm8953.dtsi
> index af4c341e2533ef2cca593e0dc97003334d3fd6b7..3d6ab83cbce4696a8eb54b16fdb429e191f44637 100644
> --- a/arch/arm64/boot/dts/qcom/msm8953.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8953.dtsi
> @@ -767,6 +767,20 @@ spi_6_sleep: spi-6-sleep-state {
>  				bias-disable;
>  			};
>  
> +			uart_5_default: uart-5-default-state {
> +				pins = "gpio16", "gpio17", "gpio18", "gpio19";
> +				function = "blsp_uart5";
> +				drive-strength = <16>;

This guy's strongly biased! But it looks like that's on purpose for
these older SoCs..

> +				bias-disable;
> +			};
> +
> +			uart_5_sleep: uart-5-sleep-state {
> +				pins = "gpio16", "gpio17", "gpio18", "gpio19";
> +				function = "gpio";
> +				drive-strength = <2>;
> +				bias-disable;
> +			};
> +
>  			wcnss_pin_a: wcnss-active-state {
>  
>  				wcss-wlan2-pins {
> @@ -1592,6 +1606,24 @@ blsp2_dma: dma-controller@7ac4000 {
>  			qcom,controlled-remotely;
>  		};
>  
> +		uart_5: serial@7aef000 {
> +			compatible = "qcom,msm-uartdm-v1.4", "qcom,msm-uartdm";
> +			reg = <0x07aef000 0x200>;
> +			interrupts = <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&gcc GCC_BLSP2_UART1_APPS_CLK>,
> +				 <&gcc GCC_BLSP2_AHB_CLK>;
> +			clock-names = "core",
> +				      "iface";
> +			dmas = <&blsp2_dma 0>, <&blsp2_dma 1>;
> +			dma-names = "tx", "rx";

Matches what the computer says

It's more usual to send these together with a user, but I don't mind

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

