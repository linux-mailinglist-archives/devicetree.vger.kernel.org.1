Return-Path: <devicetree+bounces-195099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 31735B0078A
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 17:49:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E55F175E83
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 15:45:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1354B23ABA6;
	Thu, 10 Jul 2025 15:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KnNb1FX5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60AC87464
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 15:45:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752162323; cv=none; b=jDeUG2iz1Tl5XLqLeSaWRAvOsEV8NAi4MOS/KFKhnEWr19bos8LCFbuxEttbSQQArcXhpOiiaIMHApgyGgFwj3OgOE12fPbGN/hEkIT+XwP2IvW11PaJc2y/LShoQn9Ss9cNNKX8BB4ftxTNclHagygaDM7JvUJ6Nug8CQFBUgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752162323; c=relaxed/simple;
	bh=sWLNbRGR1WallWCM4ueaRFzJawzsy7FQNASnovpTbV8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WIwV/r4sWtCropqg3xHqIY8vXEyxnBgvTko7hKcXRcY3dt1QYWJEq8h3+3BkBugrdQazA0/T5CBUWoyXz5btm3l2Q1yHid43ndm7VhQ6Czn+JrA2HDdkRSdQtPraaBOPocFKPV/7R5US3ZFGmjimHbmtKqvCQyiyheJW9DuqDEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KnNb1FX5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56A8ft0x030114
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 15:45:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2Ncm63/MfiuPbDjDVklTQd8+kupDoVzcsE+k6jeIleo=; b=KnNb1FX5hzQYi1xI
	zA7Uh98UKUkyt/1X3LPA+iboHhUo60Q8NsuQ+j/+pYe+V7qm/tdkojBRTi5GoUkX
	nPMaDQzL3Wy8yMmK8Bke6qmNICNdt+b+pJEo7gOKKm7moVknA276ngxWtJI9K7ux
	hadHKYaTyBxM3ndfT+EmJPJxL4KWJbITB/2JWZbHJK6k1zpzRYszhYf366yP7Q5+
	VLnfL+zNUfcmJk7YHDU4yqMlV+1NhXfhYElD9wD5zJ6gWVPTKY3rqFj8xjkk4Hhf
	2hUhXMgwOTO0cGdte45iIxSOpCdFB+1zryLDHG6KpNvv0jVVCJ9ouQgDdAd50ChW
	t9iZYQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47smcg5g6h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 15:45:20 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4a9af669a0cso2383341cf.3
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 08:45:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752162318; x=1752767118;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2Ncm63/MfiuPbDjDVklTQd8+kupDoVzcsE+k6jeIleo=;
        b=wvy92pArBv6CWtcYa+XtO2nBhr1FLLuTFIIq3JG3afLWdv+xmEHgq9uzVpuL5mzzKD
         vDHf2NPFKwDMfbWDVVWykhJ8VZlYOSattHee99rx3fpVOd0brqyvhtYGhTRIn7q7lVWr
         ekelIzjkXe/A2T8gvpYgcaxT+dTpTyvchQSj8lXfzxabqJXdjixREdMuowT+ZBG+ewt5
         i+Bvy6Um8ySDxVyLDjIgNNfpSfz7Bs69DfteSB1nKNzJlmcDYsPtaACPUhGRNMTXADJL
         KCjOCV+cM4buP3RdrlSHOuXh4cNOP2mVb71csN7LejxFEHLer+N/LlrC1vZxfPaNM33F
         EGEA==
X-Forwarded-Encrypted: i=1; AJvYcCXIh1a1FgQr+KaEv+j/DnP4ogbMXuQWmfGlQsY7VAz39cMMiiDdMAeBCCRa9M2oB0bHvsFrAbWUkJWp@vger.kernel.org
X-Gm-Message-State: AOJu0YxrSDI/uWmOb3gJj4wzR2upQUT3vvLN6Vlu1vuEUzQDdvo5dFR6
	U5h634nZMT+fnTR7pdhICdtw0qh37QN5UEBcrOvlI2JSeyGBPd2ujwjYqiBoRNjKiomuuV5fwei
	2CE0HTgIHxCKtN5ylBP3aFAMImWEhq9JDwYGpwEf3QIym3/tmh5YxHcX6nK/26BJY
X-Gm-Gg: ASbGncs7XCG10JHZ3OgONp6NlKc0O47mEgESPp/Hq7dZe4XYNn0x7AAzPj7qPhXjL0L
	BuWoTbaYy96oIZSRgMp1I2dBMPIOzzl2lTKUky7ATZRbkHmqAKr7ZBmpBMsmEBuW4IVnA7QpuqG
	En0VN/UmCR1XVr26buSzlE8DsYg0YgbWjU8Q3rOoeaKhMHMW33jR0U/2QOuVFywwx2oYEUOfFBy
	7PvM53isNybQvxWk2gLIcW2GuPa0DBVvsqjGR/zkDG7LFJ/7e9SwefrcaX4IzFLlVUXjBrwJB8k
	KG1e2bWPM+t/pJvCjWUrSOfwEiCHEouZh8hPL9PuGNVLCR/E6EBQLbAzendtGpQTfrEpa9OuVN/
	tR+4=
