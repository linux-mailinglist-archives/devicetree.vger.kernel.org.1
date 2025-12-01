Return-Path: <devicetree+bounces-243264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EAEC9615B
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 09:18:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E4CEA3A16E1
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 08:18:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D60D92C21FE;
	Mon,  1 Dec 2025 08:18:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IbNgE091";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JqFzX3sw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157751FF1C4
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 08:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764577101; cv=none; b=UY6PjjclTRsLrAqSY5el6b6gkNsCG3T45zQZwi8UIJ55DB/r8Fb7YiNue24YqOHpbybsGzzt1espiD98luodK7q0oB0dPCvfu/dHGsW65SvmgYMuKfdg6+pbkSCfFRIHK0de8wHb0gH1WTTvncsLGrfSJ89FI3JnLjOFkIdQKkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764577101; c=relaxed/simple;
	bh=Ki1KES0nfEaG/8XT660Ob+zIrgtyaJBm2AHwfeNEEvY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Pw+yBkl3vq6f0vOdD6y4Ce6EfflSC2OvsK771rw/1BoPp1Ic9ApewT8INHVxRffrKw7JlL2H4GKZSfohMi46XjMCPMi5VlB5m5iYZ1aiyYgUFYW5EzDnzP/OkczmLGB5OI18QluH5CohY1pYu1v4y26n6+R860HLZsO0DzkSmLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IbNgE091; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JqFzX3sw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AULOvWY2822417
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 08:18:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PiR8XQpRX7zr8x83jwupI4R37Ne98MRV6EnwDndA9x8=; b=IbNgE091PRScYFde
	w0ZnzYmIU9bfK1reOpfp/De7WMfGKGMOlMadN/dSVMpRcHyFLp6pAJQJYbDCVG4v
	iWpV911u73O+dXiyOe3HaW7AuEShwLPWD3hulMe1bqWCqKiYsK4LUXGRmsZP4/aB
	7wHw8l8qdV62xKNR2CWYWkR4BbYfCbSKeHMO5MOYz0tULmeluBonBh3Tt5crlkoD
	ttjkKucJbjs0g/PPsTsk3I8CWIRYE+5HQT6aXzr6P0Q0K2auVamC9JHi6vZXblKe
	d28FIRvAay3+tyhrKZI25uhz8kq+WDQ3l5qUgB7Fv5qO+m9xDf0DXz4o9tuzuBeE
	ze8z4A==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aqs78uywf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 08:18:18 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29806c42760so134437625ad.2
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 00:18:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764577098; x=1765181898; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PiR8XQpRX7zr8x83jwupI4R37Ne98MRV6EnwDndA9x8=;
        b=JqFzX3swEr3egRyptB6t+/E5/kdPjNZjDSpShsfrEUcZ8URNBLGppVxeo3fcYX3F+N
         EBivGAp6SUQ6T0qyP++BqZsTEVgYW8n6ShPobfq6uvJIA5/MDjsQQY8XzxNUJeXD+M7a
         uXFl2tI5AC764xZOMdEhoTNgrnAJxNF/rswHVunySXavcFctFGYT6Aqr8HKyPp0WdyiM
         sa6WHqJKyVfZXYZ6dJGGCUg8shCHPFRssEHZHsf2V3R0TmjA2HEui+PR/i+swyKcqx6Q
         erITFyU7+FOmhkfnGFZ9hojR7FWiE/aATqSQ+0c5qb6xU8LxtAWywHSjFDinbF4+mj3E
         G7Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764577098; x=1765181898;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PiR8XQpRX7zr8x83jwupI4R37Ne98MRV6EnwDndA9x8=;
        b=oR3oyf0AkZFS+5PAw6qrAJ6DlaV3lKn9dVbjj88zdSvDvbQ6K4wtglAgURaEhG5CGr
         jsIr5NWvfhXSjoUMN8dw6w1EPKZe0tUH7Jx9XoUTnqMh+m17jdywJOmPyJAVPGFWIZVu
         /ZOD1UznGve7sIhV6z9lETGCQOy8L9QF5m60WTkKufqQHLgaKThSR4HXLSpaPzs047o6
         jZpT0D79hqLe8HoRwCvUN9mSMeYKJyZsMg93EvLb12QGQhNVfy3ZF9yHaOg5v6zN+thg
         561qUNsYpxzi6F3LJ8vMsVKL1L4EQKrsiW0r/eh1+p7BBVnL3UmK8Sb8DKwD2J0x1DIe
         572A==
