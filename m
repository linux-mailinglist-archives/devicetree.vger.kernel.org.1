Return-Path: <devicetree+bounces-252853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F84D0394F
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 15:56:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C754F328AE02
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 14:25:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D91974218A3;
	Thu,  8 Jan 2026 14:09:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HI61hvGI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jNdpKEXL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0A333AEF21
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 14:09:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767881377; cv=none; b=dijQgxwrEkne+9UXa1tb1SZrFvj78FYHML1B1F6Xr+d7ztSqP+fORPUa8F4T8aYbJrovO4VECHB+Vdf/nFRa1L6sHaZs7ftoA6kWlRYUXqMTXqPOl3mCOEpDuBzfKuPRncmVuBgWCAg/PCIVI/cnDV+Fo5EBySMCV/W9dhbe42k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767881377; c=relaxed/simple;
	bh=evuD/6bVtVPa6WzEJFbKMkoPdGGHQ8a/9PZuWvIK7rE=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=bdt6AWcTODGdS3Le1UJ6haJtHmMrG4+Z+P0SL+hdRg4AG68/5fO46RWC6dc+aXHH4FZ5quIwkrqm2vc7f/SiDAE1FK2jEboKxBze/OkM/WIANoKm3il9CCxhbrSprz7yEdd7i/twqqXtHSbu9eh8i5AZseUqlYV3k4Gr5wenxiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HI61hvGI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jNdpKEXL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 608BFPnc3751420
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 14:09:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LK/TeYFjFV5YI9NzBdYblXnSYiQjb6KFXgChEGgcpl0=; b=HI61hvGIR4+ktHwX
	cTekQVX0gO2SuOvdjY5bNshAr3kTXFd/C8u4GGBDqyymiOKObA0ewd5SkCQx1m+V
	aP8qKKBE74A5F3wleccr56smfRfFhEH6V09dyKXZ+q24SZFtD2BGkvyFLEZQ+Kt6
	xfNKq+1RpIcbc1zoyOvybVQ8ncL1VRFn1uf5btUvgCxQur2PpVzDdbE/1u+Ij423
	62Yu7TSkDttChushUFp5VBl8BqG9B1c9ADvTgA1aYY0JL5qvC5grXmFsYaLRjNu0
	oxBEgDSAzTmO1iLkzXThOujuyaZf9308yhYaXGVvDmTMM583lmzQR9ipPl2VoxL/
	m1bNnw==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhuxcugbv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 14:09:34 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-94388cfbe8fso734581241.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 06:09:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767881374; x=1768486174; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LK/TeYFjFV5YI9NzBdYblXnSYiQjb6KFXgChEGgcpl0=;
        b=jNdpKEXLaOYYjfCeFd2tV+HASjDmcn/iqRqknoTWbgX5upGD7PBmj/l+/Z9PtoS2EO
         STvPZXWguCHwNANyadQ8RdutJCxCbG33EZ/tq/zgnRIyoyNVydXNR4qy7U9fLPlbGmuE
         KHKbrpoJW4K5nzM4e5bWV8iLJSnj+S7ZHVRzWm/XB20NOIK2oqclty/UStTYzc4Vjym1
         2G9NuVZE5niNzDlNZI0Zr/zAhAkAf16XGn+7v+7+fK6e0hLblEKyxmS7j903uj1UiKsN
         8tabx1xSDIZ3KGw98X1xwbdep5zT3+iYMiRDiaJPxHhfTjfT5L7ihy/kzpgUzSL8LAWA
         fM4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767881374; x=1768486174;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LK/TeYFjFV5YI9NzBdYblXnSYiQjb6KFXgChEGgcpl0=;
        b=NVeWJahIYIWvpx92AZUVfWgz6JZGLeW9+cfpj/db4TVDbrypjHMJK3Y+4QP+TV4CZS
         /MpTbHEIhKw9Q9lqmCXlvuw6z0xPqgCtNCS3nnorJOuUXto7pMxXiCLjRgzHvQQ2zpWu
         uRuWxNrUGeJz+dpbkfeBFTB7BRqmromloRE0ikdRl2TaOKbaMCX7R82qArH8tofieesy
         WyFcvwxBJ327jBhkrLb1a9Mmz7eFKPcPyJ+bO66bWJS5vozG9tbKW4XFuQbzykZ32Cvu
         +qqv5gXLju+SVgk5K9rBnf8qp02Ngkfbgs4ucJonyAHikICoqsbBUZQux1SuJ4EVIatI
         PibA==
X-Forwarded-Encrypted: i=1; AJvYcCVCWMSkl20afX/7yIfSb8x6/iwNfRPlZbmRKwovMFjV+Zt7wf1f/2Uyliu86YS3GpnNZSfGAok5oTgR@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7N7Cap+agcWgG+sbk5ExT5WhoBaxnzTODEpIazQFX4mhGr0hl
	6tctHFFh1hLh7Oeb2TuO4/qd+TsGvd+agFcw4yaiEie2tQe6kP260tusN/vpfKlTTbccwSIxH7h
	y4izhgrs0iBznXdVW1qC20fQXKx87I7MecXEtB/2GFmxrKCdTmc736mfM/qfL0lLo
