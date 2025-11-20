Return-Path: <devicetree+bounces-240599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C26ABC73124
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 10:15:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id A0F3E2FE67
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 09:15:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE36530F527;
	Thu, 20 Nov 2025 09:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QpprCVs+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HqmMi0Ni"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE2431158A
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763630095; cv=none; b=lekGyvLblJbS1nUkuiMIivnv6n4GNBYARzgz5FaGX0jQ5ronhyxlHsHVaKMAak6AVT8D3ZogdYW6StVVi1qeswjuUjNXQYZHPNXyd4w+7GUkNuLL/rKHQc2mxtl7B7P1lLuSaNQvYfG1Nz68WIOyX7pr/cMCemIa+OAuzTjRsgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763630095; c=relaxed/simple;
	bh=5ppimdb5TT3hxftrxvDJ9CAJd1wm0b8WzSU1i3zrMpc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iZkvBOhAZQOSkN5wsgyFtNuvD2nAv4+oKvTQmlokNgdTrMI0Y7LGhsi5LUfKFuSuBax1C0o8RJRJZRP0h1eQAeRK6YFZLfITVBSJugbT1tuQzEAqQvPoJFEHpAqLkHtK15DbpTer0Ui9OPXkqkYJRiSZmTaYrSrHWq34ZAqykuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QpprCVs+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HqmMi0Ni; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AK64ddM3926316
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 09:14:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BmCuG1/aM6aP9YnH7agJ9PkxdglTEbFrCmpfrHHCe6Q=; b=QpprCVs+jMMBH0fM
	BX2OejpndaXENyL7ialRU3Qh3UAqWZzWyVYKiuy23xiDbL6vsnOvj97pO/DiQbgg
	F8LBr2pH6lKt1zNaEA89ytf++vgj+w1btwB6d7w5o8rqlYyVQkXQwbcPvcWRvXS5
	vZbnCUi4CMIU+G/sfZmoeZzbd70fSXRmf+uV0MctOoJo/M4pxf9UOK15ZUxFPSuB
	H6riY1gOeM8iwQsZHbGvm0JN0T+rYYjr9AeVsZcm+C9Mqe8J+pD+1RiOw8WVeBiG
	wXUQQmcibGr7WBRI3QvtQqJKDhxRsnLzpInrHPEY5QCnAzFt1rlHmPVW1u41j504
	G9s1fQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ahwd78jsg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 09:14:53 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee00f2b7d7so2199921cf.0
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 01:14:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763630092; x=1764234892; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BmCuG1/aM6aP9YnH7agJ9PkxdglTEbFrCmpfrHHCe6Q=;
        b=HqmMi0Ni6gFWuYjifIhgfbgvcoW757H2B4qnSiEAx0tkBLDVua32MenMhtp7oUgsJ5
         DKuzNo6hMK7W43dcQhJV9Rc5+kR2lvHDUIVMg7TyfVrx2gBpGrhluT6RXsCh19fW5g8j
         B0etOB1pDzrecPeYAwHngPmmRcwV1IsVPFPTOcvK8HaDweTR1VVlNN+cUQUuGFfJRHdu
         qlfrvv7tB+kyNbthMaC/Hrcf2dfZ1LlS/2AKxfeHQpeiCewSyHxrIdGt+IxQ0t2XvXIu
         1XmGBdTwDU+7vjlhn7FWWk4bciG5Xb2u2LzMPD+Y+AU8PwV5S/2isOnDeRhf49fLk+sc
         QPPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763630092; x=1764234892;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BmCuG1/aM6aP9YnH7agJ9PkxdglTEbFrCmpfrHHCe6Q=;
        b=U8cr7qC7DEklsHzTRBvvhGo5U4WBjC516afGRsAArybfzp7Em8G8B8ezC/rv5iqe0L
         KQRWI1itIWtNi2kkiSLWMShNpRVKVQ8eyxXriEeB2OUD8XLDt8Ni80U8/w0w/oZ3oONm
         5ZdnqftHI2TDNC+vNtzZDkxBKDyZ/Yz97UGOFIGD7toPx69+KEVqMPrbq25+A7ApByoS
         7jSe7ZLS97FX6tP6hq6dfknjhxVB93HudAikexhAUT5ePgIXP9x9FNeYMObCmhUMnkRc
         nRPnKXfInWDQBLGrTcgxAqnnksQcCInMvD/3QxEF9COEjd2ASkLc64FFzswzEkSnrwOn
         ygiw==
X-Forwarded-Encrypted: i=1; AJvYcCXuoFZQs96AfVJ9SEbjYXzKV4DxIChYSwn0Xq9eqjjFhjd9clZgYlIOWJj9R15XCaNVfRQVKoUloY10@vger.kernel.org
X-Gm-Message-State: AOJu0YyBXv0T1T7u0qNlfKCsMnm5E3KizglO1irVz4iWcmqHEBwlDkP2
	Iz1+NunBkhFqiyIZw/xYFtNCHi9DEjzDvaQglJve7PhkznNKJVpMKz/flVeq3Z47j7zNbikPLpg
	snmuckcBDRXIybdap76aLvfdErN3j/FKexXkk85Atrv0Pao4u7Q0SEdM05SzY8jkb
