Return-Path: <devicetree+bounces-198120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 48601B0BCC4
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 08:39:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 29F0C174A4D
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 06:38:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB73227935A;
	Mon, 21 Jul 2025 06:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BDRFiugy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E8321D581
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 06:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753079895; cv=none; b=clS0GQ3lgAWkwYxu4muNGa9lEFBDJ5UEKU09zfI69LYC0ZbRJMNMecpjs0AX5c9SFz/ifO5oN2RuQvc5OOjniBibCLGde1wh54GjUVI3nglD9/gbwEhhM0ul6cdVaoMvAJl7RuOf1lMtSXdiUqJZ2+s4kC68JAuZqFFmPO97M4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753079895; c=relaxed/simple;
	bh=ZcoU0TGwdamvkaiI2FBd7ECUaQOwGpBw3EYD+sAv8S0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ODZdtLah57CLGy6DNcjJ9kHzQT31zIqYZqFgEJAzWLIOi5JIr137yIK/5sJus22kK2+di5WJQXpELs7L+6pRGBpLxskRBcc2NWyRv3o2RaMRel4yOdv1lRb1jkHx1RKIDYVMufH3Q4DTIcUaYXLInpfnOVW+mUKgtx0wVJZdVpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BDRFiugy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56L40hbA000610
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 06:38:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZcoU0TGwdamvkaiI2FBd7ECUaQOwGpBw3EYD+sAv8S0=; b=BDRFiugyrqxv3i3i
	FgVP9TWHbvtVHHPXQ+WMfOkJp6KGmLgOn2C+oThHXkr/ldbeYRzjvW9IVUCvEmZa
	lnWWvYBLovX8LFWkxEeQ6BErK6kSQ51grGvDtRX7bVxeZHm//AqE8gIR2OAt7qEl
	FB1hfvJri+SSVfKjCFWUUbN9/duOdQSzrL3AlCVwAfuMqsZ2aW4qYedStdmbOnYS
	iZPzROKQK9ZjkxbI25hTq4ZjEkH4qksPcgfayRBtEEnWksdDL1Sd1Y4rXubOZYca
	1qmDol+rRgOOt0ZedsfJcCo+9ProMn6lLbsR+0lqEfjI8iirlovbgHEsO/q4XgG1
	rfRt+Q==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48048v3kyw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 06:38:13 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-23638e1605dso30096755ad.0
        for <devicetree@vger.kernel.org>; Sun, 20 Jul 2025 23:38:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753079892; x=1753684692;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZcoU0TGwdamvkaiI2FBd7ECUaQOwGpBw3EYD+sAv8S0=;
        b=bGaIff/ZiXD78MTS1SEUQBzZbM3+YtvZovq/CqokZLbOcrnXYCpqRxLR9c4o1fVnVt
         mnlL/z5yKevD476a6LLA528/xar5F5q3Y+tOysr0UTofqNV6OzbBKCyzdipb/HxEKXAB
         7F/hTPj295YcmhBEZd17ApGkaylyNCiOzw+8loaIr0JPdFtdk2kmuiEnNftVudIqeCGO
         mIbW32qp6H6Yy1HmtugfkdCiEZVSPIw39Zs3CTlmC9InVf8Ssooj48Rfd4SIvtfrPayY
         hhRQtmzVQdzQtC4HlY4d0xtQgqhxh0fFlOnQ3m9ADRoN6XdY6FSogysIIAxx5pUDiqNd
         2GTQ==
X-Forwarded-Encrypted: i=1; AJvYcCVTSKgXrbiqL2rbRj6+bY8BIpIiB2UJNBR+bvSBa6LrXL1ASSrmRt+KAqnfMI1NVvlEW5sxpehKinIC@vger.kernel.org
X-Gm-Message-State: AOJu0YxSLalK8Za9q9Sg86xun9e7z6SM4Di8HJZJaf6ZT3ui3WD3h/Ij
	vtlMf1vP5k2i3ZhnBU79RvlQEN30uQvztdjRICAdCWMrhActm/ssuCXFl61U9phkYnzf4AdyZfH
	FE+zRXDjyhr5WAbfY3HFPSWY8qKnsZG0eL3SYu9IrwccSS9Sr8h82YX1ZsyPtiGfe
