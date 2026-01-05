Return-Path: <devicetree+bounces-251627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5EFCF5202
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 18:59:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3AFA230DBA00
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 17:54:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EC89322B6B;
	Mon,  5 Jan 2026 17:54:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NqCFXncl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d7xIdfqy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF08304BC6
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 17:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767635649; cv=none; b=HL9vc1fxjyvQu7ZKkd0N5WyGtOvx4dizOG57KFiWN5GcVd+oC+5CceEa+bUREklxgRE7upBL/+xBnZ+5osxNuJgGgWG6tJnPaxGsOd/7YdT3SMs+F0eIAdHScJtTUjPhH+N57FQxtbpYe8M/fUZJUVdUePYXmD5wUjrVi34AvBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767635649; c=relaxed/simple;
	bh=udwWkdhpTzT2eQUkwfGyGq8r6Ut5AbsbTRHIFrQ1B/0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Sew8lC/WpGhSvVwlemYAfhAxBhLODm6+0pcKfZtWxrOmraqoXK+pajZtghl7r+Z0ZqilaxvQMSgz+/SZbQ/DXJTOvEOyHhFSm9NH4sNcL636FEuASq4f4Rx4q8q26cW12ZDo/GngjtfeRTv/QSrzk+VWYF/NjfItgtN7yFeW7CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NqCFXncl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d7xIdfqy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6059cUwu3541749
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 17:54:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	up2RJ7mBO3QRQNqNSX63k2cfkFf65kx0CXGDWq797Cw=; b=NqCFXncl0eE41y7F
	1cjWzK7v1HtXjtW0mU7ToSsxoWtRLv7c7lswLOrH4GN//cBpvicmRjLDoMWRV9SZ
	oJ7HiiI9szam6Biqz/qlgvPCvu+FNz56ehYrUtMn2stq4V4ME496IQqEmbSCON5l
	02S2WYsLDMqnv7VnK7IQW+BwGzG+ubNQYTRKCUpiUjIroRnDLeP0ysbL0SQ6xNGW
	jpNpXpjDUXUjSL68EzqN6d3mKrEJvEsMpGTU6v1dXQ6Dql5Rfz71JbrsxuXo56ut
	iwF9wHgJiZhZS4aNKntm2AKN64SUTrVRnX0stKs6bXYKgu1p2ljx5Gh3YaocQGyt
	bx/xKA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bg57sjcn5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 17:54:06 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34cc8bf226cso717159a91.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 09:54:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767635645; x=1768240445; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=up2RJ7mBO3QRQNqNSX63k2cfkFf65kx0CXGDWq797Cw=;
        b=d7xIdfqy+Wgt0ltzP0mFBL2TKXaT5RBxqRfSmreAk937tYHkRgfSdUaC7uPbZy21qO
         QO584bKN+k2ERhLvRsJS+x68gIH2HBRVJMaJvmFHQKz/74jOgkQJpNsLxhQj1zkEOYbk
         Xusqi+NrW0JZ6x3q8fnMyjvzGWtMrVIZnT23d2WNz+ARZW/swP1cpImY5mZZ9VbuH5KK
         JEJoXeskeca5UaDa07swuBSODM//s04gzNfEouMFKGDYIf6wtR/u98h6tEpaWpHt1EkL
         4ulM3fn9nghdCR51zBWQLlHEDlJSTLQPoSPQpxDiVN0U/ccggv7SCTVRJemhjJbvGkbS
         /Ykg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767635645; x=1768240445;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=up2RJ7mBO3QRQNqNSX63k2cfkFf65kx0CXGDWq797Cw=;
        b=QMbcjRDH4wNfWaXSmRZbJVwfe9fC1Mt2yuyEs5hjDKEX0egZHXku6pckhIiySAhKV/
         IRTqQDLEVHDEHhRtpvrcWdHWAsZOU2JD+HUJkRdM2ToiDA0qUP2mwHsdBkybqjVR5hzH
         LzecJ/C9w/1YZE9hvkp1Zo/Ao5ijlJqNXhBuqNBvsxdt0w/5mh2Ms3rDHO1i6XIWA0oB
         YE/mUq4Xw2wBecz0tGqrc4dzxydCtW93tpFJl1RHR2OcgW9VMTnVQzanbHAOsa8aQFa3
         rcO59bDOYz3m/k2fyK50ocsQqIegNcEGWBO9HhaX3zudfdHkR/nNyp8suuJ4KAiY/C/m
         BjOA==
