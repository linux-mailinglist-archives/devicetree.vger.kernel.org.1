Return-Path: <devicetree+bounces-225806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3674EBD111B
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 03:17:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 511551894D92
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 01:17:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D5C21C84A6;
	Mon, 13 Oct 2025 01:17:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Yr16g2if"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2288611E
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 01:17:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760318234; cv=none; b=JpPLbq8MuACZdS7aRa8ew91vI7D1Xsvxur31Fsozy/ntsi+hDwitBOHywSS/5db24+mDqLgMVryVh818ajefQI+4YNrYkqpvKV/0+zhGEXEIaZPhMtWcqoR6l85ivF00XkqPpFnVLCG+GA3yZJE8pgXiOCyzTne+vmRoari+RIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760318234; c=relaxed/simple;
	bh=eLDXrWIZIZS9HoCmx0lw5R7FSldNWeUebH17d50SzwE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RyRKo4xJb+qHm2UWTHjtP8WEVLs2O7CjSt4jHU8yRhXkrFUB7+3gQDkfoiERwwemCNYJdHqTGiOxO0xEQY/EyDulDeZPndCOYjb9RL5Mf3t6hsavTELT3UQLtrWIWZH7PrYvX+Tc7I+lr2X8wkLsg9CAXZ4OKjdB7NSGsTk9qq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Yr16g2if; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59CNsfcm023726
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 01:17:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Kr0l1PGyoz3ywSkxFsHdAj7RmD+86+u7L70Zpf7p2Ic=; b=Yr16g2ifz0A5E27m
	0jOePQAkbUw+Mc4ML2vKzh1MUuAPcktIQ7xn9sza/C6bKWe10zPxoQx327O/SHQA
	CTLvI736DXEM4y6f7seIwm6W5fhbXWdiY9u1pQwF6LAQodwKDGKZ5OIfQ6x9gDiC
	661ShsfImEi7ndY8zYPJjOhtiQFHRuW3i7p8zPXPEP2Is/797bt/TJVEF3xfX3Sr
	6ofPtdBccm1GS1TLp9rivdZS3EJ+aQFnv4PLUMNKhAxnAxoK4QFCPvfYkvZwKdtN
	BUpY/aG/jTSY43IdB43KCxfv9+W7lo9bE7GIcWr7GUeuonrxV0GBkKIVBx+mlyVH
	hMJKWw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qff0jtb8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 01:17:12 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b552f91033cso10138993a12.1
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 18:17:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760318231; x=1760923031;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Kr0l1PGyoz3ywSkxFsHdAj7RmD+86+u7L70Zpf7p2Ic=;
        b=plevUhL+mdRXahmDmySEW99+93zfYEcNVtQS4hUVGKG+ccAF8Jv+fjLHp3wHQAnTEq
         H8fyRbKRFOkiDAGJkp8Hm7UrzZLZsaJNLggTAteAmBSSyueYF/KS5ZlFGJBpgl4XS1s5
         To9fB9MWt0ZJKw1bcHVS64pANzwqIy+CXgzpSS0shJ3oGQcvIfq9VIq9FB9YMO3iGjP/
         aL0/Ke0wa4ioEL9oI5VKnqa2ks/xsn2T9EMJit2LEyL/L/T636+Ulafo8MZIHQXhFuVa
         dzzp8KP/Jm0qXqASRFDIK28s9/A69Q6b2dgw1NOwF3VjxzSS6dz7PWkIAgUZLwh1z4bh
         TG2w==
X-Forwarded-Encrypted: i=1; AJvYcCXaCSq8/jCyUesU3FZBA6B7ip8Y9NbF7IxdWb/jPucgNLPQhQI2qf8n98V/M3H/I0gGnPWW01JLdXB+@vger.kernel.org
X-Gm-Message-State: AOJu0YyXOSskxu22NkxoggIXf3WkDQbj7ugSD7EaJ7qTvuOpc3zTDNX7
	02+Qrcrzv5AJwL/ym4DPJbph5BduzSneyPFp/IpFtcrg9doYbDCuH4/L//KEfClDQUsPYIKaiCF
	Ko5J82rKcdUxMsxcx7KA34y70wJDi+3rrrartXY4/dfx+E6HM/sB8BMpthU0hZduM
X-Gm-Gg: ASbGncva9FF20uGHWAamzvKNYoAIacO/6vpD+8gsEGuFRoLIEdB54XfcdofdxA9L1jz
	Bv899cd4EuTyiaSkaEQ4vAbIBokhk5Enxp3hWcx9DSmoBmfmklLg10yeuCsX9ZlSvzXl3dZOJJ0
	Q+vh7P8kh2tg9yLZwbJgEhL+3XdSUGcqBTo2JKCT9W7kJ7MW3kSI7b8edI+4QWLJsqcEurJHEEt
	WbxtR4g9aCy5BoZYaIPr4ZXwGTVS9iLO0jeKAbxtUfHlEpARHMBPlDD+RZhXt92lPzNiAhLy126
	WjbMl38LBDRTQhvtVPDMobPUnrnYzVLWwvofVEC1x+/vBuivKEw0vIx3UnSfFMQoqU4Jft35+d+
	X
X-Received: by 2002:a05:6a20:94c9:b0:2fb:530a:d665 with SMTP id adf61e73a8af0-32da845feb7mr24545146637.47.1760318231230;
        Sun, 12 Oct 2025 18:17:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGbXXwK6X9WWZzaeXl2x5oqTCDc2a3vDXCVPXq5BQZntaW2UbpT4Pvzz/GZ/t/MTiejgocc2A==
