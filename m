Return-Path: <devicetree+bounces-118345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0690F9B9E2E
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 10:30:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2601B1C21734
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 09:30:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F17B9157A6B;
	Sat,  2 Nov 2024 09:30:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UP/DPhS+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62AA71448C7
	for <devicetree@vger.kernel.org>; Sat,  2 Nov 2024 09:30:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730539827; cv=none; b=M3zxFUzfZmkvzbPuY4wX4Rvtjp3fET5CuizD/DQIDKprFaYJKtkoChGriResG6XM9chGXJtpKTa4X6DpE5bfDvyMaYZhrNvcjV+z+KnoYVDYFwCOOZhmYhjQ4qzPUo46OWnuYZZDNCAoAMYOnVVwsnC94FlVLk9PXyZb8HrM/bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730539827; c=relaxed/simple;
	bh=KguoIWYcyHjI/KTVd2RGJJ5CuHRqYCPvOiQw9hWn1/w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mRfYr0/M8Y7vQS6SvksuZ8StohXUJ+501DsfzchzOubucrcEB/hdDV+35aAQtpLWkPCgBZEb7v5lu8ygimPX1pgtAMqSGPss10HcIoeEp5MTU4fKRZoKPuuGJ1biYPSBw7J01Uq/eXzlKJomauWlorR23BXV4rQdbisXWCjxTQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UP/DPhS+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A24SEvR027345
	for <devicetree@vger.kernel.org>; Sat, 2 Nov 2024 09:30:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BkeD2HeLP970ElEG5FogJPdESKQj6KjvxZECpLrGFKk=; b=UP/DPhS+hN4UnU8g
	ja5FeCMt3i4ucwlir98n0a38a929N4aZrmnNupnPPGDVOR1DbNCFo7AEH4zpIBq0
	VXQD4quYSFFaRMn5kQ79ugSI4VroWKgtH9JcLK+Oftbl8cHCnDVDwqFIcn1qcqRS
	aT/EDRGptbt3e3plC31abpiO4qStldL3O9RKHfe6CNszfSBKbkharimssONpqE9i
	q58mB+fiBPHSzbRI2yIKQIVVDtIF+G00ViotW2xbuuXMmAS2jf5+ci0Uba3AOZe/
	/tZdVAOE7NkRucPDvomc+mQ0kuohpwaPPxlW47sKOK73k7KP2j4Lr0GOAcQi+GV/
	rVf/gw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42nd2r0dnm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 02 Nov 2024 09:30:25 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b1583c363eso27495085a.1
        for <devicetree@vger.kernel.org>; Sat, 02 Nov 2024 02:30:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730539824; x=1731144624;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BkeD2HeLP970ElEG5FogJPdESKQj6KjvxZECpLrGFKk=;
        b=c4Z/7BrCSUQfK1CjD79uSabTVn8s226NnLk/HM1YcIocoLlq6sA78B9APqV1iR6g+s
         f+Jkt1UtyEmzNtnRaU3e8bPOdSDOk9gDJ7Ak16ng7h9G2huqvKAd4OLICnOxkVliQxFD
         /La8r+US4vs/HmBHb4Z/g5T+4PSsb9NnGMJs/CSVMXD2Ed14ILW50YKsXZfFSdNFmm6l
         RF7/VG7thVa8nmC2Tz30dVlGBgQTA5is6rQQaOWVbh7qOwQ7mucyYjyxqIk23uo4WzzS
         DXh0KrLyA2GG1vk8BKiyQDHCgb/BfizIAN4JFKTdMGIz4IobHs9OI5QM4m2zVjMd58H5
         QzMw==
X-Forwarded-Encrypted: i=1; AJvYcCV/XTAfZATvi1gh1xg6N1tFhGbUp3rSMXPTcbPeh7cQQ13qEUSKpDu+ev5Us7xS/mXCNxEJT1YA8hy/@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4pvcvTUlReVsb39ovLiQeE5luVTL8PvQeRNRGL3MrI6Y6CD9q
	KAckY+e4J7nMa1eLrL0MotBz3xLpSIahHbhuzkJ9s2oY9lLX6Po278MySw4Ivj+PH9YT9wDf11X
	D+6/+ZFLqDcmKqF6Mp+q5QnVocMQ6YnSQVS8fNNRfiOKe5EsomRsXx7Fl7q1j
X-Received: by 2002:a05:620a:4687:b0:7b1:45be:2e93 with SMTP id af79cd13be357-7b193ed1cc6mr1776340985a.2.1730539824125;
        Sat, 02 Nov 2024 02:30:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGTn+cmJ+8XggYZPxMks84hd5eMzE9GVnlaPbjGcGjUXNk5B311VxjwpRp3dbrLk5HLSAW3Dg==
X-Received: by 2002:a05:620a:4687:b0:7b1:45be:2e93 with SMTP id af79cd13be357-7b193ed1cc6mr1776339185a.2.1730539823722;
        Sat, 02 Nov 2024 02:30:23 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9e566447a1sm292887066b.176.2024.11.02.02.30.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2024 02:30:23 -0700 (PDT)
Message-ID: <8078589d-d724-422e-a5f0-f5b6c67deafe@oss.qualcomm.com>
Date: Sat, 2 Nov 2024 10:30:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 08/10] arm64: dts: qcom: qrb4210-rb2: enable wsa881x
 amplifier
To: Alexey Klimov <alexey.klimov@linaro.org>, broonie@kernel.org,
        konradybcio@kernel.org, konrad.dybcio@oss.qualcomm.com,
        andersson@kernel.org, srinivas.kandagatla@linaro.org
Cc: tiwai@suse.com, lgirdwood@gmail.com, perex@perex.cz, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@linaro.org,
        linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241101053154.497550-1-alexey.klimov@linaro.org>
 <20241101053154.497550-9-alexey.klimov@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241101053154.497550-9-alexey.klimov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: YztKxUDPh2MXDIyNb3Ahzg2WhkqJF2RU
X-Proofpoint-GUID: YztKxUDPh2MXDIyNb3Ahzg2WhkqJF2RU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 mlxlogscore=834 priorityscore=1501 malwarescore=0 bulkscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 phishscore=0 spamscore=0
 mlxscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411020084

On 1.11.2024 6:31 AM, Alexey Klimov wrote:
> One WSA881X amplifier is connected on QRB4210 RB2 board
> hence only mono speaker is supported. This amplifier is set
> to work in analog mode only. Also add required powerdown
> pins/gpios.
> 
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 45 ++++++++++++++++++++++++
>  1 file changed, 45 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> index fc71f5930688..76b9ae1b0ebc 100644
> --- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> @@ -63,6 +63,16 @@ hdmi_con: endpoint {
>  		};
>  	};
>  
> +	i2c0_gpio: i2c0 {
> +		compatible = "i2c-gpio";
> +
> +		sda-gpios = <&tlmm 4 GPIO_ACTIVE_HIGH>;
> +		scl-gpios = <&tlmm 5 GPIO_ACTIVE_HIGH>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		status = "disabled";

Does it not work with &i2c1?

Konrad

