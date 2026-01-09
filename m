Return-Path: <devicetree+bounces-253252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4828DD08E4F
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 12:30:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 192E2308B378
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 11:28:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2CD13191D7;
	Fri,  9 Jan 2026 11:28:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ikOy7S9d";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EhRennRD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A3F3168E8
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 11:28:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767958129; cv=none; b=Qg6ulCO1iGZBWIbnpCCYjis/uqhtFuc4h533GSt7fCl7jlW6r/OcD3SP7t07DEoLaBmSfAFX9hxGAyU/qK8m9wKwkA2m2xhT5VwDXWlutyBq6rsuLNKLpLZoys5P3mvRhxIKIitmZqQSIloadtVJGgjjhWLYBnhAZ/F0uEd74GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767958129; c=relaxed/simple;
	bh=RyPtMQ23AElf9e63ayNjxmnBya/d3ZZ+Uo6NeW6+EtU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LKub4NWKkpVm1D78c88C5wpn7MzGKDb2MoyvUAPcKvtfZtRq0og/Al5QKfYE4SzioOdXzYJDivFdc7eqxy+a+SROiLEb5JCUj1MO+MpTTNqqYxWnliE60zYbkCDVQ+dQxcneFtCIWB7zMkb2JxmnwFuUAJUrILqVbZoBVcN4Z2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ikOy7S9d; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EhRennRD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6099jF0m007866
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 11:28:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FGN5OGrvh/x38joNYPZBYpzrIyLezSMcAcL6/Hj2ygo=; b=ikOy7S9dofpnkYZo
	sSn6rBp89ChrG6PQekeLao9fU8+Hr+4UfpRImfQr1x1jXFmj1E9FWDageRbz9Qb2
	13ADnFbnkRCXztpL9Ipj+V1RzU09818ZmcMer2QtlnXPBtyRbPUcn2NtWdEn6q7T
	sFihpMXEjoU7HHg7yvSyNtAteHniqYxqqppsVh0PExIhqBQ75E4PigkB47ltOIfs
	28BmBln4Kcf7PsmYPvuaJsBLg5Gi9rYltmilU8apfa73XNUmXInoWlp7+s5nyVqI
	1olAfika42qQf8z/mCupei6vrQH9xBHRVaAwEZ5S3ZGrkh7/QsZcqbDRqt7KveQ8
	O/Pl+w==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjyaqg9c2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 11:28:40 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7ba9c366057so7622620b3a.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 03:28:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767958120; x=1768562920; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FGN5OGrvh/x38joNYPZBYpzrIyLezSMcAcL6/Hj2ygo=;
        b=EhRennRDpplGYc9KNp0/m+pm7gJCVYHqpZqSA1lm5fLgzRpMtg8IhVbn7cQbt5EX7c
         EKC5U7hZCRFqguEHjHRKOQjSKISWadXp0rHM/k0BfLxQ/hRY6+/TkV6fRILoGjjFf6T5
         5nExF/3/JQ8x6UDAkhF6/WnCVc+ZdhFRpHEjU+KCoL+NOW8U6P3lqvWrG3kYGSxvkJdc
         b7p0M9cbuADxExaiviXOJyc7XOC0df4DZoUB84RLtn+yEwuSqZ7/V5ZHMAoSAqt6lZzo
         9GlqWH1k7W39YoayfTIseHtqJw7q/+ANGXXyMvdn2Y93GRuYlz9X4RYWPjmj2ibNkBoe
         OVFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767958120; x=1768562920;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FGN5OGrvh/x38joNYPZBYpzrIyLezSMcAcL6/Hj2ygo=;
        b=AFE3XA5NgFQRw48PJoxxSbIk6EPBF0O1rZQI4Ti13RHVq42nRlYFbdlHR9pzjw/7LL
         Lw5JtP88jXWUoBDg/JRqh4A97nEh36iTyuMBz956FNP3e1YL9jw9KiZlcS0mbIOotFb5
         /7xlLlHa9XEpsaGHmePX62jpZyuqVvOinvTTvXGzClni5iUMpTi+Is8b6iQao0fc8ZKC
         0iVwoYkaGZIG89oHrwcAPhPFHxMw0UrERry6nSIQtT5u7oUgd4U4IzQVfJzHHhZQETym
         QutnfsuZwO7rHV2EHPbVLIEHkGg2lGhxY+EQmIJrfB+6G0KbAEuzSfFyMUv7Hsm18UM3
         /VVw==
