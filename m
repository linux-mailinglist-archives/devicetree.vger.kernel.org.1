Return-Path: <devicetree+bounces-248174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0A2CCF953
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 12:33:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 22111300EAD7
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 11:33:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FE323191A8;
	Fri, 19 Dec 2025 11:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fUZDRAx6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SSwsHgK/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5542BDC03
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 11:33:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766144025; cv=none; b=uROKAt3YgVtAZfLdfPAVscClorM+0Goq6xV3vZFnc3PxkEz6siiMCEWAV3SbeFT5fqTci2zgCvU++4J5pn9bxsySc/drpehvK0akYPNFxjpYXZTHnWs3luAlMRaplDYF4T9lgW2yxZnVn8IejbErnNW5DVy2g2LpvBYSb3au7yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766144025; c=relaxed/simple;
	bh=x3zhgf9Q0sOp4+j8ZJkL0IUjt5z5dlm6FUtLNilAkDk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hx7MB4jY3vjfirdfDGJ23+DavXzO9Buq90MuGt+5lx7e9/ciXscAyBiQwoW5Fy8kMlCmI+0CTPz01QlxEhWwHl+1dATiRN2rdTfGIL+Tx/mlDhl+pS4agjAsrqCCcdIPxvrEWzbMG/WGjpRlVapMoJQP9zQDFqOySucG2+DHMhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fUZDRAx6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SSwsHgK/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJBS7qK3940629
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 11:33:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fMdx0pQw++OdmVRdKAe5y5wrvzemap1JR50aCfUHmCw=; b=fUZDRAx6yVvWka15
	K+Uc8YxCFiSuV3wtdByC0G7h4K2/0IFH7uwYhL9Wi8L98WrNwXEuwMLFp3YJ7DEQ
	vDIYPLb5ajcrHChN2wx5eVjP62eVzFsSb43ge/IVBqv5hN/L8EFzddicwUug0ZYs
	6Aqk/l4MSAPpTehblYmqu34znUJLK0AS6/uPRQkAnR1qgS0sDYzbkdc71BYMdEnM
	UYDjeoO7VKSTU+xyRkp9ftJd/ya/FzBtynmy+pKXdsvRySWcKBKN+fwamzwrG3cb
	xx+scurk0kLu02MCNMMwa7C8qdpoglOPpydzjRvUl5xkT/pS81Z616nFe0+KoUuj
	mO4OQg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2c2gc7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 11:33:42 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee07f794fcso3872441cf.2
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 03:33:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766144021; x=1766748821; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fMdx0pQw++OdmVRdKAe5y5wrvzemap1JR50aCfUHmCw=;
        b=SSwsHgK/GSH+RrfxNZL72mqiHKV1TMFfHZrGhvLrlv25UZAgWk9tHdkm7dpEuQNrxs
         98Fc4xk+x8SCV0pUlX2Zvz2xT9DRNpeBrIKDkWzhvkAzRCWNHmXNzFCWYTJ0TuBZRgDu
         IhAVsW8dmAnYS5KpytOTlSSNMAHlWfDDbdJ5JH1liQyvC+Sot/UUPc6c6wGPEYgSbLh4
         sTbXr0F9xuN/swelA+YL5xb2Zlo3zjE588KOuMBSVgTQj3xjfnWwkW9EIKWkNPkgLwHw
         oZz0AGowzhF8CASv3lx1X/kK97pLnIRWuwrsR8stCMiWmTaSUfBOjqvE/uLTYlihmevE
         oUkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766144021; x=1766748821;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fMdx0pQw++OdmVRdKAe5y5wrvzemap1JR50aCfUHmCw=;
        b=mGcA6lB4LGnwXUKsp40ERDNuiZ+U7VdeNFvTUTjfCoNUF5pb8SpeagyhJyqQS5teOw
         XkiFdjcz08+P8logUMpVTq+wnIhX0kzC9W1wL0NjYWOCuuoTCMk9CMpyDnuO0d/cnEJ7
         ir2jhPJlEC3x8/x56CcwdvjcX0Lm0lfEMKC9GYT4m+KsjoGkLXNu+U5TbLrBZmdLV0vJ
         5GpL3JUCvwj2c+4Kq8LuZunwfy+3ix5oy5pIsw+M+WxWJYbQea3DfbUGIUWaR3DYM49M
         /os8vbnFshmUSxEpHQmBceTlc/pD6HakcuGgsg3Jx1ChMDZQkrFj/MFoKxpU9QKG3whV
         7Zxw==
