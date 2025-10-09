Return-Path: <devicetree+bounces-224811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 64497BC8202
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 10:51:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 53CFE1897906
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 08:52:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 781942D3207;
	Thu,  9 Oct 2025 08:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g6asApzf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B51A12D1F44
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 08:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759999903; cv=none; b=HRLOaE0VcWO/1ESbswKheuBBhRqOIxeGXMUV+x52UC9OCWOO+hEmW3QFg/y5NOK7cyV6OBljTvLmdG5/nl6vRti9i2U/aQkPyNkPBNg5oVrMK2MkFW3pno1KNws0NZoNsK/XOyUAUW2WppRqZf0hVULy32QTdSrx1CJZ6uYjPXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759999903; c=relaxed/simple;
	bh=QX4v4DxhfkvVUvRBSvFp2IiBTV7+8gg+zeuRWNyVCe4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=An067WM8RJK1hHvPTJJL9QFQgLJO86WBd4fGOeOVG/VzDS3z5OO4HvKb/4yug/ljQkyhdBV8Gi9btJRqUkgK1ktmXyEeDeBPNN80MP1fSqUowAnEC3K8cH286WGdZFNnkn/nK1KEG3QDEX45rmp+hFRyyQcwOEo5yGZL1EECHdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g6asApzf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EIHv022299
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 08:51:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rozNwP9rNVxJdTGVPBs6oK2WCT/2tAO/uW1pQSfTVxU=; b=g6asApzfeKmK3zLb
	wl//PB0rnxxAAX8m5sv+CLKGbSipro+ye5sHZr8Z5NIxdtKNP9/TDb9EFWeAz72m
	ejccBed6/GW/q8T72DY7ps+OE4IT8hICP+uHj3ZlapAZ291LsDX6SZTzXtWHIcWr
	H99zwm/DMUKXiIlE1NHBJMKebjumVwQknEGuup3lqjBaMoWuKt6SZEtqmxr9zJbu
	vyoNeFzLoNVXfXaO2sWYHxkN0s1iGDwgFsHpvZ4b68/iu2BCeGQmnfc6LFSZZpEw
	+6myKfy1NMuu7oGtUTB+icHtMBtOfOoW+ka7MKoGbNLvVbYKzt5dSiujbfwqOm1Q
	k7TlKQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4sj3tk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 08:51:35 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-87bbee3b92cso333146d6.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 01:51:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759999895; x=1760604695;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rozNwP9rNVxJdTGVPBs6oK2WCT/2tAO/uW1pQSfTVxU=;
        b=rhIOADSk7RNW5FM0OxJLvgTmK2JHwKJ1d1f+UXTrZ1xtuJ6XB/fGU3vv7pXSdJyxEZ
         ahNiAS9RU2ENDBFU5PM7OIQs6Qy/pQ7U30O78RyesFM86YD8t41I+NPBH5+8oHRraeDO
         i6RWNbpegBgvvSZUiT2p/Rl2YLg/9gDHFIiFj48OkSMP1iRWPVee3/47a3ruRQe4Lfos
         wcJnyOonuFyxAJMYOhU/cNhboaBX6cmFkajgQrrtx2ax7f/FOEUQcLmjH1ENLbqfTMDg
         OxgN5tJUVAhvkfyopjogdN1sjdAVV6htYkPjLgM3ju5qR8+eOoiO61M5q1/3hDNAHLLz
         rIdA==
X-Forwarded-Encrypted: i=1; AJvYcCUmm1YXRjB2eWwTv/s7htqnmNkdRaQxCipHZmoTFV20QD8n7FYDgsy1jihuJ1CJNCM343pXP3QE0Ejy@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1vDMEB+8IXdp5jekGjzLUpEme3DD65UY2CdHBtVE1zRjPGV5L
	xSSezhdBc05PFvOc22dnNZzJqTEM3pdPvURlM0911KFkaN1kCTESaAi3x++z3BTtHT+PfDfcscc
	thqsZb10xdzJfEPF1kDLdjHqpOyzjiwN+SPNj70993LLF36ZSehyWyj9TeOfMetvS
X-Gm-Gg: ASbGnctn38P2r2iVbhYAf0xUfGSWrm6mfU0fbec0iJjzDtqTTgJCNYQM37DwYE0HbAT
	Crz4MY6A/E9oXdY4SusQAOJqUuQ+fKqKfaW/K/BZcS0VzYFLLGqZYB7rlgSyh2TVZoGRWeIp4ip
	gA4epyjlKEy/e1wEzdH2cQ0wZOhRPDV+AZIntae+Uv0ila+ztPxxSAUEovwgQdisI1GnBiKGrhi
	Rfe1QMXWVZms9naReMUW2uurhlc5EuQHENAOm7cpSEbf7KgIpNdCaG08JlrG3EEUL1/25MVcK+h
	CJoeqBRd9ORagpf5yf7X+nPRnBwuKQkb9x9ZPl3eVPY/GoBQnULgZihMGtNOdsQ6PtzeLsG60hB
	jUWktr32Z5Ns8tOcfd/4dz+xXnMM=
