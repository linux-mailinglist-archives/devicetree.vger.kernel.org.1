Return-Path: <devicetree+bounces-227036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F026BDE024
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 12:32:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E1CC618806F2
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 10:33:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59F78322521;
	Wed, 15 Oct 2025 10:28:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F77YPgJu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B36C5321F46
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760524121; cv=none; b=ZZn7GELpLPd+mXQaBd0TD5N1EwkNDuU6sF59qMS9CVFtm9lInvjzHHNfN/gOBoa6W3YhdgyjFBfM+JM4qs3ZFDtJ3PRoddLO/aAdU5LrTn0qOXLcs51SoEip1DTAULYm8sbbTNxTmW1MANgq7f++Uis6ejoOEV5yoC1SCooIm6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760524121; c=relaxed/simple;
	bh=0tvqjA5g5nXTtWkmeWJomxbNRZvUvJaMshuYYM2spUk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XZiR2ytHsbFauChO0rQ9ukNsttvlXdhJdeMCz/erefKy3bwciY01d8Akkz4F9TPGRIqwNhDMmcEY/Ya/U6yp7fFpDi2qmhg3zGPQLqJ+s5UUALq1W5EW2CkVkBTV/06qV1xWSSRZHBBlq/g85dduJqTtwB+D6SkvOsvKJI1XX4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F77YPgJu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59F2s8a5016142
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:28:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OtCuBzfMS782vxBLNrbSA6yWo7+oKeRaHTDzQnpUByc=; b=F77YPgJufPc4+VPB
	aUtGpNZb3u+Dncakf0e5YdtCVESkYOjvfINYg9aELyOuCiVDpJ5pH1msWoAFcyHv
	Y/X6bs6PBZcefBcZpBnd7F9mO/WjgV00kDq5xn3bc5LA9nHMig7YUi5TKUBd+yVN
	hf+R3TL6qk0yCfw2iuW4NapYMXl4YD3foUZma4eZKTGuRhlImkgaPq0nhqiHg3XD
	xQoPvgtNAHYzuaVebEKjOeH7wtVp0cNxbW9V/hF1zWKG3F0zLW40JsINdcxto74X
	h3xzv5YGfJzg2kayjecLmRgcNrGNwvavhlhtYEQeEIxYnwVGPjwmrfclCslDiaso
	dunnDA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfdkc1xj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:28:38 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b62ebb4e7c7so9733629a12.3
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 03:28:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760524117; x=1761128917;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OtCuBzfMS782vxBLNrbSA6yWo7+oKeRaHTDzQnpUByc=;
        b=FGKvag7eirtT1LwgG9g7hij8WhsPOICi7GwnC6mvJfgDhdP7BbccoG/dN+l7mGk25C
         5/BO4goQfuvybR7pzMj4QAd+T7bUzZAxbbznlnRBWxPS4zIs0zJyH/53wPvCeOKIaooV
         sQwoJqdhbjjdPi0lgU3rqnU129tKcrphO7KVk0pQJj3uFZKyEKcJSoonhDNBUQ16zjUS
         Dkj23Q0vNw0yX2yHiQWfTGBAbwZSao5TdHfJV8jw747A/6Nr6kUIGQmlnFQrC5yUEuaP
         ngmb/cTOFxWmkZSbeBxy8MMtLhc9SPp3jWXCZRCE7wmT5VBU/raLgXsjSU1bT8F/iYr6
         jszQ==
X-Forwarded-Encrypted: i=1; AJvYcCVuU7gCSy6Ms+FO+fChCPr3I3sSfkfg7m1tKykoBUVApHi97cnnkenMG80Al/XSeQtI3h90AeMqniWF@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3WBV2RtQedwyD/8JCRDw0zNl4m4X1VPll9LvUDPgiA/40XMGT
	A8cyiT6V7R8nKyyEl514b/hVeJIL7OsbQNPO1niYQCQrH/S5UHgPgEr2QxWCOAyPcPO8mP5COmv
	B0XI+H0bgpsxWr4ejaOOXEjQ3npc2Ty/fs6Ez5F/nBgrLeKJZdvESMgsvHpgxNv3d
X-Gm-Gg: ASbGncufExUTS8EJfBvK3WnKUKlyPWWNbU5OCHX/fCH9XcrmUAVHsGcqkbOoebn/sKJ
	A64pcVEatGCn42nwSvDpad+lK5bXEpxX03MncP9jrgw3YlxSiP1P+g/t7IWU9p/orE4OK0oG6T1
	3UPGsNUXkKeRjCLCjhfrMY3PhXPsUFhN9AO+B48XGrhWA2/tEU+9cSKOjtwG9dTSdCylnnBB5hG
	Jvfe1K9XvGbU6MmppC8z7C8iCWrt2uGXmOjx+LjfOTE4Dm0iXL7pGcaezqYoIknvFcimLi4dSz7
	NdpqKZmirP4BLVTxLr1tWGBgzOZiRmd7cSUP/7EDKYer3nMDkgSvIAhN9TsIfI8Vh+t9o3k=
X-Received: by 2002:a05:6a21:32a3:b0:303:b64b:e44 with SMTP id adf61e73a8af0-32da83e38bemr35878494637.43.1760524117199;
        Wed, 15 Oct 2025 03:28:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHFMeBDWmLwGmtvM1sNbU+BcXtiGukpKU9b6FpL+kUTBWyczFWyDH0DN4wWF25eRGbf5yYZSg==
