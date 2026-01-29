Return-Path: <devicetree+bounces-260825-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLwMC8A6e2mNCgIAu9opvQ
	(envelope-from <devicetree+bounces-260825-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:47:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F43AF0EA
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:47:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5AF6A301703B
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:33:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75DCF3815E0;
	Thu, 29 Jan 2026 10:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KiS+XQfl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Js35qjLH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C26AC3815D5
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769682827; cv=none; b=O4nlz+e6zvZqFL+cYN8HQ9/DKCLMQF3J0oE+ZXqf/QTjd79m56bKaepvPJj3+maSqBy9TMT22fG13uFjTNvAm3hnUE5cpFHRiQmsnYjIh0TZjkPE2MpA7xnouOY6GwqqFHkpO3LNLVCMWcVMSIkZb/w4bbfBL96jVmvB0LAp2hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769682827; c=relaxed/simple;
	bh=RKjzM+AzWEd2xLqDveQmeQFdcy+M78s4wSRN+pTC75o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=p22W2gkvPKCJbaN5RGAdzCQ2z4BZNE+4A34DcY94h7PykdMyRWS5vGU4pAytKzIibCMkTVY7ZdxjuRcO1g0zdESq2HLy1pihurhKAXd9nZZFDpQl0wMmj2DIdqtdMKEdVYGqej+Zp9eh6CKEcbmc0b/8PUJmF1nJQ6S7karndoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KiS+XQfl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Js35qjLH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60TAPixw3642457
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:33:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XniacV/s3o9H91GWrpTbMKzmS7SyJtuAfhbd5BWpqpY=; b=KiS+XQflezgVQ6GB
	ta7uC/l56nU9wSgZ1xd0mERxwlyJi3hbc7+QJGgfSietA3fh8Y+YZzUQaQAvQI+h
	JWQsjGCxuN1dp3RaZx/NQy/7jUpW+55v7p0SKWQ2SO2WIP4PuAGgyI3jZNFHwf7a
	RzdgmbXEvbkTjK5XBj15EkV+YMSlBt2nZO7NT3zlSrVAsn7yWHmtBz6JJ4mVBe8y
	X7bsAhFx9x4Tq/aAoB2NV119k98/uoU22Ld2s+Lsa7ASlOigFVH5+EJIw4KvCtT+
	meLWbMJc3c6iKyg8CFyFMu0IkLLIIho+5tHjg+2n/BrsAysVuJJrSY+yS5gaKDEU
	IhtsLQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c05sr00r7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:33:44 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0f4822f77so22912195ad.2
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 02:33:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769682823; x=1770287623; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XniacV/s3o9H91GWrpTbMKzmS7SyJtuAfhbd5BWpqpY=;
        b=Js35qjLHvt8aLS3/CjYi8nhKmZDbpX/deeWlocTp8ASIv3tPs6AHlDODept9BQlqD6
         nBpAwZWqLGPtDwSvxdg29jh/ktUmPFGUtrfHJZbgHMygsI/dyPCofg13RnXqlplvs1bG
         fKAec4eiI+AxAhtYuTLB/ccF7Z3O9xtykMGRSfRjvh23oeQJJbEJ+l0IfDQtpIU4syFE
         I5JrrHcL7IbjUR9RX+mDCRAmNqsDAKD5RVGZ3oafXAoP6NPkdaLBQ1SiCEQ6NpSDbI7s
         CtyiPbV5/0ugD+Bn1u5z1zdTjrd2A9SSnj9Ak20B8dJfwFz2eNJZosA8aqnAOwfcTKdr
         HAWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769682823; x=1770287623;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XniacV/s3o9H91GWrpTbMKzmS7SyJtuAfhbd5BWpqpY=;
        b=SaH3XFdrLq+hiT9Xga5k1I5JZkW+/2+Wt7iNrrv6nLaq028yH9Xh2k1PXMwleXpGZc
         BNrcH0V8AK22PHoWLe67jd6wGded4ffREI40ExcWsrjjU/sBx0/5SaJ34qN9w3d/fB0v
         PZISCHzoR/77uEsbkyXEvrAwjImNAAkExs3TG2/sK07dHjnQfELaWFdN5Yfg0AL3umgS
         vni/LTVqs7c8v1MtUbMWlXIEt5jXawEsFyrcy6kjWOm1HQtciGSYVDS8q3URZvHCR82C
         E2z4R5CHLQpEPPouDdbpwRGo1bjQHtQECT/VdafChsF+px3d23NrqmLvKSlxve5vlK2H
         urhA==
X-Forwarded-Encrypted: i=1; AJvYcCWNap0XRF8erPRyrZEc3q1U8ddg8lg5DxEBa8bIn++lxcir11Sr/Bmu7oTwdhitkuBskJcHT3tFc5Uu@vger.kernel.org
X-Gm-Message-State: AOJu0YypWi5gIP4no76eiy708Vn5U+hvPBtJ67W6LdAtOKOlg0mhFZgG
	SIyGkWJ6vUogELKDx4ja1Sl0kD3W7+l7JQddaP1Fn9r4tfNcn2sJ6JNhJVYXxfA63mjRjDjA4L7
	RDu6/ekyHuMxqMcM3uElakqNZwSakFBHt78lI+9TcICYzZ6H3OoKlm4mr0W763dUG
X-Gm-Gg: AZuq6aJybtWc6baUoy6OGu7AJ50euZR5ZrMYwZ/JnMq6iZllxahY7PU2QvBzbILBIcN
	T+OIMPIJb0xpKmXYBO1HGM8aEm5C+tzc6Cu4afM0tO/rQlWFrp+I4l1eBQzLi41YNNPcv1aCJXB
	gC4Yrvfx7OBemoAlBXbb3KzzeT0Qh4Rb9kCWuSV1Y0aNsN0Wth3TpoO3acdLO0NUFdoFb5MsMNk
	NRjfrrxuK36pNAUabqlWpaGmh3fl/AlQu/jva1AHD3CUGEMofOEIQJ0hT7KSOoZ17PFm7sD0+kA
	d0sUoMxpGwk3gMZXAkdQqO8WQ1lkdbAFOuST8Ke1WFRtZTcAyom8j9DX0fKVB+X+ynmms1abuL/
	4lDyQY8L3hQyILkXq5uGhHYRwbecySt9BTDLd2GD28G4Ebhq2
X-Received: by 2002:a17:902:cccb:b0:2a0:9ca7:7405 with SMTP id d9443c01a7336-2a870dc9634mr87914165ad.36.1769682823234;
        Thu, 29 Jan 2026 02:33:43 -0800 (PST)
X-Received: by 2002:a17:902:cccb:b0:2a0:9ca7:7405 with SMTP id d9443c01a7336-2a870dc9634mr87913935ad.36.1769682822728;
        Thu, 29 Jan 2026 02:33:42 -0800 (PST)
Received: from [10.218.21.154] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4c3d2bsm48006435ad.53.2026.01.29.02.33.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 02:33:42 -0800 (PST)
Message-ID: <81f0ee3c-a7e3-4730-a396-9599ddd45f53@oss.qualcomm.com>
Date: Thu, 29 Jan 2026 16:03:37 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] dt-bindings: pinctrl: qcom,sm8450-lpass-lpi-pinctrl:
 Add SA8775P and QCS8300 pinctrl
