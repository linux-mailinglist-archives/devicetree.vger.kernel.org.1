Return-Path: <devicetree+bounces-226566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6FABD9B57
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 15:29:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F056034D4F9
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 13:29:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C27D313E23;
	Tue, 14 Oct 2025 13:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ILJyri79"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486ED304BC5
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 13:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760448533; cv=none; b=CmIj/RXhjxzRmGU53fEhy4QX/Ft/2qqWBcD5j/RuUmC1jKzDCYMC9rJKcPR1O0rwFrvGY6b0UCdzL+BfrDuIbS4ibI8Swa7gWdCqdInFwd8Edve/Bd29GiPpHt9jR07LMh5tTkdesqwTASr6A5bgAhN1QrrUcu+ChpHy77fw+tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760448533; c=relaxed/simple;
	bh=74VghsycGNMWOan5TOjrZsd2bCurtNuYWOOPyoyHuG4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OOihYxEK/cVvmeuyF8tyxEdSg9DYYI34CT/B2pNY+4q5G1aeiDVBAWixULSfd8PxddunBwtT2WMzyXq8b3WTlt5zOOQWqSkc8+JVsosjrmaRq/4BkS5KfEhdH4aR5pZR5btA24qByu3vQIv4qVrw/6O3di9JnReJM5jrMTgzryM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ILJyri79; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59E87KsZ025794
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 13:28:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TH3Wy1bSw9Z+42cb2jIA73zJRFGOGkqejjZW60B+Ils=; b=ILJyri79fqu3hf1A
	6sqi4p5WbER2T4+CJZzuONE73jt2WeOyY1QsIQ1tXNt+Qzfbcpz1JcJL3GLpx/wv
	SCeSFYumotXWGIw25qJUeiKQJYwXjLTu1f/2lX4Om8MkMcIo44FE68PjQP0tYG4Y
	2fUm+kXUimquR88R5AmHUpqbszlsamAADUNGl0gUKLE/scDJuKz4f3TGqQkQym4t
	yaZ2XBpDNjJaJQvelWDeAwcyoRebQra+s/mAu6BbdXK7wsSE9/Ek5Hv803lnLqkc
	9WRrbraG5kz8DWsasqkQzISsdr7OrBEJ7dUp05rns0Hst4lCrLL/NtAGHrzTlNyd
	d+MIdg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qgdg0gdx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 13:28:49 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-872d2ad9572so2785802285a.3
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 06:28:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760448528; x=1761053328;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TH3Wy1bSw9Z+42cb2jIA73zJRFGOGkqejjZW60B+Ils=;
        b=vmooILbhodFZhXph4Gk9Eiq3xsvqwGs1VMtLkHG67tv13Rr6G8j6RzXIVAUB6+S/i7
         ucvZTpapRfFSkE3OiA0hJ+9epYPVlpvteto4TjqXPeZzxKMV5ul7lEF5i0WxAwtNpP8x
         rgBZnjc8gUcz5tQmhfqQ1zfxWfBmxvmsIDzLvwGhy2isGfIo62gPdTjf2ZQzOdRorXSk
         3iGWOvwRtKgplmfpSvxMC2qzOt29vBeUP2PMIifvfj5iLM8kE12nc9w9Tn3E/uWXe0lX
         Lu1N7qRqKdPbr7P9hnWGd811GHcUmjHeIg3M2mc8L1/3DawUrBYxfdu0KYnWbCiETrkU
         9eUA==
X-Forwarded-Encrypted: i=1; AJvYcCUMld+qCyZitLw8tIcOjVjfzR+V8kX+OWxj3bn0jYALoOGRXF2eKCCdF7G2j7thKkFf8V1ojqnvh/63@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+VKSCznlp2ji1oAzis0dmUU7mbC0bv9MKe2VQ2EDpiFNj8z+N
	7XeuCcyu0QHemM+1oU1uUDbt1J90Vyfikcg0AMt8HRfo7wPHEfBtwPmk/vdjWXj+TpTNQEBx/mo
	RDaPWgFljIN+qa049pFwAqh4lYxivp/mTAaI6L1Mj0e+jLGFB65Iw0SJyLjltMv+3
