Return-Path: <devicetree+bounces-251782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 772B3CF6F2D
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 08:01:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BF1493010FDB
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 07:01:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7701527E07E;
	Tue,  6 Jan 2026 07:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KcwQVFFP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bKT8IveQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E4E729E110
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 07:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767682889; cv=none; b=b307kWfw0vDFkh4cV6nKWNnwHtagjAfmVAXPQ0IYXrQk28fi5X+2KgsG/pA6ihAcfvX60kO+SYqlobCnAeC+VX/EiCGbgzXDcWcUMRlgoHcqfg3WzmM8Z8tShZ16s5CYmNijtBKKmoiSOIb1g3qp1pVEyr//uBm+aHniqS1sVc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767682889; c=relaxed/simple;
	bh=Uv8Muthqli87O7p7bv3Xm+i9FQG6asPcLeGYfYDjbL0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IRIwV2/JB/NRx9KrzWxcEx0JUhP91IgjGfkYUri/GXqBTwYBM37kIlM3a8pRsNK6Q2kQEYakq34EHAfNE5+4x38uZASWosF/MaEqD45Mdgn1xtBvTH7Q3wgzpLpUloIe8Fi6UXeSM8qmUY+RrZAEXkL2s4FZnD2ZtmdvQnK+Auw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KcwQVFFP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bKT8IveQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6063QQLb3214287
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 07:01:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z7ohZrHu6An9haAN/n51FbJIZWBWRKLP34M6TSACwaI=; b=KcwQVFFPT3XYcnzw
	a4AznFGeWI+oY1dIVQiju2ntBC4NjzJ9L3AWPq0KL9VVbVpif33c1bQytywqVDPD
	IfNtMiWyJIxKimGKWakTYrA6HGkUYNIAzxtXuju0H4uhnSmcHhH9ut7X7eOuENsu
	ea0QgUSBOmjwGvLr8LNk83Y63zzFfiBN6nzkUBwaPp3eOJWTOMJlgFe9FqbzWEnn
	J4gmW5dXnaNz+IxATDs285fPHnagV/Lqi3od9QTRGDSb2Mqy2qIZpFoIHuEXBo9f
	mV1N4BfImusFzSzj8KR3jcR75v8s73lqHSobYhHezHLqQh3wpeYjjGzi8TFDh+SF
	KHrD/Q==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgpnd94n8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 07:01:25 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0f47c0e60so17296425ad.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 23:01:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767682884; x=1768287684; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z7ohZrHu6An9haAN/n51FbJIZWBWRKLP34M6TSACwaI=;
        b=bKT8IveQxl9ZhX5E6wlYdrEGhcOhkuNUl6A0JqHPlFCk8cdO/KTRshBtyDkCcPZnOc
         BETuWNGhMHSquJQMwiHjraKz53zhjG0gORsj4qTAkPWPG2DIWMSewsqQH2DqdRQSbVtU
         5yvgWXTYVIHaBHOPrz0J3fcA1kri0RZSrIFAK2B5xVDBqxkwEuLj2DWEStQPYUPZz3YY
         LJS2Xw3uFLq4f5Q/osKT8X8vOp9LyWMNzcCOx3l4LaS+XnpSIY0kaTkaUskd9vxwrvmx
         LjSuzGbdWAYuSf6ER7vs9ev+GFiu/NdXq9h0N+0g95w7f2f3NkheAv4PC/AiLOwylvYM
         hMTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767682884; x=1768287684;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z7ohZrHu6An9haAN/n51FbJIZWBWRKLP34M6TSACwaI=;
        b=G5aIV8pvS5ZfWNbau9qpQbMj1/p09X/4Fh2+oOHgFZnQXavCwQvA8yoV6eRbO//OzQ
         SaCMceYGmHCDtbMAWOto46tlCPWJ3k/77LWJsZTJQH38YIdQP/if16+YciifGRkwxpfi
         cBtHsU/BJ3/6zkcdSu1ENVJyu0kWrwTqOD4TCBuftEgvDZtVnhxC4D2WRvjGZMzt89D/
         No2rVXi/Bhid0hwKMSdqqIffyngBsVs/HCnM1qk3EJuXdmkIzLJxaye1yWw+sfn3igvL
         PPPEkDMbfhoV/pB8AS3i4bwvKK9j1mNGSSALwUaA0tehsEaHhBaGvqqDowXKghfFeHLE
         WlQQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZBwrA6iHoJY2KNZS1I/1YpaytUrxpVRclNGvDxsZzV5tuhvlLIZCYJ1gJ1rTpR7Sv896AQwAvzLrH@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2HZxyh2PQyacCxyED20hXTKdQ7+0zdlos541ywySSUqpqD2lq
	RehQBy1PJAlLbeXHrpueVpzhXtCBAf22WpJBs6HTSxEe6WLiPadthdpXEnmQW0FPE2vh1dJ5dJ4
	BGDyc25vv8Fxewb1c5goRsfnbOq+Eu0xwtKzrogPWoRuiTFgLXBpUEc0vjchnckyO
