Return-Path: <devicetree+bounces-250723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3D0CEB598
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 07:33:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EE12D301F7CC
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 06:33:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11E2031079B;
	Wed, 31 Dec 2025 06:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L6fNTd4t";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Z7XF/GPK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D93614A23
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 06:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767162791; cv=none; b=Wau6xTkJnx2SBUk7UlGNEibPuRkVklgBDVg6+SQXke9VqSp5MuDpnSLsyPZUeZwXt5AiH28wHQZx655aVfw3mHtYjAh+clUTfCKgk05VpPvPBue2vHSYXG8eEJkb4L7CLqdGJiH2Kod1hU/g52CO+OufdwRyXiOTYKfyuzGKOIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767162791; c=relaxed/simple;
	bh=ZEWYEWDDeP6gdb3lEeXP/y3oqDzSpocoNta5So617vI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jx1yN8OLUJ0h1GHmzlYaXtq8+8LvlkKDG4gvryiv5sr5OED3N6sIAsdsUikeI4XJ3ZvWPU0jdMSB67dTkR3TsmwUyruhCGLqrCktN0DK/LFxH6Syg6Tg/971VnEO0cREveUmZprH6mfdWFuQJD2wE8opmxfaZNvSvXody1ZZwOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L6fNTd4t; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Z7XF/GPK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV61x3L2049477
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 06:33:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YCEYYsq4ZhM7LuwiDr23e+07qSBlBDIgToQnNungY7c=; b=L6fNTd4tGD5pp/UE
	xUto/mn0m8s4mFfKVDvVb4I5rGnQ79nrGgyPhxU3QCBxQqmkcsA+7/tK/15JY0jY
	b47YmsrIj6Gpd0KTdGMkZToQtJ9/mxULrXtItLP8ejeaTn8vucJW65Ld/2nb/AcV
	V+HvtAAO8NxvhooQDXgnMXoW8InEWxDIXfomrBhToJGCynavDlgYpAoSZl4qNl2a
	Y6BfZdSQCDwZe+GOUOZ8ALlH9ilCN4oUjFJtfF4lG/EgZHcZyO/EH+cUamfTOJb1
	kI8uIuYl23oPWzjNSLkuiF+XTIQfg4aErSjLln1uARa4Bkwh6gSa9juOFU3xSk+R
	iMOolg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcx7481kd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 06:33:06 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed7591799eso262346121cf.0
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 22:33:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767162786; x=1767767586; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YCEYYsq4ZhM7LuwiDr23e+07qSBlBDIgToQnNungY7c=;
        b=Z7XF/GPKOCu1cEdpTELqbezLIyBLzIoyL/iZN5p8mdJnw5wEcaN6w35Tjr+lK1Ypiv
         Ak2KxvSY3eG/xo5hOMcjNwWcpBRHhd2NwmMuQsE/o+VGMf0qPDCeFAuE4JZVJfFWIvH6
         q05QHNkyyo9we2HIpaBdOKbSV/8/xIpfpTwxCd0iDYzBUI721I7kZCjt6xOcfKuryqBh
         mbYreZcjo3k/IY3++ghdK1b6ZMLsXjjYIKQ6wgYRY6zEMyW1PGgaECqhCP4BM6LrBADl
         OK5Wj4TQr1Qcd6tD4hk5PpsMFW1J+MqIKV5tIjBCrEvm6NrpM3XjBBKn7ypP6idokglC
         xpnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767162786; x=1767767586;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YCEYYsq4ZhM7LuwiDr23e+07qSBlBDIgToQnNungY7c=;
        b=EKXgdG3Qiu6wKDEP8wvDusE1asEwIz01o1EgiWyCUJ/7rdTCjGQb1tFSGFSIWJKeNj
         Msk5uwewIGA1SH/oH0MwqELTYYqLbxU2bWebUIYZNpZZ5a0VKNSdQftBoEX781ZgyxN7
         dV754lt8zusKGfQSoYjAkwi18UWMIdFA2qJf/1+MtRGK/S8py0VdrWAx18bZHbXGO/h6
         8GZ0JQeNqB7n5kkKRDYz1CkxlLyN429yTIrwu+Cra/jXvcJf+B7K8NXnbWanmiC9wLyT
         EK9rqmsveatpNLff4SdWe7xKbfFF0B4ucC+6ZKtJEd05g9JUmDJ2RN9cF9ZRCKYga3H7
         CPzw==
