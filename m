Return-Path: <devicetree+bounces-254775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E16D1BF4F
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 02:38:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C99523010CDC
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 01:38:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4375A2E54BB;
	Wed, 14 Jan 2026 01:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CYBAir8A";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L4yTelpc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0EE02D46A1
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 01:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768354720; cv=none; b=utKMjOf1BFYmjjLOHVvCRTJD2mwSWOE2ytVfepmHNMIe3OJKD9RLNldQY6cfutIFEjQVzmIa+OCgwoRZyZ7cw8ymF1Up9J8cH+j2RCDhB5CPLRUs+7mMSNKJ9UyQWuKccuWe6meVbDdiBzAw7RHx+X/7VYbrQ2aXWZTVyGPC9PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768354720; c=relaxed/simple;
	bh=KK8wnxIaKlArpxryP/lw3jZCYJxqDR58ifuFphzujQU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l2C7nHwODmkxY2U/jcPmOeeT0g3u5LDQ91Yjv9pg/yUr0LwjoB6mxpQxxHqrN1x40bJb8itBgwrznNDZZm+I9CYk8w2QO72EecxqpKIh44orxEqUQWVz00twq5jyDCjrJj8h7iX1QDO7aewUbxI+GHKfnTVvxfW9BmpZ7WOcTl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CYBAir8A; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L4yTelpc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60E17B931651354
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 01:38:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+JxpUs01w1ZHDzz6b1KIXflRCXPF+YyWM6dLPPydn5U=; b=CYBAir8AvwPZabpN
	aHmL6WzAR7tPWvWGhHZhRLIRl82cz+YaNI5OFl/uSu73m8mEuxP+ZzTyxarkl7t7
	GleP/7zVBJDVMJR689AsSkQqGCWdF8h+Ncag79DzsEqzX5rs2tB2es4aq3R/E80D
	X0cBGvGUPx3HC1AOVRJanGKmFY/HIyg9pDwsEauQ0nLGgLS7hPTkvn6idhdjajER
	PrgD7sEbBbHit23Nx6Ay+eJPWrDORiSkZTUu34bFCJiFXzVYSeKWyEsulw1ocXvc
	dmk8/xRzYjfrl4hLJ5WeNBLJtBOFiD4yxbc5RAqBqq4PWXBEG2cq2+/9xTSD6FBM
	3H2iOg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp16x02j9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 01:38:32 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c52d37d346fso218129a12.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 17:38:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768354711; x=1768959511; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+JxpUs01w1ZHDzz6b1KIXflRCXPF+YyWM6dLPPydn5U=;
        b=L4yTelpcjJb9HI8BU2/UMdJTw3NMt6wbtsei0iYA55dQmgoiK4igCmZTVbRFjOlmBU
         r6hTFnlQpVuhmqC0OhCH91B/tt5tvBlZVbQbZ/Jg5TSPjg3IgyGnrF3o+6rmNyJ1fh/n
         aJKlzhqJ+vRUOPTcrPAgHP0pgL6EyAlOL0onMxF4IJM0nOVHq9Ieb0zjflZCLr3ZUaXy
         WEuo7NkinQWvs/5VZYlQtiV6KNJLnF6bsDxcyoArUrMkCzthfNdbJMvSQ4bCu1wUkzvm
         eMPAGXCS5wJXS8CyUV0jAhEs4j1cjssrqbmd2GetDtOLwd+/RCUhyr2RTAdcaVlX8pz0
         w8Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768354711; x=1768959511;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+JxpUs01w1ZHDzz6b1KIXflRCXPF+YyWM6dLPPydn5U=;
        b=LK49BebjUv6B7aPOLfOtwG3jQ0CNeuA8A5LRHOIWh0Pibnpa1yRPeVdlvwMuYQdTzi
         V94hJPcxRvDvTJ7orEnO5lgP4Ri0niw/RdjvxKrwPSXUrgMWlCg1KN52YkAWBobXlNVC
         HO4KkRTeq67Dvo1b+/vAhF4Jcs86+bLf4VfmOrAGQzxVF9MdXk7ePq1q2PL3xYuql4WN
         lkyXm1aeCO1R6xUyyG2m6YWB3+Kv8xMKOE7Z9MFGC9c8rR0A/Ezs+70s+ijKMH7M4hb0
         q6AVCfiOdkMopf/ht+Pt7P1MHrvxNL2R0ewUlKXmPDJlMMicz5xuH/TURgqh6zOyLCdG
         t2BA==
