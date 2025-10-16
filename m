Return-Path: <devicetree+bounces-227851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E3832BE4D22
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 19:19:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A40534F0B97
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 17:19:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41B0823EAB3;
	Thu, 16 Oct 2025 17:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gohw4ps1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1060A43AA4
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 17:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760635188; cv=none; b=NYUYzEpcYmDH2u2gGsO5gjSJqkuY6ENtTGQrzSG0khJkpiCgMk7JQOYRt42s4TGhs7PYSxGf4sRB+Ho9gcnojpU1DEaHVaROvyUA2geWmruEgZVNgoy05O+AJEWhXKNi3VCSZd7lACDrtIqZd+13prWDNwXjq6cVgJkTSQN7YKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760635188; c=relaxed/simple;
	bh=iCjjuLaISQPhiPCfSVOWiLqhl9nvQ9Mx8UGWwvNy8QM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B4KgRnsxpcB4M0hd3oc49XJAGm76SMUuasrYmmAREexnr8sa8IOtMUyHVmwD+2EWio6SdMn5pDJAMXIOvVHXehBYcDlKAj+6I0YublOPiCBYWNiiv8+Bnji5+WgPOLWtdLrCaw+/p0oJFOOKVMTscat+RE/QJXQjBdlEOZF1Rv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gohw4ps1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59GA4gPG022883
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 17:19:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ax94yOZGpPbJi/xkHkGG7O7SwfDjw1ym9nOUmMgbPc8=; b=gohw4ps1ahNQxtjY
	g6HwKuJdWImMQBH6Aa7c0ZA/c+8LQdaiGrfY9ChqFh/Ei+np3e02R7TOn/kqd0a6
	8FOsqmqtGAqrFyXEFn+JBz3bTgFQFceGi2CbXY6/Z490iaVL7L4RRiKyj3NBCSGU
	0OhgQnxhh4OBjFxPAINLgzVuaQ3rtOqTgomhenXRH4SlZSd4A3DKe5WOMisk0AoF
	uLHer1wLpjUwfMahIOTLgk6cUB5gCbfyYeNj1EDyOQ38cYZp8mPX2uGssJWx1K3w
	Xlstm/3v2XABbh1YLdullQ3cL4ptI92ZxF/IZlId/CXQKp6cRg+GY9tOqmheutIK
	gXJiqA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49tqvpjgq7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 17:19:43 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32eb864fe90so1665244a91.3
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 10:19:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760635183; x=1761239983;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ax94yOZGpPbJi/xkHkGG7O7SwfDjw1ym9nOUmMgbPc8=;
        b=MoNYZHUZ2S2eNs4UOg6g4xyiAnTP5HG1OHp5dwEqr5jN2/N6cRyHTeFXyVvwUNvWOb
         /hvwU0WmzzQVUy53JxISLPlTFvI0InX+ajsx1aHib9C9WhFTnuCHMSYUiBnGsGxQ90PC
         cMEjvRDTElkgphsdC7X53gVVoFU8fFfwKfNMaWXe70niM5TZt2fZkWdBbcie5liG+F53
         W3iHO1a+XSb+BeL1ja2vEgyfaTMXs1npLoSVmaEnkPZ8WungdJXpHsD6beA9rCpB5hGO
         vgfrw6ZJQNEMHwv4zdFi1jvYYIvSU3b0GyNMP+sF1d72c/EE0G/ntC7fOGdFVkgrXaWY
         JEQQ==
X-Forwarded-Encrypted: i=1; AJvYcCV9e2wp0iDqQ/U1g9koeMzERCR0PaOpWOP8NpKm8CgGVupT2UqTB7wmP1le9W/LpgWnkMmQ0e5d/9oe@vger.kernel.org
X-Gm-Message-State: AOJu0Yxrmoq8fkvIiiTaU6m+JesFGvW1I6NMLoOeuiSRR57jezHPREO9
	PGKsQA6nDATCZJp+kGe8cZMU8S/55pN9gLEXAUChdDe77BNdAxGPIy8ZDyZrBe+FCK7v38OvJ7V
	0Bm5LKNpi8KkIoJHbtRmbfiPJzG4EEb1Zj2Y6MVOHZDEV1JcYwcd72NPE7vIzX5ut
