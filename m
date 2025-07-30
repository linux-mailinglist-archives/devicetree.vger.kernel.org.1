Return-Path: <devicetree+bounces-200794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59285B15FF9
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 14:07:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 908C47A37AD
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 12:05:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16525292B3E;
	Wed, 30 Jul 2025 12:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KfVywomE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 635C9277CA8
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753877233; cv=none; b=VWfDDx9yXloHznKU4T1lS6IF17iKO08oocl9Y01bEVNxhN7fc3wa08lSnEQPGly/VsS9TCuXE8R6BYPKbltW4Mn9dcsVdp2bEdJpscyv+mjNNknjp899s5FLsXn0q3Lt9An5s/ckYihw0sjOoO/nl56bJkJAj7soDDP+x6Ibz5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753877233; c=relaxed/simple;
	bh=nzDS3J8Tl4uutqBKhmKxdBPH3AFv6h9o+HqreCGEqhk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lqDoAeeUmHs/1AZEJCi1p4xxIKUNO+ikjPO/LObr1ewo6ZmB6FYDBNDajpF3/xUM2RnAD2YE19O2OsTTNcjE/Hvgrcon7drjSEjrXM21kZzyfHLr9WCMb0gU0HbP3JIKUzauiKdH9OXgVb5GCpZD6VhC1tcf3ANAt/vEFU+GjPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KfVywomE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56U75JNI012483
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:07:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YXPB8xAVMNnXhcculy8uUbKvbOohXUXRpW6onDRXyIM=; b=KfVywomEGyh5bNld
	2Wbq7OIXVEqVAHR6DemCa7a0Ylp5iK0oK3UJ9ccKl3mTf+Djrp8S+GGJtVlX/sQu
	4WlgkNELKiE9V5fPb2Z3hMqRLn+7BiK8C6PdLSOz0Riq9ZjoGo+CNS1ddjL22H9W
	0SRKpdKPOv3okZfR+LMq7EJech25fJCSgfgvfH0+6DlCEZyiP0raBPkRdfvwHZk3
	/dzQLnP08tF1thaMCWBwub+Lzqc6mqJabFNnHmyjbKo04WC38oAiMYHusVtbWTYo
	AYIXTzaKmEDs0KXcnDEojcGuQUtU4AjXuQNF2oVPFQGT7NbAHXlY668AtR008iwh
	hqYa+A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484qda3kdb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:07:10 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4abd7342386so16967861cf.1
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 05:07:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753877229; x=1754482029;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YXPB8xAVMNnXhcculy8uUbKvbOohXUXRpW6onDRXyIM=;
        b=YGKQRU8Su4N1AYpa15mNiSu9G0surSXXYfPFmcBy59dQKmGcB1oMG3rmY+p94lCDhH
         AFjf6hwOFi2/8oP4E7iSbo0fz1uaftWTdErWvYgw2HHOtuA+H4hKlGyzT9A2BreW2wRU
         gx/W61sYZCC3stulocvojMbOk9+Huldps+hEyJnBYlDhrU4dQjuKalZZ//C/somi0O5T
         xDpC/rFT/TlhItyJXdou4SjaUVqOJzW4WKmQWFDDCPdymBlARKVlQBKmJaDEzHkDn8pK
         RP0SqE1VtrodaTISS3h49iNDG/WGbIBogMFop2nvIFKp6muqa5jWgiSLyRPB1sLDggqB
         tMKA==
X-Forwarded-Encrypted: i=1; AJvYcCVUVe4z8gdKUo0XSSPsQ99Jn5oJOqVWxlTrUZNRrB3tsPUy81IA0iIS1nna/UvRK7AD6ZXhA9ZWIN5x@vger.kernel.org
X-Gm-Message-State: AOJu0YwJIiALPi9uZTVHtP8HOVg7H5Hrn65MJLqM+fvedODH/C7bwLOy
	s4t5Fq/PadlNQXhpOx8X0RtNorQYuwNbHXY0grabeiuvpDP6aTNV2yTkCEKNRV0/StJPdStX3jS
	99yC10l8JyTrBSDRY4twXnH3qobpJHw5MX/MqlqJX84NTpNH2AdLlI5XyWyW+AT+K
X-Gm-Gg: ASbGncuFc3zBpvVGFGhkup4pD1FhEEVaII0FymU7W+20ZZmSLyPIIzgs3izItVgauNo
	0zjUwgnQhrK85pUbPGT0hrvFwvV8RUZqb24EmifJnD4fVcLUB6lQckmXDpcPmR8H4DCXHjHgj56
	cMEiJKwR308xpVxWTSkPufR6oJkDS1L9TJa2Ak6e0EHWy9CzFB61sry5lDSHEPNrQ1y/YSgiuGX
	hei6DgGlUcTFOU+5zEwv6uvQzWzFR6Uq6syf9o9Anzgf1AJbMU58QP0WhAkPm0+tyPHICzCM/Ds
	UZYX3ptKynNw5TO4XKgqAJQjwqHiDGoenDnHm+GAtOJUZUewFN+2/cZ5BUuu1+aocYp39jvJRa3
	KZe3muj4aBwlrRyMfKA==
X-Received: by 2002:a05:620a:1989:b0:7e3:49b9:d06a with SMTP id af79cd13be357-7e66f3412c6mr190737885a.9.1753877229186;
        Wed, 30 Jul 2025 05:07:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH2dFWuV9ypfCgfd4v8j0ZSQkQwxTOTO6AEX7GRCA3ShMfzfTaFvEB2RNG2NOx9CQxbn3Lu1w==
