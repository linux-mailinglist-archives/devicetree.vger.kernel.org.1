Return-Path: <devicetree+bounces-239314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 12219C63F0C
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:55:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 339AF4E4DA6
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 11:54:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9ABC32C93C;
	Mon, 17 Nov 2025 11:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DQylkEMF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZBiBx+Av"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431D132C317
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 11:54:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763380471; cv=none; b=k96FS3/AzX9DK/B0CfXh3KAcik0GHeaHaLOc9eCYStOP+8MiZTjtMqAv+rN5dv7NRcDx3QLzjZLdAPnYuLbCPS6Xn1YEEwMgyPhBkzgF41ft8FkEqnzhQGeiWOAcQPh70EYpxstSwbJ7y7AvYQ3XP7MVjl2mITh8oiNWSrknxXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763380471; c=relaxed/simple;
	bh=eASGy5T2Myjl3Je4+3cgRX61Xtr4Zl7WoTupqBAkDKg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Fu5DlCqAGuOtPKSK5nb2OQo88tf++T7XS8AMqZMRTTnjgJJ13QNBcbcmO6d33qNhEGvmSicKYqMVKUU3OLUx9RcGMWZbL+5ovsWNCIxz7SP/+kKrcLJj5q8mqb46CBtqSUtvTZ25bexur+GbjK+2hvNsvLfi8ZPk5UaWtAB6YUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DQylkEMF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZBiBx+Av; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHBAJ4n3318410
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 11:54:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tE23hRaIjqDclo/7eNZg3r9nM4UoNQiGbWoseVFxbJs=; b=DQylkEMFmac78VwD
	FMoCeiYEQbh6LvYj65mAQPkBW2jUOTXN1vR98ded5+VvQ3pgoqhmrDPCauzSwEQ8
	IOIc3auOL3CnlXByK8eALynSUCvKLw4oqSKEd/dtbgQg7CtRJ4a4bduY1ninBhqa
	MNg1VVJ5WlOwitzBOlBdHjfExUhJjYssbo54KLWHTF+W7Q7krhO5OwJ8ZNblI812
	VJ+0HjIndwKNEODd/vC+c/0JyPwm09Iz57pblK6exhnXMm2v3brz7gxFGYgYPRK2
	zp03EA200qNz/xAEMF5WZa2Gse+35itTKl5cRxvtbvYQrWUStz/R8PjCUm23gBdm
	w19XJA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aejm5cjtk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 11:54:26 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4edace8bc76so12097871cf.3
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 03:54:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763380465; x=1763985265; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tE23hRaIjqDclo/7eNZg3r9nM4UoNQiGbWoseVFxbJs=;
        b=ZBiBx+AvW+rIVG/fjIrCLxRGiVLoSUCmkgkpfjQE5W5kxRlg9c7klSi32VSMCeEV5A
         4WmGoxQdO1yHy4wzxAxgT8AodO+damlhzj1uvXzT6NNCNU+Skf6LdNIItcCv6GYrIWQd
         bM8keSWI5gxnL60KJCLARm6lZ4dy/ZofSe0ySBemOGmHdLE9KYwKIXJcXvFNGchOQYHc
         qr/xu+lsMhn1RlOGmiV7P060I1E7eLPr51AId3J69opXM/eX+/ETxeNrWQgp3kWroWtm
         k7Jg3g4qavCrRxLmQvDqel11i2AGus6s2tgCkB928PpFCp2YrhXI0LqmVzbh4o5XNGnG
         pypg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763380465; x=1763985265;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tE23hRaIjqDclo/7eNZg3r9nM4UoNQiGbWoseVFxbJs=;
        b=w3BVAT+4CVD2pL4ldivHso6q5qj1XKN0Pkai4S/7LMWDSMfCm+6ShAxKnoJrpu9pQS
         8spPDqZd8Bu2kcra0Ztt8BdZNcEd3XUaN/Bw085eMBLG4BJ2DRxKLKm522cQ6hxdiaAQ
         2rKdtGewhzs/syeTkSCZ3ajQgk2JdQm9+ejWQ4mV5a/UbliuoCYMfsKLtsISmgxtQZWA
         ROEDy+WC10t8y6j2LgJaeefHx31d/y6wp1Vap1b92um9xLGMH3R2V2gX6npj1PyQ2UQL
         l6oqdBDSiXLMwVCb3tOz99sBpWwLRzyhx1/QGAAKBoZfAy9qbQ+MzB2fGdSVwr/Pfl4T
         6ZcQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2rXES+gNhX5VkhPDSLjB/LzDadlyQdSwkr7jgv72GWS1GVuDpSpdna4DiIAJRlLvPJ5F8zyPywO0h@vger.kernel.org
