Return-Path: <devicetree+bounces-133611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0009FB069
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 15:54:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E5CA81640AD
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 14:54:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC56C1AF4EA;
	Mon, 23 Dec 2024 14:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F8e7QK1d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3511B0F04
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 14:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734965660; cv=none; b=Es3uXekpJsKWslakZ0H2U08s/O4rKG3raxmLBal/04lxBpjYbGiXF/l+t2Ij6UhQmRm8qhBvSNllgk1WLIQzUBXMnn5tX/LXH+gPNiKtvqa4cRMV5y6owBbvAHP87wIoFCjNl8vAgyVyvMrqiKPoGqQhOF4KzTm6uDkdXQ1uQBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734965660; c=relaxed/simple;
	bh=qBb+RepxlaQBQfUiJ8jtOEW61pLphvFaO7Ijlb0LmZA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fk3GtSLOWoVx5Ml2S2Q80f92P9RrtWIBmjuGRsT/5qIMqf9Bl3tu01rUiZA7PzkmpHcSG0YfaVqEEDftl1BrjFwZR9qyuGaFG7UPue80W5+DKC4thKircpuJOXshpNkNtvmU//dbhXy0/4EweJhdnmLfHN9y5KgniZx3oyY0oQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F8e7QK1d; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BNBVftA006925
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 14:54:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CMetpNC0r0sdi+rbTHxHMkI5qTPoBE1vQLNl2JxJPRo=; b=F8e7QK1dnVMk5SD9
	BBlhQLgeK+yp4+E3lygn5nCYDM6n16D9d7KnejaziWiIUl66uHrvjwhJ/nmXhkpr
	EkuyGTsUI3W9zGrtxEHPm3IqKJiOhwl1Xl/G5BLb8J1iaLCijeM+Aa7Us/WwTUKR
	wr0OuLkUCibzNJL6hQjKwa5rQBMDp8laTXKTQK3S/dLl8i94Pppije/a1P2H03tw
	cTdhOs+f1CY/ZXB1TOjkw42Dr84jI67FHkp+lHIU0AjrYyiwOnN5FlvsccYEkut1
	+tAor35CJuH0JCIc79tv6X4ydFxPDG3eO0+h9Rf7Yzfrgq87P7Q24fLC8tfL0vbv
	2iFOsA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43q72n8gtn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 14:54:18 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d8e7016630so12211126d6.1
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 06:54:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734965657; x=1735570457;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CMetpNC0r0sdi+rbTHxHMkI5qTPoBE1vQLNl2JxJPRo=;
        b=coeiqZfL0gMTFu6j2fHp0SaKC7MQbdYJZPSiTtrzrF7zAesOCYXh9f7Yqj0lKBO6Wu
         ubEvBDBDtvpVtZ2mWbwhFBy5eKHSyA8VAZoPs3pH6DPwKv1VrH4szh3xXxMrdqDhHSeg
         0V6PJWVTohyjZ8ldqT8aZtSr+46za0MkBd5Pt4/W3PAmMtzjJf2y/1GjlZ6CQUkSgdYB
         StgZsPhjSeIl4XT6Q6ZiT/xQs0ip9zR0KarStK9BTAFpW/5cQaNHH5RjHwOr1sn5A7+g
         LgYLuZbtq+3BEgTsILbmzvXUpSZwCZPMQfhl7pW2HfqzCa2DAL1f4wzUa4N9QuehCnMg
         BKHg==
X-Forwarded-Encrypted: i=1; AJvYcCUFxkjJj94Y9iBJZRWAIKu6KADRH94aBFylrNt1GGJSDyeAhMnXCd2rAwXq6vu+BUKOytyI9rb7zj3m@vger.kernel.org
X-Gm-Message-State: AOJu0YxJ0ApV1O0/eaxmLvOEKgr37CqWu4EUpm17wml4+j4HgzOm+3iV
	KBXyekESqzJetMRwwK5pwjqaucHcN3BR82ZjC9ZBPGtDLShFi+w/bcBxy3nUTkdjovV8LC3U0Tm
	Z8m/W1QYl6c+5tSaiNSuHD/fScJja8hokzeA798HtMf19QwuiYCxDLj9S4zDB
