Return-Path: <devicetree+bounces-227401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DDABE1622
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 05:46:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 616D14E4F99
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 03:46:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C5E017C21E;
	Thu, 16 Oct 2025 03:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eIQbq1SI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D08BC79EA
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 03:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760586409; cv=none; b=o3xnV1n/gcvbs1Ay6JY/uV/7zW1B3UnrXu0OKETjn22nBv6RrhCNiyziW3ov+Mvh0kM5vU26yDurWlxcBEMXiPLci7ziaAS1+xc1aGQU12PWyaGteZ0eG53bgqQXJwrhsAI1NPBg1qSPqFlyWimwBzoguHmHJMqhqX1IXSmm+ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760586409; c=relaxed/simple;
	bh=bJPo7L8epy+g4bqxcLXBIlhestqPQYX6FEF5Gq1U5pw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RUpVKhIWL56sHjQH3So3k5i5lxFZ9BtENvx+fo3hW2gMY6MeElruf/KW3ka6J7x3I7IO/3qlY/Ukwagab3Awln5ebbpJnQCh/CtbymabTZS18wx6axEDFqYAmAuIHzWMKKqm9Oo5yViyS76orJkWxIQtUxAyYwekps9UAcGaUEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eIQbq1SI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FGvfRv025782
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 03:46:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MGTgW6j4BwUGWXfqHUc5yYYRAKlvIbby7H5r4Mivrcs=; b=eIQbq1SICN9HG5wf
	stkAI1Wt3m7VqM9Xf9HOrJiRN4baTQQuCoCoVvmzhm+RitAwVdxJKwRuBed93xI9
	A6Txh/o4po8N3rlUq7U+dWYt4zQet+Rxv+ExmnbOY+HZbI5GRHstrGTvWcynU6S+
	s3Ik/gVqk+bKNAWvYuKo6LYRnC3DOQNu9KXduP6d91kXAX49Yh/kGuaNI1UEPLIg
	EeJ7fpnx56MFrRGjXlwQFIVKNYLCv5r4r1kbJMnf3GZm6c1PIPusaJIW7FAQH2KW
	oiTBqLwPIvXykAiZECsONLURDdMiDBJJPV0c/9NQqpS+wOiNhX8YNKHDAiqNVjg2
	oGSLRA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qff0xt1a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 03:46:47 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-28a5b8b12bbso7285705ad.2
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 20:46:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760586406; x=1761191206;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MGTgW6j4BwUGWXfqHUc5yYYRAKlvIbby7H5r4Mivrcs=;
        b=WHwyvfTB/clJFb1b0fDQPpH/PhesfvsDlPQKBdVCbDpIp8/3DNOaVR3FpdtjkxXpTB
         3yR02Lw7GbDT4yxfnjEtwLofGR4h33fLjPHGIYa8AHD9FPafq+z77wo8yy0bt/Hv7egj
         3mJ708hNT3/80vogjbmTCx5dOeh4lUaGZRzjCxw4AvmIUkHQLmcpZMm5cDFEyU+nfSD9
         BndgG/3BmBQqpVw4/APTfyYZ4PWlB4L3k0g/UjVCGFbXeVQVIijYg3hD8fzpVsq3YzJd
         tcOmO9JjCeA1fzScKQHIfMm/t+bF5Y2uFax76Csr5/8pGRD8/TFOo9v32B6lllAuVO/B
         34zQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8Vl82rKcfieEtoZDhzQ3gh+b7zrHEdiVWyKa6Tovvi2ygwRoZh+gW05RyzGNr4EwIf/aHaNH1QU/Z@vger.kernel.org
X-Gm-Message-State: AOJu0YwGYBwEpA2dUUJrzgc/YhLb9+HK2UB5oD37knlC195hIJOVZY1W
	6+e6LDhvdPiGf9jG8QjVRjtVU8DB62NOZvGWw77KSIx6A5fAyMepp2smSW0Kaopxbz0cjkvDUqX
	THGRDwj2GSHudO+Tm9+NGi5lGNG2JkmKbnBcenY5eJY4lBxD1iAJB+nIvVVAWBdsU
X-Gm-Gg: ASbGncusSxYP78HcG+Z3E39Lxw1rZS4meOrTPJLcUol3ZeC5se83moE0ZEJ4T9mMQl8
	8Q4eFu4sPI83txcY9VHIWSOstZgfLqFvdzoxfnmCUCE1NAXw8/yFF8lSsZgO8SzyV/BvBK5hXW0
	GWZ7lEixM5ISqdBgKc7CYBUah+5+jcjNoD6AwAHyWnEqZPuTmTKA/ugEU2L6Dwwwid0ctF9UU26
	jGO8YFBLnKw5SvCmXT13dqEvMcHwDYYZ4E2LtZ+Pmc6l90J9qEcmQ+yzrD56Udp9GtpbX0eVdxe
	U97gNIVR9LVIIb2juAh2qvhhXXZpYskJzaDffEt0S6nNiaXwXpTTGC9/d31j3URh5NPVv8FVsdI
	tgoxbzRLErDMWL+5jPjXAf5592nL5/w==
X-Received: by 2002:a17:903:2c0d:b0:269:b2ff:5c0e with SMTP id d9443c01a7336-290273ffa54mr419948445ad.46.1760586406209;
        Wed, 15 Oct 2025 20:46:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECrjW1cqPBNCEcpo2wlLgL0bF8Aw5ZIvKRkZrZUayiubVGdoGasv05AYsxFUK4g/KjMzTWFg==
