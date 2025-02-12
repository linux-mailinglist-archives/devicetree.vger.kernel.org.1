Return-Path: <devicetree+bounces-146063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E7EA332A9
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 23:31:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 90643167743
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 22:31:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87573204587;
	Wed, 12 Feb 2025 22:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CFQegtY6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAD762040BC
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 22:31:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739399497; cv=none; b=i71GczGwtKTckbJmc01StUbzh7PRHhSSe0iHZ79kDpJn8d1xdx7b9jQCcAQPAhzr7Se35sb7c4+l/KeUlBqLKxupVazOLw/2vUZtcz9jdkiM2XmAHa4Hdyywaw1bxM7bvW8KMetwOBX/pLa5TdOUJt95fqUE1rEpfOblINmtzdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739399497; c=relaxed/simple;
	bh=mszfmsBiEXDwMQCXl6w3IWdUwN9jDt5VNdyv/sVVme0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MN+rBlWS+xzSzmpTKVJAZr28EL/h2hR6HXjDAi0KbYgQDwXI1yxbPyb0WPJiEnsim6hH6gDetYiCBgHQOuSTiQq59yiY3NMo1GnK4CtKzVv0thL6VxqGqYys2YPhzLm5WnDeCcyusCryQ5J7vq+UoQfHwiioKKHOuvYKVhyiDBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CFQegtY6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51CG9kUG006137
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 22:31:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z10BowKlJuBRBMfLYLm6SSpaFYPkwZh03lVl2JlJJGU=; b=CFQegtY69nmFlfmE
	AbKBTaKbQZf+R3+TMcd0FhtpVwHaFHF5prvEuhOaG/4qzUAUHgcQUKEC9hKsFlOR
	XbDigIw84MCbqagzm9UUf7+8ghMmSUdZ48ntvupUQLOm4EFoEw5abw3S8l7B22N1
	OMJSJZlodGyEtcJ9AZWR3dBl7WvOrU5yjXNhI1Cu6aEmVNh3sbuJoCZHXhnj79aS
	AiVL7OJiye8zAOZ+aQ+Yee+1kjW80lacmyi7kQaGLPIY+77oxIpYIRf66DtW1K42
	fd61xGuBTRUtZIKCtQtKtvZoDfEz5yg4dRqFKLQbFu+6qVqd+gkInEAAmwjDlmNu
	XqFtKg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qe5n0vp6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 22:31:34 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e45cd4145bso856266d6.2
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 14:31:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739399494; x=1740004294;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z10BowKlJuBRBMfLYLm6SSpaFYPkwZh03lVl2JlJJGU=;
        b=MKhT4paNAHY16qLS4gzcnpszelkM0bGuAJJUaXrjMUo6HaGwsjWUUybZuJHfPFJpiu
         xaWCuLC2ZYd32KzciRgVtUC6nFmi5CIZrMZJwEDMLx7mGz4feTfJWBfZXXUbRbuS5WmR
         cJKE/PjIHD1Y/4kI0nTEjtyW+hk6j+t5/jPU1dt2ESHizOxL/ljGZsYLqlKFlMTuohAL
         /3nqWL+Urm0GqhWvXoW7AhSMqVQPjfhK3z6dIdqFDfK1i7stuKN/teocWY+C2FvBe4Yy
         MLxESzQi7EQgqMsw7k/kBLHS3O5GYlJJUHyPx1NZBY2u5eAHZxzTtt1CDC+OD5Q4KFct
         9o/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUt2DoMzkQRk7+YFa/UyD4+gB+UqpCHnXxnynzIFbbgOlK5Jxab6hf3ihOQ5f0YT2vHXGmTzwepA+y1@vger.kernel.org
X-Gm-Message-State: AOJu0YzarAGNcQvGcknRLx/kSnyGUBMeywHElw23oTxj+DqO9QvWRu8B
	sTvFzHQCcIM7T6y0iZzv8iIwgVMOVevZ5RaXeS92PLjLsBUwmn0fdpqvUV6LdKVGIPYFJRX68cw
	bGdVxM6/lHrK8+uRw/74RDxuN2C0fOmXW6/0siPjV3N4EVW2UBGMYT+DBDFoQ
