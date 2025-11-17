Return-Path: <devicetree+bounces-239512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 3620CC659CF
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 18:52:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0C29535BE60
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 17:45:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 151A929B216;
	Mon, 17 Nov 2025 17:45:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I/6aBMSG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZD5oMqDc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE17D309DAB
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 17:45:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763401506; cv=none; b=GJ9fAaz37VyE6zLmqpv/uMUpKvBwEmXKiacv6m1dqK3kEP4CT2Cr6RzzLVf3Kp28tSe2fV1OTYmu7JfhwsntAELkFCtoHdCf4WZSWkKyTfE5mLJr/q9Lc+r7JRzeWY07m8q5LahfKu9PIy84KEjWxZ/LQlSFL7WndZk4c/C/dmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763401506; c=relaxed/simple;
	bh=OrY5QqJzGHyH/k2TUKUNblpQX3atIXj34y5rMMffOD4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u7aY6i2ogYkMXpK+w07/mG7TBUbeufRkMGPcVE8bQNXodsu/oYieQJqoyDpVVZYrUzF1vR0aXDU2PULSvOq2ohW1bAHz3EvERZSz6qe4COZsbYkh2Xj569XYRg+jyaZg03PZ23FHugMVS6s9fzFVoFyvqioIeqt1YZ6oMQDoYM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I/6aBMSG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZD5oMqDc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHB6EZr4108034
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 17:45:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FZRSZJaXJK3H8KiRRFtmfmmD0X8FuwMNZIwPPdsPacU=; b=I/6aBMSGTw1rVz6E
	/c2JmqopvTST5m+7FVkGDyjtFCMCwPfDbRZqsVzZdJ9Zjj1aIreOVxmRO23v6wuu
	4kQhSlJaJDfypaVFbtgddphEAu+Ld+eb1TykJPTBhI7oqFLhbnuc7BIEf8me/Zyw
	O9Fff3Q0GWCajjrzfKNbfGjKBNIzVhmlV/mHChzjxRyLPJwd2so2BW17zRJ39Uov
	rsP4G+mNDsnbUZjXsLwNU5WxJSjfvVa6JfgHIJMcHRnjjIsur6IhlJToqirFX96S
	2yGhi/x5Ug9MILDjBUGGpS7aJ+JsnAVQ3gxk6+jvXB5iS+kJINM5hPGKLupl9OR7
	vEBqrQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag2hp95jy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 17:45:02 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29806c42760so164618995ad.2
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 09:45:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763401502; x=1764006302; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FZRSZJaXJK3H8KiRRFtmfmmD0X8FuwMNZIwPPdsPacU=;
        b=ZD5oMqDcav5hi0P9cV/STUHZKXuh8VSECFiqI6UiWjJPflbv6ZAqv07uD7BR/rJDYb
         0m2QaYnh9cM/sjlvT9MKKkxMFRhfYkqnQM0hlm9+M/kJP3ZshyHiQ3lfvUOhzu8ySGqF
         mQaMEvpgiLxMxNMFPhggEA7Vd3awVNGlUDQpHVMvR/S2FPzj3n3Ak4r2wx6FDjEvUyka
         6ugjV82vtn238/a09ANhGErxp8Tuw4FA+mJ8NDJiBoQz14cZMCYjGEhxJqCwsBpGmPud
         ABQQEaMqpFp7XBj83E74xjhM9eB9T98s/DND3jI6GCE8GnNvQ6vwg2OTAOMNCKpvN/1Q
         85wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763401502; x=1764006302;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FZRSZJaXJK3H8KiRRFtmfmmD0X8FuwMNZIwPPdsPacU=;
        b=C8ewJJMv/VzJ5OcOWwXIV6XeAaAD/Mvg/dRlB5TtZ3iV0ZzxxNTlXXeRGOPMNP7+2U
         YbsXo7PITXs7SbvPeO/VP09Z/WRWxSLX96r7faBYNLOckYzAlyshblgjwCgSzHOVm7Y6
         API1pocAoQuuJB50hB3y1yVjdYq1OYX976riwcwnu156CPWy6YY5sUGuPfnPqQiCMuSF
         QqSch9FBPO6J/r734R7BzZDf1v6la7Vfi53BgiTAc9XuAh6SotItSZzSqpCuQpP/Q0Kh
         0ev8R3bTDlwu8bv1l+1/jyu5iHURbAocBIXUsGGN508gyDPkD+Mcg7150iF8DxDKfzbm
         ZCuQ==
