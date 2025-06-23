Return-Path: <devicetree+bounces-188583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C65AE4066
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 14:34:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D0E6D7A3DF1
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 12:32:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EE4F248864;
	Mon, 23 Jun 2025 12:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="odE2UMax"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC475239E97
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 12:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750682002; cv=none; b=j2y8OV4mVaEx0gAQXpE0xtFIDNb7QwW761X4L99etTP95eWJzXWoLYKF4xab/oF4daAOsy280nh8+4Cq7is0wNDstL81fnPP7e40MWN4+oYCw4rjP+SnFK39anXqUwSjZCIK0AfvbXQRxaWD9v8n5/M/Lj3sBmOUzpGXwLXFvbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750682002; c=relaxed/simple;
	bh=YHrmmGiiTHvV/50m/7Hcj/YSZuf9AunhOyXlGg3e5Ds=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SZ+hId2lx2nINyUC84ibXpreURcm81sSexoQVdu+248zECZrMXUHEmds0ehQTdzbUFCcpMKjdS+p0DCim/B7rViDMWKwqsQOvCxdh+EGbT3CroGcnLxcNShambh4QL942hUYKNy/QKEtUWJ7baRyZW9yO3X2sZZKT7m7wHCSnCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=odE2UMax; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55NCUi8G004087
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 12:33:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KyZjPN+SNAIAg3IAU9FdSrwOWQe1ITB33UyIEGNR9Fs=; b=odE2UMaxkW+jyAVO
	bD5YXiNX6DlSgmreNZ45BhZR3bjff7aqMnIkNCidL0ocHjbYHC1WAdecU5+1Xndy
	lQWXTJBMRAY75uG2b/hzsgnG4EL3c8hfO8kWYw0/u7/QR8gv5+wZAvd5AuuZZN8l
	kpkYRjE2G0paiOZk6hbM5YImDHXxDjgBQGvG7+8syflZcSvFYtvFn9XRZGv+8h0G
	QneQRu4B59YAoU8h4P3UHEbYWe6G++8wX/UaJHgMKn19mm9xNsPTME5CvOgckiDD
	Xd1NByQMhp1VCFduXm1mjgvMLxxh0ns1Xj9CXBxR3ZGUhXlkNkMzCK3QTAsDvuBp
	rqKmgw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f70ar0bw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 12:33:19 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d094e04aa4so145950385a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 05:33:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750681999; x=1751286799;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KyZjPN+SNAIAg3IAU9FdSrwOWQe1ITB33UyIEGNR9Fs=;
        b=Ds1IDG1xPa+LElU6/17oUwLRy3Qms4ZxCXbJTXsjIG6RVlUj+0MRHH4DdfQm/pHtGb
         N47rqPEV8F8eA0ZnbGphDOGzynkaqeHC5UFJ4n+O01QrYFZwtdEJBcEAXpWs6Sd/53GC
         8q3aRSMe4kekiwwQ2Pe3ZulTqu7wcfpcrP8TAOYZIs8tO4E6egDPEgkqMXLoLkbSfXhn
         1UW51yr84WPuaTrm1fxXli2nUKLq8/i2e+HhPdsgHqQu459utBpCo6LDzqRyM3aXofjC
         rHPRVHr3XaqcZKDuPdDp3oBXex2G6NSfc6zJwKsZJJJN3nBhwRX/oN1T6IUaxER2Uro2
         zwNw==
X-Forwarded-Encrypted: i=1; AJvYcCXBfpPRA8O61wrr4FhiTLmyHYZEhIrDFD4NAJWFoJAqZzqZ6/t98vaAo4ITOTF+q+TLoVz9YdThgtMk@vger.kernel.org
X-Gm-Message-State: AOJu0YwsswlaAly8HVlYRTRnAvyEHKiE+4lz4qwhLElztkD8xt1EC+LS
	PxK4T5IZPRGAHBpUpfSFV+aQQsALGuy0Sjpcz1N/wMAjsbl/kuI9AxMFIvITHgCOIXh893pKCda
	de1KVGE7k5pWRxT1CDZ6rZ8bPwsbPUB0u3zBwjxqPcG5qMokJmB2hwaZYL5Zbom9B
X-Gm-Gg: ASbGnctj9uKEJTCzaPyUSaYyL3fS3G1JNsd1mQ9lcs2HL4cXLlkNWi//VZbcNcojRZi
	xQ2KUvmXcYUOeXVsYa0APU9whQ0ZFixhiCdys1mBg6bPKbkzBAOtM7Ydwk3jlbCXq94zIPpB05u
	WW4xgmQgIliPzYWVTn6596k5Z06fecoL/PWGlCYz+Jj5Im57E8uBsDofB9nWfqqMcULJyc1DEoC
	GeQlC04nmx7aHHqZc8jqRMI1HSCT9nDtKcIxeb57G6dREHcb1lIwdrnQ8DCnRXGH3a3wozUWMbo
	fJF1AVe1vYnr8J9RLq4YsIbVSuPGn9KV77eyjuHQs1cVPNV5WOVRQdbjxLWd5E0V7b5oq+wjaaI
	OGxc=