X-Received: by 2002:a17:903:2c0d:b0:269:b2ff:5c0e with SMTP id d9443c01a7336-290273ffa54mr419948165ad.46.1760586405736;
        Wed, 15 Oct 2025 20:46:45 -0700 (PDT)
Received: from [192.168.1.57] ([98.148.145.183])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29099aba3fcsm12296275ad.99.2025.10.15.20.46.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 20:46:45 -0700 (PDT)
Message-ID: <62a3f09b-50d6-4ace-8229-d71585378ae1@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 20:46:42 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] dt-bindings: media: camss: Add
 qcom,kaanapali-camss binding
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20251014-add-support-for-camss-on-kaanapali-v2-0-f5745ba2dff9@oss.qualcomm.com>
 <20251014-add-support-for-camss-on-kaanapali-v2-2-f5745ba2dff9@oss.qualcomm.com>
 <dce1018c-6165-407c-8f3d-40859cb36b11@linaro.org>
 <0b6c157a-3d8d-4251-a704-31f8369f6a4e@linaro.org>
 <a0d9389b-67a5-458a-858b-ffdd95f7ccc6@linaro.org>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <a0d9389b-67a5-458a-858b-ffdd95f7ccc6@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX5MYzgEQtvW6e
 IMv1ALCLZDdortj7EGCabaIItG1JzKTURBJEcroxLA+h6HmMxNVgZnfgcKPJ64KqI674F2A/Ujt
 d4YcEgB9AA0jd4KGm/MCfek15b0IFrewU+8M3y799KeoOy6cLTzf261aE3niIQgizeRBwYmeElw
 0RErbcqQFCLQqpY8nryMFXHepFtxtMldj38MWZHmOJlalnach5Mh//JWmPEhaHEHIxSEfuR2T7a
 IoKRyjvQoJ6tVmw3wLp9mXAFvUUUzxflWhhK/wa/h2lPjda4a1+FlV03mEP7i+BtymG1hUlyKop
 K7jf4+W4eIrrelkZsckF2MQ9m6vUzgb9+j3niRBiQ==
X-Proofpoint-GUID: i-NbGSj5wpYmj3PUFpKpLTorL74v7B6r
X-Authority-Analysis: v=2.4 cv=PriergM3 c=1 sm=1 tr=0 ts=68f06aa7 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=BiHMn5M11h/vNwziJwzFrg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=CagpHDX3wZ8s8GLuJqoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: i-NbGSj5wpYmj3PUFpKpLTorL74v7B6r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018


On 10/15/2025 4:32 PM, Vladimir Zapolskiy wrote:
> On 10/16/25 00:43, Bryan O'Donoghue wrote:
>> On 15/10/2025 20:45, Vladimir Zapolskiy wrote:
>>>> +  power-domains:
>>>> +    items:
>>>> +      - description:
>>>> +          TFE0 GDSC - Thin Front End, Global Distributed Switch
>>>> Controller.
>>>> +      - description:
>>>> +          TFE1 GDSC - Thin Front End, Global Distributed Switch
>>>> Controller.
>>>> +      - description:
>>>> +          TFE2 GDSC - Thin Front End, Global Distributed Switch
>>>> Controller.
>>>> +      - description:
>>>> +          Titan GDSC - Titan ISP Block Global Distributed Switch
>>>> Controller.
>>>> +
>>>> +  power-domain-names:
>>>> +    items:
>>>> +      - const: tfe0
>>>> +      - const: tfe1
>>>> +      - const: tfe2
>>>
>>> Please remove all 'tfeX' power domains, they are not going to be 
>>> utilized
>>> any time soon.
>>>
>>> When 'power-domains' list is just a single Titan GDSC, 
>>> 'power-domain-names'
>>> property is not needed.
>>
>> Each one of these TFEs powers an individually power-collapsible TFEs.
>>
>> This is also so with the other xFE power-domains on previous SoC
>> generations.
>
> This is false, for instance there is no management of SFEx power domains
> in SM8550 or X1E80100 CAMSS in the upstrem, neither there is no 
> management
> of SBI, IPE, BPS, CPP and so on GDSC power domans given by CAMCCs.
>
> TFEx is no more special, if it's unused, then it should not be added.
I agree with Bryan, if I understood the original comment correctly. This 
is no different to the IFE0/1/2 GDSCs on SM8550. All the other modules 
listed above (SFE, IPE, BPS etc.) are not supported by the CAMSS driver 
and hence there is no management. However, we need to manage the TOP and 
TFE0/1/2 GDSCs for the real time RDI paths.
>
>
>>
>> You'll need the TFEx power-domain to process any data on TFEx with the
>> 'lite' versions being tied to the TOP GDSC.
>
> When it is needed, the documentation will be updated accordingly, 
> right now
> it is unknown what a data processing on TFEx looks like, it might happen
> that there will be separate device tree nodes for TFEx.
>
> TFEx power domains shall be removed right now, unti; a usecase in the 
> upstream
> CAMSS appears to use them, I haven't seen such code at the moment.
>
We attach these power power domains by name in the corresponding driver. 
For instance, the VFE driver attaches the TFE power domains mentioned 
here and are exercised from vfe_set_power() -> vfe_get() 
->vfe_pm_domain_on(). You can also see the related codes with '.has_pd' 
and '.pd_name' properties in the CAMSS subdev resource structures. Hope 
this clarifies.


