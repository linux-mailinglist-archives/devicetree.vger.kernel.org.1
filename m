Return-Path: <devicetree+bounces-216462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9094FB54D90
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 14:28:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 21F9617A4D4
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:24:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C80E92DF13A;
	Fri, 12 Sep 2025 12:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZWL+0u1X"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51026287248
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757679866; cv=none; b=T50ki6/S8lnCOsy0oLQwyXR2518XvYVGr9c89ivsw31UcNVKT94NzkSIwb/sG0nnEJE00XlkNjUjCvIZAwFv3kXKFmFerbws/dO9peOwNWUYlGjzwypAJ9PhhM5xlPa6TkPRD19xkC+0UIItEoFxniprqQzarvphVeXrwdGlwEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757679866; c=relaxed/simple;
	bh=L/Kp0ZpCQjnQzViZ58decDE1KZjP+nvqlfKbSHwyGL0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b5MpUDyVcglG+jK6NuYymPhEaqt/WQTlnMIj4I21+IBoTX27TNrVulNmzNc5GBxxV+Mn6HXSVOQ2WeK6mEe5pcGhRRbz6e1S9feSK2ruqcu5QXzsp//NIAnoZ90k3SS6LmBdLG8V+9yGG5A0C5KKpqV+7Se28G0JJDVbvMA/w+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZWL+0u1X; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fNpg010880
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:24:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	k/00Zp88Pc7XaLrl9L+7J4tNKaqmsJpoZiLQwxfLj78=; b=ZWL+0u1X+U9Y+wc3
	gAIxqphUxtjWT3NeaoMeTueozCEAzTrgRpIkBv+lmfURRgF5vGKgqY59/fV+JWM0
	PkOiH0pnQfe5ol4XaVf6fFGHX8LT2NTOYNnCZgbhyjwlEjYYL6v9mRNN3rsbtNKh
	rz+pzRvRDKpNkmcIerqOgm/TLfWAO07tcmWkqu1lMBGuw0yTERFbIx1lHAHwT8Tj
	7WTM6c/C40RMQPv1PR51EHo48erMM28JCbNP7xhiH1zEy888yeIs9K1DeU/yFPKR
	zWStsn37NS8/Y3qYcUGYx/WabDSqKef32mb8s6bibgOvFNdY/ehd3BWfF1zkn7l5
	19pi2A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4mbdmj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:24:24 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b4bcb1e32dso5292031cf.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 05:24:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757679863; x=1758284663;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k/00Zp88Pc7XaLrl9L+7J4tNKaqmsJpoZiLQwxfLj78=;
        b=Efi61NYo9ghzqd46U9phAZub+r5yEKpUhKjS5TvZMC0ad+YYvI4j14lEiqvuMSBy43
         +nKGse8onzGPkHDjwK8Xgiv6z3CXYjP+22GIVcM85PVqtla3Qa3/ppEU8Ky34hyFF3KA
         bgxasyWmg7xMkdOKggz86D89WfBx0nl1Gik+RjzyOOit8abxYCa5119tHJ46IjoEhWQW
         kQccj691urTuP8xHN7inHp1Dq5IWGhbuN4B4R0azzrG+OGkuc8mS7WTxo2iSFqlfFFeR
         7I5bQDMrSI1fuVpd1ClU1ks6D6xjDwMhTgLHqgxFPvqPNpHOJ4KLqz6UKVbPJ9P/hYBp
         D9+w==
X-Forwarded-Encrypted: i=1; AJvYcCWPAcuFBtK3TfyKnbcNLIwiSrlK6m+Lwo73wrS+Ta6qmoknLkwPFoHkpJs0HnZIBRuAIdrgPcEPXtqh@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8Bw4Em/ZBZXkpY+mUNq1NsfpKCnQ72kf4YAv3vFf3IRjy4ABG
	I4YsGEF3ZdqnbwKVQ8yWi5DDgDv9i/2DFfagTUkGWAJi0fGPiKjYFQiqydBc5UGfaoQvWG60rtm
	6mWWAZQ7aP2tQib/wI9bTsIeBu86gY4SDOSidnxHMHeCGLVnfMprBgQ6oGxOi9NqB
X-Gm-Gg: ASbGncs/WHYOpXSQYvLdMs88dH+FnrYqzHfqEl8iu1B0Hh+Qrp00PfbUYDm14PQk3X2
	+2KWjdM+JsFtRTQSIkVVWUu8WLeMjpKVguKaTm8IxuxiummXBsrSi5Y3OufP3GJZ4WVMFQ7aWVB
	JxFCe0/9WSM9xvHm5lSQEz6ncDtYiwGoyQhjGWu8QjyPNnlsdmKeC/8tSDtPQAgJwFWgdDXpPl4
	gV/8ggDkg/cBBjMWXk/ZPPJ5iHc8nsK2wxnBTq7iugORX8hiQd2T9xuPFzFf2p9o/w9sy91iaQy
	sMePXgd3hcH1DitFukiXbPBzyVQeNRgsy8Ygr4BFIlnnDCKYKVsVetkED7Gsy0QTGEq0zIWbiCK
	VUYC6buKu8uM6l0JgypWIYg==