X-Forwarded-Encrypted: i=1; AJvYcCWNk+oL8e4nqnBlHCeR6vFlokv+NIJDQjIRL5rm9rrb94oVsE6B/gBTmtjDedfSbu/RJsYDgYZN/VlC@vger.kernel.org
X-Gm-Message-State: AOJu0YxE2cCcV4m60w2QnJI/2qS802AXB8F2si0yOrxflvOCerxN0EZ+
	S490/t0iVOvJ2bdL9Y1Kd37zbIoDrsCUvxE3UygNh3u5OzbMWUrJoV2FkJ+7JtCwiOFfJ92oi8+
	qPcrAo7DO2JNmOPRQIIjW9LUwjtW+9eg9L11YjkG6X7BWiq53fFeRevJdP8lymtAq
X-Gm-Gg: AY/fxX66dpkd3tQvEv1AGWRIUv2HUqM4crwf41w4LGWt7PnUXGhTvKw+bIvbbUun42A
	Z5m6TiNaYnPbBQb/W6cKj2Gl/ycRLEgOjfxBMch2wH/XYzkeucJ6sv5aA2pwLPJNraIaro/q4uG
	qV1e6hejYHAZWe7q1lqNKX/rzHiNTPsnrPBZRLU4UNMMeNmL8HB56eSV7DLQfpVwj8awZuB9oVo
	u1ZZoxsHDmNWXpZjIrhb94wiVC1cYXyd7qdTFQ3zXHN9yJ8YKkK/bW1r+Oq/PY7xLJXMUDMrIYm
	6RJ3iESmgFUOyUUmPKR4JIZlRGZd0EyS39VrmJBuH2k1+vzL+XwgDrQB8vKSCTBiOKkXUmdVHb4
	LTeR0spdv/QdEhA0S9QJH5jtp15oKcU+EunqChctm83/+YdKIwtMO9RNWnrZP4uPZQmDiqi0PvU
	AgOg==
X-Received: by 2002:a05:6a21:3086:b0:2cf:afc1:cc3c with SMTP id adf61e73a8af0-38bed2f52b9mr1029660637.16.1768354711450;
        Tue, 13 Jan 2026 17:38:31 -0800 (PST)
X-Received: by 2002:a05:6a21:3086:b0:2cf:afc1:cc3c with SMTP id adf61e73a8af0-38bed2f52b9mr1029629637.16.1768354710928;
        Tue, 13 Jan 2026 17:38:30 -0800 (PST)
Received: from [10.133.33.65] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c4cbf28faf8sm21879256a12.7.2026.01.13.17.38.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 17:38:30 -0800 (PST)
Message-ID: <e10925ab-85f5-460e-96b0-fc7c219c9517@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 09:38:24 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: Add PURWA-IOT-SOM platform
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260113-purwa-v3-0-16eefacbdce9@oss.qualcomm.com>
 <20260113102822.590677-3-yijie.yang@oss.qualcomm.com>
 <nfhjbfqflsrye7hqbtgwr5hwkwdtq5z4tbvnta7lk7p7jtvhl4@zbttn6coc7br>
 <7050d5e6-ddcc-4ccf-99b6-0888318c5d7f@oss.qualcomm.com>
 <cjp7sppitjxu4utsag3dqn4k3hvfsczcnv3h32uwjotwidklin@xmxbe3jqmovs>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <cjp7sppitjxu4utsag3dqn4k3hvfsczcnv3h32uwjotwidklin@xmxbe3jqmovs>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: fmQUV3Oy-Wt5utQTb2eVW_SwqcWfrJ8R
