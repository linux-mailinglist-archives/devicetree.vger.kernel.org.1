Return-Path: <devicetree+bounces-263803-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MHE7GZpwiWnl9AQAu9opvQ
	(envelope-from <devicetree+bounces-263803-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 06:28:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D4F10BC11
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 06:28:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 316FD30022C1
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 05:28:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A40222FD7BC;
	Mon,  9 Feb 2026 05:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P7amoY3C";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YxbNFr9r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709FC2FD1BC
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 05:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770614933; cv=none; b=RmrIQlxvg1rvJImOGCd+yKOtXzjmEy57Tyhx2dpcS2GdH8FxCg1k1H74MwzkKgBGnmSuSzG/brqtLIraw6NG8wbPAyuOZ2uugKXZgCiH80aFvOLtCKH93CchVsXZco0bajy17prN3XkiekQKcVviz8SglkkiC0RyDyi6kBsKwh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770614933; c=relaxed/simple;
	bh=L3HDVwb7HvgIVRkfomTfQA8sZRyRnlhQqYq1MyFOMLc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UsDOjzsRKj3wsb5uK0mw6uvgm9O6REAWeNveVENbNyzIClAM9di+X8Ongam37ZD7CIdkySWa7pkGcVwKNvfHCrwuVcCISsLgnW27aIUfF+OS8DJaces6AqXvKx3mfMZtQweGJgcGdztdqHDNJejCLYXOQp0ld+z8QYBQj4ah5BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P7amoY3C; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YxbNFr9r; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 618LHgXo1524110
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 05:28:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6AmxTb4ful2Hhdd/Tz7AEZuDQZ7WsAtX7vPCOFeicgE=; b=P7amoY3CAJxGEANF
	Pp4ooAeiv4YFKJxEM1fsFqPvaCOA7LOaBWNfbr2Db4qfv5ZBGaOeuGSDCpmsReHD
	+RD3khMENTXJvn/6YLoBvyKrLZzgCsgOw/jGcDpHeCLcZRz1OwX9teL+4XaCbn9h
	Lr8WscRoJ3iJiu5v0DdAv02gIsU/GpdKwmkPOdFO+rxV++aL4wpWqFIGvYV3d6A2
	/aXtTewa8XrSV0uOx3CWQbDEmqJjPK3ijqDlFTo/fKQPqkDEjPWBlpcHgQm961/l
	AxU3Dl60KKDLiABjg2v2wCLPEPArZHlTbvysEi8TgB8fMPIf+js3u9hdGKEtO0wK
	sNyMSg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5xhrbqcq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 05:28:52 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c68b97b7316so1758194a12.3
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 21:28:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770614932; x=1771219732; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6AmxTb4ful2Hhdd/Tz7AEZuDQZ7WsAtX7vPCOFeicgE=;
        b=YxbNFr9rH6CHL001YcZV9jjBgKDtTr7C8IcH3HI70LH/70G2UR+tJii9PtFInCs0yd
         UzLeRatOTl/KDIWp32ERE1Na3nMbg/pUWVBXv+m8jQ0sson0t57w1g8w9xauEkCaM63/
         xpgc17CeI/PPKzb0LjkGgviCZXGoU0jr1z9e4mvqm+bW/J8Wd2oLaYZUqmwtlI5Mh32Y
         +2OMgnw5pXfMzRB8Bg8q9dFsN3kGxDuTvFeJ0VzLOsNuJsMlxHC72qZE/wqJAIsh8SSO
         VDvKncY0USYvyfWqiWtbFWdgr/126go7wfSc118sawjlliF2HhuDnlEJtVEMHif+8Q/0
         gPqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770614932; x=1771219732;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6AmxTb4ful2Hhdd/Tz7AEZuDQZ7WsAtX7vPCOFeicgE=;
        b=R0THPlTfQNCSmPuRFHc6Ddu6NsM4+tYB8dyIX7Y+cCtVn3l1R2n7E0SfjHpuTbaBMs
         xd8i0QDf6KVJVKgc0/3+VpaI7Cg8HtLj2lURuCVep02V2QuEtjTfOJg8PTodIlGwlkgM
         Fnq/+WNSy5l0AMQXUBhyMJDZ2oS1ZfcnGFhJukq/XAXIpWiKfB5K5p+Z2C3iVB6bZoQa
         DuE2z7HxFsDAk9uYH7VJMsuTxgPks7pYGwvpWZcAcfVW8VsUCJHPxQTzlMbFOJJP5rEj
         gz3tL6zCi+MA99Yfl+D+oZBM6gkLEcpgaLGjYMAuMlh2kQL+D1XKFO3hcvZJO9LxlEQs
         jhtw==
X-Forwarded-Encrypted: i=1; AJvYcCWU03P1cxX2TCtjYBkRuJakvbNnmSi6iLDDz4AxMPSZvupCjV5wHeilOmS7cG6aeHx2TTOMtpc/vPFI@vger.kernel.org
X-Gm-Message-State: AOJu0YzSKT+CU+gc685Iu8DIErDeBicW25YpyX0ONJTn5ECy8KytJRke
	uIE2QhVYq2Vj2Pm7eU3kF0xrB1fLz3iqOIBO/WldwaqUqQoRp1ocRT5Jhn54T6Xykm/MG93u6LG
	l6HhaeR2aVF72q8CmT/6Z8utRebBNXXFhvZCGFLf/3FAP54O6gF4pDjh9EgWq3ZpjyBDP9XNX
X-Gm-Gg: AZuq6aLHjCXXgumRzrLPsXg2X1zoDXXPkpmYIRW+8GqWWPdnjOTOHbrCTQDfMzoP69s
	I5cIA1wZt+DlkUhweVC2oUKSqjyg7ek5P0ZAwM3Hm8KiVJ9cSxk544oOg+dZNJs9IsMHhlgCCXM
	h4ccqBIzAJsimrP8IVl0+U0bn6zpWLdyNf1C27yKUdJF2T3itX0xGGsUYpzLSsnW+g8fvSML9GL
	7uH/hCOI8uNgV8ugSxFRArvszavJK8F9z3g5MOheJ0uS1h8FzlD0zUn2ueXCilcpUX09pe34hct
	q7W3P5ZTn5qJdEgTqPYs0WJaPkH9MZjyYujSrknOxsECy5A0ov2t4SRRtmLlb7Z8wVVbZ6/BNMx
	BRYY3dEAUx0YnvnUIJ0I5jJM+5TOk2oRe9W947Z4=
X-Received: by 2002:a05:6a21:a92:b0:35d:7f7:4aac with SMTP id adf61e73a8af0-393ad3041a7mr9419909637.47.1770614931785;
        Sun, 08 Feb 2026 21:28:51 -0800 (PST)
X-Received: by 2002:a05:6a21:a92:b0:35d:7f7:4aac with SMTP id adf61e73a8af0-393ad3041a7mr9419879637.47.1770614931235;
        Sun, 08 Feb 2026 21:28:51 -0800 (PST)
Received: from [10.218.12.237] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-354b21fb723sm8844140a91.10.2026.02.08.21.28.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Feb 2026 21:28:50 -0800 (PST)
Message-ID: <d5fd45e3-68b2-427d-b75a-4c6bb9ed6ecb@oss.qualcomm.com>
Date: Mon, 9 Feb 2026 10:58:43 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/8] thermal: Add Remote Proc cooling driver
To: Lukasz Luba <lukasz.luba@arm.com>
Cc: linux-arm-msm@vger.kernel.org, krzk+dt@kernel.org,
        casey.connolly@linaro.org, amitk@kernel.org, konradybcio@kernel.org,
        rui.zhang@intel.com, daniel.lezcano@linaro.org, rafael@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, robh@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org,
        Amit Kucheria <amit.kucheria@oss.qualcomm.com>,
        mathieu.poirier@linaro.org, mani@kernel.org