X-Forwarded-Encrypted: i=1; AJvYcCUdDqa6LBJrea0U+NBvlIOqv0TrLgiKfCWFHyau5NtOqh5imn0rhGOad+oU3E2s6gB9anNI2Rlpcng2@vger.kernel.org
X-Gm-Message-State: AOJu0Yzbl3TDFUchoaqkInh0RABV9l5HPcJqkcMLc65yuT23N3hwi+NI
	sjefAF5MzLiENmEF4lxU2mtCl3t7/j189Jm2ENJtBDtH7y0oU4gdZx2ajL07x/WSRU0V18aoXh+
	JWT/aUdupGKj42qPH2+4Us5Z6CAVKQTJRgMpLklVuX7DT52YyrVReWmklB7fjdpN1
X-Gm-Gg: AY/fxX7LEp8PIXMFayw2UnknJr0QD+cYDRMjUBouedZ/jobu6pE6uTTtyRmp20B3ew3
	d6LtWoPx997VrOmQ11/oO8csTOxHivSWBbjyKytf+Z1D0CwymWlSg2FBiZ4pwBTc7aNR5FkbbwL
	x1tRkM1npgemkRlKHqufcF0+SgR7npg9HPRsKCH1vNpIqZIOlpQwQQfbcHLM/Jt48DBJFGFeDRA
	dn7hvTWJSxwgM9gUKdPKysYn9AELypmXd6VO+7NJCfefPjzqS75+7nW/191CMZVRgaB+EX/wEL1
	YKrjuZLKxTdoqhz7dtsvUGfvcOqdFwWgbXOmcUMI9stlE0htU4HdkLeeiLzJmPRTQNwF0l+0zez
	gN8N3TovZdn2Wz007e3wYn5faIpuRV7fgcdqZUv5apI0uJd7rf3vcZN4WEbTkCa0JSiA1shmqKe
	U=
X-Received: by 2002:a05:6a00:4215:b0:81e:8e66:38d9 with SMTP id d2e1a72fcca58-81e8e66552cmr1144829b3a.17.1767958119662;
        Fri, 09 Jan 2026 03:28:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEqT+wWvTO35GE1P2/uMCVst+d9L4F96AD9pHzfgd0wBp6IWQozaZdZsHTX3taobFXEvgIktQ==
X-Received: by 2002:a05:6a00:4215:b0:81e:8e66:38d9 with SMTP id d2e1a72fcca58-81e8e66552cmr1144805b3a.17.1767958119175;
        Fri, 09 Jan 2026 03:28:39 -0800 (PST)
Received: from [10.133.33.228] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81e5d129d41sm1567195b3a.67.2026.01.09.03.28.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 03:28:38 -0800 (PST)
Message-ID: <069e2fb4-b4cc-474c-867c-2dd410ea80a4@oss.qualcomm.com>
Date: Fri, 9 Jan 2026 19:28:32 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 2/7] qcom-tgu: Add TGU driver
To: Songwei Chai <songwei.chai@oss.qualcomm.com>, andersson@kernel.org,
        alexander.shishkin@linux.intel.com, mike.leach@linaro.org,
        suzuki.poulose@arm.com, james.clark@arm.com, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        devicetree@vger.kernel.org, gregkh@linuxfoundation.org
References: <20260109021141.3778421-1-songwei.chai@oss.qualcomm.com>
 <20260109021141.3778421-3-songwei.chai@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <20260109021141.3778421-3-songwei.chai@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA4NCBTYWx0ZWRfX9NchDzQAwu3N
 w4g5yRBopj5O+v4cBurN1Pn439X/PP3+lUvb9xPKyg+UL8A8POJ6LDivaxb9ZQMlWUbtTmdd1Pk
 Ps/aToO2zexpuT5jzr+Tn2fRHgLr6+XGeO37rsgjAYLR09v78nvSAal/F+pTCzxe3UEgFGs5Tkf
 cPNnuAWKlzGEvRCIaZ3k+HkZbHlN0aAFT/01V/EDw0KS24LcNvvk6mxHVqBdzDK05SV4OWg25Dy
 4ZmeyEYbyaMEaomYxXRyOpb8olMzTEe9jElx2yUVqCU84K0VTWqxyyOLsUDXKBk2quWXorcTGPR
 78v4RQVx940lt9CxQFLX63Rn4W+7F4JgEMitfmNBNXKnxWWZhDdBUtPzvcy/Gm6sk8r5Xt8mtel
 QD3ZVv/7YKdfu9OfyDee/EMBLjbrugrUdsapXc2nJy9A0cF42SZd+UV7Gx/rBIeopRMtwz0Khzt
 D0EnuymUqrUXNCNKybg==
