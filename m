Return-Path: <devicetree+bounces-228822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F790BF0F22
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 13:55:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD75C40698E
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 11:55:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6E2030506E;
	Mon, 20 Oct 2025 11:55:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E4cIrlXc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B12343019C1
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:54:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760961301; cv=none; b=UJo4/5ZJgsEgHAqVVHiFGo5SUvlqz7DmhA0PAmSWE8WIyE3h2IcQAfMh53t4COW8zXZeVG/cMvhzMBvxLlf+amg5ZAdmnyANE5aggp0jySeVL969MP65PwSiZYtTFUhoLuAWRCE3Ss6LeXv0pKRe5XV9aTOmUhjCll8Jci84Nt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760961301; c=relaxed/simple;
	bh=YjNRlwU+DyUZdyR5D/1sCMX2dGtbyGiDneDhHjsjLVM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ghiRXhehQm5dKUva5Zve9ZfXP+srYJ3U7I3ksVKhGztor4nzA6uYu1veUu/KX0WXmjMfMqgahMz+t9fAFzKDgc3RhySj+A1dvXKB1NHs6vNOvZddH7EZNZYXPHdDdfrRSj8ub4/42YJ6hnd1XnJjQCyXsaUc+y1R66vgvN5IayM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E4cIrlXc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59KAvOYM017785
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:54:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zPefw/XTUcQTv8Ghf3sxd1o79dUhSmHJkuGsZMt3Mqg=; b=E4cIrlXcXMLvxfvp
	869yCmn0RVP0p3Q6HlW8CuH70U9j9n/aCuWi+j0gJTijLrC81scElnJo2OmYxBZ1
	qryu/aRYfPVtdp/EaEn0Dd9GiZDHm5iRhIpPbn6x66368FKCPeNPv5fhFPvO0aL3
	QWuahBUQwrw4QWcWPV44YXrlGPWNqnjZu55GY64zyT61BRcT3LYEnODBMLFhNfgQ
	MBGVBVRJbVpjK21wTUBv3eDbkpdlk2ujSXib1EEd98+ElQESrQJAn7LIYE10J87N
	QJteLF9+5cD1ytmRsDVGoSzcqNWzQ+LRckoMwbP0Qr//7IwaVOHInf9VZEpdHGdX
	UworKA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2gdvnjq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:54:57 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-890cb81b3dfso148258885a.3
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 04:54:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760961297; x=1761566097;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zPefw/XTUcQTv8Ghf3sxd1o79dUhSmHJkuGsZMt3Mqg=;
        b=KTHydLlUu4q8XkM1qVYgxrlxzqXVaE48BEyOecpKrd+S5oYw+SAztbVOh/TOgacrDh
         xWrs1qaV+k2x+V/C1dM+UlD6AyQqe0vsDemS3sbIy3sXPhIxvCufXLlzXZS077gLlFBw
         cGlQqjdciEVdxwnPUORGCLMxg8NtG0GDH6iekrkNwyoVx7jDAGQNlj/q6nFzmdCsP0pO
         neEYj27v8UVDGWVMrWfr0TQe9q9f63KJVb+rmdgUlTdEnM1VwBaYPhkcjF6uQfbMYZE5
         vdlnrNZqZPWfGD1VZ+OtaWqoIqqWxeJgCs07RpPhY8u/xUpZ2ClZnLjWVnBR7qffg6IN
         CLlg==
X-Forwarded-Encrypted: i=1; AJvYcCV097pnrho4huVfHngQxtFKO8M74R1OU+1d4ekZKlq4OJunylznmsGdIzMFmubbuqqfURURPGYKGepf@vger.kernel.org
X-Gm-Message-State: AOJu0YwGsafzkscfqKSmh74k4wbOtZ+lIzUqbytj2EAEOpjO/MpwOIMb
	ndDuV9zGN+bbfMzXJCBnXK2NBGPeZVC0U1JfeIdIdgO8moRkFfDra+/8mhquuhbDhP4KKY7+RDw
	VQDQm2FtoGnZeKIhe2l+iO6nmyjgjrDD5o7bw4myFXdmO0wceTm6UzsjrJ5N7Hnvf
X-Gm-Gg: ASbGncuiO+qMY0aPKJ6LubVQjvxIy02syOVJooic8zWDVvz3OnaYw/rFAHGP4cpt99U
	juzMnry0sKwHSF3LpRooM84rvBFlv/bcj6lswy42VpDOb3fYAkP4saP6uXyk14gzwdblo99yO5C
	e79TfBJRn3/CPKLitaXcLq8qlyAUI6ccWwIB0sTfCixlJvI865AlrAorfhJl4mYswN68nXh9wzf
	h4nh3PBt9u+d++HmDctMNvXIy0y7o1V/kRYQ69BQ/kkhmFygKYwFMpvOAWgFv6JyFvwGdd/7mH5
	jMr02rmaPx95o6qa1lmrU29z4iZOcAahoty1ULJMqm8uG0xyDm2lKEmp27FbQ8tmzwByRXT/cZI
	5EywlGEG68rOLY/+3JHaJOAYMACYr97sLOGz4aPAurKmCwGhuCvp/fRiu