X-Forwarded-Encrypted: i=1; AJvYcCVpvl8ysCT1jX5nFV8eTsN6sGjwoSm4gja3jtInchxLyqD9YT0QuaIEfoiUqiww4unwDbma5+sZmbqJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4kNIdNzC85aeX/I1JBA+oVu6UpUngRmLQX+g0tT3FlKoVc1uG
	r3v9kx0GC+RdccymU887vukY9jJJBqZYOxvhSrKamQpxpBEbub0cI1hNZpqvRoGvuh0tqWvQIdr
	+qXGQ5zYwaplDdmIpvDPCx4NO8lyYj+B46EmaC0Vv2cgpwLmpXfaowWjtYq4fNGiG
X-Gm-Gg: ASbGncs2F47ap6KrsnjC9G59QN5DXaBfhMK8ry2hU4qX+4sTQC354ziQRc3FLau2Wum
	SA3bFGtfhunI5mmXuzvY1U6Uepl//EpM7uwq+ezAIiijO4+EjiBpjqzcl5g5gbeAPzKBp0EUDDC
	YilFVvRkks0TSFZmf5OyZgXSfjQA6vorFa9vCqMVl1u+TTp4s6lYNeuEQ/vSo4436xgQwl8LS/w
	yNRl+8UTLK2EQqdv/jmNBlQsQ7Xhq4lEggpNZh9ipsTHN+CagiahujYclcfiiEQ6Zu/IaWRzMN4
	4WTEgc4thYhA07sSpTM7XluIdm8ZgVEx8uoDVDhE+2N8winczjY1c1yf4r1/OrueEL4f7iXi251
	0ZXiRX/8Mk+cfrrUVPHTeWhdw5cuMy0NfIg==
X-Received: by 2002:a17:902:ce8b:b0:298:1830:6ada with SMTP id d9443c01a7336-2986a73acbamr170447675ad.30.1763401501416;
        Mon, 17 Nov 2025 09:45:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGWXmuj/8eJBzBjfLy+4VvylbQRa8VAv4dpCJkR15k6XehgEE2nvQT1IK2OEnM9MAQXxNazPA==
X-Received: by 2002:a17:902:ce8b:b0:298:1830:6ada with SMTP id d9443c01a7336-2986a73acbamr170446975ad.30.1763401500804;
        Mon, 17 Nov 2025 09:45:00 -0800 (PST)
Received: from [10.216.14.226] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2b0d34sm146466705ad.51.2025.11.17.09.44.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 09:45:00 -0800 (PST)
Message-ID: <80e68e44-a8e0-464a-056e-9f087ad40d51@oss.qualcomm.com>
Date: Mon, 17 Nov 2025 23:14:48 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v17 07/12] firmware: psci: Implement vendor-specific
 resets as reboot-mode
Content-Language: en-US
To: Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>, Arnd Bergmann <arnd@arndb.de>,
        Konrad Dybcio <konradybcio@kernel.org>,
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
        Xin Liu <xin.liu@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Umang Chheda <umang.chheda@oss.qualcomm.com>,
        Nirmesh Kumar Singh <nirmesh.singh@oss.qualcomm.com>
References: <20251109-arm-psci-system_reset2-vendor-reboots-v17-0-46e085bca4cc@oss.qualcomm.com>
 <20251109-arm-psci-system_reset2-vendor-reboots-v17-7-46e085bca4cc@oss.qualcomm.com>
 <aRIfc9iuC2b9DqI+@lpieralisi>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <aRIfc9iuC2b9DqI+@lpieralisi>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: LfB2PQze550npwXBh52RlA3_56ykgs66
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDE1MCBTYWx0ZWRfXwq5Z68od3y5J
 1s1lSucSQ9Ud3h68vglk4o6b0h8MLRr9RWtBn2aC4SsO2uMJb+LtgzXoDl6KCMo/9uYDFYhQCvD
 YWRS9KxV/PTpK/78cPcqisOmzQOXu8IFI/csBnI/woTOQ0kQ3JOkR06LvYk33I5/9kkCIp3ThSU
 +CZfTgEgjA1xaTyMsFMXByPyyOqU3vYB0yQ0w7QrLU5bRvSXGsaJmHa+5IQwDlXhL4FRw+Qut08
 xX6ai6oS8cqMU1hTJ7SHcF16GdrYfDlodQlDZ2TAquxxFFgomu+RoNKKqnFKThnArIWVsqO+z/6
 mFtmij7RO2byQ2FcGMZd5TzRRHlAhH1/4uhQpDAq/SOulxhIfsyLCRJtb4pO1pjVpGadJMli35r
 b1YNS0GSiPnW5Psy1WLOT6QKKif7jg==