X-Proofpoint-GUID: weqGktidnwBggxxg9vjm3WekKPbwKW88
X-Authority-Analysis: v=2.4 cv=IKUPywvG c=1 sm=1 tr=0 ts=6960e668 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=RlaAdA2wXV2HMp-xn2gA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: weqGktidnwBggxxg9vjm3WekKPbwKW88
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_03,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 suspectscore=0 bulkscore=0 phishscore=0
 adultscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090084



On 1/9/2026 10:11 AM, Songwei Chai wrote:
> Add driver to support device TGU (Trigger Generation Unit).
> TGU is a Data Engine which can be utilized to sense a plurality of
> signals and create a trigger into the CTI or generate interrupts to
> processors. Add probe/enable/disable functions for tgu.
> 
> Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
> ---
>   .../ABI/testing/sysfs-bus-amba-devices-tgu    |   9 +
>   drivers/Makefile                              |   1 +
>   drivers/hwtracing/Kconfig                     |   2 +
>   drivers/hwtracing/qcom/Kconfig                |  18 ++
>   drivers/hwtracing/qcom/Makefile               |   3 +
>   drivers/hwtracing/qcom/tgu.c                  | 176 ++++++++++++++++++
>   drivers/hwtracing/qcom/tgu.h                  |  51 +++++

drivers/hwtracing/qcom is a new dir, I suppose this patch series will go 
through QCOM tree? If Yes, I think it's better to update the MAINTAINER 
file to add QCOM maintainers for maintaining this dir. Otherwise the 
get_maintainer script can not obtain proper reviewer&maintainer for 
reviewing.

Thanks,
Jie