X-Gm-Gg: AY/fxX4dqX+aDjV5cpF7MkBQ6pO0pYW0WRGhT+WWF7g5/22KzPrDEL2S0J8PRvko3pV
	PIJD6Cc/9Gb/flvL4376NUrDasJoD6wYhUY8sT0lmYsMHNj+R+WU03OOclybuvIT2uoXUDLEvVD
	GsIUJLfI1Fw2EICoshVO2jOyDmIRge1eY7HqUglp/awJkhuZHyeKdcP9sPD5OL0xq2zaBAs14ET
	R0wBHeMGHZDwAubnWU56ml4828NW7UjSOfSk8pwCnHWpk2KnYpm3/vDZ8t68+7bYjylhedugf89
	+3yAOnTIAIfnBCnbR5XUFDvZSZ7XOn/BMFDrlpdjjVqTAUOBsoB95EtMWJ1XIPuKszetVhNze6f
	hpvY46PRY4wJDrrtcUsXIaeE8uk5G6+LfryNIGuTWP+TQs8Rl7OuLtvnktKE9Jg8weHo=
X-Received: by 2002:a05:6102:1795:b0:5e4:9fd:5a3 with SMTP id ada2fe7eead31-5ecb697d5acmr1094908137.6.1767881373840;
        Thu, 08 Jan 2026 06:09:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFr0o9ZuJWtz/EWtmYSsEVDz2rg8ifdhyHsfJy84t05/NRvCcr4yxWjjyBYDTUEqkUkKO3dAg==
X-Received: by 2002:a05:6102:1795:b0:5e4:9fd:5a3 with SMTP id ada2fe7eead31-5ecb697d5acmr1094885137.6.1767881373150;
        Thu, 08 Jan 2026 06:09:33 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d683sm7752188a12.34.2026.01.08.06.09.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 06:09:32 -0800 (PST)
Message-ID: <f8e2177a-2aeb-43b6-aea7-ca1c571c9928@oss.qualcomm.com>
Date: Thu, 8 Jan 2026 15:09:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: talos: switch to interrupt-cells
 4 to add PPI partitions
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
To: yuanjie yang <yuanjie.yang@oss.qualcomm.com>, andersson@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com
References: <20260108092542.1371-1-yuanjie.yang@oss.qualcomm.com>
 <20260108092542.1371-2-yuanjie.yang@oss.qualcomm.com>
 <d90f592f-6bf7-4b04-98c6-608383652797@kernel.org>
Content-Language: en-US
In-Reply-To: <d90f592f-6bf7-4b04-98c6-608383652797@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDEwMSBTYWx0ZWRfX2FVpOyhpNiqk
 +A3vEj3S4uyBqNbcyTCwSxFIuUhbKdZRjGb64tPeCgPyUeym+AO260feRfZODZjaOTSISZNN9jJ
 jLUGl61qOJ3m0M6nEK46VNW/OtiKfYVv3QLXWTKwRQoSOkwx/DTW7xYMjAVQUvFkPiEh25SFOP8
 f1RGYk3ECaWlcrQY7ca0U/Sd+kT9O/lSNUFr4uP7ValX3/xbIazs9EXvR5QvEMf35Oc4TChXKe+
 D+VccppUCgSO+47UILcSAkL2xbLZ6QNBHPvYH/Xyj9rgtqjQ0HrrmoC+Ici1rAHnGgSBeqMdaZd
 b9EYGu8DPLHeRUCyD8Xee75sMWZipqI9h6FbPVznzrvoRJlCmu8OFKIJTTwiNBwgOZ4wM21+0Av
 zasLwFpLR3R24HEwjNnvfNYFWYIyPG+jBwucY06yxZsurF/mGps/d8zCx1MyZGfZPyz1adD6ulq
 7aj6w22sHvFzUcONTLg==
X-Proofpoint-ORIG-GUID: ZwuSVnny2TeNlyKvpO6A2JRENlCIAynI
X-Authority-Analysis: v=2.4 cv=SPdPlevH c=1 sm=1 tr=0 ts=695fba9e cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=CmC1huXhM7PGevsx05QA:9
 a=QEXdDO2ut3YA:10 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-GUID: ZwuSVnny2TeNlyKvpO6A2JRENlCIAynI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_03,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 bulkscore=0 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080101



On 1/8/26 2:38 PM, Konrad Dybcio wrote:
> 
> 
> On 1/8/26 10:25 AM, yuanjie yang wrote:
>> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
>>
>> The ARM PMUs shares the same per-cpu (PPI) interrupt, so we need to switch
>> to interrupt-cells = <4> in the GIC node to allow adding an interrupt
>> partition map phandle as the 4th cell value for GIC_PPI interrupts.
>>
>> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
>> ---
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Sorry for the sloppy trailer from the wrong email, let me try once again:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


