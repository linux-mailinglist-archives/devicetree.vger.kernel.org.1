Return-Path: <devicetree+bounces-230864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF01C06A2B
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 16:12:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 53E0D4E7ABE
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 14:10:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EC5331DDA0;
	Fri, 24 Oct 2025 14:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hf4JTpxp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88C79255F31
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 14:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761315047; cv=none; b=nEtIXmFfHSuQ8rIwVUaMqLQvPpqJsElSOlbPPl9kw3iF9LJ2FFj0B5pZdXQOb0yBvaXCeCQF/m6St3//ncOhkqG/+FiyAjcORat88Ic4xeMd9V/xShkMLEwTSXcSFN0wRUNt/JriDGmLAV/yyB2Q8T/K2HvzgWrqEt86w8rlDDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761315047; c=relaxed/simple;
	bh=6EhyPMORGQ8dQ66Pg/Ba395+tsOWWreONj562IkAF44=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LnBpQGeAsYS9ppnxnUtaNUEP49Hn0otOiBmgoKtsIfx2sbM37k0nqcrAnFEZGMkvMK+1uGh+7zqNRIxsLcAZD8vb4DtAxVONITXQEhO47Daz5hSHQ6vu1L5vpLaHCH3c316PGygDRop229ucCdgTrqzCtRcbBXfP87nJgcvEj4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hf4JTpxp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59OBuIFa010323
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 14:10:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2EwzhNU0hLrCYQoy/rgZGyJrIlbbka4ufJYL4tWLm4g=; b=hf4JTpxp6ZTNoAXi
	KJP8KxE23HU7Aw7/yQWj6QU0lRdhrQ+QV1hgrZ5bIuHt//DhIHGJkztLNevie8sQ
	Alugi6oMfJhQCJCN38YNrEKZYdf7zvbsAP33Tz9Z7MqocwpWncq2c/8qkf0XBbYP
	kx01T4wZhfV1pYsywBtyfbuQOChFuEyIery3QgrAfWXXNchXCSmqSHOz++gQDWIP
	hwEkiZSFM8oJbk7Z8XAkJip2LZs2H69effn9DdKtgytwf73cK7X0OAAD/VpLDV/y
	SJcVpFbJXmKn1Z8x0nt6xhcRTHLXffW8kkol+Mnas4QjB6T2aV7dXqAr1ibn7iLM
	tI1Vag==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49y524ef36-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 14:10:44 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2930e6e2c03so22766835ad.3
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 07:10:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761315044; x=1761919844;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2EwzhNU0hLrCYQoy/rgZGyJrIlbbka4ufJYL4tWLm4g=;
        b=f6/OrAuuZuHv16tYBbpLx5WUD1pZNfZVFWzqqCtqHPJsN9Qh+S3l3poexUu0gf57s6
         dLxVozD9r9TRbFMi5dSQwUlDHSZdGmtZ0koPfzZrzwF4+RayxQxf/QHCNo+Qp3cG6btb
         BOrlxExnMtOkpReKnTP1C7v4od5rdqKiRibtaqP5zsJR9kX7JAxcZKbImc3RYfGTinU4
         AjO7u9/OZe82VOUcFjoxB+N5ZKjtM3bVxAJsUooYUQmnARdXGmYldXp2xabqpLd25JJO
         DyPqhO031wCiV0SJHXtmTrc4CNU3+tmiHEd2sFDxlxU6wj4W8VarEThh+g4LQtpaIZpm
         zUwQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1bpP7CiBmMAPfdEw95q2LQkyBcjxUM/ZlrgI+ZGtsx4EDgM4V2BwgOdYWZT4Hs126BBNaLQmpuxmN@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2avCX0XTCy/seYukCXo8lzMUBauP97Wl2vhqlUixR7YJjtIBr
	QW/0Lz+inHhUeWMRzdD74BhOOpceVfVDITJQewLNmhbyZ+duwS6dC1xUFRPGR7VBz6fkXLJTPUt
	LA30LIITktczFM51uTFJDSzcEaCbM0Lh05L4ouj25vgHe9Qdj37JndJwObc3gNJSX
