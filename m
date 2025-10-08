Return-Path: <devicetree+bounces-224483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9998BBC4409
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 12:09:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5F7E3188482B
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 10:09:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24E302F0C79;
	Wed,  8 Oct 2025 10:08:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d382UR+x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4F2F2773E4
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 10:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759918130; cv=none; b=nok4FbDhxuKiDDaJMhhPbkN7AW22OPxXL/qAAU1CoQkhj408RYdMs8fIVUs3GJ5rWbHLWa8Ppue9VVx8ZivofZR7WJ9T6AMPXibmwO1q3QNjSp3L7SROQdpHjTMkodmVzShm0FVhTKplxieyhJeELbiRwXBu0lEItLzayT4JD5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759918130; c=relaxed/simple;
	bh=zuOs8T7fLtRsx2rbN/SbWVW9SGMe07Bf6XP12sXbvSk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QWSmt3k62gAfomdQ2X98Koe56Ave8HVojLDD2Dj3KaI27GDHkQ0A1REoT75CeJwTbQGSjz0KLhxJI7AGaiSqMGLalrrJfJKa4H7nz5UQ+t/kei3u1+f3BEgovrNBEQbgnCF957UFMA+hk01f+dfSpwYaUUC96PMbsvtJWEg4s9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d382UR+x; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890PiB022734
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 10:08:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Yb77uwPvrX0HmHHrh/7RbLO2O8/7B/9lfzBzQHCPdJU=; b=d382UR+x20GSYTni
	aSJ6aH0t1OBNTWqYDFFN6sDYgskDXgHkYZxXQ9x6kXEQ5NdPufUz8o/g0ds4OsMl
	Iq6J6p3a6GAPyTOg+KyD07hpDhceuBJCQzcUFzd+x+DorywEJIILxgvR78lRj7Ee
	s1DGW9/f3tbOAnkAEdR7vniuhedczox2vlqHwfzMIUhFMcsIsfHatNACIUq/n/2Y
	2CVAPe9V66CcazTXes0Sgd9Sat5jhQRdtbGCJEFm6ZhmxvwQMdY99IIwlliawMbV
	16MBsfYpsd0J9efxOZX2sJZLN3Ac02Sn7a6PQg8Xap0NX1HHe9ITBlnTct9nCzBZ
	mqgx+w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49n4wktgxd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 10:08:48 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e231785cc3so29969031cf.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 03:08:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759918127; x=1760522927;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Yb77uwPvrX0HmHHrh/7RbLO2O8/7B/9lfzBzQHCPdJU=;
        b=j8MoaEA+yKyGL0eqFftPSP8FZasSBb2YsWBvl3VOaGk9DSbfhp1LsGznLNWvTrYp4w
         d/bw4/fWMm/fZj9H2r2oMaJWd2x3qhSnj3EdK4W6XzRz3qdqEzNjJeTz/hyWXfi9fqoT
         /LTZfZbzhc1L17tpja68L8PC/7nm6AX+ddn5GDnH00C7QqqTJ6CGFLQuvu56rkk35hC0
         +hNRoN/Dg9DguCh8yO/9bbr1907BhkOi7en7u+fojItcDAd/SuxkTPzkY/py3/WvJMPX
         BA5Q7QIhmMiul5M0diaTG9zDaEYZSKtky9yxkynGeSuvKkA4jagETQmIbMA2RecPq4ra
         URcA==
X-Forwarded-Encrypted: i=1; AJvYcCWX3JRVSNE4GhePqgAdC1/ejajpkC/Ls7exapiGUF2bdRpM0lUY7Y8EC1bbIaUqlTNA556jetjE2HRM@vger.kernel.org
X-Gm-Message-State: AOJu0YycdDarVKdP5kTQ7Q8lEINsh4nDL8W3aJ3Sh+QWBtutuM7OV6Ea
	c+1Wd9BjmmSxyFZ4x6msCRplsMYAslNO6B0GsWr/q1J32lbqe/eyJ8mdh83pUQVbaP3BmjqN4y3
	XrigAQD0+tAEIY4kvGRiuDMcnj3xAJGsB7nl/K2dIqUT4o6dh7ukM3Hq14rBiHihH
X-Gm-Gg: ASbGncvaFM+sowTasndFeXmhthAC/5s/ggrmXJ5nqCfU+yVAdjIc8NJfRlFuJ8o7dHs
	NsZ0zOimnpg7eH0IQkc8CEU0uUMJfYN2M1ip0lrf1BxElijWvQDtYv1l0yZ6N4uKj8BCO8Et0yy
	FKwHjQDe+qFKOtqiHnRZmiCkaSNtLqRiVCx27ZJby+/EeCAdcNmwccaNaIT5QhreuOnGXdGmw2k
	3n+1XvM73JAJ1Mz/VjXfIBLGjle2qNqsh3x2+doKc8fhZZOruhDNsg18cmAl2F0h68Yw5U19Taq
	pXeabCUGLj+QBVFtCN/24rAPcc0lngWI1eUhfFe7mKyoGpHWR84/Hs9G2yTXZcHgCR99APE9fVS
	7XJiRteUKn6jKiBHqI568ZmF1JdI=
