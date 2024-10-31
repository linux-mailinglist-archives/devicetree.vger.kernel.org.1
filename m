Return-Path: <devicetree+bounces-117894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0539B8434
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 21:15:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 80DE7283D20
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 20:15:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 015541C9B6F;
	Thu, 31 Oct 2024 20:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Aab7pXSM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66D813174B
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730405743; cv=none; b=ARcTHMJ0INfHBA9yqO6Y+FiS+6o00pc72ewbsaNMX+WOwSJ+FivdxKllaZVk7D88xUQqJ1qU9UVJSLDcdO8mKpn3OxBNO3pZg1y+23w1zTGPGkQDPWQx9YhcwGDguUjuqcsvYqeP2QUA5sTFbr1CtBKuttbbBRDwrogQavJ13Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730405743; c=relaxed/simple;
	bh=xkwtN3c2uPMRsUDWKPYJxOqAFJ86d1h+TMDWw5J9RDQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d3n6D2nYyKaW1GNb1RKMnAJ3MIWl3Ec7RzBJcpdjhtKue8ctixJiO6oLp3is71BrmIh6KTlqsQeaeq4j2y/TPAHTy4ygnO4PGKFr0EKd5fJL7qNUtwha8PR3ettgh/oaSTioQoA1MNiw4Nc4AL3wrVc8JP6IZKYLoedbbX96UQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Aab7pXSM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49VCAVaw002542
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:15:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZcPK5InsPBoM0ZnT+TI1iKYIYpxncNlyyq02fAIuo3I=; b=Aab7pXSM2f2FQ+SN
	yCMDflW34S5SVIWSVXsmuC7YvHfBNDiYf9v6Hd2X/f2VF+6xCslZbF538ktu0Jrv
	O8OwMZC4+cSSw4aABYeByd9RXqkiNxnysuy4iiSlyUh8rj/GrbkYOSpMZG7MdURj
	4FaVEIhxD3coN6Ng7bjLdTOWfctcU2q3NABoBw2hjqfecg3wZhQQWFBVEbiJFY/Z
	IW3PrjO8H4/qmf8EdJuHheMw2feQo4rbDuTljNPOyh1/CzoMSv+hersCA5G1W1cL
	lj/TmHHfGfnxqk128d3cT9xklJ9++jLgZ2mV2GwLYfD2FU8kgkv8MbGidhAKxy6A
	PYm1Qg==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42kmn5csu2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:15:40 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-50d4973b2c8so14456e0c.1
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 13:15:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730405740; x=1731010540;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZcPK5InsPBoM0ZnT+TI1iKYIYpxncNlyyq02fAIuo3I=;
        b=wasUBLsmstWVXsrzFKlKIMr4aPULt+qh2i4M5TWTa06dSBaKICI1Jc4kES52av+31m
         8fPa7aKbF1BI9537BvOEn9QtdUX2/uBc/5z0TPy82MWZeaOPQKRIR7Er3TJyfTITRfr2
         KwTAdwJW3xFO3ffuHnStiiHkbH4pT7vI5AmmL7o5wbq40vsHAa0BaYfbG33e3VBg2ud9
         I5LYYMJmyO7Np3ThjKxtMLOqHUFUq8LYidv9GnVsMGMVRataEB6Rm92iMxySeOYY79z+
         UqnqqliI1ccZvdfiBBXuQl3DUOWwInWGibqSqgWUkU5W0OiJx4gygo/j+lQmpZua65Yt
         8UdA==
X-Forwarded-Encrypted: i=1; AJvYcCX0YmjCdvUip7TIGVEDYeutzsQU9/uj9dY141AQQl/SJh+d9jWer38cgrfDJnJZ0gxx1AdSbMhQWFt8@vger.kernel.org
X-Gm-Message-State: AOJu0Yx26CNzg46fIWn0Pvl+ltWkU2ayZssB37DGLNDeYkFsPJ4KbWwc
	jJCyoURylsS+dSRM0V+R1EwyPPBrAj0RNl0c24gGy2NcQptBeLeljgM14mo49jZg8674ZX22b4T
	C/KdFmlwApGGpFehsktOiEWBe5uMyf0nVypBfTZq5V9oawp+j1+p5JCzgdmuv8cMh5AbU
X-Received: by 2002:a05:6122:1d43:b0:50d:99ce:b6a4 with SMTP id 71dfb90a1353d-51014e9a3c1mr5807054e0c.0.1730405739906;
        Thu, 31 Oct 2024 13:15:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGzz758fYhX6RlSTvOSILAzTSI2OZl4txrPz1TsPQyrqBjk3Aq41Rb9eWsfv9N6sd7wCpZsmw==
