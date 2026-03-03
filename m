Return-Path: <devicetree+bounces-270696-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8ICgNFMop2nSfAAAu9opvQ
	(envelope-from <devicetree+bounces-270696-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 19:28:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 982821F5511
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 19:28:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8824F3033396
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 18:27:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5205E377002;
	Tue,  3 Mar 2026 18:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LHOGoSDP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AzF8UYPt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5193264E4
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 18:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772562431; cv=none; b=NfcEBYn8tfcNGbYRVNOIfMJatL+20p7GhMTHY7c/s3iS5MapbvcwbnTMGAHomkb0g/zgc49z4NtVuk2e8M3x5jaeTn0bJ3sfd+PcGPy93dZGg4nywBOvwRC6SHYNMsJ0TDOq1bwk+v9Sskpg7iHzPRXqsNKLii/4P1kRozFIo0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772562431; c=relaxed/simple;
	bh=c2NFnJIc71DDZiAySYYRCxrOWh1tu9lCMtz9n2Hu7w8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HRSUXKWNe5BPbWB0r/IMZyaPceu3CWS23iUxxX7Io1o8yf3Z6iFQRA0cQyZLofssJfstjROO29Q/jjgdWkY2Wex1UHnQhYMMYkUXWh2E7m2p5wj4s/PrDyMr12NxLj4H8lPjQvAxqPOWYwfmvpRbiT/OBec/V12IUfGnYp6jsMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LHOGoSDP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AzF8UYPt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623H0eUt4030500
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 18:27:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jYGxjAWQoxFG5EFf4xvdURSIz0MaHyEsN6qzt6ChCaM=; b=LHOGoSDPyCOJGLwz
	ODkWI8xjGje3ur1f5gPBuGxM7D3wMrsgvo2naVINiDA3CNCdLbE8r5qv+gZ5Eig4
	m1vzvXtMoUhmMnQgiMRSpukfuU4CuTYf1bF4TU+SF8Nm1fplrkrKCiq9eFOInbf2
	kKAk4BweiP8bp7EyEF921mqgwXj1k8z+CJsHlRKW2poXlOTlsEggfEzbEOrD/0O8
	xdXmCQUNkCMioiPzyuY5Q39+dBDRnSPQRzltMmUmi3f+ySTAhXmaV9LuvI5bgiON
	u5UDWqMMkHOjHZt7T1ILFsljkcrQieKRWYwndBk8VIofkGseCgs+noWC5GEVlE+H
	ZPHTOA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnuqu22v3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 18:27:08 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-824b42b8a81so21378488b3a.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 10:27:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772562425; x=1773167225; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jYGxjAWQoxFG5EFf4xvdURSIz0MaHyEsN6qzt6ChCaM=;
        b=AzF8UYPtAJ5goFLtVxH8UtJIfcXIM+Tl6kOHb7fJQK/yCJerMAWJCl8dJChh5DaP8h
         XjWojFv9Rlwd594r71MYg633/JtV2SYufmGD62EuBDgvPp+8oTDUU5FFi/0yxpjBBSyW
         hiahL/NYHFxxMNDSVmKsp1Zf/MUyGjAaKPmp2euHkUkBELXryE8tCkGa1uGf4XHeVuuM
         cfqVnIhHdJfkkGunrz+2bvYmjetxQxpxSHk5Ons5PPMucGeEThRNA+RwPuEnGPJGg3Vj
         mVMizGIm7yJDENzmheVduxcl6CxlAmnT5V8cmIHlZNUWTx/NxguHbrsF8lqm/jfhD8P9
         13jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772562425; x=1773167225;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jYGxjAWQoxFG5EFf4xvdURSIz0MaHyEsN6qzt6ChCaM=;
        b=BZhbFFM4vbw2EDyGN17gC0J7eYpSVq93vzVF6wPYz1WFumzi5ZrfaQ5ke9DHiHyzXq
         wOjtFg9B7Cbm15LwJV4sT6uhiqDcI9MG6JKdJSVnTW4FLFLXuyUQznDFdTSAYBmREMjh
         sSeIndVZ6itt4qT7dCY5mSny3uR0YDlEBmQHOlUirpxDmn7SI6T963YbjQNMxePqNdYi
         SgW0kkJE0tymu+nsmYFbR1ys7ZRxSyy19rMuD1wWcvsTp904C0tWRqyVm/0grhLUgDo2
         PhzUGm70M7v9beJN/olhw8aHPzmjnGuyaNR9xnZiposvdL3stTfkpUQFL6q1IF6kk+LZ
         aWow==
X-Forwarded-Encrypted: i=1; AJvYcCXEAgxix4qAV6sQLWDNHEw+Beim8fqWDXlV46hkozaVJwoA4l/628TM3ZSEaoPAMHY2yhHCYTU0hFfH@vger.kernel.org
X-Gm-Message-State: AOJu0YwiFlI3YlLVqX/hOpqovoVk7nCl8+VcbH4Nmf6LJuPk3AuBmcmw
	dJ6GUrX5M+YE40AkX1U7I2OZTs2Fo0S+7O7iIJrB69hpevsrs7EdeWMibJOUH3mTD9JllfgBGVg
	7rmGFQvxkSJPYyLy6Pec8nYNkqOJxpwo23JeKsYh0yxSi2Zu8Xn1AZnqr+ZIh1l5H
X-Gm-Gg: ATEYQzzUvo6uPOREVAEP4InZPK7kHpiZZvtMUDwd5xAkxWaVmqRHqHFlJG1myPIZsjL
	6JYMVFTTdR8qztJJuBafTSxtxhjs0tM/c95c7GQWZPcolTcoDt22p3EzT39974o0Q6Wry208ApP
	VkUryJiCRi0bZEe21ICGoRt0sPSgKj/SXERhuRmh1s6Yk27lU3cvst9jevB27PTFLymo8p2SffU
	eJl7ZVefezzWVWyGuuvJu1xCfIfEo/yuR/UucuGQXkBiErTlF6fAHVPNW7//iIrQFmRRRTbRp1Y
	fmkGrwo3BlF87IE0m+++KRo5s4bgaKysU3u/tg7p2O75DujsWeAp5qqnD+DXUbO33nwFjYrYLjq
	jMk4uQZUBcw1As+gZSni1Sgq7WjlQ92oFvQXLEie+fpRF/T0oVM0L/dk=
X-Received: by 2002:a05:6a00:3a2a:b0:824:a81e:97b5 with SMTP id d2e1a72fcca58-8274d9f452emr17084702b3a.38.1772562424486;
        Tue, 03 Mar 2026 10:27:04 -0800 (PST)
X-Received: by 2002:a05:6a00:3a2a:b0:824:a81e:97b5 with SMTP id d2e1a72fcca58-8274d9f452emr17084650b3a.38.1772562423945;
        Tue, 03 Mar 2026 10:27:03 -0800 (PST)
Received: from [192.168.0.172] ([49.205.248.49])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739ff1ca9sm15764781b3a.36.2026.03.03.10.26.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 10:27:03 -0800 (PST)
Message-ID: <6dd03335-5fbe-4e01-9929-fcea8e5c0128@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 23:56:55 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/7] media: iris: add iris vpu bus support and register
 it with iommu_buses
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20260227-kaanapali-iris-v2-0-850043ac3933@oss.qualcomm.com>
 <20260227-kaanapali-iris-v2-3-850043ac3933@oss.qualcomm.com>
 <20257f68-04cf-40fa-9f0b-bd798e62b7eb@kernel.org>