X-Gm-Message-State: AOJu0YyuC4OTKc4gHBBGm9+Ikl9U5s6V7oemTChA9I6q5UKO1MxIlTSS
	1+bOgCinB6Xi3GzOgofcAZPOna/EEutLYtACOEWDrR0MB13JxHa5tMRBVg9jvMhu9N/wngdVedK
	zRmB1DYd7lrPhM4XwaUFi7Y8YOr30S5CMsfH/y6twl+XN2JqMK0OvQbe7CLi1QFIW
X-Gm-Gg: ASbGncuaMPByi9Ps3viVGFwsk3LQsnC1Aw6dWeDUMgdz6GPlwd4bk0WMpkM9Dnds+y1
	sjQBqIl/mTQXlqEIwE/EvUcoiTOSsOn4l8frf2ITvlMPb6FJ1edwB6sJTZFNtGGFp4BCpxXvwkt
	V2/0ohPouVFEZ+seMeqTLryRLH5Xr8n/NrKCeeDTFONar+nXS8O3iBdZVKJLCHEpkWRnwO3gQOR
	C5u8QuVpL2Z5PuDrCvtAPqcwsz6JwvdFZnaHnxFjXxYF9NwN+k9ugthHihYt683MKCHJ1D0ndF6
	udzud4/BK0mjfkWYp54JS1NYvQkS3DXThTZKOdTMJydcKe/ozw/mvU28splU81Z4vSKp8OIWrVi
	q+OavWsbcDOsdbGOS7cb5DZlJZpegk1to4bFGLdvB5nNNMFoMQYXwioVc
X-Received: by 2002:a05:622a:18a3:b0:4ee:1f0c:c1aa with SMTP id d75a77b69052e-4ee1f0cc796mr31189801cf.7.1763380465499;
        Mon, 17 Nov 2025 03:54:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFIIZytapzWkD6xM+tWueLqDt0UcIuw5hTrS+AvUE1kvI3s+eYNup+FICfEn76NzFyvMRGn7g==
X-Received: by 2002:a05:622a:18a3:b0:4ee:1f0c:c1aa with SMTP id d75a77b69052e-4ee1f0cc796mr31189521cf.7.1763380465024;
        Mon, 17 Nov 2025 03:54:25 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fda97dbsm1048967366b.59.2025.11.17.03.54.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 03:54:24 -0800 (PST)