X-Gm-Gg: ASbGncsBfN5ySDoOktZNe4I4Urvbm+kyjVWX5s3d07cHMfgrVfw4oy9diOu4XyJnxAW
	TPC8rIO2IJ79+uUsA0jHy/BKeN4yKdvIx3S9R4JIGIM7E5mJQ2TUCfAhcJ9RNO44ND+kSA6uPAv
	bwaSKuzqqQoJQFXXkyNIHn0OZx8un/suPHLKLNKEXHXjsNGXCQ6AQU8gAHNCb+t8whEES4syRoW
	ml+fhAcz9TBo0iw0A4ItJXEacETKfZWq2PvyXTYesyGvzIBKLQEgS36Dc9Q3oCoUgVtggyFaMJW
	CIRUMdcH+BRwwcXldFESPlppWCwkpZwHw8gkROU0ouJz7XedNbNvVOrAbjFrSqd0sP9aoDKrH8l
	5ks2+Rk2zH64DMUiYK5Y8HF4IHkh8ddPPOLZOdVPL9k5MYgK98up7YKrQ4FnBQoWYOrSQU/8CiN
	j0G70d
X-Received: by 2002:a05:620a:170d:b0:82a:9b78:3db1 with SMTP id af79cd13be357-883527b69camr3008959485a.69.1760448528075;
        Tue, 14 Oct 2025 06:28:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF2bfAyGNnHmgq4ANdRlYx9LaJ9D28SHtQnX5Z/A+4bdTv14DYc6LMQKjCTLblXwmAOSBpbPA==
X-Received: by 2002:a05:620a:170d:b0:82a:9b78:3db1 with SMTP id af79cd13be357-883527b69camr3008954485a.69.1760448527335;
        Tue, 14 Oct 2025 06:28:47 -0700 (PDT)
Received: from ?IPV6:2001:99a:252:3300:d706:9b57:5996:15b4? (n2i9bzmlzk2z87merp0-1.v6.elisa-laajakaista.fi. [2001:99a:252:3300:d706:9b57:5996:15b4])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881fe5besm5252949e87.50.2025.10.14.06.28.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 06:28:46 -0700 (PDT)
Message-ID: <7392a020-c749-4928-895a-4e104d7e1769@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 16:28:46 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: usb: ti,hd3ss3220: Add support for
 VBUS based on ID state
To: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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
 <2a088c8f-5555-490e-a70d-308a876924ca@oss.qualcomm.com>
 <CAO9ioeX51SzaMS4TK7=xfCXBNYi7SGsMBZAv4FrZ1LzONWFw3A@mail.gmail.com>
 <654b804d-fbeb-45ea-a6fd-9d551224c934@oss.qualcomm.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <654b804d-fbeb-45ea-a6fd-9d551224c934@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyNSBTYWx0ZWRfXz+D3Z65SL9iw
 d8VCrNNdapSzVGdaqNlTAxSwLameuMqrqlqkEwdsbD7yrxuzNsqbizgFaGLH/Rzc5F5CoJtwsbx
 JgKGr5QFNrZVEJBYmBRRff7XdbJLZFwfp/OOdEmGyOOJfpMvbNFdJmqhFUaXJGkG3EWeJpbZI0e
 QIInJ+t6mAuMRj2FLVUFh+Ky1rTXQxpiQZ8NLeIBZ/snsxlR+1moMpulcFh71HdLX5nb2GemZ7X
 QmUPIywb5n9VETPYuN8NdjR393iyDOAlS/+o49LMxz96xhZAR3CuFxJLveh8r/Dmt5z7sztHBjI
 SxlhLM6/wL2pPf+Ult7ntLVnrrQr6etkFVzjnLYR/McqYCxy7ydyeu7JZL7k+Jm4UZ82ExFbYIq
 obcjWbaRsTLISgpmDZKQWy9MNRXUpg==
X-Proofpoint-GUID: nFKFtv1aFwP4Yrya3qDKRnr7XLX4-GzA
X-Proofpoint-ORIG-GUID: nFKFtv1aFwP4Yrya3qDKRnr7XLX4-GzA
X-Authority-Analysis: v=2.4 cv=J4ynLQnS c=1 sm=1 tr=0 ts=68ee5011 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=kfguzciIMWHQBG15V5QA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 phishscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110025

