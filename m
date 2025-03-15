Return-Path: <devicetree+bounces-157797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF1DA62DD3
	for <lists+devicetree@lfdr.de>; Sat, 15 Mar 2025 15:05:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D331F3BA53D
	for <lists+devicetree@lfdr.de>; Sat, 15 Mar 2025 14:04:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28CC7201260;
	Sat, 15 Mar 2025 14:05:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Hgx++xQL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 783CD1F9413
	for <devicetree@vger.kernel.org>; Sat, 15 Mar 2025 14:05:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742047505; cv=none; b=ShHMFFMKXAj4fWeM1zZzacdwrY+S7Hpo+UCEGRFUpBU6Sv6KPrCCqrClSqplMrVdnroOdPA+QJePHtcTm4a73f0A0tom2ItGiHbPxcj4PWNiPt6Kgszoi0OjSxekxvUxRUyb8lOL4LB9XNs6MUO04ZzVGdezMmYBr0RUVP0H2BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742047505; c=relaxed/simple;
	bh=YfnsnyLlpurE1a++zCcgvEc6AWvYcBKTlVAoyEBchJk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IKJ66KdPeXC5yCoXevTI61TyZEaAixiYztyxgOKT6qtwBE8GXIm1Y9gFHp0CDpThIQJYk/GE7pvTh95aBqgIZiJcgGYdUzlvrACqiscQpgCGFyzFI/wRzbhmJxmU9FyTZnOYEBR8WRXBOtyewHauj/2hOJR99FvC9MjdNjw2vuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Hgx++xQL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52FCx5gY000804
	for <devicetree@vger.kernel.org>; Sat, 15 Mar 2025 14:05:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UUAncCVozCVnivHbsq+9DBQDI1K0/A8x8y1E+4sWtHU=; b=Hgx++xQL8Di2wary
	8uMa2bK6aDp58xjjYHyFnzRsi08SDWn1E26qtnnzdRcrHyzBmPU/NAK2hmgeW2JD
	6vWmu3oKSQEEH1YJlwWA7Ja0pwHk1laVYs/3SK9LCOA3ziEVSPZWVX1EEMBe/vY7
	AJDtnCKYIYojLs3w5Pf9Dw86MJ91/kWHaK/yqXGTfIIlWf0RfYC0SAjIu37xlNhZ
	psR7FartVqZtzV0pxQ8qlyJMVKlEpYeGUtE1g2LkLUE3setUYv9tfDTUqqkI7Xnf
	F9WJy9lHT30QKX+QssXQL+2G6mv2bS/kMSpRoOCM9LHBWyi2EJSOwIvwkdTCp55f
	5zVBfQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1rdgsbp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 15 Mar 2025 14:05:02 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c54734292aso36864485a.2
        for <devicetree@vger.kernel.org>; Sat, 15 Mar 2025 07:05:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742047501; x=1742652301;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UUAncCVozCVnivHbsq+9DBQDI1K0/A8x8y1E+4sWtHU=;
        b=sOM0TtRKeB89pYoiCVAX3+sN/w1WzfWi1twz3uQHc1jrXUUh1I0S5dVWgT2SaZ+qq4
         PV1UOEZaLgayR5HFFESwv2ZDb9vrP7TEFwVBImuMowP6y7KDnxkwyEpSHheotTyH3mjy
         ZRuns6fod2V/2FnEEYzcQtaUZCWuoSMJo5TIQQsy/jPohgCLpxqjqcO7e/KP0xpKfIC1
         +IIJs+mBLp/zt5icWNiuczJVdafT0xd0Kt8v1SP6PGF8hGdgRDjcHhC1PTH3wqHhDTHQ
         HwmBztIPUOxugkFrMD375aO4KAr1AYU2xnnLoQ61+1kirpa4PL8yUYtDPSTg65a3NAP6
         LHLA==
X-Forwarded-Encrypted: i=1; AJvYcCXWVPuzZnY/lWgIjgMMTSksX2QlNUjBUqqCH65ZtEnGC0nBCXzd/HvPkMH59Ut48AULo3taI4xiMB+U@vger.kernel.org
X-Gm-Message-State: AOJu0YzjR0HYabCMzpJBscltywvAxZ/TYppIVhYHgkASPB58TUOgxWyz
	fGIGz8Y96x+KGEPwwEwdEIoRAa09A6ZDl1qY3oOf2qRP3tNCVJWn1XHwna1E2Hmd1gZij+S1HC2
	RipY9TAkpockvXV7C0TWiUuKUlJ7vqIsCbCe9nNz7mPOQcXXv7z/p7zMOJj2J