X-Received: by 2002:ac8:5e46:0:b0:4a9:f582:dc03 with SMTP id d75a77b69052e-4a9f582dfcemr10046651cf.9.1752162318050;
        Thu, 10 Jul 2025 08:45:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGMNtJ4drdObgcfuSdkFknAQN4Odw7/i1HjVhwWIis053P28UmmNK+qrTjCWD2/caZ4V7w5g==
X-Received: by 2002:ac8:5e46:0:b0:4a9:f582:dc03 with SMTP id d75a77b69052e-4a9f582dfcemr10046111cf.9.1752162317396;
        Thu, 10 Jul 2025 08:45:17 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7ee44basm152828266b.42.2025.07.10.08.45.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jul 2025 08:45:16 -0700 (PDT)
Message-ID: <4ca0df4e-7697-4cfe-ada4-6eee8224938f@oss.qualcomm.com>
Date: Thu, 10 Jul 2025 17:45:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 05/10] firmware: psci: Implement vendor-specific
 reset-types as reboot-mode
To: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Elliot Berman <elliotb317@gmail.com>
Cc: Stephen Boyd <swboyd@chromium.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        Andre Draszik <andre.draszik@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-samsung-soc@vger.kernel.org, Wei Xu <xuwei5@hisilicon.com>,
        linux-rockchip@lists.infradead.org,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Sen Chu <sen.chu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
        Macpaul Lin <macpaul.lin@mediatek.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Elliot Berman <quic_eberman@quicinc.com>,
        Srinivas Kandagatla <srini@kernel.org>
References: <20250710-arm-psci-system_reset2-vendor-reboots-v10-0-b2d3b882be85@oss.qualcomm.com>
 <20250710-arm-psci-system_reset2-vendor-reboots-v10-5-b2d3b882be85@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250710-arm-psci-system_reset2-vendor-reboots-v10-5-b2d3b882be85@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=P7o6hjAu c=1 sm=1 tr=0 ts=686fe010 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=GLYJuuS3cqMp142eAlYA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: 64Qw4A2e5aZB2qOKi2nmaS0rCvDhLfWG
X-Proofpoint-GUID: 64Qw4A2e5aZB2qOKi2nmaS0rCvDhLfWG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEwMDEzNiBTYWx0ZWRfX+DlCyhFN4srt
 EufPHJVVXcPWI7ZV9aw2GjactKaEP5HeTzPczj+7fJEp8DuXiqU5z0BebFBfFF9eJ+vgah+ex04
 rwDtvUKP5iOp49z884S1h4petQc0UgC1yNJnlXbydJjrpFGQiNPCD8Ic+2l0lKoDtkXkjzEm20V
 v88x0BjxCqxsf1BN8zQmr7cvkMGOeUhCwB6NpbK3pB4qOBkw5sljgNgdWVfXP+PLHtXqbll3l7N
 jQCsI9CQov2TtATHzfoLbvHOL4L9EijM8dqMraQDwtVY5a/gR2lfQIXMYSP94IlrsTGZd81gE3i
 8uPSMZ+KYOVjT5cSiXGB63jOdHVDPET38vGXcIcWBjVtM3iifJoA1izD2pNla5a9odvb6DhhUfI
 EzxNca/NlC4svSoF+ux+ct8l9yghdteYVi+FTfQfo6Hju6kkzRD5oOWcArPmC13AszrIWuF2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-10_04,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 phishscore=0 bulkscore=0 mlxscore=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 adultscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507100136

