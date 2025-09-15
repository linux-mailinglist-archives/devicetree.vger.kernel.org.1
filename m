Return-Path: <devicetree+bounces-217137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 123CAB56E26
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 04:12:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C28A13A8A24
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 02:12:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 531C321D3CC;
	Mon, 15 Sep 2025 02:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pwn03HvQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5ED41E98EF
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 02:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757902346; cv=none; b=FEIsHvLbHkrK/MdnSMKuVzl8wCmFgQncsngcl1xRj8LTqAbzjmBSnyUeHt3t6hF3zEoBmNc8KK28utDckVc2uyCiv2ynhd0KdXj2uamJSvmMGZQrg1KDWqoPLkt136ibI54QKG32tuq/WhvxLAUDI/mm6rKJ2FtR9pFSmFZJwEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757902346; c=relaxed/simple;
	bh=0GHhTioe3fCzuyp9mgFvVSdfYm6wWU9Ggz+bSvzK37E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oTpOm8bD+xrSnTCiFYTloxzOfT9uK8qdwi/+3oNRBlZnyYhgPenUsScKMZI7e9NdTInPTIByoajLj7OmM4CxuTeuZ/g4PbtiYvb5GevqnBsV4VNJa26NFCb5ddMEmCwtrnl9zipIZuzP7wscHyP1kqkpPoc6tRc2S6HWbu/UTRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pwn03HvQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58EISIUo017487
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 02:12:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PKDP3y3fslPbwAzXQxnOfgYXvBbN4x4JP0Cd/lcj1w4=; b=pwn03HvQRx+QOzw4
	CNrv2nPnVR4EeS9xj8OwLkCSr3pDrKIgrnn5zGPD6OSmIVbhIuMRk/sM1ymsiuVT
	UoS/3B+TTm/PGg6AavsVUT4c60pJjr0xcGi9prdqNa44mlAqdwApVpOZeG3y0UvX
	5IneyOQFUpA0/tBtArlsBq/qR6ft07Uf6Q6qHrzeGWpJTijH9Tg/tNPoO+m9+M0/
	hXH4VFmAgZX9tScMTUu3BD0M1gcLnYput3L0TM/Neab7F8N6YEqtMys+8kGWxZQw
	wPMwYjVDG1DxGXPQGiFAaohIH1ZzUMzmiCNs3TWZdLZSxm4hte3uTUf1yOseOq7I
	4TtsQA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49510ab47q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 02:12:23 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-32dd692614aso5600781a91.1
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 19:12:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757902342; x=1758507142;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PKDP3y3fslPbwAzXQxnOfgYXvBbN4x4JP0Cd/lcj1w4=;
        b=rY4wHgo3Sl6SrpLuwL6lJAD/LGvHiYiTFG19JzJ6NtAq4cSEPMB7lo+mxH4q2GuJJC
         0l8vRZY2/zPa66QfykQ+aY5jBDp+lcYbXoNMv/CwQs3rnjjKVfnWzuISdSTVOpMEciMf
         kEKJtTxT693pcOzDeAvN5ZE1PvEGW249OHxaB68zHs8YuNgyfPM1c08yl5XYKDRWqoD8
         Lgxldm8RgCumpwyNje2wZAwFSy6FdPpIiF1WPG9PoHeagLfR8yWDsZF8q+6KPM/smHwx
         H/0oMp/9DsLrFdLRqciEbLoswFrr9OMUnaIwnwQkLRsLKE1BdWpshCGSn1YHHmVTjCh1
         W1OA==
X-Forwarded-Encrypted: i=1; AJvYcCUXunv8GwYo8xpxeN2BROQSmfmy2+538hPvJo0u9IJF+eM2CcQmaXcVr2+bs9cxvI7ttGi7bT+Bzete@vger.kernel.org
X-Gm-Message-State: AOJu0Yxu1S1My3WUthWKL1wrfO7fl89+PS7RM4TDQNQ8VgLrJaaoopTh
	tkFS1c3RVAsNTGlTdBzpfTmgcPGT5ibM4+w4at8LRiE5h20wtmJ12EuBjq7UvVyjU1pDig+ElUv
	j1HZ8qeWMeeKelTKaE55dnHvCNFsJlvubQTatOGsNKKJz6Z1JsqnGArc+bnnwNOhO
X-Gm-Gg: ASbGncsHt0+2/6qc8BQ8Un2kuScF4UigOrCT/XKwreEmQPBB7aWjor9Bt4EPX2sIWO5
	yAlyfdQLtYleJgNSEMtzAvRb/AEfvwSFQhzuVyovRlHqCoMTOf8O4lulFKkYC/MOC93gR5KABuc
	i46hgVc3V8YAE+4kdlOD3/O5SUnbPMfShaBsH3lfq+bvZ+TnbROYn9rqbPQ9MnqhTeVSEHYh/OZ
	471j98wQKlXP8GlzQiUskNVQR4Cx3aO4z7qaYbxIEw+KQiD335M1UxlUExVkoFbT2LRg/NjlBPh
	8kGAcNwiHtu9lHz8PzEzFCzVyV0X0MaaO6XPHzqzv+s+FWxSIOgaBYUeyeVnVO3HwHAbWanQ0DJ
	U3JNdRv6LQCU1JRS4JyRuh9oMPTbXJ8tOfg==
