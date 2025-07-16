Return-Path: <devicetree+bounces-196960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 66525B07A8A
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 18:00:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A3C7B1881BAC
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 16:00:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 994CF204090;
	Wed, 16 Jul 2025 16:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P2RIXezB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101A0262FC2
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 16:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752681622; cv=none; b=Lf/U8TuN1HfYpuisWGD6iDId/ZOBdI1WbLu/IUzyxhP1lXYXkp8z628Z9uZGxheHaC7bZL+UmyA6Q2tk+VB3V/aOOJhKtMHOllnCngrJmaEs+/zPIAc6qimL7L0Uyee1rcLCFGZQWTNWoVJIJZHsZn8n4krw1kPtOX8B6KQMbBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752681622; c=relaxed/simple;
	bh=ADfJz7MDETMJX4ewoMWeIUjHHd+wXJLC8WGJglMDlo8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A//H72tAeYuOTWMKNVRdzlXGei/Zm86GcT2NZaglo39DjCjVZ9o0S2dbiyFPopiwzOJuJF9SoG1/Q2A7jOfpAecDQva9UgjKJVM+D98d2Xq1BWtBjuCZbP4I7eyYtrvchtgpaoHnw0Lm6XVXX890XEKl4YCg87OF/ke2/hlKGG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P2RIXezB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56GDBHKk029739
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 16:00:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Lj+0IuuDHDUmFIdwpugsUGXQmeDRIR2QIraen0zZdPw=; b=P2RIXezBtOZUtoCo
	dCu0E3V0aCFawd4kNaX0k+sNp4yFzOd8fmTgSDDzD/YcO9ct1P5oMVipzHc+ejuj
	cqpAuxQ60o2Qirb989CUCowLHUuOsU2LnAkjT+/jpA2oq3aX1i9OPkEkM6staE1A
	Rd8G/bNp2J/YTcJvO/fP7LwMGaiymm9rHl0UJfg2r6eQ8wL99wNhuCatfK59IznS
	9mJfP5nipEAt3E0ET6lzW5nbm5ITCF7M8whpvKlVFIfUEA/SR5Pe6RD3cPCPGfyU
	eSiKN9BbJaUOFvaSjVvi/WOXk5fVbOnUVyP7AKt0ZqRBecraELBQ0rkFvJiQwJIU
	cMyDSw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufxb4mk2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 16:00:19 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ab61b91608so74541cf.3
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 09:00:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752681607; x=1753286407;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Lj+0IuuDHDUmFIdwpugsUGXQmeDRIR2QIraen0zZdPw=;
        b=wdu2XQhzem/SP9OZJe46klsoyhDrbYlBvxwlfL905kigblO36Ip/9dlMBwnPayWA+N
         ZevFIR3DJ1NbjqNRCx9eya+Nxgk95zgQJpsGtLLpZogqhCrzM0noBkGf9d46JFZToePp
         c0QAn7Rzuk+H4REGPxTdq5aVZmGsGeVeI3XAlWugKpalkB3yY5EI8b+QAf/jlL2jx3Ts
         +yS7iOo02BbDSuYfcSL8GbPtAoCpo5ApnowfJXmSVJUSrTvZHfxeAy/QBmgu72ssus1A
         KBaol3uc5OdHqegPTa7yxRaNESL+SuYnT7GXzhucJV3DdKDathVczJEIRj617auQBsv4
         w5Nw==
X-Forwarded-Encrypted: i=1; AJvYcCUtLgLrvtDodlEwLfJzIIqE3xhZeUbli+2vDZe2l8GcS4yIjLhpoonw9ES9mtXpiJ8MuQ++5135vjPO@vger.kernel.org
X-Gm-Message-State: AOJu0YxlGoDKH0dA+pRv6Tpl8q4VBEEnwGrPS5rgyONJyoYnb9WqFu3Q
	8jnE0XXVgrXPvqnkEXycm/2F1c/e/z+hN2VjvpFwkIdbwSlZnP8UN/Lk1i2zO4HSA2WU93Fp5Qa
	uT+dZm5pc1k9YT7X2zUVCNpAZ/YQjtZmlc8czPduFxJdzwuuM/l9BLsYm9TNnCKGB