Content-Language: en-US
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <20257f68-04cf-40fa-9f0b-bd798e62b7eb@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=M85A6iws c=1 sm=1 tr=0 ts=69a727fc cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=KPiuay1jFzAquJblYynD6w==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=lkRiF8b6XqOJfXNWt28A:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: 8n3U7GqTsCBqaCPGwpntYHCvMgPHXxwK
X-Proofpoint-ORIG-GUID: 8n3U7GqTsCBqaCPGwpntYHCvMgPHXxwK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDE0OSBTYWx0ZWRfX+pzSFRFv0UDR
 I23GaT59SBO3DgIWz4NrI/mppGbIRNu6WBkkeBOwVSYmNcsqs2Cl00I9pwRdpVXJT+QdNwhdt5g
 FXr8Tt50Zr99TLO8579tJ/g6V4WNRRg3rfEgBeQmP/ROtkfN9dwDYftROmHEtgG2Nj8G03U3w5x
 VSzCWFQINLahvQIS/ocs4FQU+nybioaJHZvg2q5SCnWXqUU8l29VeQt//IYUZCLRYz67e7UUgHn
 v1EN8Jp45nhycZRGQR/+bHmNtYoF3hATritQ6H/bXnsMavyn6b4EFcegCjhZKf+kX5IBxBNcBjX
 ebwj8HrvuLT4Ix36Qb7NDGt6WC5vD1JJpsIkY5iORg6WMiOtYwYrpWJHSa0mNThxSDxeufCt1td
 EaKa+yWC+rjLYTOmbF4PtKvklyYydtYw3//w23a2CUaeT3PgC8ijY+Q44ZEmuH2YnDNLwkZsSNJ
 3GuJ17QGBEQ0FFT6LgQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_02,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030149