References: <20251223123227.1317244-1-gaurav.kohli@oss.qualcomm.com>
 <20251223123227.1317244-2-gaurav.kohli@oss.qualcomm.com>
 <a27b755d-00d2-4350-98ab-0b68ab754770@arm.com>
Content-Language: en-US
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
In-Reply-To: <a27b755d-00d2-4350-98ab-0b68ab754770@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: iC4RQGC_BNVHvshjGnvoQvZq8b9ip3E3
X-Authority-Analysis: v=2.4 cv=AJ+v8NAg c=1 sm=1 tr=0 ts=69897094 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=7CQSdrXTAAAA:8 a=5wUkCm8xxAg9AHOHLWUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDA0MyBTYWx0ZWRfXw65e7ZDQLLnj
 XlF/l7r4lLHv+g6TMByOVZ1ojt16hp5qoulFE9zzRMA0VUNiODIvsVaWAmrePrKR+hBaBkl3A0r
 Gc/SWl4nT1DePu5x+YJUr6MWoC6BG6ks/e0tbcVonm0kmg/iOD4Yxg4rCy2sPVlp75KsioljIPK
 /u0GQfNHLofn3a9iXZ97mCLFXtrM1xCk1NkSGjkS2Unhxhwf6GxdcbPsOfKGRqy/9tDSnKJ8TEI
 gwdv7lTSZ43oMaanuL8y3l7qzcxBxIVjJlkw7xiTeMMOwVyymVJsK8h94d4qbNHH3YZdJdOjOF7
 IZQyNVLCq6BTyoB/80Bw3U1gAxyMG0kWmbOzK/WxWtwzmgp6KhGzviBQySCltHuoGge68BjNZ8J
 CS8MEhfgjiUOswH+u/HRnkWK10sQZYq8lLYzdI6Z5jlVarTWk/o+dozRXmbY/aXsptbiRxq/sam
 5Ped7xl30Y+Urfq89ow==