X-Received: by 2002:a05:6122:1d43:b0:50d:99ce:b6a4 with SMTP id 71dfb90a1353d-51014e9a3c1mr5807041e0c.0.1730405739545;
        Thu, 31 Oct 2024 13:15:39 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9e565ef518sm99105666b.118.2024.10.31.13.15.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2024 13:15:38 -0700 (PDT)
Message-ID: <0bceeb9c-1604-408a-a465-e7ac4d05b3f3@oss.qualcomm.com>
Date: Thu, 31 Oct 2024 21:15:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/3] arm64: dts: qcom: sc8280xp-blackrock: dt
 definition for WDK2023
To: jens.glathe@oldschoolsolutions.biz,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Kalle Valo <kvalo@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Merck Hung <merckhung@gmail.com>
References: <20241030-jg-blackrock-for-upstream-v6-0-7cd7f7d8d97c@oldschoolsolutions.biz>
 <20241030-jg-blackrock-for-upstream-v6-3-7cd7f7d8d97c@oldschoolsolutions.biz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241030-jg-blackrock-for-upstream-v6-3-7cd7f7d8d97c@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: AQryi6tjaVCcmkDVL_15XOpQo-OnACBs
X-Proofpoint-GUID: AQryi6tjaVCcmkDVL_15XOpQo-OnACBs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 spamscore=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 mlxlogscore=999
 priorityscore=1501 mlxscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410310153

On 30.10.2024 12:02 PM, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> Device tree for the Microsoft Windows Dev Kit 2023. This work
> is based on the initial work of Merck Hung <merckhung@gmail.com>.
> 
> Original work: https://github.com/merckhung/linux_ms_dev_kit/blob/ms-dev-kit-2023-v6.3.0/arch/arm64/boot/dts/qcom/sc8280xp-microsoft-dev-kit-2023.dts
> 
> The Windows Dev Kit 2023 is a nice little desktop based on sc8280xp.
> Link: https://learn.microsoft.com/en-us/windows/arm/dev-kit/
> 
> Supported features:
> - USB type-c and type-a ports
> - minidp connector
> - built-in r8152 Ethernet adapter
> - PCIe devices
> - nvme
> - ath11k WiFi (WCN6855)
> - WCN6855 Bluetooth
> - A690 GPU
> - ADSP and CDSP
> - GPIO keys
> - Audio definition (works via USB)
> 
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---

[...]

> +	wcn6855-pmu {
> +		compatible = "qcom,wcn6855-pmu";
> +
> +		pinctrl-0 = <&bt_default>, <&wlan_en>;
> +		pinctrl-names = "default";
> +
> +		wlan-enable-gpios = <&tlmm 134 GPIO_ACTIVE_HIGH>;
> +		bt-enable-gpios = <&tlmm 133 GPIO_ACTIVE_HIGH>;
> +
> +		vddio-supply = <&vreg_s10b>;
> +		vddaon-supply = <&vreg_s12b>;
> +		vddpmu-supply = <&vreg_s12b>;
> +		vddrfa0p95-supply = <&vreg_s12b>;
> +		vddrfa1p3-supply = <&vreg_s11b>;
> +		vddrfa1p9-supply = <&vreg_s1c>;
> +		vddpcie1p3-supply = <&vreg_s11b>;
> +		vddpcie1p9-supply = <&vreg_s1c>;

Please update this atop

<20241018-sc8280xp-pwrseq-v6-0-8da8310d9564@linaro.org>

most notably including a new supply (which will likely be identical)

> +	compatible = "qcom,sc8280xp-sndcard";
> +	model = "microsoft/blackrock";
> +	audio-routing =

Please don't break the line, see e.g. x1e80100-crd.dts

> +		"SpkrLeft IN", "WSA_SPK1 OUT",
> +		"SpkrRight IN", "WSA_SPK2 OUT",

Oh, this thing has a speaker!

[...]

> +&pmc8280_1_gpios {
> +	edp_bl_en: edp-bl-en-state {
> +		pins = "gpio8";
> +		function = "normal";
> +	};
> +
> +	edp_bl_reg_en: edp-bl-reg-en-state {
> +		pins = "gpio9";
> +		function = "normal";
> +	};
> +
> +	misc_3p3_reg_en: misc-3p3-reg-en-state {
> +		pins = "gpio1";
> +		function = "normal";
> +	};

Sorting GPIOs by their number is preferred

https://docs.kernel.org/devicetree/bindings/dts-coding-style.html#order-of-nodes

[...]

> +&tlmm {
> +	gpio-reserved-ranges = <70 2>, <74 6>, <125 2>, <128 2>, <154 4>;

Do we know what these are for? If so, please describe it (also
like in x1e80100-crd.dts)

Konrad

