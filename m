Return-Path: <devicetree+bounces-253158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BD010D08109
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 10:04:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 878A7300E15E
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 09:04:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3031E357A55;
	Fri,  9 Jan 2026 09:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ig4u97Rw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ADp84Co7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9051C357A3F
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 09:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767949447; cv=none; b=ORN6rmVOr1UfAYu505lkrfFR0MuxWRucGr01fISi7/xb9OfLGLh2wE6wQ75ZtwpZaMudIX2xoXU7F6xJqoGRSVYpc6BnxvxmlG+NCGGT1WvnU+fDbUMwJYZfijhTzI4dkFvyx7gUvn5vaxy5T7QZsI6gK6VOPdG+n1psP4PX3HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767949447; c=relaxed/simple;
	bh=arJ5QjUzOKnAyRKLlSKNFFLLfLQQ82LYyaPvc/SDApg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U5GXxcIr4Wd2QBRlLTGuOVe5ysF7xezQtoH3l/S87MqDq1/VJ/mOdR252OoA+sXOAEeQgGvp2APqttvoOS9mwORsU2GQFGhEK0a76FLiUuzqYVdmYtN3pXzo8XRnZihhEOWkUeQNI2bCCSsq2zankgYiW4YhDLqFZz/F/3bs9Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ig4u97Rw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ADp84Co7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60952g2U3542109
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 09:04:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mHbNbEYtm1T3gAo2b+Fo4+/vkHhC6c2va99Yvo+P0BA=; b=Ig4u97Rw6X6Xl0QO
	cd7PNIzRd8Uz24mlb0JbvGlXOb4TkGSZiqxHCozi9a4kP0B+2sGRJumcQgdDuuNz
	jAfTpAkdotDr++Ktyy95QmQJnq9rbizkC/xAwmtx0OokLkSPnnxwpxqp5rPWMQ93
	f7OY81XmfrS+FeANjyqo3n4UObSj9cd4QPQcYCTcRTP1PTpdz5nGBQ7sqRQDFQBH
	TQL+GLtgm8AWhPirGm5DK2wZUCnp8OIb7ucNDtHvREnKcjz5zGefz6ckyscHygD4
	6xT8LXKVjb9jAmsqjUjcL9HZC4sOIoQV6excx9XtJavHEQJEvuYSoKyV2gQl+gT+
	tRSqXw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bju6b0nkp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 09:04:04 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8bb3388703dso1524911885a.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 01:04:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767949444; x=1768554244; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=mHbNbEYtm1T3gAo2b+Fo4+/vkHhC6c2va99Yvo+P0BA=;
        b=ADp84Co7h+j1LxeMSmv3pYJDzwnpL7SpKzan1lUSB6lQ8NN47gNwaFnWBjeJcR91Zu
         7NZVe5OOvGkJ0vLhiTPsRRFqCtfVC8T6h7MCzKUE+XPgwTBzNNeuVvQ1bit+ULuNO5q2
         s+t1mUUVthKVA1K/Aq52Md//EE9KKUQW0XI6Nb9y/hzGABUMocjQJj1oAMMu5ez6rV/R
         h/XmAu7Kq6R8SZ2d5W9zx6wn5IkfeGa9dh5m08s9dxX7zW8HJaC6gzfMCVa3FPeCdSkl
         ++GR82s9O6ElnBMTK1U4MHgxGCzwNBMLjbSsSHvig6mZF7l5yXVD3iWok5wq4heIW6/C
         PvZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767949444; x=1768554244;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mHbNbEYtm1T3gAo2b+Fo4+/vkHhC6c2va99Yvo+P0BA=;
        b=N+Fdp8x+TVq2F6vmaVTVK6s2dOl3T56gQcdua3CoeA31iVCGFWFla2eSEw44KG2e2C
         dDMpDYP0VH/0ozSSllyHS6ysu1hbYoqDr1lkSqBLxiX/i6Ha63szAdeuiEjs4KBMMMD+
         sWYr/5yEl6UMkBK2jt9d8Y25T+utZkeqnH6+8wBskHHTzsh+i9zHiBvK5speBuejsreU
         Qao69nf7IdRry/clwpZ3y1nGHLPVT+RO9HuG2TaJEfbSfjLETAynDllIz8wzOblN2b3I
         Kxl5YGf/L8z7JCJHS+eWJ+sQkxtg3W0lCDVuFYPXMX7XIEnAB+kbKGhH3qC8XG5l8DJ2
         f0aA==
X-Forwarded-Encrypted: i=1; AJvYcCVOus76vg+rPCqY12ePSNRYA1Jx3daAl2y5i/isT1RjcXTBs10b6u06WG3VfSH/1dA/VXkl7pZA9wfn@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3VeyUwgsmQ6QYYhIT7JWMtH6PVScfV071uRw+latN04vuBlxX
	36QWfFpm/MIiWBDaHjV0lYYqGJ4hsYxCCL84LvchniKRE5FucybLzzcyZBtsHD4W6fdiSZAkfsv
	VWDbedF2i9DQLiWRzNWspKXBqOsiOo8BLxiFj6OMKLoMsXHNOA2sAosD3o4d0qvOn