X-Received: by 2002:ad4:576d:0:b0:87a:a954:4073 with SMTP id 6a1803df08f44-87b21027da1mr56827886d6.2.1759999894536;
        Thu, 09 Oct 2025 01:51:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEdr0m1qJjPCGx95tl5+kQQ8Lc5k1Lvq51C86DjFACuanr/UCQghW1BHHi6401yO2k5MyRZFA==
X-Received: by 2002:ad4:576d:0:b0:87a:a954:4073 with SMTP id 6a1803df08f44-87b21027da1mr56827646d6.2.1759999894039;
        Thu, 09 Oct 2025 01:51:34 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-639f40f23f2sm1850757a12.38.2025.10.09.01.51.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 01:51:33 -0700 (PDT)
Message-ID: <74893f76-1b7d-4cfb-ba7a-9fd64427762b@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 10:51:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/7] dt-bindings: panel: Add Samsung S6E3FC2X01 DDIC
 with panel
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, david@ixit.cz
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding
 <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org
References: <20251008-s6e3fc2x01-v2-0-21eca1d5c289@ixit.cz>
 <20251008-s6e3fc2x01-v2-1-21eca1d5c289@ixit.cz>
 <7askbazrkbny5jlw6cpxcpjyw5nyiozmksoyj5b5momcc7w5hn@r3x6kddatf3u>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <7askbazrkbny5jlw6cpxcpjyw5nyiozmksoyj5b5momcc7w5hn@r3x6kddatf3u>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: _8pPKmxCZQPJsnTXpMVWQHUvd0SKyqlS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX/t/RXC/zx97d
 wQ5nrQ59cNtYo56xvbiUX/ILZCeFvVdtoxXGkcSxv+Igv1R4Wpo2KxGv/SFbUQJHE4zthl3ygSq
 Jv6f6O7AUnc6BIQnuG8C74mWu+NtTSZ7FOmsE+yIDURw7oHbSl7D47EAeHzttMSYnO3Wpm6shSo
 EN705z8RG407jbuxWiRdBJg+1jcAuJprBJ7eUV9UJczgPmtvHYE1T5Z78KQvcttO2KWHPr+9g0E
 10iaqNNk6ErLC6hUuMRd5L17JD3/UCspciGGaJneGKFYS1TZLQzJAE+rpudTRCmG9zT48b+4l8z
 YRgfOj3KxFs7L5PWhVif9iiK3EyjqKyoXuUUhzMy5h3T2exO3yw9lAeTcfUpgk9g+CELibwrNGP
 Sjd/PeZ4awpHYdNqoendDxuZP+uR9Q==
X-Authority-Analysis: v=2.4 cv=SfL6t/Ru c=1 sm=1 tr=0 ts=68e77797 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=LME89Ewccn7mWiF1t2gA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: _8pPKmxCZQPJsnTXpMVWQHUvd0SKyqlS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On 10/8/25 8:57 PM, Dmitry Baryshkov wrote:
> On Wed, Oct 08, 2025 at 04:05:28PM +0200, David Heidelberg via B4 Relay wrote:
>> From: David Heidelberg <david@ixit.cz>
>>
>> Basic description for S6E3FC2X01 DDIC with attached panel AMS641RW.
>>
>> Samsung AMS641RW is 6.41 inch, 1080x2340 pixels, 19.5:9 ratio panel
>>
>> Signed-off-by: David Heidelberg <david@ixit.cz>
>> ---
>>  .../bindings/display/panel/samsung,s6e3fc2x01.yaml | 78 ++++++++++++++++++++++
>>  MAINTAINERS                                        |  5 ++
>>  2 files changed, 83 insertions(+)
>>
> 
> Please also describe, why it's not enough to use defined compatible,
> samsung,s6e3fc2x01. Why do we need a separate schema and can't use the
> panel-simple-dsi.yaml

panel-simple works for 'dumb' (perhaps a harsh word for 'made with
just the in-spec DCS commands in mind') panels, but Samsungs are
widely known to require a ton of vendor magic

Perhaps the original change was made with an "oh it just works
surely there's no drawbacks possible" attitude, as the panel
was left initialized by the bootloader

Konrad

