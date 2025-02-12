Return-Path: <devicetree+bounces-146059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A50A3328A
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 23:27:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A2135164A79
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 22:27:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAF5520408D;
	Wed, 12 Feb 2025 22:27:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ABWIiiPq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB09202F67
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 22:27:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739399265; cv=none; b=LQ+HB4LjJugS0nlqrqunGP7Cpa5uGyP9X9yaA5977cN5v4En1jQtK+YB8MvY8HvxM8Kl7BEVna0fJJ05+FO02fr8ggXBk8NzTY9V4Wtq+UhhuDu+ZjwIzDDN7eGfGVmbpSzlNeehvbSb/wTURl8iqAMgmHdTagiHRr5usWrv0Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739399265; c=relaxed/simple;
	bh=RuVfgyHjpa0Dr8v3kLqklchuQuADCZEXTGbZnpszfzs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WmJBWOG8/iPTTHnCOb9P8BRFYjAhOXBvMKBfQ44UTleRRoJn/MTu2gAl1cAaFiDnZG/NQ7/PQRkbPr6fvQC2nKBKxthOhaLMfMZt5IHixZ3waDP8iRb/9ykfj1nEFeB4O93OXOlPv6POzPWA1GG2I5TCN4iDKMyQKliMKhmGh0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ABWIiiPq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51CCC3VD010163
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 22:27:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	p2R/RTt+0MfG1Sv58vOwjs183HLY+inpys37nzh2bbQ=; b=ABWIiiPq+geEJsAT
	QAIgs/Qa7LVlfMV7TFGq6lZNEdi+WZKz1fBnP62E8jwUGBbs4QO5ZF53lZkR77wu
	L6EQWxVu76KH0F2X1EOgIYoc3eKshXkHEuEQOqwbwWAVXiBw+edkg6/RN5x8xZMs
	yF2KED1gH9YsgRtliTOXR8M8V18iPcxDHHAkymtpe95VAjSO3udeT207AsPme823
	F473kKrWEnZxGqxa1C7q1ZmvCu8eK5k7BCWM1w6UTS3aePcRam97emPekP8PoFxX
	ZLJuMd4Pnn06cbgS/s4nb2BN3fxCATB0+GYyjM+7yp3PPKwPVnJ1OCgiEgOLELuM
	5PLh4g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qcs5h72g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 22:27:42 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c07715341cso3144485a.2
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 14:27:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739399262; x=1740004062;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p2R/RTt+0MfG1Sv58vOwjs183HLY+inpys37nzh2bbQ=;
        b=qsOH92iFXOFXg7TfHermbompInB3U+Qu6CNnfyv2lBpmK3T27gPcAhrqPqw9Yy1eh0
         GpJTh5LhNq0PeVaRut7FD6yjSSz8mXiCEFE/G+nwcHNdWHSmLHWb+hWbmfH90t2hnNQN
         2tNVEggfVDUsV1gBO/W2l3yiYvRzAtkjpF88v/Xd0RNdeLEionJ3PBolHf3Y+yEdCRTp
         BEF/B4bGc5QEHie7Ro1WiYQP5xANhV/wfa2rL1mJBeczYJuPt4KjGUuGuwxeK25wGYm5
         dwezMJk/ceg/5GjTodDcpEiDUV4OQuG2/wjx0N5UOC3KqIk0rjJmhqJFYm4VmiDRwWgF
         5hCA==
X-Forwarded-Encrypted: i=1; AJvYcCWHPbuU+tUYR+f9AnXbwhsyMSafg0Jy95rKrjKRsPwI/mqcBo3j9YvQN2PDgNWUg1K3uw+exgyyC5wu@vger.kernel.org
X-Gm-Message-State: AOJu0YyGcJf75cMY95vc9TsbWnGyR3ZuautG8aM/u6Y24n2QkaCU6l4h
	jTEw/6ER1aOLhq/qWy9HRWtkudh/1NjTkpjf24bC4Bef8PIEzgjThbHP4XhdmOgVr6ctqyVBU4V
	jNqs9fHOqQS+w0VA4b0a3tABUKOWbJjbNgo60M1E+DhE5nvibwFyT+wjF39D6