X-Received: by 2002:a05:622a:cc:b0:4b5:eaee:1c04 with SMTP id d75a77b69052e-4e6eac002f8mr24163911cf.0.1759918126535;
        Wed, 08 Oct 2025 03:08:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGq5cTLJ2mJwk3+csFy7Zr1eDTsQM6gCeFtxrIkdUO4dqhY8aZdotYTGDmV81/UlCQ7NMHKtg==
X-Received: by 2002:a05:622a:cc:b0:4b5:eaee:1c04 with SMTP id d75a77b69052e-4e6eac002f8mr24163651cf.0.1759918126006;
        Wed, 08 Oct 2025 03:08:46 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652a9ebbsm1618598366b.7.2025.10.08.03.08.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 03:08:45 -0700 (PDT)
Message-ID: <5135823c-f2e4-4873-9e3a-9d190cac0113@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 12:08:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: sdm670-google-sargo: add imx355
 front camera
To: Richard Acayan <mailingradian@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>
References: <20250905215516.289998-6-mailingradian@gmail.com>
 <20250905215516.289998-10-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250905215516.289998-10-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA3MDExNyBTYWx0ZWRfX+5NN40S4ZQRp
 WCpKWpR0GX1dEdxYjkyMZCSMVWevAY6DRUWUR3qRGO0Zj9yltzkUelEeouF3ZsjHL2ksKWoBH+m
 mCVd6Cc20qgnr3RD9mk23UEsX+Bg/IhfwZaycp48tjgb5/beIwbWaiAQB/SQ04GPEWQJfstCLk4
 OtTfwSAIn903cly95peIX2inzxmGqPy2EHsi50o934nFeJWj3V6aRv3D7oMUxWT4x9xpYptLzs7
 7sO9p3pSqIFqOMC9lSXCB6u+1KFIwVXaYHeNomxBx4tZojod8enMmmJSAaKnnqL5yiyP/Ccs/li
 ONdUxKQTFDDMAWEKl+ttjbOiM4bo65NHabbSc5f+DAemipMwZ0q++k6KVKwmexXXiYsHbL/UXtE
 WIap/aGV9c8+6qXoh6WC2nQKh66vsw==
X-Authority-Analysis: v=2.4 cv=BP2+bVQG c=1 sm=1 tr=0 ts=68e63830 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=QX4gbG5DAAAA:8 a=pGLkceISAAAA:8
 a=CiInEcA6Zl_SvUJEBKkA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: qRJr9yyO7o7gi4kmJFsPAfHcGtujgLAc
X-Proofpoint-ORIG-GUID: qRJr9yyO7o7gi4kmJFsPAfHcGtujgLAc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 malwarescore=0 impostorscore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510070117

On 9/5/25 11:55 PM, Richard Acayan wrote:
> The Sony IMX355 is the front camera on the Pixel 3a, mounted in portrait
> mode. It is connected to CSIPHY1 and CCI I2C1, and uses MCLK2. Add
> support for it.
> 
> Co-developed-by: Robert Mader <robert.mader@collabora.com>
> Signed-off-by: Robert Mader <robert.mader@collabora.com>
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---

[...]

> +	cam_front_ldo: cam-front-ldo-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "cam_front_ldo";
> +		regulator-min-microvolt = <1352000>;
> +		regulator-max-microvolt = <1352000>;
> +		regulator-enable-ramp-delay = <135>;
> +
> +		gpios = <&pm660l_gpios 4 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&cam_front_ldo_pin>;
> +		pinctrl-names = "default";
> +	};
> +
> +	cam_vio_ldo: cam-vio-ldo-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "cam_vio_ldo";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-enable-ramp-delay = <233>;
> +
> +		gpios = <&pm660_gpios 13 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;

You say active-high for both regulators here..


> +&cci {
> +	pinctrl-0 = <&cci1_default &cam_mclk_default>;

mclk belongs to the camera device

[...]

> +&pm660_gpios {
> +	cam_vio_pin: cam-vio-state {
> +		pins = "gpio13";
> +		function = "normal";
> +		power-source = <0>;
> +		output-low;
> +	};
> +};
> +
>  &pm660_rradc {
>  	status = "okay";
>  };
> @@ -509,6 +604,13 @@ led-0 {
>  };
>  
>  &pm660l_gpios {
> +	cam_front_ldo_pin: cam-front-state {
> +		pins = "gpio4";
> +		function = "normal";
> +		power-source = <0>;
> +		output-low;
> +	};

..and then you set these pins to output-low

drop the output- properties as they shouldn't really be used anyway
and please settle on which way is "on"


> +
>  	vol_up_pin: vol-up-state {
>  		pins = "gpio7";
>  		function = "normal";
> @@ -548,6 +650,20 @@ &sdhc_1 {
>  &tlmm {
>  	gpio-reserved-ranges = <0 4>, <81 4>;
>  
> +	cam_front_default: cam-front-default-state {
> +		pins = "gpio9";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +	};
> +
> +	cam_mclk_default: cam-default-state {
> +		pins = "gpio15";
> +		function = "cam_mclk";
> +		drive-strength = <2>;
> +		bias-disable;
> +	};

this mclk definition you can push to the SoC DTSI becuase it's as
common as it gets for an internal function..

Konrad

