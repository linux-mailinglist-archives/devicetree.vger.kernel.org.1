Return-Path: <devicetree+bounces-117911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A28AB9B84A9
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 21:53:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 622E5283894
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 20:53:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7DD61C8FCF;
	Thu, 31 Oct 2024 20:53:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DfGxBX/3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1D11BBBC1
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730408005; cv=none; b=lYL5YxNIkjkz21k7E8c16ANKo8hmy1Ach3sEosThysFbTcDbf4dO03pfisWj9PRN0iLJG5LujzO7BNahm3g9w3RCQexOJx2bbbVeZuuitEDdQzhbA+se2/HWYPDs8CqNHysgHKibh/2yWSCuVv1koYHr73ezb8vRu4QoZYdEfk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730408005; c=relaxed/simple;
	bh=JTl64LsC+7XOIm2vxr98YQsDa5bxc6SLilmWoOUoYFg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TBseZB70PspjNiR9PRuW5aGJ+N8wdY+GeE3NfolV6/F7QEZoZOKhh+ySXz4/7hbqnCjWTgGqNpuarS+DB9LESXyi70VmXCR4D7jZyut/oXg7i3SsSeuWQmDFZ1ueP8SYWYakI06TI7yraSzug00LEWcbD3s9LAdwiBx4nBAvYuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DfGxBX/3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49VAXrAQ013849
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:53:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	owTGFKN06ncL4Tg/iQp6ZJPryBvbXP2mjfa8DOpAvj0=; b=DfGxBX/3ScjXyKpV
	Ne5T7TTc499jYZqp5HW3kQ1sGYcncOEME1UsYabZKmuX0tunv5sE4zj6NRnx26nF
	rHkAQPNkPbXutfj4PKOp4jWJtpoeFEm/SfikaKolgTCe2zgtW0p/21K4dX8xjGj+
	T4PRFkHGaHffykKgxnUV68q+LWwNvaBlGgP5wJ6UBowWtNd7SBnnJWPMZsF5SaWP
	VE8PNvOCJ//G75KcNxEeyzcUhX4C/spLa189XQA1K5jNs1/10MQmQkyvuAAY2BPf
	UBjMCztpEFZ74y5DpNtUZfHUtlhCmwVnyg6utkPbKJQ86nNAeNi+EgqXjvjI1zmQ
	L3xPAw==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42ky6rb4c7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:53:19 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-851f04dc586so44747241.1
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 13:53:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730407998; x=1731012798;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=owTGFKN06ncL4Tg/iQp6ZJPryBvbXP2mjfa8DOpAvj0=;
        b=nlzp0xqlIQDdpiWgSejn0q5f4SzQrD84OPKy13al8wXS1sWxSIxo1PEHRz/MSE4hDT
         1JGajm/IoScIECLG+BYT1Tvc1ZTIhfkenW0RkTdYNGp/5O5uvgKTit8bZcip5siypvxe
         TnSk6u6uNcq35yRR9zVDmFYd9nJRtN8gj6i2V7kB6P8ERjTdOHdU7ogZ/5BmgLKrpmAY
         oN3x3G9wT6wBxniu/QXEQdK1l3s0jdyTXizdJb7rQhiAa9MOS1geOpmJnbN6Ryls7J4O
         KxgA7PyrfSH5zV+pJey+6yztlxS+cxsIU9CF9G7u2f2Edwwxqx7xIyAXSSO9Yp8Y2KoE
         r+rw==
X-Forwarded-Encrypted: i=1; AJvYcCWPx3lJ+pmWRl6GbnsfuYkT9x9x4gO+MvYtu5T+G0fSjFviqoeav6wLCVjghskPZ6tsQ1liuS7icCuf@vger.kernel.org
X-Gm-Message-State: AOJu0YwrdrqYJqLRU39jEgip6W4T2zqEfjPndgXzeLHjHBP4jcibLIGF
	u2Dmf2vEoZBwGsnAWu8A3QohzPt6/4cOoDtsTSwdKSwjq3mIBzIGtDPIq1Kyl51F/OC1T6zU9uK
	blnOE+s/CooZISTgQskybgPrK59llhQbZcowEHJk6nTgQ3gEJjeID3UWV0Ku8
X-Received: by 2002:a05:6122:25ce:b0:50d:85c8:af4d with SMTP id 71dfb90a1353d-51015357a12mr4957107e0c.3.1730407998198;
        Thu, 31 Oct 2024 13:53:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE5YKOIocpg/v/96XtAokYYJ4efxqqw5PcBHccxm6eAbBcDiK3kCqDXojqJXGB6vOzNqdHLwg==
X-Received: by 2002:a05:6122:25ce:b0:50d:85c8:af4d with SMTP id 71dfb90a1353d-51015357a12mr4957099e0c.3.1730407997878;
        Thu, 31 Oct 2024 13:53:17 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9e56494465sm103407766b.30.2024.10.31.13.53.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2024 13:53:16 -0700 (PDT)
Message-ID: <743ce426-3473-49db-92c3-45b9057ce0a6@oss.qualcomm.com>
Date: Thu, 31 Oct 2024 21:53:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] arm64: dts: qcom: ipq6018: add 1.2GHz CPU
 Frequency
To: Chukun Pan <amadeus@jmu.edu.cn>, dmitry.baryshkov@linaro.org
Cc: andersson@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        konradybcio@kernel.org, krzk+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        robh@kernel.org
References: <xmqyp2rgd3nozuiqu44iwidjnnwsidls3mxaqhmy3sshd4nok5@n552fd5tkjoc>
 <20241030133015.487183-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241030133015.487183-1-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 7vFuAwD4tZtjUFqTbNDIPdVQeYYMjtrj
X-Proofpoint-ORIG-GUID: 7vFuAwD4tZtjUFqTbNDIPdVQeYYMjtrj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 spamscore=0
 clxscore=1015 phishscore=0 mlxscore=0 impostorscore=0 bulkscore=0
 priorityscore=1501 mlxlogscore=708 lowpriorityscore=0 adultscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410310158

On 30.10.2024 2:30 PM, Chukun Pan wrote:
> Hi,
>> You can respond here and post new iteration once we settle on something.
> 
> Sorry for the late reply. There are two versions of ipq6000 SoCs:
> (1) Earlier version: soc_id: IPQ6018; fuse: BIT(1); SBL version: BOOT.XF.0.3-00077-IPQ60xxLZB-2
> (2) Final   version: soc_id: IPQ6000; fuse: BIT(1); SBL version: BOOT.XF.0.3-00086-IPQ60xxLZB-1
> 
> The soc_id is related to the sbl version, but it is written by the
> manufacturer. On the qsdk kernel, early version could reach 1.5GHz,
> while the final version was limited to 1.2GHz.
> 
> So I think the commit message can be written like below:
> 
>     arm64: dts: qcom: ipq6018: add 1.2GHz CPU Frequency
> 
>         The final version of IPQ6000 (soc id: IPQ6000, SBL version:
>         BOOT.XF.0.3-00086-IPQ60xxLZB-1) has a max design frequency
>         of 1.2GHz, so add this CPU frequency.
> 
> 
>     arm64: dts: qcom: ipq6018: add 1.5GHz CPU Frequency
> 
>         The early version of IPQ6000 (soc id: IPQ6018, SBL version:
>         BOOT.XF.0.3-00086-IPQ60xxLZB-1) and IPQ6005 SoCs can reach
>         a max frequency of 1.5GHz, so add this CPU frequency.

Are these earlier versions valid SKUs, or are they something like
engineering samples / early versions that were internal to Qualcomm?

Konrad