X-Proofpoint-ORIG-GUID: LfB2PQze550npwXBh52RlA3_56ykgs66
X-Authority-Analysis: v=2.4 cv=Y5L1cxeN c=1 sm=1 tr=0 ts=691b5f1e cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=9RDUOf2qPouKHcjUQO0A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 malwarescore=0 impostorscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511170150



On 11/10/2025 10:52 PM, Lorenzo Pieralisi wrote:
> On Sun, Nov 09, 2025 at 08:07:20PM +0530, Shivendra Pratap wrote:
>> SoC vendors have different types of resets which are controlled
>> through various hardware registers. For instance, Qualcomm SoC
>> may have a requirement that reboot with “bootloader” command
>> should reboot the device to bootloader flashing mode and reboot
>> with “edl” should reboot the device into Emergency flashing mode.
>> Setting up such reboots on Qualcomm devices can be inconsistent
>> across SoC platforms and may require setting different HW
>> registers, where some of these registers may not be accessible to
>> HLOS. These knobs evolve over product generations and require
>> more drivers. PSCI spec defines, SYSTEM_RESET2, vendor-specific
>> reset which can help align this requirement. Add support for PSCI
>> SYSTEM_RESET2, vendor-specific resets and align the implementation
>> to allow user-space initiated reboots to trigger these resets.
>>
>> Implement the PSCI vendor-specific resets by registering to the
>> reboot-mode framework.
> 
> I think that we should expose to user space _all_ PSCI reset types,
> cold, warm + vendor specific - as a departure from using the reboot_mode
> variable (and possibly deprecate it - or at least stop using it).

sure. We can try that. Have tried to compile it all at the end of this thread.

> 
>> As psci init is done at early kernel init, reboot-mode registration cannot
>> be done at the time of psci init.  This is because reboot-mode creates a
>> “reboot-mode” class for exposing sysfs, which can fail at early kernel init.
>> To overcome this, introduce a late_initcall to register PSCI vendor-specific
>> resets as reboot modes. Implement a reboot-mode write function that sets
>> reset_type and cookie values during the reboot notifier callback.  Introduce
>> a firmware-based call for SYSTEM_RESET2 vendor-specific reset in the
>> psci_sys_reset path, using reset_type and cookie if supported by secure
>> firmware. Register a panic notifier and clear vendor_reset valid status
>> during panic.  This is needed for any kernel panic that occurs post
>> reboot_notifiers.
> 
> Is it because panic uses reboot_mode to determine the reset to issue ?

Yes. As we know, currently psci supports only two resets,
psci_sys_reset2 (ARCH warm reset) and psci_sys_reset(COLD RESET). And kernel
panic path should take the path set by reboot_mode to maintain backward
compatibility. 

> 
>> By using the above implementation, userspace will be able to issue
>> such resets using the reboot() system call with the "*arg"
>> parameter as a string based command. The commands can be defined
>> in PSCI device tree node under “reboot-mode” and are based on the
>> reboot-mode based commands.
> 
> IMHO - it would be nice if could add mode-cold (or mode-normal in reboot mode
> speak) and mode-warm by default (if PSCI supports them) so that userspace

Default mode in current kernel is cold, until explicitly set to warm.
So should it be defaulted to cold?

> could issue those resets too without having to set the reboot_mode variable.
> 
> Reason is, since we are doing this it is worth going the whole nine
> yards and try to decouple the reboot_mode variable from the RESTART2
> syscall argument.
> 
> Reworded: just use the new userspace interface you are adding for
> all PSCI reset types.
> 
> Thoughts very much welcome - I understand this is controversial.

We can remove the dependency on reboot_mode and include all supported
modes in a new psci_reset driver with some default modes (warm, cold)
and other vendor-specific resets which may be picked from device tree.
And then, reset based on the command being passed from userspace.

But yes some platforms that already reply on reboot_mode may break here
and will need to adjust to the new design being proposed.

Have summarized at the end of the thread.