X-Gm-Gg: ASbGncuMfNbCBKOVCXynyJP9QFrXC5Y2+OjS4/HFjc/E4hLF3k4vhk8Mkye3VSi2tqA
	TiKxb4Jv5D24qSniTC7Rt1HxKej4orYuPictU/QMyiRz9AzqrbwuqlmpLH3r8CJmBD+Uz75uln8
	vy7H2O2xYR1KiH9czDwA8fG4ycKvYDlW5Zu59oGWVcT7oMIqkIq7fpACrkHB4J67OTmd/oz+3cN
	FVVXSN2ZB5x3sH2zv3CI8Ok6CDNiBD55fiFqeRs8ggtay6Pu07DFPj5ZHXr8v/n9H/peVzpMPZf
	Y2OzS61H2lq8RVcfVp2tm85j95V/vjfPKKiLUIJ4QV24mvu8gWlbIXP0H/85h7WWxkNC9KLy6Cc
	6v+GHikKP4LHZX25or/CB0A==
X-Received: by 2002:a17:902:dac3:b0:273:7d52:e510 with SMTP id d9443c01a7336-290cba42370mr374643135ad.58.1761315043556;
        Fri, 24 Oct 2025 07:10:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGCxbxbl89eRys7AEmR9vsf2AEBuj924PXVSollg/7tpRp2GR8BpHCrwzGDrKdCguLCpt+ZYA==
X-Received: by 2002:a17:902:dac3:b0:273:7d52:e510 with SMTP id d9443c01a7336-290cba42370mr374642585ad.58.1761315042915;
        Fri, 24 Oct 2025 07:10:42 -0700 (PDT)
Received: from [10.204.104.20] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6cf4e0a43asm5250189a12.27.2025.10.24.07.10.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Oct 2025 07:10:42 -0700 (PDT)
Message-ID: <c7334b38-3d6e-4fbf-a385-40551fbb7c93@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 19:40:35 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] dt-bindings: display/msm/gmu: Document A612 RGMU
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Rob Clark <robin.clark@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
References: <20251017-qcs615-spin-2-v1-0-0baa44f80905@oss.qualcomm.com>
 <20251017-qcs615-spin-2-v1-3-0baa44f80905@oss.qualcomm.com>
 <8f3f4874-2e82-473e-87bd-e3bd58089b90@kernel.org>
 <181af756-09a1-4694-98c4-53cea556e172@oss.qualcomm.com>
 <ff37b635-b3dc-4180-8eae-e798ef6ce55a@kernel.org>
 <f677f8ee-d635-4131-8ee2-8ca6ead43095@oss.qualcomm.com>
 <qcs6y22hozfmb2ipmahfw25m2xti2gr5kjn43c2woiueqe4xmd@ovnrhwibhhe2>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <qcs6y22hozfmb2ipmahfw25m2xti2gr5kjn43c2woiueqe4xmd@ovnrhwibhhe2>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIyMDE1NSBTYWx0ZWRfX8/CCSYXFt09p
 IwMPOJTE01mK7L8vM+stKbgKBzEtyWCVou8aDa7/9RMDcn86sLx5B0jiYMcrSs0lEb3BuI+aGRv
 p+/TCqLGrF3fPAGw3Gjsz+9Cd5VyKOv20Z8TVO0DKQqhEUDqkwrflIHvPJ+E/vT33H4TrrBN3It
 excoXtXuYWNtmbLV7LdUftDfhQp5fVtbUlOFghN9vCfpbLv8wLHMExQTyMg6VhSnYn1tDv99KRF
 2eAlQuKO28li90pniRBvSaoFcjRJCO5E9TsvZDqMym2ARuoxUp9HXh6FybfWxZQWWb04kFu/kYC
 C2HxB4HZZVixBa2MjI4QznGznwHOSsWw0PUOemprUENenqluKcrefznLzV5hJWJGhhWVWbd0yxO
 2ZxganiLAKaTn8kdq/do+4UyAa0GTA==
