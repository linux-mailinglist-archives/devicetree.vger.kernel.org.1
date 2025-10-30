Return-Path: <devicetree+bounces-233183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BF2C1FC06
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:14:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 12E943BF94B
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 11:12:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E89E53559C3;
	Thu, 30 Oct 2025 11:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nThFwbBZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="epUANSGN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49172355814
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761822667; cv=none; b=YwBmAomU9hD6F2oF149Gq9zCqF0LgKwjXN0CrKnVOk2YvwI9gdRTdWSc0c1LPGdMDgF1Nzqg1SdiICUPBbl6x6tOuLuPt2HH4rI7lwde96gmmCrzN7PdgqkiO3tow94x1yXbjGwHVvALOOkg5bIlrbrbHB3O0tWYZdWrf0arIsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761822667; c=relaxed/simple;
	bh=fmpYylNuAJmlqFeElJjlI/TjczZxhu6sPCw11kOv1FE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tHnrgn80c/jjZ3tN1UUNzQqbdmN9t1vgiRmN+bOTqBon/u7SLSIKVzmKVkCEU0EwRaGSDL2tDSULBq1wthSHBUK0Erwz2GzTxU2Rr6ezN5IO6eTWY6rk31CeUKDQeR2VAT4JuwtyogAdpMSmRvSxNrb2vf/uffOIfC5wFHq5UG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nThFwbBZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=epUANSGN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U4xiML2623048
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:11:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pMFfKO0Arp0PpNimZso6vlYJl8HCzGUjKA9UJmqi2NU=; b=nThFwbBZy2cQM/W5
	oRoiDY405VdGO2Vkvb0AqjtIBcZu3hq3bA7hygdxWe/1gfZoUKEdVlKA1StohLJL
	Y9KfWfAI4DqspPbqqQjwPb4NHlZZbmF23wOrbExYNBssSiS0lvxJiymZXPOLSW0c
	gIc65glDS7BG/jfdZo5+xPpvNpVvj3LxVOn7XyUPKI9BDMss8nusbEWJb37fZGEO
	b+uLw8yt1mMCdFZAS59gVplKL5LxyfwjAQe1dVvwSCcjOZS0WONJMAZCgRjSHBbj
	UxfNul8NOMp5PBARG4N9KyKhwMzs0fxXr25QSVGguRU3QCAHUn61AdI3zfl6DRP7
	+LpeTQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a41fxh298-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:11:05 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8a223d563a3so25392785a.3
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 04:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761822664; x=1762427464; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pMFfKO0Arp0PpNimZso6vlYJl8HCzGUjKA9UJmqi2NU=;
        b=epUANSGNs8c3D1adMBAl8sQFh4Vg6y+ce5rSwh4nuBDY1PuAGXe2IZsOVcCa6h5iv+
         fSBtGzX7rSTVn/ha+d9j2JPS+0LNA+WpYRtSv23YVMcR8KdsXn2zFp9oItwt18SH/6A4
         QzFem6L8BrCqBJsmzeOVr252ECySFTLCViH4nmKpCy47RZtrX9ORCAR1+ZaXnCnAe+P5
         /WepDqCB8FmmbUopMNXWc3dLG7WO0fCPv5B9BYXJvlHCRmsgpd6J76H/fV/S75oFuQVp
         we8UvMQwipTb9UZJskeokd2p0L/FX/GhWO9bESq31MCLorPixrGi7ZWOLYsXYs1Ivaow
         YFXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761822664; x=1762427464;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pMFfKO0Arp0PpNimZso6vlYJl8HCzGUjKA9UJmqi2NU=;
        b=N0osg+dWCiOIsvj2hccQ8mYQVONWUuHgfhi5TH+7Jer+dUvPUBPZgWDSYsO94tglox
         k8PwIcan131j4qF9eabdjY06J15WKHH7iEl0Py1gvBXQTj9T4z0gEbqiNKWo3PyECWMl
         MJbPCxqMGx7S9EBOY94pyugRGaPgAg9MHvnqtub/Sl8NavEqO3pX7tnvl+GUXAPgZeOe
         7/tFcjZfRcC0RVHRIpY6q75a29Ma1b2a/IlsH2RxPqQunu0sWCmlsGN5xp0uehCh3ZV3
         HKCo69jZ6k7lTeGmncTS2tP7UHBfp6pZgUz3Giq3c9N1IDePWdh5+HBaPlX4HMmBBMxx
         MDuw==
X-Forwarded-Encrypted: i=1; AJvYcCV3EMDhtmueRHpa8eEOWaoSXDnEAUbRGhSd8Ztv7jK3RhCV/ytk03Bn3THRO44hNI16Zj3U+9RCsE6H@vger.kernel.org
X-Gm-Message-State: AOJu0Ywa2qG0NUT8MM68BoxmiZyLpLXirmC4LM5zcr6pD573rg3+UDmb
	fiUdKbHfUGp2J3ZQ6Vc3om7sQsA3kAvTSUERKipQQ6KjUcnrhjB4amUZyAjRS10klD0BWXeQ+K/
	3FG/AW34FRnHBJYXFDchlD8jWDZbDPsqIj3D+Tg59vJAI/epBwV0tICFOBBp3K4fw