X-Gm-Gg: AY/fxX7VYACmX1rYXUawOGj88Ji3HDM6aC2hHbod7QoDZ/C/R3U2cHoNcx8z0/QruhU
	ku1JKqL4M1FTZ+F5hDI6iOPRmDsMYY9y/xRAdl40+C8xpK/zpxR8z3CJvDVXIiYnnaKzScEfBhv
	GxHKOLA09v91vxJDEgd89Qzx2VKexmk8AagNhQ5Hrgts3e8nwz3JZjGWtpKdRr+UicgFwlwQwVc
	JvLcHxipBMyuE5YbLoNptlwGB4QGDET4LGDEn5abWttbWiJbvJ8jWsrckQLzh4jeXqqYV/wXNKy
	BPl1ZpLAYm2VTmn69p+0d3VAGSTbG/mQUuJZVDUDDS445xrmGx992QZlqwjpUPqXAaKEV2XLAVR
	M4LEFXYOK93MDxGplHnTHEE29BaqzFKLkk57k0gqw10A44j8EDXZde2NrRy8MyUGDfMPzz7PhZE
	28FK6gIg==
X-Received: by 2002:a17:903:4b43:b0:2a0:9040:6377 with SMTP id d9443c01a7336-2a3e2d5bab7mr22292265ad.18.1767682884033;
        Mon, 05 Jan 2026 23:01:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IElEby2zzxoipP0kQ1Vj8tNgQp/Ut2puQtnbeRr0HCy6kbQ0jArNJogiQjCp2L9GcO9xpsgfg==
X-Received: by 2002:a17:903:4b43:b0:2a0:9040:6377 with SMTP id d9443c01a7336-2a3e2d5bab7mr22291245ad.18.1767682881869;
        Mon, 05 Jan 2026 23:01:21 -0800 (PST)
Received: from [10.133.33.154] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc8920sm11706415ad.85.2026.01.05.23.01.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jan 2026 23:01:21 -0800 (PST)
Message-ID: <c25c79ed-0c2b-4d30-ac54-78206fb8001c@oss.qualcomm.com>
Date: Tue, 6 Jan 2026 15:01:14 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 2/7] qcom-tgu: Add TGU driver
To: Jie Gan <jie.gan@oss.qualcomm.com>, andersson@kernel.org,
        alexander.shishkin@linux.intel.com, mike.leach@linaro.org,
        suzuki.poulose@arm.com, james.clark@arm.com, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        devicetree@vger.kernel.org, gregkh@linuxfoundation.org
References: <20251219065902.2296896-1-songwei.chai@oss.qualcomm.com>
 <20251219065902.2296896-3-songwei.chai@oss.qualcomm.com>
 <458b3404-ca67-43fe-8610-f33c875b2de1@oss.qualcomm.com>
