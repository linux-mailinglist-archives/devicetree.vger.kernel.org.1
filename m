Return-Path: <devicetree+bounces-249407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 17EAECDBA7F
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 09:20:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5B717300D163
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 08:20:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3564630AACB;
	Wed, 24 Dec 2025 08:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MKRqgpye";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eL1U4Xb+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A3F279DC3
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 08:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766564413; cv=none; b=pKMUsrfumCxJyRElkwHdvODEczxMfbR4BDeCZWuCU0/0qUYqMFId1zIQSchU5wJ+BaWUrTfa6eEGMR3oAtVz/yAzHXsJvjb0atTUzHJd5OPhYoNdmLudl8Dwv6NqMqEdSdzg6HFqABWQp21QUOyY1U9MextFxvk6TSbFsUagGqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766564413; c=relaxed/simple;
	bh=4tiG7mYYhrJHtMUu2zLkSlC44E+ts0dw44yrBndIklY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OtFXbcZ6jSgHvnGYim9I/b5ERKwBO+XvAfly+LvzHf2cUPq+PBJCfHO04VoF4yDmiP8OmB3yt8LgcnApqzMYtjNEWU4Yiqgst5kmPjxgaodBRlum8aBjpf0GbFkitY9iumigU4NVrTUQwqaGabWlLVIBPGVu+AcCyzTVJDzF4DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MKRqgpye; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eL1U4Xb+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNKXmJH1206755
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 08:20:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v1aTFRmwjiHABmaYA3Tkt3n6HdoFNrXtqlDsLqKqL88=; b=MKRqgpye7LYOlypK
	/VD7Uv7lG0ZQ1Hq5I24L50SOiPZgUlUyOyyUGkFtM2Ru8eew8OpNcvP3udCUZ3YT
	Eham8SaB6tz0U+n83a+1p7eQcPprLnMCW3DxoKdIDp4GkdvNbUcZFvoaSZNXuIXQ
	MfMbhp51khNDukff921A5W9fYBg9R4ou3nVZK291dPaNg60cO/qMTy5T+4fL2jM3
	mPwBIYTWsTRwyJWpkzQzUKkERVlbC/vuxM9+J4acFGHJYD2+AOm/R94puUjAke8O
	RMTSYj+nztSXOeTtuRYXOZiN+H6bt7iXdmmabiF0FQeeIWwZBwgaIF58bvpzIpPw
	d/heQg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b827r1g5e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 08:20:09 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34c93f0849dso5716907a91.1
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 00:20:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766564409; x=1767169209; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v1aTFRmwjiHABmaYA3Tkt3n6HdoFNrXtqlDsLqKqL88=;
        b=eL1U4Xb+hnF2up/MOEGgIx3VDvPFOXyHF+aS+RL2J4kmEDTuLTuIhA9dCeY30ahWO8
         IDjD4iZSNENYV0OJwh1yeOIwVJXl/hDXbnpf/v4FAKYJy00mR+S4X9i9+vXJ1gLy2k65
         srfIMnR2DHujDUXeqPgfWHqCgv+12M6LQWpKXGU+P3dRiMYLNjoQJfubNzBVW2OXoP4G
         JOX8jHIIGxmd55vWMfqBIEznfb/3nwtnq6lbCXRSdTSxeeyPA17wqOSJSzL8haxo1NUt
         h+b7Z1WC5dPZBzgp0Ql9oo3kx/+isSGj4WW7CkHsQNuSulVtRf96hTBqSHcJ97xXrkyb
         6wmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766564409; x=1767169209;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v1aTFRmwjiHABmaYA3Tkt3n6HdoFNrXtqlDsLqKqL88=;
        b=UYD5cb1kz11XLRZTjvQkAlMnCi2Vvo+o4tkutpo30NoG9r1ER0rXB8bmgP5+bHPmgn
         tbzxIsb87gXcMX7UutryjNeVw5okMZ7oQUpqgl6vlHR42c2RRjSZEoeCBZh9XimpF0P4
         oNbKV058O7gOdlJdLXpXBLRXWqS8tGbFqy9ACUn+V2mlKr3QzGHAVGG7DqB/LieRHJ7V
         jMiQq1wme/Cy6ByufZLri5Ps1AGsDg9hlDUWRj52TWXSj9/Ch1YQsp0+Qdx/sFZ30vo6
         dHjGfeyPNVBdesXgrtrwUIMrULAc5RmWTUSpIggqcY4Ya2ojt0PZCan+6Iid1XdHKvg9
         qJ6w==
