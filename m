Return-Path: <devicetree+bounces-251789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 35786CF7066
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 08:22:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CE3A7301EC77
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 07:22:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9E5030AACA;
	Tue,  6 Jan 2026 07:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h21zQnPG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Qw0ZE9fl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92127156237
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 07:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767684161; cv=none; b=SXMdS/dOy2DWny5V+ozfkIkteJXoWqR6kDKLL2AwnT22FnuR5VKcR3SoP8MKfuHvowmSwU2/J703TW9LV2XtbviHBGMGWdg2+8pzK+DkfUOdRgk6f0vNoy/rMcDBPaWwQAI7et1CXAiiNN9YRR4LcLUoq5to+Fm5RrauNqg+Ans=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767684161; c=relaxed/simple;
	bh=Tr6nKMkYH0j83URjwjkdws1idv2EwgShDP79lP6p2OA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OlY7f5zeipQoWWxESIu5wmHwpjyS2oHl224T59PGpAYv6OsVMXp3c4RmP6KiwUtvVbNlh8gv0h74izTAt+dmuR7ZgBRW0fFswifM6qqXn+WuiNpWuLIQkux+rz3e5zDFjWuJtoeOscbHbETnwvyfoqKvoLwp97ow58Tpasdqyx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h21zQnPG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Qw0ZE9fl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6063QB7l3073062
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 07:22:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nYdW3BUX9r+B5i/qFPMyHS7fMQ9moDI8ZVhqNQ0SgLE=; b=h21zQnPG6XUjfuZd
	wiiBJlH7C444BJXszHf8wwBZdpf/u07fopTIjrv7uwJz5bSjN9H4WEQFlwhFQOMa
	yA1ZyTdqlUU2Vl6V+YedptWVFGq1aI3iSC2ObA0QJ7Hjp1HxjSZlPzJbmKbubN99
	AU+HqNUSVOdJ68sfHqM5mMI1sizwCH9370e8TUcMaCU35MZkjty1pN5iMS80YY39
	6RmDmOfuu5y009YVi9BoLbuKGJde2IXy9RCGNmi1Vmv36RjAmGNWStOdF557lqRW
	wGTqGE4QQT7ZGaSFxgYYpBDoO2WoDPRjY7cQvFtsjnG9WlRP66jzuQr9eTRTLccH
	HzcGJg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgrf7gw6q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 07:22:37 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a09845b7faso12132385ad.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 23:22:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767684157; x=1768288957; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nYdW3BUX9r+B5i/qFPMyHS7fMQ9moDI8ZVhqNQ0SgLE=;
        b=Qw0ZE9fl/yuJByGWkPKW1sN9X1KjnJRHHNfpuKuFialFeRyWtPsuivCXWXXon8t3o/
         TiPMYLRH5BmGMZCjCHN+YmGW0BAhF9kfsmsQRzwS/AfPY7vGnp0VnahznSt8bnF57O9Y
         HrcTRieLdAgDlJCvRFn9XFp5e0MU60C/mrDTKtuqI+cJGuaAFficJbtaeTnC5E3jmhkb
         Ik3KefDtGu4qdYqeyrJLKjxqx/pK3P5bdu3guyMpUwEj3YLdU8IoEDiDSiFTcR0ito3g
         jyz8TdiIhZBViqQuSuZXjZdW9Ikx6hBSkyD3bOp/PS5KbCIF5EFLbtTv/DpgIjMrQ+Jw
         qf6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767684157; x=1768288957;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nYdW3BUX9r+B5i/qFPMyHS7fMQ9moDI8ZVhqNQ0SgLE=;
        b=OMvfR2FCklu8u7+TCdxZVumLJUVeRZtCJB9TaRpX463eqEe98rdvGVz0wRe+uvVRri
         Tw7TnEDqCGvS6cyMcvh+xErQtxCaryoOVRdbyjS8tzBYrPdjtQ4t8XlEtJ+lmYlufzHk
         Z1q+4W6M6GMl4JbFj8hJ9uzpEuqIhFM+m9AbxTK4Fzaft8FQElhruwmj1beDyCYWWa4v
         20eUc+LjJGSFK4+IzTpFCUE6cNyFn+64hDDv+tJX/FQ6TZR3G4XFZKelaCy6OveBCWX0
         8M+gBpCEt8h4rQP2c0/5ylDprqdFcTGfeaRMXvUklYg1u/psJRbOAgQBej3Ap6r8Vi4s
         Y3nw==
X-Forwarded-Encrypted: i=1; AJvYcCWuD25IZ/KYkkZiT9ojA2ompAnS45dGRiQBySZeoM0jk7vJ1LlQpARr9qIWSuSfQCJkUoIKPnPDlhnw@vger.kernel.org
X-Gm-Message-State: AOJu0YyM4oWPGTfmFYcjCPRRS2w53+Kn72Kg7buoCbIVeU7CYNpR+1uM
	mF9BJAnblVbGsAv8WvoKy2FiJu2GTSm16i4sGQpLQEhoaYw3gbPIa4gGz9DhaPl1zfE6vWQ0rc1
	ReS1pjdCmk2THE15yQRbSR3W9Cs8Qv6BBr4bWVrLaFFxXL92CTk19pUOPdW2zB2D6