> 
>> Reviewed-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
>> Reviewed-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>> Reviewed-by: Nirmesh Kumar Singh <nirmesh.singh@oss.qualcomm.com>
>> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
>> ---
>>  drivers/firmware/psci/Kconfig |  2 +
>>  drivers/firmware/psci/psci.c  | 92 ++++++++++++++++++++++++++++++++++++++++++-
>>  2 files changed, 93 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/firmware/psci/Kconfig b/drivers/firmware/psci/Kconfig
>> index 97944168b5e66aea1e38a7eb2d4ced8348fce64b..93ff7b071a0c364a376699733e6bc5654d56a17f 100644
>> --- a/drivers/firmware/psci/Kconfig
>> +++ b/drivers/firmware/psci/Kconfig
>> @@ -1,6 +1,8 @@
>>  # SPDX-License-Identifier: GPL-2.0-only
>>  config ARM_PSCI_FW
>>  	bool
>> +	select POWER_RESET
>> +	select REBOOT_MODE
>>  
>>  config ARM_PSCI_CHECKER
>>  	bool "ARM PSCI checker"
>> diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
>> index 38ca190d4a22d6e7e0f06420e8478a2b0ec2fe6f..ff82e7f4c27d1609a75cedc3a9790affaf839801 100644
>> --- a/drivers/firmware/psci/psci.c
>> +++ b/drivers/firmware/psci/psci.c
>> @@ -8,15 +8,18 @@
>>  
>>  #include <linux/acpi.h>
>>  #include <linux/arm-smccc.h>
>> +#include <linux/bitops.h>
>>  #include <linux/cpuidle.h>
>>  #include <linux/debugfs.h>
>>  #include <linux/errno.h>
>>  #include <linux/linkage.h>
>>  #include <linux/of.h>
>> +#include <linux/panic_notifier.h>
>>  #include <linux/pm.h>
>>  #include <linux/printk.h>
>>  #include <linux/psci.h>
>>  #include <linux/reboot.h>
>> +#include <linux/reboot-mode.h>
>>  #include <linux/slab.h>
>>  #include <linux/suspend.h>
>>  
>> @@ -51,6 +54,24 @@ static int resident_cpu = -1;
>>  struct psci_operations psci_ops;
>>  static enum arm_smccc_conduit psci_conduit = SMCCC_CONDUIT_NONE;
>>  
>> +struct psci_vendor_sysreset2 {
>> +	u32 reset_type;
>> +	u32 cookie;
>> +	bool valid;
>> +};
>> +
>> +static struct psci_vendor_sysreset2 vendor_reset;
> 
> I think this should represent all possible PSCI reset types, not vendor only
> and its value is set by the reboot mode framework.
> 
>> +
>> +static int psci_panic_event(struct notifier_block *nb, unsigned long v, void *p)
>> +{
>> +	vendor_reset.valid = false;
> 
> I don't like this. Basically all you want this for is to make sure that
> we don't override the reboot_mode variable.

Yes, it does not look good but as we planned to use reboot-mode framework earlier, which
sets the modes at the at reboot_notifiers. This needs to be taken care for any panic
that occurs between reboot_notifier and restart_notifier.

> 
> One (hack) would consist in checking the reboot_mode variable here and
> set the struct I mentioned above to the value represented in reboot_mode.
> 
> Good luck if reboot_mode == REBOOT_GPIO :-)

psci supports only two modes, ARCH_WARM and cold, so anything else except WARM/SOFT
should default to cold? So even if REBOOT_GPIO is set in reboot_mode, we should default
it to cold reset.

