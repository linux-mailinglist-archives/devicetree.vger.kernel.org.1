Return-Path: <devicetree+bounces-239334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D5116C6415A
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:36:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 661464F14B7
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:32:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDE9132E128;
	Mon, 17 Nov 2025 12:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TsAYVHL+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Oi5V44Ch"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10E0329381
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763382623; cv=none; b=txq2dIUDTJS8zNNN0LLGlufzLKhRM0lNCixB+CjTO2jucJ2/Zq97YVJ8011aTzMYWCoPaplyX+PD3r787yIbKnFdraCfrb0HAtVwAJjXQRP9dkJ9Yw76eD8kBS2u+8hh4RXC/zFzotifftZEIz/NZNTDDmzdlAe3ao+mDpBstkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763382623; c=relaxed/simple;
	bh=r7R1b9wUBDzUXuulPCqVqpGc7iIfAPgHde6sJdwLc0Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BQs70Ozdr0X3/XQRz4ouF5Lm7DqckWxQa6yCqKbGvu5NoGAXOfDcTKqKwOBOFVMKYVXzpFO+QT3TmYFO/smVK9HocuDJf+2oMa16xVBSgfj2Yiv3os/4nWsWgN9aup0ZCYkVbsTpSqLBHEI1yrRVVV+XLXephtB99+2+aVI/4D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TsAYVHL+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Oi5V44Ch; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHB2ssh3671302
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:30:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Jg+vEurhb/UOj9r6Pwi2HGIyI+qf8acnrXpyNCLCH3Q=; b=TsAYVHL+aMIoiDe8
	d+31Ju7EnOEtvbOVDJG4sjSyU7ugBCYEIpUoO0zqcjvEKn112CJI2nFujGkrMInn
	RhYHnuKzWJzTjHqqH/VeufrXZQlo8T2lCV9R0i9Evq6I2eFhQb07ndkeiYNoskK/
	CEP7i2VS6TDF9M4c52soebvezrcgaQ62hzp4iWVoba5eJwZzf17rewBBVEmRygrf
	jA3umkuRjA0n9Y5E/ZfeyZ2TIHoXiVwIBmT9ecHD4hsBtacIzwLNCRJnzTGCkcZJ
	3G8mocmf2bDXdMBsGVcYPth0TdwN7ESw+GMEnk2j07O0getjA/CPB614u9x93fxc
	GqBs9Q==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag2g5880h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:30:20 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88057e35c5bso12911396d6.3
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 04:30:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763382619; x=1763987419; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Jg+vEurhb/UOj9r6Pwi2HGIyI+qf8acnrXpyNCLCH3Q=;
        b=Oi5V44Ch7Pr+gKs3F7QLvyD+qx1ms0qby8uyCiCru99SQ0Uj2aY+5G6ab0OcIDs5JR
         694RgjYog4SlS7g86G9uJKME1ywOcPJSd/6t5z4PXRF+KT7rGYFbsMn5/mRN/l5MrS68
         YYk4+7zQCzG7HAWhzjPlwgWhtvLKi73JD2qsqIkSuk+unqztMgbXp2Uo2DUOvNN9Uzr3
         DTlgpgmoMhtdbPHnegIGXcwO+ozvC72ZHSE5YBk6jq1CT6SVlw3lYqhOh5EC38c4iuow
         GOKREqgbto0qGzLEAStpPQibeUOc8hyy2xjRpQd+9wcQyUB4vpb9hCo6Gt6RuJp8/PXb
         Pfbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763382619; x=1763987419;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jg+vEurhb/UOj9r6Pwi2HGIyI+qf8acnrXpyNCLCH3Q=;
        b=Qdq08cVlz2gd9HZa5CwHWjuKs8N8Hr66cMtIZV0gOByXTOGp6ihuFS2wsq2ZJ3yg/O
         FJc2fiMI0/O0AgmuRfm3E1AED5Jcu57JMCVC1aiQNMJJPEO0AXsUE3vtNDCDexZw23Tn
         tJAyW/JgVKyLXcUFEK6vGaLo5iPmy/T5y7+EjUbCIPi6iq6wmEtmXiDwVz3LMx8TqoV2
         +XY4oiWkwBxwkGwt+hpdh9MHWfxAnCy3zsCRB4MaxIJpO4ft3xzGYvzTyILxTdNJXlgD
         /XuGcRaXEEvI7+QY2cK39XjsY9UV85ftzRRPnTCmbMG4fLsiKkACL7HnTVREcxoFW+n+
         2ODw==
