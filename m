Return-Path: <devicetree+bounces-216410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7CEB54AD4
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 13:17:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5336F683572
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 11:17:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33D233009D4;
	Fri, 12 Sep 2025 11:16:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S1Vj+uzr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9470D2FDC22
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757675819; cv=none; b=Kkzno9jNencoaoJkOt/jyg+gCYjr3xjiDhAC8XbCEkiAy9v0hVjVqqQKif/UyPXI2LlJyqOqLHCKudNJu3dLWgilywwx1iWwZzOjEGt1AGgpJV5bGF3tUygkaLOI4Hc3bzu6EUH8UTcwynoGEjTeXOklIDDk46G+j+xY1TdBr2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757675819; c=relaxed/simple;
	bh=rhcvNmsTzZQHkse9jgvO4F3jLJZazKY8siHVo2PUE/c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dzjDBCilOhrsIfWLocoJJmfL9ryxzxnpOXCfnHkdSrhBQAj9KunSzvcNcX1/cd2mwGvXtbcw99Y8B54e3Uc0eZh5pfL7R6dpu1T8YvH73Md7cz+1QmBgbiixmtPyCkLAnjv28sYw1VWNC9t4OwXAzIhp2hN87EK62Skahnlvq9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S1Vj+uzr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58CBBM4N017536
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:16:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OESG3ssqWgVEsTZ/213k4+I+aFjRTeVrTfjQpSv0v24=; b=S1Vj+uzrLbUhU5Dg
	nTFCr4L9YwdCtkOrCRiT7kEw9+EMghvpwCnF6gs98wTWepW4s88YDWtPGFHxew9H
	4t7eWFFVE9jkKVN7mr2pKHpAvuN+F+2V1jUcF7U9bq5GGGvkc02ijzrMy/U4wMDz
	21TVzfZQF9tCz8cWVXZNJ2W7iOknAUgFs9SVtvimL1Iu9/h7tdbKE7Whb3eef2YN
	FXsJT6KJhtIBiwCbIZGoGLWe89Wmmj3LsOQvoXvW/8tU0WqpWMQoHc8N0d2uT+Tc
	Nb2f4GJFvXNA8nQHRN6mp8FQlOK+OJKOJIdKg2ddopSNzA7Cmg+SCwlMWfhd5uRr
	ymtF8w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 494jdx00g1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 11:16:56 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b33e296278so398541cf.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 04:16:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757675815; x=1758280615;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OESG3ssqWgVEsTZ/213k4+I+aFjRTeVrTfjQpSv0v24=;
        b=DDSq84yLEcX7FcF79Tn8zbyx52eoDzhg2fl9KBbeROq0Zc2AZ68NHOMKH5bPj6cXTl
         K9VzR602wrDrol+DLMUaFnV0Vdk8hpIfRv0LGwbTDCF1zd+SgiAjnm8DBV3LVR6WOOeK
         PE3NVv/WHaBEPhWHL3YPyL5OD4L9K7zHTWOGkAhj1Td39Lj3WIaluNhikoMlQPCHXDCg
         24iQZzcqySBPQ6nzxcZPbT4+456czmHnCJeHwapbo2tOh2aTJNCQoh4UiRm2TmTGVBAc
         5Ym6Q/Szt0LCW/9lQ4t7Nqly+3Wu9wFieuuBzB3voym2zy3SKAsFw0Vr5EjwqjK7vTfA
         nMuw==
X-Forwarded-Encrypted: i=1; AJvYcCXZLoFRmumlMBbhGjtZYtRr5JqN0DBUhxRPIvJX6hkLSjQFMHrSXPBZemXEe8p+pQJzaO5l1ZkTcG9a@vger.kernel.org
X-Gm-Message-State: AOJu0YwB1OlTbEFoXJioo+//hwVDn8jm+674UrcIHpWFjXmVcLifUQod
	P3Pxmlm7wDfvJ7CVPOoIdbbM9obX1DmYPecUqSvNxwwIxN4P96dyfhnJPkhun/ZN6klqHK+RqyE
	j317gWPBnfkvkui4nl/k9i0ZyE2u5/v9vRhIPgdGSHfKZcvUpH3iQfhwZ3Y3cTe4U