X-Forwarded-Encrypted: i=1; AJvYcCUPRkgIJ9i77kA/IpYMUJGpQ8guZKMXWWk1SdQa5j+JpEHioN/BGUW39Y3Jcjrz9jML2kP/kbw0H8S8@vger.kernel.org
X-Gm-Message-State: AOJu0YwSfZODTjQdYBMvYvjWpYuBL8taM34nx7vfEVA2r9FGL8vGVz4+
	YLMx0Avzv7dfy+qwf4DHUOKVIEs5t9TCRy1br4PHrrD4Ftna/S3entmos2Ltp5Lqt2HtNXe/xXK
	d+td6JYyaf8A8Rd5NxBeR3Vn7jKD6yGESOb73LD/Ao7P3uRCOAYJz92oxQODDLZlM
X-Gm-Gg: AY/fxX6wj52NeKSmzR/EfzBWbOf+AMsKaKppDCezH3qP/WIcRH8ySu2NoLXzFCHxCdg
	jT/dc5jaiZ/TnHnWX2qZR4hf9Mewl/xVqVgDtnR43FX1+3mdK6Lu9nPp2THXj+bobGEqohnXNss
	cAI4FWBhPMg51h9Nc9+/LM4v4n1LpWk6lDhfhA/POk0+eXdxxKodDUnRShOcR/it3vIM2NA3xKB
	M7KI0xhF1LDf7zic6p45srQi6rTphdxYKL/k5aRmMlJrQUQ1rYLfl+drNXYIbxUT2F3Xa6dleXB
	JVxk8A67sMs761GdLBBbMsGMDSrrLcX0+AQ6GhnECtXeZb1lj5FoRSxBMZpT/gcJ5/E3NTI7lvi
	SEU6mYpGpzNoo8v+WY0rVmrTd91AXhU+eaxAGWhJBsXGrCtd1TKfNcK+bzlFhoKK9o4PKhm0D4X
	pIO1kkIe2GWRro
X-Received: by 2002:a05:622a:344:b0:4f3:4ec0:9032 with SMTP id d75a77b69052e-4f4abdd5bb4mr517512621cf.72.1767162786078;
        Tue, 30 Dec 2025 22:33:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFbVVPiUu9/9xOzV2d3JboY1CL5Me1rW7KZn5Lm58vJXyZqGKFcOFoYJsTxMJLmrEadLtIiZQ==
X-Received: by 2002:a05:622a:344:b0:4f3:4ec0:9032 with SMTP id d75a77b69052e-4f4abdd5bb4mr517512361cf.72.1767162785537;
        Tue, 30 Dec 2025 22:33:05 -0800 (PST)
Received: from ?IPV6:2001:14ba:a073:af00::4c9? (2001-14ba-a073-af00--4c9.rev.dnainternet.fi. [2001:14ba:a073:af00::4c9])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185d5eccsm10862767e87.14.2025.12.30.22.33.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 22:33:04 -0800 (PST)
Message-ID: <68d70a3d-4443-4596-842a-e8a700b276eb@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 08:33:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 4/8] thermal: qcom: add qmi-cooling driver
To: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, rafael@kernel.org,
        daniel.lezcano@linaro.org, rui.zhang@intel.com, lukasz.luba@arm.com,
        konradybcio@kernel.org, amitk@kernel.org, mani@kernel.org,
        casey.connolly@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org
