Return-Path: <devicetree+bounces-133077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4073F9F92A0
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 13:55:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C501B7A1956
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 12:55:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3A4E2156E2;
	Fri, 20 Dec 2024 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pmX18UQL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF5721519B
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 12:54:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734699293; cv=none; b=VGzuqS0jc15zkslB2MBjOcfJ5UDzC/m4ITuXDeKQdSFtpyIIMDocUURwxlK+57Hc2cLzNi+YQg+ZDWZ9P7KS3BRmoccSmpmr4bAZGlXp4FNIk+OB5Edm6Yd07lC5VMNFAENKn2YhsQCpkDJzlv9kpGhGwg92IOaXHcbLmuq4BoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734699293; c=relaxed/simple;
	bh=Pe8SHXyg6eYI2kthWaJBClGql2i+k6hNjsS3CXqFy5I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VkVPZ8ODzeotifam42RV0gLlg05ksAoQ4kYtbSPDhW0J+Jmf+tYtv6zuHenXL7aehc/QG/gFip409QAcbIw3V5C0GESbUHirC7YwkCxfldInwzntw2lF8976pfqcT2nw3jTlct+EELDMwqTcyQFQcxJ3mwUftiEPIIPzJzZi9zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pmX18UQL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BK4Pir4024660
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 12:54:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1glOxkn1IDIgd0UCki0Nf++sUdgcqfIdre3vsIotpyM=; b=pmX18UQLuSX88CLk
	MhVSc8dtXRsGWf5WGvy24lwct93xuTUWxTcYx7aSEmCufyVckvc9OFXxu4XmUNdN
	fwxel1A1agJy6GkzT6oSUzLZZxWfPOa/bcv3vi14h0ypmagBA50Rfec1KCnbnGbo
	vU1z8lvQrIvcsnaGrharGpXuFKE2NLrMB2XD1FrFJbyT3UB0wPyGRVwpMyk+w3w5
	1GjAajYsYOqXkcxUmo6KPrc2bljVR09YTXQgVL+s7L1DqUVnFVDdCYDdkBZn7d4P
	UCBY8+xEI2amEkFSAx7ik3VHyDxbwepGkAjxe/GOhLh4wlTrNbpPIgX8EjoU/KWI
	uR9fWQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43n1hx18e2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 12:54:51 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d8a3cb9dbfso3348006d6.1
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 04:54:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734699290; x=1735304090;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1glOxkn1IDIgd0UCki0Nf++sUdgcqfIdre3vsIotpyM=;
        b=iBPgUs6loXrVAH4tMadRtVpDGT3h7iCE3+a7UG5EHDWgaAqDWQSZuYGoazPnUFKFGw
         14/moI7q8EvhTd/gYO/UHRaxSSiPfWYOvxMSzhrYu17EPfakFgFD4480ZKw+v2P+G+Mg
         DGRJdIE0RtGg+bIATNUt4NRcCKNgaf/EybtYcv+hzU9VyD0vNo/oOhLNEy1A5xEBfs0d
         h/bEbQehvaONZKNFrpKVDpW0p1wPKC7IRce8snB0f830Ru/5kTWNct2t+QVZdrwQHmf0
         1W3vuSObM5O0C9FaGNPBNXWxIkFVFUU6fCmZUVJKbpajQvDXnoqYgrb62uz9EV/r70Zq
         OcfQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFZdHaXVPmTt8kcMs+iyYhSP3J5vEdYTRo8F1fSKZX9HZT7BfreM7DhUwhdvqmGe+COSBVzRSxofU7@vger.kernel.org
X-Gm-Message-State: AOJu0YxOpEiMX4A3ITcN94sC8FSNpRZov3Gxz9rQ+Nc0/mhoCiXatxTz
	v+QhYXK4cG2tLhluupqX9XE2RMIp/QZ5r05sLueRdXVog6bKyc8TSVKnXNE5O7oP7D/bIPDVeB6
	7wjwwChm8quSQQXnvVV6oWLflKyZRwDE3JRVnGa1YbKHu46BffyC4wh8myu3N
X-Gm-Gg: ASbGncu8F3mRAp0NhRI01NoLjecY8YHxLVAzQ1khitpywyqtkeBzVL4oE9j4d2yXeiX
	FVDzjL7hW71ldIAyPvfWF4jWKBSNWcqbjMr0MJII86WNFt289keTjSQ952GUVuC/hDhPXTAQfmg
	0bUaw+xyyo9jGBvHXhu8cCuCLp9DIyIZ9D1F7z0jgO4TF/zYTbHVYMhn//D0QsZoocAt1BsYzXC
	Q1F2eFBjNB7PZEzRi40HXv1gpD3+fjImpQoroV2EeKRnM9J7Z7XQ7jMiTh0v38qLfJ5sqO1/eLY
	hsyF3rdrautmYNDBeJLrEknbognxRWWlQu8=
X-Received: by 2002:a05:620a:1999:b0:7b6:d252:b4f1 with SMTP id af79cd13be357-7b9ba7c8376mr131314185a.11.1734699288408;
        Fri, 20 Dec 2024 04:54:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFauhfwJ3WJ9nZ/J7KQQZfJVN6/UgwZW5dzxwD9LiwBWG5nYGkVE6qtjqC+2RPuPXzjDKtKTw==