X-Forwarded-Encrypted: i=1; AJvYcCUawEHqsFK0VY/yLGIEH8Hl21yodSsUL2dnIsRPkFMFjm7IyDrqLgqvERVVFuXk5PfZLw26OeN2gfrQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1Q+hVDhw+hmjCPM4/0vpsSUlfsdatTjRQA9WAYHgBNORj4LHR
	5dPBnacisoUPVxoMUjM7KDaMThxSGVij1dz6Vq4uSuyVlnpQAxFZuEMzFcrztYJcMNHzYmr5TLe
	T07y/iuUlJbVIPfmERfZ0pj3AnwqsTCM7fGYk5Lc0THox5MVZlTeDwnPgHJ4WQG8k
X-Gm-Gg: AY/fxX68v6huKAIzN20+L41e2XCvpi3EPTB17EADWhJS8jikvsphpdAzQ3Wb1cyprYe
	l/6RKYr6uEALuq1yBXFu5AY97boj0PcXThdn5cDmM/HjKKIr8zq9/iA95tMD0dSBRYSm46RO0JV
	rxA55UQjyW8BDFp9M9qzheRrm/bVUW1ZsF8YLOJV5efLcboes4xvz1F4LTYmEBQ6HIBzYtSkZtS
	39KkSavzjG9tnCggDy1ERPkfynVzB8rszzP/Sde6+by+hxU51lNTAAsuC2bJFYZT2dYt9exmmgt
	ZO2eD5qvkfhZ7WtGux9ISKFfdJgc4gY51wSNLlg6aGKHgWMQSNbATv6ZqeC3c0GdO8k+ml2ZYfg
	CuaOPUTdcdFeuMpKFpwp9jiamkkalMoveSk752/FjFQ==
X-Received: by 2002:a17:90b:4b0b:b0:340:c094:fbff with SMTP id 98e67ed59e1d1-34e71e09fecmr17011427a91.10.1766564408661;
        Wed, 24 Dec 2025 00:20:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGivsG+N5RJkX5fsHsrnoYYjv8t3uRuyakLXbUPqE1tarR4/F9wX1tOx5Dxy7dfZiDukn6lng==
X-Received: by 2002:a17:90b:4b0b:b0:340:c094:fbff with SMTP id 98e67ed59e1d1-34e71e09fecmr17011402a91.10.1766564408100;
        Wed, 24 Dec 2025 00:20:08 -0800 (PST)
Received: from [192.168.1.11] ([106.222.232.236])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e77285111sm9006585a91.5.2025.12.24.00.20.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Dec 2025 00:20:07 -0800 (PST)
Message-ID: <611b87db-9226-4c99-a07d-03351dd10546@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 13:50:00 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/8] thermal: Add Remote Proc cooling driver
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, rafael@kernel.org,
        daniel.lezcano@linaro.org, rui.zhang@intel.com, lukasz.luba@arm.com,
        konradybcio@kernel.org, amitk@kernel.org, mani@kernel.org,
        casey.connolly@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org,
        Amit Kucheria <amit.kucheria@oss.qualcomm.com>
References: <20251223123227.1317244-1-gaurav.kohli@oss.qualcomm.com>
 <20251223123227.1317244-2-gaurav.kohli@oss.qualcomm.com>
 <iz3e2ojepgjo4c36ibl5sfpw2oidkj7sao6o2jint4midgsynm@adhsfkukk2ba>
Content-Language: en-US
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
In-Reply-To: <iz3e2ojepgjo4c36ibl5sfpw2oidkj7sao6o2jint4midgsynm@adhsfkukk2ba>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: oj9k9qhNbdL3aEgJ7w8AeLpQzF1IPmms
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA3MSBTYWx0ZWRfX2TMdMttwvgPF
 5wp5x8Ex2d3O9Nr5oCnSFlfl7tG+JCPv3l2udY0sR3SzPy3ZDqd/i2tIwWlh17xvep04wEhMIKv
 ubwLdfGBGA+L5udokQAtfitAeZdz0KJY0Z3gGZLXXxPEzzMDkNQlp7l0HKddAS8omX7K3pkoHCw
 nChDnL8uak3mbQId8fxDk9Bg92kX1t33ozPquS1iuNpJ5fhbKwLboWrJVX1rmMmRgmAnnQMdwY9
 rAFV8fOmg0S6KnuvnIIBPx00hP2m8aWe8ORmOB9NfNv/I4LGGJ9g8XVseeuD2b9yCKA4/D3bVwy
 KtiFNFICtTMyjTRskvBkZBE0r2rdO9fBijKkCEuSERdRO2h3uce6N4Ky+ix+gXGg1U8g6f8QylF
 gse/sPrQ3CZwIFuyDrZdhGbMGTZbgy+kFwHScevigntBcCqJyhsRSxHiBjHcyVrlfWsQxccKSzm
 qKjEuIc63MCHew0IGHw==