X-Proofpoint-ORIG-GUID: iC4RQGC_BNVHvshjGnvoQvZq8b9ip3E3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 bulkscore=0 suspectscore=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090043
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263803-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,arm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gaurav.kohli@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.987];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F2D4F10BC11
X-Rspamd-Action: no action



On 2/2/2026 4:29 PM, Lukasz Luba wrote:
> Hi Gaurav,
> 
> On 12/23/25 12:32, Gaurav Kohli wrote:
>> Add a new generic driver for thermal cooling devices that control
>> remote processors (modem, DSP, etc.) through various communication
>> channels.
>>
>> This driver provides an abstraction layer between the thermal
>> subsystem and vendor-specific remote processor communication
>> mechanisms.
> 
> Is this the patch about proposing the new cooling
> device type at last LPC2025 conference (what we've discussed with Amit)?
> 

thanks Lukasz for review, yes this is the same.
sorry for late reply, was on leave last week.

> There was some feedback asking you to add a bit more description
> into this patch header, please do that (with some background as well).
> 

Sure, will update.

>>
>> Suggested-by: Amit Kucheria <amit.kucheria@oss.qualcomm.com>
>> Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
>> ---
>>   MAINTAINERS                          |   8 ++
>>   drivers/thermal/Kconfig              |  11 ++
>>   drivers/thermal/Makefile             |   2 +
>>   drivers/thermal/remoteproc_cooling.c | 154 +++++++++++++++++++++++++++
>>   include/linux/remoteproc_cooling.h   |  52 +++++++++
>>   5 files changed, 227 insertions(+)
>>   create mode 100644 drivers/thermal/remoteproc_cooling.c
>>   create mode 100644 include/linux/remoteproc_cooling.h
>>
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 679e5f11e672..c1ba87315cdf 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -25935,6 +25935,14 @@ F:    drivers/thermal/cpufreq_cooling.c
>>   F:    drivers/thermal/cpuidle_cooling.c
>>   F:    include/linux/cpu_cooling.h
>> +THERMAL/REMOTEPROC_COOLING
>> +M:    Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
>> +L:    linux-pm@vger.kernel.org
>> +S:    Supported
>> +F:    drivers/thermal/remoteproc_cooling.c
>> +F:    include/linux/remoteproc_cooling.h
>> +
>> +
>>   THERMAL/POWER_ALLOCATOR
>>   M:    Lukasz Luba <lukasz.luba@arm.com>
>>   L:    linux-pm@vger.kernel.org
>> diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
>> index b10080d61860..31e92be34387 100644
>> --- a/drivers/thermal/Kconfig
>> +++ b/drivers/thermal/Kconfig
>> @@ -229,6 +229,17 @@ config PCIE_THERMAL
>>         If you want this support, you should say Y here.
>> +
>> +config REMOTEPROC_THERMAL
>> +    bool "Remote processor cooling support"
>> +    help
>> +      This implements a generic cooling mechanism for remote processors
>> +      (modem, DSP, etc.) that allows vendor-specific implementations to
>> +      register thermal cooling devices and provide callbacks for thermal
>> +      mitigation.
>> +
>> +      If you want this support, you should say Y here.
>> +
>>   config THERMAL_EMULATION
>>       bool "Thermal emulation mode support"
>>       help
>> diff --git a/drivers/thermal/Makefile b/drivers/thermal/Makefile
>> index bb21e7ea7fc6..ae747dde54fe 100644
>> --- a/drivers/thermal/Makefile
>> +++ b/drivers/thermal/Makefile
>> @@ -34,6 +34,8 @@ thermal_sys-$(CONFIG_DEVFREQ_THERMAL) += 
>> devfreq_cooling.o
>>   thermal_sys-$(CONFIG_PCIE_THERMAL) += pcie_cooling.o
>> +thermal_sys-$(CONFIG_REMOTEPROC_THERMAL) += remoteproc_cooling.o
>> +
>>   obj-$(CONFIG_K3_THERMAL)    += k3_bandgap.o k3_j72xx_bandgap.o
>>   # platform thermal drivers
>>   obj-y                += broadcom/
>> diff --git a/drivers/thermal/remoteproc_cooling.c b/drivers/thermal/ 
>> remoteproc_cooling.c
>> new file mode 100644
>> index 000000000000..a1f948cbde0f
>> --- /dev/null
>> +++ b/drivers/thermal/remoteproc_cooling.c
>> @@ -0,0 +1,154 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Remote Processor Cooling Device
>> + *
>> + * Copyright (c) 2025, Qualcomm Innovation Center, Inc. All rights 
>> reserved.
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
>> +#define REMOTEPROC_PREFIX        "rproc_"
>> +
>> +struct remoteproc_cooling_ops {
>> +    int (*get_max_level)(void *devdata, unsigned long *level);
>> +    int (*get_cur_level)(void *devdata, unsigned long *level);
>> +    int (*set_cur_level)(void *devdata, unsigned long level);
>> +};
> 
> 1. There is no comment for struct and the functions like you did below.
> 2. Why you need those 3 callbacks?
>     It looks like they are simple wrappers on stuff in
>     'struct thermal_cooling_device_ops'.
>     Please try to get rid of them and re-use the existing fwk callbacks.
> 

thanks for this suggestion, i will use thermal_cooling_device_ops directly.

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
> 
> Please use the full naming:
> remoteproc_cooling_device
> 
>> +    struct thermal_cooling_device *cdev;
> 
> You don't need to keep it here. AFAICS it's only
> used in the 'unregister' function. Please check my
> comment here and then remove this pointer.
> (It creates uneseccery linkage between those devices).
> 
>> +    const struct remoteproc_cooling_ops *ops;
> 
> So here it can be simply:
> struct thermal_cooling_device_ops cooling_ops;
> 

yes, i will use this as part of remoteproc_cooling_device struct.

>> +    void *devdata;
>> +    struct device_node *np;
> 
> This 'np' is also not used, remove it please.
> 
>> +    struct mutex lock;
>> +};
>> +
>> +
>> +/* Thermal cooling device callbacks */
>> +
>> +static int remoteproc_get_max_state(struct thermal_cooling_device *cdev,
>> +                    unsigned long *state)
>> +{
>> +    struct remoteproc_cdev *rproc_cdev = cdev->devdata;
>> +    int ret;
>> +
>> +    if (!rproc_cdev || !rproc_cdev->ops)
>> +        return -EINVAL;
> 
> This mustn't be changed in runtime accidenly. We don't guard in
> cpufreq-/devfreq- cooling these callbacks that way. Please drop them.

Sure, let me rewrite this and update in next version.

> 
>> +
>> +    mutex_lock(&rproc_cdev->lock);
>> +    ret = rproc_cdev->ops->get_max_level(rproc_cdev->devdata, state);
>> +    mutex_unlock(&rproc_cdev->lock);
>> +
>> +    return ret;
>> +}
>> +
>> +static int remoteproc_get_cur_state(struct thermal_cooling_device *cdev,
>> +                    unsigned long *state)
>> +{
>> +    struct remoteproc_cdev *rproc_cdev = cdev->devdata;
>> +    int ret;
>> +
>> +    if (!rproc_cdev || !rproc_cdev->ops)
>> +        return -EINVAL;
> 
> as above
> 
>> +
>> +    mutex_lock(&rproc_cdev->lock);
>> +    ret = rproc_cdev->ops->get_cur_level(rproc_cdev->devdata, state);
>> +    mutex_unlock(&rproc_cdev->lock);
>> +
>> +    return ret;
>> +}
>> +
>> +static int remoteproc_set_cur_state(struct thermal_cooling_device *cdev,
>> +                    unsigned long state)
>> +{
>> +    struct remoteproc_cdev *rproc_cdev = cdev->devdata;
>> +    int ret;
>> +
>> +    if (!rproc_cdev || !rproc_cdev->ops)
>> +        return -EINVAL;
> 
> as above
> 

will fix in all callbacks.

>> +
>> +    mutex_lock(&rproc_cdev->lock);
>> +    ret = rproc_cdev->ops->set_cur_level(rproc_cdev->devdata, state);
>> +    mutex_unlock(&rproc_cdev->lock);
>> +
>> +    return ret;
>> +}
>> +
>> +static const struct thermal_cooling_device_ops remoteproc_cooling_ops 
>> = {
>> +    .get_max_state = remoteproc_get_max_state,
>> +    .get_cur_state = remoteproc_get_cur_state,
>> +    .set_cur_state = remoteproc_set_cur_state,
>> +};
>> +
>> +struct remoteproc_cdev *
>> +remoteproc_cooling_register(struct device_node *np,
>> +                 const char *name, const struct 
>> remoteproc_cooling_ops *ops,
>> +                 void *devdata)
> 
> Since this is based on device_node, please align to the naming
> convention from cpufreq-/devfreq-cooling and use prefix 'of_'
> 
> of_remoteproc_cooling_register()
> 
>> +{
>> +    struct remoteproc_cdev *rproc_cdev;
>> +    struct thermal_cooling_device *cdev;
>> +    int ret;
>> +
>> +    if (!name || !ops) {
> 
> IMO you should check the '!np' here, not the lines below.
> We can simply bail out very early.
> 

thanks will put explicit check for np, but please let me know for non 
np, do we have to add support for non np also.
so they can directly register with thermal_cooling_device_register.

>> +        return ERR_PTR(-EINVAL);
>> +    }
>> +
>> +    rproc_cdev = kzalloc(sizeof(*rproc_cdev), GFP_KERNEL);
>> +    if (!rproc_cdev)
>> +        return ERR_PTR(-ENOMEM);
>> +
>> +    rproc_cdev->ops = ops;
>> +    rproc_cdev->devdata = devdata;
>> +    rproc_cdev->np = np;
>> +    mutex_init(&rproc_cdev->lock);
>> +
>> +    char *rproc_name __free(kfree) =
>> +        kasprintf(GFP_KERNEL, REMOTEPROC_PREFIX "%s", name);
>> +    /* Register with thermal framework */
>> +    if (np) {
> 
> Too late to test 'np'.

yes, will put a check in the start of function.

> 
>> +        cdev = thermal_of_cooling_device_register(np, rproc_name, 
>> rproc_cdev,
>> +                              &remoteproc_cooling_ops);
>> +    }
>> +
>> +    if (IS_ERR(cdev)) {
> 
> This check should be just below the line when you get the 'cdev'
> 
>> +        ret = PTR_ERR(cdev);
>> +        goto free_rproc_cdev;
>> +    }
>> +
>> +    rproc_cdev->cdev = cdev;
>> +
>> +    return rproc_cdev;
>> +
>> +free_rproc_cdev:
>> +    kfree(rproc_cdev);
>> +    return ERR_PTR(ret);
>> +}
>> +EXPORT_SYMBOL_GPL(remoteproc_cooling_register);
>> +
>> +void remoteproc_cooling_unregister(struct remoteproc_cdev *rproc_cdev)
> 
> Change the API to be alined with cpufreq-cooling and devfreq-cooling
> types of devices, so:
> 
> void remoteproc_cooling_unregister(struct thermal_cooling_device *cdev)
> 
> You still should be able to get the rptoc_cdev like:
> 
> rproc_cdev = cdev->devdata;
> 
> and free it.
> 