X-Gm-Gg: ASbGnctJkoEYz9E1Yq321aS6uxTdrr8BsfM4DNRptjCta2t/sWttNhYDWO2C7cMKtbH
	FcazMfJmmQdcbieu2Es4mRyQXGb3vudkGn27Dz1qy0IM/o7nOj7kLTkaR3g+dNjM2AcYGBWOeHI
	J2I4N4YvloynQuHvzUezHFVFc5F5+skTVD3HNqj1uYHUS8sVnLB6nhKeln99ApY7ZTup2PnruCx
	DGkDBKtP4A04ZhqPHjTl1v2QXPpIBkouvgfZOLdyOng8emiJa6tEn2SfybU9wFybvISdIAjV+57
	rYFfAMVXA/pOlZI6O88c7+E/gBn7hMGh5pxPg2AVlHmoufy80fTzlf9Jvhvsa2/pKU29bY0C5RR
	8Zve4hqXqQ/Z/CLI7FfKNK0FVyEiprTzYe2dnwonMQC/wtm3wW84DEf+P
X-Received: by 2002:a05:622a:93:b0:4eb:7dac:7b8d with SMTP id d75a77b69052e-4ed15b96605mr49603031cf.6.1761822664427;
        Thu, 30 Oct 2025 04:11:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFpFUZiuil/RskYfXLfvvpxx+bsyR91O1/o4OpX8j5gRqT/vHxdsw9YMsVYiyR8GLWNDVwovQ==
X-Received: by 2002:a05:622a:93:b0:4eb:7dac:7b8d with SMTP id d75a77b69052e-4ed15b96605mr49602671cf.6.1761822663942;
        Thu, 30 Oct 2025 04:11:03 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e7efd116asm14888487a12.33.2025.10.30.04.11.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 04:11:03 -0700 (PDT)
Message-ID: <98da2c17-764d-43db-9b13-d950078ba41c@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 12:11:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] clk: qcom: ecpricc-qdu100: Add mem_enable_mask to
 the clock memory branch
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
References: <20251024-sm8750-videocc-v2-v3-0-6286bbda3c8e@oss.qualcomm.com>
 <20251024-sm8750-videocc-v2-v3-2-6286bbda3c8e@oss.qualcomm.com>
 <102d9042-49cb-4aff-8b93-a882ed8da27c@oss.qualcomm.com>
 <e308a74f-1724-48d4-9d1a-fba6d06a29aa@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e308a74f-1724-48d4-9d1a-fba6d06a29aa@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 0eZoOYi-oz2cvxcBvvEYlTTF-23sN91C
X-Authority-Analysis: v=2.4 cv=UJrQ3Sfy c=1 sm=1 tr=0 ts=690347c9 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=YgdUf8-DBacfkLe4iqcA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 0eZoOYi-oz2cvxcBvvEYlTTF-23sN91C
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA5MCBTYWx0ZWRfX2PMD3rQD0HQN
 iM087StEpLgCdD94/AVPcjgiD7lHARknvMn/q36cAZcQYyJUpKB2lxhSD8qqlUKwqktBCSwfZIq
 ann2dWi99fj4jC/mrBOdus0myKJ4I9Kr6v9h951Je0vJSQwPbeEug7117vs+v82ixlo4tsROYRN
 zdYS6eFYdXGq02Lffne+q/e4ebURZGfRLPxdEGGaNXXxBxcjCKSSLGSAZs/zwzPTQvP5fI4r+Mv
 KTNObJNqEFYv/buTJE8npQK00JOowVCLbrSj2wkJu0FkEBetBL90hbi/QQ5mrjiXK8qch9iVM6g
 s+ihqHSNqgsCgRYw1zs8IRJmKxikd9d5HsZzbSuOKZopb0qFUQd0KPK9meBQAAhtFQ52ageHKyH
 W2I65n8XsHYlPNRzxt/7n1k2dbuf4Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 impostorscore=0 phishscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 spamscore=0 suspectscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300090

On 10/30/25 7:24 AM, Taniya Das wrote:
> 
> 
> On 10/24/2025 2:09 PM, Konrad Dybcio wrote:
>> On 10/24/25 6:24 AM, Taniya Das wrote:
>>> Add the newly introduced 'mem_enable_mask' to the memory control branch
>>> clocks of ECPRI clock controller to align to the new mem_ops handling.
>>>
>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>> ---
>>
>> This probably fixes some ugly issue, could you please mention what
>> the impact/problem is?
>>
> Konrad, this isn’t an issue. Previously, the ECPRI clock controller’s
> mem_ops clocks used the mem_enable_ack_mask bit directly for both
> setting and polling. However, this approach didn’t apply to newer
> mem_ops clocks.

Right, the videocc patch you attached makes use of this. I didn't notice
previously.

> Based on the feedback from v2, I’ve refactored the mem_ops code to
> handle these cases more cleanly, which required updating the ECPRI
> clocks as well.

Please split the changes into:

1. add new struct fields, explaining the reason for the change
2. update the ECPRI driver (so that when the next patch lands the func
  isn't broken)
3. use the new fields in clk-branch.c now that all users (just qdu1000) have
   the required data filled in

So that the platform remains functional at any point in time (which is a
policy because it impacts bisect)

1&2 can be potentially squashed, potayto/potahto

Konrad