X-Proofpoint-GUID: oj9k9qhNbdL3aEgJ7w8AeLpQzF1IPmms
X-Authority-Analysis: v=2.4 cv=RbSdyltv c=1 sm=1 tr=0 ts=694ba239 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=pk+8NuH2X28N4C0eta/h1Q==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=7CQSdrXTAAAA:8
 a=a4_5xkhM6FseDPdgHKsA:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240071


On 12/24/2025 12:53 AM, Dmitry Baryshkov wrote:
> On Tue, Dec 23, 2025 at 06:02:20PM +0530, Gaurav Kohli wrote:
>> Add a new generic driver for thermal cooling devices that control
>> remote processors (modem, DSP, etc.) through various communication
>> channels.
>>
>> This driver provides an abstraction layer between the thermal
>> subsystem and vendor-specific remote processor communication
>> mechanisms.
> This driver simply wraps 3 callbacks. Please explain in the commit
> message, why do we need it? Why can't the consumer of this API simply
> provide those callbacks directly?


thanks for review, sure i will update in next post.


>> Suggested-by: Amit Kucheria <amit.kucheria@oss.qualcomm.com>
>> Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
>> ---
>>   MAINTAINERS                          |   8 ++
>>   drivers/thermal/Kconfig              |  11 ++
>>   drivers/thermal/Makefile             |   2 +
>>   drivers/thermal/remoteproc_cooling.c | 154 +++++++++++++++++++++++++++
>>   include/linux/remoteproc_cooling.h   |  52 +++++++++
>>   5 files changed, 227 insertions(+)
>>   create mode 100644 drivers/thermal/remoteproc_cooling.c
>>   create mode 100644 include/linux/remoteproc_cooling.h
>>
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 679e5f11e672..c1ba87315cdf 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -25935,6 +25935,14 @@ F:	drivers/thermal/cpufreq_cooling.c
>>   F:	drivers/thermal/cpuidle_cooling.c
>>   F:	include/linux/cpu_cooling.h
>>   
>> +THERMAL/REMOTEPROC_COOLING
>> +M:	Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
>> +L:	linux-pm@vger.kernel.org
>> +S:	Supported
>> +F:	drivers/thermal/remoteproc_cooling.c
>> +F:	include/linux/remoteproc_cooling.h
>> +
>> +
>>   THERMAL/POWER_ALLOCATOR
>>   M:	Lukasz Luba <lukasz.luba@arm.com>
>>   L:	linux-pm@vger.kernel.org
>> diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
>> index b10080d61860..31e92be34387 100644
>> --- a/drivers/thermal/Kconfig
>> +++ b/drivers/thermal/Kconfig
>> @@ -229,6 +229,17 @@ config PCIE_THERMAL
>>   
>>   	  If you want this support, you should say Y here.
>>   
>> +
>> +config REMOTEPROC_THERMAL
>> +	bool "Remote processor cooling support"
> Why this is 'bool' rather than 'tristate'?


tristate will be fine, will update this.