On 7/10/25 11:15 AM, Shivendra Pratap wrote:
> SoC vendors have different types of resets which are controlled
> through various hardware registers. For instance, Qualcomm SoC
> may have a requirement that reboot with “bootloader” command
> should reboot the device to bootloader flashing mode and reboot
> with “edl” should reboot the device into Emergency flashing mode.
> Setting up such reboots on Qualcomm devices can be inconsistent
> across SoC platforms and may require setting different HW
> registers, where some of these registers may not be accessible to
> HLOS. These knobs evolve over product generations and require
> more drivers. PSCI spec defines, SYSTEM_RESET2, vendor-specific
> reset which can help align this requirement. Add support for PSCI
> SYSTEM_RESET2, vendor-specific resets and align the implementation
> to allow user-space initiated reboots to trigger these resets.
> 
> Introduce a late_initcall to register PSCI vendor-specific resets
> as reboot-mode arguments like reset_type and cookie. For a SoC
> where, PSCI vendor-specific system_reset2 is supported, the
> appropriate value gets filled to reset_type and cookie during
> this reboot-mode hook registration. If the secure firmware
> supports PSCI system_reset2, restart notifier will make secure
> call to trigger appropriate requested reset type.
> 
> By using the above implementation, usespace will be able to issue
> such resets using the reboot() system call with the "*arg"
> parameter as a string based command. The commands can be defined
> in PSCI device tree node as “reset-types” and are based on the
> reboot-mode based commands.
> 
> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
> ---
>  drivers/firmware/psci/Kconfig |  1 +
>  drivers/firmware/psci/psci.c  | 53 ++++++++++++++++++++++++++++++++++++++++++-
>  2 files changed, 53 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/firmware/psci/Kconfig b/drivers/firmware/psci/Kconfig
> index 97944168b5e66aea1e38a7eb2d4ced8348fce64b..9d65fe7b06a6429de8a26d06f9384e5c93f36e5f 100644
> --- a/drivers/firmware/psci/Kconfig
> +++ b/drivers/firmware/psci/Kconfig
> @@ -1,6 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  config ARM_PSCI_FW
>  	bool
> +	select REBOOT_MODE
>  
>  config ARM_PSCI_CHECKER
>  	bool "ARM PSCI checker"
> diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
> index 38ca190d4a22d6e7e0f06420e8478a2b0ec2fe6f..87293f78ed83eb33ba67ded73728729811693ea3 100644
> --- a/drivers/firmware/psci/psci.c
> +++ b/drivers/firmware/psci/psci.c
> @@ -13,10 +13,13 @@
>  #include <linux/errno.h>
>  #include <linux/linkage.h>
>  #include <linux/of.h>
> +#include <linux/of_platform.h>
> +#include <linux/platform_device.h>
>  #include <linux/pm.h>
>  #include <linux/printk.h>
>  #include <linux/psci.h>
>  #include <linux/reboot.h>
> +#include <linux/reboot-mode.h>
>  #include <linux/slab.h>
>  #include <linux/suspend.h>
>  
> @@ -51,6 +54,14 @@ static int resident_cpu = -1;
>  struct psci_operations psci_ops;
>  static enum arm_smccc_conduit psci_conduit = SMCCC_CONDUIT_NONE;
>  
> +struct psci_vendor_sysreset2 {
> +	u32 reset_type;
> +	u32 cookie;
> +	bool valid;
> +};
> +
> +static struct psci_vendor_sysreset2 vendor_reset;
> +
>  bool psci_tos_resident_on(int cpu)
>  {
>  	return cpu == resident_cpu;
> @@ -309,7 +320,14 @@ static int get_set_conduit_method(const struct device_node *np)
>  static int psci_sys_reset(struct notifier_block *nb, unsigned long action,
>  			  void *data)
>  {
> -	if ((reboot_mode == REBOOT_WARM || reboot_mode == REBOOT_SOFT) &&
> +	if (vendor_reset.valid && psci_system_reset2_supported) {
> +		/*
> +		 * if vendor_reset.valid is true call sys reset2 with
> +		 * the vendor_reset(reset_type and cookie).
> +		 */

This comment repeats the line above and below it without
bringing additional value

Konrad

> +		invoke_psci_fn(PSCI_FN_NATIVE(1_1, SYSTEM_RESET2), vendor_reset.reset_type,
> +			       vendor_reset.cookie, 0);
> +	} else if ((reboot_mode == REBOOT_WARM || reboot_mode == REBOOT_SOFT) &&
>  	    psci_system_reset2_supported) {
>  		/*
>  		 * reset_type[31] = 0 (architectural)
> @@ -547,6 +565,39 @@ static const struct platform_suspend_ops psci_suspend_ops = {
>  	.enter          = psci_system_suspend_enter,
>  };
>  
> +static int psci_set_vendor_sys_reset2(struct reboot_mode_driver *reboot,
> +				      u32 reset_type, u32 cookie)
> +{
> +	if (psci_system_reset2_supported) {
> +		vendor_reset.reset_type = PSCI_1_1_RESET_TYPE_VENDOR_START | reset_type;
> +		vendor_reset.cookie = cookie;
> +		vendor_reset.valid = true;
> +	}
> +
> +	return NOTIFY_DONE;
> +}
> +
> +static int __init psci_init_vendor_reset(void)
> +{
> +	struct reboot_mode_driver *reboot;
> +	struct device_node *np;
> +
> +	np = of_find_node_by_name(NULL, "reset-types");
> +	if (!np)
> +		return -ENODEV;
> +
> +	reboot = kzalloc(sizeof(*reboot), GFP_KERNEL);
> +	if (!reboot) {
> +		of_node_put(np);
> +		return -ENOMEM;
> +	}
> +
> +	reboot->write_with_cookie = psci_set_vendor_sys_reset2;
> +
> +	return reboot_mode_register(reboot, np);
> +}
> +late_initcall(psci_init_vendor_reset)
> +
>  static void __init psci_init_system_reset2(void)
>  {
>  	int ret;
> 