To: Rob Herring <robh@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Linus Walleij
 <linusw@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260127105511.3917491-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20260127141740.GA1574044-robh@kernel.org>
 <9f5436df-fef7-4921-85b3-b6fe4e942779@oss.qualcomm.com>
 <CAL_Jsq+YYxWKaD-Xo7L3VUAJ=wvpbfW9GkKn0gcj3AOvMb=Uhg@mail.gmail.com>
Content-Language: en-US
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
In-Reply-To: <CAL_Jsq+YYxWKaD-Xo7L3VUAJ=wvpbfW9GkKn0gcj3AOvMb=Uhg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDA2OCBTYWx0ZWRfX1D4k0Wz5EA+1
 Iavk0hv/6UkL14sK5XtBOwJOOkS8sU2oFC7krMdMIVzDArMDyADKQ5blveSlvVMN/CSB7WmYhAO
 zpm3TgkHrxwbTBmprC3vGfqAsJ6XSl3uWeIyzrNe26Hf1WOShXY2drLzmS7lahe42Zqgty+LpNp
 F8xO2yExjydCv3AXu6VN+SklKodvp7al9NMapTATlS5cbNHUr6m6IWwrmrhjPq9xCMHE54lWHMA
 17XvGLct3IxxVxm/Z2Rz8V9cmEK2c//Db0MV6dllJg/ZLG3Cu1Rxo+67M9S6C/KkvDYYcLEOP8v
 xzc0IQBOE3Mlfs1MWpnhzmslCPRUo2otvfMw3qKu1O+u1LxENxl0sqSu15fx4IrMRY4nuHmAh44
 PTMKmWwI7q6wv5y+6x04tc9fJLh4bXp7ihor3c0xWgJGwx37fcBQCL89Azpuy6j4ME1r5I6xEqy
 5Ci3Dz5mLLnCxBd1KIg==