X-Received: by 2002:a05:620a:1b97:b0:7c0:b018:5941 with SMTP id af79cd13be357-7d3f98f6cc8mr611127685a.7.1750681998642;
        Mon, 23 Jun 2025 05:33:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE7mBGgm/HHa3+oUIwLKxJENQochNRI/zB7ykxF45SixOH6tOppd+g/Wk6+u7+jBcrXMTzMdw==
X-Received: by 2002:a05:620a:1b97:b0:7c0:b018:5941 with SMTP id af79cd13be357-7d3f98f6cc8mr611125985a.7.1750681998011;
        Mon, 23 Jun 2025 05:33:18 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054080f15sm708906366b.108.2025.06.23.05.33.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 05:33:17 -0700 (PDT)
Message-ID: <2091332b-c220-4bef-b4e7-aef94f38dd19@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 14:33:15 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] ARM: dts: qcom: msm8960: add sdcc3 pinctrl states
To: Antony Kurniawan Soemardi <linux@smankusors.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Max Shevchenko <wctrl@proton.me>,
        Rudraksha Gupta <guptarud@gmail.com>
References: <20250623-msm8960-sdcard-v2-0-340a5e8f7df0@smankusors.com>
 <20250623-msm8960-sdcard-v2-1-340a5e8f7df0@smankusors.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250623-msm8960-sdcard-v2-1-340a5e8f7df0@smankusors.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 9Tigr099BaSoR2K_4qzUm5IWLvZJUOh2
X-Authority-Analysis: v=2.4 cv=c8arQQ9l c=1 sm=1 tr=0 ts=6859498f cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=pGLkceISAAAA:8 a=wxLWbCv9AAAA:8
 a=EUspDBNiAAAA:8 a=gIguJqJ72JM5ee5WyxgA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=QJY96suAAestDpCc5Gi9:22
X-Proofpoint-ORIG-GUID: 9Tigr099BaSoR2K_4qzUm5IWLvZJUOh2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA3NSBTYWx0ZWRfX5xxEqK4uQDAp
 sDRw2Zu6hP4TK8R81y0hozjBQjkRfdB8vZJT2IazJrKUZ/sXN0vIyxKeUCCfggI0ZekmYeD6zyw
 h4nyG9lgYckSoYXUSrdUbwqkO+HQr4bl4BVEojPZTB0EzjhSS+CXF8tahHMiekN/sERhBXmh6CR
 0R5MAixOnQ7Bprgqd0rhPYkvCM+6AwrsKrb4oFpDjO8VsBxQZsoRmXiiWyNowHJanRIRL1Uc7/q
 qyD+3XioVTD22hccqSRVaeOYh4vaL2svq3x0+IvqOS39sPdmx2x8lALyayZSqxmkaqQ5mWLAC+2
 hpEyJjRAmpsxewnsD2CEPnMcBk5Q3cxTdCplPUgsx2oI1MKRWr/pBOlM2MjHb0+UtLxPb0c0Cee
 JUfn2jgktRhr/Y6fyONkuK/NrcIKiXGEnuLnWto2lIhfvw/MCNaG7OKcXEwKuSNASg65wp9H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_03,2025-06-23_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=999 phishscore=0 impostorscore=0 mlxscore=0 priorityscore=1501
 adultscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506230075

On 6/22/25 8:26 PM, Antony Kurniawan Soemardi wrote:
> Adds sdcc3-default-state and sdcc3-sleep-state pinctrl states for
> MSM8960. These are required for devices like Sony Xperia SP to ensure
> micro SD card functionality, though they are a no-op on the Samsung
> Galaxy Express.
> 
> Tested-by: Rudraksha Gupta <guptarud@gmail.com>
> Signed-off-by: Antony Kurniawan Soemardi <linux@smankusors.com>
> ---

[...]

> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> index af6cc6393d740d30f3555825175ea6851d406166..49d117ea033a0ef73c134d1225982786fbded2c2 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> @@ -71,6 +71,11 @@ &sdcc1 {
>  &sdcc3 {
>  	vmmc-supply = <&pm8921_l6>;
>  	vqmmc-supply = <&pm8921_l7>;
> +
> +	pinctrl-0 = <&sdcc3_default_state>;
> +	pinctrl-1 = <&sdcc3_sleep_state>;
> +	pinctrl-names = "default", "sleep";

This counts as a possible fix, but I don't think anyone's gonna
complain

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


