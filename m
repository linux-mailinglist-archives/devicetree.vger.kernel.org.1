Return-Path: <devicetree+bounces-243995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2BFC9EE50
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 12:48:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id AF98E347C52
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 11:48:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4AE32F39DA;
	Wed,  3 Dec 2025 11:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VXzQJSk+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="h4E07yZr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255292F25FE
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 11:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764762475; cv=none; b=PkTi2/A0Hg2v6W/zxdwEhKiL731WGcWSVRNouH3FTCG8Jc9nUwYuYr/gylUU1dt0YIDg3IuM1zGgyJPSX+2q9XvQJo9fJnGPcgIySG8M1BAxv5BzOdbx3cyAulZawZEqFs8FrjigjE6KBxvVLODavpK6HbEY5HAeiECUvN+ND7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764762475; c=relaxed/simple;
	bh=R+yabMfq2CeFVv1mWTf7SfgSUt1s0X+c+O9zex1v7z0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JqwftI/hEWWFEm3nF2k8RSzGUUFv2FYHSgYgx6k0J41LrGxus8ff0f2WmQISICnfOThn0qm609+zb9qywUyQqF9DDzriSoPdaT6+l4O1kaJ3z2JrninrK3UfrsyoUyEsqDKg9N3FbFSS4+LVNUbH87BkAkqFh3GzE0pK0UEIKnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VXzQJSk+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=h4E07yZr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B3B4po42627183
	for <devicetree@vger.kernel.org>; Wed, 3 Dec 2025 11:47:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Nd9ki3tDwaPjkpseWA7+nqpKnc4JcNumJ/bvAFF5e0M=; b=VXzQJSk+/mp+WEJa
	P29s137LPWlzcWOLMnsWYXIz6ZGRC1QEA+8uTB7MTKIekl0hRXtSfKOQqbd+LjK2
	y0DFT3e+5rVrOKK25+9HCS+nwm48CnL7r6RFSJF6uLD8KwCurpJw/klet3Kd8mV2
	X+gljmZLa4kJsJ0i9uuahvDzyCG9FwyVyYAL4KGK1PWqb6WkNq3p/WrX0lp8pyEU
	3fY2FScMG8RwCyMzE7MCZQdE+liufgEBYN1C1zjc+htlKCauM2OCwCZv+wCHfdZ6
	d736t9nvRyomVKuATdxyEixDQ9AXh89wJ3Z8SBxtEFWy42h+Se0PFxMwDfsXmw9R
	PRssKw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atm12837t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 11:47:52 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b1be0fdfe1so200865285a.2
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 03:47:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764762472; x=1765367272; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Nd9ki3tDwaPjkpseWA7+nqpKnc4JcNumJ/bvAFF5e0M=;
        b=h4E07yZrBzNlqAYt4sH3bYc7m0Jay2nOijpyY5YquyCGCE3URqkW3QMg5iP4mRnIrm
         AqIRldPxkKMec+2D0hLkt/kgXbGNPzHJer+rXV4Kg9RxgulNFYO5NVXACRIWwxpIBrPS
         tWpxIwJfoTmGRSemru6Bhfqb+IAwrnaDq1+J5yJ+B34/BP5g4OzdjLPsE9Xf6an0jTPN
         FnVPjniCXAkAgT6lq+6phlYDJlz81aCuO1voCXJo2EdP1XV3S45anALrl73exaWQVjem
         BB4VgH/YgYcQW5deS+0U2E6X8cOIoKkB7qW8hTsXnhmwku3uBnjjfqW4KnTOaTyRlX3V
         /4Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764762472; x=1765367272;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nd9ki3tDwaPjkpseWA7+nqpKnc4JcNumJ/bvAFF5e0M=;
        b=ukMODWIzItwp3cAEVEm30KgrPQw6bi/PeyQ9meHoUKtXBgTsfaTJWmfJj9ruNzrvc8
         HqcRJmUh2WVVWTXmhUw5UmNU78JNB5AGK5qQrBlYTIhOg+oY7xgVSnLuBOHyuSjq0J4l
         oPNSxeNOWlIT5pn121EInMcSMbIXB7GlcQ5Ju4ysK5RU00UQYEbgKZmkdj4W76dalgOp
         kqWjuxv7d93piFTlMy9+y4Ss6ivRA1lRenkxd10wkxOpmsuJNQdIYpab4iDP39MU+fur
         8ZuHhU0czzBksDMw7vEP1PUHF0EyWKVj9F/R382Igo/FpXB+hhRO+AwStoPU3hHDj+ue
         qGOQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2rTRDtCSnw7jxYUpGXxJ+da8QVkVNlX2W60we4A0DBtp1IUvj1zrbzledPdUABA3r6oLFuAVEV6B+@vger.kernel.org
X-Gm-Message-State: AOJu0YzShL+kkE55ovvYCIB+uGTmZkz/wHDDCw0zAd8yA6Duax0YMWwy
	5+Cl8dczeEmWgfID5B3HIyrFMqln9AUKsm1FNclSCqb5o+ZejvP4/QcbdeGPSi5aWRchhncEpAO
	FcvrkZfM0TXg7ic4K8U3kNv6gfIGGhm7e4uwE4xPDBLjAUsP6b3GK2SYwtUDlZeow
