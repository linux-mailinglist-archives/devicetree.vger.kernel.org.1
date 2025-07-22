Return-Path: <devicetree+bounces-198452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E03B0D0DB
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 06:16:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 51D037ABE75
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 04:14:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A04A41DF247;
	Tue, 22 Jul 2025 04:16:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mMbh35bV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF8A922EF4
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 04:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753157774; cv=none; b=i+Dhk1DOqMXnYGAkD+UCEi1CUyZqJ96xz1tuOD9iJSW0jptxjS7KoinXa3rUVrAfXlc8a5uOlwjZKocc5gs0yTSeVFWWPsdfRgXj9rkDmepmhEfVTqbcpIeL2GwrGxNka75H91eCqDBZ9BNPAKt+rILW/FdyisZGRY8o1HO/Prw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753157774; c=relaxed/simple;
	bh=X5h8qLB+d9/7vD3lF6F1tc/YYELICqzIH0md6DIaytg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dHprtV3ka5x1Ew9WUD4dB6LtOvVQ2gyyEOifKNAbwHRSbKwTIhUKSXcryGI9lyb4gjiNA0MOnnliqcw+NQel3G2U+4ulS2vaAre5Kh8COJ1QuAEDxD8fIr2i7vcYSKfF0SLyACt59ZlDW8i4erbLouc7bxxq/+iAAWSIcL46G68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mMbh35bV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M24eOt005511
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 04:16:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3KUL1SXlMm+AYyzg4ibYJZkgbEyXs5RnJKpLtDI5IH0=; b=mMbh35bVjzSW6Sa4
	t8MT8/y6CsuRfNGRFBZ735B2e++Ldc1zs1fhaivPrPlXyWpcWA+VkjHrma3117GB
	IsM8f38xhunNUuj0QrN5CaGxWLvAiFU5Bn6OBXu161fytcGD7bMzQWhP9O/hpUsI
	i5sxv86ZoZZeOQ+fmbhSaqJWvrdy1CCbpW8s6W2k8eJc5oPlrf03L7sSY59+VZPm
	7oNpjc+/3q/y0F2877swwf3pTYSOCpyUEMTtboyTx56fvDf09TjG+7P4m0ksVXEr
	d2L7Q/NXPPnQSYoGEUdwAPptN7l1YZTkKfJwrYjBstKlT6VoyYMwyWP/qN3qHbl5
	+Unglw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48047q836x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 04:16:11 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b38ffb62492so5949060a12.0
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 21:16:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753157770; x=1753762570;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3KUL1SXlMm+AYyzg4ibYJZkgbEyXs5RnJKpLtDI5IH0=;
        b=j1tOZUs41riRNjp+wxiVK9OCLb2z2EroJPi6509pykEP2DBsFT0R5uH4affk6+F/Cf
         JldoqsgFYT/NZVaHAqKhCQW17cOf4ZXHpqkNxE6QxQBZ9ImVvsg1mi8QJ+fesL8+RPgL
         Z5zOPqhMzyAEoxDZp6uhLizcqgv/8wdHNpiAgth+BIl+mwy7gaJkXUZC5BfrXEvIDdFD
         M2eaS+uKxhPXDSpQgfy2hcfmKkCZvHpNfIW3WuSMqI374uo6yYLKeGc0co0LKZMQCsN/
         f8yi7V590LHFDflR6U0RHUGosrnp3MU2UfyrJjeFEHbjHlFxx6nNNfiBvi29Z32K/8S8
         t2Ag==
X-Forwarded-Encrypted: i=1; AJvYcCWhxCHOErC41gZRrAXcN99H8oC7mtOGNZyD4f2EoZkfnBPYtVvg4jdZ3PqxQlRLwaB1jRe0papomw7i@vger.kernel.org
X-Gm-Message-State: AOJu0YzvuOO2en0QuQ1il+Cbge2Ks6iGYMcXZL2GBNGAjOpT9146jHYm
	ZCJrtQyC+/H68jGQKarn9K3hogLIyxeX6WRLSv74cWIjFQZi3mMSD279s3cwA/sg34LzTcPYQhy
	3Th+GPAVRIbPLls3WUMPzVLsGM6xvXLVrBxwm+lIQKVqMdaHsgGrtPPZm53obNg74