X-Gm-Gg: ASbGncuYfXAP66F5Y3wZMYYhyaItlKK8NpwLBhoS9GIjenVDU8Wgnye8rrHhwCug9BX
	EYQzp1ZfYuKX4Xec7X0L8wTvlZiXGRYuHBi3VSBdv3ivse5tIzpAwdJjDPNucKTpVSPlBm4mwRB
	4eSWCHfBYphS9wZqQuBWcNDweOOJtVX4uZEudCMRyYPQCbeC7sWQBpdAKm2oi4H+GWvcakTaETo
	6jMx/LGrx0kJbNJT9stFu6SXGztQXIh5YNTIdR5KQSCRCzQRF8WjOg9sckLxKFjPnU7kRXMZZ1A
	cLofpoYsqkRthbPWs+sct1FvQLDe12thm5qmAZyUPTxnURHJYLfhIrRVl+FnJxMU7HfiPIzmBod
	tQy9LUoWy+Uqyv8PmaXePNH3etFv2mL/YA8KCnpr49XdTFhWjxRa4
X-Received: by 2002:a17:903:1a85:b0:234:b41e:378f with SMTP id d9443c01a7336-23e256b5f80mr272335705ad.15.1753079892323;
        Sun, 20 Jul 2025 23:38:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEJPo/UaVeW+EGlYevcpLuFgKAeIRLV0gRofHorAuBZ0G3Vhe9/bgkD/9w7yL17PZR7jZP6Aw==
X-Received: by 2002:a17:903:1a85:b0:234:b41e:378f with SMTP id d9443c01a7336-23e256b5f80mr272335385ad.15.1753079891894;
        Sun, 20 Jul 2025 23:38:11 -0700 (PDT)
Received: from [10.50.52.170] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23e3b6b4de3sm50912045ad.111.2025.07.20.23.38.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Jul 2025 23:38:11 -0700 (PDT)
Message-ID: <ee2f2d91-c18a-44e9-b048-10cab911e65b@oss.qualcomm.com>
Date: Mon, 21 Jul 2025 12:08:06 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/7] Add support for Clock controllers for Glymur
To: Krzysztof Kozlowski <krzk@kernel.org>, sboyd@kernel.org,
        mturquette@baylibre.com, andersson@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_rjendra@quicinc.com,
        taniya.das@oss.qualcomm.com
Cc: linux-clk@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250716152017.4070029-1-pankaj.patil@oss.qualcomm.com>
 <bfe8b558-444d-4fa7-9e01-e55aaf48f2d2@kernel.org>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <bfe8b558-444d-4fa7-9e01-e55aaf48f2d2@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 4RNZxr9QzXGo-dfQYIMs7JMjTFzGlCEm
X-Authority-Analysis: v=2.4 cv=SYL3duRu c=1 sm=1 tr=0 ts=687de055 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=8bVFQ3Vb14ZConFL0MkA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIxMDA1NiBTYWx0ZWRfX5p3b5EAPoCMO
 lrgjpLWZbmmC3tX961AcfGZUbgVKNQo3qifz2hXHeClAkSKer+3VojjGrO3b7BGMEQ+9mNyQ+/2
 e9aFY9eGciS8WvlIUbGBWdpyeMqojAHhtIbnB0ddD/0yoPmNCcxeEEo5/8HTs3k01OlYDzExRIg
 d+a6mPv8n3x7Wz1pEXccmqHkmNeMhn3RhvlT7Om+9TXEmjLeq2vaLPGRgH8DtKBUHITi+IrUtXI
 2Q6juP1inUNqR9RfSxT76Wj5x5+tU/k5JL59jztabN6iUOJoJY1f4PDiGYIRftHZ6MPAfzjzzFg
 D05WEnvh6SAZbpVSzLVI7hm80rkQ0z9fhh4Nw0ZzoP31dS7/5t+DtAEcMzXfGHwFo36Nt3OEKUg
 AcktIspfRJJ88bA42htTYj/347gbyHdJ8vMXAT+6aohCH5WZscQPGT4k309O9qclfgYCpK8W
X-Proofpoint-ORIG-GUID: 4RNZxr9QzXGo-dfQYIMs7JMjTFzGlCEm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-21_02,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 mlxscore=0 bulkscore=0 mlxlogscore=981
 lowpriorityscore=0 phishscore=0 malwarescore=0 spamscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507210056

On 7/16/2025 9:42 PM, Krzysztof Kozlowski wrote:
> On 16/07/2025 17:20, Pankaj Patil wrote:
>> Add support for Global clock controller(GCC), TCSR and the RPMH clock
>> controller for the Qualcomm Glymur SoC.
> This is the first time this name appears, so if you do not have
> in-flight board bindings patch with full description please say some
> words here. This will allow the community to understand how this maps to
> other known products, of which 99.9% use model names, not internal
> codenames.
>
> Best regards,
> Krzysztof
Glymur is the next gen compute SoC.
Will update the cover letter in v2