X-Forwarded-Encrypted: i=1; AJvYcCVgwTWHZQCN53pK1958WVSUdmkOdfKtGnfLueKgppoJmImvov9NRoWbmQ6NUChi23k0JNo9DupTDXqy@vger.kernel.org
X-Gm-Message-State: AOJu0YwpLmFLQqwzpiPnWYKZgAUxyrHYS6ByD+SoTm7HjVUBf5ey5eke
	7ZOOCKCssGsC8EtoITcYH+OmHuqzgzNwyaQZwzGUmBIn5AMUsY1HD28SL8H2dfF/h3xvxQdA9N+
	R6lW19O0mcwsEkIMMaFlJF8RMQBNPaIoB04vPdYifXVWSyX4ni2PZ6RmaFIs35XBt
X-Gm-Gg: ASbGncswM09Aa9QY/TsoGkjImBQjR6bEpqqVodOgNOOBqATPfhvKCRRqh73v/ymEBpI
	TVzyP45yqYOwFJuj4i391SRxIs49oyzQSW/Li5VsdJYE23RpNKPdzj1D5e1l5nj8KGijXOY8fbV
	6hzQ7mSaFFMJKDwPjI4AYssjd7t6AZsqvMZrG0+TKmLfrYGiaXjPvQ+SQ1FJ8uYp0KGWbKHA6w9
	NgHPlnGoUCUYhyLAdtVVdbERacMC2XFmSFy9+p9NQCqpDvcq3cLiHQOgGEIxnf4c7NNVV1BGITE
	GiTgam8ojKgE4c4kR9Z4Le/rWMLRKTLxwPPmZTrMEKeOjml0+ImU8UnsXW0UKnciTtPAvuZuqRU
	W6M8SnZ1AuoXAZ6fFw0jFIP4XY0PTK3EznCDPcr1oSXjWthIl9bhTgqw/
X-Received: by 2002:ac8:5d49:0:b0:4ed:6862:cdd0 with SMTP id d75a77b69052e-4edf36e32acmr107293711cf.10.1763382619481;
        Mon, 17 Nov 2025 04:30:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFBfRfdvaplYzbcgQy9VBBUfnsh8fk84DZZU6alhi15KhqLDYHlI0Cttm45o8F/29kkTsiajw==
X-Received: by 2002:ac8:5d49:0:b0:4ed:6862:cdd0 with SMTP id d75a77b69052e-4edf36e32acmr107293291cf.10.1763382619031;
        Mon, 17 Nov 2025 04:30:19 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a3d7335sm10133910a12.4.2025.11.17.04.30.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 04:30:18 -0800 (PST)
Message-ID: <c44faf76-852c-4bec-8e8d-6ea7d79ab48a@oss.qualcomm.com>
Date: Mon, 17 Nov 2025 13:30:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: msm8939-asus-z00t: add battery
To: Erikas Bitovtas <xerikasxx@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20251115-battery-hall-v1-0-1586283d17c7@gmail.com>
 <20251115-battery-hall-v1-1-1586283d17c7@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251115-battery-hall-v1-1-1586283d17c7@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=F7Vat6hN c=1 sm=1 tr=0 ts=691b155c cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=69Il93vAAAAA:20 a=pGLkceISAAAA:8
 a=I6SptnUO25vYt0rnpQ0A:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=bA3UWDv6hWIuX7UZL3qL:22 a=yULaImgL6KKpOYXvFmjq:22
