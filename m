Return-Path: <devicetree+bounces-208778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC49B33391
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 03:33:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 25D71177055
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 01:33:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C394D1F8725;
	Mon, 25 Aug 2025 01:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W9KN47ch"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476D61C862C
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 01:33:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756085587; cv=none; b=KGt9bfej2kv3xpH7DkzE5wWSCiHhjWNgxNL/citvNfdSousNwCtn6JvDNTId6SxxK8E41rYYTfq2G6IGgMoUbUjCddDwfb4gszuUYLzcdh4wwmZOsnDiJSNHQgg3b06afTYZ2+16S3povLXAChlENFZmmBvX1Jsx0xM0aX7X0Bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756085587; c=relaxed/simple;
	bh=IEnN5jzC0xPifQD1FTMG4+swJ7cJ8LQtCAIwc/49fU4=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=ekb0kS6ox7a78g91rU5Tf8FZpkvDNciskZTlcl9WX7dIktaUH5JlY9JyHY+J9g9SjZ5gSoTMFq67FskRhCFP+79tLTAw6tBRAn04YgW/GkzeP+4/J5XVtKoWQvhjOv9OjN81z36AK9HlXtMft/hvLNbjqonwRoRLCUaC7KlKn3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W9KN47ch; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57OLxgAV006427
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 01:33:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	K6E22yah7RSaBBMqG2z+3SW7CvB325/vsH5zTcMNA9Q=; b=W9KN47ch+CdMX9XM
	MP7DMdWXixwcEekg2jQ1kogTdnBPsM6//cCJVzKzGoXNggSXYcTIwzRTAesfC1R9
	ebmxW2ujk5pR4O5HAMUpnprbBnn9q1pk6bagr3GW/Qxe2d3imsG6gGOxzJmKrm0Z
	vXabB3r61hRyM606cAe87ZO53ewpZSptRMbNTzh8V+9ns/b2s+JrrczBJpeqtOEk
	lQUL8JAJyrR6QrCiLQOo1KJiBuYetCr73jB4Ts4M6Q9oiIt/jOsYHNBWl6xtIOnj
	nECZM3J/Y07kmbY6vrr/76knhY1MVyzL/Thf9sl5Jxfo9XsxT5hMWWxXhT4dcI2e
	UreKDw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5w2kckr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 01:33:05 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-246164c4743so67810495ad.3
        for <devicetree@vger.kernel.org>; Sun, 24 Aug 2025 18:33:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756085585; x=1756690385;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K6E22yah7RSaBBMqG2z+3SW7CvB325/vsH5zTcMNA9Q=;
        b=sHbDAjuFXxXLoqg1we4F4v1Ca6V08o94HJz2EQIzD+Z8pZQYkorOLjv+J52ItqMmHF
         38WyKqFSLNZVjEEaoKJNi7f1rEGuDY4iNKu0uZOzF84MylcntoIt6uEXVr2WnLGjPcXW
         QvSKdRN/ghN+LDK5d5jrzkFGGcmO4dt5ZoIWfxQXNR//9nNsg9Y3rqIPhT38E1ja4nlx
         vClYAwSMY4r/x4IlJw4obrtesDjETamTiORvNfNbnFOwpocHZsDPxAkszuGDwOkKjqDd
         JCtKEGj0pgxnUY6GxCTMI8Au/dP/5VmIuTm1GmXgWlkRl3SivNlK5rJ9Exw48tetIORW
         NRfQ==
X-Forwarded-Encrypted: i=1; AJvYcCVXAcOVh+BMSTdx8NZMKg29Wn+WoppCNMbHKn9cQT01WPcXzn6X/+tMFBVXK1zDs+9Vz9KfrXIL68Ei@vger.kernel.org
X-Gm-Message-State: AOJu0YwlHviYDkFGBiF63PbL6UD5X7W9X1/aXmCzHUrtzbjKiBHcp8Eh
	SCYeIFcotyh3stnWmckUz4tRwRXqmlIb8B8+hhqcCK47/dz9lDfG79AFdZLJ7YGu2vSj2w0zPry
	atnkOk+qayu0u4qfNQzR++W0W51QeuG/Q4EjL8Fsayrj1zcQNGipt3X7ePHK1DcHo
