Return-Path: <devicetree+bounces-224935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 84EF7BC90D8
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 14:37:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7299F19E5770
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 12:37:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAFBF2E370C;
	Thu,  9 Oct 2025 12:37:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oE0LWoq0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C76A2E2EF0
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 12:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760013424; cv=none; b=fySoevjqv9rqbLrq70sljS5o9GDJiCBZZr/RKfgrWXWGtVpO9UKlG781Nv9Bgko5k6Br7PypCgNJ2YXTtE+p1fe8WpIyEAOYhHszX3w1HUGeM8nHh/6oVQuW4oXXpfZB2s7g2aOnZTxtLWFZID2DfEBNB8dfNGgsrvk1+xnKd+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760013424; c=relaxed/simple;
	bh=9jcO9Feqp0+Oqy4K8X7fztPbz8Eqa6IFQkGDp5R37h0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OGO5SYsTUOB5mJj/S6WlU6KbCloMNCVcHxsoC3Y4IrsHEHcSTLyF/NTzPllB0uRG4k3ZdQHjdQhV6lYuM4vq2qGXYlEljOkvZDb4thKJFrQR518u/UxV+DrBl0vhP27NS7/fmGMBChh/+zGuwD2pOQnYyEsukRYETYsc2Z0S/qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oE0LWoq0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EIoP029053
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 12:37:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FEsklw0AIUKm1OtxIC3eyuWGm2vSIhXgmBcopDMHhE0=; b=oE0LWoq01s3qJS2K
	4YTgmpl35HJE3rUPMYaP0/w3XHqhDPxQFUOrKnPEuXlPrclk5X5KgfFX1Dw/+XDm
	YNzQyxg9jtJKV1yKh79ljqTVhsipfJJo8zTYyUGIPiml539HlGwLObIk7/xgsF+X
	P45bRGEG6nbXt3Xoyrr/vldPATYvEwofgGcF7Kw9oXrh+W1yJDMilG6vL+Ve44s2
	uqHsrULyDiIcr5PtuETP6FPTqd51uGDQIs8eOf12NAZSrato2QTuk3oKrdJZYaQv
	L35Yny8zdwRTWQaMY/DAXfSC3SoJygy+05Fao3L8SqEnSDEXpJwA2k88mthyDH4r
	0GigfA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4ktsnv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 12:37:02 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e015898547so3134691cf.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 05:37:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760013421; x=1760618221;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FEsklw0AIUKm1OtxIC3eyuWGm2vSIhXgmBcopDMHhE0=;
        b=bL4S90YwWx04aBvE5yBgbQsXXVqji3aoS2uzWrF8MoMtNdPPHkJq5ykHYczd5nnltK
         bVmVf2SiYD/toDp3+rEOr5kYptEOLOa1RschfGidTlAKdoXr4KN/BW22ii79yFD3gbmg
         w3wWFbSxrWRr0rKCqWKgYFuHB1a8wJs7MJTuIZNGRG0MGMu7TDGlgWYJ2EDAHQ5Qh6rJ
         WO8YkuNEHLRAc4NhbGRk9jHG+gRJwxXEDe7iODZeXl+2R+ZPnY6laaZY04yZYUT+xymW
         YErtoeREowLFiQ9RjgUBVykIckieiBHsIfu2Vs1RICOBnSHEGm60RIVCGEykyQQ/LO9k
         8vcQ==
X-Forwarded-Encrypted: i=1; AJvYcCWSCIutupLZPmmcLK9IoveN3YRZ5OFrDXQw9HK26wah0NGcVzyaIzco4JUyIuC4zUF2RNmCytzH2ZaM@vger.kernel.org
X-Gm-Message-State: AOJu0YwTOm4j00T+y2ls17SdpsOdNiNKIAYVAfwa8KKT9LfHTUgs5aLP
	T6MEws7Jti7tNSVKVoP+MGQmTAfiPliQczz6J1IKH6LhM2bT9D4FOTHzRgya9lWbgGgV+YyxL5n
	7zZpY2YFokEtXrH68n9CmOEhWl1waqsa2grHHk6RpbuODs49/Poe84TN5NChpMRyL
X-Gm-Gg: ASbGncvORLYNtaj3LrJhIjhF63yQ6YeLNek1LeF07JVjGPQp6tfkwuoDUwRU2TNLg8+
	F1ZMOB/PlcYz3++bxmmyWAYBu7XGE5eS7ILq/MnRT7mXP9hnWb4LbVnJBalRiN3qFCtM9HbhtRS
	ZojXLHgUvDVYPJbAc9EArGGQGx11INxdkh22EFqKMhpYtMl2/NnrqLtGg3DjYkX/l0B8ny8wF4g
	VQv9VuN/9VQLGZDBEleUkohXZuMfbnGG4Bc0g24WdOr0Di+Z4W7cVSjcoEGwmu8Aw6I3Ais86X2
	k/xnpUug0wWPJvkarvWYij8OT/Dk7sZBXyfUe/WDKRnZHF8fePcyoq13vpa5KTB3YXQpNR1VRMf
	EH7vIvsDKxMFmfhy1rT/QzALFdnM=
X-Received: by 2002:ac8:7d03:0:b0:4b5:a0fb:59a4 with SMTP id d75a77b69052e-4e6eac8b048mr67203371cf.1.1760013420983;
        Thu, 09 Oct 2025 05:37:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE3t++2D4HKgFuuZ9u07/n3C63sKYMoz6MgV5yEcjgfxeGz14OJ9Kv3Dhh1crE0wi8xyUehWQ==