Content-Language: en-US
From: Songwei Chai <songwei.chai@oss.qualcomm.com>
In-Reply-To: <458b3404-ca67-43fe-8610-f33c875b2de1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: lVS-alHaF7cp2WdPsXwzARTeqM_rWexf
X-Proofpoint-GUID: lVS-alHaF7cp2WdPsXwzARTeqM_rWexf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA1OCBTYWx0ZWRfX44V46fOm6mx7
 nN/Hzc49YPRM/56ttKRSzOkRDxIS9xOyZuEFCfHW6nHdn/tjTkZ6dp62qkfpQKxsvz9SX0r8DFC
 FFplNlCaCTPBeg/DK7HT2Ey4fvcHNM9Gzvnoqfzo2ssqZllGn0Nmmkt2GyUTSElX6a0md+Bn9Ux
 s2peZlzKcFT5LlJ4gOoRw4geUrH5qZjty9OyTfO9yGUZYbbDMPtG6/oNroewk6KOWoG6F6mudE6
 BIdWXmAWjINdaN6Qq4+ORRyPqLx4IN0hYsc/xAcZ7QW5RkbHC9cQfXIny6G3oGX4rHWwj1tT3rI
 +GvSgI/tfJLKVAiNFye5UOcHjAZnA/8GbQP/0DGZHez/7uFvPpifHlRjY4rhi/jJcvuyYpqAmQo
 WcNzhN1RnHhrObdPE5h/bSszDDJ+HUGjSAUjJt+4IUDLYM7fQqmtaGIsqAqqE/Z8KHGgCecQOWL
 +9klUoaBEe6Sy00Tu4g==
X-Authority-Analysis: v=2.4 cv=Jpz8bc4C c=1 sm=1 tr=0 ts=695cb345 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=d4YX6LmsQ8QvCqanvcoA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 clxscore=1015 adultscore=0
 phishscore=0 suspectscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060058



On 12/25/2025 10:44 AM, Jie Gan wrote:
> 
> 
> On 12/19/2025 2:58 PM, Songwei Chai wrote:
>> Add driver to support device TGU (Trigger Generation Unit).
>> TGU is a Data Engine which can be utilized to sense a plurality of
>> signals and create a trigger into the CTI or generate interrupts to
>> processors. Add probe/enable/disable functions for tgu.
>>
>> Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
>> ---
>>   .../ABI/testing/sysfs-bus-amba-devices-tgu    |   9 +
>>   drivers/Makefile                              |   1 +
>>   drivers/hwtracing/Kconfig                     |   2 +
>>   drivers/hwtracing/qcom/Kconfig                |  18 ++
>>   drivers/hwtracing/qcom/Makefile               |   3 +
>>   drivers/hwtracing/qcom/tgu.c                  | 178 ++++++++++++++++++
>>   drivers/hwtracing/qcom/tgu.h                  |  51 +++++
>>   7 files changed, 262 insertions(+)
>>   create mode 100644 Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
>>   create mode 100644 drivers/hwtracing/qcom/Kconfig
>>   create mode 100644 drivers/hwtracing/qcom/Makefile
>>   create mode 100644 drivers/hwtracing/qcom/tgu.c
>>   create mode 100644 drivers/hwtracing/qcom/tgu.h
>>
>> diff --git a/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu b/ 
>> Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
>> new file mode 100644
>> index 000000000000..24dcdf1d70cc
>> --- /dev/null
>> +++ b/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
>> @@ -0,0 +1,9 @@
>> +What:        /sys/bus/amba/devices/<tgu-name>/enable_tgu
>> +Date:        December 2025
>> +KernelVersion    6.19
>> +Contact:    Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai 
>> <songwei.chai@oss.qualcomm.com>
>> +Description:
>> +        (RW) Set/Get the enable/disable status of TGU
>> +        Accepts only one of the 2 values -  0 or 1.
>> +        0 : disable TGU.
>> +        1 : enable TGU.
>> diff --git a/drivers/Makefile b/drivers/Makefile
>> index ccc05f1eae3e..9608a3debb1f 100644
>> --- a/drivers/Makefile
>> +++ b/drivers/Makefile
>> @@ -177,6 +177,7 @@ obj-$(CONFIG_RAS)        += ras/
>>   obj-$(CONFIG_USB4)        += thunderbolt/
>>   obj-$(CONFIG_CORESIGHT)        += hwtracing/coresight/
>>   obj-y                += hwtracing/intel_th/
>> +obj-y                += hwtracing/qcom/
>>   obj-$(CONFIG_STM)        += hwtracing/stm/
>>   obj-$(CONFIG_HISI_PTT)        += hwtracing/ptt/
>>   obj-y                += android/
>> diff --git a/drivers/hwtracing/Kconfig b/drivers/hwtracing/Kconfig
>> index 911ee977103c..8a640218eed8 100644
>> --- a/drivers/hwtracing/Kconfig
>> +++ b/drivers/hwtracing/Kconfig
>> @@ -7,4 +7,6 @@ source "drivers/hwtracing/intel_th/Kconfig"
>>   source "drivers/hwtracing/ptt/Kconfig"
>> +source "drivers/hwtracing/qcom/Kconfig"
>> +
>>   endmenu
>> diff --git a/drivers/hwtracing/qcom/Kconfig b/drivers/hwtracing/qcom/ 
>> Kconfig
>> new file mode 100644
>> index 000000000000..d6f6d4b0f28e
>> --- /dev/null
>> +++ b/drivers/hwtracing/qcom/Kconfig
>> @@ -0,0 +1,18 @@
>> +# SPDX-License-Identifier: GPL-2.0-only
>> +#
>> +# QCOM specific hwtracing drivers
>> +#
>> +menu "Qualcomm specific hwtracing drivers"
>> +
>> +config QCOM_TGU
>> +    tristate "QCOM Trigger Generation Unit driver"
> 
> TGU is working as the helper device of the TPDM, can we say:
> 
> select CORESIGHT_TPDM
> 