X-Gm-Gg: ASbGncvbj8rSn4cAAbc7gUzenibsk1U4cV220GRb1Xt0qYGl2pcI56x+Leacwq/n2YQ
	SNup+kWkeb3Iqw3QsWO5nt6tfX8FAc5q19wFJ4om5Q4YkK47HqUcTY9vAqYfQC2Vq2ks7TYmFvd
	vB6kvtEqI0dtutvKCHwx9NPr188eX5AVKSt6bnJMIBhjWRcXawdPrXFoaCY/so1nFLLaF9S5NlT
	nmE9iLBXAxw0QmEzB2dYzgbiUS/W6/78QxRdp2+ZwfFvO8B5t2Hi0TgLvxBONQW2E8Ar6j0B/jX
	FOjR4TySlKZts+fMlDWKxxsThM/PcmeU5YW+3yXlsw6Jhr3fsb9hf+ihFZ/gt4DOj20MZUsIFzk
	9HGqebolIkS52fTSgsbdo6C/1Cs9sSg==
X-Received: by 2002:a17:902:ecc6:b0:243:38d:b3c5 with SMTP id d9443c01a7336-2462ef1564amr146761585ad.47.1756085584621;
        Sun, 24 Aug 2025 18:33:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJHNnP7iSIPuTBnCfkd1kHAo6DmPEz7vDeIdsiBninAkHPKiPmI83toT+uDqJlo73Uw+Et1Q==
X-Received: by 2002:a17:902:ecc6:b0:243:38d:b3c5 with SMTP id d9443c01a7336-2462ef1564amr146761305ad.47.1756085584073;
        Sun, 24 Aug 2025 18:33:04 -0700 (PDT)
Received: from [10.133.33.155] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-246687b0feasm52811395ad.46.2025.08.24.18.32.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Aug 2025 18:33:03 -0700 (PDT)
Message-ID: <74038a79-8c59-496c-9a61-08dc786f9c10@oss.qualcomm.com>
Date: Mon, 25 Aug 2025 09:32:57 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] Enable CTCU device for QCS8300
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Mike Leach <mike.leach@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250624095905.7609-1-jie.gan@oss.qualcomm.com>
 <c7cca483-f1d3-45b4-abef-ec5019ad57dd@oss.qualcomm.com>
 <c6f74d55-6ea8-498f-a05a-000599f93ac6@oss.qualcomm.com>
 <b5f8fce0-afe8-409b-b43d-fa9f413cd442@oss.qualcomm.com>
 <CAJ9a7VgZ61oL4LLxKSon3LXsYDtaHaPcGNxW=cwzhSOs3ea1PQ@mail.gmail.com>
 <bbbec517-cc2b-444b-b76b-a4930902d667@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <bbbec517-cc2b-444b-b76b-a4930902d667@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Z/vsHGRA c=1 sm=1 tr=0 ts=68abbd51 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=KrWnKaeQ6KOPjblB_ggA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfX3PTw0jXUThqK
 ltbwJrLQYTmlkJhKN6KlfdxGtoPeknfFz2Dq86OIZ552ZDoQ0wwvV7pbRWdTga0y7AhpmlApRZb
 tdDO6H0+8y1msf7YDl4Zschd5WCHURPEvxA0aHcXN6+kBc4SDPa4By31sa6QQr/5mJRhyGQoBXP
 WcPPpfw7o/mKXONz/tW8Yu/lfMy7HG+79syil4xjUIEqaIwP0GkOcCdepKbnNX1LUfqwyj/Y8dh
 AdC6/r6dHzuOlQqSlDixwG1DMJKTlq+fXqDt6jx7ir97Wbv4DTaGPkUubwjTFBNKKAl1KKwsAGJ
 4CxS5S8YMUn/2p7Ple1sW0mPLXoQ/nZUZGSC5SrL/f2RerAReVTBR82fbH0hl8bcJ7YpPxVU3k9
 odbWGU3w