X-Received: by 2002:a05:620a:1999:b0:7b6:d252:b4f1 with SMTP id af79cd13be357-7b9ba7c8376mr131312185a.11.1734699288018;
        Fri, 20 Dec 2024 04:54:48 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0eae71desm172876166b.89.2024.12.20.04.54.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 04:54:47 -0800 (PST)
Message-ID: <349bac70-87e0-4870-a3f0-9f6a3b3e6824@oss.qualcomm.com>
Date: Fri, 20 Dec 2024 13:54:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: arm,psci: Allow S2RAM power_state
 parameter description
To: Sudeep Holla <sudeep.holla@arm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
References: <20241028-topic-cpu_suspend_s2ram-v1-0-9fdd9a04b75c@oss.qualcomm.com>
 <20241028-topic-cpu_suspend_s2ram-v1-1-9fdd9a04b75c@oss.qualcomm.com>
 <Z1LQOmEfFy640PjG@bogus>
 <54cc4221-ba5f-4741-9033-20874265ca01@oss.qualcomm.com>
 <Z2VUiHWHgbWowdal@bogus>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <Z2VUiHWHgbWowdal@bogus>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: xirlyxtw46OVdO0_QHSp4ddpJDG6yWme
X-Proofpoint-ORIG-GUID: xirlyxtw46OVdO0_QHSp4ddpJDG6yWme
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 suspectscore=0
 phishscore=0 adultscore=0 bulkscore=0 mlxlogscore=999 impostorscore=0
 malwarescore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412200105

On 20.12.2024 12:27 PM, Sudeep Holla wrote:
> On Thu, Dec 19, 2024 at 08:43:27PM +0100, Konrad Dybcio wrote:
>> On 6.12.2024 11:21 AM, Sudeep Holla wrote:
>>> On Mon, Oct 28, 2024 at 03:22:57PM +0100, Konrad Dybcio wrote:
>>>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>
>>>> Certain firmware implementations (such as the ones found on Qualcomm
>>>> SoCs between roughly 2015 and 2023) expose an S3-like S2RAM state
>>>> through the CPU_SUSPEND call, as opposed to exposing PSCIv1.0's
>>>> optional PSCI_SYSTEM_SUSPEND.
>>>>
>>>
>>> If so, can you elaborate why s2idle doesn't work as an alternative to what
>>> you are hacking up here.
>>
>> Please see other branches of this thread
>>
>>>
>>>> This really doesn't work well with the model where we associate all
>>>> calls to CPU_SUSPEND with cpuidle. Allow specifying a single special
>>>> CPU_SUSPEND suspend parameter value that is to be treated just like
>>>> SYSTEM_SUSPEND from the OS's point of view.
>>>>
>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>> ---
>>>>  Documentation/devicetree/bindings/arm/psci.yaml | 6 ++++++
>>>>  1 file changed, 6 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
>>>> index cbb012e217ab80c1ca88e611e7acc06c6d56fad0..a6901878697c8e1ec1cbfed62298ae3bc58f2501 100644
>>>> --- a/Documentation/devicetree/bindings/arm/psci.yaml
>>>> +++ b/Documentation/devicetree/bindings/arm/psci.yaml
>>>> @@ -98,6 +98,12 @@ properties:
>>>>        [1] Kernel documentation - ARM idle states bindings
>>>>          Documentation/devicetree/bindings/cpu/idle-states.yaml
>>>>  
>>>> +  arm,psci-s2ram-param:
>>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>>> +    description:
>>>> +      power_state parameter denoting the S2RAM/S3-like system suspend state
>>>
>>> Yet another NACK as this corresponds to PSCI SYSTEM_SUSPEND and as per
>>> specification it takes no such parameter. This is just misleading.
>>>
>>
>> Yeah PSCI_SYSTEM_SUSPEND takes care of this on platforms that expose it.
>>
> 
> And those that don't advertise/expose don't get to use, simple.

The spec says:

"The call is equivalent to using the CPU_SUSPEND call for the
deepest possible platform powerdown state."

so by that logic, I'd rather call implementing PSCI_SYSTEM_SUSPEND in
Linux unnecessary bloat..

>> DEN0022F.b Section 6.5. recommends that CPU_SUSPEND StateID includes
>> a field for system-level power down states. This binding change only
>> adds a way for DT-based platforms to associate such state with S2RAM
>> suspend.
>>
> 
> Sure, just use the CPU_SUSPEND bindings that already exist. No need to
> define this as some special case if it is exposed as CPU_SUSPEND idle
> state. Not sure why you want to do it differently. I understand the
> need to handle it different in the kernel, but I don't understand to
> define the new bindings for that. Just use the existing bindings for the
> idle states. Again I see no exception for this case.

The bindings exist for core/cluster idle states. This whole series tries
to include a system-wide suspend state that has no business being
described as a cpuidle one and depends on more than just the CPUs being
powered down.

>> That may be a bit Linux-specific whereas bindings are supposed to be
>> OS-agnostic, but since we effectively want one PSCI state for deep
>> suspend regardless of the OS, I would think this kind of hint is fine.
>>
> 
> Exactly, that's the reason for not changing this into special case and
> special binding for that special case created.

I simply don't think it's fitting to lie about system suspend states being
just CPU idle states, see above.

Konrad