X-Forwarded-Encrypted: i=1; AJvYcCXeg/pTqfDp6JfVlgLBZzXzkoky9mvcNvrhf6T1VKxlBFmg4LPD1dVoZnQqnKfWxOtjJ2AiFMJ3VjMD@vger.kernel.org
X-Gm-Message-State: AOJu0YwDdAlG9DE//bOUnu9z5kvo1bc7FqN9ilhI2lj8DlDltsKe0S9U
	KRzNvnW64g+ryi4sfdPtbhacsndqWF11+Do4HC7vwZpkzVDowlg1QdGIytp2WARxUyGasSkuy0D
	v/q68p3myW++p8seoCaTfwN9wJ2c7L4rOFqgyCQqBn8nA6zfQ5FeVSHZXDG5ba8VO
X-Gm-Gg: AY/fxX6vhvZ3FVJCrJC7rsHIvhlTqk+3YlmKtzA68NtbxCtIR64DjDRNzIgLZq+sRsL
	SeJfUXcNdkguGP+ck2GWJy9h50/vW7rKH0RwNC0E7rUBn+SZeAnXg9r+8wfZ0iP9lf9U7+eqTtj
	/ik1pnYbRKBir9cBcT6e4Nxv2lmvEL23k6Og1LJkfh5XxqSa8H5LO6hN/vE6claMqNEdFTA6l0V
	kzyyh2LnteWfeY/Uw6vbrLvN9SOQDKlmEt3bA19sGCpa73f4SiMIqnXH036SZMCszQ6UyKgbsbE
	JsrZqW9aQcLBX7K3r0Y36256M95pbxG9zFg/YPSMti4ws3p3NIvhNXtk3L8Kg5U45V8IHj49A3g
	fQVec0kJmHOrhC5BTJIsIBq0wKAoYK6ZS7/pQRs1qbHqB6QKoAmnDEYX1uQH1p/ulJg==
X-Received: by 2002:ac8:7c49:0:b0:4ee:1a3:2e79 with SMTP id d75a77b69052e-4f4abddcae9mr23007261cf.8.1766144021166;
        Fri, 19 Dec 2025 03:33:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFxqo/hY71IEBjcEElYEuPuhI0i/EacL5t30/TgMJPWqpmemlVJCS5TEqzKfvpqnuLoUyc/eg==
X-Received: by 2002:ac8:7c49:0:b0:4ee:1a3:2e79 with SMTP id d75a77b69052e-4f4abddcae9mr23007011cf.8.1766144020662;
        Fri, 19 Dec 2025 03:33:40 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0b12dsm207708366b.48.2025.12.19.03.33.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 03:33:40 -0800 (PST)
Message-ID: <864b2dd7-aaea-418b-baf1-a0d1b452cf95@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 12:33:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/6] dt-bindings: arm: qcom: Document Microsoft Surface
 Pro 11
To: =?UTF-8?Q?J=C3=A9r=C3=B4me_de_Bretagne?= <jerome.debretagne@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Johannes Berg <johannes@sipsolutions.net>,
        Lorenzo Bianconi <lorenzo@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Hans de Goede <hansg@kernel.org>,
        =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Jeff Johnson <jjohnson@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-wireless@vger.kernel.org, platform-driver-x86@vger.kernel.org,
        ath12k@lists.infradead.org, Dale Whinham <daleyo@gmail.com>
