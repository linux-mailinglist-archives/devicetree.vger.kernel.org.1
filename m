Return-Path: <devicetree+bounces-245257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F41CADC76
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 17:42:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 29E423017397
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 16:42:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F0F722D785;
	Mon,  8 Dec 2025 16:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ntKTu+L+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FHKFWn78"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F92223DD5
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 16:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765212146; cv=none; b=EVMMCpUWvhLxeo8FKXTLsF6efgYAk/PJ3NtrF/BXy8IjEvVziFouNWadMCCnSPS6hVOPc/yKGW0sd4fIK06IPRekuBwa/pfoygnhVbIlLOCn8DIt43UiQg8n8UlnPkBCghgG8L9529qvsvP6eJiiHt3pULY9oa1qAeB53Bv0hWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765212146; c=relaxed/simple;
	bh=rdCI/J4BxIKh/i3hjLgTbLO8JRYmei7AX82aSN8Hn0o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EGX5sGkwNgcl2nE1N6GtfRZsAqacDMexjiyv5I/lmRmZrf7w7NV08D/xD/eBHcSGeeqHhknwe8WsKdfEHyE4z2wqA8CXlCwiTgxKjDQpz4vlUv6VAK6/EAvJ1pgoVnoK9xnmY2f0sY0L6XpXDB4usxvVYVcH+ideYidGpVA+MLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ntKTu+L+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FHKFWn78; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B8B61Gu457995
	for <devicetree@vger.kernel.org>; Mon, 8 Dec 2025 16:42:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s+7pO2JdB3epd84Y7zPFVXVSf8nsYItdbRxlvUFqUGg=; b=ntKTu+L+TYX9G8Tk
	PWYKpzfAljk5qyty7nUGTiAUR2RKBoe4QPCYf0UA0KqXVZhJbSbaB0teKLNZR8ZW
	wZxPcyxzCNdEYc3tM+GGxPDbW4njOyLgFPd+vO0KeStzLgNVv+W8gKPDELq1/Tf/
	KNaKRcdz60M+EcK/HLPw0P/t1U+91ONrr90iy9Kl4dxVeTAnOWQF7x7ZUz0DY1bl
	g+r/OvmF0u/gyDXiNRIzpx7o7cSgNXqIexV7EWs/51JOslOlmzpF/rmwFO4E/FVx
	YNIyWayrEb7e9KdKdYjtD7uDYk6KrF9WqcRQ74P8tN2UthoyOcSFTib7ZYCrxy7m
	CMd+Hg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4awwgmh025-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 16:42:23 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b29f90f9fdso75384585a.1
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 08:42:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765212142; x=1765816942; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s+7pO2JdB3epd84Y7zPFVXVSf8nsYItdbRxlvUFqUGg=;
        b=FHKFWn78CBxJgvY5gyjPMYoscUJjbZdOtd9LkAj1UaDJIAbYOAlXFelJq3s5bNRy30
         904DrBTAwDHhAND1byGNLy/qh43TQmc1TAw1u7AHDSnRIBn41YfwfMF0mF+T5sUQ0C4W
         T1+soOpZtjrQ1/wSAgxoXx0DIN4G+tRt4erVz6Gxi60UxkvyyvOGxSdDuF3OAUnd/pTa
         W5vDlI/gsh6Uv0EEoQ4zS8Xr/UGdmYoaAK+fj8EdDo1oMGtpM0dYWlzSyWKk6TwyjCk5
         kM1kjIyHWdsNVWn7lmeIBhXPSlT9xckDAOYjOir3t5dj8Y1hNwBlBKto/mEicOP3wgW7
         Azzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765212142; x=1765816942;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s+7pO2JdB3epd84Y7zPFVXVSf8nsYItdbRxlvUFqUGg=;
        b=u+Yy9Qj2aiSEAIba2RRRGZLC9JmJIot6ApL5CfrkT4NmPXPVhbszpmKqeT3rc/DtCL
         neEATlGYyiX+ZJR+LpTBWkIXtkBbmrCykM4yWj9q8fNfT+m4p35rQ3Rhygk5ZdPPReqe
         f6iMJEViYqRQQiWIGTuceUTWwcpLXu7XFrvl1ZZljV/MOhloeyHQ1Y9mrtY5Adedsx33
         yD61QztBIPMDOI/LlycAjVn5Etj9NZrHvkXUGSvV9UDQg/thFosthtU+WzopWiEz2WjB
         lPr6wOxkMMtYgNCQxnkKprvAUHo+q9F7CcYQuV+VoHEjl9+7rOutv/c8raDRn0a9Rtai
         VOEQ==
