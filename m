Return-Path: <devicetree+bounces-166585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BCCA87BB2
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 11:18:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EF3A11890C15
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 09:18:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7BD22620D1;
	Mon, 14 Apr 2025 09:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IVhNOIRC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBDE525E81D
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 09:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744622287; cv=none; b=iwxIVtov7ET+GVH6p1GX/i3emsmS9+7RhRZ4TJyg5k1ij4Lq9U7lKRuc8ZfTrP0/FBKa1JUtqgccUpa7ClwCMn6ZEwmD8/fuw/v3f7Jh5q3kNR5FltWYOpGFhYpCy5Ne5vsAN0w66hvmusQY7L0M9KOTgbB6jhrapvo1LWVOU0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744622287; c=relaxed/simple;
	bh=b8gcyIitXwq9zfPGj1TTyeB6iiYH/NPcTALQqB5eb88=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E5uh6ze1vHlZwsSopw2nkh1R9Dwqi4LilYAzR8tc+nLBY2mu6YXGWYhjPVNLggIdeiCvdsXMZOfmwc5li6kXEXabpL5oqVqS/V4CE5BM+ZhZJZ5AKZoghdtn8JqjEz0YbRmHOEybvnmcBHqxBjZqoCdsENRWVIY70L5R9T15VEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IVhNOIRC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53E99qgp002930
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 09:18:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9n6fUwx7dsdIHqmGM9lTq0LMxBs5RvxrZgMfBBeiHZw=; b=IVhNOIRCd08r00/4
	Xq1isB6u2/D2jXogCcMM9qAiKSwQHsiU2fEq7dqq6A8oz7sP6iMEjW5kSEyXbX3Z
	1KrJjn5sBGMmr7QoVGRdji+qi6c/hOQ7nro/EHopuFstrTVVJTWG0Foh/Iy8JN9/
	Hd2FKJs6kZCy1V42LvA6TjzLMB9abrdm34/+mI3hyvfgbs3TtD1/5/8HgV3jeRaF
	sqC9qOD6vVDvoG5Alf5gFK+/HFHO3nGlaQ9DBthp4fL+roPuhH+oh32m4mISWf2D
	KHpa/HQDNcQ8a2C7amplFyrG7m7P/cdhwY77OSYEp5jTuPPezBmqLikd8zf9Zs+y
	ilXYVQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yhbpkv4f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 09:18:05 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6eeeaf707b0so2556956d6.0
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 02:18:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744622284; x=1745227084;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9n6fUwx7dsdIHqmGM9lTq0LMxBs5RvxrZgMfBBeiHZw=;
        b=htVQINAFH6FaUJ5wrSTbIXTgwc3unlQxjDhxEYNaLPCCZ5olbsn9hivB9m9RD4ZwFt
         bbIl3BoB/7RT855tP+dRqybtBX9iiKcz6bBXqkUy/eV4iCSSZ8umldzsjDYoWZgDlgUJ
         B/0LZh+rRbMLwevAvSysjBZWBawLyfzzcwdlXVxZeW8IdboksxSusvMgHrInTjK36Idi
         CLoSfXBhRu9N1DDPuhcB0XzUgrJzThyfiquk9AsMCBrrEhINcnfd6sosTkkWf6+UWKyA
         eGp/271FEMy6LUImW3e/lxn2X5xxNAUHciVTSkeb3FNscSv7yL62ndMdiB0nl0YLsyAW
         pnuw==
X-Forwarded-Encrypted: i=1; AJvYcCWomEpiFIxzvxqFbJFfHq4pDEEQK81c57lO45WPtRABxvDNPaJgaYFT8AAC+DI7NkcbSBMX/WGY3Cxv@vger.kernel.org
X-Gm-Message-State: AOJu0YyHsWVjsyKIriLyHgHniibYRS+2SodmpZT+xyLQzq3vRKJFOy1i
	+5X4ArT7YAAbt1TRYlbMkIG79Ei4TRylJ/SWzxrYBESj/yuT/hnPHjJuXK0iLHkVysIafwNyaZr
	zXanHjoyKV4qtJZmfJ4d0M+CrLCtIsF07lehBrS0MOAo9CgxQyhBBddy+T9rC