X-Gm-Gg: ASbGnctw28gjqa80KcAMDDYY8eq6JjYfB1UsNDEB8uYioqZpEpby1Dd9iXSMwBSaSql
	KIUNGsmI5XJwcZLWj6ry3q41Q3mSYLuJdM81BKQc1m/oUriJbAQCspxivO8tKdBHJrrV4DJQiB8
	FjMpG1alUQXwHFtutZi/klx9VGV080pPsEWwbzGS9cQaSN8rcH4xZAwZZWfbuZcJgYvYEG41McZ
	COwMEavltUrOa0HiQ/FQsDo4bzGOTaMjfEhD5GnHn/DEHFa094U0du5uGKNumepfGr/PNeH0OwX
	e05W7tKspzNE2BbrBTsEuGDKhX+ifhZNVy5lrxIXXFPXmDolUzAkDrcQOWQ=
X-Received: by 2002:ac8:5dd2:0:b0:467:5d7f:c684 with SMTP id d75a77b69052e-471afed5648mr27378731cf.12.1739399261974;
        Wed, 12 Feb 2025 14:27:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFm7HwjnD8TfrrD8qTdjd3ZCWCL72oFAhN3KcFlNCVuMikLAd4knHaHey2dB/mkKLaZ7ZWWgA==
X-Received: by 2002:ac8:5dd2:0:b0:467:5d7f:c684 with SMTP id d75a77b69052e-471afed5648mr27378541cf.12.1739399261580;
        Wed, 12 Feb 2025 14:27:41 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba53376756sm4479566b.115.2025.02.12.14.27.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2025 14:27:41 -0800 (PST)
Message-ID: <82fee126-4e03-4366-8dad-d8ea98081beb@oss.qualcomm.com>
Date: Wed, 12 Feb 2025 23:27:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: pm8937: Add LPG PWM driver
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Daniil Titov <daniilt971@gmail.com>
References: <20250212-pm8937-pwm-v1-0-a900a779b4ad@mainlining.org>
 <20250212-pm8937-pwm-v1-1-a900a779b4ad@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250212-pm8937-pwm-v1-1-a900a779b4ad@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: cVrhv7mUuWxCVtadVlCkje3LEfEKwkhp
X-Proofpoint-GUID: cVrhv7mUuWxCVtadVlCkje3LEfEKwkhp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-12_07,2025-02-11_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 impostorscore=0
 mlxlogscore=964 phishscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 adultscore=0 clxscore=1015 mlxscore=0 priorityscore=1501 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2501170000
 definitions=main-2502120159

On 12.02.2025 11:21 PM, Barnabás Czémán wrote:
> From: Daniil Titov <daniilt971@gmail.com>
> 
> Add PWM/LPG node to the PM8937 dtsi so devices
> which use this block can enable them.
> 
> Signed-off-by: Daniil Titov <daniilt971@gmail.com>
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>  arch/arm64/boot/dts/qcom/pm8937.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pm8937.dtsi b/arch/arm64/boot/dts/qcom/pm8937.dtsi
> index 42b3575b36ff4d37df11ccb5ed68e965e3716300..d13f39d81386b9493e33411e7fa0fb69e94644f4 100644
> --- a/arch/arm64/boot/dts/qcom/pm8937.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm8937.dtsi
> @@ -143,6 +143,14 @@ pmic@1 {
>  		#address-cells = <1>;
>  		#size-cells = <0>;
>  
> +		pm8937_pwm: pwm {
> +			compatible = "qcom,pm8916-pwm";

Please add a new compatible with this one as fallback, i.e.

compatible = "qcom,pm8937-pwm", "qcom,pm8916-pwm";

and add it in dt-bindings

Konrad