>
>> +	help
>> +	  This implements a generic cooling mechanism for remote processors
>> +	  (modem, DSP, etc.) that allows vendor-specific implementations to
>> +	  register thermal cooling devices and provide callbacks for thermal
>> +	  mitigation.
>> +
>> +	  If you want this support, you should say Y here.
>> +
>>   config THERMAL_EMULATION
>>   	bool "Thermal emulation mode support"
>>   	help
>> diff --git a/drivers/thermal/Makefile b/drivers/thermal/Makefile
>> index bb21e7ea7fc6..ae747dde54fe 100644
>> --- a/drivers/thermal/Makefile
>> +++ b/drivers/thermal/Makefile
>> @@ -34,6 +34,8 @@ thermal_sys-$(CONFIG_DEVFREQ_THERMAL) += devfreq_cooling.o
>>   
>>   thermal_sys-$(CONFIG_PCIE_THERMAL) += pcie_cooling.o
>>   
>> +thermal_sys-$(CONFIG_REMOTEPROC_THERMAL) += remoteproc_cooling.o
>> +
>>   obj-$(CONFIG_K3_THERMAL)	+= k3_bandgap.o k3_j72xx_bandgap.o
>>   # platform thermal drivers
>>   obj-y				+= broadcom/
>> diff --git a/drivers/thermal/remoteproc_cooling.c b/drivers/thermal/remoteproc_cooling.c
>> new file mode 100644
>> index 000000000000..a1f948cbde0f
>> --- /dev/null
>> +++ b/drivers/thermal/remoteproc_cooling.c
>> @@ -0,0 +1,154 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Remote Processor Cooling Device
>> + *
>> + * Copyright (c) 2025, Qualcomm Innovation Center, Inc. All rights reserved.
>> + */
>> +
>> +#include <linux/err.h>
>> +#include <linux/export.h>
>> +#include <linux/module.h>
>> +#include <linux/mutex.h>
>> +#include <linux/of.h>
>> +#include <linux/slab.h>
>> +#include <linux/thermal.h>
>> +
>> +#define REMOTEPROC_PREFIX		"rproc_"
>> +
>> +struct remoteproc_cooling_ops {
>> +	int (*get_max_level)(void *devdata, unsigned long *level);
>> +	int (*get_cur_level)(void *devdata, unsigned long *level);
>> +	int (*set_cur_level)(void *devdata, unsigned long level);
>> +};
>> +
>> +/**
>> + * struct remoteproc_cdev - Remote processor cooling device
>> + * @cdev: Thermal cooling device handle
>> + * @ops: Vendor-specific operation callbacks
>> + * @devdata: Private data for vendor implementation
>> + * @np: Device tree node associated with this cooling device
>> + * @lock: Mutex to protect cooling device operations
>> + */
>> +struct remoteproc_cdev {
>> +	struct thermal_cooling_device *cdev;
>> +	const struct remoteproc_cooling_ops *ops;
>> +	void *devdata;
>> +	struct device_node *np;
>> +	struct mutex lock;
>> +};
>> +
>> +
>> +/* Thermal cooling device callbacks */
>> +
>> +static int remoteproc_get_max_state(struct thermal_cooling_device *cdev,
>> +				    unsigned long *state)
>> +{
>> +	struct remoteproc_cdev *rproc_cdev = cdev->devdata;
>> +	int ret;
>> +
>> +	if (!rproc_cdev || !rproc_cdev->ops)
>> +		return -EINVAL;
>> +
>> +	mutex_lock(&rproc_cdev->lock);
>> +	ret = rproc_cdev->ops->get_max_level(rproc_cdev->devdata, state);
>> +	mutex_unlock(&rproc_cdev->lock);
>> +
>> +	return ret;
>> +}
>> +
>> +static int remoteproc_get_cur_state(struct thermal_cooling_device *cdev,
>> +				    unsigned long *state)
>> +{
>> +	struct remoteproc_cdev *rproc_cdev = cdev->devdata;
>> +	int ret;
>> +
>> +	if (!rproc_cdev || !rproc_cdev->ops)
>> +		return -EINVAL;
>> +
>> +	mutex_lock(&rproc_cdev->lock);
>> +	ret = rproc_cdev->ops->get_cur_level(rproc_cdev->devdata, state);
>> +	mutex_unlock(&rproc_cdev->lock);
>> +
>> +	return ret;
>> +}
>> +
>> +static int remoteproc_set_cur_state(struct thermal_cooling_device *cdev,
>> +				    unsigned long state)
>> +{
>> +	struct remoteproc_cdev *rproc_cdev = cdev->devdata;
>> +	int ret;
>> +
>> +	if (!rproc_cdev || !rproc_cdev->ops)
>> +		return -EINVAL;
>> +
>> +	mutex_lock(&rproc_cdev->lock);
>> +	ret = rproc_cdev->ops->set_cur_level(rproc_cdev->devdata, state);
>> +	mutex_unlock(&rproc_cdev->lock);
>> +
>> +	return ret;
>> +}
>> +
>> +static const struct thermal_cooling_device_ops remoteproc_cooling_ops = {
>> +	.get_max_state = remoteproc_get_max_state,
>> +	.get_cur_state = remoteproc_get_cur_state,
>> +	.set_cur_state = remoteproc_set_cur_state,
>> +};
>> +
>> +struct remoteproc_cdev *
>> +remoteproc_cooling_register(struct device_node *np,
>> +			     const char *name, const struct remoteproc_cooling_ops *ops,
>> +			     void *devdata)
>> +{
>> +	struct remoteproc_cdev *rproc_cdev;
>> +	struct thermal_cooling_device *cdev;
>> +	int ret;
>> +
>> +	if (!name || !ops) {
>> +		return ERR_PTR(-EINVAL);
>> +	}
>> +
>> +	rproc_cdev = kzalloc(sizeof(*rproc_cdev), GFP_KERNEL);
>> +	if (!rproc_cdev)
>> +		return ERR_PTR(-ENOMEM);
>> +
>> +	rproc_cdev->ops = ops;
>> +	rproc_cdev->devdata = devdata;
>> +	rproc_cdev->np = np;
>> +	mutex_init(&rproc_cdev->lock);
>> +
>> +	char *rproc_name __free(kfree) =
>> +		kasprintf(GFP_KERNEL, REMOTEPROC_PREFIX "%s", name);
>> +	/* Register with thermal framework */
>> +	if (np) {
>> +		cdev = thermal_of_cooling_device_register(np, rproc_name, rproc_cdev,
>> +							  &remoteproc_cooling_ops);
>> +	}
>> +
>> +	if (IS_ERR(cdev)) {
>> +		ret = PTR_ERR(cdev);
>> +		goto free_rproc_cdev;
>> +	}
> So, if np == NULL, we register nothing, but still return 0 (aka no
> error). Why?
>
>> +
>> +	rproc_cdev->cdev = cdev;
>> +
>> +	return rproc_cdev;
>> +
>> +free_rproc_cdev:
>> +	kfree(rproc_cdev);
>> +	return ERR_PTR(ret);
>> +}
>> +EXPORT_SYMBOL_GPL(remoteproc_cooling_register);
>> +
>> +void remoteproc_cooling_unregister(struct remoteproc_cdev *rproc_cdev)
>> +{
>> +	if (!rproc_cdev)
>> +		return;
>> +
>> +	thermal_cooling_device_unregister(rproc_cdev->cdev);
>> +	mutex_destroy(&rproc_cdev->lock);
>> +	kfree(rproc_cdev);
>> +}
>> +EXPORT_SYMBOL_GPL(remoteproc_cooling_unregister);
>> +
>> +MODULE_LICENSE("GPL");
>> +MODULE_DESCRIPTION("Remote Processor Cooling Device");
>> diff --git a/include/linux/remoteproc_cooling.h b/include/linux/remoteproc_cooling.h
>> new file mode 100644
>> index 000000000000..ef94019d220d
>> --- /dev/null
>> +++ b/include/linux/remoteproc_cooling.h
>> @@ -0,0 +1,52 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/*
>> + * Remote Processor Cooling Device
>> + *
>> + * Copyright (c) 2025, Qualcomm Innovation Center
>> + */
>> +
>> +#ifndef __REMOTEPROC_COOLING_H__
>> +#define __REMOTEPROC_COOLING_H__
>> +
>> +#include <linux/thermal.h>
>> +
>> +struct device;
>> +struct device_node;
>> +
>> +struct remoteproc_cooling_ops {
>> +	int (*get_max_level)(void *devdata, unsigned long *level);
>> +	int (*get_cur_level)(void *devdata, unsigned long *level);
>> +	int (*set_cur_level)(void *devdata, unsigned long level);
>> +};
>> +
>> +struct remoteproc_cdev;
>> +
>> +#ifdef CONFIG_REMOTEPROC_THERMAL
>> +
>> +struct remoteproc_cdev *
>> +remoteproc_cooling_register(struct device_node *np,
>> +			     const char *name,
>> +			     const struct remoteproc_cooling_ops *ops,
>> +			     void *devdata);
>> +
>> +void remoteproc_cooling_unregister(struct remoteproc_cdev *rproc_cdev);
>> +
>> +#else /* !CONFIG_REMOTEPROC_THERMAL */
>> +
>> +static inline struct remoteproc_cdev *
>> +remoteproc_cooling_register(struct device_node *np,
>> +			     const char *name,
>> +			     const struct remoteproc_cooling_ops *ops,
>> +			     void *devdata)
>> +{
>> +	return ERR_PTR(-EINVAL);
>> +}
>> +
>> +static inline void
>> +remoteproc_cooling_unregister(struct remoteproc_cdev *rproc_cdev)
>> +{
>> +}
>> +
>> +#endif /* CONFIG_REMOTEPROC_THERMAL */
>> +
>> +#endif /* __REMOTEPROC_COOLING_H__ */
>> -- 
>> 2.34.1
>>

