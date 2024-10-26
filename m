Return-Path: <devicetree+bounces-115940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5F39B171B
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 12:36:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 507AAB232D0
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 10:36:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 959901D27BF;
	Sat, 26 Oct 2024 10:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kmsiajyW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7CDE1D0E23
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 10:36:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729938978; cv=none; b=jslG+XRIG6GD6cU8H/oxF5ce1J4cF9DcheTueYTvD4ROIZEHN6yj5yLwMzPqCc/0kVbcEZdYnpFEthSihHxIGx2LKbolmsfBoEOBUXsbY03oOuEZnFZcERM9Uh5wbH9U8n0je4pkrn+zLP6lIVirbda89pzhl2BxzKBfEGaztDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729938978; c=relaxed/simple;
	bh=CO7kfa6WbUq/EgIsG9xmlv3qEhvWNJL7uDvse+Um1Q0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uP7MjmDbM8bdX854lEph3Aj5Op+OWe+5Tb0Yyncgi7HEd3eWtq4xWuiqVqIySZkJ3bUWC5SAFxDKEY9HgSyvtrWTNcXKpu1h+CR+nHwv6I21nSj5bnfCJlZZI6mm0DQCbWOZ3TvlWdpnpDkh++Lw2lWLggy61c1UKJBfp9Y6+WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kmsiajyW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49Q61Iqt025269
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 10:36:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vK1OYVjGeLw0mJ+uvwkmfKmrZoRBUC2JQg41IF9bQIo=; b=kmsiajyWsJrCRFQI
	ySNfNR7F1naHjtYiNbrr1X0o7+np/zNst8uF52r5ONLWCWjN281odfUm3+UvPwt1
	WaWuQZq88sif1UsTpDSGER0u6S0sQL+7Vl31v3PPc+NJIJNeN5csCSltahhzzvEr
	iYW61QqNQi7B5g8SYpUvUwZzOAleKLq9aU9RdF5STN1bmu9vm7KPxDA1lmpNEE8l
	XU9qMGjI8sfb+xuqiXaAwAqYG1IIrohPE93snQVdhAylxyhlyK6XufRA2vqDPdpO
	Btb8TLiOJU7ubiXXIllRNJ9BskjDt8YMT6qg0UkMaMRLnvl/6wWz4EMzC1VNzvDV
	GGKNOA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42grn4rqqh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 10:36:16 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6cbe944435fso5324006d6.1
        for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 03:36:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729938975; x=1730543775;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vK1OYVjGeLw0mJ+uvwkmfKmrZoRBUC2JQg41IF9bQIo=;
        b=hNavBcUNZDyQvd+qOYtKf4qnK2HKKXeXpbpnra9sonJf6gjLoKfd0jWVRulkjExUA5
         iLkMhaps54nQE3Cy7btaZ66xsY1o4BrzG2a0OFrDICd17CU/JukkW0sxL4JOKdB3OFxo
         vilpOlAIcOLuQKiDcBQekjrYaubWv/2wIhPq0o4Hib2RbvU7kPEMx54dgnICo2Np3aTA
         2mE62HdCidfDCkidiJhqhF8/24QleftcA72ijU4zgAKjgVf2BnWoJycfbNILTwXrRvP/
         bJsBEEQ08P++askZTQpWK8+ckMi26rfJ+0cut1Gl0vyUPDvBscxZpTc6F+OQ48o51iIu
         237w==
X-Forwarded-Encrypted: i=1; AJvYcCX9jGaxCUE3AVlibJ8vVtOw1cbrsyUbH601MGykG+Al/f25d4nzD7cl9wAGxnt4jzzxjBdHkRMtxxbF@vger.kernel.org
X-Gm-Message-State: AOJu0YykDPcGYyx01++Gn9aV0x9JdMv6jBR5VrxFn0rL50btSw0F8+FM
	va+esYlA1bDPHW350IJmJQzfVElDBrux/T5txmtLvvnUavIV89VvwljNqcumGPmXO8Na55+VOZk
	qdlsz+vAVyy/+UMGNPAQezKw6Snq0Gv5fn5IHGUSr4S9im556tfFaoVqeqn39
X-Received: by 2002:a05:6214:416:b0:6cc:2ed7:5436 with SMTP id 6a1803df08f44-6d18581fb4emr17861926d6.9.1729938974803;
        Sat, 26 Oct 2024 03:36:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHkxWZp/qXi6fHf5BJvHQahl66ZSK2uQll4C1Bvno5fCGgJNEtVoppwVBMRTWAJQYCuSni5Hw==
X-Received: by 2002:a05:6214:416:b0:6cc:2ed7:5436 with SMTP id 6a1803df08f44-6d18581fb4emr17861706d6.9.1729938974489;
        Sat, 26 Oct 2024 03:36:14 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cbb631b5a5sm1419117a12.61.2024.10.26.03.36.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2024 03:36:13 -0700 (PDT)
Message-ID: <dc1322d4-8312-47a4-929f-086b417d4ae8@oss.qualcomm.com>
Date: Sat, 26 Oct 2024 12:36:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 07/12] arm64: dts: qcom: sdm845-starqltechn: add
 max77705 PMIC
To: Dzmitry Sankouski <dsankouski@gmail.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241008-starqltechn_integration_upstream-v6-0-5445365d3052@gmail.com>
 <20241008-starqltechn_integration_upstream-v6-7-5445365d3052@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241008-starqltechn_integration_upstream-v6-7-5445365d3052@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: UIV8rcJqnCsxEn78SUDJpH1ewSgwk_na
X-Proofpoint-ORIG-GUID: UIV8rcJqnCsxEn78SUDJpH1ewSgwk_na
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 phishscore=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 mlxlogscore=827
 malwarescore=0 clxscore=1015 bulkscore=0 suspectscore=0 adultscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410260089

On 8.10.2024 6:51 PM, Dzmitry Sankouski wrote:
> Add support for max77705 MFD device. Supported sub-devices:
>  charger, fuelgauge, haptic, led
> 
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> ---

[...]

> +	vib_regulator: gpio-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "haptic";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-boot-on;
> +		enable-active-high;
> +		gpio = <&pm8998_gpios 18 GPIO_ACTIVE_HIGH>;
> +	};

Please try to match the property order in the newest DTs, e.g.
vreg_wwan in x1e80100-crd.dts

> +
> +	vib_pwm: pwm {
> +		compatible = "clk-pwm";
> +		#pwm-cells = <2>;
> +		assigned-clock-parents = <&rpmhcc RPMH_CXO_CLK>;

Don't you want to set assigned-clock-rates instead?

> +		assigned-clocks = <&gcc GCC_GP1_CLK_SRC>;
> +		clocks = <&gcc GCC_GP1_CLK>;
> +		pinctrl-0 = <&motor_pwm_default_state>;
> +		pinctrl-1 = <&motor_pwm_suspend_state>;
> +		pinctrl-names = "default", "suspend";
> +	};
>  };

Looks good otherwise

Konrad

