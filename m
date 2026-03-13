Return-Path: <devicetree+bounces-275471-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gP9jOm5ItGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275471-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:25:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DDC288136
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:25:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A823F3001F9E
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:24:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B5DE3CAE92;
	Fri, 13 Mar 2026 17:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PcnxHi78";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jyPOOsRk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204C33CBE8A
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 17:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773422696; cv=none; b=RPIsq6mJRlARS1Y8SLjXjvoNoth+TUTRf8+ftZ40oOYYGYnSlc5QxGT3Y+ewnRbb82O0Dt+5JYjZShvYw9OnsypEfPMOt/njKoR76IM6OoMI+mrpRZC0gdVC7jXGPq4tXL8oay/FEZIu2UEb6ycG5NjGENigK+HsYshQ9hScWKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773422696; c=relaxed/simple;
	bh=RYUtDu4/ksEGv2btHhMUsGqDiMCF5NNiK6mOhT67obA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qfV9XJ17aNXXOOtKVu5ud62E6ZQgmapVdVCdsYss5oGcN7LTvUXqpb958u4nKPTgoXJ5RZatny/m3MYF6Y4AE4KjFcHqYf38sfG1Pe5dbMNfB0zSxAPc9Bys6Thp3VtwsC3IZ6N1ng3uOwuRju0SOJl1WbMFIu1Fuyrr7i9ViKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PcnxHi78; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jyPOOsRk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DDf0gw792846
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 17:24:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dgiFOIwoyS3Ji9sphkLmcFmfMQca4IMGuI+uQ4NwSYk=; b=PcnxHi78X2qZcKs5
	zimmNyty7xM9XtxC9lw3mmn0xUAiy4v+pQYpSTY2r0VMd/MljAIRFLz18DiJpLs2
	oeDNPoQ+POmYO0wk48tJ4k2kciJTcu0cXUxXlXISzKMxR+Cl8N7lxJD3wzCcAUMe
	eBhxJ0rF4SL1lEgZLpMuPJvs3doQJIRpeWcZy17lFSpj2Pw02pzomt2bmaV2nse8
	IMN2IwpF8d9JrA+lYv6OLZ12Ft5bCJxPC+AF6ZLYREJlZYTKp1mURtKLRU3X6ndv
	zyBHH06q0n12N3N+foD9zEWZPLgLMiVmvADg/tlxlrjFiBc3UqkhY1L+Y0vwCRg/
	6qpvXA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvdnt2684-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 17:24:54 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-358e425c261so2655023a91.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:24:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773422694; x=1774027494; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dgiFOIwoyS3Ji9sphkLmcFmfMQca4IMGuI+uQ4NwSYk=;
        b=jyPOOsRk8WYckMrFzEy67hDPOTgb5LjKxUBgVORMNwRPd2xfVvr9hyJdrDUeiiwUb+
         XdAn/OB4ddrHUo+kGpwAGeC7pBv6SAO7NhRczlTrFrpheiaZq0f4cwXnfrsYKAbvjLhY
         bzAqdZBrIzRvovITLauj8fsbYTI7s3ToXmG3f2n/g24ecHzR6+JL78MKVNNVYgJKipw2
         lMfp3h2hf7FUXAmAVOybBLlzFbzciz+Dfi3GBFvupjJTAa3ff2BN7mQkaCr6+25ansvB
         YBDfRezVUMwUSruylz+K6h289TSEdCEb0vnt2g4c1msrM/Zib2iChdNUw5nTVB2st4Ob
         PH6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773422694; x=1774027494;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dgiFOIwoyS3Ji9sphkLmcFmfMQca4IMGuI+uQ4NwSYk=;
        b=I6Exx7m8Yd5iuI5aLDW80uXbLdyyYw3i2aMOhldqmMqCbrPRkxxHPNZjVhbs6Z1nQ7
         vfbIogCWygDY2pt/NxAp1gHMdTM9u4rqDWJJh32Eay/gNmbvNFKcXbA2FAoTDAfubGE8
         1bw9i39IlmirZKkF8ZdhksL6WPPuAp2zjTqQBwfOPCDxIVf3/J7GYhndMcgY2hQzzGrW
         /lq9lY8UCNpmP8Bu99WKlEUHFfBL9t+JR2hmy6LztgbeUZI1atxMcnFir6nQDKdF2cGw
         EZ+wAtOQQhVKfdnQ3wS2e6z7n92IhUXtYbRh9MFMvyEHsEnS643n6s8hw4h0kcNpy80q
         JQ7Q==
X-Forwarded-Encrypted: i=1; AJvYcCXqEoT+ocXwnJ7hsNTDSDKwT5LRHZXSMm6qaRQgEpR8w8VD8ZvJh8UY5lpA8ullGDsmCMSyPQLroZ2O@vger.kernel.org
X-Gm-Message-State: AOJu0YxvPLmNFZNCndhPgjB4r9bUcjIO18gFSzR7hRukp8H1B7Ynthwd
	ChRGWnZpEcKpw04ElPbDuRzSfijVxZgBZofX05KHbnHMc0b/lvGfGTLzA0YZhq6dRbtnL85B8qi
	oGxzWaCDaoOvrRvNVgBoJ+3UmXFveG90NLC0S32mqX4vKA9pPoNq6dLkok7p8Q4qU