X-Gm-Gg: ASbGncvgGnfq63jI9HJebBseWhHxF/hitiWbIHebMytgiQggHgE8BEo9a6jO3oJwjqT
	UdWpBlydFkZktTE6d4ZPbM5r+DvCBUj8Yv1t5ch+JWsb/mAXvurkK85BjWj2qs+ZYVh+Fr5JTBN
	PJSw8x3VQRFkMmEHSoqbEEBNis36INfsg3GangrQDKxbAX65pqUFIWm73010+H0Un+DT71hMPGj
	G9rr2YbkTqFCxu1TdAalqNBThAL4Z0+MZFPjJqlMEwCUucjhlmHeaxE8Qwa73hF5SeKpt3yx3zu
	kGwa5+A98MAiOTD5wDpHsJQCMDlIUNIRRW/nwulTo0/CBBLAv+NxYapM4cbeZdzU7IZjmL2ZCfq
	56JQQiU3A78QpHB4vT0akSw==
X-Received: by 2002:ac8:58cf:0:b0:4b3:4590:ab6d with SMTP id d75a77b69052e-4b77cff3c19mr20844251cf.7.1757675815303;
        Fri, 12 Sep 2025 04:16:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH6jtjf37Oow/lnm/s5r6GSfkEFCpnLou6DpovhAGP4DVjGD3jXbH8ADRgUAiwdIeHIEMFGwg==
X-Received: by 2002:ac8:58cf:0:b0:4b3:4590:ab6d with SMTP id d75a77b69052e-4b77cff3c19mr20843831cf.7.1757675814684;
        Fri, 12 Sep 2025 04:16:54 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b32dd5bfsm343563766b.63.2025.09.12.04.16.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 04:16:54 -0700 (PDT)
Message-ID: <e06183f7-4aad-42bb-8c58-6a0d8b7b60ac@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 13:16:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Add support for Gunyah Watchdog
To: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>,
        Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250903-gunyah_watchdog-v1-0-3ae690530e4b@oss.qualcomm.com>
 <20250904001014.GA3405605-robh@kernel.org>
 <a547ecce-31c7-4627-ac6f-aeeef81bd0ff@oss.qualcomm.com>
 <CAL_JsqKuoJrkActpLXVUW9e9=R1FESUbD_rwBd5NGX2_Yv2ASw@mail.gmail.com>
 <99cacf08-0fb4-4b44-9036-96ea5fe01c10@quicinc.com>
 <e7f0b014-3dec-4276-a2dd-479d4248c7e6@oss.qualcomm.com>
 <499f88af-30f5-4507-a90c-d592d0bb4657@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <499f88af-30f5-4507-a90c-d592d0bb4657@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEyMDEwNiBTYWx0ZWRfXy8K5gUa6Z8SF
 Jgci3zUf29QIBI8uir1Qmt1Myme2v/53IxgHqq+yw9+vhJNh9ReffV3HRGyNRvnC2nVa7b879ox
 mrfO/Z7is5qIrKYRUs686u5RgHg/8o8k7uWPJh27Sow+x1h/3y2IfyMVWQJYrFIJ+96UyWQEX3a
 QgycC7LeRi+OlKz934ZyAJ8LjUR6OPf+pWR4QHgPNq8cGMM++6H4RWd5OY3TIC5W0er3Hz5cvTW
 UoHcxsqRhrED90z9TxaWEaZg3TJJRTr81B6Mv/mhBQwizkel2ObNefd8Cg2Gf5HmLn0+VG+dq7f
 7j3qAiGzIqviq7SDJtrnsXfv2mS9vdHBJguXf4dMtiJySiJEDd9K8CkHIa7IQVEun6jaGoW/n/u
 sIRGWK4Y