X-Proofpoint-ORIG-GUID: utTBT1P5gUy3S9D5pAAg8O5t30iDDXDL
X-Authority-Analysis: v=2.4 cv=UsJu9uwB c=1 sm=1 tr=0 ts=697b3788 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=iS5eDfI7LrtSjKTbtTEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: utTBT1P5gUy3S9D5pAAg8O5t30iDDXDL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_02,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0 clxscore=1015
 spamscore=0 malwarescore=0 adultscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290068
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260825-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[mohammad.rafi.shaik@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C6F43AF0EA
X-Rspamd-Action: no action



On 1/27/2026 11:57 PM, Rob Herring wrote:
> On Tue, Jan 27, 2026 at 12:13 PM Mohammad Rafi Shaik
> <mohammad.rafi.shaik@oss.qualcomm.com> wrote:
>>
>>
>>
>> On 1/27/2026 7:47 PM, Rob Herring wrote:
>>> On Tue, Jan 27, 2026 at 04:25:11PM +0530, Mohammad Rafi Shaik wrote:
>>>> Document compatible for Qualcomm SA8775P and QCS8300 SoC LPASS TLMM
>>>> pin controller, fully compatible with previous SM8450 generation
>>>> (same amount of pins and functions).
>>>>
>>>> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
>>>> ---
>>>> changes in [v3]:
>>>>    - Removed the duplicate driver code patch as suggested by Krzysztof.
>>>>    - Reused the existing SM8490 pinctrl, which is fully compatible with SA8775P and QCS8300.
>>>>    - Link to V2: https://lore.kernel.org/all/20260107192007.500995-1-mohammad.rafi.shaik@oss.qualcomm.com/
>>>>
>>>> changes in [v2]:
>>>>    - Fixed dt-binding errors reported by Krzysztof and Rob.
>>>>    - Added proper slew rate value for wsa2_swr_data GPIO, as suggested by Konrad.
>>>>    - Documented Monaco compatible as suggested by Konrad.
>>>>    - Link to V1: https://lore.kernel.org/all/20251116171656.3105461-1-mohammad.rafi.shaik@oss.qualcomm.com/
>>>> ---
>>>>    .../pinctrl/qcom,sm8450-lpass-lpi-pinctrl.yaml         | 10 +++++++++-
>>>>    1 file changed, 9 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm8450-lpass-lpi-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm8450-lpass-lpi-pinctrl.yaml
>>>> index e7565592d..354629c38 100644
>>>> --- a/Documentation/devicetree/bindings/pinctrl/qcom,sm8450-lpass-lpi-pinctrl.yaml
>>>> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm8450-lpass-lpi-pinctrl.yaml
>>>> @@ -15,7 +15,15 @@ description:
>>>>
>>>>    properties:
>>>>      compatible:
>>>> -    const: qcom,sm8450-lpass-lpi-pinctrl
>>>> +    oneOf:
>>>> +      - const: qcom,sm8450-lpass-lpi-pinctrl
>>>> +      - items:
>>>> +          - enum:
>>>> +              - qcom,qcs8300-lpass-lpi-pinctrl
>>>> +              - qcom,sa8775p-lpass-lpi-pinctrl
>>>> +          - const: qcom,sm8450-lpass-lpi-pinctrl
>>>> +        minItems: 1
>>>> +        maxItems: 2
>>>
>>> No. You are either backwards compatible with sm8450 or you aren't. The
>>> h/w is fixed.
>>>
>>
>> ACK,
>>
>> Agree,
>>
>> Need backward compatibility with sm8450 for both sa8775p and qcs8300 as
>> they must fall back to the sm8450, so initially used enum to pick
>> between the sa8775p and qcs8300 compatibles. I see enum isn’t
>> appropriate here since fixed h/w.
>>
>> will use the const instead of enum like below.
>>
>>    properties:
>>      compatible:
>> -    const: qcom,sm8450-lpass-lpi-pinctrl
>> +    oneOf:
>> +      - const: qcom,sm8450-lpass-lpi-pinctrl
>> +      - items:
>> +          - const: qcom,sa8775p-lpass-lpi-pinctrl
>> +          - const: qcom,sm8450-lpass-lpi-pinctrl
>> +
>> +      - items:
>> +          - const: qcom,qcs8300-lpass-lpi-pinctrl
>> +          - const: qcom,sm8450-lpass-lpi-pinctrl
> 
> Sigh, no. The 2 entries can be combined like you had. Just drop
> minItems and maxItems from what you had.
> 
> And test your binding before sending it.
> 

Sure, I’ll take care of it going forward

Thanks & Regarding,
Rafi.

> Rob


