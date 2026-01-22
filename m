Return-Path: <devicetree+bounces-258430-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8EpeAs8vcmmadwAAu9opvQ
	(envelope-from <devicetree+bounces-258430-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:10:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6885367B6E
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:10:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1E84A8C71FD
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 13:56:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F248C33AD90;
	Thu, 22 Jan 2026 13:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MYENWwUR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Uv/anQSK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243443396F8
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 13:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769089929; cv=none; b=D1cvAyegLUkMMvX+aOu/XaT1WY0dfTOyH7CWuJNJUyjTxY9sxbJnl/OKQTmT/EQi6HSRjFE8etIHwF/BaeFTbUUBco4a8KcYxIxuhLERAzRlW1b0VuafFtbAISoaGUWegPF0UW3dALVyR7F0nErQKn+RORtf5Y9Q06lKXBhtLE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769089929; c=relaxed/simple;
	bh=ga65sxhAJHUJji7O9oQdbmcVOPqKYXj//T9LW9mrHM4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JCTVcU5DAEkpLYAZcKRmejSx/qTuAG6rktXSIgEjacoxj7f/m41RDL2L5rSN7pGIgHMT5Sw2WkBWTJf5Ep6IXYtniXILwFEA88XG4MU35ZJ42WI2j4d8inmfgnwtRRkOCah/xQMjbvvvnD55cc7TWl7L0uWJJDZhDs1iGAlVYKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MYENWwUR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Uv/anQSK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60M7dfZv789137
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 13:52:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+bm98CmvFPw6HMS+ib+QUJlqZTUeRxHzvB5wxnthCqc=; b=MYENWwURaWmwn5Ry
	dn5ZDbAyw1DFmkp8dtzansCv3ZU5ljWjEppOx51JGA8OZUl9Lffx8dVEZ2fvFG1E
	5jSrJw4MoA5WIpsWXUTGpUXUubYrvmBlU3XaE5MUyvh6XNq8XfZTO9jR/5tlH21o
	SUKf4TfC0Dk802+WlbY4R2iYeSnideTnQZkeLOzffS0hiCJ8q4whSy4SPDM4xeRi
	gbgObt42cBi1TjLCy+hIkjkr9nTwUtKqd85lrRajdyLoVrIt+iHfIUIzk1JaCAKQ
	E7jr9B4UmDDg+C42SPVh5Suaj09RtR/hqUF0TGE6NSsSH8/B7ulJENkanhTRDUBI
	1xwVJw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bu6p1jkw5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 13:52:06 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c69fd0a87bso78571785a.3
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 05:52:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769089926; x=1769694726; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+bm98CmvFPw6HMS+ib+QUJlqZTUeRxHzvB5wxnthCqc=;
        b=Uv/anQSKWh4IQ3j6nZJhSLT9izJ4IVZyY8OY7CXdF71rsoMWOPCj9mmTb01GH/rN/e
         mdUWZkzQFQ1CYtDdxGinkp1OxwX5A2fu5be6b75OC7VbHUbN+OUjsIICIQiSkLT8mTJk
         Rvm13NZUbqAchZQWem2d5Ksbv6C+ohrIuB5teY1vBO/Pr0dy4lc4urdWEFvO8ZwgVNwi
         HT9vUsBCQUz6ldghRHx9E8s+qS5akutHXXJeB3pQUS7p2ovi2GtJz9lDM9hfaHo8TCXs
         NIzPBars/iubXklWN2I3c70Osy90ch2vUHPfxFtdzR2JlDoDl3QjoixmbaTdNuHA3FKS
         8Cmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769089926; x=1769694726;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+bm98CmvFPw6HMS+ib+QUJlqZTUeRxHzvB5wxnthCqc=;
        b=c15mYgdp8jhQS2CWKS83eK6XaB+v1vTqJ6mN5V0UdC7FWNP1i1z0U1wfnxgwJj2USG
         J1MuO0hFlExp6m5x4JlU4hcnKRtXZlUGB/isPQPqEI746xgG4xgIT6CCB09fSVgMsYq9
         VmB4GU5aVg93Xh2ERYcflkZqceMU2CGEXqg96N+7WXOQKNpbrV40ierDF+mhjStuJbcF
         S140W2FHqRTSamRLkAb9bgf339IzpHI3TRBt7GmPJjER/2ZS67vCwMTjZNtJxZeZI49M
         sfoZyJQ9+1iDACvQe7WPWLZirZNwbPtuSYdH/pbcrWPfdf7NF6pCuIixl1aGlMBZdE2O
         wDJA==
X-Forwarded-Encrypted: i=1; AJvYcCWykxOF8wU499d7j5r29lwqPBJhPE+BqpWEXQIqKzCI7/vQGeOFlptUOck7AqRqxVEQOnxgZVmFWobB@vger.kernel.org
X-Gm-Message-State: AOJu0YzcxuL2pego9lZfHliZIPvAJVO4rj5zZvSuEklKnLKxy7gfznRm
	bI5oIfh6PQs7TPcNowVwAAjV8bVB6Z6C8XyiL6L3POks125wEmt/g5imTLKEbZeL4rhafe9oFDD
	G+FRIMeigX0ghw2QCEvPxfWTlikBD4nySA8h1KhQpXzU3EuBezmf82UYJGUWIFJl8
X-Gm-Gg: AZuq6aLVcqsnPMniBg3kqMr4G739P45H4pD2UgQxS22h1i2wfOos1t3oXwVnByv0DwN
	DRyk0AXsj1LpXKklTt6Fn0H8suhfZyroQRVtj21yXCwVRzzUB0JK2F345Gtz57eSLzcLrDZfDHH
	/tC8A0Y5ZjmqFZwqaIR8WBs1tqEiY5alY2L3lx3xiftCUbzQ575gH53aRFQ+/obhLCKr+gkgnkX
	FPXtQlq0VS7M7wX5EIa6xv/dPW1K1DITxdInx/txHPh8cyqeH3h31BVuTCRvcuzGiBzvoy+5PCS
	e/SoieVFRFFFR2FfZpPrHuJEheosLS9yxl2NGiKmUMtpsAXBUE7bvpmR/jvhDaKYPMxbpZva65i
	NE4FfCc7SBZQJckGDOoTNew8oQbKg1X6DHPmvR55T98/rFB0BVgnoqfWrxPOcuxhOkDs=
X-Received: by 2002:a05:620a:6c0c:b0:8c6:afd9:e422 with SMTP id af79cd13be357-8c6afd9e501mr1871029285a.9.1769089926432;
        Thu, 22 Jan 2026 05:52:06 -0800 (PST)
X-Received: by 2002:a05:620a:6c0c:b0:8c6:afd9:e422 with SMTP id af79cd13be357-8c6afd9e501mr1871026185a.9.1769089925949;
        Thu, 22 Jan 2026 05:52:05 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8844f235a7sm62815766b.45.2026.01.22.05.52.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 05:52:04 -0800 (PST)
Message-ID: <6ce5a785-7677-4b49-85a8-2e461c45e6dc@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 14:52:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: sm6125-xiaomi-laurel-sprout: Add
 Focaltech FT3518 touchscreen
To: yedaya.ka@gmail.com,
        =?UTF-8?Q?Kamil_Go=C5=82da?=
 <kamil.golda@protonmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20260120-touchscreen-patches-v4-0-30145da9d6d3@gmail.com>
 <20260120-touchscreen-patches-v4-3-30145da9d6d3@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260120-touchscreen-patches-v4-3-30145da9d6d3@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: ojaTEfh-CyK4wLjXXL5xZx26AIC5j0uB
X-Authority-Analysis: v=2.4 cv=N7ck1m9B c=1 sm=1 tr=0 ts=69722b87 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Uyhorv2uAAAA:20 a=pGLkceISAAAA:8 a=sfOm8-O8AAAA:8
 a=6A7nkN39ng_kv1CiDcIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TvTJqdcANYtsRzA46cdi:22 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-GUID: ojaTEfh-CyK4wLjXXL5xZx26AIC5j0uB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDEwNCBTYWx0ZWRfX6oCoLslrDp7c
 XLqYAMzl/3oLgdBEQneiaPyTwToDfi2bxrSQGC++YcwzLuvY/f1jHNaeTIx//USwl04sSHpBIlj
 YmQc3lSwJUwVQt+fXPuxO+rkX84SS/68gDPB6vQDRXCZYVF2MbI1Jf/dPzkeB5BnN6CHBe2eLUy
 pNQE7wsaLhieY1Vn1T4nToGT2VxF1oF+GzodwZGnJWUB23KrndC2i3zU4Fd4dwa8oPSazO1bTo9
 jQJY7oQ20ZAta028CGoe9DVDJrSxqMKrJpQHKxLzN1mNEbyNabS4cD2zsdWOTIhmPIERsgqzfvN
 vBrJJdAeGmiFJDpH8v35kCgh0SLizIiV3aiu2jCDhn9Kzo1vx/VX6oIC6ycWkajMMqxP08uO6A0
 jyEWkRSTYO9uA65G8Kg5w+/Ni3yGogDkXnN/E8VBMXZM4DPr66ytTRBai0k7ayoXCatoOtK2Z/g
 Atp5NUEfmxXfhmw4cyg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_01,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 malwarescore=0 adultscore=0 impostorscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601220104
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	TAGGED_FROM(0.00)[bounces-258430-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,protonmail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6885367B6E
X-Rspamd-Action: no action

On 1/20/26 10:40 PM, Yedaya Katsman via B4 Relay wrote:
> From: Yedaya Katsman <yedaya.ka@gmail.com>
> 
> Add device tree node for the Focaltech FT3518 touchscreen on
> Xiaomi Mi A3 (laurel-sprout).
> 
> Note that gpio pin 83 for the regulator isn't documented downstream
> except in the touchscreen node so it's not defined in the tlmm.
> 
> Enable qupv3_id_0 and i2c2 bus that the touchscreen is on.
> 
> Downstream references:
> Link: https://github.com/MiCode/Xiaomi_Kernel_OpenSource/blob/laurel-r-oss/arch/arm64/boot/dts/qcom/trinket-pinctrl.dtsi
> Link: https://github.com/MiCode/Xiaomi_Kernel_OpenSource/blob/laurel-r-oss/arch/arm64/boot/dts/qcom/laurel_sprout-qrd.dtsi
> 
> Co-developed-by: Kamil Gołda <kamil.golda@protonmail.com>
> Signed-off-by: Kamil Gołda <kamil.golda@protonmail.com>
> Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
> ---
>  .../boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts  | 65 ++++++++++++++++++++++
>  1 file changed, 65 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
> index 994fb0412fcbdf5466f87a325c48b697a37b514b..ea9dbc6927a14ca66da818b81aeb0c95ec3c2e7a 100644
> --- a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
> +++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
> @@ -82,6 +82,18 @@ key-volume-up {
>  		};
>  	};
>  
> +	ts_vdd_supply: regulator-ts-vdd {
> +		compatible = "regulator-fixed";
> +		regulator-name = "ts_vdd_supply";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&tlmm 83 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;

Ideally you'd add a pin config for gpio83 too

[...]

> +	touchscreen@38 {
> +		compatible = "focaltech,ft3518";
> +		reg = <0x38>;
> +		interrupts-extended = <&tlmm 88 IRQ_TYPE_EDGE_FALLING>;
> +
> +		vcc-supply = <&ts_vdd_supply>;
> +
> +		pinctrl-names = "default","sleep";
> +		pinctrl-0 = <&ts_int_active &ts_reset_active>;
> +		pinctrl-1 = <&ts_int_suspend &ts_reset_suspend>;

property-n
property-names

in this order specifically, please

lgtm otherwise

Konrad

