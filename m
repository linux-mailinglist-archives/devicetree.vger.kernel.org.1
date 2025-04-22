Return-Path: <devicetree+bounces-169567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 13042A975B9
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 21:43:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D84861B6170F
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 19:43:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E907C2989B9;
	Tue, 22 Apr 2025 19:43:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AaVlGwIo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C12AB1D5ADE
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 19:43:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745350997; cv=none; b=LXy3mSzbXg+SO6ACZqJU4OrPX2Kh8OLEuAjciq9Vo/6QK4spP/H3ygdiORYt8mKIwqA12YcjunhWqnrNcWkRSysejRrOHe+LTffPqxN+8eAh4a2zxiNDBrgoHRREbtch4uMnacqr8tMlfz3wth4sjmd4MNvcUoWqpzl+kXTvaBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745350997; c=relaxed/simple;
	bh=5Mvjqdjiw+ktY/PbZ6cN5SoX2JQMrR7l0YeCFcmYx8I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FQEt9hGcTCSaWAsG0XXyyxXGwV6HCXu7Wvt6pLJbwbdxz0kerVP43/HisTlou/JhaoY5opjcnuci/2b00NAVEgiZO56t0pg2e7IN8SteDfb1rHnWurawg3/cnf5JoXp2fjXCh0EDldKG/xjat8kmzQGo3zTzG0EqJsurJ+khvHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AaVlGwIo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53MI6psq020861
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 19:43:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/AgFaXl+2ehY/97PQUi3w6RvRtLNkPWJ+KAm3dvH/HQ=; b=AaVlGwIopaz2xhut
	angw5OZXI41lMRKgRV11qToPpWnWeGxYTy5BQ9lMUhYpE+f0n+a3DiAWiipo863E
	3n5wMDU6+xBsfe5dvTXPOejg7vneFl9hDux8wifHcWcluKulHE/WA6BVZ22hdkWU
	z1CCoY6pD6JBAbn2EGetYIWt/9ASPXjOBj3HCbf+p8HDEK+dgEb8yTlucv3pP/Td
	8mTQsYMndWHQRzJnkcIfejvikp/E9T/Ed7VcfG7yJCDGxnD0TNanHSwoLYZ7/pMp
	Mxgnwl2VhyXkIIlCxeUu4OmhgThtqw5NGL9DJJcx1sVDg/7Vct1kJKfeyjpl24Zh
	fpsDvQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4644790vdm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 19:43:13 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5560e0893so34483885a.1
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 12:43:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745350993; x=1745955793;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/AgFaXl+2ehY/97PQUi3w6RvRtLNkPWJ+KAm3dvH/HQ=;
        b=F3kJBNgXqZ0IaTgGS35WHGLfktk/hKo4luD5GfLgqCVDThWG1q75phKdfaH9y0Lnd5
         eypSI5u9IPe1g5lidw0bZ9Oxf5wRqWvCVaMCilSv8FQ4djbZmOvG5FYASBiBys7Wx7cS
         lh9qbtuCyCwoGCGh9GsCaqe52cgv030tKlvJ3HSxnNFwXxsdJMGCNArmtXViyxA8y43h
         paXLpslUyJJFmG6C90Y/wZApnjqL5axnedRc5uSeMI33krrsI0p8gp50kKRRtD9wZd11
         2nYf+5q6rrI7ThGiyqOwTXkvPtT3f5Gxlhy0UxZo8NUrewZPdzhB5tZOTlY2DLOSQ+gw
         C3Sg==
X-Forwarded-Encrypted: i=1; AJvYcCX978Bjw1oAsAttrcgx/3toGsDZM4WG5q4G2oz1QdNN2Kzv7zRxMyCfIbk6ukBD4ULdr3iR+3/ywAqN@vger.kernel.org
X-Gm-Message-State: AOJu0YzRoSZoZHfiZUyxxVjMBIXHahDhSIToBgSGoHVtrwBobI1e4Gxc
	ytx3Fskj0Kd0INLMxtH3lviZKwqm6I1QUnHdryj7K1jM/BVIzM/7Vwjp+QI7+T7k103IosWxCJt
	k/k/CBgH9eN7FVNWH3EakVkk9Yf4zkkB+Z1R9Z6TL+FKK9nGJx256zfNx8/Nx
X-Gm-Gg: ASbGncvAU6UmF1yyYoPxmwSIfXTWssBBMiNTMIiRkMQfmR+S4OlsySVzCh81xpry5lu
	BgTs7w0WeK/qdRDusG6Jes8bI5oDqcWZ4XIh03JCoQDANEqVNFcyiG6aUQ4qRtToN5hccZVUIfl
	Kk0iAp3FY/DLyyNx3Cm27Pf1XZK+7SYmRDBh+rFD7TSRq4MSANhQfv1NNAoRSDKkjw5boBX3Juv
	BQoHjqC+Dcthx4x835nxbkqdeoO1BhE/EaTwdJTYiYs+BXESU4RIqLV17jnO0DWeer3V33QEnqN
	hSolG50CK6/rPcZAg+fxN+fF4LmgMMJLKxZ/XpUBCx4fEwkJvu4bfpA7ZskZplGU/No=