X-Gm-Gg: ASbGnct/PY0SC0yxVWVQoenFYdhRIBtR/5lUw26i8LhmnskIYZkWOpHgFlDdInSOULg
	ZmLFoo8u8OHCW7QbhVYCJ35Bn+Yw2AEUoC2kkIYNSghe1H0KELq68YBNYuadxHmsLgiXhy3n6Sf
	m36A0LiSL92CWZFQN0dquJLe9eeG1PwBMUceC9D74kf8FMl01W1Ir0H1YyRATQyzSys5ut6UvWo
	28Bm721NA3yAE0ROBlsa+Uk0bXQajnUyGEzmuE/L65yN3a5i1GxLMFRLNXXtvxc7ZZ6RniMn86v
	OLZIxcplgpZ2MWzxmNXXy+lqorM7M9TQsD3N1YfXckKGbMrY+df9kpWa8NtMxPx2IKtDVd3sKz8
	w/tK4NPk0JjiZInPXgLw4GkS1zS63MYhb
X-Received: by 2002:a17:90b:3f8d:b0:33b:be31:8193 with SMTP id 98e67ed59e1d1-33bcf85d59dmr763830a91.6.1760635182601;
        Thu, 16 Oct 2025 10:19:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1rRrAo2QPBaKZifUQLJIoZpvDEaFp+zcbkMAZ+fOe6tW2DlqTpsxyKkKUiFkWY1Ph4rjsWQ==
X-Received: by 2002:a17:90b:3f8d:b0:33b:be31:8193 with SMTP id 98e67ed59e1d1-33bcf85d59dmr763793a91.6.1760635182106;
        Thu, 16 Oct 2025 10:19:42 -0700 (PDT)
Received: from [10.216.0.133] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33bb65222b1sm2611494a91.6.2025.10.16.10.19.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 10:19:41 -0700 (PDT)
Message-ID: <fa42adf0-8f15-ad4c-3788-578b1bee1c72@oss.qualcomm.com>
Date: Thu, 16 Oct 2025 22:49:26 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v16 02/14] power: reset: reboot-mode: Add device tree
 node-based registration
Content-Language: en-US
To: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel
 <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        John Stultz <john.stultz@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik
 <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Srinivas Kandagatla <srini@kernel.org>
References: <20251015-arm-psci-system_reset2-vendor-reboots-v16-0-b98aedaa23ee@oss.qualcomm.com>
 <20251015-arm-psci-system_reset2-vendor-reboots-v16-2-b98aedaa23ee@oss.qualcomm.com>
 <CACMJSesvTLe28Jz83b=zfHD2rvmf7-i_2+2DoV=dgooVqFEYbA@mail.gmail.com>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <CACMJSesvTLe28Jz83b=zfHD2rvmf7-i_2+2DoV=dgooVqFEYbA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=aPD9aL9m c=1 sm=1 tr=0 ts=68f1292f cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=8ps4eDoI1eVci98EcxQA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE2MDAxNyBTYWx0ZWRfX0eX0qehaff+y
 Slr/MWUZ+dF1LjVtpyK2R82gFbTnErov7wIyAuncfizCtnnk9T7V3Oq6CljXD+/9UNLXHnRMfCL
 WmqJPTD7Rkef1x/ouOyI+Ny+GePescdBrhffbILX4hQdtKsi44zMZOaaY7QmCDtkXXZ4a8Of1re
 un3nm5WtzgF34DEXonU6pZ/Rde6d5lvxlgONpOpPrsOzFSlNFzHiLw91HhWMhIegTSiqUfKeacw
 iVcWXvUmCRe4MIzog1xFX13H5SEu6+FS6HpwIExc4G1SXaZZuRaH42cmL0lF1b8GBpZdPVCVYO7
 fx/NR8/6nxWFeh6h7c1JO0DOQNPEu1YaHGuTjWFkHAQOx/068zkNGF5w5P/qRI5CsPH368rhBXX
 VYHOggaoKATutu7X1uDHPHFEuUWx4g==
X-Proofpoint-ORIG-GUID: 2JDhi4xs2gwM8pCY_Adr1XYnR3T7bso2
X-Proofpoint-GUID: 2JDhi4xs2gwM8pCY_Adr1XYnR3T7bso2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510160017