X-Gm-Gg: ASbGncvnAyA5T1uL3vMfKBH6yD7SeH5exskca+jNFNlF6/NPgWe9pRTVZ4blDhtVBSI
	Mz7Ph0Kb4yFrbwcusuQfn4TRbqvqGTEmF7z79lIytW9jeOtF8P6bmA5CDaogYsI0ILE51731kZW
	Tlj3nQ3SH9PLbYAeBjsLaD+LlTJe4t0t7ZapYHX8URiap8rAwmJ3YqRGb3bRojLs05n8Vm+6MZ4
	K6ildqIkGHrYFxT7E5ZG2PtlEcAhb4FUdX1el/Uz6RP7YRXY1SHjsQomyJk2XplKAFWIugSmk91
	zCUhT91aEdl/9sDgWoENee3N4pWZ3PnPdMfGkte2KlRhZoseVoBqgUUYQR9NnUg9MOEf690fHIQ
	LUvBf/gM4Q6r250HIAHMv
X-Received: by 2002:a05:622a:1493:b0:4ab:63f8:ef30 with SMTP id d75a77b69052e-4ab909a993emr26718351cf.3.1752681606785;
        Wed, 16 Jul 2025 09:00:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IERe9JVAY73uRoPOiv1ZYx9NVNl6QHqwUVE2Ldheh7YUqMzUCoLVYSOkjII3/ToglVnN0G05Q==
X-Received: by 2002:a05:622a:1493:b0:4ab:63f8:ef30 with SMTP id d75a77b69052e-4ab909a993emr26717951cf.3.1752681606283;
        Wed, 16 Jul 2025 09:00:06 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-611c973439bsm9070642a12.47.2025.07.16.09.00.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jul 2025 09:00:05 -0700 (PDT)
Message-ID: <9429c00a-b044-4da9-b380-a03d298da7a1@oss.qualcomm.com>
Date: Wed, 16 Jul 2025 18:00:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: sm8250-xiaomi-pipa: Drop unused
 bq27z561
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Arseniy Velikanov <me@adomerle.pw>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Luka Panio <lukapanio@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20250716141041.24507-1-me@adomerle.pw>
 <20250716141041.24507-2-me@adomerle.pw>
 <c6od65q2e6bnz6jxq65ox7burhjavjmooe3vq6nhhfq3ikglz7@4ufcxbjhp23o>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <c6od65q2e6bnz6jxq65ox7burhjavjmooe3vq6nhhfq3ikglz7@4ufcxbjhp23o>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: B_ymPZivBwKRsmnxjh_YtnL3ohRbPCK5
X-Proofpoint-ORIG-GUID: B_ymPZivBwKRsmnxjh_YtnL3ohRbPCK5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDE0NCBTYWx0ZWRfX/lSgCr0f05Cl
 gAoHCByEjk+Pnq7HNRMvW+qT2H5dCPpGxs8VAWkHoLLQ8wTcJp+i/OlL58S74m71zvEXGuSBdgW
 0gfXKGbgWbtLjtG+rsZBikX/sgaGQUBFBxTgGreEdPUd8RdbFAvtOtIm/OtLBuZ94a0BN76ReP8
 k715XNJyOqEJNYvQxHUIXiWyAb82wK0flj+gQhJiVaynBkgwQz3TXSHjbh57Yi+mc5F8WHykWtV
 oqOi+VR2o4AVWyF+BqseBuTh03y4P+ntR7/gLqp56ftrWCNLTWyfFfbUOoOPpkefqxP09KUaj1P
 NB5DCOfi791R8kWzoyv3Qd+YslOvyvPT1hOh1ZMc3rCsTuZsrrtZjqGcSPeZ/Ti0ZbU29ZNNa6w
 QkZQMR63tuWmhUey0jhNNd5hlh5zTsqPqH/BEoV5oyY1CgM614avEONOMpk5ft7DgBGBTEuU
X-Authority-Analysis: v=2.4 cv=Xc2JzJ55 c=1 sm=1 tr=0 ts=6877cc93 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=bjYnimzL4-PixQkOYsUA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_02,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 priorityscore=1501 adultscore=0 mlxlogscore=818
 phishscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507160144

On 7/16/25 4:59 PM, Dmitry Baryshkov wrote:
> On Wed, Jul 16, 2025 at 06:10:40PM +0400, Arseniy Velikanov wrote:
>> It looks like the fuel gauge is not connected to the battery,
>> it reports nonsense info. Downstream kernel uses pmic fg.
> 
> If you have to repost the patches for any reason, please sched more
> light on the 'nosense' you are observing.

Since it's actually onboard, it would be fair to assume it's there
for a reason.. Does it also report nonsense when running a
downstream build?

Konrad

