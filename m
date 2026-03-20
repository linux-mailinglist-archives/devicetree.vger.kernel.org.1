Return-Path: <devicetree+bounces-278339-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8LUZDqhmvWlF9gIAu9opvQ
	(envelope-from <devicetree+bounces-278339-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:24:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD232DC9FC
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:24:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 73AEC302C291
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 15:22:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BB5C3C063B;
	Fri, 20 Mar 2026 15:22:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="etb/22JS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f44.google.com (mail-dl1-f44.google.com [74.125.82.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C223B6C1E
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 15:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774020143; cv=none; b=h/jZtb8H1Q+t/FAYTZky25jM4x6fvcsm+uww5P5iAhiSQXyfv16B2fH0iz4JkX+oQxCNgfnPzRXbND4DK6TxKVbKtyrpECmpn/Z/KKEh6h5xSq9uVJu1nGrLS7fQBH5MX42Rqh1p6cH2O+EU6aAQRuMABYKqgRvF5Y18GvBOV64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774020143; c=relaxed/simple;
	bh=UgR6Ndg9uIN+GlcSMo5nrbnxzdPyRtxdyxaRymn3PjU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m2cGdigJyXlfU4EBRBjQ5NTjvdlfk5yZVc3SWu8HsHLDQVaojTCv+9iFJbu+Be0MnLGsAm3FUSt+ICdM+Z1IC8D9W6kzg5/vOMt3MdtUDJslw282ImPvGasLVs+AG+KUzikfyEq5SaCp1gfxkxOtzr6TZVnABWEnkOqcw8GB0ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=etb/22JS; arc=none smtp.client-ip=74.125.82.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f44.google.com with SMTP id a92af1059eb24-1279eced0b9so1061002c88.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 08:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774020140; x=1774624940; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=wLivAihLgNnoUtQTgzoVTgm03POcgTePUmAJyh0fy7M=;
        b=etb/22JSbN7fvE0ycHXItKMqS+dhcRAYlzUA12l+sUaRynrkmLiqlrxOuARf8LP1IG
         xQK2Y7vYLXOie0loa6jTRlLiAwESQpNv4iv+/lJNoiWmtJkZS5//Rq/aIN4xoQ9g78wJ
         4LeNsFLMFX5eoaaUxWXFx0bxyjlscdAeKKF10GutRwGpXpNmicIZRe/z8nvKjJ9Y7IF/
         WZX1jM6sfUoJlZCgyKbqvt24/E4JeBf90cpEHiOtyVI3C1XHkZFAvTcaNPcLm6fx/Xto
         mjpNKNtXZX6lk0uenkalRzsKvhvTF7ODaD8GU35CppRI6hNgSL1LNGrwH4aYttvQb5KT
         kSyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774020140; x=1774624940;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wLivAihLgNnoUtQTgzoVTgm03POcgTePUmAJyh0fy7M=;
        b=PBssOVl1ke4MYypg5KyFZTLOSrEz3ZAl1avUViyKth/Cwgy/iTOWx6l9whhT3Uo1OM
         SPSTlPefwQddAbWZYUfAhFHRPniVnLKN+AgV3+sEKGOUlCPQWBWd8/DHJXH/mG8b2en3
         OqGlDrYswDgrkBiZNcOKDmqDm+P9+OnD5aAQ8kNtc9tvD9MhvJpRYXz7ZmdIRayuL52L
         0ro3Ms5LeA2fMlLI0wldaWlVXoLZItzx4P/kX+v73MP2j/IO3dF0AvrYHau8BhAw4kLH
         xeBPnH4MRIS0IB9js60UncJfoivBdVw6exLBjLZHZ794LdZXGt+4e+bvTTm36xpotXtS
         54cQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOVbky3t1kfOhNq4Gmi5RWLKoo/zd0TxytbmdzTj7GiStpfhaWJbrjvsLKum9GFU+wUu8emd5AuWDO@vger.kernel.org
X-Gm-Message-State: AOJu0YwCXdRAZpvtWOOC/lC49S9lqWVNS3KzQVVwZF0sel/u7g2r7spe
	jclajzQ6wmM9XTmq1KAQ7wVAl5AcolCePC81UtTW7I1Hr45Sh8qSYPMi
X-Gm-Gg: ATEYQzzyzKTBSV2zl28s9DoaSusS6ZubIWSZB7GOn4QMjLWLZNLKf8O2bNZCrbNHObH
	sgtdSFXvITWIHP4GSGrORJddzpecdkEwY52VWCbZe4hX2UsGOFZGdU48SIbemFmcrf0n0T2L48E
	AodlqmMrU3TRU2b9nCVqaDjaXhHhwspN5RoQsc4py8AP0RQkc4fHSvZ5m8k405ooytEEYnm1Ms8
	UfHDGBd3alNJwIaDmJkWW3jrL9q5kaHDfKpZ/CDAThkj/8iKMPIGPcGPXsOIGQ9LF3ke8muyXu1
	BzSHHpPvBzVBJ3i9SgqyZT6ssnUQ2jyGTG813Oq0VUR72XQdGEpBk6lz335r5fiDYK7PbBNk/me
	FHubIoxknOGYdqTB9wPd4gGKtP+jTd5SXIsvh2+tE6EBK1r2+oaQZxHElmi3fFJivhldAc/ioa9
	AoRx3M8zmLcUeTWNnkH+Pr0Oa+LZv5jCYmeFcbm4FwAUasYvsVyE1/tssw1LbDdH1dvmKK3iK0
X-Received: by 2002:a05:693c:300b:b0:2be:1f56:ed21 with SMTP id 5a478bee46e88-2c109563b70mr1476492eec.7.1774020140180;
        Fri, 20 Mar 2026 08:22:20 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10aefd778sm4707452eec.0.2026.03.20.08.22.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2026 08:22:19 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <a922cf55-ebe7-4256-b3bb-cc732e45e1ff@roeck-us.net>
Date: Fri, 20 Mar 2026 08:22:17 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] hwmon: Add Qualcomm PMIC BCL hardware monitor driver
To: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>,
 Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, amit.kucheria@oss.qualcomm.com,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>, linux-hwmon@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260206-qcom-bcl-hwmon-v1-0-7b426f0b77a1@oss.qualcomm.com>
 <20260206-qcom-bcl-hwmon-v1-2-7b426f0b77a1@oss.qualcomm.com>
 <ab1fSWx7pqlSANph@mai.linaro.org>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <ab1fSWx7pqlSANph@mai.linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-278339-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[roeck-us.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,roeck-us.net:mid]
