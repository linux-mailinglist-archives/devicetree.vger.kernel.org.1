Return-Path: <devicetree+bounces-245624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C0ECB35CE
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 16:50:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4F4183101EA8
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 15:48:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D82981E5B9A;
	Wed, 10 Dec 2025 15:48:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q12QHbkD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="X84+AkV3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5631233985
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765381683; cv=none; b=JwHfbPEpLIlheg+LzPoSq7y0MX/z39or6MlQAI91CW2Bj+UgBmatSaD6wCxahS86UXz7L0qXuFkuGSJs0r9WxYmf0VBXT6oVhHigVAjUCl85E5VXeJogbjawSSdJUyo2Ug5hfQH6EuvPUFVsFnlfrI/uhkQNAlBydrYpJ7gLeh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765381683; c=relaxed/simple;
	bh=zxzWHkHdlNOMeXVncXhQukYbqBLI1caIuljfXw/kOX0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y4XC2dq9ONhZ6K7r/xqLji/KnmqXgtBEcjJzqW+bWuTX1hsmZurAY9M+CE5Y6HSk7usEnozV5nM4iWKvk7WI3FcGczRQs3keTofWRLBJoxYqTajsyal39R7xwrduddz/On2qyCFim/b+dgM5O+lJCTKL+5FVW/zWGM1j02c0PLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q12QHbkD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=X84+AkV3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA8e6OT1934264
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:48:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Qk1oxQfFmW1j0BGoNAZUI72PM8JpbvA0GKEGOSMYVA0=; b=Q12QHbkDzh8vdiiX
	mUAdJvIjWkpqvqb8U4CZm86VLnMJrNpg5tZbgPfjZKRY8LJoC0eAL9OeQxp+UO5q
	DcNnYg+de4lKr1T9nLEzIekiPJgTQaDEoHGG7lqJSd2foiV2j5l8b42lP9jZ0J/X
	ttUcvg5OgRXp39kTDu88XRxEdfeh6M4VoozB4im9obttfl+CE3Qs1mj5wCh8MLcu
	Vf0DAqs7aH+/ykIJbINBlVIJOwKzF0rjANRIToy31t3YgSnxNK4xqvLnZRrlOCoZ
	fX1XeHM60qpwGSvfdmyZeZAWs1qdYLSCv6my+qs3c3G3ut7MGAp23g0zEuqa5eKL
	FW4lSw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay505hebv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:48:01 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29848363458so146225535ad.2
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 07:48:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765381681; x=1765986481; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Qk1oxQfFmW1j0BGoNAZUI72PM8JpbvA0GKEGOSMYVA0=;
        b=X84+AkV3g/fgZHuMeUwR3yKuYxf2C3M0DOyt/7t8BhNixsJxCayipskvsb6B6C7XMl
         6C0RHpR+UsgThpExNm9EZ2Qq0mbv/c+dmVl//v+SA0rAmnDcc+34IMy+voKmIlq0fbh0
         9wSAchvJPUO2HxR2Z9q6E1/UQnZzrXax0M3zLK2HdEroh4v3XesW1yZetlVG3Wrxt8li
         Gx7DgDIp7uHyllN0jo8ZAdo52aWWEYtGbxo7gT1AyeWCpKaLz+5XkdDPtOSyvfH8z5ht
         pfCq+45lmocUQVWMgr3vSidungvFjDZJOb/gqBfnCf36od9WJOWcMmNciHs+sPCRv98i
         zC6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765381681; x=1765986481;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qk1oxQfFmW1j0BGoNAZUI72PM8JpbvA0GKEGOSMYVA0=;
        b=Da09EMNaVoFyb31ukFycne7jpadwJPcuvM63BS24d528GM1A9IlAJT9nuwQ43K3j7f
         GwaqpB/X3f/OjaK2oH7GJwLaRPgH69zr/XwS7J+xytXSgwN/ZkWbO6x5K78dwU/dKB17
         vnlvDw0oyZbcqdMk88EZbBeaqZMVxLAVkmJpwV8t6XdEaBm2tv7dPEX+xE5YYv855PJ3
         0FipFW+QPqGkmZq2iudzT5rKGpl5hPn1UV9/Y/M39omNYRWS2mY3hx+j878kFyOsXtfv
         wDUDZs/cA3qSC3Zp8dFudJ8I8UNqLsAxHWjOCekVJzRNgCvqUnmhoplgFBfXLNYhCl0R
         df9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVp2ZAoRWQz/rt/8m9ICeGU7S52ueLNSsNALsqY5RqeJlgTfT0rp6OAIDOfY81jwT3bL7grydF0/J0W@vger.kernel.org
X-Gm-Message-State: AOJu0YyuTcfRUb/gHiLy2zPK9hEP0tus1MEX6VFQ8LWLAXmVBe3owlPR
	LSktCNcrT5uxCLhHWqGztJqE1d6T9ucdx5gm7FrdYHbeAaq1rRB9nu5uw9jDNZN1nFrssnKmG98
	S4rV9MRuT6HWtT5lBB4kdRuqurkht1y3UL0E3VfEqOshL7LcAqdIc9WfdzjYgb+f6