On 14/10/2025 05:39, Krishna Kurapati PSSNV wrote:
> 
> 
> On 10/13/2025 2:38 PM, Dmitry Baryshkov wrote:
>> On Mon, 13 Oct 2025 at 04:17, Krishna Kurapati PSSNV
>> <krishna.kurapati@oss.qualcomm.com> wrote:
>>>
>>>
>>>
>>> On 10/9/2025 8:08 PM, Dmitry Baryshkov wrote:
>>>> On Thu, Oct 09, 2025 at 08:15:43AM -0500, Rob Herring wrote:
>>>>> On Wed, Oct 08, 2025 at 09:31:59PM +0300, Dmitry Baryshkov wrote:
>>>>>> On Wed, Oct 08, 2025 at 11:27:49PM +0530, Krishna Kurapati wrote:
>>>>>>> Update the bindings to support reading ID state and VBUS, as per the
>>>>>>> HD3SS3220 data sheet. The ID pin is kept high if VBUS is not at 
>>>>>>> VSafe0V and
>>>>>>> asserted low once VBUS is at VSafe0V, enforcing the Type-C 
>>>>>>> requirement that
>>>>>>> VBUS must be at VSafe0V before re-enabling VBUS.
>>>>>>>
>>>>>>> Add id-gpios property to describe the input gpio for USB ID pin 
>>>>>>> and vbus-
>>>>>>> supply property to describe the regulator for USB VBUS.
>>>>>>>
>>>>>>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>>>>>>> ---
>>>>>>>    .../devicetree/bindings/usb/ti,hd3ss3220.yaml       | 13 +++++ 
>>>>>>> ++++++++
>>>>>>>    1 file changed, 13 insertions(+)
>>>>>>>
>>>>>>> diff --git a/Documentation/devicetree/bindings/usb/ 
>>>>>>> ti,hd3ss3220.yaml b/Documentation/devicetree/bindings/usb/ 
>>>>>>> ti,hd3ss3220.yaml
>>>>>>> index bec1c8047bc0..c869eece39a7 100644
>>>>>>> --- a/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
>>>>>>> +++ b/Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml
>>>>>>> @@ -25,6 +25,19 @@ properties:
>>>>>>>      interrupts:
>>>>>>>        maxItems: 1
>>>>>>>
>>>>>>> +  id-gpios:
>>>>>>> +    description:
>>>>>>> +      An input gpio for USB ID pin. Upon detecting a UFP device, 
>>>>>>> HD3SS3220
>>>>>>> +      will keep ID pin high if VBUS is not at VSafe0V. Once VBUS 
>>>>>>> is at VSafe0V,
>>>>>>> +      the HD3SS3220 will assert ID pin low. This is done to 
>>>>>>> enforce Type-C
>>>>>>> +      requirement that VBUS must be at VSafe0V before re- 
>>>>>>> enabling VBUS.
>>>>>>> +
>>>>>>
>>>>>> Stray empty line?
>>>>>>
>>>>>>> +    maxItems: 1
>>>>>>> +
>>>>>>> +  vbus-supply:
>>>>>>> +    description: A phandle to the regulator for USB VBUS if 
>>>>>>> needed when host
>>>>>>> +      mode or dual role mode is supported.
>>>>>>
>>>>>> Why are we adding the property here while we can use the vbus- 
>>>>>> supply of
>>>>>> the usb-c-connector?
>>>>>
>>>>> Normally, that's my question on both of these, too. However, it does
>>>>> look like both are connected to the chip. There's VBUS_DET which is
>>>>> connected to Vbus (thru a 900k resistor). So having these here does 
>>>>> look
>>>>> like accurate representation of the h/w. The commit message should 
>>>>> make
>>>>> this more clear. Honestly, that's really the only part I care about.
>>>>> How it works is not so important.
>>>>
>>>> The VBUS_DET pin is used by the controller to detect the VBUS provided
>>>> by the USB-C partner and to identify when it's safe to turn on the
>>>> device's VBUS supply. I think this still fits into the description of
>>>> the connector's vbus-supply.
>>>>
>>
>>>    In case we put the vbus supply in usb-c-connector node, is there any
>>> way we can get its phandle reference in hd3 driver given that the
>>> connector node is not a child or parent of port controller node.
>>
>> Sure. Use devm_of_regulator_get() passing connector node to the function.
>>
> 
> I am not sure if I am asking the right question, but in case there are 
> multiple connector nodes, each one corresponding to one port controller 
> node, how do we get the reference of proper connector node in hd3 driver 
> since the port controller node and connector node are not parent/child 
> or each of them don't have reference to one another.

You have of graph connection between your Type-C controller and the 
USB-C connector. So you can use the of_graph API to get the connector's 
device node.

-- 
With best wishes
Dmitry