On 10/15/2025 8:10 PM, Bartosz Golaszewski wrote:
> On Wed, 15 Oct 2025 at 06:38, Shivendra Pratap
> <shivendra.pratap@oss.qualcomm.com> wrote:
>>
>> The reboot-mode driver does not have a strict requirement for
>> device-based registration. It primarily uses the device's of_node
>> to read mode-<cmd> properties and the device pointer for logging.
>>
>> Remove the dependency on struct device and introduce support for
>> firmware node (fwnode) based registration. This enables drivers
>> that are not associated with a struct device to leverage the
>> reboot-mode framework.
>>
>> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
>> ---
>>  drivers/power/reset/reboot-mode.c | 45 +++++++++++++++++++++++++++++----------
>>  include/linux/reboot-mode.h       |  3 ++-
>>  2 files changed, 36 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
>> index 8fc3e14638ea757c8dc3808c240ff569cbd74786..c8f71e6f661ae14eb72bdcb1f412cd05faee3dd9 100644
>> --- a/drivers/power/reset/reboot-mode.c
>> +++ b/drivers/power/reset/reboot-mode.c
>> @@ -3,13 +3,17 @@
>>   * Copyright (c) 2016, Fuzhou Rockchip Electronics Co., Ltd
>>   */
>>
>> +#define pr_fmt(fmt)    "reboot-mode: " fmt
>> +
>>  #include <linux/device.h>
>>  #include <linux/init.h>
>>  #include <linux/kernel.h>
>> +#include <linux/list.h>
>>  #include <linux/module.h>
>>  #include <linux/of.h>
>>  #include <linux/reboot.h>
>>  #include <linux/reboot-mode.h>
>> +#include <linux/slab.h>
>>
>>  #define PREFIX "mode-"
>>
>> @@ -69,17 +73,26 @@ static int reboot_mode_notify(struct notifier_block *this,
>>  /**
>>   * reboot_mode_register - register a reboot mode driver
>>   * @reboot: reboot mode driver
>> + * @fwnode: Firmware node with reboot-mode configuration
>>   *
>>   * Returns: 0 on success or a negative error code on failure.
>>   */
>> -int reboot_mode_register(struct reboot_mode_driver *reboot)
>> +int reboot_mode_register(struct reboot_mode_driver *reboot, struct fwnode_handle *fwnode)
>>  {
>>         struct mode_info *info;
>> +       struct mode_info *next;
>> +       struct device_node *np;
>>         struct property *prop;
>> -       struct device_node *np = reboot->dev->of_node;
>>         size_t len = strlen(PREFIX);
>>         int ret;
>>
>> +       if (!fwnode)
>> +               return -EINVAL;
>> +
>> +       np = to_of_node(fwnode);
>> +       if (!np)
>> +               return -EINVAL;
>> +
>>         INIT_LIST_HEAD(&reboot->head);
>>
>>         mutex_init(&reboot->rb_lock);
>> @@ -89,28 +102,28 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
>>                         if (strncmp(prop->name, PREFIX, len))
>>                                 continue;
>>
>> -                       info = devm_kzalloc(reboot->dev, sizeof(*info), GFP_KERNEL);
> 
> This change is good - devres should not be used in subsystem library
> code, only in drivers - but it doesn't seem to belong here, can you
> please separate it out and make it backportable?

sure. Just to confirm we should separate out the devm_kzalloc part of the
change and add a fixes tag.
 
> 
>> +                       info = kzalloc(sizeof(*info), GFP_KERNEL);
>>                         if (!info) {
>>                                 ret = -ENOMEM;
>>                                 goto error;
>>                         }
>>
>>                         if (of_property_read_u32(np, prop->name, &info->magic)) {
>> -                               dev_err(reboot->dev, "reboot mode %s without magic number\n",
>> -                                       info->mode);
>> -                               devm_kfree(reboot->dev, info);
>> +                               pr_err("reboot mode %s without magic number\n", info->mode);
>> +                               kfree(info);
>>                                 continue;
>>                         }
>>
>>                         info->mode = kstrdup_const(prop->name + len, GFP_KERNEL);
>>                         if (!info->mode) {
>>                                 ret =  -ENOMEM;
>> +                               kfree(info);
>>                                 goto error;
>>                         } else if (info->mode[0] == '\0') {
>>                                 kfree_const(info->mode);
>> +                               kfree(info);
>>                                 ret = -EINVAL;
>> -                               dev_err(reboot->dev, "invalid mode name(%s): too short!\n",
>> -                                       prop->name);
>> +                               pr_err("invalid mode name(%s): too short!\n", prop->name);
>>                                 goto error;
>>                         }
>>
>> @@ -123,8 +136,11 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
>>                 return 0;
>>
>>  error:
>> -               list_for_each_entry(info, &reboot->head, list)
>> +               list_for_each_entry_safe(info, next, &reboot->head, list) {
>> +                       list_del(&info->list);
> 
> Same here, not deleting the entries currently seems like a bug? Do we
> depend on the driver detach to clean up the resources on failure?

sure, so this should also go as fixes? and should we remove the other
dev_err(printk) also as fixes? or that can still got with the change
where we add fwnode based registration?

thanks for review!

-
Shivendra