> 
>> +	return NOTIFY_DONE;
>> +}
>> +
>> +static struct notifier_block psci_panic_block = {
>> +	.notifier_call = psci_panic_event
>> +};
>> +
>>  bool psci_tos_resident_on(int cpu)
>>  {
>>  	return cpu == resident_cpu;
>> @@ -309,7 +330,10 @@ static int get_set_conduit_method(const struct device_node *np)
>>  static int psci_sys_reset(struct notifier_block *nb, unsigned long action,
>>  			  void *data)
>>  {
>> -	if ((reboot_mode == REBOOT_WARM || reboot_mode == REBOOT_SOFT) &&
>> +	if (vendor_reset.valid && psci_system_reset2_supported) {
>> +		invoke_psci_fn(PSCI_FN_NATIVE(1_1, SYSTEM_RESET2), vendor_reset.reset_type,
>> +			       vendor_reset.cookie, 0);
> 
> See above. Two calls here: one for resets issued using the new userspace
> interface you are adding and legacy below - no vendor vs reboot_mode, this
> is a mess.

Are we suggesting to completely remove the reboot_mode check from here in the new
design and base it on reboot <CMD> param?

> 
>> +	} else if ((reboot_mode == REBOOT_WARM || reboot_mode == REBOOT_SOFT) &&
>>  	    psci_system_reset2_supported) {
>>  		/*
>>  		 * reset_type[31] = 0 (architectural)
>> @@ -547,6 +571,72 @@ static const struct platform_suspend_ops psci_suspend_ops = {
>>  	.enter          = psci_system_suspend_enter,
>>  };
>>  
>> +static int psci_set_vendor_sys_reset2(struct reboot_mode_driver *reboot, u64 magic)
>> +{
>> +	u32 magic_32;
>> +
>> +	if (psci_system_reset2_supported) {
>> +		magic_32 = magic & GENMASK(31, 0);
>> +		vendor_reset.reset_type = PSCI_1_1_RESET_TYPE_VENDOR_START | magic_32;
>> +		vendor_reset.cookie = (magic >> 32) & GENMASK(31, 0);
> 
> Use FIELD_PREP/GET() please (but as mentioned above the vendor reset type
> bit[31] should be part of the reboot mode magic value, see above).

sure. Will align this. thanks.

> 
>> +		vendor_reset.valid = true;
>> +	}
>> +
>> +	return NOTIFY_DONE;
>> +}
>> +
>> +static int __init psci_init_vendor_reset(void)
>> +{
>> +	struct reboot_mode_driver *reboot;
>> +	struct device_node *psci_np;
>> +	struct device_node *np;
>> +	int ret;
>> +
>> +	if (!psci_system_reset2_supported)
>> +		return -EINVAL;
>> +
>> +	psci_np = of_find_compatible_node(NULL, NULL, "arm,psci-1.0");
>> +	if (!psci_np)
>> +		return -ENODEV;
>> +
>> +	np = of_find_node_by_name(psci_np, "reboot-mode");
>> +	if (!np) {
>> +		of_node_put(psci_np);
>> +		return -ENODEV;
>> +	}
>> +
>> +	ret = atomic_notifier_chain_register(&panic_notifier_list, &psci_panic_block);
>> +	if (ret)
>> +		goto err_notifier;
>> +
>> +	reboot = kzalloc(sizeof(*reboot), GFP_KERNEL);
>> +	if (!reboot) {
>> +		ret = -ENOMEM;
>> +		goto err_kzalloc;
>> +	}
>> +
>> +	reboot->write = psci_set_vendor_sys_reset2;
>> +	reboot->driver_name = "psci";
>> +
>> +	ret = reboot_mode_register(reboot, of_fwnode_handle(np));
>> +	if (ret)
>> +		goto err_register;
>> +
>> +	of_node_put(psci_np);
>> +	of_node_put(np);
>> +	return 0;
>> +
>> +err_register:
>> +	kfree(reboot);
>> +err_kzalloc:
>> +	atomic_notifier_chain_unregister(&panic_notifier_list, &psci_panic_block);
>> +err_notifier:
>> +	of_node_put(psci_np);
>> +	of_node_put(np);
>> +	return ret;
>> +}
>> +late_initcall(psci_init_vendor_reset)
> 
> I don't like adding another initcall here.
> 
> I wonder whether this code belongs in a PSCI reboot mode driver, possibly a
> faux device in a way similar to what we did for cpuidle-psci (that after all
> is a consumer of PSCI_CPU_SUSPEND in a similar way as this code is a
> PSCI_SYSTEM_RESET{2} consumer), that communicates with
> drivers/firmware/psci/psci.c with the struct mentioned above.

sure. we can create a new driver and try it as in cpuidle: cpuidle-psci.
Can you suggest a bit more on the overall approach we want to take here?
Have tried to summarize the potential changes and few questions below.

- new driver registers a faux device - say - power: reset: psci_reset.
- struct with pre-built psci reset_types - (warm, soft, cold). Currently
  only two modes supported, anything other than warm/soft defaults to cold.
- vendor resets to be added as per vendor choice, inside psci device tree(SOC specific).
- psci_reset registers with reboot-mode for registering  vendor resets. Here, we
  have a problem, the pre-built psci reset_types - (warm, soft, cold) cannot be added via
  reboot-mode framework. Should the new psci_reset driver, move away from reboot-mode
  framework as-well? And define its own parsing logic for psci_reset_types, and have
  its own restart_notifier instead of reboot_notifier?
- If new psci_reset driver move away from reboot-mode, we can get rid of the panic_notifier
  added in the psci code. Else, we may still need the panic_notifier for any kernel panic
  that occurs between reboot_notifier and restart_notifier?
- psci driver will export a function which will be called externally to set the current
  psci reset_type.
- psci_sys_reset in psci driver should remove the check on reboot_mode. It will default to
  cold reset (for the reason the current kernel defaults to cold reset in psci.)
  example change in psci_sys_reset:
    if(psci_system_reset2_supported && <psci_reset_new_struct_var> != cold)
       psci_sys_reset2(AS PER PARAMS FROM new psci_reset driver)
    else
       psci_sys_reset(COLD RESET)

thanks,
Shivendra