X-Rspamd-Queue-Id: 1FD232DC9FC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/20/26 07:52, Daniel Lezcano wrote:
> Hi Manaf,
> 
> On Fri, Feb 06, 2026 at 02:44:06AM +0530, Manaf Meethalavalappu Pallikunhi wrote:
>> Add support for Qualcomm PMIC Battery Current Limiting (BCL) hardware
>> monitor driver. The BCL peripheral is present in Qualcomm PMICs and
>> provides real-time monitoring and protection against battery
>> overcurrent and under voltage conditions.
>>
>> The driver monitors:
>> - Battery voltage with configurable low voltage thresholds
>> - Battery current with configurable high current thresholds
>> - Two limit alarm interrupts (max/min, critical)
> 
> Can you describe the behavior of the alarm ?
> 
> I assume the alarm is raised when a threshold is crossed from normal
> to anormal condition leading to a hwmon event.
> 
>   * Does the BCL trigger an interrupt when going back to the normal condition ?
> 
>   * When is the alarm flag reset ?
> 
>   * Can we have a flood of events if the current / voltage is wavering
>     around the thresholds ?
> 
> Overall, the driver is too big, so hard to review. It is better to
> provide a simplified version with one version supported.
> 
>> The driver integrates with the Linux hwmon subsystem and provides
>> standard hwmon attributes for monitoring battery conditions.
>>
>> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
>> ---
>>   MAINTAINERS                    |   9 +
>>   drivers/hwmon/Kconfig          |   9 +
>>   drivers/hwmon/Makefile         |   1 +
>>   drivers/hwmon/qcom-bcl-hwmon.c | 982 +++++++++++++++++++++++++++++++++++++++++
>>   drivers/hwmon/qcom-bcl-hwmon.h | 311 +++++++++++++
>>   5 files changed, 1312 insertions(+)
> 
> [ ... ]
> 
>> diff --git a/drivers/hwmon/qcom-bcl-hwmon.c b/drivers/hwmon/qcom-bcl-hwmon.c
>> new file mode 100644
>> index 000000000000..a7e3b865de5c
>> --- /dev/null
>> +++ b/drivers/hwmon/qcom-bcl-hwmon.c
>> @@ -0,0 +1,982 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Qualcomm pmic BCL hardware driver for battery overcurrent and
>> + * battery or system under voltage monitor
>> + *
>> + * Copyright (c) 2026, Qualcomm Innovation Center, Inc. All rights reserved.
>> + */
> 
> Old copyright format
> 
>> +#include <linux/devm-helpers.h>
>> +#include <linux/err.h>
>> +#include <linux/hwmon.h>
>> +#include <linux/interrupt.h>
>> +#include <linux/kernel.h>
>> +#include <linux/module.h>
>> +#include <linux/mod_devicetable.h>
>> +#include <linux/mutex.h>
>> +#include <linux/platform_device.h>
>> +#include <linux/property.h>
>> +#include <linux/regmap.h>
>> +#include <linux/workqueue.h>
>> +
>> +#include "qcom-bcl-hwmon.h"
>> +
>> +ADD_BCL_HWMON_ALARM_MAPS(in, min, lcrit);
>> +ADD_BCL_HWMON_ALARM_MAPS(curr, max, crit);
>> +
>> +/* Interrupt names for each alarm level */
>> +static const char * const bcl_int_names[ALARM_MAX] = {
>> +	[LVL0] = "bcl-max-min",
>> +	[LVL1] = "bcl-critical",
>> +};
> 
> IIUC there are three levels of alarms but the hwmon only has max/min
> and critical. Would it make sense to do adaptative min / max ? So when

hwmon has lcrit, min, max, and crit alarms for all sensor types, plus
an additional _cap_alarm for power attributes and _emergency_alarm
for temperature attributes. There is also a generic _alarm attribute
for each sensor, which is supposed to be used if the specific alarm
type is not known.

What exactly are the three levels of alarms ?

Thanks,
Guenter


