Return-Path: <devicetree+bounces-223178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 505F4BB1E82
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 00:03:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0637B3B2484
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 22:03:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00F8B28002B;
	Wed,  1 Oct 2025 22:03:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZxrmdRFG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3B42B9B9
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 22:03:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759356206; cv=none; b=cvZ3j3hkxi6HeY1tt9mxO059UjvuTAYL7cgGem8q6ooqyKJh+oWvQprNR5oicwieHkoP8j5aAA8yvJ15posHuMoae2iLrCe6QDrP8L3g+V54kM/+nAipEMxHV9MJsvEBVLrSxzOF5sB3Zo7SE5zbXgR6XtokK1pmHMy52bUYtZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759356206; c=relaxed/simple;
	bh=Wk3bDUu2YaivOtdBdtxYhxbK12TT0/NrgvBoRljOs9A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nrOwsO89ae2qw8B6CbCAT5Pu1nWq39phlYd4zMnQCV0SPSK1JIEe7MzFi9Dc5VTmTjVeV9jjHffMOGbxMAbYia/gaDYz+FX4Bx8D1O7mRPVo7SOgIBdhQx5935tj01O5p2xxp/I4gge2R016r0MEwn+TCm2sdjZzOL18GO1VMrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZxrmdRFG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591IcDXZ006059
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 22:03:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xujcu6su7xsGlY8taylppAEs36Y3vIRtnieSXdVrg20=; b=ZxrmdRFGxgETCxR2
	KDET9JmODW6PupEOkcuQFKC0hHOo2JvLm5agcGHLLk9DJzxXD7EjI+NocnNB8Trv
	y2qTIXBY7hG+59YyTrpGUWIZ97AwGd1ndFdNiuLQc5sBSRB05yBjZlwemER/JW6f
	eKFSogMw5WY2GSPp91KaR2+EI6k/Itmu4+hUHsMPWrHu9GXR77eRwkdwoALRFDg2
	O6CKJBmMaHUX2nwQdo/33wBAE6Bad6XdNG34oiemZSXvzxneXS8kxAR7dAO5ch5h
	lo8R6+6G/NGLPzpge9CdK4ExhZFhnZhJjhI6Reyfyh/UccS2gA8LhXhfOMqR+op1
	AjMrUQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8pdnrar-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 22:03:23 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b5af3efa195so1266852a12.1
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 15:03:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759356202; x=1759961002;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xujcu6su7xsGlY8taylppAEs36Y3vIRtnieSXdVrg20=;
        b=rJ/Tc6/rKhDbgJndDqkzILRf33si7nmvt9wdsbWQ2bGioidE27K3ZrKxZlnZaRCeQO
         arpvqhzrUCTDiskc3amZQyEzZtNhYi9iCdPgjJkNMQmE7e9LYnyQnsWBkzb6e9OplIrn
         rg3UfkKBC4r6F1BR8UPrQ/zFvQ3LBmK8DDd9OzfM0FzVoE/yZMJa8XnBTMsbi63HdKgW
         tuduZArsFlcHj/RDUoYemPsi2Bln37vPrtIPUYtv0MMJAwhScUGnE4PaJjgtlUVDVce2
         3QAygoKoI8yIebS0IPLkF/VP5fjgqko2agOBC5Gq22jtrxxj+Vi5RvFtV6Yc2GSyrHjW
         AbMA==
X-Forwarded-Encrypted: i=1; AJvYcCWYKQc3mL/cwSGoSKu+8XKDLPIHR8+BxONF/3oTc4wPWqSwuRAyxP44Z4Ul+EW4jz3LAcMJSRIU/6QD@vger.kernel.org
X-Gm-Message-State: AOJu0YyqaspRqtWjxnh+tseYvuldrimKQL518F26TYNdppm8UN22oPLt
	7V8siH9VU6AcYyHKZxn5tg0B7TAPQqIDNaHUMBgc8ESreltt6Cu3AvIObJlrzwQrRKrd4KxqR5Q
	7G0HEagQcq/KEDwI7NiJAyuTPxJrIdce+fWkN3aoqUTN/hLRJ8+0f1elgWTX1IuIp
X-Gm-Gg: ASbGncsyh6Kgd2JtNLHAvo0f+uUAia3+xiSHp5f0WLvUS406L4tifNAhYsM+Iy5HL8N
	DRThWDHN3Ryl9iv53B+4S4rtGEkHaTbOTeNGjay8IfKxlRLYyqfaTFxqapcOcWxxFD58f2r/h29
	BxGj2xVNPM/6jC6H9xlh8sHwVduNilGOOL9JB6cAT7lVyGyYEIFgXF6UtxzSOAKFY54UYCDY/UZ
	H+4Kn3lrkpaF6scMtusUlw4vDGYjVnYiGa5/Vfk8vkRYg8FXFhPnjaQi96AJ+wWpH+n4r+vxlcs
	5O3mHByNrH2fkJHDbyaHBvL1zDUfmJVF18Kak+im9UotftufAXf5AE5/1WnI+OOSqXs=