X-Received: by 2002:ac8:7d03:0:b0:4b5:a0fb:59a4 with SMTP id d75a77b69052e-4e6eac8b048mr67202961cf.1.1760013420341;
        Thu, 09 Oct 2025 05:37:00 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-639f4106c60sm2302930a12.43.2025.10.09.05.36.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 05:36:59 -0700 (PDT)
Message-ID: <3166b396-7aa8-47d7-8d44-e7d88f920c15@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 14:36:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] Introduce "non-pixel" sub node within iris video
 node
To: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Bryan O'Donoghue <bod.linux@nxsw.ie>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vikash Garodia <quic_vgarodia@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <7b6db4fa-2f73-376d-4eb3-64c1c7e6cda3@quicinc.com>
 <6840d462-8269-4359-a6e5-d154842b62db@oss.qualcomm.com>
 <af0da28c-3ca0-41dc-aaa4-572723ea74bf@linaro.org>
 <klhvgzizub33f46buqsog54wqksqp24a5tijwyv355l2ao2imo@wdkojfebc6s2>
 <e1a6e75a-2a5d-44a2-8bbc-140eb86d1806@linaro.org>
 <2hh3zkdwgqbdurpr4tibr3gjat6arwl3dd3gxakdaagafwjdrm@aj5em4tbsjen>
 <Ujyoj3HGLVFhS2b0XzcYAMjSiCAuO-lSJ8PMEQLOaaX83tk_0D5zjrL0VDyZAmD3i4zLB3ElKSZBltISb5jJHA==@protonmail.internalid>
 <4a32bbec-2baf-4210-a7c1-1ddcd45d30c8@oss.qualcomm.com>
 <SuwJuCIcLVJwN3YeN1il6tB9wO9OH6bYcnbRpxpuI9Dl7piYLN-hVdnyv0Mal6N-W5pi2aCZI8MxHZDEkoE63A==@protonmail.internalid>
 <4d87d1ca-55b2-426e-aa73-e3fd8c6fe7bd@kernel.org>
 <10a8ccda-4e27-4b06-9a0e-608d6ade5354@nxsw.ie>
 <4cb4a92d-2f20-47c7-881e-aadcc6f83aa0@kernel.org>
 <1516f21e-aee3-42cf-b75e-61142dc9578d@oss.qualcomm.com>
 <9bae595a-597e-46e6-8eb2-44424fe21db6@linaro.org>
 <bcfbf35b-69ed-4f39-8312-6a53123cd898@kernel.org>
 <6ead45a6-aac8-464d-9812-f5e0d1395709@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <6ead45a6-aac8-464d-9812-f5e0d1395709@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX5Sn+W5JkRpX9
 Yc6Atg+wjYPvFIoc4V41VdiexyIqAmvcYxyE+QR/1NgO0ZXku574wXTWjV/2S7obhKYW+C6JpAT
 wGVmkzRiTaEQnIs3z8Oeh/s2xfbqNuKFADEv4lgZqKD0fE1VUm/rWJhtP5U4ozHeMoSJia0mFw/
 Q6GeiEdmM0uVaqcofXzsyongUd6kz1fdQLh3J1JguFjMqsC4fT4sB+kJvPVvRyQVoA8tk/JOR7F
 cI8VrwIirUzOTsnQes0llmLvfmnF7fLtDxoAB/jBEntpqTd/lN+PIltWmT0Yref7GBk7Ohq9+qA
 ZGzkZK1E2Y9EY2Te9N5J2pK3SaCEOolVPskmBNOBnErmieZu7QaRDsZcnORIIAbPD/79Grtk6Hu
 2i+rll/nm+bszkVce4WF7O/E+Lcqsg==
X-Authority-Analysis: v=2.4 cv=CbcFJbrl c=1 sm=1 tr=0 ts=68e7ac6e cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=goJB-IjUJ7mqbQYCmycA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: yQ2rUOegD0q25XPgE-E6XYAiuxRrAzYo
X-Proofpoint-ORIG-GUID: yQ2rUOegD0q25XPgE-E6XYAiuxRrAzYo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On 10/9/25 7:23 AM, Charan Teja Kalla wrote:
> 
> 
> On 10/9/2025 6:02 AM, Krzysztof Kozlowski wrote:
>>> If it is legitimate meta-data for the SMMU setup then why _shouldn't_ it 
>>> go into the DT ?
>>>
>> We talked about this two or three months ago. I don't understand why you
>> just ignored that entire part and come with new binding just to not
>> touch iommu code. List of entries in iommu must have strict order, just
>> like for every other list, and you should rely on that.
> Hi Krzysztof,
> 
> I want to understand a bit more about the statement -- "List of entries
> in iommu must have strict order."
> 
> per my understanding:
> iommus = <&apps_smmu sid1 mask1>, <&apps_smmu sid2 mask2>;
> 
>      and
> 
> iommus = <&apps_smmu sid2 mask2>, <&apps_smmu sid1 mask1>;
> 
> The end result is same with no breakage as they still end up in using
> the same translation unit, i.e., ordering doesn't matter.
> 
> May be you imply something else(may be ABI[1]) here about the order,
> which I am unable to catch...

Krzysztof is referring to the 'items:' blocks in dt-bindings always
containing an ordered list of entries (i.e. the examples you gave
are NOT identical from the bindings perspective even if Linux
happens to treat them in the same way as of right now)

Konrad