Hi Jie,

TGU can act as a helper for TPDM, but TPDM is not mandatory for it, and 
TGU works independently most of the time. For this reason, I don't 
recommend adding "select CORESIGHT_TPDM".

> 
>> +    help
>> +      This driver provides support for Trigger Generation Unit that is
>> +      used to detect patterns or sequences on a given set of signals.
>> +      TGU is used to monitor a particular bus within a given region to
>> +      detect illegal transaction sequences or slave responses. It is 
>> also
>> +      used to monitor a data stream to detect protocol violations and to
>> +      provide a trigger point for centering data around a specific event
>> +      within the trace data buffer.
>> +
>> +endmenu
>> diff --git a/drivers/hwtracing/qcom/Makefile b/drivers/hwtracing/qcom/ 
>> Makefile
>> new file mode 100644
>> index 000000000000..5a0a868c1ea0
>> --- /dev/null
>> +++ b/drivers/hwtracing/qcom/Makefile
>> @@ -0,0 +1,3 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +
>> +obj-$(CONFIG_QCOM_TGU) += tgu.o
>> diff --git a/drivers/hwtracing/qcom/tgu.c b/drivers/hwtracing/qcom/tgu.c
>> new file mode 100644
>> index 000000000000..dbd1acbd2fa5
>> --- /dev/null
>> +++ b/drivers/hwtracing/qcom/tgu.c
>> @@ -0,0 +1,178 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Copyright (c) 2024-2025 Qualcomm Innovation Center, Inc. All 
>> rights reserved.
> 
> Please update the copyright.
> Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> 
> same for other new created files.