X-Gm-Gg: ASbGncsloHWwDd9YXnm0pVhncIHErXw/mTVA1GVIE+8A6RQiJA6pRHiI+N56JrLeptq
	KGR3byNSAu/Icdgu20dXBTMFiY8oSvwhLdCnMfF7dodCidGtXLv8pgsvKkWVxHUnWLLFMucDB/6
	hcaZwptNE7nGmkPsAQUSEVd92k6mj4cqBrfOpYnBVJr4gL4ylPoLBCsRmKPnv7ZeeUOv6Xs+600
	iDiMubww/gxxkcWvnQ2yd7ii1khDp5f8LWAtORGtehaW5O6DATIwwrAo+oPXp+9vXyWuE8f47OH
	SWFxYF1izOlklc6VLMPTC3iB7y4cKRdrdPqEezI5KsOfgVEPD4OwxQNQMxT6jBkFLg==
X-Received: by 2002:a05:6214:627:b0:6e4:29f8:1e9e with SMTP id 6a1803df08f44-6f223228651mr69610246d6.0.1744622283540;
        Mon, 14 Apr 2025 02:18:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFluLUS0n50qcCegrTq8Pm42HzMF5shZXnI+wDunODqc0e6WM8+H5gnO9csrzFiy43bwKo2CQ==
X-Received: by 2002:a05:6214:627:b0:6e4:29f8:1e9e with SMTP id 6a1803df08f44-6f223228651mr69610026d6.0.1744622283016;
        Mon, 14 Apr 2025 02:18:03 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1be9152sm860014966b.42.2025.04.14.02.18.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 02:18:02 -0700 (PDT)
Message-ID: <04ed2ec1-9393-4d02-b7c8-54d6b0aecabc@oss.qualcomm.com>
Date: Mon, 14 Apr 2025 11:18:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/3] Add Qualcomm i3c controller driver support
To: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        alexandre.belloni@bootlin.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jarkko.nikula@linux.intel.com,
        linux-i3c@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: andersson@kernel.org, konradybcio@kernel.org
References: <20250411113516.87958-1-quic_msavaliy@quicinc.com>
 <eb6e8452-db37-47f7-9265-fd47d4cb69b8@oss.qualcomm.com>
 <84c07b53-a564-4c71-b172-676303700314@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <84c07b53-a564-4c71-b172-676303700314@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 9aEfHSl9eJ3lt54T6E1mMCVEMR-V06wc
X-Proofpoint-GUID: 9aEfHSl9eJ3lt54T6E1mMCVEMR-V06wc
X-Authority-Analysis: v=2.4 cv=I+plRMgg c=1 sm=1 tr=0 ts=67fcd2cd cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=Nc8cXWw94qvZg0M5jZYA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_02,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 phishscore=0 adultscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 bulkscore=0 mlxlogscore=999 clxscore=1015 impostorscore=0 malwarescore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140067

On 4/13/25 9:28 AM, Mukesh Kumar Savaliya wrote:
> 
> 
> On 4/12/2025 4:50 AM, Konrad Dybcio wrote:
>> On 4/11/25 1:35 PM, Mukesh Kumar Savaliya wrote:
>>> This patchset adds i3c controller support for the qualcomm's QUPV3 based
>>> Serial engine (SE) hardware controller.
>>>
>>> The I3C SE(Serial Engine) controller implements I3C master functionality
>>> as defined in the MIPI Specifications for I3C, Version 1.0.
>>>
>>> This patchset was tested on Kailua SM8550 MTP device and data transfer
>>> has been tested in I3C SDR mode.
>>>
>>> Features tested and supported :
>>>    Standard CCC commands.
>>>    I3C SDR mode private transfers in PIO mode.
>>>    I2C transfers in PIO mode.
>>>
>>> Signed-off-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
>>> ----
>>> Link to V3: https://lore.kernel.org/lkml/20250403134644.3935983-1-quic_msavaliy@quicinc.com/T/
>>> v3->v4:
>>>   - Dropped "clock-names" property from dt-bindings as suggested by krzysztof.
>>>   - Makefile: Correct order sequence for i3c-qcom-geni.c.
>>>   - Indentation corrected around print statement.
>>>   - geni_i3c_probe() : Exit with return 0 instead of ret for success.
>>>   - Added sparse annotations around i3c_geni_runtime_get_mutex_lock()/_unlock().
>>
>> So this is the third time I got this revision in my inbox, previous were
>> <20250410084813.3594436-1-quic_msavaliy@quicinc.com> 10.04
>> <20250331164648.2321899-1-quic_msavaliy@quicinc.com> 31.03
>>
>> b4 should be automatically upticking the revision counter, please don't mess
>> with it manually
> Sorry Konrad, i could not understand what's the problem or what you are trying to say.
> 
> Do you suspect something (Which i didnt get) is seen as manually changed ?

Yes, normally each 'b4 send' upticks the revision counter, but here we got
a couple submissions all with v4

Konrad