X-Received: by 2002:a05:6300:614e:b0:243:78a:82cc with SMTP id adf61e73a8af0-32a2529463emr1184478637.25.1759356202560;
        Wed, 01 Oct 2025 15:03:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFgxO0FMEt6NCjTbWEVMsMIoIPsAqpPcSGWTogRJlJI3yNWhMaCOEagO+8drQ4c5arKTyjNnA==
X-Received: by 2002:a05:6300:614e:b0:243:78a:82cc with SMTP id adf61e73a8af0-32a2529463emr1184444637.25.1759356201994;
        Wed, 01 Oct 2025 15:03:21 -0700 (PDT)
Received: from [192.168.1.9] ([117.244.71.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01f9ced7sm659664b3a.15.2025.10.01.15.03.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 15:03:21 -0700 (PDT)
Message-ID: <79b54a9a-2f05-4a2e-b9f6-6fe46e2c25cf@oss.qualcomm.com>
Date: Thu, 2 Oct 2025 03:33:12 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
Subject: Re: [PATCH 15/17] drm/msm/adreno: Do CX GBIF config before GMU start
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse
 <jordan@cosmicpenguin.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev, devicetree@vger.kernel.org
References: <20250930-kaana-gpu-support-v1-0-73530b0700ed@oss.qualcomm.com>
 <20250930-kaana-gpu-support-v1-15-73530b0700ed@oss.qualcomm.com>
 <ae2ooybajk6mcjggeztumubht6auw5qlhmsdrblikc5ruoxtmm@oj5kvpxithva>
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <ae2ooybajk6mcjggeztumubht6auw5qlhmsdrblikc5ruoxtmm@oj5kvpxithva>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: -a2lX7j9oNC8pOlVMHUDb80w-V4g02PJ
X-Authority-Analysis: v=2.4 cv=MYZhep/f c=1 sm=1 tr=0 ts=68dda52b cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=2kejHg7nZSoTgEpwAwsXNQ==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=AweIZ1vEVvbksj7JdV4A:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: -a2lX7j9oNC8pOlVMHUDb80w-V4g02PJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzNiBTYWx0ZWRfX8HppTK/9moJV
 TmBpiWv9Jk51vqBG0ukvY3AIPuUQcf/+Uugl8yx5/KYEsMTa5rNc6NC+tpZzgHDv7SSOnN/Lf4+
 TYHA5biBQj9PwJEOS+NQG6PT2NmwD5L4p0+Z007YmiXCIRXYicN6WXgEL2VaVpdvPNGC2DzFuPK
 NOQZutm+gqONRGVOl4WnyI+z9OWgFHI3k6yRiZD7bH+JrJu2+a20aKbSI1+vyL+O0IRQPajCUQy
 7JAWpOvJgSuErux2KjpfN6KwWCxQiSWYW9M8zh73U0Bz6Ru4xBCw8aXiTvG/dgs6duLG5ZnoA1k
 7NlFNegqGhuQTq2AHISNc47+pE+AT5N84c7RXlES+mXADkE7dOjKgL9oe9xguunycmpfvy7rBq9
 EKYOhl93aysGI74N2H16BRP6bS/pbQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_06,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270036



On 9/30/2025 1:19 PM, Dmitry Baryshkov wrote:
> On Tue, Sep 30, 2025 at 11:18:20AM +0530, Akhil P Oommen wrote:
>> GMU lies on the CX domain and accesses CX GBIF. So do CX GBIF
>> configurations before GMU wakes up. Also, move these registers to
>> the catalog.
>>
>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> 
> Fixes tag?

Seems this is not an issue for existing GPUs. So, technically not a 
bugfix. I will update the commit text mentioning this.

-Akhil

> 
>> ---
>>   drivers/gpu/drm/msm/adreno/a6xx_catalog.c | 23 +++++++++++++++++++++++
>>   drivers/gpu/drm/msm/adreno/a6xx_gmu.c     | 12 ++++++++++++
>>   drivers/gpu/drm/msm/adreno/a6xx_gpu.c     | 17 ++++++++++-------
>>   drivers/gpu/drm/msm/adreno/a6xx_gpu.h     |  1 +
>>   drivers/gpu/drm/msm/adreno/a8xx_gpu.c     | 10 +++-------
>>   5 files changed, 49 insertions(+), 14 deletions(-)
>>
> 