References: <20251218-surface-sp11-for-next-v3-0-875afc7bd3b7@gmail.com>
 <20251218-surface-sp11-for-next-v3-1-875afc7bd3b7@gmail.com>
 <438a352e-5174-4361-b6e5-6ff5fe1ce0c0@oss.qualcomm.com>
 <CA+kEDGE42HhaWZy1o9DjpwcjPiJcqvq52o-_g+auOkp26ukULg@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CA+kEDGE42HhaWZy1o9DjpwcjPiJcqvq52o-_g+auOkp26ukULg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: vWz8LYOUCp8bad_Er1bld6aLHakNN1nO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDA5NSBTYWx0ZWRfX+3x0PvgWE1pt
 cO0Bj3h76Ru/XkLTdch/x/AbhFY44X6u0Gi+x0SEpHSPJlqUhQOx2gTM3cIflMjrsDhvL0LLuzK
 90CStXQ+mXXxkv7OUuhA1Qfvbx1fFxRCghOMZPQwBZ+JQA099tKLy0IWrQoA+j6BRooR7aPxiVY
 ejLXwoYnDTSUtyHNFk2k/SQHP7atvgjo7HJ3YURihsuFtywbssjowkQK0awsvTgxWzoBl740i6N
 dmMYc43c5csjDwngzMzdmxgMMVJHYSlrAB2T+wDah8E8jp3BMmbPCmfj7P6oFQzIl0aWI0uBa8U
 UQavxKMVrjzwkVuo/6ckAQ3SE6/d5I6LvcW35/LRsNBVbQcoF6phQELrJTXujvfl2yGO+fFW2z2
 sN8j7Af7xomkt+tBrntw4owno27c6Wx9TVp8KEcUiFTHeeXbuRXtDwKI+QhkiBF8p4/qh4IpOUC
 FJmlQ+TiUD1IggaZyjg==
X-Authority-Analysis: v=2.4 cv=feSgCkQF c=1 sm=1 tr=0 ts=69453816 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8
 a=F5t3yZrAjdDg94tw__kA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: vWz8LYOUCp8bad_Er1bld6aLHakNN1nO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_03,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190095

On 12/18/25 5:35 PM, Jérôme de Bretagne wrote:
> Le jeu. 18 déc. 2025 à 15:15, Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> a écrit :
>>
>> On 12/18/25 12:56 AM, Jérôme de Bretagne via B4 Relay wrote:
>>> From: Jérôme de Bretagne <jerome.debretagne@gmail.com>
>>>
>>> Add the compatibles for the Qualcomm-based Microsoft Surface Pro 11,
>>> using its Denali codename.
>>>
>>> The LCD models are using the Qualcomm Snapdragon X1 Plus (X1P64100),
>>> the OLED ones are using the Qualcomm Snapdragon X1 Elite (X1E80100).
>>>
>>> Due to the difference in how the built-in panel is being handled
>>> between the OLED variant and LCD one, it is required to have two
>>> separate DTBs, so document the compatible string for both variants.
>>>
>>> Signed-off-by: Jérôme de Bretagne <jerome.debretagne@gmail.com>
>>> ---
>>>  Documentation/devicetree/bindings/arm/qcom.yaml | 8 ++++++++
>>>  1 file changed, 8 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
>>> index d84bd3bca2010508a8225b9549d8c634efa06531..7c99bc0d3aae3dc6e9c08fef0a535e114a3297a8 100644
>>> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
>>> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
>>> @@ -1067,6 +1067,14 @@ properties:
>>>            - const: qcom,x1e78100
>>>            - const: qcom,x1e80100
>>>
>>> +      - items:
>>> +          - enum:
>>> +              - microsoft,denali-lcd
>>> +              - microsoft,denali-oled
>>> +          - const: microsoft,denali
>>> +          - const: qcom,x1p64100
>>> +          - const: qcom,x1e80100
>>
>> As the bot pointed out, this is valid, but not what you want:
>>
>> This expects
>>
>> "microsoft,denali-(lcd/oled)", "microsoft,denali", "qcom,x1p64100",
>> "qcom,x1e80100"
>>
>> whereas you're looking for 2 entries:
>>
>> - items:
>>         const: microsoft,denali-lcd
>>         const: microsoft,denali
>>         const: qcom,x1p64100
>>         const: qcom,x1e80100
>>
>> - items:
>>         const: microsoft,denali-oled
>>         const: microsoft,denali
>>         const: qcom,x1e80100
> 
> I was trying to group the 2 variants together, as they are very much
> related. Your description captures the 2 variants way more precisely,
> I will switch to 2 distinct entries in v4.

Unfortunately, in math terms, this is a:

ab + ac + bc

situation, as in you see there's a lot of repetition, but there's no way
to find a common neat factor for every entry

Konrad