X-Forwarded-Encrypted: i=1; AJvYcCXOMY0xa9ikCKma3rhOZwnZcyqkXOjbQN6dO1WQVHnhSfWvpYsvWcMhPyPYa/WntCeP7tojdIDNqANp@vger.kernel.org
X-Gm-Message-State: AOJu0YzV8FUEpHDtYjM5oy9+7TLLQDIm7WUZJab2Kd9p9/aYirjXj1BN
	/qxVjMj1GADuHKOBRLiUFBO5SisQ6yVxelqrG+ps4wxbhh6ClB00yp/W6DpLTGueWnOu4L464+h
	jg+P9WmbV86ieXdVe/cCownNJBkftXetJdLwsVZOfFY4Z9lLbxzil9O5xHjFlZrE5
X-Gm-Gg: ASbGncsuV9GmCZYFVP8CAQ+DG43FCY3G2Ee1FfnPIXteNLil/3DCPeir67mPwIKrjXa
	sEEeNdkUUIckcBkb/wFLprzmos8uO6xH+h692KM6fznlkQAe77/BEwDdv3HLeBnWu+R6epSAY1a
	CUSpnmDEoA6OngQNfZ9Gv4boJQjaCIEE+W/8PKGeT+BE2+yqAsN+vhYJjHMBVEivrphqdAfWdkU
	mB+JyngFSx+otfbE85szgZFOIeVfMAB8XzAus58qG/RCglOsc0m9U2DUPE79d2mVhVDpZd54l/P
	tf/HbRQb8grDA16g162E52WfChopE0528V4wkg61eD5s2t+XOQu5odsSYZpqctl8s28CeLqf6/t
	KqBpt7RxaM4xU2Y5oDp3EZOljwfcqFTY/nAk6SWu3Zw==
X-Received: by 2002:a17:903:3b86:b0:297:e59c:63cc with SMTP id d9443c01a7336-29bab148c59mr300080705ad.35.1764577097791;
        Mon, 01 Dec 2025 00:18:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGsiVEfrFH3pUI8q/uZ984B5P6TWerQwXXhXGFirlVDNU4iuFqXc/WiueRo6Vodl/fEKd1ujw==
X-Received: by 2002:a17:903:3b86:b0:297:e59c:63cc with SMTP id d9443c01a7336-29bab148c59mr300080285ad.35.1764577097319;
        Mon, 01 Dec 2025 00:18:17 -0800 (PST)
Received: from [10.204.86.123] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29bce40ab81sm115121585ad.3.2025.12.01.00.18.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 00:18:08 -0800 (PST)
Message-ID: <733afe4f-51d8-4c5e-8c18-9843a316523e@oss.qualcomm.com>
Date: Mon, 1 Dec 2025 13:48:00 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/4] dt-bindings: misc: qcom,fastrpc: Add compatible
 for Kaanapali
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: kpallavi@qti.qualcomm.com, srini@kernel.org, amahesh@qti.qualcomm.com,
        arnd@arndb.de, gregkh@linuxfoundation.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_bkumar@quicinc.com,
        ekansh.gupta@oss.qualcomm.com, linux-kernel@vger.kernel.org,
        quic_chennak@quicinc.com, dri-devel@lists.freedesktop.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        jingyi.wang@oss.qualcomm.com, aiqun.yu@oss.qualcomm.com,
        ktadakam@qti.qualcomm.com
References: <20251126094545.2139376-1-kumari.pallavi@oss.qualcomm.com>
 <20251126094545.2139376-2-kumari.pallavi@oss.qualcomm.com>
 <20251127-prehistoric-sponge-of-faith-efde44@kuoka>
