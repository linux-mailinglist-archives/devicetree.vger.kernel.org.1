Return-Path: <devicetree+bounces-250211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 21848CE6D99
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 14:14:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B554E30213ED
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 13:13:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E36CA313E32;
	Mon, 29 Dec 2025 13:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KZft5VBg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fLJTPEQ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A92CA2F6928
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 13:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767013985; cv=none; b=dUYFo4CaLcZIsZXkZnLzKxdspNKOqOPnnvTifVIlYMxyW8EQ827owyGqrxf4TkOktagNIzdGNnkLr4ZiP8KTtRZMKzsFPaof2IW9klJKSgbzBHbZGllH5mvKb5R9p2Xovh7GgEbAg53+zLmATkCH4kRvnGv2La6+nNjv95eJEkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767013985; c=relaxed/simple;
	bh=E/bisYtOoEPj+6S6bzBKmYyiaTmZPOlKnVuOd5lIB+w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VHS02loNUYPXvKnwaxQ3efu6mYh0R4JMT0pDoCoBphDU7/va23vBu2NQNacd14B0vS6hH0V1PxbCua4t7yTPiwpyGCM7M1lecm6UlGvLAf3mBdIoRdNcWtGHmbTUZbI7KLUv+y4Dv9Oz+MGKKa1Q/D9V9uIWZxtbsZfg4G7qDSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KZft5VBg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fLJTPEQ1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTA5aGI044105
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 13:13:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	e69xSxQvulgfNxdWCTlGEzi6b6EHFcp/O+JNQzRpdDk=; b=KZft5VBgzZj07XcS
	zeVSMY234N17gYGkXcr2nl5IVJzC1FQpmbruQmcQo/gYodut/C1rIXhDBwB3p3k4
	wZDLa6H0FvfmM5zo+Ze0/NxzTQiqlUr409kjV/eKaYrLd1VoxivBRahBizyGPRFr
	mKcrroHBMatAYtVl5n2TQFNfNHEchLEXrjb6FjaXzjOl5yf6coWnWZZc30nhN4VZ
	djptQBdD7OLfdnMNV6Ykm9axgVTqHIxiN0tS/Iuc8HMD4x/sktVNzzeAR8RzdDCa
	VKubxp4GhQfyA1ZUT4nqYid9JjgOoRtXR35lYTCve+w7UJUNl/z/QlUCui5t5srI
	laZItw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bbc9v1n6h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 13:13:02 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f1e17aa706so53390361cf.2
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 05:13:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767013982; x=1767618782; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e69xSxQvulgfNxdWCTlGEzi6b6EHFcp/O+JNQzRpdDk=;
        b=fLJTPEQ1aN+KgPnr/HDz3zI0BJKWlKVvDxMQK1+VraLxTD8joWCKM2Sk5bzbPeaHJO
         2EJkkyMbigof0LgG6NPiCfoZOWf4BbCp0VQZ7MtofmCqYdLTAFg9M55TXlhp4WWH8VXu
         RdSTCDzAjcchj6W4+dXbC62om187tlduiMFKsKuX17kn47jojeNQvxyN2+EEbhxoZVx3
         KxZne61hLKTG8nGle3Ix9fnDiKbSHP7gYrGnBWSeoDaAvxDSRWGEL4r6lJdl2xMCCuyh
         +NA4cWWnuicetEUNBUP7mv3XTG4MXIVytlflSvefGyl5Qk5QoNXUGE3smh7JU7qJcpEo
         JMZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767013982; x=1767618782;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e69xSxQvulgfNxdWCTlGEzi6b6EHFcp/O+JNQzRpdDk=;
        b=gUiadJtS9i3mgtqiXaC3PsRHnj+A3EHoSGj7QGpiFLpPz2bBOaOxGglRy9is02Isgn
         mF7jSmLY1bEn1w86jLLpj+G1Fh3l7fjmaa0HktMEO6qwkVMNZs5vAYQilXftp4FgBHWt
         Q/daaL3J+ZkE67oFNUt5zdro77+L2YYfLHYHzLve1ecwcU39gF1151+Mb1sOF7gUaBuq
         GsS86QcVm5g/1Jzu84j0cjfuYrcWZxHjukv/pr0FexPOWmnLZ+fUJHuW7Uz3jDvSLtpp
         Be+sEsgFfnAMOrnnTgDzIFyf0x8RLBtm5eJ4vBB+Ofro5PThu8CnniQEnc98y1P1N9T1
         DdFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnru7aD+/lWyZr554KSRoPT21ISc18TocHdGaDhCeVCNBYw3Ri/zZG2/HLn/TGLMVI8OkPy/+ERjjX@vger.kernel.org
X-Gm-Message-State: AOJu0YwCGxCNllJVAS7Ovo7Pu9eGzCC3iQ0I51xge30PRF0nJrDUp+Dk
	dy/3uqR7qgWddUoT4ggUWCDD6m2IShDiPxogoLLfoDDAt66jDdEvUUfbypi1PBFfLD47Nij7luR
	AgLV1tOaEz4geSq4GH3KUworVFarK2eYiES0gYXkwcOZvw0sJLrtU/yRnCzg+fr6B