X-Gm-Gg: ASbGncvUawMFtOVkFSN9Az7wnNltyAS8PdbTgyMtNgYdEadsxgpasrUqEJzveE6C4c5
	JNaa85krJF+puCdUHYU4+Q8zgiZBL/Xl9+dJk4QeW3QPhGHf1uzEcWcKWmQdxubWwXt6IP4YAq1
	tfEzNzHt267JQJOXSKpbMHtt6ebMLzq0dYnObbuplgAHxfnuqpJAsAYVAJ8ym3udaQ0kCCF+ko7
	Rj+A//ELXtZ4Ujn3wrOLQokvkWI0xsXwWy3am6oOJ7dYWzAi55wE8pi5xl/6JaBnOTmDRR9wWPm
	hBb+qw3yHb+mO/ZUXHZqXHSLo3rUUisLRQs=
X-Received: by 2002:a05:6214:20a5:b0:6d4:1f85:3975 with SMTP id 6a1803df08f44-6dd2339fa19mr73953666d6.8.1734965657246;
        Mon, 23 Dec 2024 06:54:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHUHjlXPiR8tK/MMFoP6x2egq/NcpOXsphsui195pchWCXB8kVBb97e8UecvHXUqfznd9wX+A==
X-Received: by 2002:a05:6214:20a5:b0:6d4:1f85:3975 with SMTP id 6a1803df08f44-6dd2339fa19mr73953456d6.8.1734965656891;
        Mon, 23 Dec 2024 06:54:16 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aae9a325afbsm311084866b.181.2024.12.23.06.54.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Dec 2024 06:54:16 -0800 (PST)
Message-ID: <5b1fa9a3-de58-4ad2-aaf4-f239f7c60ec8@oss.qualcomm.com>
Date: Mon, 23 Dec 2024 15:54:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/7] drm/msm: adreno: add plumbing to generate
 bandwidth vote table for GMU
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20241217-topic-sm8x50-gpu-bw-vote-v6-0-1adaf97e7310@linaro.org>
 <20241217-topic-sm8x50-gpu-bw-vote-v6-2-1adaf97e7310@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241217-topic-sm8x50-gpu-bw-vote-v6-2-1adaf97e7310@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 0ny0Ou2W8wVavUX8ZvFnNhpdHwS1HxyO
X-Proofpoint-GUID: 0ny0Ou2W8wVavUX8ZvFnNhpdHwS1HxyO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 bulkscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 mlxlogscore=999 spamscore=0 mlxscore=0 suspectscore=0 lowpriorityscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412230134

On 17.12.2024 3:51 PM, Neil Armstrong wrote:
> The Adreno GPU Management Unit (GMU) can also scale DDR Bandwidth along
> the Frequency and Power Domain level, but by default we leave the
> OPP core scale the interconnect ddr path.
> 
> While scaling via the interconnect path was sufficient, newer GPUs
> like the A750 requires specific vote paremeters and bandwidth to
> achieve full functionality.
> 
> In order to calculate vote values used by the GPU Management
> Unit (GMU), we need to parse all the possible OPP Bandwidths and
> create a vote value to be sent to the appropriate Bus Control
> Modules (BCMs) declared in the GPU info struct.
> 
> This vote value is called IB, while on the other side the GMU also
> takes another vote called AB which is a 16bit quantized value
> of the floor bandwidth against the maximum supported bandwidth.
> The AB vote will be calculated later when setting the frequency.
> 
> The vote array will then be used to dynamically generate the GMU
> bw_table sent during the GMU power-up.
> 
> Reviewed-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

