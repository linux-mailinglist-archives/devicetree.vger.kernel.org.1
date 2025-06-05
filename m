Return-Path: <devicetree+bounces-183107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D9BACF488
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 18:41:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AF8EF7A8CCF
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 16:39:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90D37221278;
	Thu,  5 Jun 2025 16:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iUB5G4tK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299911D5ADC
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 16:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749141662; cv=none; b=TEOjynjXQUXzrEopYlqR4afbLtzVr8OG3+0zJOI08aBU1P6xxASIjQEIPK3n9cf10in3OM0abr8Xo5rsKKeOnc23nfD6rRA5zT1ejYtOmUhyS8HebbV0NrZYKL0T96wqOvZqaOMRPbEekK+RKLXAk/1EwhJM6TP5G/4vJdSxIio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749141662; c=relaxed/simple;
	bh=U+1dO+TmDkrsbPY3184pD3AQDFkCQ4e7YtqnnBaM70I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O8VjlzAXhu2QjeXUugXOfXHTQVYfglsni/FqDK92Mnb0OUdx9y/qthVOK4Q7aA2cwdiNeIMuzxS88PeRnSmhvZQOeKnVrjwVGpaH0BnHQpfwZs0qbQoQNHhuygewBxgmWpbcA+wSIqB0TCE9hlFlH3HzfC8aZ3NNrxI4l1eYpx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iUB5G4tK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 555GNxm1006378
	for <devicetree@vger.kernel.org>; Thu, 5 Jun 2025 16:41:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7i0HN4nYaQ3I3pG/28oO1Ds2OecBTsNdW5PcXfaTMdM=; b=iUB5G4tKXLw+/hxB
	GvWo1i4blXRZUvN6kKRwXD0zAh2JN9GfylEkmpyXlPlvfkXotkMOvTPbCz9pJxkA
	orQaL5ucms3fOPc4cv2GKhEQpAxRMOVe/rylaAUgu4oEdqP/4Tej0+Ifw6Ddow5M
	m4yxtYoWT+D7hfvkHR58kAc6+teN/10S6zagQYojgW521fX05u1PLtC9Vgjs2DbO
	kSnaZuKHwCh+fGdrJRRVhQBdAmuMzYDEcCscAw/Ml7RJMzMIAFsOM1YmcLX8/hJ0
	8BPKgq4pRYLWiWpYaRvGoAMcgESfSTibg32k8SYCspM5BudUL6/hlmKpUjR2lZln
	aUlwbA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8t1ybx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 16:41:00 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7caee988153so201052885a.1
        for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 09:41:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749141659; x=1749746459;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7i0HN4nYaQ3I3pG/28oO1Ds2OecBTsNdW5PcXfaTMdM=;
        b=MV7CXOBAmhcTjUCRq28oO4Kc4uk7n8cknUmShoAlkwfsO0UCrcgjGq3uZ6q13gd1K6
         Dm+NQDek3k2HPW+iREFU68/hS+kqhvD0p3Gg0qEXgsDidpZxYc92uRyx/hYu6TbdYZ+s
         eHA4WueXpJEbE2SafgObia2x5dFM/oZXEe8ajPCM46vhVuWMsoBR5bJQ4ng/+RP1gm7J
         athvQJTUS+Hb454hD57IMKvZIvMmdTVi7afU2w1unmvqMYQNukLAKGSjDyhrdZFwG4Ni
         H9o6UbuwqaQa5az9MNeOg036L7XBnh6UO451G46vix0tAy1Fu8keEawOWlSOYMga8CVl
         dMjA==
X-Forwarded-Encrypted: i=1; AJvYcCWGOO6tPfmG3Xt2zCx8s6KpgeGtu9nCi0uI7E5fUXd2VIYuINytKF4kEtqyHRUE/4gqsKU3lYhw997S@vger.kernel.org
X-Gm-Message-State: AOJu0YwV5JoB0lpgXx1ChRh5ezLXNDoCrHZ7lNq6fX1whSahmjrNUFSK
	JHiDUG6mofK68DuOjfGRIIUxgX1pDtf+vpLqDB/+SB1877NOEioIYfk7oB41E4bP5wQfnDK4zsc
	2B/S10GsIYsyL9nqy0VrLn9AL60TEcNQJWhnrQiqdLEQGQdb9CUxpCT+USojk+3aC
X-Gm-Gg: ASbGnctuQg/1GqhLINZ5VpXrjQxsdbuxnCpK9nJ1Nwxi/G4Y2JfPA3TB0457PZsimmj
	Zg4eg/WXNjjygo9Xp89J7SGDUyvJAQElysF46xZ9PojlUAKo/MP3nB7wAC1FRCv700zNrQj7CUn
	peTiElITTpWCUOA5evsw5C4mVIP7rq0WOKs07tDNroR4T7K2FW5XHUBHcDEI8uIZ3rG32Eg+mqZ
	qlfCGxaHGhSSY23I0lXzxIRxohvewsaODbxq7EYxHXhbtrMXLP6mEFAuTeYs5SY7kUIAzwotRyn
	IsNtm7SzI94oLNsq2h4adk4+p5VNgjraeg==