X-Gm-Gg: AY/fxX7+t7hIvZ8VLrkEz6LQXPPMuIhHR6twwEiVXSXP7w2A8R2IG6BB8Qn02VOBQ/c
	AhWvxb5GJGAjp1Y0xgThDFQJd/GALUg4jtxwIqvf/e+6pUK3XmydpePWda5CR1VWtjxhZjXN8ua
	MfSNMzMkcO05urMDaZ+oaNnQy9dmTdXtJc7ozZSLUQam95DnYQnJqkA4Tei5HpkTlVvElW708MD
	u+lVE7mdkLI5Ondh1646ZQ7d++agMRNK8wtowVzS2jjC2V9185XQLPT6F+/iTsSzxpv509RKYdX
	H97xbU1hzWPfRPdSDZcYQ8QoKdvyFW3kJMQyaMQzsTlYCxvjJ6r5qMh1CcOQF/hqLNinp9n2yzC
	rtuS0j+5/fU74PndbGqLA3ucfukVqsFn4/C8n7XpKAvHjzLRcE2WYozVy9MKs28OWjA==
X-Received: by 2002:a05:622a:1922:b0:4f1:b3c0:2ae7 with SMTP id d75a77b69052e-4f4b43e3a80mr306807571cf.6.1767013981867;
        Mon, 29 Dec 2025 05:13:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFa0WDk6M+E2E0p+ji2/14sAt3YcclQ3VxdiLhW7OHrRPpy/15RJNGau2EsYGGr0bZ5cuCDLQ==
X-Received: by 2002:a05:622a:1922:b0:4f1:b3c0:2ae7 with SMTP id d75a77b69052e-4f4b43e3a80mr306807251cf.6.1767013981451;
        Mon, 29 Dec 2025 05:13:01 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b91599605sm31456963a12.23.2025.12.29.05.12.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 05:13:00 -0800 (PST)
Message-ID: <fc67634b-d47e-452b-bbad-35884b75d0b7@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 14:12:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: kaanapali: Add TSENS and QUPv3
 serial engines
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
References: <20251225-knp-dts-misc-v2-0-a8a8a31fd528@oss.qualcomm.com>
 <20251225-knp-dts-misc-v2-2-a8a8a31fd528@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251225-knp-dts-misc-v2-2-a8a8a31fd528@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: gG7e0xrm_2_mt7-A-wYcDzZSXfmq1v9G
X-Authority-Analysis: v=2.4 cv=R/sO2NRX c=1 sm=1 tr=0 ts=69527e5e cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=TRgJCNjEZve3GQbn5gEA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDEyMiBTYWx0ZWRfXyADtSoMitw+n
 rxOFsr0C5DoBzZS25eFdSD49AJsYr3HUmpxGcAValveeoQXWv/010Sda1IAUPfv8T/g+trNtPDB
 izuPaLPiGPnwo2LdK2Myyf5g956zVwgT38avFI8cOQ5Ee6TAbIWvK8LoXXEX/JZmxDd0UBF8jCy
 iP8UyIkFRYaiCiDKFd9835+QP/ho7/OWJpfr5/P7R6EwuvlF5xcD2HCbr0SwXkCHt7Q19kL5Iyu
 Dddvvohgjd2PPitt2Ih/jai2xitrsEnhIxtnTCRi+qziV2k9X2pC/RJSS4VJu4++hcAbTCGE+iz
 D7nNb5F4QWAOnxuo/aJiU2pRALWQfNhhKq/UGHVbCUyJcDDAZQIRiSLOx4z1YgDn2KnRWZfbMHq
 t1d/f8L3tPx0sFHMxeIo67TerDAWM5Mfyz4gSITO9k2gp3YDZ9Aswgxj0xBn7NUGJIFAB+akoNQ
 GZgITRQRhkftCJaOn/g==
X-Proofpoint-ORIG-GUID: gG7e0xrm_2_mt7-A-wYcDzZSXfmq1v9G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_04,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 suspectscore=0 phishscore=0
 spamscore=0 adultscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290122

On 12/26/25 4:06 AM, Jingyi Wang wrote:
> Add new features on the Kaanapali Platform including:
> 
> - Temperature Sensor (TSENS) and thermal zones
> - QUPv3 serial engine protocols with 5 I2C hubs and 24 QUP serial engines
>   across 4 QUP wrappers, each with support of GPI DMA engines.
> 
> Co-developed-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> Co-developed-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---

Since the base DT is now merged, all subsequent patches are
supposed to be patch-sized, i.e. usually scoped for one feature that
makes sense. This one happens to be an arbitrary concatenation of two
separate ones. Were they separate, the original authors would benefit
from the full attribution and they would be easier for us to review

Konrad