X-Gm-Gg: ASbGncsGRsQCkvIxki93AervhDRiWR7mfpXR3zVc5VTFYaA3ofssmmsdd60v1OJPb3n
	97fXqTN0VyM93yGwwD6ERdkOofFPIjPHJV3tnwSULGyNTSTrETtvFqesQkq6PJ7A/KiWYi629tF
	Q25/aoBT2C2veD/UXInjw/xjemACwJkfboqrnkrRe9tlBoG2jmrJ42fw3YJ/ab+9lAdgMBMZDo2
	7VLNEoDWfDQaNw2oaBlXKr3iwd0h7bWLt6ZkgdYbp41pjvYl9CNf/6sXGABfEIDmu+qeBlUPR0c
	W/DLwufuFVdf930Cc7Uu++rBApd1IJwuyxTrZ5S1x3Jbi7N+hQMu0plfnSdLMMwROrYg+4x4U/M
	D78Q1VvvUBXfHvEnSxW6PVmmaygJt6n09ri7sKewfp5GfkSkYB3ty1H3x/YepN/UGnTQ=
X-Received: by 2002:a05:622a:1b88:b0:4ed:e2dc:dae4 with SMTP id d75a77b69052e-4ee49310648mr22761871cf.0.1763630092410;
        Thu, 20 Nov 2025 01:14:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHUtSeH6x55xuspR9zfkmBBiXO7u1fyOWg2xITcAziGaRPKG4f8wBvBYP7LftLETGMxls/QzQ==
X-Received: by 2002:a05:622a:1b88:b0:4ed:e2dc:dae4 with SMTP id d75a77b69052e-4ee49310648mr22761641cf.0.1763630091988;
        Thu, 20 Nov 2025 01:14:51 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654cdd5bfsm165967266b.9.2025.11.20.01.14.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Nov 2025 01:14:51 -0800 (PST)
Message-ID: <00cf5233-ff95-44d6-9d76-77178358263a@oss.qualcomm.com>
Date: Thu, 20 Nov 2025 10:14:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] ARM: dts: qcom: msm8960: expressatt: Add NFC
To: guptarud@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251119-expressatt_nfc_accel_magn_light-v1-0-636f16f05cf4@gmail.com>
 <20251119-expressatt_nfc_accel_magn_light-v1-2-636f16f05cf4@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251119-expressatt_nfc_accel_magn_light-v1-2-636f16f05cf4@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Jtf8bc4C c=1 sm=1 tr=0 ts=691edc0d cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=yTTn7_gLV5vl4xbOMHgA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: wLic6z0XBTgQMG4ryP9gELJ0wYJt1V4p
X-Proofpoint-GUID: wLic6z0XBTgQMG4ryP9gELJ0wYJt1V4p
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIwMDA1NCBTYWx0ZWRfX2KRdO4RCxeCK
 /6thT5w/uVE6r86JkhUUl/Eq9LCV3UnBmgWaJaCLXUn98xqUtmsCXx/k76xOLCa0kzZoRMDgLT+
 O2aYIlCF5w94gHRBJ8pnto2bijSJ9tttOKLBvkizqKA2F8CgRWoy43h0RZeb8NNUZG2BewdZkoC
 CRdNSfPavdcFlQdnP1ow+zs2oDDkKyAnMM3f+uSCNJTkeImjjpaeIJepCENSNF/9QP7pxWiCwnc
 RV9pd+vyrALBEVcxSQlKMnwCcWM6dSTNjAWKjuQpJCZSxikDkr+F/y6xZuF1A/1rORnyqSfnwiR
 YvHVefBq17DXA0CCjdzoJNG+g4aHlcVavTP+ueWrDfcrUFW+k1wnWK3JN6WAh6aHazMXWaCc+Ae
 8KzPWY7Em0ODUhEHzY3C1nRLSyhQJA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-20_03,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511200054

On 11/20/25 8:14 AM, Rudraksha Gupta via B4 Relay wrote:
> From: Rudraksha Gupta <guptarud@gmail.com>
> 
> Add pn544 NFC chip
> 
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
>  .../dts/qcom/qcom-msm8960-samsung-expressatt.dts   | 46 ++++++++++++++++++++++
>  1 file changed, 46 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> index 1e331a046e7b..81806d7ca001 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> @@ -77,6 +77,27 @@ light-sensor@39 {
>  			pinctrl-0 = <&prox_sensor_int>;
>  		};
>  	};
> +
> +	i2c-gpio-nfc {
> +		compatible = "i2c-gpio";
> +		sda-gpios = <&tlmm 32 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +		scl-gpios = <&tlmm 33 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +		i2c-gpio,delay-us = <5>;

Same question, any chance this is GSBI7?

Konrad

