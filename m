Return-Path: <devicetree+bounces-221422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2A4B9F71D
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 15:11:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 295DB16F0E0
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 13:11:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28009218592;
	Thu, 25 Sep 2025 13:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FC/e12P1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89A59217716
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758805906; cv=none; b=KqcyubcxUyoQiw1XyIU8Fs+QsRU4g+p8yvjoQ5te1HVmrvaS+4TqMY7r+jViTw48l3JYl+GmxxNPNfP619kdCqnW4YzJB9nDlWLmFpQY/Ns8G3rQRZmUjq7UC0nY6lFksXyyTCn4SPDl0y7ymzCYdiF83NDCc2im9mLcTG6fVy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758805906; c=relaxed/simple;
	bh=lINE7NkSUvaMRUN5kdpq2iupYa9Jn//uSqQB9Wso/oA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=esGgCVxCp8BPhOUz9woJTFj77I7+ZKSz/JwkkU84D+lGs2Nm4CrSr9PNrxmC3tDp8QuwRPmt56H+qU1DzOUxKuaMLykqkSc3Sm1LSaf+5Yhsna8ByPureUaVZP+7OzfDyuAnl3bXLFR83XKaWTGsk8a2pf6Mw9nN9wcKVWKBYrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FC/e12P1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PA4NrA003945
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:11:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	l822Z63KISA17qDDKSQgq4rvN0cBPgBN2THLZWvJPpw=; b=FC/e12P13NLUWpHV
	yn9nF77c84gm6r25egvyDqWqGVf7XzyO5R6ZzZnyqQdj6jifb6f7T2OZKCF+EQB/
	gRHQzPV9c0tNarU4/ldKcb8UNb1xz08z+d1gfOcr8NEqUZNLays2hE7QsZ8DKx8X
	3g4rsWZawnCYP74amBZmYjW+gKxUjXAqiEdL9+GkGLLlmY1JcaH/hM8rElZvRk56
	pRjlDDNEBHVMFCU6fX9V6n72ADgp45+EFIwEuAHezOGWCU0TlNtvnQN1yIYX5Iqc
	bs7nExANPp8Oj6hojAJCAn87yPIWO645FZt6dBG9CRHXCafVgOTEh8z+WSjoLrVO
	h0AmfQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf2qgj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:11:43 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7958a07a5fdso1350476d6.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:11:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758805902; x=1759410702;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l822Z63KISA17qDDKSQgq4rvN0cBPgBN2THLZWvJPpw=;
        b=qAgiI+NV4Ni1HXLp90qzRRE+iLppHZe/oO/v1wBw6rC/La7R21VsOBz0Zi4iujmko8
         XFMohKtYfRksNWUww3V0mfHpwec80C9BqUPx+alLn+tJPJGsBHi8txNSzA0RLNcYm1Vp
         Nof1E8ZbORujmAFbkvTRkSaf7gdKPXBGeeV1qcBYmS4zgt8Lf5AnVmnSUVZGhGoiZG42
         eEjkp+OVsTxl/YSZmZirH7rmC6Gkfm+edJgPBWJ7Etkxsm4LZxbHAC8M1stGtmTf7vXg
         H8MdDQFMmE/zAQ6tmwfLnVjvU9Y3FM2JsT3hMskma1cf6aagzAdtdSyXHg8aFV2ZpW5U
         7jFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVu/RLha5dV1hhmpCKSn5fWqg4ddNR1Ft4BBAcoiBVP62hGeCxP6/eSgFG5oGfzJwvMVzWe1drEp/AT@vger.kernel.org
X-Gm-Message-State: AOJu0Yyeh0RXzTjqpyyFPlVcTvW/kypU16CWrHAXn18BHqrsfUHEW6P9
	nW+We4bGdZWOYWszIkfJKAHjUDD248bAmA24oFTcRynR2Srx5Zy3VPzBmF1LP3+2KEZGUaGbUY5
	WhAIrpHVS/FFi1Al1wbRNfhNrL5LGXPu6xJL2AA7ozzF/4NUlzFDnEqrwQ/4iw1pY
X-Gm-Gg: ASbGncuKINbIkgAbjqPsb+KCc1eGysiDksX9/ZwFES490O0Ljymn7BC8YYyAcJI4Ezx
	jMf8Nb7N1nN4Dym7hIlr2VPsruMV2lAS/hMTVBlspt2u6+5TFpsEYN9OuL4kD79MECiF5abo8PP
	73U3sE3FqJiWIupgyYvuu4b+vkDpfnCWwGc1esq7Cj+2eeibM0Ky9XW8ErpozqLjs4ti0vH9gYv
	K+f3t1J1aynDrk2eWB+4GtuEmfX37iitUe5U2FF5Fi1dfOy6IlzDgINFryqm12ooLTvouZVhB84
	PLfWZalna9EsGY4TxkqfMl1E5eYuxJ8LjeSBueTIDqpJ37ir34yqJpShH2VHxzsSdnz/mDaLXlA
	Et19w3zYGPD/XgP4kFtDqYQ==