X-Gm-Gg: ASbGncuYlpp5M5pulbILw4xNc9Bbf2TvtSWTLDztqCphpu6GpdcVZfkZnevSut0CQKL
	ldBoLo0p2VYOI7vn4TnZfjTlN6kpVwL2U8ATh0vCo7Wf/8zAlisa08vvERRPzRR/EzfPTz29+xG
	g0eSApRcX4/6iAO/ge7ExAEccfP1KFH+IyuNUXZnNjLDEwusBLi8igSlWuF7kUjbeyrsNx2pSN1
	n/SCrl8IfkF88utQw3bGEfvXN4aesp3RZGuuyj5cVLzl8odBBNZJWKvFZocsn3ogug8d4/ab7eG
	oveBAQbZ9IjycJuILCDzyFRKX4dgfEXWZhuj6a3tRGLbIjs9H0AwW5bIxnYsJzZATgeeJkWslqx
	rr1aidIfAZGFRInpocKbPd0pnIff5cbBhOmLvGUX3hWAd6MZ9+9RPE4XF0e9BJi63mQ==
X-Received: by 2002:a05:620a:4589:b0:8b2:e5c6:b4a2 with SMTP id af79cd13be357-8b5f8c42528mr87847585a.1.1764762471813;
        Wed, 03 Dec 2025 03:47:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFBRMlDQPA1Ek9CZxMtlKfL/JpqaSfedRc8S7pSaotdOtL2dXOJnNoBhDBqB5UQ54dOvo9PwQ==
X-Received: by 2002:a05:620a:4589:b0:8b2:e5c6:b4a2 with SMTP id af79cd13be357-8b5f8c42528mr87846185a.1.1764762471383;
        Wed, 03 Dec 2025 03:47:51 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f5199852sm1755995466b.15.2025.12.03.03.47.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 03:47:50 -0800 (PST)
Message-ID: <638f4184-b582-4a48-ad63-7c1fd2db492f@oss.qualcomm.com>
Date: Wed, 3 Dec 2025 12:47:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: lemans-evk: Add host mode support for
 USB1 controller
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251203-swati-v1-1-250efcb4e6a7@oss.qualcomm.com>
 <ffd6dc9a-372d-4db9-9c2e-92f126cb5ebe@oss.qualcomm.com>
 <49ecd190-1aee-42d9-9e6b-c155170aa38b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <49ecd190-1aee-42d9-9e6b-c155170aa38b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA5MyBTYWx0ZWRfX8KUq7uVn34sn
 OJ3Dw3o5A7PuLxkMCmiji3cDq8iiI+Ly9f2DO3ogslFldQAHtlmbz3bkKqfDV/rK5aQVor+gsFZ
 neFlFibRLKJh+gXibMfGJxhkgoE8F7SDXF662Jgse3zYVQ2ezzArfMYL+ZQDhxBAnY1LJswvBoc
 BdyTNpzglt/Sk7j4gC0XjoKvnwt5dKf+mprE/8VdIxsaCrw0i4+4h7whHW20iCaN2XgbK+Py5ZF
 GAJaz9LWZSRiix1i6bvQdMeW+QjOmMEPAVfMB0O7kSookgyUFEOIguPWLmrmF+z4EWj9B3pVyYE
 aAQdR6mZ/CUlADvuLMIzSu0INAqzGy8+1wXGMNzoJDbP/gQz/yfKbbKk6IG8Tdwhp40bywcovwX
 IsbW+peJGQxjgarNByW14p2GBiGJSg==
X-Authority-Analysis: v=2.4 cv=JY6xbEKV c=1 sm=1 tr=0 ts=69302368 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=cwXdGsxWxYVqnuK_q20A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: iGnckZVZU0QTEXaMU1mAU2zFuh_vUOul
X-Proofpoint-ORIG-GUID: iGnckZVZU0QTEXaMU1mAU2zFuh_vUOul
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 impostorscore=0 suspectscore=0 priorityscore=1501
 malwarescore=0 bulkscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512030093

On 12/3/25 12:41 PM, Krishna Kurapati wrote:
> 
> 
> On 12/3/2025 4:59 PM, Konrad Dybcio wrote:
>> On 12/3/25 3:42 AM, Swati Agarwal wrote:
>>> Enable Host mode support for USB1 controller on EVK Platform.
>>>
>>> For secondary USB Typec port, there is a genesys USB HUB sitting in between
>>> SOC and HD3SS3220 Type-C port controller and SS lines run from the SoC
>>> through the hub to the Port controller. Mark the second USB controller as
>>> host only capable.
>>>
>>> Added HD3SS3220 Type-C port controller along with Type-c connector for
>>> controlling vbus supply.
>>>
>>> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
>>> ---

[...]

>>> +                hd3ss3220_47_in_ep: endpoint {
>>
>> How about rename the other one to hd3ss3220_0 and name this one hd3ss322_1?
>> _47 doesn't really tell us anything and may re-appear if there's another
>> instance of this IC on another I2C bus
>>
> 
> ACK. Can we rename them as "usb-typec_1" and "usb_typec_2" ?
> Krzysztof suggested to use generic names and hence we used "usb-typec" instead of hd3ss3220.

The generic names rule only applies to node names (text before '@'),
the labels are generally only expected to "make overall sense", I think

>>> +&usb_1 {
>>> +    dr_mode = "host";
>>
>> The connector states it's a dual-role data and power device. Is there any
>> reason to keep this in host-only mode?
>>
> 
> As mentioned in commit text, there is a onboard hub sitting between SoC and the HD3SS3220 port controller. Hence device mode can't be used. This was the reason we left the above port nodes empty since we can't connect them to port nodes of controller.

It would have helped if I had paid more attention to that message then..

> Can we mark the connector as host only and remove the empty endpoints ? Would that we sufficient ?

The connector should definitely be marked host-only, but the endpoints should
still reflect the physical connectivity.

If I understood your case properly, this is analogous to what &usb2_2_dwc3
does in arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts - see Commit
c02716951e66 ("arm64: dts: qcom: sdm850-lenovo-yoga-c630: add routing for
second USB connector")

Konrad