X-Forwarded-Encrypted: i=1; AJvYcCVlTKTEbTpe7VZG+Oi9bA7zP7kgEIIajYpjfqD1ujD0rpNo1JVdcYhuMd8QqCFPZqmydGbfKZFPTqrC@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5HXtdsuerF5IR772owzlAbHfcjg6P7ExfQ/w/qlQTG5n5SCT6
	iuVUwgEGce7huS7xhxlvShXLpDpN3B6tZw44YJlguRZimVZB20SbYe038tPVAGee4XbDwAlfj7y
	aK5rpEBOD/kwhL+qmDp5MwJkr2R39WLCjMks4c1BSUOXbQg/uQrq4qSdyrHlAT2dy
X-Gm-Gg: AY/fxX4bo8Aep5/Jzb+kN2doFP/4vwvoN1DTCWW7KM96icFYdAjPX4lxo7fw56lfRfm
	XHyf/XlePBkl7OHMIw+YDB4i0vU981EM+9/hHSIuqDq1eNMrgcsYYWWwWY5gnD1OqkIAmep83UL
	n+eeo14ETSuvZcboJBwth2eabfhWIvwMXbQx8sRM8S3y6sy5p9O2PfGPhO8KAXit01QRgGrIkUJ
	toJTQZBTyZTpZkcc9aiSplU/hn2KQ46SpAlI0o/Z/yo40QaJTnT9/kaNhydv3coKwD6/sDPl5vl
	6JL49doztO2vQpe0Mp9MSIy2SSjUIx6zRbpSh92L/sGro43ahw1vIdisbzWJFMhgnnUuw8/LHOJ
	cglfU8xsCDPlxuumRzijNoJyEpvwRWFc5HnYYoFw+1fUb5yjNm06ZHspmlt9gDKSjZV5Vrb6659
	pNk7go
X-Received: by 2002:a17:90b:2684:b0:34a:b8e0:dd64 with SMTP id 98e67ed59e1d1-34f5f273b91mr120667a91.1.1767635645296;
        Mon, 05 Jan 2026 09:54:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFEAjGO3oXRkqFt+Dr912mQRBhrraJgw+/RX85ptzw8Hrud60zSlNKtqDujFJK5kumkbSyRog==
X-Received: by 2002:a17:90b:2684:b0:34a:b8e0:dd64 with SMTP id 98e67ed59e1d1-34f5f273b91mr120641a91.1.1767635644778;
        Mon, 05 Jan 2026 09:54:04 -0800 (PST)
Received: from ?IPV6:2405:201:c408:b07b:6589:c739:d9cc:4910? ([2405:201:c408:b07b:6589:c739:d9cc:4910])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f7a557asm11725a91.3.2026.01.05.09.53.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jan 2026 09:54:04 -0800 (PST)
Message-ID: <06619e53-7260-7bd2-1954-dd10b92dc354@oss.qualcomm.com>
Date: Mon, 5 Jan 2026 23:23:56 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v19 01/10] power: reset: reboot-mode: Remove devres based
 allocations
Content-Language: en-US
To: Bartosz Golaszewski <brgl@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Andy Yan
 <andy.yan@rock-chips.com>,
        John Stultz <john.stultz@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Andre Draszik <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Srinivas Kandagatla <srini@kernel.org>
References: <20251228-arm-psci-system_reset2-vendor-reboots-v19-0-ebb956053098@oss.qualcomm.com>
 <20251228-arm-psci-system_reset2-vendor-reboots-v19-1-ebb956053098@oss.qualcomm.com>
 <CAMRc=McEB+yVYxropzsqLExZCU5Pd_iy_=5N3pTxu28-ZX=7_w@mail.gmail.com>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <CAMRc=McEB+yVYxropzsqLExZCU5Pd_iy_=5N3pTxu28-ZX=7_w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=UJ/Q3Sfy c=1 sm=1 tr=0 ts=695bfabe cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=LC1Hwnd0PhZBVGXlRGcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDE1NCBTYWx0ZWRfX5T+4gHri6EWf
 LP0SM9PcByndAoEF0uyZnPHd8dd/imJ6DlmXlyL4vzcr0NMpsKi8Vp/WDQoQcY8DEPKN0eyeno6
 Bbuj3fEO0ym7qiSPpH2Y+Y1zk7lEicB4VIN1kIwg3oYSHjfs4ivHsbXrWsQiaWpfhHGY/3ft6R1
 h5TBIJqfy0iSet18z4cJA3Hx+gxM3LUa9ibUZqa22nQMpgO5MApR/8IEzNsyCoa8jT/ZzQCSqOY
 VCfZNaa7V/x/BcDZHsVR6aQoAxfQ28v9COsfVFUjUnKru1+Jed4dXBzKsI0/s5xWS7NTncY3V6e
 1ih21K09RbTVtZMsyxmhBJQGUQ2BgETBeJuW67S45xe+an6QNhL7Dup1O4HyQU/t7Ui0h2/Hueh
 r00QwU1M6ofFLyjIP71gW+XI+Nzcunc+mbuN4QwNcC5amfhgSj1szvf1T1x8LGezJF6jsNzUeMA
 bGPTkSpvHslLOUZvGXg==