X-Proofpoint-ORIG-GUID: fmQUV3Oy-Wt5utQTb2eVW_SwqcWfrJ8R
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDAwOSBTYWx0ZWRfX5epSSy66x+NE
 5KmPwy09UKQLmGndzhoYXPQMuBl0oz6i5UchrZ2jxLVibSmGjs+KEdKQoBSvfXJrHWbZdTolat0
 6QWP9SG0kv9zU8zZMW3aki3RmqLrIBzfR3022+UZxUWRgldtErJ8z2PqVQtLZpH4jxck7O+VTSS
 xLvPrhZo9ewio+NJdPijCJMNSQIH5m8mC+eZNQSYwhfA14oSltxLFtobl5pdShPQQ5ksZaDOwWQ
 jXKJ2mewB+4siGlPV7+ttRb+CEo0kmSIMcocyz/WUlG23LFt9Zkg0Yd+x0jpObG0HDYhTi3hDmu
 4jkdtXhXGRBh0+hsFOafSmWoiOFTsQaHjSmI/aw68M6LszUixqge0+Xv1UAonv6y20fq/5uQOn+
 OjuTyaOVZVr6BxoVoA4WFTV5PV4mYjl5Gie+9ovNuA2Lw9EqsQwMGhH3od71ZJQTssXJ8Eij0Kl
 e0Szy+uM2FgjP4NSy7g==
X-Authority-Analysis: v=2.4 cv=JvT8bc4C c=1 sm=1 tr=0 ts=6966f398 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=udvmD9vXOxOWEHquDVAA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_04,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 adultscore=0 priorityscore=1501
 clxscore=1015 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601140009



On 1/14/2026 1:50 AM, Dmitry Baryshkov wrote:
> On Tue, Jan 13, 2026 at 12:29:43PM +0100, Konrad Dybcio wrote:
>> On 1/13/26 11:47 AM, Dmitry Baryshkov wrote:
>>> On Tue, Jan 13, 2026 at 06:28:15PM +0800, YijieYang wrote:
>>>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>
>>>> The PURWA-IOT-SOM is a compact computing module that integrates a System
>>>> on Chip (SoC) — specifically the x1p42100 — along with essential
>>>> components optimized for IoT applications. It is designed to be mounted on
>>>> carrier boards, enabling the development of complete embedded systems.
>>>>
>>>> Make the following peripherals on the SOM enabled:
>>>> - Regulators on the SOM
>>>> - Reserved memory regions
>>>> - PCIe3, PCIe4, PCIe5, PCIe6a
>>>> - USB0 through USB6 and their PHYs
>>>> - ADSP, CDSP
>>>> - Graphic
>>>>
>>>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>> ---
>>>>   .../qcom/{hamoa-iot-som.dtsi => purwa-iot-som.dtsi}   | 11 +++++------
>>>>   1 file changed, 5 insertions(+), 6 deletions(-)
>>>>   copy arch/arm64/boot/dts/qcom/{hamoa-iot-som.dtsi => purwa-iot-som.dtsi} (99%)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
>>>> similarity index 99%
>>>> copy from arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
>>>> copy to arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
>>>> index b8e3e04a6fbd..fb90beb1096f 100644
>>>> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
>>>> +++ b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
>>>> @@ -3,11 +3,14 @@
>>>>    * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>>>>    */
>>>>   
>>>> -#include "hamoa.dtsi"
>>>> +#include "purwa.dtsi"
>>>>   #include "hamoa-pmics.dtsi"
>>>>   #include <dt-bindings/gpio/gpio.h>
>>>>   #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>>>>   
>>>> +/delete-node/ &pmc8380_6;
>>>> +/delete-node/ &pmc8380_6_thermal;
>>>> +
>>>>   / {
>>>>   	reserved-memory {
>>>>   		linux,cma {
>>>> @@ -378,16 +381,12 @@ vreg_l3j_0p8: ldo3 {
>>>>   	};
>>>>   };
>>>>   
>>>> -&iris {
>>>> -	status = "okay";
>>>> -};
>>>
>>> Why?
>>
>> Purwa has a slightly different Iris hw version (8.1.2 on Hamoa, 8.1.11 on Purwa)
>> which I would assume is slighly weaker, plus there's probably a freqtbl change
>>
>> Let's take this as-is and enable it later
> 
> => commit message, please.

Will do.

> 
>>
>> +Vikash, Dikshita this seems like a really low-hanging fruit, could you take
>> a look at Purwa support in Iris?
>>
>> Konrad
> 

-- 
Best Regards,
Yijie