X-Received: by 2002:a05:622a:247:b0:4b5:d5d7:ffc7 with SMTP id d75a77b69052e-4b77d070bc6mr23459571cf.13.1757679862775;
        Fri, 12 Sep 2025 05:24:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGLglj50v0H8yUFfCJsItJZI1D/YYI2k2rFfxjbH7ntfNZM9kwa4/Tn1xpP4EMHdoniu7v9QQ==
X-Received: by 2002:a05:622a:247:b0:4b5:d5d7:ffc7 with SMTP id d75a77b69052e-4b77d070bc6mr23459161cf.13.1757679862090;
        Fri, 12 Sep 2025 05:24:22 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e016b5cbcsm64664835e9.11.2025.09.12.05.24.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 05:24:21 -0700 (PDT)
Message-ID: <f00cb00d-1e0b-4968-9f5a-df3ce0d8c8db@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 14:24:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sdm845-starqltechn: add slpi
 support
To: Dzmitry Sankouski <dsankouski@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250911-starqltechn_slpi-v1-0-93ebf951a932@gmail.com>
 <20250911-starqltechn_slpi-v1-2-93ebf951a932@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250911-starqltechn_slpi-v1-2-93ebf951a932@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfX37fssxyI9Gz0
 AtcT2OAe/uy7tnjJ+Bv8DdAwhfQo5N0ykB9WCkgN2yuX6UnBxSYkEa+aVBF0SDxk5dfiHfZt6jW
 VYRH4tKQS6VZsMQGB2BlRTa5BLBJ9XzjOM7nbfP6rFeEk+8+9uldHh1AK/4y6Nf5mgBjttch8Bw
 zJZSF+AndoVjvTnQE/PnDjZQw/hJjo7NULHu2FJqNm0gNnpz+mwb8jSV9GqLA9Xgt2iNLWFkJyD
 RbnYF42V26RmMQzOlIxE7qx88RIc4gMwoeCLX5SLov1RZYTw6bslRTpe9f4Dn5paMbERmm/RKD/
 Mt674Cry/k+iSf9A6K6ylDeSPyWq0tOD93OMFVb0YEEx5QED1jS+EaudRNPC31AdMbR77MZj+O5
 OwCxAEiD
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68c410f8 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=ixb8Hu8vVRuwzE1ANvwA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: YsaEAwKTh-QflgbgpmuLna307NRYENKs
X-Proofpoint-ORIG-GUID: YsaEAwKTh-QflgbgpmuLna307NRYENKs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038

On 9/11/25 10:56 PM, Dzmitry Sankouski wrote:
> Add support for Qualcomm sensor low power island.
> 
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> ---
>  .../boot/dts/qcom/sdm845-samsung-starqltechn.dts   | 24 ++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
> index 32ce666fc57e..2c1157ee7b2d 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
> @@ -902,6 +902,14 @@ &ipa {
>  	status = "okay";
>  };
>  
> +&slpi_pas {
> +	firmware-name = "qcom/sdm845/starqltechn/slpi.mbn";
> +	pinctrl-0 = <&slpi_ldo_active_state>;
> +	pinctrl-1 = <&slpi_ldo_sleep_state>;

It would perhaps make sense to model it as a GPIO regulator..

I found a downstream kernel for this device and it seems like
this is indeed a Samsung addition

The vendor kernel gates the regulator when the SLPI is shut
off, but I think it would be reasonable to keep it always-on
given you don't really want that to happen, and if you need
to restart the subsystem, not pulsing the regulator should
also likely work
> +	pinctrl-names = "default", "sleep";
> +	status = "okay";

a newline before status is customary

> +};
> +
>  &usb_1 {
>  	status = "okay";
>  };
> @@ -1028,6 +1036,22 @@ sd_card_det_n_state: sd-card-det-n-state {
>  		bias-pull-up;
>  	};
>  
> +	slpi_ldo_active_state: slpi-ldo-active-state {
> +		pins = "gpio8";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +		output-high;

Modeling the gpio-regulator will let you get rid of output-
properties here, which are discouraged in favor of gpiod_ APIs
in drivers

Konrad

> +	};
> +
> +	slpi_ldo_sleep_state: slpi-ldo-sleep-state {
> +		pins = "gpio8";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +		output-low;
> +	};
> +
>  	touch_irq_state: touch-irq-state {
>  		pins = "gpio120";
>  		function = "gpio";
> 