X-Gm-Gg: ASbGnctre1YGq4J3KuAUf4fdv4UwS+EiVZCLlzy5xh9BXtShu0YXKHo0hSi6wJlkY5j
	aZbmnlcrh6Fn8pNKbXfhBDGrdrjdv1sHnH7g7miZUW2e0Swd7AdrYLYC8/iWvbn5J7Wgqkda+Dw
	imws6r3HN14mDnv4Ugee2Sk/w5fEVBhcgocMuQTapVb5iN7kp7d5qUNk7smH2LthFJnNj75NCva
	6WjWE1YFr3kmEgRK1jKQbhqrrE427x4YJA4d1Ij1wAuQYloemm0ZPiEFZbOng/sWrCHqiXQQLO5
	O11FV3o/mDORZGo225Tf5BFfyf/+EyfNClrY2UwSKcS6+a6iqs+JzqXace8=
X-Received: by 2002:a05:622a:1103:b0:471:bb6f:5795 with SMTP id d75a77b69052e-471bb6f5ecbmr14647321cf.1.1739399493681;
        Wed, 12 Feb 2025 14:31:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFXyYvi//prdBibNz4/zYphhtKumOo8H7oI1Q8ccMZf6ifskpReKqY5lbsKkMxrWPMtro9rrA==
X-Received: by 2002:a05:622a:1103:b0:471:bb6f:5795 with SMTP id d75a77b69052e-471bb6f5ecbmr14647071cf.1.1739399493241;
        Wed, 12 Feb 2025 14:31:33 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba5339a583sm4943066b.135.2025.02.12.14.31.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2025 14:31:32 -0800 (PST)
Message-ID: <0d540105-1da7-459b-a812-dbc13097520e@oss.qualcomm.com>
Date: Wed, 12 Feb 2025 23:31:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: msm8917-xiaomi-riva: Add display
 backlight
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250212-pm8937-pwm-v1-0-a900a779b4ad@mainlining.org>
 <20250212-pm8937-pwm-v1-2-a900a779b4ad@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250212-pm8937-pwm-v1-2-a900a779b4ad@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 8e-Th678PPA4ixso9RVcril1m61VQzxk
X-Proofpoint-ORIG-GUID: 8e-Th678PPA4ixso9RVcril1m61VQzxk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-12_07,2025-02-11_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 priorityscore=1501 clxscore=1015 suspectscore=0 mlxscore=0
 lowpriorityscore=0 phishscore=0 impostorscore=0 malwarescore=0 spamscore=0
 mlxlogscore=990 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502120159

On 12.02.2025 11:21 PM, Barnabás Czémán wrote:
> Redmi 5A display uses pwm backlight, add support for it.
> 
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8917-xiaomi-riva.dts | 25 ++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8917-xiaomi-riva.dts b/arch/arm64/boot/dts/qcom/msm8917-xiaomi-riva.dts
> index f1d22535fedd94467ba3f0a88b2110ce5360e7e1..8808306c989f54116052667887f9bf36b63c4c64 100644
> --- a/arch/arm64/boot/dts/qcom/msm8917-xiaomi-riva.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8917-xiaomi-riva.dts
> @@ -20,6 +20,14 @@ / {
>  	qcom,msm-id = <QCOM_ID_MSM8917 0>;
>  	qcom,board-id = <0x1000b 2>, <0x2000b 2>;
>  
> +	pwm_backlight: backlight {
> +		compatible = "pwm-backlight";
> +		pwms = <&pm8937_pwm 0 100000>;
> +		brightness-levels = <0 255>;
> +		num-interpolated-steps = <255>;
> +		default-brightness-level = <128>;
> +	};
> +
>  	battery: battery {
>  		compatible = "simple-battery";
>  		charge-full-design-microamp-hours = <3000000>;
> @@ -131,6 +139,23 @@ bq25601@6b{
>  	};
>  };
>  
> +&pm8937_gpios {
> +	pwm_enable_default: pwm-enable-default-state {
> +		pins = "gpio8";
> +		function = "dtest2";

Are you sure?
> +		output-low;
> +		bias-disable;
> +		qcom,drive-strength = <2>;
> +	};
> +};
> +
> +&pm8937_pwm {
> +	pinctrl-0 = <&pwm_enable_default>;
> +	pinctrl-names = "default";

We normally put this under the backlight node, but I'm not sure which
one is more correct.. it may be that this one is, given we're
controlling the pin that the PWM signal is sent through

Konrad