X-Gm-Gg: ASbGncvbFdcPZZO7EehOEh40TtFobBIhoGY+sc02EQOQobGBhykD0HuhtAYZjrqFhha
	y8h8yAaX1K1+SqjMjgq6m5BqhnXpKcWvC2QorZqLoFifMPQ81xz0ZY1o3XmSjrVK4ES5Q0tsQ3Q
	0662aXIuPCVtHai0j1uk/3S6bAkiIUBqyAv7lKx1Nf+nikuh3Y7m5wHkeGIzczKJr9ylZ4fAdp5
	uHuBf0HB3YGWZYHL5mtweX0vs/i8Dq21RqpOXdX3iJXK1I0FY7CrCR8xJLl6ZWSiqi4iOYjAMQw
	Q8bXa+zWmULsHFgn9iteA+1YiECt5Qxe8Wl1LLnyHOIoOIXAjd+dKN0mlQ1B8+Rkaas81ACi0Sv
	leMz2y0xa
X-Received: by 2002:a05:6a20:1583:b0:231:a5f3:4d0c with SMTP id adf61e73a8af0-2390dc2dc9emr25391120637.26.1753157770223;
        Mon, 21 Jul 2025 21:16:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IErHhId/j/v2hg7I2Nk6a6IKicSJC1x+MP48SzOsKWDhWKPn7p/JJN48x/r2U9z2tdar/2Tww==
X-Received: by 2002:a05:6a20:1583:b0:231:a5f3:4d0c with SMTP id adf61e73a8af0-2390dc2dc9emr25391081637.26.1753157769658;
        Mon, 21 Jul 2025 21:16:09 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b3f2ffbce6esm6056292a12.72.2025.07.21.21.16.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jul 2025 21:16:08 -0700 (PDT)
Message-ID: <356f7dc3-c51d-4fb6-a1de-35e4be967d89@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 09:46:02 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/5] dt-bindings: watchdog: qcom-wdt: Document sram
 property
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20250610-wdt_reset_reason-v5-0-2d2835160ab5@oss.qualcomm.com>
 <20250610-wdt_reset_reason-v5-3-2d2835160ab5@oss.qualcomm.com>
 <20250610180345.GA2382213-robh@kernel.org>
 <a8b33510-c010-452f-9177-ce743b732d21@oss.qualcomm.com>
 <073480a2-0b6f-4dc0-b7eb-eec500b3106e@oss.qualcomm.com>
 <39acdb37-e6f0-45e3-b54e-bd8a5905b2ec@oss.qualcomm.com>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <39acdb37-e6f0-45e3-b54e-bd8a5905b2ec@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDAzMSBTYWx0ZWRfX1M/GPhqLvDKx
 Z1UH88wwOgEFDxpjtpt3o4Nyf2KjZapfq6Zdn/Q2xGL25ffsOBXd5FQKd/77khMyeCEpL3ohCx2
 YwLOCPfuAUjbtYrc93dyLKMrLjmx8hQ9wMr/wvCSyLrVf3P1n27+XNe6PzTCrvhTu6GzsgfPKWY
 e+sV5Rnaqprd8BzjEJi/1km7WsI0LUUlZbRBjkmX8o1vBR0AKFg2ki2+AJhQ4uxa7CTda/CuZMf
 p28e68q6qYKbYHp+jx4q3vQV4MaxgYyYNCr5PYNgFgFfuGReJITkNKrBRwhbpFExzvqeuq6SEGS
 SMzEIAOAmeubB8mLsRFvmQKWrwW5mxwzvHQTqcAUy1PwJuI8LnO9fJSF4iyRDrbxbevsh0+2Fqh
 NJVs6/idXZT1HgqE5XSsjZT+yT0OCqRWDSZVNnQy5ZQou9bzFo4AcN7puhWo+RB+Ye90D1wN
X-Proofpoint-ORIG-GUID: UbXqTogCUAkXr9qsKwZNQLdyprpCbMB5
X-Proofpoint-GUID: UbXqTogCUAkXr9qsKwZNQLdyprpCbMB5
X-Authority-Analysis: v=2.4 cv=IrMecK/g c=1 sm=1 tr=0 ts=687f108b cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=6IeY0j5x5GykiPM6AEwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-21_05,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 mlxscore=0 mlxlogscore=999 phishscore=0
 impostorscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507220031