X-Forwarded-Encrypted: i=1; AJvYcCU16OhyM++CCUb8mJ1sBXCkrfmgS4OHTVQ6F8yNe166T0vCFaCwwo5AjoHyTyYL9OYYEx+j2uD6z+nM@vger.kernel.org
X-Gm-Message-State: AOJu0Ywkv6+i2xnq8y6A/xM/1NoxQYeQ2L0he0ozfniS5+cvMAG8AkxT
	vWRP1AR9GvF3YCqL7oBX11T1MLXsNVs4BBuIlZd0rjhHqVSL2hZ+sw+gJmtxeHE7PcsZn8oHn4I
	Am/KBqoNCY67gX5w18GFZV5Hm6DU/5VK7yI8EAA+57IYHdddgTG8wNwxNRGO6UkTL
X-Gm-Gg: ASbGnct6ncBRBa8IZnW+O/iy4GdSSt/Apt9CguE8BVkZ+3m/zvlSQ1V2n/gH2011Qos
	Z6l7MbUpH41KqmPaCN9y8cAuDGmblSThq+m9On1Q4mVjw8aWxToQqZCC+ILnFQn2ztM+wV3xjDX
	0+funTLcwWb6nLnV321kBKjfFiTPvN9wV7bpWaHCSUEuzr/mt+6oyiwqvAvAy/Q6uOYupHBdjkm
	snkoNiwgQKakVQIRdFahhwhsz5gy297c5qbDp86fRPZ3XA73MSHQIxJMlZLdYcVa8I1F9Pek8pJ
	yFIp1sPVC+caDV7g3ff+06fL2rn46OdBjx75wI5ceV4M2xXNVJ5JoMwgoEihgUTFqL6sSf798MY
	xEk8dMOX3CkG4iZuwW6P6S7mV3kZ6jV5RtD5rmJ0a8EwGsDBC4gNVqijhvF6/uKkE1w==
X-Received: by 2002:a05:620a:280e:b0:8b2:ddd3:adae with SMTP id af79cd13be357-8b6a2341faemr897947385a.0.1765212142190;
        Mon, 08 Dec 2025 08:42:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH9d1ZSgTYBvoUR6ZufX/t3EcyHWxQK2K05NSoW0KptA246E1nrlhvRRz9A8e9k0NBu+DkEcw==
X-Received: by 2002:a05:620a:280e:b0:8b2:ddd3:adae with SMTP id af79cd13be357-8b6a2341faemr897941985a.0.1765212141551;
        Mon, 08 Dec 2025 08:42:21 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b368dcebsm12390982a12.21.2025.12.08.08.42.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Dec 2025 08:42:20 -0800 (PST)
Message-ID: <3476de25-f0e7-48f1-8bec-3888db2f1fc9@oss.qualcomm.com>
Date: Mon, 8 Dec 2025 17:42:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: lemans-evk: Add host mode support for
 USB1 controller
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        andersson@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
        robh@kernel.org, konradybcio@kernel.org
