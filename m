Return-Path: <devicetree+bounces-212792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DDAB43C5D
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 15:02:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 67201189494A
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 13:01:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 876C130102B;
	Thu,  4 Sep 2025 12:59:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HWXbA4T9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107883009E0
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 12:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756990786; cv=none; b=kXWVBW5KuwU4uXkyfVpm2lU5Z7YRqcKZb/1kI1z4pTGkspBT50vAU+QniLnLCAMfg3yhXJcb5mYC4zv9znOon2Qh1sNf3b42ONpHtfrtbLXVszxWWF7Qss8j/AjSLSF7cEnEaq1KVLbqVDQSVAvJ9EJvpKT9VskBu+WPLNeKrZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756990786; c=relaxed/simple;
	bh=HGRZFwd49tFfYWB9SUlChD9l0RfYHNSiyeeXd+GpDu8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FXAhx4gGl1EabCmwJI6BhF/BdqZuouftBj06Hg93JDtI6LK9cQP1vxUaN2KJSZ0vT+7iq4WOFlDhxe1G51OkS5jKK+KN2RvkDBtNMzfygGmPCv05G6n/t9+gJGFA/rlmRKSfMHgzHWWUeyJ4egZMWrEEHgyg5kzgpj1T03juYvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HWXbA4T9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849X8ff023904
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 12:59:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YrnPjMXXm4RKHlJrdtGIK0fP8Rj/KwUrIvqQDVckTVc=; b=HWXbA4T9cfiakpA8
	HMr9BVStDLMzpW8OsgkJHaMl7o/r7xsh+CTuF2qEQTbWkb1APsBypqyHZcK5N9X/
	rCsyzc+FL0no0pUxM1arWbG8Gy0D5l1wknfmNxIXaigwa8JsIRmlhdrANUwOyhAj
	teVXby0v9LPmhV+XOabManMLZBHH8rDgtBer0Zvo+8IklWQhp8iJchBxb1bDZUZc
	9u+ii7hDuom/gZI1poh4t7IxCBkM3+hVIkbb0Qz2pmE0ThOr57njPpB20C4iQcec
	ALN1WWiXsrpjQGRvkX96xbGsR+MyYaPvoylnn/RMywd9NVdbGHtxJx8NJcr/6ROv
	t0hW4A==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ut2fqcgp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 12:59:43 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-24b2b347073so15187075ad.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 05:59:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756990783; x=1757595583;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YrnPjMXXm4RKHlJrdtGIK0fP8Rj/KwUrIvqQDVckTVc=;
        b=nn/uJyp5YdIc+xTZK3oTS1V1fXQby4+o3roCbHppcitUq1qE2eJHczcl21PUTmR7zt
         w5yiPviuXhMrS2TZvX71Kc6aVMUG4DpZP3JGBnLuBJKZpi6gX1ZI43kfQJkImWxv14J4
         WsOU0wp801+qFQ2nWBQKJwg/BYn7CBcUJbGCAX2W56R+1WazjHhDrDg0kupfgARiqPp4
         kGRIdds0xiqfyohKkv3B62yaXvG8YFXbGOTbElnAiy8CFvuEuHeZOd7LcC85wyxFnFoy
         NWys5iGDKuNOJwUWPUXxDs31iZiT8aXwuFynOQ+9bWJuQ5NJxHBvqXkuXVMWV3/CcBu6
         DEQA==
X-Forwarded-Encrypted: i=1; AJvYcCWJbInvnJd9XVVkkSGByRsD9WbrjTP1TvdLJ1vimlXtR7kFZfrXvvZZjsz7AtVqgiGCiECb6cGoEsWy@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4QDOpGhFwJARN8CXdzQI8vlhoA/Bfsewk6C0Q87X36yj7j4AV
	NMnBpx4laTe/BWZSBPOKkc3oxcCe9iSaaNjt9PNnXUCFmIXqq3MLzhBLbtFhLSN9KxfgqU66ryK
	UUCSnBBwVJL5mEXzc7xXkqlBYdApx5NeDKxb3ryE2iAvrzoi0gIZz0PZN1xP7XrFp
X-Gm-Gg: ASbGncu3Qq4OU0455Jsiw8zOjhz9Fl2wPgb0BaLmsgf76KmuATSBYsAEaI96fPNGHMe
	gSO4RoZrfP+OtpKB9GV+MvgoRoN5fnf2RFcGVP4tbAwJTbBjmjSheRYNT/eFe7yUdkfqfXCjDqF
	6lSFgDaEqqR44lmC6lmfbGJjDOyIFHtCjTaiM/wveT07JtlOyeythukYIJIC9oW5TXCLzXuhtOF
	HFGZT49vo16wVnakQ06X0BEQBLMfWQvJgAJQ6xfpTtCjB3sh7nTgE4qiQnm9/FOjPAvm0sRHtza
	WQpi1vjP1ZPT+foM2KJIa0iGQvgap7ZDpVJzhFIyd4KWsg8fTeihZjKRc8/5F2G2BoP1AZiNSGA
	NiyXafEYiJwBjxcOaEV1vjiNOca4Dd4OEpbRO37QW9+duZB9tEVbGiFuJ