X-Gm-Gg: AY/fxX5O81Pum3ZD8tDcnt9fGV1qQB4VT3p31uqDiunWwaEwH2acXD+WgzkT8RrVysL
	h3CHuPiwIlDV6SwtcZFP6TOxdVOjx6F/lYQpwDmB+CBP4jS3mz2BsD+JSNkx0xJAHWSabT92Cbf
	ent90vzmYXXbDX4TEl/GAuOmfe1Tfsl51AUWVeSG0cM2yZEz9LQ5rrQbaWtSEM5rvtmE0eqo7PL
	5zlSGRya0eAjdw3jSCKWEVfWe5nhRAlGc8WuwbX9+LtbnmbOTcM+CzHyfMVKmcdNwTv8F3ojnN7
	LVrmjfJo6xvV2yr747TGCuc2/KPcvi8q7EQPWUamML1QLxAA5jGqnacTBRmFxRewmoWGh4HR4y2
	b+iDMnpdicAkks66WW14wtO2rhb07GYm07ia0M/jHF02g
X-Received: by 2002:a17:902:ea05:b0:298:68e:405e with SMTP id d9443c01a7336-29ec27f9101mr34852875ad.59.1765381680928;
        Wed, 10 Dec 2025 07:48:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFjaz47RPM3BTgq+t2/uAuzI8RhqBQTqzjbVQ00bNUJHKcVw/21DQ6pw9tCiddYKcvs3IuIsA==
X-Received: by 2002:a17:902:ea05:b0:298:68e:405e with SMTP id d9443c01a7336-29ec27f9101mr34852465ad.59.1765381680496;
        Wed, 10 Dec 2025 07:48:00 -0800 (PST)
Received: from [192.168.0.171] ([49.205.251.140])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29dae4cf9acsm185291845ad.28.2025.12.10.07.47.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Dec 2025 07:48:00 -0800 (PST)
Message-ID: <4411f6ee-478f-487e-8f95-bf0959363e97@oss.qualcomm.com>
Date: Wed, 10 Dec 2025 21:17:54 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/6] media: iris: Move vpu register defines to common
 header file
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20251210-knp_video-v4-0-8d11d840358a@oss.qualcomm.com>
 <20251210-knp_video-v4-4-8d11d840358a@oss.qualcomm.com>
 <4pxuzfdcwr56gtt4rjgodvtmf6cgprpb3czyrqjktx6qk5kryb@njj7xwtnnjpi>
Content-Language: en-US
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <4pxuzfdcwr56gtt4rjgodvtmf6cgprpb3czyrqjktx6qk5kryb@njj7xwtnnjpi>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: rXFtqez6dSCV5KOS-H_UimnlAps2txid
X-Authority-Analysis: v=2.4 cv=Bu2QAIX5 c=1 sm=1 tr=0 ts=69399631 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=oHgmLS9T6KHqMfKxrEeemw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=9GnT8YxiTCS33XBb7xIA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: rXFtqez6dSCV5KOS-H_UimnlAps2txid
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDEyOCBTYWx0ZWRfX3WGpPvsbgxft
 uAkABTQAqzVJtTwiA4hYUwSqsYUBbgyEt+uOJUUCZS4Cm9lz77GTDIukH1yOg5IuMfbh06u1kwm
 DN855IInr1DYmLPGJpuv8bK0lRw2JXHPD9eMzywwS/UgYo5xA2c8l+ZnbB4Lkr3n33HBOgV5I8F
 PuU99s6AnxcxR+ap1GufFdXyAgk48gN2QK2gwn+bL7vYsIFoakRq/Nof80ePEb0rBlNzpKEIAGV
 ao98CU6MgBAAJSA/iVVMIeQoI9krcW1/0rlBfpEzX56ldSltupaDUFwBuKXsErH7zoHUSpULlX3
 ++tuMEp4WXROhqJH7fpmGs6U/lzyjMYdmTkY73LC6IJ4wE5d5VQarP13D+S8TuGpuxaCafxN97c
 NKnkhPI8c0IzBM25cRmUHakj6/c/QA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_01,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 phishscore=0 bulkscore=0 impostorscore=0
 suspectscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512100128


On 12/10/2025 8:33 PM, Dmitry Baryshkov wrote:
> On Wed, Dec 10, 2025 at 06:06:02PM +0530, Vikash Garodia wrote:
>> Some of vpu4 register defines are common with vpu3x. Move those into the
>> common register defines header. This is done to reuse the defines for
>> vpu4 in subsequent patch which enables the power sequence for vpu4.
>>
>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
>> Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
>> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> 
> You have missed my CdB / SoB tags here.

Sure thing.

Bryan,

let me know if you can add while raising the PR, or else i can send a 
new revision.

Regards,
Vikash