thanks, will change something like below
+       rproc_cdev = cdev->devdata;
+       thermal_cooling_device_unregister(cdev);

>> +{
>> +    if (!rproc_cdev)
>> +        return;
>> +
>> +    thermal_cooling_device_unregister(rproc_cdev->cdev);
>> +    mutex_destroy(&rproc_cdev->lock);
>> +    kfree(rproc_cdev);
>> +}
>> +EXPORT_SYMBOL_GPL(remoteproc_cooling_unregister);
>> +
>> +MODULE_LICENSE("GPL");
>> +MODULE_DESCRIPTION("Remote Processor Cooling Device");
>> diff --git a/include/linux/remoteproc_cooling.h b/include/linux/ 
>> remoteproc_cooling.h
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
>> +    int (*get_max_level)(void *devdata, unsigned long *level);
>> +    int (*get_cur_level)(void *devdata, unsigned long *level);
>> +    int (*set_cur_level)(void *devdata, unsigned long level);
>> +};
> 
> That duplicate w/ .c file content.
> We don't need this in the header, please follow the cpufreq-/devfreq-
> design.
> 

Yes, with new approach of using thermal_cooling_device_ops directly can
save this.

>> +
>> +struct remoteproc_cdev;
>> +
>> +#ifdef CONFIG_REMOTEPROC_THERMAL
>> +
>> +struct remoteproc_cdev *
>> +remoteproc_cooling_register(struct device_node *np,
>> +                 const char *name,
>> +                 const struct remoteproc_cooling_ops *ops,
>> +                 void *devdata);
>> +
>> +void remoteproc_cooling_unregister(struct remoteproc_cdev *rproc_cdev);
>> +
>> +#else /* !CONFIG_REMOTEPROC_THERMAL */
>> +
>> +static inline struct remoteproc_cdev *
>> +remoteproc_cooling_register(struct device_node *np,
>> +                 const char *name,
>> +                 const struct remoteproc_cooling_ops *ops,
>> +                 void *devdata)
>> +{
>> +    return ERR_PTR(-EINVAL);
>> +}
> 
> Function naming convention here as well
> 

thanks a lot, let me rewrite as per suggestion and update in newer version.

> 
> Regards,
> Lukasz


