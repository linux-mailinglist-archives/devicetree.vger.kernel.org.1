Return-Path: <devicetree+bounces-252651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E19D0207A
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 11:08:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD8BA310120C
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 09:52:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6101C365A07;
	Thu,  8 Jan 2026 08:37:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e39SOX3h";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JmKMQfko"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B39234D4DA
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 08:36:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767861424; cv=none; b=AZc+oC4cItWQn7UR9T220SR4Kr//0iDA8zKq45fj3gtoUjBmWLZGAt8zHN/4eii+BG+mfbRa4gKQetofO1K/O+BberIG1wqyskc1zwbywR5oJFcVL63fR3RLBP7OaHZI0NhWNOUqcgKj/03lhr6/0TpunSKMQ7ArJVMmeCH1N/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767861424; c=relaxed/simple;
	bh=ZWPQtEfuH8UxyooPW+VVMcCXbhPGC0MHcCoU9e8N7Xg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KbvQmTVYCAgQwN0ZZMR0GnE4J9+Ksca7695/VCBNm0QFuX6gYELC2lmMNoNdTGbst68Upz2u6b3iso8dAgKn7X8AeAD0azCcAcOebMGV0tgZE1jq07gLYkyyc3Z0UI3PKFLZ+WLgT5TPV7gCMKLp9/BFdqnf6t8zZ3sBg6oe08k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e39SOX3h; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JmKMQfko; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6087VOg91837908
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 08:36:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CTYkMR7xz3gkF8DeE6cwDcRKpU+RkFDd6XJYj6feXs8=; b=e39SOX3hqlhsgBov
	2zhYNcpPw+K4LItv4gL2syck03pFC9BcijJbizIHCInq3bsOX90u/LePgEDitCvL
	aYYJuqRoT8JEeXGOi2cWIFfrP3Iu+DBHThQHpblgr0m8a29qSv6bTURLVBUMPpxI
	ejfSwHiSyV9S6/JdwwUAKN39RfRN6PGpvct4zPz8VvAArpSk1yK2jX9et+ouJOno
	G+3dak7i5u0T6ip0avy3nM5+3+yCxIhEt4s+fPmYNgIEb+msSd1NJTRwPvpuSKCQ
	TpvyDSXxqdRhEd7xtscEbawotXfZPgbeLPuNyMx6Wn5fa7anCXttjGeOJnA3VDh9
	HFVrhw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj89205v8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 08:36:53 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c231297839so103898485a.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 00:36:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767861413; x=1768466213; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CTYkMR7xz3gkF8DeE6cwDcRKpU+RkFDd6XJYj6feXs8=;
        b=JmKMQfkoajDEyBmsujaOyLb0QsxFBzCBeBC0Jn5soZFOuR9MzId5a77IyWcaCPaSCQ
         OfwBmMm8TW3dhfw9pMMWNED6ZnhdJMZmwYWfCk2wzTUHdicteUE+5B8xe5JDA55I3XNE
         0owlebLIcG0Ye5lpCbshnN+6k0A7IS0LmZocN95vV+wPBxohHA9Ruxva+EyZlQMKOGQB
         NasGZhrT1k92HN8YZGWvY/bOxZ4L+Lz7L8BglNflzJk3MSsATXZQ3IGqzbcqNVbjMbH4
         KzXbbgo6cQjWGbRLwHdy1At7GFvkLLKFKXPJ2tsvEbfU472Rm/2l5MiKkAx5/G98vVV4
         gxog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767861413; x=1768466213;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CTYkMR7xz3gkF8DeE6cwDcRKpU+RkFDd6XJYj6feXs8=;
        b=kKU7Ep/c8A8q1ONfCwZhDl9rXEWlU4lSydfvjpNUIaUrtQ8qR9O0L/GkApoTFHpR96
         979alYQTd6vOrMKcLMQakVrMjpNCkcBLmuQbekjKhVwW9h5Y2VIIgTu/ha4iTGbnZTOr
         8iZ3WxCgD5R0evMBi6pvAAP/pQ/MIRYzPaa8KIA7AZrnmFRq+1nw+6vKLc9WahVeMXy6
         F7+JkunsgpR+sWiFoob33DP/UlBvzcM4g76EWv+uoYvnR2fZB8byGfvqGMaFkoQwCfc9
         eFWTImPoxeY1UN8nKyOs6KeZDWDkLbR6Ba83iJ8YoVBqFvFX+t4kfG2r0eNd85y0F202
         m0EA==
X-Forwarded-Encrypted: i=1; AJvYcCXPsDva2YA8sA3278lZmZsAYKy5w4Qm7q6L0Lq+Hrpb7xf59WZVJAgzuPbnPiMe1oOz+512mIyoVE3m@vger.kernel.org
X-Gm-Message-State: AOJu0YxWmbLAHCQJlcicakscV+v/u0wJtkkjENUzPlCICEukdAaKbKCN
	yg112luVMTV9TPOPsFGjiNMGXU/cksSP9DFQvzYeSzOeljNnNV+xhCQCXkAs+4gkmS/BVXVhphl
	5/xba5Xm1ADNOIHfabS/bUBu7DsUSx7QaLpp2dR7KY1CwTqFPT4rXAHH5+tTB8Zkv