X-Received: by 2002:a05:6a21:32a3:b0:303:b64b:e44 with SMTP id adf61e73a8af0-32da83e38bemr35878463637.43.1760524116776;
        Wed, 15 Oct 2025 03:28:36 -0700 (PDT)
Received: from [10.218.44.34] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992bb1e50dsm18263043b3a.33.2025.10.15.03.28.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 03:28:36 -0700 (PDT)
Message-ID: <235cf6b7-e758-4d16-b5a1-182cc869b2e4@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 15:58:31 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/24] arm64: dts: qcom: glymur: Add QUPv3 configuration
 for serial engines
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
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
Content-Language: en-US
From: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
In-Reply-To: <8828946b-3979-4e7b-a11c-740d8a6253ce@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: k-jALKwKGUNWSLpkbMl5vfQuh3Kv4AHd
X-Authority-Analysis: v=2.4 cv=MrNfKmae c=1 sm=1 tr=0 ts=68ef7756 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=5RRmG2Rm61FAXBKOsCEA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: k-jALKwKGUNWSLpkbMl5vfQuh3Kv4AHd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX/FywsJiG9pvF
 mEg5zE0lClDKnE9R2xd3mEGlITvVAcTroKvdFUJh0oXVOLp0Mhg8pG5uHg/59se830kUgSPLnwy
 5zMbVFA0MmHOVMC/3kE2ghinmbTvWWp0EzRNlACe+VTxGlrG4M2dXDvDsvUjFIzF24LqumQGgid
 vPKL4pNUXCo6AbjvEz+iupRixZk916VcNDCeseRNvl2PvN9KdNPpLeis/LaiGavsjs/hqhtcvDw
 es989Z+XPA4bXjOXzye6hZSLNuQmfM86R3CMiHHkUs00EiLAnuUN1gVcFYvPTh4VgLYrPOtoSSW
 rZmzMZmtVLyGR2zq9cxHchUIkhhvK9AmOsiT92R5cyIqQkYbjEZYY8A4nYv7x9KTAapdOW4YQIY
 4rUu2xAbDP+gt3lZUq271leVieOEDw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 adultscore=0 phishscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018



On 9/25/2025 3:48 PM, Konrad Dybcio wrote:
> On 9/25/25 8:32 AM, Pankaj Patil wrote:
>> From: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
>>
>> Add device tree support for QUPv3 serial engine protocols on Glymur.
>> Glymur has 24 QUP serial engines across 3 QUP wrappers, each with
>> support of GPI DMA engines.
>>
>> Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +		gpi_dma2: dma-controller@800000 {
>> +			compatible = "qcom,glymur-gpi-dma", "qcom,sm6350-gpi-dma";
>> +			reg = <0 0x00800000 0 0x60000>;
>> +			interrupts = <GIC_SPI 588 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 589 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 590 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 591 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 592 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 593 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 594 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 595 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 596 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 597 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 598 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 599 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_ESPI 129 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_ESPI 130 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_ESPI 131 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_ESPI 132 IRQ_TYPE_LEVEL_HIGH>;
>> +			dma-channels = <16>;
>> +			dma-channel-mask = <0x3f>;
>> +			#dma-cells = <3>;
>> +			iommus = <&apps_smmu 0xd76 0x0>;
>> +			status = "ok";
> 
> this is implied by default, drop

Hi Konard,

Do you mean we should remove the status property for all QUPs and 
GPI_DMAs from the common device tree (SOC) and enable them only in the 
board-specific device tree files?

> 
>> +		};
>> +
>>   		qupv3_2: geniqup@8c0000 {
>>   			compatible = "qcom,geni-se-qup";
>>   			reg = <0x0 0x008c0000 0x0 0x3000>;
>> @@ -718,6 +744,339 @@ qupv3_2: geniqup@8c0000 {
>>   			#address-cells = <2>;
>>   			#size-cells = <2>;
>>   			ranges;
>> +			status = "ok";
> 
> ditto
> 
> (please resolve all occurences)
> 
> [...]
> 
>> +		cnoc_main: interconnect@1500000 {
>> +			compatible = "qcom,glymur-cnoc-main";
>> +			reg = <0x0 0x01500000 0x0 0x17080>;
>> +			qcom,bcm-voters = <&apps_bcm_voter>;
>> +			#interconnect-cells = <2>;
>> +		};
>> +
>> +		config_noc: interconnect@1600000 {
>> +			compatible = "qcom,glymur-cnoc-cfg";
>> +			reg = <0x0 0x01600000 0x0 0x6600>;
>> +			qcom,bcm-voters = <&apps_bcm_voter>;
>> +			#interconnect-cells = <2>;
>> +		};
>> +
>> +		system_noc: interconnect@1680000 {
>> +			compatible = "qcom,glymur-system-noc";
>> +			reg = <0x0 0x01680000 0x0 0x1c080>;
>> +			qcom,bcm-voters = <&apps_bcm_voter>;
>> +			#interconnect-cells = <2>;
>> +		};
> 
> This diff becomes unreadable really fast.. please play with git
> format-patch's --patience option
> 
> Konrad