X-Received: by 2002:a05:620a:318a:b0:7ce:b7fc:6b6f with SMTP id af79cd13be357-7d2298ebd51mr30547885a.58.1749141657043;
        Thu, 05 Jun 2025 09:40:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHlphq5hkywbvQviFl7ytOJ+kdQCQdXoWwJL5KNPil4LyJI7BQX8E8fziuHpoPmIVJagdJoCg==
X-Received: by 2002:a05:620a:318a:b0:7ce:b7fc:6b6f with SMTP id af79cd13be357-7d2298ebd51mr30515485a.58.1749141653618;
        Thu, 05 Jun 2025 09:40:53 -0700 (PDT)
Received: from [192.168.23.80] ([87.224.39.253])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-451fb22a332sm24378335e9.35.2025.06.05.09.40.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jun 2025 09:40:52 -0700 (PDT)
Message-ID: <5f912b5e-6368-4234-8a37-db72be222ee9@oss.qualcomm.com>
Date: Thu, 5 Jun 2025 17:40:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 0/3] media: venus: enable venus on qcs615
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@foundries.io>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Renjiang Han <quic_renjiang@quicinc.com>,
        Vikash Garodia <quic_vgarodia@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Nicolas Dufresne <nicolas.dufresne@collabora.com>
References: <20250530-add-venus-for-qcs615-v8-0-c0092ac616d0@quicinc.com>
 <wmri66tkksq6i3hfyoveedq5slghnnpozjzx6gck5r3zsiwsg6@xevgh54rnlqd>
 <285cae4a-219c-4514-818f-34c8225529de@quicinc.com>
 <t6niql4jfotjnbducypwxkdjqt3or7k3rwmltvbhifmpphsiwy@er56ey4v2pzo>
 <a3bf69f3-6500-4e45-ba34-8ba24312938a@kernel.org>
 <CAO9ioeWkLu+ne18kjEST7YU7b1aBzcMBBeyfpagzis99BAeOHg@mail.gmail.com>
 <b710e357-09e3-460e-b097-28cf0c856aeb@kernel.org>
 <44b3779b-702c-4e8b-8ccd-c9c3314a511f@linaro.org>
 <nr2je5ssn22npl2dqu5aj2xcwinnjmhvl3tvuz5smr4dd2rxaj@dfkk6aktkafy>
 <6b09348e-d920-4025-9932-6c861fd5f1e9@linaro.org>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <6b09348e-d920-4025-9932-6c861fd5f1e9@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: SRAAtE6lVjvPgywWtZqLuTb9f3Hzeawh
X-Authority-Analysis: v=2.4 cv=EPcG00ZC c=1 sm=1 tr=0 ts=6841c89c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=UMobGI8h2IAScYPZOeRE3Q==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=Vu8oZAHUrI8RjOZTgO0A:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: SRAAtE6lVjvPgywWtZqLuTb9f3Hzeawh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA1MDE0NyBTYWx0ZWRfX0zwrbN4di0R4
 7H+zLvd8RqEWrjSK7DoUwX6r9CSER1DFVMPcuTObdV68LP7GGwA5YeDwDaiZ42U91mW3Jd4rugS
 xi9ORIxa98gXAMNQPM8u+7HUvk6mhIsyKImoTHa9DcdJxJk2hJCbvl8rk9wi0jU0fiLT1rD/VsO
 K6u5dXLwuaIAP+atN5wDFUYDOim3roTYNqab1rAGktdcDo79P+Z5UKbC5A8ZWIpzKHHRXQg78xq
 PI9IMenMwNC6JXFES7M4Ws0CB03d6+suV3mSXWFdbekAmVySNAir9QetBdbjxfuGhTYwmmvD8yC
 Eg5XU7ImxWja2F8FVo4N+GdkNy2k+ojAfjRMmBVZM1YrW6Wx14h73fW3dIqIwLwCMF0QLMJRvSR
 6hTEUFP9Sbqxtw/7I4y0mTSyyT6o0cFUuBJbHYMsPK7lZ/lWc/HD8o5DaMPrpbKNm4QK+fLn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-05_04,2025-06-05_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0 mlxscore=0
 clxscore=1015 mlxlogscore=656 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506050147

On 05/06/2025 17:39, Bryan O'Donoghue wrote:
> On 05/06/2025 17:02, Dmitry Baryshkov wrote:
>> Please correct me if I'm wrong. Without driver changes from patch 1, the
>> driver will always use frequency table from the driver itself. In this
>> case it will be the frequency table (and corners) for SC7180, which
>> would make venus driver overclock the hardware on QCS615.
> 
> True.
> 
> Yes, let's apply 1/3 and then re-submit 2 and 3 once it hits -next.

Not enough. 1/3 should hit Bjorn's tree, see Arnd's rejection for 6.15 
patchset.

-- 
With best wishes
Dmitry

