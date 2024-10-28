Return-Path: <devicetree+bounces-116501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 591819B315C
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 14:10:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9E646B21CE7
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 13:10:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C4F31DB534;
	Mon, 28 Oct 2024 13:09:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZsmyfgYB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB3231DC046
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 13:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730120996; cv=none; b=gZcq3AjiQA1HGzJYO1EcvEsw/qbaTx9D4O/yce428KT+zFT4wZ5thq47X7C6OywPtOcjx4OXJEEW/RGB+hRoQkyRONjpLhlKlXSA2Q+QCAsyYxpeqPfpkPH+J1y1ag2FHRK6JsSKrBDKkcWJo5m0dDMGGBS+GXrw+6Gp0GdQr8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730120996; c=relaxed/simple;
	bh=vzi2Ro5Jaf3pF3Rv3AuVKCP0qgxEAOSmHXRkW495ph8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CIG3udp4nQ5VwnZstUF4oHiZLrVRHV6hE023IG+0upxWGAoO2PFoxcbm+kyOcA5vAf2ZHKNWDq7XxLGQCXy84Fu06KyZdeNvWfNChpImz6VdRRm2gHgnp2ZfawO44HncTafP3uNhASUqDZ4X6TUWZJR0mjITlIZq1IOdby8MaHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZsmyfgYB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49SBCFrf024727
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 13:09:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	a8Aorj2sqV1pPtNTQ06SRHwviYl+wkWrzaAiIej+K3w=; b=ZsmyfgYB2qxibtoo
	Pb0mAJvPEwnorUj3+1E0577OajXqlC74+z/M0v4uZebsU15zZIMaeKRbyVAGSYrZ
	1xVvsAmrfHO3b0L3UplKU78L++WdREquUJ2NhF9We3iLXl6XRLW/FDv9+jtg96ac
	fyVRNZnGf8borgb3WFEx8C0N6Cnum23STTpit32HpCPMV0DySVhgCdCiazi5I6jx
	2hHx+hvpQFN+zRMtfLad6+NsDLjJl68eVZp0COdWbvQy5wHN6bF+oHWi6Epzt1jM
	QKFa6rp/h/HyEsTZobTKGz9zcPXbYDOGePkt9d0RcKfFPRcikC9DuyODCtD+nMto
	ZozgPQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42gqrgmyds-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 13:09:53 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6cbe91571easo15615846d6.0
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 06:09:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730120988; x=1730725788;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a8Aorj2sqV1pPtNTQ06SRHwviYl+wkWrzaAiIej+K3w=;
        b=oeHIHk3PAf8WuFphUCNSuPK0vwLkCCQcSNrxpyoQjiBY4HN30ti66GzuUtXrahfgqO
         cW8ZREgO8C6v9noGbLu37AXNd7vfCUWj8Me4fOi93l3tjfHz3ctokX5wMB1pPGo2ru0B
         MnWM/pTsdzgoc3HgZyy2lDIpnp8Lq1pfg0ebeRFNt2WAfJN1dkEKprhFyL8ZaXxOHddB
         j2InTm8I3Uf0MR1AgLIW3vq4kOfeHcdb84I23SDls4E0Md7XKm3N/ReMMf1QEC8jL/Cc
         SxuZVIWAl80GG+T9li4/NzA4dEe1xCo6TDTiG1rFYxJq7ubEDekgCucveRaDpvM6O2SS
         Qx4g==
X-Forwarded-Encrypted: i=1; AJvYcCVXSNwEdHtqQ5iKrGgQa7yalOv6vWzs/NjxOsDxLeWZokTulKPwHSF1pzvYndyhRtiMFc9vqkXSUyLZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwvZ3SD7d2BhCdpWyk+s9xpxbFV5wRtfbRTLekPMElGWIQOa64i
	E07xeXz3grme6LDeTOIi4WyRc3uLTJL/VgTPOzHjWGeOXRzvHe6YLKzQ1lF4kAi+4Hr5YHKr1oH
	WlZxR/d5wtJc3qW1gOm89kNbesLTC44s4nqzjB02CZmoHjDrI8TIlXeVeYgE9