>   7 files changed, 260 insertions(+)
>   create mode 100644 Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
>   create mode 100644 drivers/hwtracing/qcom/Kconfig
>   create mode 100644 drivers/hwtracing/qcom/Makefile
>   create mode 100644 drivers/hwtracing/qcom/tgu.c
>   create mode 100644 drivers/hwtracing/qcom/tgu.h
> 
> diff --git a/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu b/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
> new file mode 100644
> index 000000000000..56ec3f5ab5d6
> --- /dev/null
> +++ b/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
> @@ -0,0 +1,9 @@
> +What:		/sys/bus/amba/devices/<tgu-name>/enable_tgu
> +Date:		January 2026
> +KernelVersion	6.19
> +Contact:	Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai <songwei.chai@oss.qualcomm.com>
> +Description:
> +		(RW) Set/Get the enable/disable status of TGU
> +		Accepts only one of the 2 values -  0 or 1.
> +		0 : disable TGU.
> +		1 : enable TGU.
> diff --git a/drivers/Makefile b/drivers/Makefile
> index ccc05f1eae3e..9608a3debb1f 100644
> --- a/drivers/Makefile
> +++ b/drivers/Makefile
> @@ -177,6 +177,7 @@ obj-$(CONFIG_RAS)		+= ras/
>   obj-$(CONFIG_USB4)		+= thunderbolt/
>   obj-$(CONFIG_CORESIGHT)		+= hwtracing/coresight/
>   obj-y				+= hwtracing/intel_th/
> +obj-y				+= hwtracing/qcom/
>   obj-$(CONFIG_STM)		+= hwtracing/stm/
>   obj-$(CONFIG_HISI_PTT)		+= hwtracing/ptt/
>   obj-y				+= android/
> diff --git a/drivers/hwtracing/Kconfig b/drivers/hwtracing/Kconfig
> index 911ee977103c..8a640218eed8 100644
> --- a/drivers/hwtracing/Kconfig
> +++ b/drivers/hwtracing/Kconfig
> @@ -7,4 +7,6 @@ source "drivers/hwtracing/intel_th/Kconfig"
>   
>   source "drivers/hwtracing/ptt/Kconfig"
>   
> +source "drivers/hwtracing/qcom/Kconfig"
> +
>   endmenu
> diff --git a/drivers/hwtracing/qcom/Kconfig b/drivers/hwtracing/qcom/Kconfig
> new file mode 100644
> index 000000000000..d6f6d4b0f28e
> --- /dev/null
> +++ b/drivers/hwtracing/qcom/Kconfig
> @@ -0,0 +1,18 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# QCOM specific hwtracing drivers
> +#
> +menu "Qualcomm specific hwtracing drivers"
> +
> +config QCOM_TGU
> +	tristate "QCOM Trigger Generation Unit driver"
> +	help
> +	  This driver provides support for Trigger Generation Unit that is
> +	  used to detect patterns or sequences on a given set of signals.
> +	  TGU is used to monitor a particular bus within a given region to
> +	  detect illegal transaction sequences or slave responses. It is also
> +	  used to monitor a data stream to detect protocol violations and to
> +	  provide a trigger point for centering data around a specific event
> +	  within the trace data buffer.
> +
> +endmenu
> diff --git a/drivers/hwtracing/qcom/Makefile b/drivers/hwtracing/qcom/Makefile
> new file mode 100644
> index 000000000000..5a0a868c1ea0
> --- /dev/null
> +++ b/drivers/hwtracing/qcom/Makefile
> @@ -0,0 +1,3 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +obj-$(CONFIG_QCOM_TGU) += tgu.o
> diff --git a/drivers/hwtracing/qcom/tgu.c b/drivers/hwtracing/qcom/tgu.c
> new file mode 100644
> index 000000000000..c5b2b384e6ae
> --- /dev/null
> +++ b/drivers/hwtracing/qcom/tgu.c
> @@ -0,0 +1,176 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#include <linux/amba/bus.h>
> +#include <linux/device.h>
> +#include <linux/err.h>
> +#include <linux/io.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/pm_runtime.h>
> +
> +#include "tgu.h"
> +
> +static void tgu_write_all_hw_regs(struct tgu_drvdata *drvdata)
> +{
> +	TGU_UNLOCK(drvdata->base);
> +	/* Enable TGU to program the triggers */
> +	writel(1, drvdata->base + TGU_CONTROL);
> +	TGU_LOCK(drvdata->base);
> +}
> +
> +static int tgu_enable(struct device *dev)
> +{
> +	struct tgu_drvdata *drvdata = dev_get_drvdata(dev);
> +
> +	guard(spinlock)(&drvdata->lock);
> +	if (drvdata->enable)
> +		return -EBUSY;
> +
> +	tgu_write_all_hw_regs(drvdata);
> +	drvdata->enable = true;
> +
> +	return 0;
> +}
> +
> +static void tgu_disable(struct device *dev)
> +{
> +	struct tgu_drvdata *drvdata = dev_get_drvdata(dev);
> +
> +	guard(spinlock)(&drvdata->lock);
> +	if (drvdata->enable) {
> +		TGU_UNLOCK(drvdata->base);
> +		writel(0, drvdata->base + TGU_CONTROL);
> +		TGU_LOCK(drvdata->base);
> +
> +		drvdata->enable = false;
> +	}
> +}
> +
> +static ssize_t enable_tgu_show(struct device *dev,
> +				struct device_attribute *attr, char *buf)
> +{
> +	struct tgu_drvdata *drvdata = dev_get_drvdata(dev);
> +	bool enabled;
> +
> +	guard(spinlock)(&drvdata->lock);
> +	enabled = drvdata->enable;
> +
> +	return sysfs_emit(buf, "%d\n", enabled ? 1 : 0);
> +}
> +
> +/* enable_tgu_store - Configure Trace and Gating Unit (TGU) triggers. */
> +static ssize_t enable_tgu_store(struct device *dev,
> +				struct device_attribute *attr,
> +				const char *buf,
> +				size_t size)
> +{
> +	unsigned long val;
> +	int ret = 0;
> +
> +	ret = kstrtoul(buf, 0, &val);
> +	if (ret)
> +		return ret;
> +
> +	if (val) {
> +		ret = pm_runtime_resume_and_get(dev);
> +		if (ret)
> +			return ret;
> +		ret = tgu_enable(dev);
> +		if (ret) {
> +			pm_runtime_put(dev);
> +			return ret;
> +		}
> +	} else {
> +		tgu_disable(dev);
> +		pm_runtime_put(dev);
> +	}
> +
> +	return size;
> +}
> +static DEVICE_ATTR_RW(enable_tgu);
> +
> +static struct attribute *tgu_common_attrs[] = {
> +	&dev_attr_enable_tgu.attr,
> +	NULL,
> +};
> +
> +static const struct attribute_group tgu_common_grp = {
> +	.attrs = tgu_common_attrs,
> +	NULL,
> +};
> +
> +static const struct attribute_group *tgu_attr_groups[] = {
> +	&tgu_common_grp,
> +	NULL,
> +};
> +
> +static int tgu_probe(struct amba_device *adev, const struct amba_id *id)
> +{
> +	struct device *dev = &adev->dev;
> +	struct tgu_drvdata *drvdata;
> +	int ret;
> +
> +	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
> +	if (!drvdata)
> +		return -ENOMEM;
> +
> +	drvdata->dev = &adev->dev;
> +	dev_set_drvdata(dev, drvdata);
> +
> +	drvdata->base = devm_ioremap_resource(dev, &adev->res);
> +	if (IS_ERR(drvdata->base))
> +		return PTR_ERR(drvdata->base);
> +
> +	spin_lock_init(&drvdata->lock);
> +
> +	ret = sysfs_create_groups(&dev->kobj, tgu_attr_groups);
> +	if (ret) {
> +		dev_err(dev, "failed to create sysfs groups: %d\n", ret);
> +		return ret;
> +	}
> +
> +	drvdata->enable = false;
> +
> +	pm_runtime_put(&adev->dev);
> +	return 0;
> +}
> +
> +static void tgu_remove(struct amba_device *adev)
> +{
> +	struct device *dev = &adev->dev;
> +
> +	sysfs_remove_groups(&dev->kobj, tgu_attr_groups);
> +
> +	tgu_disable(dev);
> +}
> +
> +static const struct amba_id tgu_ids[] = {
> +	{
> +		.id = 0x000f0e00,
> +		.mask = 0x000fffff,
> +	},
> +	{ 0, 0, NULL },
> +};
> +
> +MODULE_DEVICE_TABLE(amba, tgu_ids);
> +
> +static struct amba_driver tgu_driver = {
> +	.drv = {
> +		.name = "qcom-tgu",
> +		.suppress_bind_attrs = true,
> +	},
> +	.probe = tgu_probe,
> +	.remove = tgu_remove,
> +	.id_table = tgu_ids,
> +};
> +
> +module_amba_driver(tgu_driver);
> +
> +MODULE_AUTHOR("Songwei Chai <songwei.chai@oss.qualcomm.com>");
> +MODULE_AUTHOR("Jinlong Mao <jinlong.mao@oss.qualcomm.com>");
> +MODULE_DESCRIPTION("Qualcomm Trigger Generation Unit driver");
> +MODULE_LICENSE("GPL");
> diff --git a/drivers/hwtracing/qcom/tgu.h b/drivers/hwtracing/qcom/tgu.h
> new file mode 100644
> index 000000000000..b11cfb28261d
> --- /dev/null
> +++ b/drivers/hwtracing/qcom/tgu.h
> @@ -0,0 +1,51 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#ifndef _QCOM_TGU_H
> +#define _QCOM_TGU_H
> +
> +/* Register addresses */
> +#define TGU_CONTROL 0x0000
> +#define TGU_LAR		0xfb0
> +#define TGU_UNLOCK_OFFSET	0xc5acce55
> +
> +static inline void TGU_LOCK(void __iomem *addr)
> +{
> +	do {
> +		/* Wait for things to settle */
> +		mb();
> +		writel_relaxed(0x0, addr + TGU_LAR);
> +	} while (0);
> +}
> +
> +static inline void TGU_UNLOCK(void __iomem *addr)
> +{
> +	do {
> +		writel_relaxed(TGU_UNLOCK_OFFSET, addr + TGU_LAR);
> +		/* Make sure everyone has seen this */
> +		mb();
> +	} while (0);
> +}
> +
> +/**
> + * struct tgu_drvdata - Data structure for a TGU (Trigger Generator Unit)
> + * @base: Memory-mapped base address of the TGU device
> + * @dev: Pointer to the associated device structure
> + * @lock: Spinlock for handling concurrent access
> + * @enable: Flag indicating whether the TGU device is enabled
> + *
> + * This structure defines the data associated with a TGU device,
> + * including its base address, device pointers, clock, spinlock for
> + * synchronization, trigger data pointers, maximum limits for various
> + * trigger-related parameters, and enable status.
> + */
> +struct tgu_drvdata {
> +	void __iomem *base;
> +	struct device *dev;
> +	spinlock_t lock;
> +	bool enable;
> +};
> +
> +#endif