On 7/14/2025 8:21 PM, Konrad Dybcio wrote:
> On 6/19/25 7:48 AM, Kathiravan Thirumoorthy wrote:
>> On 6/16/2025 10:48 AM, Kathiravan Thirumoorthy wrote:
>>> Thanks Rob for the review comments!
>>>
>>> On 6/10/2025 11:33 PM, Rob Herring wrote:
>>>> On Tue, Jun 10, 2025 at 07:15:19PM +0530, Kathiravan Thirumoorthy wrote:
>>>>> Document the "sram" property for the watchdog device on Qualcomm
>>>>> IPQ platforms. Use this property to extract the restart reason from
>>>>> IMEM, which is updated by XBL. Populate the watchdog's bootstatus sysFS
>>>>> entry with this information, when the system reboots due to a watchdog
>>>>> timeout.
>>>>>
>>>>> Describe this property for the IPQ5424 watchdog device and extend support
>>>>> to other targets subsequently.
>>>>>
>>>>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>>>>> ---
>>>>> Changes in v5:
>>>>>      - Rename the property 'qcom,imem' to 'sram'
>>>>> Changes in v4:
>>>>>      - New patch
>>>>> ---
>>>>>    .../devicetree/bindings/watchdog/qcom-wdt.yaml       | 20 ++++++++++++++++++++
>>>>>    1 file changed, 20 insertions(+)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
>>>>> index 49e2b807db0bc9d3edfc93ec41ad0df0b74ed032..74a09c391fd8e2befeac07f254ea16d0ca362248 100644
>>>>> --- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
>>>>> +++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
>>>>> @@ -81,6 +81,16 @@ properties:
>>>>>        minItems: 1
>>>>>        maxItems: 5
>>>>>    +  sram:
>>>>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>>>>> +    description:
>>>>> +      phandle to the IMEM syscon node that exposes the system restart reason
>>>>> +    items:
>>>>> +      - items:
>>>>> +          - description: phandle of IMEM syscon
>>>>> +          - description: offset of restart reason region
>>>>> +          - description: value indicate that the watchdog timeout has occurred
>>>> A 'sram' property points to an SRAM region (see mmio-sram binding), not
>>>> a syscon and offset.
>>>>
>>>> The 'value' should be a separate property or implied by the compatible.
>>> Sorry for the delay. It was a long weekend here!
>>>
>>> Let me start with the requirement (Please feel free to skip it). When the system goes for reboot, Xtensible Boot loader (XBL) find the cause and update the particular offset (in this case it is 0x7b0) in the IMEM region with the known values. On the next boot, if the system is rebooted due to  watchdog timeout, watchdog's bootstatus is updated accordingly, which this series tries to address it.
>>>
>>> Based on the previous review comments / discussions [1], it is decided to go with the above approach, i.e., name the property to 'sram' and let it points to the syscon region (IMEM) along with the offset to read and what value to expect. So that we don't have to touch the driver if either of the offset or the value changes across the platforms.
>>>
>>> Currently, IMEM region (which is a on-chip SRAM) in the most of the QCOM platforms are modeled as 'syscon' [2]. So I have followed the same approach here as well. Should I describe the IMEM region as "sram" (mmio-sram)  instead of the "syscon" (existing approach) and retrieve the offset and desired value from the compatible? or stick with existing approach and name the property to something else? Could you guide me here to proceed further?
>>>
>>> [1] https://lore.kernel.org/linux-arm-msm/20250519-wdt_reset_reason-v4-3-d59d21275c75@oss.qualcomm.com/#t
>>>
>>> [2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>> Konrad,
>>
>> The bootloader team confirmed that the IMEM offset and restart reason value are fixed for the SoC's lifetime. Based on Rob’s suggestion, let’s pull these values from the device data using the compatible string. Let me know your thoughts.
>>
>> Kathiravan T.
> So I'm not sure whether I proposed this before, but this is how I solved a
> parallel problem for IPA, also consuming a slice of IMEM:
>
> https://lore.kernel.org/all/20250527-topic-ipa_imem-v2-0-6d1aad91b841@oss.qualcomm.com/


Yeah thanks for pointing it out. But based on the recent comments from 
Krzysztof, I'm more inclined towards describing IMEM as syscon but not 
MFD and let the consumers to fetch the required information from the 
device data. Please let me know if you think otherwise.


>
> Konrad