X-Received: by 2002:a05:622a:130d:b0:4d5:eedd:6893 with SMTP id d75a77b69052e-4e89d411c5emr110883181cf.10.1760961296767;
        Mon, 20 Oct 2025 04:54:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF4g3QqfuylmN7uh29TpBlKZHcCS438BuAzHT3iaXVyocAn5WuW9zvPw1VDaSWqYNUHzL22/A==
X-Received: by 2002:a05:622a:130d:b0:4d5:eedd:6893 with SMTP id d75a77b69052e-4e89d411c5emr110882931cf.10.1760961296323;
        Mon, 20 Oct 2025 04:54:56 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e8395b6csm785558866b.26.2025.10.20.04.54.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 04:54:55 -0700 (PDT)
Message-ID: <100b1a6f-0b4c-47bf-98f5-f81d05b40df2@oss.qualcomm.com>
Date: Mon, 20 Oct 2025 13:54:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/24] arm64: dts: qcom: glymur: Add QUPv3 configuration
 for serial engines
To: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-4-24b601bbecc0@oss.qualcomm.com>
 <8828946b-3979-4e7b-a11c-740d8a6253ce@oss.qualcomm.com>
 <235cf6b7-e758-4d16-b5a1-182cc869b2e4@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <235cf6b7-e758-4d16-b5a1-182cc869b2e4@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfXzlAGt/VrE+S6
 IuN4nCqUTw/ekxKbrMPXt1a31sRMd0FR1Xech4mv6hyi4+YG/Hsyc9VWexaNgi+vjkNeCcL9sny
 70oqkxC1ovm5TWIB8p8KaJdXR4IglAsuPW962GKVqiG6xSQUOM2RmiGKx3BBK21HZw+yeLPmKcG
 FvfvcjbaeEbUdhf3E9ZtMyurNpyyltcC9zYPwDb6j76fqiwQx4GzTq9IxKBdWNPJoaKZLzHbnAV
 8KcQGlZ3DpDU5dJJC4CpNqKgxPCXrwHI/ABI7hym1QwNpiuilX/M1ZDyZl1KmzaHonkFCV8Jsuv
 j02DbVcPmg34MkkA5dkg1GI7TUI+ridpiPw62jNbqArGXc1ry+Vp4rvZJWkMHbCEHuxrTSHlzdW
 GglSA+UDAUcHjAeanqouDEt3rBKJKw==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68f62311 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ZwCl7Sk8p17T5DaKarAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: Pr8a8KKr_hZf0e8gvGFoP8gH0AVfE51E
X-Proofpoint-ORIG-GUID: Pr8a8KKr_hZf0e8gvGFoP8gH0AVfE51E
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020

On 10/15/25 12:28 PM, Jyothi Kumar Seerapu wrote:
> 
> 
> On 9/25/2025 3:48 PM, Konrad Dybcio wrote:
>> On 9/25/25 8:32 AM, Pankaj Patil wrote:
>>> From: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
>>>
>>> Add device tree support for QUPv3 serial engine protocols on Glymur.
>>> Glymur has 24 QUP serial engines across 3 QUP wrappers, each with
>>> support of GPI DMA engines.
>>>
>>> Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
>>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>>> ---
>>
>> [...]
>>
>>> +        gpi_dma2: dma-controller@800000 {
>>> +            compatible = "qcom,glymur-gpi-dma", "qcom,sm6350-gpi-dma";
>>> +            reg = <0 0x00800000 0 0x60000>;
>>> +            interrupts = <GIC_SPI 588 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 589 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 590 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 591 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 592 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 593 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 594 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 595 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 596 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 597 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 598 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 599 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_ESPI 129 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_ESPI 130 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_ESPI 131 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_ESPI 132 IRQ_TYPE_LEVEL_HIGH>;
>>> +            dma-channels = <16>;
>>> +            dma-channel-mask = <0x3f>;
>>> +            #dma-cells = <3>;
>>> +            iommus = <&apps_smmu 0xd76 0x0>;
>>> +            status = "ok";
>>
>> this is implied by default, drop
> 
> Hi Konard,
> 
> Do you mean we should remove the status property for all QUPs and GPI_DMAs from the common device tree (SOC) and enable them only in the board-specific device tree files?

Nodes that are not disabled are enabled (i.e. status = "okay" as part
of the initial definition is superfluous)

Konrad