X-Received: by 2002:a05:6a20:94c9:b0:2fb:530a:d665 with SMTP id adf61e73a8af0-32da845feb7mr24545126637.47.1760318230792;
        Sun, 12 Oct 2025 18:17:10 -0700 (PDT)
Received: from [192.168.1.3] ([122.164.228.230])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b678df48a83sm8135399a12.31.2025.10.12.18.17.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Oct 2025 18:17:10 -0700 (PDT)
Message-ID: <2a088c8f-5555-490e-a70d-308a876924ca@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 06:47:04 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: usb: ti,hd3ss3220: Add support for
 VBUS based on ID state
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Biju Das <biju.das.jz@bp.renesas.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251008175750.1770454-1-krishna.kurapati@oss.qualcomm.com>
 <20251008175750.1770454-2-krishna.kurapati@oss.qualcomm.com>
 <odikli6rfdyid5oqavurtqytgnwgh5hpmka2jt5tprpdw7cd72@icpnjnkfowt7>
 <20251009131543.GA379737-robh@kernel.org>
 <cbpne2d7yr2vpxmrrveqajlp3irzsglxroxyyjmviuci2ewted@6ewwp6yyybk5>
Content-Language: en-US
From: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <cbpne2d7yr2vpxmrrveqajlp3irzsglxroxyyjmviuci2ewted@6ewwp6yyybk5>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX9jwByBl/iXXo
 RcJVzN28Sc4lrMMCs+upj5hsL6+A1TgyWEp3Co8WZ3re1jGLns5pOz+Flqvcb5Y4Qfzb/aoRiKe
 06w8p8BnY5FPjYcSN/k67OPxGdPzU+Te+haHfiyIIPltBRzguyffpH88KqsmVabxakfXHjGuiNN
 fD8OzpeY4IpqkVBhoE0CQR67HereiK/dh/F5lCOoNjPH9wQZtVLSgW6/vkEVNUIK5FKMd0XbW8H
 i1QiOvcF4dVsuwI//kAMXOHKN8nUJR95lPUcdjBC6BWj5Xt+G+m3XUQY+A1ZT6GK2PS9RU8GNca
 luwEg1sVx6lZkODNJFaoMTUbw6AXVzUt3mWBtNc3P0qDKjXN8I9Avoe6nmXOuRruaT7bWf4zsVm
 pnSq/FnONqCuIlb8aP1MAMlqk/khPQ==
X-Proofpoint-GUID: WmNZQFdM_nQ-ZUFCbuAqWxYs1qLrePhy
X-Authority-Analysis: v=2.4 cv=PriergM3 c=1 sm=1 tr=0 ts=68ec5318 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=8YinarrYfdS0Dhyguhy4yQ==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=JupwLAayHTYr5Hx-38AA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: WmNZQFdM_nQ-ZUFCbuAqWxYs1qLrePhy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018



On 10/9/2025 8:08 PM, Dmitry Baryshkov wrote:
> On Thu, Oct 09, 2025 at 08:15:43AM -0500, Rob Herring wrote:
>> On Wed, Oct 08, 2025 at 09:31:59PM +0300, Dmitry Baryshkov wrote:
>>> On Wed, Oct 08, 2025 at 11:27:49PM +0530, Krishna Kurapati wrote:
>>>> Update the bindings to support reading ID state and VBUS, as per the
>>>> HD3SS3220 data sheet. The ID pin is kept high if VBUS is not at VSafe0V and
>>>> asserted low once VBUS is at VSafe0V, enforcing the Type-C requirement that
>>>> VBUS must be at VSafe0V before re-enabling VBUS.
>>>>
>>>> Add id-gpios property to describe the input gpio for USB ID pin and vbus-
>>>> supply property to describe the regulator for USB VBUS.
>>>>
>>>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>>>> ---
>>>>   .../devicetree/bindings/usb/ti,hd3ss3220.yaml       | 13 +++++++++++++
>>>>   1 file changed, 13 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml b/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
>>>> index bec1c8047bc0..c869eece39a7 100644
>>>> --- a/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
>>>> +++ b/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
>>>> @@ -25,6 +25,19 @@ properties:
>>>>     interrupts:
>>>>       maxItems: 1
>>>>   
>>>> +  id-gpios:
>>>> +    description:
>>>> +      An input gpio for USB ID pin. Upon detecting a UFP device, HD3SS3220
>>>> +      will keep ID pin high if VBUS is not at VSafe0V. Once VBUS is at VSafe0V,
>>>> +      the HD3SS3220 will assert ID pin low. This is done to enforce Type-C
>>>> +      requirement that VBUS must be at VSafe0V before re-enabling VBUS.
>>>> +
>>>
>>> Stray empty line?
>>>
>>>> +    maxItems: 1
>>>> +
>>>> +  vbus-supply:
>>>> +    description: A phandle to the regulator for USB VBUS if needed when host
>>>> +      mode or dual role mode is supported.
>>>
>>> Why are we adding the property here while we can use the vbus-supply of
>>> the usb-c-connector?
>>
>> Normally, that's my question on both of these, too. However, it does
>> look like both are connected to the chip. There's VBUS_DET which is
>> connected to Vbus (thru a 900k resistor). So having these here does look
>> like accurate representation of the h/w. The commit message should make
>> this more clear. Honestly, that's really the only part I care about.
>> How it works is not so important.
> 
> The VBUS_DET pin is used by the controller to detect the VBUS provided
> by the USB-C partner and to identify when it's safe to turn on the
> device's VBUS supply. I think this still fits into the description of
> the connector's vbus-supply.
> 


Hi Dmitry,

  In case we put the vbus supply in usb-c-connector node, is there any 
way we can get its phandle reference in hd3 driver given that the 
connector node is not a child or parent of port controller node.

Regards,
Krishna,