X-Gm-Gg: ATEYQzza7pw4OkE0Ns4nt+3Gaf1dm53TbGalyiBTuUJAzFyYg5MoecdeEOWkuXM0AQ9
	o4KTA95amqWW2TUwlVsGNG1V7v4mT9jU7+pSJ3dTmkrxrEeJd/5LIu989lNjh0pz6wmv30xDLUB
	nJYFZo78YesmyO5pKwqugC3KpZ6dPkZIxZlF8CgmmmhOfZyhHCPLk6ot1m+15L0s0pniXt/LXXl
	WL/hQ7VEa3wcI3RwMdopyGGSuITmG2r4Uqmdia9BPV3rAfUmSNMK7NHlr7X7jQpkiQODSsSj4ce
	gK8kLy5FXztgJ91zJLCHmoLZJ/DPUb2yd2tqpcHmMCf0kvUnjeM1i27LrbCdcpIv9OFLGBbqqNG
	T6n766nEKzbzep4dMAHd0wb4JwnEKC7QFfZUgcjnNLws=
X-Received: by 2002:a17:903:3b8e:b0:2ae:3afc:eb42 with SMTP id d9443c01a7336-2aecab04a1dmr37715445ad.38.1773422693613;
        Fri, 13 Mar 2026 10:24:53 -0700 (PDT)
X-Received: by 2002:a17:903:3b8e:b0:2ae:3afc:eb42 with SMTP id d9443c01a7336-2aecab04a1dmr37715155ad.38.1773422693145;
        Fri, 13 Mar 2026 10:24:53 -0700 (PDT)
Received: from [192.168.1.8] ([101.0.62.124])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece83d391sm35439165ad.79.2026.03.13.10.24.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 10:24:52 -0700 (PDT)
Message-ID: <a088d852-a813-4537-b20c-1dcc4d166597@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 22:54:47 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/5] platform: arm64: Add driver for EC found on
 Qualcomm reference devices
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
        =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        platform-driver-x86@vger.kernel.org,
        Maya Matuszczyk <maccraft123mc@gmail.com>
References: <20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com>
 <20260313-v04-add-driver-for-ec-v4-2-ca9d0efd62aa@oss.qualcomm.com>
 <44xgivai4jqlc7f5xxe6yohzrqicb2sgso465xuip66n5tatqt@6cu2u4erpe5j>
Content-Language: en-US
From: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
In-Reply-To: <44xgivai4jqlc7f5xxe6yohzrqicb2sgso465xuip66n5tatqt@6cu2u4erpe5j>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=KZrfcAYD c=1 sm=1 tr=0 ts=69b44866 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=EhmMhbG5NVnfTD3xWHIiWQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=VOWR3M7HpeV8rc-S3HoA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: X6yHQKXkGM3UlKJkT7M_cPXG2uoNvsfR
X-Proofpoint-ORIG-GUID: X6yHQKXkGM3UlKJkT7M_cPXG2uoNvsfR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEzOSBTYWx0ZWRfX6zkAzg8Pa4ao
 /yBNcUAzPujpftv9yzm9P2F0UJdEYxOCX/YIrUKVHKW/ia/pSSWFclDSI/Sx+D4c+Dn+NoAp8NS
 abTxtMl/50gDndgrp6+O657FgHjnTN35BvWC6Ce+uuuJm2gGMZId9qrYYN3j6H5Lw8EEwRtem7G
 rtLJat/NWYM/0YSNVqIz+cSvNi+TPR9/dGieg070eprwCOAXz4kD7z4BHby9OVd6imZ3V5OLUS8
 aiz9Ek3J/8bGewmmN3+jB7weNAVOSCf490/MPqUI5TTTc4jD1YW2qjsHWwUrHIm7I1VHCU2q4Fk
 wF0sfayNU9hKre/621MeQ8kVhyfya5LmsqmiQXJca2/SPC+kHA94tyMGzIqT8q/892fYFKz/0vs
 EsAmL1FINQrE4AjZ/dzAeQFtGVWd1EPLtJzyacCI5n1XnVSbB9ltpzrFdJtfpAn4Jgput7L3cgv
 FbJ7QC56xP9RbBAzDww==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_03,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 impostorscore=0 adultscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130139
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linux.intel.com,linaro.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-275471-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anvesh.p@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 02DDC288136
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/13/2026 8:05 PM, Dmitry Baryshkov wrote:
> On Fri, Mar 13, 2026 at 03:59:52PM +0530, Anvesh Jain P wrote:
>> From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>>
>> Add Embedded controller driver support for Hamoa/Purwa/Glymur qualcomm
>> reference boards. It handles fan control, temperature sensors, access
>> to EC state changes and supports reporting suspend entry/exit to the
>> EC.
>>
>> Co-developed-by: Maya Matuszczyk <maccraft123mc@gmail.com>
>> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>> Co-developed-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
>> Signed-off-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
>> ---
>>  MAINTAINERS                            |   8 +
>>  drivers/platform/arm64/Kconfig         |  12 +
>>  drivers/platform/arm64/Makefile        |   1 +
>>  drivers/platform/arm64/qcom-hamoa-ec.c | 468 +++++++++++++++++++++++++++++++++
>>  4 files changed, 489 insertions(+)
>>
>> --- /dev/null
>> +++ b/drivers/platform/arm64/qcom-hamoa-ec.c
>> @@ -0,0 +1,468 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * Copyright (c) 2024 Maya Matuszczyk <maccraft123mc@gmail.com>
>> + * Copyright (c) 2026, Qualcomm Technologies, Inc. and/or its subsidiaries.
> 
> Drop the year from Qualcomm copyright, please.

Will fix in v5.

> 
>> + */
>> +
>> +#include <linux/bitfield.h>
>> +#include <linux/i2c.h>
>> +#include <linux/kernel.h>
>> +#include <linux/module.h>
>> +#include <linux/pm.h>
>> +#include <linux/thermal.h>
> 
> Please add <linux/slab.h> and <linux/interrupt.h>

Will add both headers in v5.

> 
> With that and with the typo fixed,

Thanks for the review!

> 
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> 
> 
> 

-- 
Best Regards,
Anvesh