X-Proofpoint-ORIG-GUID: 2jGgmAbAJrrRmBU9FCwMtkgx_NTKrvYd
X-Proofpoint-GUID: 2jGgmAbAJrrRmBU9FCwMtkgx_NTKrvYd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 spamscore=0 bulkscore=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601050154



On 1/2/2026 3:35 PM, Bartosz Golaszewski wrote:
> On Sun, Dec 28, 2025 at 6:20 PM Shivendra Pratap
> <shivendra.pratap@oss.qualcomm.com> wrote:
>>
>> Devres APIs are intended for use in drivers, where the managed lifetime
>> of resources is tied directly to the driver attach/detach cycle. In
>> shared subsystem code, there is no guarantee that the subsystem
>> functions will only be called after a driver has been attached, nor that
>> they will not be referenced after the managed resources have been
>> released during driver detach.

[SNIP..]

>>
>> @@ -71,9 +74,11 @@ static int reboot_mode_notify(struct notifier_block *this,
>>  int reboot_mode_register(struct reboot_mode_driver *reboot)
>>  {
>>         struct mode_info *info;
>> +       struct mode_info *next;
>>         struct property *prop;
>>         struct device_node *np = reboot->dev->of_node;
>>         size_t len = strlen(PREFIX);
>> +       u32 magic;
>>         int ret;
>>
>>         INIT_LIST_HEAD(&reboot->head);
>> @@ -82,19 +87,17 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
>>                 if (strncmp(prop->name, PREFIX, len))
>>                         continue;
>>
>> -               info = devm_kzalloc(reboot->dev, sizeof(*info), GFP_KERNEL);
>> +               if (of_property_read_u32(np, prop->name, &magic)) {
> 
> Please use device_property_read_u32() if you have access to a device struct.

Ack. Can it go in same patch with the fixes tag?

> 
>> +                       pr_err("reboot mode %s without magic number\n", prop->name);
> 
> If this is an error, shouldn't we bail out?
> 
>> +                       continue;
>> +               }
>> +
>> +               info = kzalloc(sizeof(*info), GFP_KERNEL);
>>                 if (!info) {
>>                         ret = -ENOMEM;
>>                         goto error;
>>                 }
>>
>> -               if (of_property_read_u32(np, prop->name, &info->magic)) {
>> -                       dev_err(reboot->dev, "reboot mode %s without magic number\n",
>> -                               info->mode);
>> -                       devm_kfree(reboot->dev, info);
>> -                       continue;
>> -               }
>> -
>>                 info->mode = kstrdup_const(prop->name + len, GFP_KERNEL);
>>                 if (!info->mode) {
>>                         ret =  -ENOMEM;
>> @@ -102,8 +105,7 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
>>                 } else if (info->mode[0] == '\0') {
>>                         kfree_const(info->mode);
>>                         ret = -EINVAL;
>> -                       dev_err(reboot->dev, "invalid mode name(%s): too short!\n",
>> -                               prop->name);
>> +                       pr_err("invalid mode name(%s): too short!\n", prop->name);
>>                         goto error;
>>                 }
>>
>> @@ -116,8 +118,12 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
>>         return 0;
>>
>>  error:
>> -       list_for_each_entry(info, &reboot->head, list)
>> +       kfree(info);
>> +       list_for_each_entry_safe(info, next, &reboot->head, list) {
>> +               list_del(&info->list);
>>                 kfree_const(info->mode);
>> +               kfree(info);
>> +       }
>>
>>         return ret;
>>  }
>> @@ -130,11 +136,15 @@ EXPORT_SYMBOL_GPL(reboot_mode_register);
>>  int reboot_mode_unregister(struct reboot_mode_driver *reboot)
>>  {
>>         struct mode_info *info;
>> +       struct mode_info *next;
>>
>>         unregister_reboot_notifier(&reboot->reboot_notifier);
>>
>> -       list_for_each_entry(info, &reboot->head, list)
>> +       list_for_each_entry_safe(info, next, &reboot->head, list) {
>> +               list_del(&info->list);
>>                 kfree_const(info->mode);
>> +               kfree(info);
>> +       }
> 
> The code is repeated here, maybe factor it out into a separate function?

Ack. let me try that.

thanks,
Shivendra