References: <20251223123227.1317244-1-gaurav.kohli@oss.qualcomm.com>
 <20251223123227.1317244-5-gaurav.kohli@oss.qualcomm.com>
 <gp5alhoqcty3nqj5jgm33nzytjtqp35pq6ycefxyvubqoggjqk@ndip4esdd6oi>
 <f3013c96-673f-4a7c-8296-d4d7d0ec2a44@oss.qualcomm.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <f3013c96-673f-4a7c-8296-d4d7d0ec2a44@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: tf4L7Ch-st5n266qC6thpyMFN6dQSUuo
X-Proofpoint-GUID: tf4L7Ch-st5n266qC6thpyMFN6dQSUuo
X-Authority-Analysis: v=2.4 cv=HNvO14tv c=1 sm=1 tr=0 ts=6954c3a2 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=LQj-z2CNEsGdv2HSHM8A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDA1NSBTYWx0ZWRfXwEPKYcDjUmGW
 yIGqDLtemk5mVmsmzFgkJ8dy6pOcDaENoy7ELaBOJ1T2S1WTxUdDlo1zl/TdyIQypfMbo3mQ3b7
 x21rweKbWx8cviTzFGpqGcBnVqZdtOU2lyCwug/fqPeamFtT5RdmDe4dFdDWbciMFFMMynpLaLq
 uKTvIG7z0iju4rqejAdCpd8w8fxukVigUZHUG5cwAJwAHJwJYXQofQk9jXM7idtsXjt4k24aj55
 DyAteM0zF0PSpI2rDQZOvKb6me7II3PrGjkd/hatoOb0BLSQWsmNJVmiUWIotJSqiUG6zPyTfRG
 C13Uyb868Whvf/ziQ/r5K4WsBkM9Uc9RHsUyZmzw4RSgekSjMkoESlR19+CMIyd1O2KUcO7AAxQ
 AAmULoF8Uizr4cDrwnQINgU7+LZpziqcFfnu/ln5H0hPL7PV8bzpGdT5592HLavwbLDnIyz4CbJ
 dr9C52/fw5GTC/9Gumg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_02,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310055