Message-ID: <d5fc8900-e720-4f5c-b456-67c4ae03f711@oss.qualcomm.com>
Date: Mon, 17 Nov 2025 12:54:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: add apq8096sg-db820c, AP8096SG
 variant of DB820c
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251111-db820c-pro-v1-0-6eece16c5c23@oss.qualcomm.com>
 <20251111-db820c-pro-v1-2-6eece16c5c23@oss.qualcomm.com>
 <02a9d6eb-e480-431b-bd4c-a35cee170516@oss.qualcomm.com>
 <wf4h2lwyvgswtv4bgdfidj4vpvykwhu2gri4crvvtd644hf6nr@cnpqi5bmpvm5>
 <f4fbc949-415b-489e-b333-4c846d3ce8c7@oss.qualcomm.com>
 <CAO9ioeWpOArPm3M5hjR5PMbu4rkV1HHxQOZjOe5LwTKK7xMWJg@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAO9ioeWpOArPm3M5hjR5PMbu4rkV1HHxQOZjOe5LwTKK7xMWJg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDEwMCBTYWx0ZWRfX4rdBG3gRNyqg
 2hXZ1sBP9Zaetq9C7TdqXtSRXAnDmyot8e0oTdmcOBXgXZEoaktcdaFB2JT2IVRemr6VPa4TXr5
 fWKS17JUTMdB7x8Pt8P8Mw8Ki0BdFeL4ogbAr3Rp68pnVgB0b4sJ5PchHzH0LpyGE5c6kWfNGAj
 cPTG+6lQzZ7q2/KLx4VaYbX1fR2rJ7QNYWlZJQE8fgBCxxc+Ddnq29ejiyPN5Icxw143lfsjX8G
 J07EZCzvjkHZKECOkRVWIQOWruieaqdKFW1PkS9Rgf+zPXzAe8408UubJBkJuhhZ95JkTfa0Vk0
 94lmvX5zKuO3FWvO7s74BhXtfxD4/wb3pMGPFJEFz50f0C5X0foxRK2m87NUwnOn6ki3xFbhSiX
 nJD1GEy1Pdi4cSAx9LxAScIm0u33wQ==
X-Proofpoint-GUID: 4jr8tyrlHPV1S7PnBFPdV10MMM4Dnk1M
X-Proofpoint-ORIG-GUID: 4jr8tyrlHPV1S7PnBFPdV10MMM4Dnk1M
X-Authority-Analysis: v=2.4 cv=Pb7yRyhd c=1 sm=1 tr=0 ts=691b0cf2 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Y6j_kuvsfqa4fEXeYSUA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_02,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511170100

On 11/15/25 1:09 AM, Dmitry Baryshkov wrote:
> On Fri, 14 Nov 2025 at 23:31, Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
>>
>> On 11/13/25 9:32 PM, Dmitry Baryshkov wrote:
>>> On Wed, Nov 12, 2025 at 10:44:49AM +0100, Konrad Dybcio wrote:
>>>> On 11/11/25 5:02 PM, Dmitry Baryshkov wrote:
>>>>> There has been a (rare) varint of Dragonboard 820c, utilizing Pro
>>>>> version of the SoC, with the major difference being CPU and GPU clock
>>>>> tables. Add a DT file representing this version of the board.
>>>>
>>>> So is the conclusion that both flavors were used?
>>>
>>> Yes. I have had a production unit with a non-SG flavour. Bjorn's lab
>>> has a standard one too. All units in Collabora lab are Pro ones.
>>
>> Pro doesn't necessarily have to == SG, this seems to be sort of
> 
> My understanding was that APQ8096SG is modem-less MSM8996Pro.
> 
>> a "MSM8996Pro" and "QCM8996Pro" situation.
> 
>> I'm hoping that speedbin
>> fuse values don't have different meanings for mobilePro and SG
> 
> At least downstream doesn't have separate bins for APQ versions.

arch/arm64/boot/dts/qcom/msm8996pro.dtsi:       qcom,msm-id = <305 0x10000>;
arch/arm64/boot/dts/qcom/msm8996pro-v1.1.dtsi:  qcom,msm-id = <305 0x10001>;

this is interesting, perhaps Pro==SG then

I also found evidence that there exist allOf

(MSM/APQ)(Pro/not)(Auto/not)

in the form of:

msm-id | sku
246 mobile
291 apq
305 msm-pro
310 msm-auto
311 apq-auto
312 apq-pro
315 msm-pro-auto
316 apq-pro-auto

and apparently upstream dt-bindings also defines 302/MSM8996L(ite?)

Konrad