X-Received: by 2002:a17:903:2441:b0:24a:b86b:fc4d with SMTP id d9443c01a7336-24ab86c16a0mr194843205ad.22.1756990782920;
        Thu, 04 Sep 2025 05:59:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEDs555ipRvC1ST73yAjE3u8OV2Q+43GBd/Kx6p1J0zf61ODiAveluuSUk6VqxqWJkCV5TZJw==
X-Received: by 2002:a17:903:2441:b0:24a:b86b:fc4d with SMTP id d9443c01a7336-24ab86c16a0mr194842835ad.22.1756990782410;
        Thu, 04 Sep 2025 05:59:42 -0700 (PDT)
Received: from [10.50.21.161] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24c829d9114sm51930465ad.57.2025.09.04.05.59.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 05:59:41 -0700 (PDT)
Message-ID: <6be45464-0b54-4fe7-aded-96d6c7d38da7@oss.qualcomm.com>
Date: Thu, 4 Sep 2025 18:29:32 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: pinctrl: qcom: Add Glymur pinctrl
 bindings
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: andersson@kernel.org, linus.walleij@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org,
        rajendra.nayak@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250813065533.3959018-1-pankaj.patil@oss.qualcomm.com>
 <20250813065533.3959018-2-pankaj.patil@oss.qualcomm.com>
 <bdfb09a2-0053-4a07-85d6-5e15b8bc126a@kernel.org>
 <d35s5ldfswavajxkj7cg3erd75s2pcyv725iblyfya4mk4ds4g@hekhirg4fz65>
 <bbf60240-4d84-47fc-ae35-483e55968643@kernel.org>
 <hxwrmoyik5bzgtxufw2trjwz5oqn7jut5wsej4v5xqdk5ho6hi@jic2xbti5jn6>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <hxwrmoyik5bzgtxufw2trjwz5oqn7jut5wsej4v5xqdk5ho6hi@jic2xbti5jn6>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzOCBTYWx0ZWRfX60Rh5bq3+60X
 fFdZtlFylha3sunD30cG83p2xTs8gvHgjhw5PPFxX2O9MjBXGPQkTTjEAx4aFlZNHTN9EYbT4We
 xHJa5OJwTboim9ypopdGavg5cKH/Kz3QgnBJ+WW72+DenKVnvD5y9IsfTQLr+lSk/z3Iekjvbk9
 oiRpi3lfX/h8oTSycIX+vF6+73d2AplZhTPZ5vI+q8g9QHi/AkT8shiJ93MmRXpytUIpknRctst
 TjPyUpWgfu5lWj/f01XwuH4zUm5Q9Zu28TeAs2pUnx0Bc+9+0xBtU5mRu5FOhsDBoNAiBSAU1o+
 ceqGYnVdT9FmjMyHEKCVIVDy1ZL3UCxGSRgtMmc/qeMoUgcZC7sIrOQGOd35fjKM1lQcFFhHG4J
 ejvino49
X-Proofpoint-ORIG-GUID: nrDHQ87ZmiI43RFmJm81BSkxMVABbi42
X-Proofpoint-GUID: nrDHQ87ZmiI43RFmJm81BSkxMVABbi42
X-Authority-Analysis: v=2.4 cv=U7iSDfru c=1 sm=1 tr=0 ts=68b98d3f cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=tCOUNiJIdlxrdUxpUMYA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300038

On 9/3/2025 5:52 PM, Dmitry Baryshkov wrote:
> On Wed, Sep 03, 2025 at 01:28:43PM +0200, Krzysztof Kozlowski wrote:
>> On 03/09/2025 13:01, Dmitry Baryshkov wrote:
>>>>> +  interrupts:
>>>>> +    maxItems: 1
>>>>> +
>>>>> +  gpio-reserved-ranges:
>>>>> +    minItems: 1
>>>>> +    maxItems: 119
>>>> 124, I guess
>> ...
>>
>>>>> +    properties:
>>>>> +      pins:
>>>>> +        description:
>>>>> +          List of gpio pins affected by the properties specified in this
>>>>> +          subnode.
>>>>> +        items:
>>>>> +          oneOf:
>>>>> +            - pattern: "^gpio([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9])$"
>>> If it's up to 124, then this pattern is incorrect.
>> So 125.
> I think so
>
Pattern is for gpio-line-names max items which is 250 [0-249]
I'll update the gpio-reserved-ranges max items in the next rev