X-Received: by 2002:a05:620a:1a83:b0:7c3:d3a0:578d with SMTP id af79cd13be357-7c94d34013emr34614485a.14.1745350992619;
        Tue, 22 Apr 2025 12:43:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEuxL8/Ssxzm8EqO1Q6GrG/lBVltg0zWb+k/ByIXFSXpZq8RK82vMmqLLP8pAl8zTzD0ZAstg==
X-Received: by 2002:a05:620a:1a83:b0:7c3:d3a0:578d with SMTP id af79cd13be357-7c94d34013emr34612685a.14.1745350992165;
        Tue, 22 Apr 2025 12:43:12 -0700 (PDT)
Received: from [192.168.65.141] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f625833be4sm6552008a12.50.2025.04.22.12.43.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Apr 2025 12:43:11 -0700 (PDT)
Message-ID: <1e7afaab-e050-4376-8dde-07f09fb01e51@oss.qualcomm.com>
Date: Tue, 22 Apr 2025 21:43:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: qcom: msm8974-samsung-hlte: Add touchkey
 support
To: Luca Weiss <luca@lucaweiss.eu>, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Adam Honse <calcprogrammer1@gmail.com>
References: <20250419-hlte-touchkey-v1-1-9d93c3e2b31f@lucaweiss.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250419-hlte-touchkey-v1-1-9d93c3e2b31f@lucaweiss.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: mHB_qFgSphVbaH7aNmDx8oQ7ACyXujR6
X-Authority-Analysis: v=2.4 cv=CYgI5Krl c=1 sm=1 tr=0 ts=6807f151 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=pGLkceISAAAA:8 a=dlmhaOwlAAAA:8 a=PRE00VkVQkv7n3oGKTUA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=y4cfut4LVr_MrANMpYTh:22
X-Proofpoint-ORIG-GUID: mHB_qFgSphVbaH7aNmDx8oQ7ACyXujR6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-22_09,2025-04-22_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 mlxlogscore=999 mlxscore=0 lowpriorityscore=0
 clxscore=1015 phishscore=0 adultscore=0 suspectscore=0 bulkscore=0
 impostorscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504220148

On 4/19/25 11:08 AM, Luca Weiss wrote:
> From: Adam Honse <calcprogrammer1@gmail.com>
> 
> Add support for the touchkeys on the Samsung Galaxy Note 3 (hlte).
> 
> Signed-off-by: Adam Honse <calcprogrammer1@gmail.com>
> ---
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---
>  .../boot/dts/qcom/qcom-msm8974-samsung-hlte.dts    | 45 ++++++++++++++++++++++
>  1 file changed, 45 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974-samsung-hlte.dts b/arch/arm/boot/dts/qcom/qcom-msm8974-samsung-hlte.dts
> index 903bb4d125135771504281df50aa11c9b6576a28..17d3e319941b8fd0363af600d93fc10127e4ab21 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8974-samsung-hlte.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8974-samsung-hlte.dts
> @@ -50,6 +50,34 @@ key-volume-up {
>  		};
>  	};
>  
> +	i2c-gpio-touchkey {

'i2c'?

> +		compatible = "i2c-gpio";
> +
> +		sda-gpios = <&tlmm 95 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +		scl-gpios = <&tlmm 96 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +
> +		pinctrl-0 = <&i2c_touchkey_pins>;
> +		pinctrl-names = "default";
> +
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		touchkey@20 {
> +			compatible = "cypress,midas-touchkey";
> +			reg = <0x20>;
> +
> +			interrupts-extended = <&pm8941_gpios 29 IRQ_TYPE_EDGE_FALLING>;
> +
> +			pinctrl-0 = <&touchkey_pin>;
> +			pinctrl-names = "default";
> +
> +			vcc-supply = <&pm8941_lvs3>;
> +			vdd-supply = <&pm8941_l13>;
> +
> +			linux,keycodes = <KEY_APPSELECT KEY_BACK>;
> +		};
> +	};
> +
>  	touch_ldo: regulator-touch {
>  		compatible = "regulator-fixed";
>  		regulator-name = "touch-ldo";
> @@ -149,6 +177,14 @@ touch_ldo_pin: touchscreen-ldo-state {
>  		power-source = <PM8941_GPIO_S3>;
>  		qcom,drive-strength = <PMIC_GPIO_STRENGTH_HIGH>;
>  	};
> +
> +	touchkey_pin: touchkey-int-state {
> +		pins = "gpio29";
> +		function = "normal";
> +		bias-disable;
> +		input-enable;
> +		power-source = <PM8941_GPIO_S3>;
> +	};
>  };
>  
>  &remoteproc_adsp {
> @@ -332,6 +368,9 @@ pm8941_l24: l24 {
>  			regulator-min-microvolt = <3075000>;
>  			regulator-max-microvolt = <3075000>;
>  		};
> +
> +		pm8941_lvs1: lvs1 {};

LVS1 is unused by anything here - it's probably good to define it, so
that the driver picks it up and regulator_ignore_unused is aware of it

Konrad