X-Rspamd-Queue-Id: 982821F5511
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270696-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 2/27/2026 9:19 PM, Krzysztof Kozlowski wrote:
> On 27/02/2026 15:11, Vikash Garodia wrote:
>> Add iris vpu bus support and hooks the new bus into the iommu_buses
>> list. Iris devices need their own bus so that each iris device can run
>> its own dma_configure() logic.
>>
>> Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
>> Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
>> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
>> ---
>>   drivers/iommu/iommu.c                           |  4 ++++
>>   drivers/media/platform/qcom/iris/Makefile       |  4 ++++
>>   drivers/media/platform/qcom/iris/iris_vpu_bus.c | 32 +++++++++++++++++++++++++
>>   include/linux/iris_vpu_bus.h                    | 13 ++++++++++
>>   4 files changed, 53 insertions(+)
>>
>> diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
>> index 35db5178095404fec87cd0f18e44ea97cf354e78..fd5fb7c10da22ab548d359ca1f44504acc3d646c 100644
>> --- a/drivers/iommu/iommu.c
>> +++ b/drivers/iommu/iommu.c
>> @@ -13,6 +13,7 @@
>>   #include <linux/bug.h>
>>   #include <linux/types.h>
>>   #include <linux/init.h>
>> +#include <linux/iris_vpu_bus.h>
>>   #include <linux/export.h>
>>   #include <linux/slab.h>
>>   #include <linux/errno.h>
>> @@ -178,6 +179,9 @@ static const struct bus_type * const iommu_buses[] = {
>>   #ifdef CONFIG_CDX_BUS
>>   	&cdx_bus_type,
>>   #endif
>> +#if IS_ENABLED(CONFIG_VIDEO_QCOM_IRIS)
>> +	&iris_vpu_bus_type,
>> +#endif
>>   };
>>   
>>   /*
>> diff --git a/drivers/media/platform/qcom/iris/Makefile b/drivers/media/platform/qcom/iris/Makefile
>> index 2abbd3aeb4af07e52bf372a4b2f352463529c92c..6f4052b98491aeddc299669334d4c93e9a3420e4 100644
>> --- a/drivers/media/platform/qcom/iris/Makefile
>> +++ b/drivers/media/platform/qcom/iris/Makefile
>> @@ -31,3 +31,7 @@ qcom-iris-objs += iris_platform_gen1.o
>>   endif
>>   
>>   obj-$(CONFIG_VIDEO_QCOM_IRIS) += qcom-iris.o
>> +
>> +ifdef CONFIG_VIDEO_QCOM_IRIS
>> +obj-y += iris_vpu_bus.o
>> +endif
>> diff --git a/drivers/media/platform/qcom/iris/iris_vpu_bus.c b/drivers/media/platform/qcom/iris/iris_vpu_bus.c
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..34ce78d9b0ff1feda15ba4f060a56d02749a0858
>> --- /dev/null
>> +++ b/drivers/media/platform/qcom/iris/iris_vpu_bus.c
>> @@ -0,0 +1,32 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * Copyright (c) 2026 Qualcomm Innovation Center, Inc. All rights reserved.
>> + */
>> +
>> +#include <linux/device.h>
>> +#include <linux/of_device.h>
>> +
>> +#include "iris_platform_common.h"
>> +
>> +static int iris_vpu_bus_dma_configure(struct device *dev)
>> +{
>> +	struct iris_context_bank *cb = dev_get_drvdata(dev);
>> +
>> +	if (!cb)
>> +		return -ENODEV;
>> +
>> +	return of_dma_configure_id(dev, dev->parent->of_node, true, &cb->f_id);
> 
> 
> Apply this patch and build it. Does it build?

it was incorrectly organized, since the struct was defined in subsequent 
patch. Will fix this in next revision.

> 
> Best regards,
> Krzysztof

Regards,
Vikash