X-Gm-Gg: AY/fxX6nAHIcz8o32o2WhA06cRgx+GdBGSliMzYm3ID+ZhhvcYr8Vh9+eMbIcGdL+GJ
	5UOHDvG5raAsS8mR86Gao2bE1lonvpHzQn+6x3lZdgV8mU1dwQUtVYK0lS2F1t7pcalz8ov+OT5
	b1EUUa1iU0zTuk0w8yaoqG8P5fJndD5bOp0JILGyNlE2sA7GYHgebxfrrFQXG6j56O4hoH+Mmzn
	WtfRN57IHg5sEfMD6v6YTSswBepnCbdK3qYWvgbbggxJo1jvLYk6axhy0aBjyhnEQqHlJvekup9
	Vy0YgJr3KluplwShIm3hjpswWDy09yK0H9VYiW/160pO+2MPP88qmWRJ0w9bfm0C28d7Byw7AH3
	qXukqWJzGiQEDc5HZ74bWtt8G/MxxZArq61KZOa/g/g+xeiOczi2OMtzWfVakiqV5EVICk2PJ1x
	E7g2rIOQ==
X-Received: by 2002:a17:902:ef52:b0:297:df4e:fdd5 with SMTP id d9443c01a7336-2a3e2cbbd99mr25369465ad.23.1767684156853;
        Mon, 05 Jan 2026 23:22:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE4fCgkBJ5GwaDnr/7t7gVcZN56BH0JhczYJMXPSvB/LnWS4Ez/W7dUAS7GgJqcWhHEpxGMYQ==
X-Received: by 2002:a17:902:ef52:b0:297:df4e:fdd5 with SMTP id d9443c01a7336-2a3e2cbbd99mr25369205ad.23.1767684156306;
        Mon, 05 Jan 2026 23:22:36 -0800 (PST)
Received: from [10.133.33.154] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c5adf1cfsm1159738b3a.57.2026.01.05.23.22.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jan 2026 23:22:35 -0800 (PST)
Message-ID: <ea0183ba-8515-44ad-ab04-fdee22be01c7@oss.qualcomm.com>
Date: Tue, 6 Jan 2026 15:22:31 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 7/7] qcom-tgu: Add reset node to initialize
To: Jie Gan <jie.gan@oss.qualcomm.com>, andersson@kernel.org,
        alexander.shishkin@linux.intel.com, mike.leach@linaro.org,
        suzuki.poulose@arm.com, james.clark@arm.com, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        devicetree@vger.kernel.org, gregkh@linuxfoundation.org
References: <20251219065902.2296896-1-songwei.chai@oss.qualcomm.com>
 <20251219065902.2296896-8-songwei.chai@oss.qualcomm.com>
 <aa3ee735-8ef1-4f44-9528-e93ebec2a215@oss.qualcomm.com>
Content-Language: en-US
From: Songwei Chai <songwei.chai@oss.qualcomm.com>
In-Reply-To: <aa3ee735-8ef1-4f44-9528-e93ebec2a215@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: Uvc5P1kwEFAJTCYPC2y17eSA1umpQF4T
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA2MCBTYWx0ZWRfX5tgA0P4liCcN
 u9xNspTBKgboxTy32pvdfmU97Ajw4kIbSqguneJmmOFWqumSqgHyzmLRcw0OE02RvdvSre8CbDI
 koCpW5We7/eMjV+tQBYChy1nUr/6+XtMX8pzbssXDgUiCl7Fzpyu2DXPkuf7YSzwU/oyTO4nmVM
 bYIUIlDVhYpFervTIA09n1TlEYjkigvoIoh8BnkuauJJ1jhFyvm0aTTAiehtgtqxB9kc6LyAW20
 xYBtRLxiZsfDiAMrxHrPOJ5+3PBcqU5299qvjkbF8MLwkucnZS24VtjpugTQkUMXxrSWQj7vciL
 In0QC12oTVAKI5xqkbPxyzN0m0HnsE7D5ggqH5wX2qef1fsi097zsHhiM6EnuDKAiB4OFcNKBCr
 VlP5xF6vBQ5grZ9FhtxTIP8TnwrThaIm9sY5aYWVIw3/iSXW8M4d1BMKQS7L70ZdTCdSibSVes6
 6juX8rmQ9XCR9o23mMQ==
X-Proofpoint-GUID: Uvc5P1kwEFAJTCYPC2y17eSA1umpQF4T
X-Authority-Analysis: v=2.4 cv=FK0WBuos c=1 sm=1 tr=0 ts=695cb83d cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=E2cSrPEqdgoo7pV8VbMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 lowpriorityscore=0 phishscore=0 priorityscore=1501 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060060