Sure, will update.>
>> + */
>> +
>> +#include <linux/amba/bus.h>
>> +#include <linux/device.h>
>> +#include <linux/err.h>
>> +#include <linux/io.h>
>> +#include <linux/kernel.h>
>> +#include <linux/module.h>
>> +#include <linux/of.h>
>> +#include <linux/pm_runtime.h>
>> +
>> +#include "tgu.h"
>> +
>> +static void tgu_write_all_hw_regs(struct tgu_drvdata *drvdata)
>> +{
>> +    TGU_UNLOCK(drvdata->base);
>> +    /* Enable TGU to program the triggers */
>> +    writel(1, drvdata->base + TGU_CONTROL);
>> +    TGU_LOCK(drvdata->base);
>> +}
>> +
>> +static int tgu_enable(struct device *dev)
>> +{
>> +    struct tgu_drvdata *drvdata = dev_get_drvdata(dev);
>> +
>> +    guard(spinlock)(&drvdata->lock);
>> +    if (drvdata->enable)
>> +        return -EBUSY;
>> +
>> +    tgu_write_all_hw_regs(drvdata);
>> +    drvdata->enable = true;
>> +
>> +    return 0;
>> +}
>> +
>> +static int tgu_disable(struct device *dev)
> 
> void is better as the return value always 0?
yes, will try.>
>> +{
>> +    struct tgu_drvdata *drvdata = dev_get_drvdata(dev);
>> +
>> +    guard(spinlock)(&drvdata->lock);
>> +    if (drvdata->enable) {
>> +        TGU_UNLOCK(drvdata->base);
>> +        writel(0, drvdata->base + TGU_CONTROL);
>> +        TGU_LOCK(drvdata->base);
>> +
>> +        drvdata->enable = false;
>> +    }
>> +    return 0;
>> +}
>> +
>> +static ssize_t enable_tgu_show(struct device *dev,
>> +                struct device_attribute *attr, char *buf)
>> +{
>> +    bool enabled;
>> +    struct tgu_drvdata *drvdata = dev_get_drvdata(dev);
>> +
>> +    guard(spinlock)(&drvdata->lock);
>> +    enabled = drvdata->enable;
>> +
>> +    return sysfs_emit(buf, "%d\n", enabled);
> 
> Remove enabled with below:
> 
> return sysfs_emit(buf, "%d\n", (int)drvdata->enable);
> 
> It may suffer a warning during compile without cast?

Actually no warning here, but it's a good point.
return sysfs_emit(buf, "%d\n", enabled? 1 : 0); May be better.>
>> +}
>> +
>> +/* enable_tgu_store - Configure Trace and Gating Unit (TGU) triggers. */
>> +static ssize_t enable_tgu_store(struct device *dev,
>> +                struct device_attribute *attr,
>> +                const char *buf,
>> +                size_t size)
>> +{
>> +    int ret = 0;
>> +    unsigned long val;
> 
> Prefer inverse christmas tree order
Nice suggestion.>
>> +
>> +    ret = kstrtoul(buf, 0, &val);
>> +    if (ret)
>> +        return ret;
> 
> if (kstrtoul(buf, 0, &val)
>      return -EINVAL;

Yeah.. I agree that writing it this way can make the code look cleaner, 
but this approach may cause the error code to be lost, as we know 
kstrtoul can return not only -EINVAL but also -ERANGE.

> >> +
>> +    if (val) {
>> +        ret = pm_runtime_resume_and_get(dev);
>> +        if (ret)
>> +            return ret;
>> +        ret = tgu_enable(dev);
>> +        if (ret)
>> +            pm_runtime_put(dev);
> 
>          if (ret) {
>              pm_runtime_put(dev);
>              return ret;
>          }
> 
> 
>> +    } else {
>> +        ret = tgu_disable(dev);
> 
> the return value here is 0, we can just ignore it, see previous comment.
> 
>> +        pm_runtime_put(dev);
>> +    }
>> +
>> +    if (ret)
>> +        return ret;
> 
> Remove if here.
The suggestion looks good, will try.>
>> +    return size;
>> +}
>> +static DEVICE_ATTR_RW(enable_tgu);
>> +
>> +static struct attribute *tgu_common_attrs[] = {
>> +    &dev_attr_enable_tgu.attr,
>> +    NULL,
>> +};
>> +
>> +static const struct attribute_group tgu_common_grp = {
>> +    .attrs = tgu_common_attrs,
>> +    NULL,
>> +};
>> +
>> +static const struct attribute_group *tgu_attr_groups[] = {
>> +    &tgu_common_grp,
>> +    NULL,
>> +};
>> +
>> +static int tgu_probe(struct amba_device *adev, const struct amba_id *id)
>> +{
>> +    struct device *dev = &adev->dev;
>> +    struct tgu_drvdata *drvdata;
>> +    int ret;
>> +
>> +    drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
>> +    if (!drvdata)
>> +        return -ENOMEM;
>> +
>> +    drvdata->dev = &adev->dev;
>> +    dev_set_drvdata(dev, drvdata);
>> +
>> +    drvdata->base = devm_ioremap_resource(dev, &adev->res);
>> +    if (IS_ERR(drvdata->base))
>> +        return PTR_ERR(drvdata->base);
>> +
>> +    spin_lock_init(&drvdata->lock);
>> +
>> +    ret = sysfs_create_groups(&dev->kobj, tgu_attr_groups);
>> +    if (ret) {
>> +        dev_err(dev, "failed to create sysfs groups: %d\n", ret);
>> +        return ret;
>> +    }
>> +
>> +    drvdata->enable = false;
> 
> default false, no need.
Adding an explicit operation here maybe improve code determinism.>
>> +
>> +    pm_runtime_put(&adev->dev);
>> +    return 0;
>> +}
>> +
>> +static void tgu_remove(struct amba_device *adev)
>> +{
>> +    struct device *dev = &adev->dev;
>> +
>> +    sysfs_remove_groups(&dev->kobj, tgu_attr_groups);
>> +
>> +    tgu_disable(dev);
>> +    dev_set_drvdata(dev, NULL);
> 
> no need. remove will release the allocated memory.
Checked the code, indeed.
Will remove " dev_set_drvdata(dev, NULL);">
>> +}
>> +
>> +static const struct amba_id tgu_ids[] = {
>> +    {
>> +        .id = 0x000f0e00,
>> +        .mask = 0x000fffff,
>> +    },
>> +    { 0, 0, NULL },
>> +};
>> +
>> +MODULE_DEVICE_TABLE(amba, tgu_ids);
>> +
>> +static struct amba_driver tgu_driver = {
>> +    .drv = {
>> +        .name = "qcom-tgu",
>> +        .suppress_bind_attrs = true,
>> +    },
>> +    .probe = tgu_probe,
>> +    .remove = tgu_remove,
>> +    .id_table = tgu_ids,
>> +};
>> +
>> +module_amba_driver(tgu_driver);
>> +
>> +MODULE_AUTHOR("Songwei Chai <songwei.chai@oss.qualcomm.com>");
>> +MODULE_AUTHOR("Jinlong Mao <jinlong.mao@oss.qualcomm.com>");
>> +MODULE_DESCRIPTION("Qualcomm Trigger Generation Unit driver");
>> +MODULE_LICENSE("GPL");
>> diff --git a/drivers/hwtracing/qcom/tgu.h b/drivers/hwtracing/qcom/tgu.h
>> new file mode 100644
>> index 000000000000..abc732f91dfc
>> --- /dev/null
>> +++ b/drivers/hwtracing/qcom/tgu.h
>> @@ -0,0 +1,51 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/*
>> + * Copyright (c) 2024-2025 Qualcomm Innovation Center, Inc. All 
>> rights reserved.
> 
> Please update the copyright.
> Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
sure.>
>> + */
>> +
>> +#ifndef _QCOM_TGU_H
>> +#define _QCOM_TGU_H
>> +
>> +/* Register addresses */
>> +#define TGU_CONTROL 0x0000
> 
> #define TGU_CONTROL 0

Maybe using hex here could keep the format consistent with other 
register's offset below?>
> Thanks,
> Jie
> 
>> +#define TGU_LAR        0xfb0
>> +#define TGU_UNLOCK_OFFSET    0xc5acce55
>> +
>> +static inline void TGU_LOCK(void __iomem *addr)
>> +{
>> +    do {
>> +        /* Wait for things to settle */
>> +        mb();
>> +        writel_relaxed(0x0, addr + TGU_LAR);
>> +    } while (0);
>> +}
>> +
>> +static inline void TGU_UNLOCK(void __iomem *addr)
>> +{
>> +    do {
>> +        writel_relaxed(TGU_UNLOCK_OFFSET, addr + TGU_LAR);
>> +        /* Make sure everyone has seen this */
>> +        mb();
>> +    } while (0);
>> +}
>> +
>> +/**
>> + * struct tgu_drvdata - Data structure for a TGU (Trigger Generator 
>> Unit)
>> + * @base: Memory-mapped base address of the TGU device
>> + * @dev: Pointer to the associated device structure
>> + * @lock: Spinlock for handling concurrent access
>> + * @enable: Flag indicating whether the TGU device is enabled
>> + *
>> + * This structure defines the data associated with a TGU device,
>> + * including its base address, device pointers, clock, spinlock for
>> + * synchronization, trigger data pointers, maximum limits for various
>> + * trigger-related parameters, and enable status.
>> + */
>> +struct tgu_drvdata {
>> +    void __iomem *base;
>> +    struct device *dev;
>> +    spinlock_t lock;
>> +    bool enable;
>> +};
>> +
>> +#endif
> 