References: <20251203-swati-v1-1-250efcb4e6a7@oss.qualcomm.com>
 <ffd6dc9a-372d-4db9-9c2e-92f126cb5ebe@oss.qualcomm.com>
 <49ecd190-1aee-42d9-9e6b-c155170aa38b@oss.qualcomm.com>
 <638f4184-b582-4a48-ad63-7c1fd2db492f@oss.qualcomm.com>
 <9937db19-de90-459f-844d-bce60abe9f7b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <9937db19-de90-459f-844d-bce60abe9f7b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=RtnI7SmK c=1 sm=1 tr=0 ts=6936ffef cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=yq_rQ8PQz4el-smdYOYA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: 7qhGFizMY0X3KnpRTyhtzZbZJPNC49wV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA4MDE0MSBTYWx0ZWRfXwlLgTw9w2XTq
 12PmCKYtT/1xGvxOIg5nwn8xdTrpR7UdN9VEJaeEdD19YSrInHUgjClEjLO4BNSDiptdOo+nZnY
 A3r9uhUUi1o69SV8h5elDQJ2LFLl0FSVCvD30XKN8A4ZZjyE/nuHCHYkzRR77zA/B5audTZilgE
 DlF6sFXdq6EPsG/pmDpoTvHkk5Qgjew2P4LV53QbsE8HWpqJ99ti7KD0YfB+5gX8G/Ie4XEBKA7
 wDj/ihMHWHa2a+LXaLipdfNXnZP3AA8VwlFUT3hhWld9qJuc6JtANllgEn4GUNZBtHjdAJv7oA8
 rYdRNECUAFbCrkHnLp85harbAHlVxV24TnigRCibFzlzLIR+pEhTH7LdZV8D40KBY04WO7XCtxT
 ayagPqTCwZFL9fCcJNU8zEqnh6l7SA==
X-Proofpoint-GUID: 7qhGFizMY0X3KnpRTyhtzZbZJPNC49wV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 spamscore=0 adultscore=0
 phishscore=0 impostorscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512080141

On 12/8/25 11:49 AM, Swati Agarwal wrote:
> Hi,
> 
> 
> On 12/3/2025 5:17 PM, Konrad Dybcio wrote:
>> On 12/3/25 12:41 PM, Krishna Kurapati wrote:
>>>
>>>
>>> On 12/3/2025 4:59 PM, Konrad Dybcio wrote:
>>>> On 12/3/25 3:42 AM, Swati Agarwal wrote:
>>>>> Enable Host mode support for USB1 controller on EVK Platform.
>>>>>
>>>>> For secondary USB Typec port, there is a genesys USB HUB sitting in between
>>>>> SOC and HD3SS3220 Type-C port controller and SS lines run from the SoC
>>>>> through the hub to the Port controller. Mark the second USB controller as
>>>>> host only capable.
>>>>>
>>>>> Added HD3SS3220 Type-C port controller along with Type-c connector for
>>>>> controlling vbus supply.
>>>>>
>>>>> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
>>>>> ---
>>
>> [...]
>>
>>>>> +                hd3ss3220_47_in_ep: endpoint {
>>>>
>>>> How about rename the other one to hd3ss3220_0 and name this one hd3ss322_1?
>>>> _47 doesn't really tell us anything and may re-appear if there's another
>>>> instance of this IC on another I2C bus
> 
> Thanks Konrad and Dmitry for the review.
> For addressing this renaming for USB0 controller, shall i keep a separate patch and should i address in same DT patch for USB1?>>>

Separate patch, please

>>>
>>> ACK. Can we rename them as "usb-typec_1" and "usb_typec_2" ?
>>> Krzysztof suggested to use generic names and hence we used "usb-typec" instead of hd3ss3220.
>>
>> The generic names rule only applies to node names (text before '@'),
>> the labels are generally only expected to "make overall sense", I think
>>
>>>>> +&usb_1 {
>>>>> +    dr_mode = "host";
>>>>
>>>> The connector states it's a dual-role data and power device. Is there any
>>>> reason to keep this in host-only mode?
>>>>
>>>
>>> As mentioned in commit text, there is a onboard hub sitting between SoC and the HD3SS3220 port controller. Hence device mode can't be used. This was the reason we left the above port nodes empty since we can't connect them to port nodes of controller.
>>
>> It would have helped if I had paid more attention to that message then..
>>
>>> Can we mark the connector as host only and remove the empty endpoints ? Would that we sufficient ?
>>
>> The connector should definitely be marked host-only, but the endpoints should
>> still reflect the physical connectivity.
>>
>> If I understood your case properly, this is analogous to what &usb2_2_dwc3
>> does in arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts - see Commit
>> c02716951e66 ("arm64: dts: qcom: sdm850-lenovo-yoga-c630: add routing for
>> second USB connector")
> 
> For adding, onboard hub which is GL3590 in DT, it requires adding SS hub bindings in genesys,gl850g.yaml.
> My plan is to first submit the binding patch and then follow up with this DT patch on top of it.

There's already *some* SS hub described in there - what needs updating?

Konrad