X-Authority-Analysis: v=2.4 cv=Uotu9uwB c=1 sm=1 tr=0 ts=68fb88e4 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=V0jSdCJ6aHfz9AKaKsYA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: 47NQr26YhIt0sjyn2AQIfBBpQFHibOe5
X-Proofpoint-ORIG-GUID: 47NQr26YhIt0sjyn2AQIfBBpQFHibOe5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_02,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 clxscore=1015 spamscore=0
 adultscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510220155

On 10/24/2025 2:58 PM, Dmitry Baryshkov wrote:
> On Fri, Oct 24, 2025 at 04:33:28AM +0530, Akhil P Oommen wrote:
>> On 10/22/2025 12:49 AM, Krzysztof Kozlowski wrote:
>>> On 21/10/2025 17:51, Akhil P Oommen wrote:
>>>> On 10/19/2025 2:43 PM, Krzysztof Kozlowski wrote:
>>>>> On 17/10/2025 19:08, Akhil P Oommen wrote:
>>>>>> RGMU a.k.a Reduced Graphics Management Unit is a small state machine
>>>>>> with the sole purpose of providing IFPC (Inter Frame Power Collapse)
>>>>>> support. Compared to GMU, it doesn't manage GPU clock, voltage
>>>>>> scaling, bw voting or any other functionalities. All it does is detect
>>>>>> an idle GPU and toggle the GDSC switch. As it doesn't access DDR space,
>>>>>> it doesn't require iommu.
>>>>>>
>>>>>> So far, only Adreno 612 GPU has an RGMU core. Document RGMU in the GMU's
>>>>>> schema.
>>>>>>
>>>>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>>>>>> ---
>>>>>>  .../devicetree/bindings/display/msm/gmu.yaml       | 98 +++++++++++++++++-----
>>>>>>  1 file changed, 79 insertions(+), 19 deletions(-)
>>>>>>
>>>>>> @@ -313,13 +360,26 @@ allOf:
>>>>>>            items:
>>>>>>              - const: gmu
>>>>>>      else:
>>>>>> -      required:
>>>>>> -        - clocks
>>>>>> -        - clock-names
>>>>>> -        - interrupts
>>>>>> -        - interrupt-names
>>>>>> -        - iommus
>>>>>> -        - operating-points-v2
>>>>>> +      if:
>>>>>> +        properties:
>>>>>> +          compatible:
>>>>>> +            contains:
>>>>>> +              const: qcom,adreno-rgmu
>>>>>> +      then:
>>>>>> +        required:
>>>>>> +          - clocks
>>>>>> +          - clock-names
>>>>>> +          - interrupts
>>>>>> +          - interrupt-names
>>>>>> +          - operating-points-v2
>>>>>> +      else:
>>>>>
>>>>> No. Don't nest multiple ifs.
>>>>
>>>> I guess we should split this. I will add a 'required' constraint to the
>>>> rgmu constraints above. And apply the below 'required' constraint
>>>> specifically to 'qcom,adreno-gmu' instead of the 'else' fallback case.
>>>>
>>>> Please let me know if you have any suggestion.
>>>
>>> Maybe the binding is getting to complicated and RGMU should have its own.
>>
>> There is just a single chipset with RGMU and we haven't seen another one
>> in the last 8 yrs. So it is very unlikely we will see another one again.
>> So I feel it is not worth splitting this file just for RGMU.
> 
> I'd second the suggestion to split the RGMU schema. It's not about the
> number of platforms supported by the file. It's about the clarity. I
> think it would make the file easier to read.

Alright. If there is a general consensus, we can split out RGMU schema
to a new file.

-Akhil

> 
>>
>> Let me send another revision and let's take a call after that.
> 