X-Received: by 2002:a17:90b:1651:b0:32d:3895:656b with SMTP id 98e67ed59e1d1-32de4ed5b88mr14891973a91.12.1757902342278;
        Sun, 14 Sep 2025 19:12:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGkLWVKWY8dJJSoWF5RHJnh56tViKNJ+59aIriO7fADzS1hQtOLicZ6cEGv4usM19uQ2SmK5Q==
X-Received: by 2002:a17:90b:1651:b0:32d:3895:656b with SMTP id 98e67ed59e1d1-32de4ed5b88mr14891940a91.12.1757902341829;
        Sun, 14 Sep 2025 19:12:21 -0700 (PDT)
Received: from [10.133.33.181] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32e1e5ad768sm4381659a91.0.2025.09.14.19.12.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Sep 2025 19:12:21 -0700 (PDT)
Message-ID: <90dcca12-1a68-4049-bcbe-c333aed07a07@oss.qualcomm.com>
Date: Mon, 15 Sep 2025 10:12:15 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 3/4] arm64: dts: qcom: Add HAMOA-IOT-SOM platform
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250910-hamoa_initial-v11-0-38ed7f2015f7@oss.qualcomm.com>
 <20250910-hamoa_initial-v11-3-38ed7f2015f7@oss.qualcomm.com>
 <aMPee9wEOrrW-KMU@linaro.org>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <aMPee9wEOrrW-KMU@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=I/plRMgg c=1 sm=1 tr=0 ts=68c77607 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=g_NBhjyYV65zCQWelF8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAzMiBTYWx0ZWRfX5QQjQYtQzpIy
 VQ3yt4fVdegKw3uPY8jWDd9SMT4Px9r9v/UBv6jkmiGkhjhPgP5woRHsdswIQ0bI/nge3aCH2GT
 kxFM4Pw1M+dGCgZOyJm16PKSITT8GB2W9+elqqWApzaDmwz8j3W+nqJLh72tiWMBDqTgzW4iaSw
 v1J7REgZWRuMscXLyxlyp3anInaWd6AX28CcuOWQ89wlmN6FvtWiFIiYG+841/U5umNrny9QfG1
 +7z7e2UvOgaN6M6kOGvuUUQWYlEWv0QtlcJPpVfY+hFoZetQ1FlGmxDQqriyiXXPCNAcausH0Di
 SaZgWOgAlE1POAvxUrmBtJ8gki2RfIs4sjfX4nRAmbxS25sOTpP6Q/BxM679LGDbltLQ/LWVxyx
 JEndNQVi
X-Proofpoint-ORIG-GUID: oqnxcuQ7a6NTE7TvcKkPQYExGPxLvhby
X-Proofpoint-GUID: oqnxcuQ7a6NTE7TvcKkPQYExGPxLvhby
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_01,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0
 suspectscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130032



On 2025-09-12 16:48, Stephan Gerhold wrote:
> On Wed, Sep 10, 2025 at 05:02:11PM +0800, Yijie Yang wrote:
>> The HAMOA-IOT-SOM is a compact computing module that integrates a System
>> on Chip (SoC) — specifically the x1e80100 — along with essential
>> components optimized for IoT applications. It is designed to be mounted on
>> carrier boards, enabling the development of complete embedded systems.
>>
>> Make the following peripherals on the SOM enabled:
>> - Regulators on the SOM
>> - Reserved memory regions
>> - PCIe6a and its PHY
>> - PCIe4 and its PHY
>> - USB0 through USB6 and their PHYs
>> - ADSP, CDSP
>> - Graphic
>> - Video
>>
>> Written in collaboration with Yingying Tang (PCIe4)
>> <quic_yintang@quicinc.com> and Wangao Wang (Video)
>> <quic_wangaow@quicinc.com>.
> 
> This looks like you should have Co-developed-by: tags together with
> their Signed-off-by: tags.

We’ve agreed on this as the preferred method for marking collaboration, 
as discussed earlier in this thread.

> 
>>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 621 ++++++++++++++++++++++++++++
>>   1 file changed, 621 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
>> new file mode 100644
>> index 000000000000..c7c3a167eb6a
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
>> @@ -0,0 +1,621 @@
>> +// SPDX-License-Identifier: BSD-3-Clause
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +
>> +#include "x1e80100.dtsi"
>> +#include "x1e80100-pmics.dtsi"
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>> +
>> +/ {
>> +	compatible = "hamoa-iot-som", "qcom,x1e80100";
> 
> Undocumented compatible (without "qcom," prefix). I think you can just
> drop this?

This compatible string was also discussed previously and is the 
preferred choice. I’ll add the missing 'qcom,' prefix.

> 
> Thanks,
> Stephan

-- 
Best Regards,
Yijie