On 31/12/2025 08:28, Gaurav Kohli wrote:
> 
> On 12/24/2025 1:19 AM, Dmitry Baryshkov wrote:
>> On Tue, Dec 23, 2025 at 06:02:23PM +0530, Gaurav Kohli wrote:
>>> From: Casey Connolly <casey.connolly@linaro.org>
>>>
>>> The Thermal Mitigation Device (TMD) service exposes various platform
>>> specific thermal mitigations available on remote subsystems (ie the
>>> modem and cdsp). The service is exposed via the QMI messaging
>>> interface, usually over the QRTR transport.
>>>
>>> Qualcomm QMI-based TMD cooling devices are used to mitigate thermal
>>> conditions across multiple remote subsystems. These devices operate
>>> based on junction temperature sensors (TSENS) associated with thermal
>>> zones for each subsystem.
>>>
>>> Co-developed-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
>>> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
>>> Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
>>> ---
>>>   drivers/soc/qcom/Kconfig           |  13 +
>>>   drivers/soc/qcom/Makefile          |   1 +
>>>   drivers/soc/qcom/qmi-cooling.c     | 498 +++++++++++++++++++++++++++++
>>>   drivers/soc/qcom/qmi-cooling.h     | 428 +++++++++++++++++++++++++
>>>   drivers/thermal/qcom/qmi-cooling.h | 428 +++++++++++++++++++++++++
>>>   5 files changed, 1368 insertions(+)
>>>   create mode 100644 drivers/soc/qcom/qmi-cooling.c
>>>   create mode 100644 drivers/soc/qcom/qmi-cooling.h
>>>   create mode 100644 drivers/thermal/qcom/qmi-cooling.h
>>>
>>> diff --git a/drivers/soc/qcom/Kconfig b/drivers/soc/qcom/Kconfig
>>> index 2caadbbcf830..905a24b42fe6 100644
>>> --- a/drivers/soc/qcom/Kconfig
>>> +++ b/drivers/soc/qcom/Kconfig
>>> @@ -124,6 +124,19 @@ config QCOM_PMIC_GLINK
>>>         Say yes here to support USB-C and battery status on modern 
>>> Qualcomm
>>>         platforms.
>>> +config QCOM_QMI_COOLING
>>> +    tristate "Qualcomm QMI cooling drivers"
>>> +    depends on QCOM_RPROC_COMMON
>>> +    depends on ARCH_QCOM || COMPILE_TEST
>>> +    select QCOM_QMI_HELPERS
>>> +    help
>>> +       This enables the remote subsystem cooling devices. These cooling
>>> +       devices will be used by Qualcomm chipset to place various remote
>>> +       subsystem mitigations like remote processor passive mitigation,
>>> +       remote subsystem voltage restriction at low temperatures etc.
>>> +       The QMI cooling device will interface with remote subsystem
>>> +       using Qualcomm remoteproc interface.
>>> +
>>>   config QCOM_QMI_HELPERS
>>>       tristate
>>>       depends on NET
>>> diff --git a/drivers/soc/qcom/Makefile b/drivers/soc/qcom/Makefile
>>> index b7f1d2a57367..b6728f54944b 100644
>>> --- a/drivers/soc/qcom/Makefile
>>> +++ b/drivers/soc/qcom/Makefile
>>> @@ -14,6 +14,7 @@ obj-$(CONFIG_QCOM_PMIC_GLINK)    += pmic_glink.o
>>>   obj-$(CONFIG_QCOM_PMIC_GLINK)    += pmic_glink_altmode.o
>>>   obj-$(CONFIG_QCOM_PMIC_PDCHARGER_ULOG)    += pmic_pdcharger_ulog.o
>>>   CFLAGS_pmic_pdcharger_ulog.o    :=  -I$(src)
>>> +obj-$(CONFIG_QCOM_QMI_COOLING) += qmi-cooling.o
>>>   obj-$(CONFIG_QCOM_QMI_HELPERS)    += qmi_helpers.o
>>>   qmi_helpers-y    += qmi_encdec.o qmi_interface.o
>>>   obj-$(CONFIG_QCOM_RAMP_CTRL)    += ramp_controller.o
>>> diff --git a/drivers/soc/qcom/qmi-cooling.c b/drivers/soc/qcom/qmi- 
>>> cooling.c
>>> new file mode 100644
>>> index 000000000000..1a6afcb96bf6
>>> --- /dev/null
>>> +++ b/drivers/soc/qcom/qmi-cooling.c
>>> @@ -0,0 +1,498 @@
>>> +// SPDX-License-Identifier: GPL-2.0
>>> +/*
>>> + * Copyright (c) 2017, The Linux Foundation
>>> + * Copyright (c) 2025, Linaro Limited
>>> + *
>>> + * QMI Thermal Mitigation Device (TMD) client driver.
>>> + * This driver provides an in-kernel client to handle hot and cold 
>>> thermal
>>> + * mitigations for remote subsystems (modem and DSPs) running the 
>>> TMD service.
>>> + * It doesn't implement any handling of reports from remote subsystems.
>>> + */
>>> +
>>> +#include <linux/cleanup.h>
>>> +#include <linux/err.h>
>>> +#include <linux/module.h>
>>> +#include <linux/net.h>
>>> +#include <linux/of.h>
>>> +#include <linux/platform_device.h>
>>> +#include <linux/remoteproc/qcom_rproc.h>
>>> +#include <linux/remoteproc_cooling.h>
>>> +#include <linux/slab.h>
>>> +#include <linux/soc/qcom/qmi.h>
>>> +#include <linux/thermal.h>
>>> +
>>> +#include "qmi-cooling.h"
>>> +
>>> +#define MODEM0_INSTANCE_ID    0x0
>>> +#define ADSP_INSTANCE_ID    0x1
>>> +#define CDSP_INSTANCE_ID    0x43
>> Will CDSP1 also use instance ID? What are instance IDs for GPDSP?
> 
> 
> In Leman's there are two different cdsp subsytem, i will add new 
> instance id for that also.
> 
> What is GPdsp, you mean gpu ?
> 

No, I mean general purpose DSP aka GPDSP aka GDSP.

-- 
With best wishes
Dmitry