X-Received: by 2002:a05:622a:1488:b0:4c8:39e0:95a9 with SMTP id d75a77b69052e-4da489a1c99mr25435581cf.6.1758805902378;
        Thu, 25 Sep 2025 06:11:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHVLJC5KlSybFStb+ck2Af033JMceOo9M492BbMXbBa0IliIzYWZPhJGlQ0ZMIsN2rkol5KUg==
X-Received: by 2002:a05:622a:1488:b0:4c8:39e0:95a9 with SMTP id d75a77b69052e-4da489a1c99mr25435301cf.6.1758805901862;
        Thu, 25 Sep 2025 06:11:41 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353e5cf32asm167836166b.1.2025.09.25.06.11.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 06:11:40 -0700 (PDT)
Message-ID: <60d2cfed-5018-4afb-9db2-6bf423defc7d@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 15:11:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: max77705: add interrupt-controller
 node
To: Dzmitry Sankouski <dsankouski@gmail.com>
Cc: Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20250912-starqltechn-correct_max77705_nodes-v3-0-4ce9f694ecd9@gmail.com>
 <20250912-starqltechn-correct_max77705_nodes-v3-1-4ce9f694ecd9@gmail.com>
 <a3ce0aa6-41d3-4ce8-adff-14c767d7f871@oss.qualcomm.com>
 <CABTCjFAO=iLauq37M7LOXOmrgAnPxh210bcoujUsL4zEC3634A@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CABTCjFAO=iLauq37M7LOXOmrgAnPxh210bcoujUsL4zEC3634A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: qYk7m7xc8MZ-OK9ji3sP_gLiHBXcX2Sq
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d53f8f cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=D19gQVrFAAAA:8 a=EUspDBNiAAAA:8
 a=qdIrdHMtB0OfU3cIBJoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=W4TVW4IDbPiebHqcZpNg:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX8K6hrHpd6AaF
 /KNP5S4nIJOnSsOwAR/I6KecqrFW8bZhJlzR5cK+7QgNzA+3FU2rZ74KBxu86nEDi2OG9XUyfng
 4z/H6EvnXKC8SmiGOMfsq99OHk1GFkPv+93APbwB9/eIvtnDkaPOVAFV3+o6m+J/uCPniHcjYep
 Y0DXSTYdusXvRRpXBWUm3+iJRYYVAirhslskqpFsQZHujOr6KjV0Fz26iMW0NlwJi51qIXgEy8D
 Ek4b2CZ+kkOvcjQVR70ZQGVAoujw//kquI5ORxHHZxeLiVgN4XmeYc55VG16HfCY7MzGHXX6YnZ
 lWKkvWZe+jd5CMWv02Y4+V1Wp20N4XqOWFrB6B6B6Eh9BQm7k3Y6BMsWNScBYlmk1RWKfLDxHt+
 JmpoZhLG
X-Proofpoint-ORIG-GUID: qYk7m7xc8MZ-OK9ji3sP_gLiHBXcX2Sq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168

On 9/15/25 5:46 PM, Dzmitry Sankouski wrote:
> пн, 15 сент. 2025 г. в 10:49, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>:
>>
>>> +      The driver implements an interrupt controller for the sub devices.
>>> +      The interrupt number mapping is as follows
>>> +      0 - charger
>>> +      1 - topsys
>>> +      2 - fuelgauge
>>> +      3 - usb type-c management block.
>>
>> The MFD driver registers one more interrupt, and these don't seem
>> to be what you say here:
>>
>> static const struct regmap_irq max77705_topsys_irqs[] = {
>>         { .mask = MAX77705_SYSTEM_IRQ_BSTEN_INT, },
>>         { .mask = MAX77705_SYSTEM_IRQ_SYSUVLO_INT, },
>>         { .mask = MAX77705_SYSTEM_IRQ_SYSOVLO_INT, },
>>         { .mask = MAX77705_SYSTEM_IRQ_TSHDN_INT, },
>>         { .mask = MAX77705_SYSTEM_IRQ_TM_INT, },
>> };
> 
> MAX77705_SYSTEM_IRQ_TM_INT(and others you mentioned) is a part of 'topsys' irqs,
> which is kinda MFD own irqs. They are unused at the moment.
> 
> See also [max77705 rework interrupt patches](https://lkml.org/lkml/2025/8/31/27)

This would be useful to mention as a dependency..

Perhaps >this< patch should be part of that series you referenced, too
(or they could come together with this DT change even)

Konrad