X-Received: by 2002:ad4:5c8a:0:b0:6c3:662f:8e09 with SMTP id 6a1803df08f44-6d185817c9cmr60647676d6.9.1730120987606;
        Mon, 28 Oct 2024 06:09:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGVATv5v/JAhSmOdaFp8hymdUsIiSUu55HwXXNP8Yxts1Yr2m1zYJy/HdWBKZZqM/GSzi1iKA==
X-Received: by 2002:ad4:5c8a:0:b0:6c3:662f:8e09 with SMTP id 6a1803df08f44-6d185817c9cmr60647386d6.9.1730120987227;
        Mon, 28 Oct 2024 06:09:47 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1f029890sm377563266b.56.2024.10.28.06.09.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2024 06:09:46 -0700 (PDT)
Message-ID: <ad9c7e47-8a7b-4aee-8d88-cabf42ec3298@oss.qualcomm.com>
Date: Mon, 28 Oct 2024 14:09:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcs615-ride: Enable PMIC
 peripherals
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Tingguo Cheng <quic_tingguoc@quicinc.com>
Cc: quic_fenglinw@quicinc.com, quic_tingweiz@quicinc.com, kernel@quicinc.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241028-adds-spmi-pmic-peripherals-for-qcs615-v3-0-f0778572ee41@quicinc.com>
 <20241028-adds-spmi-pmic-peripherals-for-qcs615-v3-2-f0778572ee41@quicinc.com>
 <j4ggfrynyoriseef5r5x6uwgo6cespll2np7uitc64yagoa6pz@r3ro2cpqrrry>
 <38cceae8-5203-4057-bd8b-f20fe3656474@quicinc.com>
 <CAA8EJprYHjYVM58e7i7Sxj64DSth4hhW_cUZ3hGqX7u0ecZFQg@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAA8EJprYHjYVM58e7i7Sxj64DSth4hhW_cUZ3hGqX7u0ecZFQg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: qHvmWNuXD1C31m767HnDwWjTahDSaXeC
X-Proofpoint-GUID: qHvmWNuXD1C31m767HnDwWjTahDSaXeC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 suspectscore=0 spamscore=0 mlxscore=0
 adultscore=0 priorityscore=1501 mlxlogscore=999 phishscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410280106

On 28.10.2024 10:41 AM, Dmitry Baryshkov wrote:
> On Mon, 28 Oct 2024 at 10:40, Tingguo Cheng <quic_tingguoc@quicinc.com> wrote:
>>
>>
>>
>> On 10/28/2024 4:23 PM, Dmitry Baryshkov wrote:
>>> On Mon, Oct 28, 2024 at 04:03:25PM +0800, Tingguo Cheng wrote:
>>>> Enable PMIC and PMIC peripherals for qcs615-ride board.
>>>>
>>>> Signed-off-by: Tingguo Cheng <quic_tingguoc@quicinc.com>
>>>> ---
>>>>   arch/arm64/boot/dts/qcom/qcs615-ride.dts | 15 +++++++++++++++
>>>>   1 file changed, 15 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>>>> index ee6cab3924a6d71f29934a8debba3a832882abdd..37358f080827bbe4484c14c5f159e813810c2119 100644
>>>> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>>>> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>>>> @@ -6,6 +6,7 @@
>>>>
>>>>   #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>>>>   #include "qcs615.dtsi"
>>>> +#include "pm8150.dtsi"
>>>>   / {
>>>>      model = "Qualcomm Technologies, Inc. QCS615 Ride";
>>>>      compatible = "qcom,qcs615-ride", "qcom,qcs615";
>>>> @@ -210,6 +211,20 @@ &rpmhcc {
>>>>      clocks = <&xo_board_clk>;
>>>>   };
>>>>
>>>> +&pon {
>>>> +    /delete-property/ mode-bootloader;
>>>> +    /delete-property/ mode-recovery;
>>>
>>> Why?
>> Because boot modes will be supported on PSCI module from another patch,
>> reboot-modes are required to remove from PMIC side.

Do we know whether the PSCI call does the same thing under the hood?

Konrad