X-Proofpoint-GUID: tDNaTFPwxnUe7AT306INUa1lBg0_2TI6
X-Authority-Analysis: v=2.4 cv=JMM7s9Kb c=1 sm=1 tr=0 ts=68c40128 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=voeTMfilsXCseR2-0McA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: tDNaTFPwxnUe7AT306INUa1lBg0_2TI6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 suspectscore=0 impostorscore=0
 malwarescore=0 priorityscore=1501 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509120106

On 9/8/25 7:49 AM, Pavan Kondeti wrote:
> On Fri, Sep 05, 2025 at 12:18:06PM +0200, Konrad Dybcio wrote:
>> On 9/5/25 2:00 AM, Pavan Kondeti wrote:
>>> On Thu, Sep 04, 2025 at 05:51:24PM -0500, Rob Herring wrote:
>>>>>>
>>>>>> Why can't you probe by trying to see if watchdog smc call succeeds to
>>>>>> see if there is a watchdog? Then you don't need DT for it.
>>>>>
>>>>> There apparently isn't a good way to tell from a running system whether
>>>>> Gunyah is present, unless you make a smc call (which could in theory be
>>>>> parsed by something else, say a different hypervisor..), but then this
>>>>> patch only introduces the watchdog interface, without all the cruft that
>>>>> would actually let us identify the hypervisor, get its version ID and
>>>>> perform sanity checks..
>>>>
>>>> IIRC, last time we got just a gunyah node. Now it's that plus a
>>>> watchdog. What's next? I'm not really a fan of $soc_vendor hypervisor
>>>> interfaces. I doubt anyone else is either. We have all sorts of
>>>> standard interfaces already between virtio, vfio, EFI, SCMI, PSCI,
>>>> etc. Can we please not abuse DT with $soc_vendor hypervisor devices.
>>>>
>>>
>>> We are trying to make the watchdog work with existing SoCs, so we are
>>> sticking with the existing interfaces. The newer devices will not
>>> necessarily need DT to probe hypervisor interfaces.
>>>
>>> To answer your question on why can't you probe watchdog smc call to see
>>> if there is a watchdog. Yes, we can do that. It is just that we won't be
>>> able to support pre-timeout IRQ. This IRQ is optional for watchdog
>>> functionality, so this is something we can explore.
>>
>> FWIW Rob, we moved on to SBSA watchdog on newer Gunyah releases..
>> Which is not ideal as it's still over MMIO, but there's some
>> progress
> 
> Gunyah running in Latest SoCs do support SoC watchdog emulation, so
> Linux does not need to worry about if it is running under Gunyah or bare
> metal.
> 
>>
>> I'm not a fan of including the hypervisor in the picture, but as
>> Pavan said above, we're trying to squeeze the least amount of hacks
>> necessary to get the most out of existing platforms (i.e. ones which
>> will not get newer Gunyah).
> 
> Thanks for enumerating our goal here. we plan to support watchdog (hence
> collecting dumps) on existing platform where Linux has only access to
> this SMCC interface.

I think you didn't explain it clearly - do we need the wdog to bite to
enter crashdump at all on these platforms?

> 
>>
>> Perhaps we could extend the MSM KPSS watchdog driver (which pokes at
>> the physical watchdog on the SoC and whose DT node represents
>> "reality") and have it attempt to make the SMC call early during probe,
>> making way for both physical and virt configurations without additional
>> dt alterations..
>>
> 
> We have to be careful here. I am told that SMCC interface might not fail
> even when Gunyah is emulating SoC watchdog. We can do something like
> this.

"not failling when gunyah is emulating the watchdog" is sort of what we
want, no? Unless you meant that if MMIO access is allowed, the SMC
interface may still report no errors, even though the calls don't
actually end up doing anything useful

> 
> If we don't find "qcom,kpss-wdt" compatible device, then we can add a
> fallback to Gunyah based SMCC.

Matching on "not compatible" is tricky, especially since the arm64
kernel builds must support all platforms at once

Konrad