On 12/25/2025 1:56 PM, Jie Gan wrote:
> 
> 
> On 12/19/2025 2:59 PM, Songwei Chai wrote:
>> Add reset node to initialize the value of
>> priority/condition_decode/condition_select/timer/counter nodes.
>>
>> Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
>> ---
>>   .../ABI/testing/sysfs-bus-amba-devices-tgu    |  7 ++
>>   drivers/hwtracing/qcom/tgu.c                  | 74 +++++++++++++++++++
>>   2 files changed, 81 insertions(+)
>>
>> diff --git a/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu b/ 
>> Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
>> index 010eade0a1c5..0733b3e07b45 100644
>> --- a/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
>> +++ b/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
>> @@ -42,3 +42,10 @@ KernelVersion    6.19
>>   Contact:    Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai 
>> <songwei.chai@oss.qualcomm.com>
>>   Description:
>>           (RW) Set/Get the counter value with specific step for TGU.
>> +
>> +What:        /sys/bus/amba/devices/<tgu-name>/reset_tgu
>> +Date:        December 2025
>> +KernelVersion    6.19
>> +Contact:    Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai 
>> <songwei.chai@oss.qualcomm.com>
>> +Description:
>> +        (Write) Write 1 to reset the dataset for TGU.
>> diff --git a/drivers/hwtracing/qcom/tgu.c b/drivers/hwtracing/qcom/tgu.c
>> index d4210869556e..5a8c6af9b719 100644
>> --- a/drivers/hwtracing/qcom/tgu.c
>> +++ b/drivers/hwtracing/qcom/tgu.c
>> @@ -425,8 +425,82 @@ static ssize_t enable_tgu_store(struct device *dev,
>>   }
>>   static DEVICE_ATTR_RW(enable_tgu);
>> +/* reset_tgu_store - Reset Trace and Gating Unit (TGU) configuration. */
>> +static ssize_t reset_tgu_store(struct device *dev,
>> +                   struct device_attribute *attr, const char *buf,
>> +                   size_t size)
>> +{
>> +    unsigned long value;
>> +    struct tgu_drvdata *drvdata = dev_get_drvdata(dev);
>> +    int i, j, ret;
>> +
>> +    if (kstrtoul(buf, 0, &value) || value == 0)
>> +        return -EINVAL;
>> +
>> +    if (!drvdata->enable) {
>> +        ret = pm_runtime_get_sync(drvdata->dev);
>> +        if (ret < 0) {
>> +            pm_runtime_put(drvdata->dev);
>> +            return ret;
>> +        }
>> +    }
>> +
>> +    guard(spinlock)(&drvdata->lock);
>> +    TGU_UNLOCK(drvdata->base);
>> +
>> +    writel(0, drvdata->base + TGU_CONTROL);
> 
> Better move TGU_LOCK(drvdata->base) here
Yeah.>
> Thanks,
> Jie
> 
>> +
>> +    if (drvdata->value_table->priority)
>> +        memset(drvdata->value_table->priority, 0,
>> +                MAX_PRIORITY * drvdata->max_step *
>> +                drvdata->max_reg * sizeof(unsigned int));
>> +
>> +    if (drvdata->value_table->condition_decode)
>> +        memset(drvdata->value_table->condition_decode, 0,
>> +                drvdata->max_condition_decode * drvdata->max_step *
>> +                sizeof(unsigned int));
>> +
>> +        /* Initialize all condition registers to NOT(value=0x1000000) */
>> +    for (i = 0; i < drvdata->max_step; i++) {
>> +        for (j = 0; j < drvdata->max_condition_decode; j++) {
>> +            drvdata->value_table
>> +            ->condition_decode[calculate_array_location(
>> +            drvdata, i, TGU_CONDITION_DECODE, j)] =
>> +            0x1000000;
>> +        }
>> +    }
>> +
>> +    if (drvdata->value_table->condition_select)
>> +        memset(drvdata->value_table->condition_select, 0,
>> +                drvdata->max_condition_select * drvdata->max_step *
>> +                sizeof(unsigned int));
>> +
>> +    if (drvdata->value_table->timer)
>> +        memset(drvdata->value_table->timer, 0,
>> +                (drvdata->max_step) *
>> +                (drvdata->max_timer) *
>> +                sizeof(unsigned int));
>> +
>> +    if (drvdata->value_table->counter)
>> +        memset(drvdata->value_table->counter, 0,
>> +                (drvdata->max_step) *
>> +                (drvdata->max_counter) *
>> +                sizeof(unsigned int));
>> +
>> +    dev_dbg(dev, "Coresight-TGU reset complete\n");
>> +
>> +    TGU_LOCK(drvdata->base);
>> +
>> +    drvdata->enable = false;
>> +    pm_runtime_put(drvdata->dev);
>> +
>> +    return size;
>> +}
>> +static DEVICE_ATTR_WO(reset_tgu);
>> +
>>   static struct attribute *tgu_common_attrs[] = {
>>       &dev_attr_enable_tgu.attr,
>> +    &dev_attr_reset_tgu.attr,
>>       NULL,
>>   };
> 