X-Proofpoint-GUID: hjl6-yf-mUVOwkx_31cWk7j_18F4Z8HT
X-Proofpoint-ORIG-GUID: hjl6-yf-mUVOwkx_31cWk7j_18F4Z8HT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-24_08,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 phishscore=0 clxscore=1015
 suspectscore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033



On 8/5/2025 6:25 PM, Jie Gan wrote:
> 
> 
> On 8/5/2025 5:53 PM, Mike Leach wrote:
>> Hi Jie,
>>
>> On Tue, 5 Aug 2025 at 05:11, Jie Gan <jie.gan@oss.qualcomm.com> wrote:
>>>
>>>
>>>
>>> On 7/28/2025 9:08 AM, Jie Gan wrote:
>>>>
>>>>
>>>> On 7/15/2025 8:41 AM, Jie Gan wrote:
>>>>>
>>>>>
>>>>> On 6/24/2025 5:59 PM, Jie Gan wrote:
>>>>>> Enable CTCU device for QCS8300 platform. Add a fallback mechnasim in
>>>>>> binding to utilize
>>>>>> the compitable of the SA8775p platform becuase the CTCU for QCS8300
>>>>>> shares same
>>>>>> configurations as SA8775p platform.
>>>>>
>>>>> Gentle ping.
>>>>
>>>> Gentle ping.
>>>
>>> Gentle ping.
>>> Hi Coresight maintainers,
>>>
>>> Can you please help to review the patch?
>>>
>>> Thanks,
>>> Jie
>>>
>>>>
>>>> Thanks,
>>>> Jie
>>>>
>>>>>
>>>>> Hi Suzuki, Mike, James, Rob
>>>>>
>>>>> Can you plz help to review the patch from Coresight view?
>>>>>
>>>>> Thanks,
>>>>> Jie
>>>>>
>>>>>>
>>>>>> Changes in V2:
>>>>>> 1. Add Krzysztof's R-B tag for dt-binding patch.
>>>>>> 2. Add Konrad's Acked-by tag for dt patch.
>>>>>> 3. Rebased on tag next-20250623.
>>>>>> 4. Missed email addresses for coresight's maintainers in V1, loop 
>>>>>> them.
>>>>>> Link to V1 - https://lore.kernel.org/all/20250327024943.3502313-1-
>>>>>> jie.gan@oss.qualcomm.com/
>>>>>>
>>>>>> Jie Gan (2):
>>>>>>     dt-bindings: arm: add CTCU device for QCS8300
>>>>>>     arm64: dts: qcom: qcs8300: Add CTCU and ETR nodes
>>>>>>
>>>>>>    .../bindings/arm/qcom,coresight-ctcu.yaml     |   9 +-
>>>>>>    arch/arm64/boot/dts/qcom/qcs8300.dtsi         | 153 +++++++++++ 
>>>>>> +++++++
>>>>>>    2 files changed, 160 insertions(+), 2 deletions(-)
>>>>>>
>>>>>
>>>>>
>>>>
>>>
>>
>> You need to send a new patch addressing the comments made by Krzysztof..
> 
> Hi Mike,
> 
> I just proposed an idea to add a common compatible for CTCU device, its 
> not about the patch series itself. We dropped the idea and prefer to add 
> the board specific compatible for each platform.
> 
> Thanks,
> Jie

Hi Suzuki, Mike, James

We already have the tag from dt-binding and dt maintainers. We haven't 
additional modification for this patch series. Can you please help to 
review the patch series from Coresight View?

Thanks,
Jie

> 
>>
>> Regards
>>
>> Mike
> 
> 