X-Gm-Gg: ASbGncu7mqSjp+Rz6sEQ+VzFoLT467GcOPhXKOWqFgJd38c6S1mIIDLOqST2qLGjEwb
	kv0R254LMCQSnYQSok9FAZW32tipg+7O+/bkBinyBI0zwcO676gQQ5roh87QhLT/1Xh2lF2mN5o
	2CD+ROuduLJrM6oQ32Turp2RKzjqvrmkNJi+CU3h1L97JjISsEzNGYZcellcHwrqfI8DJd6Luhl
	5JtRk8wfVnEeQyUHHpNKtQV7QM/rODBkOtBBKXB4mKwceHv6WZNAXCLx1BuS+iSEeR5ACyB6baj
	TBY8pcd01KytlJH3AQbuAcv1cxNhD3oQQwBk81yrm1U0QijZCu60j11MSlZsI+o86lYS5w==
X-Received: by 2002:a05:620a:2416:b0:7c0:c024:d5 with SMTP id af79cd13be357-7c57c80ef86mr336345385a.8.1742047501241;
        Sat, 15 Mar 2025 07:05:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFTRd1Ia2aDyV8PsrPTlCP6muG2Qdkuvkpuw2KdrP05cGmco0YbeElKaqwrAOB48+digijbtA==
X-Received: by 2002:a05:620a:2416:b0:7c0:c024:d5 with SMTP id af79cd13be357-7c57c80ef86mr336343185a.8.1742047500879;
        Sat, 15 Mar 2025 07:05:00 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f0ea756sm9418031fa.35.2025.03.15.07.04.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Mar 2025 07:05:00 -0700 (PDT)
Message-ID: <6a652ced-1226-4ff3-8b26-9fb78b075ce2@oss.qualcomm.com>
Date: Sat, 15 Mar 2025 15:04:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: sa8775p: add support for video node
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vikash Garodia <quic_vgarodia@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250311-dtbinding-v1-0-5c807d33f7ae@quicinc.com>
 <20250311-dtbinding-v1-3-5c807d33f7ae@quicinc.com>
 <3ec71075-b1ef-4366-b595-80fe41cd1e13@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <3ec71075-b1ef-4366-b595-80fe41cd1e13@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Fe83xI+6 c=1 sm=1 tr=0 ts=67d5890e cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=L28Ds1LcoDUPICagkq0A:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: S698MEKwbPRTZMvy43rZ8bNy8riW7Xkx
X-Proofpoint-GUID: S698MEKwbPRTZMvy43rZ8bNy8riW7Xkx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-15_05,2025-03-14_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 mlxscore=0 mlxlogscore=999 spamscore=0
 clxscore=1015 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503150100

On 3/15/25 2:43 PM, Konrad Dybcio wrote:
> On 3/11/25 1:03 PM, Vikash Garodia wrote:
>> Video node enables video on Qualcomm SA8775P platform.
>>
>> Signed-off-by: Vikash Garodia <quic_vgarodia@quicinc.com>
>> ---
>>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 67 +++++++++++++++++++++++++++++++++++
>>  1 file changed, 67 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
>> index 3394ae2d13003417a15e64c9e47833725ec779e6..09db8e2eb578f1cada0f4a15e3f844dc097bd46d 100644
>> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
>> @@ -10,6 +10,7 @@
>>  #include <dt-bindings/clock/qcom,sa8775p-dispcc.h>
>>  #include <dt-bindings/clock/qcom,sa8775p-gcc.h>
>>  #include <dt-bindings/clock/qcom,sa8775p-gpucc.h>
>> +#include <dt-bindings/clock/qcom,sa8775p-videocc.h>
>>  #include <dt-bindings/dma/qcom-gpi.h>
>>  #include <dt-bindings/interconnect/qcom,sa8775p-rpmh.h>
>>  #include <dt-bindings/mailbox/qcom-ipcc.h>
>> @@ -3783,6 +3784,72 @@ llcc: system-cache-controller@9200000 {
>>  			interrupts = <GIC_SPI 580 IRQ_TYPE_LEVEL_HIGH>;
>>  		};
>>  
>> +		iris: video-codec@aa00000 {
>> +			compatible = "qcom,sa8775p-iris";
>> +
>> +			reg = <0 0x0aa00000 0 0xf0000>;
>> +			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
>> +
>> +			power-domains = <&videocc VIDEO_CC_MVS0C_GDSC>,
>> +					<&videocc VIDEO_CC_MVS0_GDSC>,
>> +					<&rpmhpd SA8775P_MXC>,
>> +					<&rpmhpd SA8775P_MMCX>;
>> +			power-domain-names = "venus",
>> +					     "vcodec0",
>> +					     "mx",
>> +					     "mmcx";
>> +			operating-points-v2 = <&iris_opp_table>;
>> +
>> +			clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
>> +				 <&videocc VIDEO_CC_MVS0C_CLK>,
>> +				 <&videocc VIDEO_CC_MVS0_CLK>;
>> +			clock-names = "iface",
>> +				      "core",
>> +				      "vcodec0_core";
>> +
>> +			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
>> +					&config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ALWAYS>,
> 
> This path should use QCOM_ICC_TAG_ACTIVE_ONLY on both endpoints

Please also align the &s

Konrad