Content-Language: en-US
From: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
In-Reply-To: <20251127-prehistoric-sponge-of-faith-efde44@kuoka>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: XS21gm5tqenFajq0gXasqQmKd2c_nJ5y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDA2NiBTYWx0ZWRfX+mWceqQn22EU
 XlrM/r59Z1125ZCjZh3Nur1yk8BaKIlPfoRxeENOCkOphPMi+4HV1eL1whKjVtFu2dU3r243kSk
 S/Pi0P4DSrVrf1r/wZtvs/ADE3a1ySW4FxGScNzCorth3IovPEsmuN3viDLYuGXU6ZLGkkQ6H/B
 ECqK1m0BnW1ukR/YcJkSNwGr5KhgaGeZufgUhBKEAgGf37FOT6FEeoe/ffz+8PhKbTpMJajDipQ
 AEdG0RRBAz+DYrjkO00qN6eHYSqKXog0zvmypECRRxKf1J/DSrXU3tTuAraUAbidzVOBhHzaKOO
 HlkM6h2Zka+gTe/yzcVSSczAQsldI9r8edZUMmpX0c5pAIHzL3KbG1U+pnFjh2HW+n208Si2CLy
 l1xh8GIxLq7yrTIwNVBg+Xzc7UypAA==
X-Authority-Analysis: v=2.4 cv=FdQ6BZ+6 c=1 sm=1 tr=0 ts=692d4f4a cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=f9DLRBmgI0KZ56IV6akA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: XS21gm5tqenFajq0gXasqQmKd2c_nJ5y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 spamscore=0 phishscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512010066



On 11/27/2025 1:00 PM, Krzysztof Kozlowski wrote:
> On Wed, Nov 26, 2025 at 03:15:42PM +0530, Kumari Pallavi wrote:
>> Add a new compatible string "qcom,kaanapali-fastrpc" to support
>> for Kaanapali SoC.
> 
> ... and here you write WHY or provide background about hardware
> differences, instead of writing what you did. We see what you did easily
> - we can read the diff. Additionally your subject already said this, so
> basically your commit msg is redundant...
> 
> I still do not know why Kaanapali needs this.
> 

Thank you for the feedback. Let me clarify the hardware differences that 
require this change:
Kaanapali introduces a new DSP IOVA formatting scheme and a hardware 
revision in CDSP that expands the DMA addressable range. On previous 
SoCs, DSPs used a 32-bit physical address plus a 4-bit Stream ID (SID). 
Kaanapali changes:

SID placement: The SID field moves within the physical address, so the 
driver must know the new sid_pos to correctly form IOVA for ADSP/CDSP.
Expanded DMA range: CDSP now supports a 34-bit physical address plus the 
4-bit SID, requiring an updated DMA mask to avoid truncating valid 
addresses.
To apply these changes only on Kaanapali, I introduce a SoC-specific 
compatible string "qcom,kaanapali-fastrpc".

Older DTs using "qcom,fastrpc" remain valid and unchanged; the new 
behavior is applied only when the Kaanapali-specific compatible is present.

https://lore.kernel.org/all/542f84ce-b840-44f9-bdf8-09611369e6bb@kernel.org/

>>
>> Signed-off-by: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
>> ---
>>   Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml | 5 ++++-
>>   1 file changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
>> index 3f6199fc9ae6..6c19217d63a6 100644
>> --- a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
>> +++ b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
>> @@ -18,7 +18,10 @@ description: |
>>   
>>   properties:
>>     compatible:
>> -    const: qcom,fastrpc
>> +    items:
> 
> No need to introduce items, wasn't here before. Just enum directly.
> 

If I use enum directly, the schema will only validate a single 
string—either "qcom,fastrpc" or "qcom,kaanapali-fastrpc". However, my 
DTS changes introduce a compatible property with two strings: the 
SoC-specific string followed by the generic fallback.
That’s why I used items in the schema—to allow an array of strings where 
the first entry is "qcom,kaanapali-fastrpc" and the second is "qcom,fastrpc"

Thanks,
Pallavi>> +      - enum:
>> +          - qcom,kaanapali-fastrpc
>> +          - qcom,fastrpc
>>   
>>     label:
>>       enum:
>> -- 
>> 2.34.1
>>