X-Proofpoint-GUID: n-KO3NNz2zQqf0nv_0K1vItwAjOaaO6O
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDEwNSBTYWx0ZWRfXxPJVNPt4lO4q
 NrLn28fpZwPzZntuOUriSb2e1eTSJWjV36tqlb//wEyPny11VkdBgNdNOsR/VNZFebc11wowP69
 AH/3g/TjOCkFwPyUHrKlEnRAvOwC7rUgjmGt0D6Cko8tFlyG/DiyIxHffYbVYB/s8jdVB3qt6Lf
 iraa8wOO1M1r47E/VQR+yuKQVYKYXrur7ar0wBYqzeidPOpGrH/fIkGhxie9CVGqhj1Y6MKu8ur
 kLvkWoAtTEzj+zmeq4ILybDSLIENyCmG0+15iMD04HW+3KzZO9GmZZcbSLOJGwNyHWed6gldyX3
 IF1Xh6faWDjKphOLRngsMkguVGMIeGK1QYIdFZVEjYRHqVcXkh6Op5bTRCXX5dwdXqBXdtMpdOo
 ig+p3Tit2AtzA1G1muUedc7KLjQN1w==
X-Proofpoint-ORIG-GUID: n-KO3NNz2zQqf0nv_0K1vItwAjOaaO6O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 spamscore=0 bulkscore=0 adultscore=0
 lowpriorityscore=0 phishscore=0 suspectscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511170105

On 11/15/25 1:26 PM, Erikas Bitovtas wrote:
> This device tracks remaining battery capacity percentage using voltage
> mode BMS. This commit enables the pm8916_bms node and adds a battery
> node to track its capacity. Battery properties were taken from the
> downstream code and from the information printed on the battery itself.
> 
> Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts b/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
> index ebb548e62e02..b58f0a04abfd 100644
> --- a/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8939-asus-z00t.dts
> @@ -20,6 +20,25 @@ aliases {
>  		serial0 = &blsp_uart2;
>  	};
>  
> +	battery: battery {
> +		compatible = "simple-battery";
> +		device-chemistry = "lithium-ion-polymer";
> +		voltage-min-design-microvolt = <3400000>;
> +		voltage-max-design-microvolt = <4400000>;
> +		energy-full-design-microwatt-hours = <11500000>;
> +		charge-full-design-microamp-hours = <3000000>;
> +
> +		ocv-capacity-celsius = <25>;
> +		ocv-capacity-table-0 = <4372000 100>, <4306000 95>, <4247000 90>,
> +			<4190000 85>, <4134000 80>, <4081000 75>, <4030000 70>,
> +			<3984000 65>, <3930000 60>, <3884000 55>, <3850000 50>,
> +			<3826000 45>, <3804000 40>, <3786000 35>, <3770000 30>,
> +			<3753000 25>, <3734000 20>, <3712000 16>, <3693000 13>,
> +			<3686000 11>, <3684000 10>, <3682000 9>, <3680000 8>,
> +			<3676000 7>, <3668000 6>, <3643000 5>, <3600000 4>,
> +			<3542000 3>, <3462000 2>, <3340000 1>, <3000000 0>;

I found a dts for this phone and it seems like there's 3 kinds of
batteries which quite obviously have disjoin characteristics

https://github.com/Asus-MSM8916/android_kernel_asus_msm8916/blob/10.x/arch/arm/boot/dts/qcom/ASUS_ZE550KL_1936167_3000mAh_3p4COV_VBMS_Final.dtsi

https://github.com/Asus-MSM8916/android_kernel_asus_msm8916/blob/10.x/arch/arm/boot/dts/qcom/ASUS_ZE550KL_1949572_3000mAh_3p4COV_VBMS_Final.dtsi

https://github.com/Asus-MSM8916/android_kernel_asus_msm8916/blob/10.x/arch/arm/boot/dts/qcom/ASUS_ZE550KL_2024958_3000mAh_120mAcc_3p4COV_VBMS_Final.dtsi

I don't think we have a mechanism to handle that in the kernel just yet..
At least documenting which one you based this data on would be nice..

Konrad


