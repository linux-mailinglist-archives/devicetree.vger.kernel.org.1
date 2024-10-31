Return-Path: <devicetree+bounces-117906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A551C9B8483
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 21:42:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6AA3228196E
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 20:42:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6E061CC147;
	Thu, 31 Oct 2024 20:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EkzwZDHD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7B8F149C55
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730407341; cv=none; b=tniKlHpYIp5hnhFO6231/XcKfv6imipqJKJGtwon1VwpsSFhmODyeX2K+ff5LdxyJw6D94yID0jTf8XYegixxnSKHocHMSI2mcVWPxwv3e8ehpxwdL6bFM/BgJB7MNyxYDIrADI/x1m9FMbUACIWW+/gpxUJSgv8TUmPFKBGfpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730407341; c=relaxed/simple;
	bh=MFpNRpqRd9LH4pJmd0TDJFGlaMsED1SWhV9pcS+sRzA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RiizxwRW/JrjFadLf2KyvYCVkhVmxAWIHIR+vTUrXt6yfKx+YhGYjZp8dx/OXdvtJBatJrHXCHHciM+fNOysF8iE3gjWGnWBF7dAHF+CuQR4acpRqoWM3Z7NEJMXMnxZea3n49t5rRxBDCHrRhD+8wLWEaMTvWQaHnHQgv7Ffmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EkzwZDHD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49VD1t7s027387
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:42:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VqpxAZr42lt2krLgg+7vgLWAa8YGLnkwMHJCnyltXHU=; b=EkzwZDHDW41xH24/
	YfOrcaQ7qo+aWFiEOuecSDsAuBBa8qBpkIF+bzhmCy/H4IWxl/LEP+OaHeNVIhGz
	/HBbcsE6zqx8laj0Hx+KDtcDeEndAp2SbvVbQDxduLHeE84QrdOon50cSuXzokD4
	IP3Sqax6SQb2INIIUP4aXjkvtC8Mvyn9j6hyOibgS/BVFK3r+6ltr9csq8mXYODp
	wJEdvUUjrTBX03p2I/EsmXv1jYZ2WzgxKq6suwgknpy0j9phJt7wl15G3LgipMi0
	DO+jiahfK/L+tRO8jBgTVjDV+xlIzMn4Cvynv8qHC7omg5O7Z3DcAXIviXdV8C7+
	E6+Mug==
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42k1p385ap-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:42:18 +0000 (GMT)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-5eb9dd2d3daso156607eaf.1
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 13:42:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730407337; x=1731012137;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VqpxAZr42lt2krLgg+7vgLWAa8YGLnkwMHJCnyltXHU=;
        b=rQxXRoMXtRzYSU4D+7fMhOmOZHZoV1N4mHPRnFZN4hB4uIV+CEBpcfS6KATLZ+w1uh
         bOUfdyoz8z+3kVkdzBvUCVdFQthsjb6iR9dNoxpjEakBsqce4DjP78UugxxHB+J6PP2L
         a7sKYb04JYozhVZf//SzgdmR/M1EcYww6AaMi6iWr9uqU6Ib7ZagDOlOE7ld2tfKNt4+
         zai7ex4+urq4KZ9Dx4AV4nTP/BU2uMqtwm193C8PeIVBPAEEHg6E90Rpo7SpC+NOyLgG
         QBxZZt8WCZt1aMmLBBeAuJLdL+4kUlD+lGK/hCweMX+vrVcXz39+rHv0KdF31QHySY1D
         pyDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUQRU/ZZ41o6EwYKuJEZmGdKlRG6HS09XJpE+kdjfnp3+yC67kf3/yTBef/NZhK0iaaQiiSSPmpsqxk@vger.kernel.org
X-Gm-Message-State: AOJu0YyIXJvtCewMsZk3ogzgsjvjk4OYaI6ApHv/J3R7hLmNkmEuA50t
	N6n8NeB90Ct/xU46eB6WOTvN8OGKD3LsAlzwPmFHtkLmqPO6Blp/yYwazY/Pcv42UB59qUIQUBX
	6A63BKf71gyfpc4ZEwLzBuhGxwsqyXSSRBSsEGjrcCElaK0b5IxFnIBilJQV5
X-Received: by 2002:a05:6870:c094:b0:26f:d381:fd31 with SMTP id 586e51a60fabf-29051ade5c4mr4749688fac.1.1730407337693;
        Thu, 31 Oct 2024 13:42:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGOklbpgSQPKrzZF2v//gyCTkBydr6GONYtPoc+mNnrDmew/I2RgaNj2IMmRgOfpE340yIhvg==
X-Received: by 2002:a05:6870:c094:b0:26f:d381:fd31 with SMTP id 586e51a60fabf-29051ade5c4mr4749678fac.1.1730407337342;
        Thu, 31 Oct 2024 13:42:17 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9e564c5348sm100834366b.49.2024.10.31.13.42.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2024 13:42:15 -0700 (PDT)
Message-ID: <7a87ff33-2a88-4476-9116-69d6725b8d0c@oss.qualcomm.com>
Date: Thu, 31 Oct 2024 21:42:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: sar2130p: add QAR2130P board
 file
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Krishna Kurapati <quic_kriskura@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241030-sar2130p-dt-v2-0-027364ca0e86@linaro.org>
 <20241030-sar2130p-dt-v2-4-027364ca0e86@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241030-sar2130p-dt-v2-4-027364ca0e86@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 8SnYFaUNIlCN6ojMGPSvfAGiRrXKgosR
X-Proofpoint-ORIG-GUID: 8SnYFaUNIlCN6ojMGPSvfAGiRrXKgosR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 adultscore=0 spamscore=0 lowpriorityscore=0 mlxscore=0 malwarescore=0
 phishscore=0 clxscore=1015 impostorscore=0 mlxlogscore=999 suspectscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410310156

On 30.10.2024 12:50 PM, Dmitry Baryshkov wrote:
> Add board DT file for the Qualcomm Snapdragon AR2 Gen1 Smart Viewer
> Development Kit.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Please add newlines before status consistently

[...]

> +
> +	wcn7850-pmu {
> +		compatible = "qcom,wcn7850-pmu";
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wlan_en_state>, <&bt_en_state>;

flip please

[...]

> +
> +&pon_resin {
> +	status = "okay";
> +
> +	linux,code = <KEY_VOLUMEDOWN>;

and here

[...]

> +
> +	ptn3222: redriver@4f {
> +		compatible = "nxp,ptn3222";
> +		reg = <0x4f>;
> +		#phy-cells = <0>;
> +		vdd3v3-supply = <&vreg_l2a_3p1>;
> +		vdd1v8-supply = <&vreg_l15a_1p8>;
> +		reset-gpios = <&tlmm 99 GPIO_ACTIVE_LOW>;

Since I'm nitpicking hard already, please see the property order in romulus.dtsi

Looks good otherwise, thanks!

Konrad