X-Gm-Gg: AY/fxX5n14lDh7CTsDf+8oIAlsBMDw3sGYi7hM7sBiwxe/kTEltJYlIn+am+3+hp7mE
	5/Y0xnND34VhJ1ECPpGD2dMrIs5zq9Rh9Hi53DFcwhEM3Fa8ZjjNbkLOlebvHkXDFCTDDYmZf1b
	2FlDfaj1ywGQLZQ4JdvX/SbromLdn81AmKUmFsZviGxbfrdIIc//mrWdgn0BuWKYXag3Mjqh8WC
	F5BRDxp9Z8cukaco+4BFXhpIjqzEt1lzsZROZhg7BnSQbvYe6KEncldmQe9k8x9qWAmxOBfKMr7
	d9veYib1QPADASBVAgDL8fzlsj3cWbKUfoxN7hD859Eatiuycx8oE/8hbwbdW57oTh3FNe/Hm3S
	Bq5orVQqDFzKWh4BQbkdEOd1eDV4cNiF51sZFxg==
X-Received: by 2002:a05:620a:44ca:b0:8b2:6251:64f9 with SMTP id af79cd13be357-8c3893f51a8mr1198606185a.58.1767949443662;
        Fri, 09 Jan 2026 01:04:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH0jRFtFT84SoZmb2uLNoFeNzepdUOeWdR6CRyDVeUbHKisksrBFHbjRhjUXmZXH0ly0kBOFg==
X-Received: by 2002:a05:620a:44ca:b0:8b2:6251:64f9 with SMTP id af79cd13be357-8c3893f51a8mr1198603085a.58.1767949443120;
        Fri, 09 Jan 2026 01:04:03 -0800 (PST)
Received: from [192.168.1.29] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432d9610671sm3149890f8f.34.2026.01.09.01.04.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 01:04:02 -0800 (PST)
Message-ID: <ba09a4a2-253c-4e38-9f0c-722f5f201b3d@oss.qualcomm.com>
Date: Fri, 9 Jan 2026 10:04:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] Initial patch set for PURWA-IOT-EVK
To: Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20260109-purwa-v2-0-f39ee10684cb@oss.qualcomm.com>
 <2e8e6436-96a3-40d2-86ce-a716326f79bf@kernel.org>
 <1af7d2fd-02fa-46a4-a7c5-0a08b1e1a596@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <1af7d2fd-02fa-46a4-a7c5-0a08b1e1a596@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA2NCBTYWx0ZWRfX3sSn1P4xRa5C
 TMMCirQ1g/BZVnyPlaKThN4wvIBSX1QqnR+2ukh66vV43oJWg705ZA16A9mA/LRImgNQ+lfN+AB
 4mli1OeqEn/fW/pPWYsWfDRV5Bf6wh5kSreEKidqDMqjnJX1RY5Yo61QXQtlp01VEpgMJZq7LAA
 77etCfoNHHc22HGU1agGlRIHexN/rJNvmXoECyGWcsFgfyMuxKGGMKUlbl/+DXnnD22tZ0hfBCz
 TwpQ3jB6pWxVTN1RqUgSxZugHiN4RtkczifgdjDt8rUjTvgiLmVlcwyJ/NTjCtXiaz8urB4FWVa
 daFqlLt0Bg+8jB6ulzWssFKkQlDN9OH362r/xa6ShQhB8N7W1DUNY0QNzZMFZ4oSo8QKvjS0Rzc
 4i602BdU/yPXnNnIXobEi2dhKgOvAnlUfo4laVtb4vSpUwfosIUQ9wcFdUOwqBzoLEZ9ap3pEre
 9Kvoe8dVYpjI/83gViw==
X-Proofpoint-ORIG-GUID: voqpfdt9AOAwlGby8OKL9S_L7un9ztUL
X-Authority-Analysis: v=2.4 cv=V+5wEOni c=1 sm=1 tr=0 ts=6960c484 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=k6x8RfgpBm_fT9FwS8gA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: voqpfdt9AOAwlGby8OKL9S_L7un9ztUL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_02,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0
 adultscore=0 clxscore=1015 suspectscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090064

On 09/01/2026 09:26, Yijie Yang wrote:
> 
> 
> On 1/9/2026 4:06 PM, Krzysztof Kozlowski wrote:
>> On 09/01/2026 08:59, YijieYang wrote:
>>>
>>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>> ---
>>> Changes since V1:
>>> - Update the GPU firmware path.
>>> - Update the description in the cover letter.
>>> - Reorder the patches.
>>> - Use separate DTS files for Purwa and Hamoa.
>>> - Update base commit.
>>
>> That's a b4 patchset, so where are the links?
> 
> Sorry about that. I generated the patch set using git format-patch with 
> format control options for easier review, while creating the cover 
> letter with b4. Since the version number does not increase 
> automatically, the change list was written manually, and I missed adding 
> the link to v1. I will include it in the following versions.
> 
> - Link to v1: 
> https://lore.kernel.org/all/20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com/

Ah, ok, that's fine although if you re-roll b4 managed branch, you would
still get the link added by b4.

Best regards,
Krzysztof