X-Gm-Gg: AY/fxX4t3+Uj5GR9LL0PPGNsH0sTO9Et6EGhw9vqsTrvBfcfGuxNsWm2U/XBNRSogCz
	EF06ugUcQcHFAJANztBrruDpNPQrjmRwfrCxqybx3SgLWT/3XZsB9ditdXhOJgtUv6b8cYXWN/o
	PkGtlpGwixcuhDCyTYUs+szrxT2xRv7nXV4rvav0PXI1dNU8MH+OgY9pw+KCQlS9qy/0efP2zhF
	UdCMYl1i/HNpjXb1reCVjY0U0kzADyCB7t/I+ZUslhzcn6dkbbnYD0W2X5ZIzgltNOiFNcwdQCe
	qeE+FR81wNMPFiGNgy3wY/Wt4O8M/krTPzAEOIFg37ZwoaYR4wtZVUaxaJW5yaa+Xc9EOcbC09D
	RUBvZq3u/1a1poYvi3v81K30q6bkhi7Pb+JEtSYybs02W/XwlOSO6ug/Ugxbse9Gr3Eo=
X-Received: by 2002:a05:620a:40c2:b0:8a3:d644:6930 with SMTP id af79cd13be357-8c3893a11a8mr526597785a.5.1767861412547;
        Thu, 08 Jan 2026 00:36:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFD4aMxeE3c1H2Q2++mWBFTI86MgR9CL/2fTHJtpaEHuAcSdl7Wh34p2mHBfT46XOdc3dNojA==
X-Received: by 2002:a05:620a:40c2:b0:8a3:d644:6930 with SMTP id af79cd13be357-8c3893a11a8mr526595785a.5.1767861412072;
        Thu, 08 Jan 2026 00:36:52 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d683sm6954708a12.34.2026.01.08.00.36.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 00:36:51 -0800 (PST)
Message-ID: <4d95232c-f59a-42c3-9eb4-934b58429d25@oss.qualcomm.com>
Date: Thu, 8 Jan 2026 09:36:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 5/5] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
To: tessolveupstream@gmail.com, andersson@kernel.org, konradybcio@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251230130227.3503590-1-tessolveupstream@gmail.com>
 <20251230130227.3503590-6-tessolveupstream@gmail.com>
 <30ee8541-3ec2-49ac-8fe0-987cdc5b16e7@oss.qualcomm.com>
 <14613f89-6be0-4eb3-beb5-375ab008a313@gmail.com>
 <c3492b90-bb48-4584-99fd-b1b6832d22ff@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <c3492b90-bb48-4584-99fd-b1b6832d22ff@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=M45A6iws c=1 sm=1 tr=0 ts=695f6ca5 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=qqEUINORgcf7CWWjMcEA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: o5d6sdHVwplp-tOGSMjxipFcyKLpVcU_
X-Proofpoint-GUID: o5d6sdHVwplp-tOGSMjxipFcyKLpVcU_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA1OCBTYWx0ZWRfX8OBJXF++HPLi
 uSnBqj/xXV0BI3eLga9rPOeG6ciCGSRKyG/92THlZJJojmNLDsvlryrD2wr3b3tJ8JpH3OnAY6V
 Fc1YQwgnYz3vDvQzBfsgUVwIjbzCl/F2tcv84HgAoWk3M29LZJJy2ICHoSB3Ey+mPM0C+hqAWYr
 1SFZgPwbFBhoAQ6+vODLPNT8IMqNtsWAEe1pWdqITsUTJ1fH2XwxAbjEVPC3c7SuHTj0oiW5rX+
 Sc9uop166z6m0uhqr/GadU0eb54nFNTwue87/3DOWI9SkJpQu8ZMP18SblfeA1vefy4Q5A20iVx
 D5YZoWNtAJ8osPn/BHSSxdzpWwNtuarYYi1b9HqEab3ZLgch3wBTAiWwJQ5Xv9HBWtf5Fj4Ah0b
 P350HU7lE63tdcyLltJPMxO13GYtGewRv++fydDjHDXzIYoc8cTCpuyUqD8DO453H6uQO3Ncpsi
 ttQxzN+NwVUhfZplMzQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_01,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 bulkscore=0
 phishscore=0 suspectscore=0 clxscore=1015 spamscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601080058

On 1/8/26 8:36 AM, tessolveupstream@gmail.com wrote:
> 
> 
> On 04-01-2026 19:16, tessolveupstream@gmail.com wrote:
>>
>>
>> On 30-12-2025 20:21, Konrad Dybcio wrote:
>>> On 12/30/25 2:02 PM, Sudarshan Shetty wrote:
>>>> Add the device tree for the QCS615-based Talos EVK platform. The
>>>> platform is composed of a System-on-Module following the SMARC
>>>> standard, and a Carrier Board.
>>>>
>>>> The Carrier Board supports several display configurations, HDMI and
>>>> LVDS. Both configurations use the same base hardware, with the display
>>>> selection controlled by a DIP switch.
>>>
>>> [...]
>>>
>>>> +++ b/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
>>>> @@ -0,0 +1,126 @@
>>>> +// SPDX-License-Identifier: BSD-3-Clause
>>>> +/*
>>>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>>>> + */
>>>> +/dts-v1/;
>>>> +/plugin/;
>>>> +
>>>> +#include <dt-bindings/gpio/gpio.h>
>>>> +
>>>> +&{/} {
>>>> +	backlight: backlight {
>>>> +		compatible = "gpio-backlight";
>>>> +		gpios = <&tlmm 59 GPIO_ACTIVE_HIGH>,
>>>> +			<&tlmm 115 GPIO_ACTIVE_HIGH>;
>>>> +		default-on;
>>>> +	};
>>>> +
>>>> +	hdmi_connector: hdmi-out {
>>>> +		status = "disabled";
>>>> +	};
>>>
>>> This should be a &label_reference
>>>
>>
>> Okay, will add it in the next patch.
> 
> I noticed that in several existing .dtso files, the root node is
> commonly referenced as &{/}. In your comment, you suggested using &label_reference. Could you please clarify which specific label or 
> node you would like me to update here.

&{/} must be used for root nodes in a .dtso (for it to compile). I meant
using a &label_reference for hdmi_connector

Konrad