X-Received: by 2002:a05:620a:1989:b0:7e3:49b9:d06a with SMTP id af79cd13be357-7e66f3412c6mr190733685a.9.1753877228415;
        Wed, 30 Jul 2025 05:07:08 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af6358d2fa9sm732893766b.62.2025.07.30.05.07.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 05:07:07 -0700 (PDT)
Message-ID: <747e5221-0fb1-4081-9e98-94b330ebf8c7@oss.qualcomm.com>
Date: Wed, 30 Jul 2025 14:07:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v2 1/3] dt-bindings: sram: qcom,imem: Allow
 modem-tables
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller"
 <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Alex Elder <elder@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        Alex Elder <elder@riscstar.com>
References: <20250527-topic-ipa_imem-v2-0-6d1aad91b841@oss.qualcomm.com>
 <20250527-topic-ipa_imem-v2-1-6d1aad91b841@oss.qualcomm.com>
 <97724a4d-fad5-4e98-b415-985e5f19f911@kernel.org>
 <e7ee4653-194c-417a-9eda-2666e9f5244d@oss.qualcomm.com>
 <68622599-02d0-45ca-82f5-cf321c153cde@kernel.org>
 <bf78d681-723b-4372-86e0-c0643ecc2399@oss.qualcomm.com>
 <62b0f514-a8a9-4147-a5c0-da9dbe13ce39@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <62b0f514-a8a9-4147-a5c0-da9dbe13ce39@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: O2eRHLOsBMlDNPj6bb7m21fLsFeTKsnI
X-Authority-Analysis: v=2.4 cv=Pfv/hjhd c=1 sm=1 tr=0 ts=688a0aee cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=8yqZ_v4obXD5Xgezft8A:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: O2eRHLOsBMlDNPj6bb7m21fLsFeTKsnI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMwMDA4MyBTYWx0ZWRfXyGy7f+bJSfnc
 ++h34Fl+MVTJSD6zCQBpsoTtdaQI+rZz+YtEVkKeftywZysj1QyhbIW2kOUOnZ3qmXKMZnFHvLi
 eEPrRGKm1JvhzrUhtFUmcyHHwD/bsAm9tyUKHsKuauphVhowmtUUvSDfksDQmESCeObEIIP7fkw
 v9umb8BHcbTuvVB1dC7qjE1nwTUxCS3ZiSYo8pKFfHuGBD32w7+Q/6yjs+vv8lsus6iITlNPvyr
 ARdg9qrEyrab1GFEzVBc8RwC3EW9F815AwoM+csAQzSy9UwnBLb/TkhjVOSFGrCozDwPcqAViuB
 K5Nve+Y3TUyjGZ+7/HdHflzWCAbWJ7jTmAPXwdPShqU27+97EHjMQU8RVap+lk2PE0In+8yrlxq
 t81U+dete5xhpV1SCuzxV0Q+ejwRTgWqXRScYn5dCJOhOOHiEt4kfJmK2Eght+Pk/mOPZk+l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-30_04,2025-07-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=985 clxscore=1015 adultscore=0 priorityscore=1501 mlxscore=0
 spamscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507300083

On 7/15/25 8:37 AM, Krzysztof Kozlowski wrote:
> On 14/07/2025 19:53, Konrad Dybcio wrote:
>> On 5/27/25 1:42 PM, Krzysztof Kozlowski wrote:
>>> On 27/05/2025 13:36, Konrad Dybcio wrote:
>>>>>> diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>>>>>> index 2711f90d9664b70fcd1e2f7e2dfd3386ed5c1952..7c882819222dc04190db357ac6f9a3a35137cc9e 100644
>>>>>> --- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>>>>>> +++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>>>>>> @@ -51,6 +51,9 @@ properties:
>>>>>>      $ref: /schemas/power/reset/syscon-reboot-mode.yaml#
>>>>>>  
>>>>>>  patternProperties:
>>>>>> +  "^modem-tables@[0-9a-f]+$":
>>>>>> +    description: Region reserved for the IP Accelerator
>>>>>
>>>>> Missing additionalProperties: false, which would point you that this is
>>>>> incomplete (or useless because empty).
>>>>
>>>> How do I describe a 'stupid' node that is just a reg?
>>> With "reg" - similarly to many syscon bindings.
>>
>> Is this sort of inline style acceptable, or should I introduce
>> a separate file?
> 
> It's fine, assuming that it is desired in general. We do not describe
> individual memory regions of syscon nodes and this is a syscon.
> 
> If this is NVMEM (which it looks like), then could use NVMEM bindings to
> describe its cells - individual regions. But otherwise we just don't.

It's volatile on-chip memory

> There are many exceptions in other platforms, mostly old or even
> unreviewed by DT maintainers, so they are not a recommended example.
> 
> This would need serious justification WHY you need to describe the
> child. Why phandle to the main node is not enough for consumers.

It's simply a region of the SRAM, which needs to be IOMMU-mapped in a
specific manner (should IMEM move away from syscon+simple-mfd to
mmio-sram?). Describing slices is the DT way to pass them (like under
NVMEM providers).

> 
> If the reason is - to instantiate child device driver - then as well no.
> This has been NAKed on the lists many times - you need resources if the
> child should be a separate node. Address space is one resource but not
> enough, because it can easily be obtained from the parent/main node.

There is no additional driver for this

Konrad

