Return-Path: <devicetree+bounces-62208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B62748B0523
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 10:56:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 68431B24A46
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 08:56:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26855158D79;
	Wed, 24 Apr 2024 08:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="qr3TRuik"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7F2A158A38
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 08:56:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713948981; cv=none; b=oNa002xDM/wrdUjg+1pkG1yj1XsmPOEG+Hajd4RYuBgRDKiptt64rcguAmit2achPMP3IrHVNQe9LKD83ee82GOjeEyGyFSZJH7h816LVs5iWbuP7Qh4R6pUAA7/prjMuOE34StzGiLOuozd0Sq+/qQt4EQLEsAxhteqk+HH5qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713948981; c=relaxed/simple;
	bh=VDeJMW+E6PCPD2mNnnPuo+B6yy6W430PriFbVenp578=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tOnqPVFFTKD/E9MwT33JqKbxlYTBQRhFzPq6p5v9zeNo9yWOtMSZ1PLFzGZrTt0dBgnNbRj8gGpPBlBAPNrtyybh/3/pbYv3lGhqHtXi0hAdrwAjoH1rBfY6AGE1vu0aMNLk4oZoq9ehfml/xlWAY5IhPKBZ1hW8GuMiuG4M0DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=qr3TRuik; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-346407b8c9aso1731985f8f.0
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 01:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713948976; x=1714553776; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=suMY4XPa/kbnbsuNKp6g91hkITSOa8LGQNMIO3m9tW4=;
        b=qr3TRuikr0iFBs1AVRNmVX+IEFNeXB4c7CkmF50HNQDCaLEWNrEbKTWPdDexDn7POg
         zm1+0JGNFhyrP1yYuRUlBUu5nNR77R0s7+uKLktWGVaYEea/k9DvRvrUEwH78QvjjnVk
         Gal0dp+Ud0BE0SQPmob5xoZcho1uHjTjXntNccJ6kuuGyQw8VcqoBorZ7VC8USoy4mCJ
         F2E2NMSf9dOQhtTxZOv8Gt6kTnS1R+m4WAUsuYXI9nqZvMC2w1SDwNPw5Dy6MvylrCZI
         3D3f8rnnJZn2owb7NmrPX/LCo+oddw4sM+YNZsbNZ4+zuuZe/bJ9x8zTyzNfEQ0WF6j0
         68oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713948976; x=1714553776;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=suMY4XPa/kbnbsuNKp6g91hkITSOa8LGQNMIO3m9tW4=;
        b=a2GFDahhLAdDwG7aX8HTncrqlN1WYZnNU0fnRbsT5jV2TayiDh4lDZnucWm1GnOuHO
         zGEgftixpR5wsjhyhlKh/dP6/xs1uXKB29RhLRK+TbUm5VTrHrvOL5rAnW4xRxTpjXc3
         eufgDGkW99lBvm9e7V4GrLocioMp+WW7rQyY6qsKGVsbe5bghf4fCVJbDK/6OFOhvOxT
         Qx6NCQ4rfDTNAoPCDgoxuYTl54OgBDUBrhVff2R6R5YbIBuhbi7FJyFM+SaZ+UROkwUZ
         WpQlMkMpR8s3BvA+lT25GN2c+nd8MuqKJKIsFSJQGlveUe1inFI9vs/WzXUor8N1pKlJ
         DIOw==
X-Forwarded-Encrypted: i=1; AJvYcCVCjM+9sFDjTSW/TghsLZ9CoZRRf0BZDS1fmQpX9tvMbCzORgTN8BjuSfX4khUnA0vBlzl5Lxt8Ur422u/pelSPUy3l+/lRadiBNA==
X-Gm-Message-State: AOJu0Yx5HxmlPCABHgTXT/uHLe6oUrnPtub/HtGsuElL/gesXX/HtqRG
	aaFVTGJK+e3l4c3bdlTNc2LWvTIUV05Ao1zpwYCe+lArALIY+HEfQiJUUEaMAT3MTIg1fydkL7M
	vP1Y=
X-Google-Smtp-Source: AGHT+IHnTgfP+JDtD0YJ4PuDZHL4ehlhBpneum41qUwKsi79yBLH+oHzokV5rqNn+u3SkD6GnzG1Ig==
X-Received: by 2002:adf:dd8a:0:b0:34a:a754:eb51 with SMTP id x10-20020adfdd8a000000b0034aa754eb51mr1004111wrl.3.1713948975675;
        Wed, 24 Apr 2024 01:56:15 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:999:a3a0:6057:6f32:d1e5:d4d7? ([2a01:e0a:999:a3a0:6057:6f32:d1e5:d4d7])
        by smtp.gmail.com with ESMTPSA id l16-20020a05600c4f1000b0041a1fee2854sm12481710wmq.17.2024.04.24.01.56.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Apr 2024 01:56:15 -0700 (PDT)
Message-ID: <5b3f9017-b107-4de1-ab0d-854de160a5f6@rivosinc.com>
Date: Wed, 24 Apr 2024 10:56:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 5/7] riscv: add double trap driver
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Anup Patel <anup@brainfault.org>, Atish Patra <atishp@atishpatra.org>,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kvm@vger.kernel.org,
 kvm-riscv@lists.infradead.org, Ved Shanbhogue <ved@rivosinc.com>
References: <20240418142701.1493091-1-cleger@rivosinc.com>
 <20240418142701.1493091-6-cleger@rivosinc.com>
 <20240423-headsman-arrival-16a2d13342b2@spud>
Content-Language: en-US
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <20240423-headsman-arrival-16a2d13342b2@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 23/04/2024 18:39, Conor Dooley wrote:
> On Thu, Apr 18, 2024 at 04:26:44PM +0200, Clément Léger wrote:
>> Add a small driver to request double trap enabling as well as
>> registering a SSE handler for double trap. This will also be used by KVM
>> SBI FWFT extension support to detect if it is possible to enable double
>> trap in VS-mode.
>>
>> Signed-off-by: Clément Léger <cleger@rivosinc.com>
>> ---
>>  arch/riscv/include/asm/sbi.h    |  1 +
>>  drivers/firmware/Kconfig        |  7 +++
>>  drivers/firmware/Makefile       |  1 +
>>  drivers/firmware/riscv_dbltrp.c | 95 +++++++++++++++++++++++++++++++++
>>  include/linux/riscv_dbltrp.h    | 19 +++++++
>>  5 files changed, 123 insertions(+)
>>  create mode 100644 drivers/firmware/riscv_dbltrp.c
>>  create mode 100644 include/linux/riscv_dbltrp.h
>>
>> diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
>> index 744aa1796c92..9cd4ca66487c 100644
>> --- a/arch/riscv/include/asm/sbi.h
>> +++ b/arch/riscv/include/asm/sbi.h
>> @@ -314,6 +314,7 @@ enum sbi_sse_attr_id {
>>  #define SBI_SSE_ATTR_INTERRUPTED_FLAGS_SPIE	(1 << 2)
>>  
>>  #define SBI_SSE_EVENT_LOCAL_RAS		0x00000000
>> +#define SBI_SSE_EVENT_LOCAL_DOUBLE_TRAP	0x00000001
>>  #define SBI_SSE_EVENT_GLOBAL_RAS	0x00008000
>>  #define SBI_SSE_EVENT_LOCAL_PMU		0x00010000
>>  #define SBI_SSE_EVENT_LOCAL_SOFTWARE	0xffff0000
>> diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
>> index 59f611288807..a037f6e89942 100644
>> --- a/drivers/firmware/Kconfig
>> +++ b/drivers/firmware/Kconfig
>> @@ -197,6 +197,13 @@ config RISCV_SSE_TEST
>>  	  Select if you want to enable SSE extension testing at boot time.
>>  	  This will run a series of test which verifies SSE sanity.
>>  
>> +config RISCV_DBLTRP
>> +	bool "Enable Double trap handling"
>> +	depends on RISCV_SSE && RISCV_SBI
>> +	default n
>> +	help
>> +	  Select if you want to enable SSE double trap handler.
>> +
>>  config SYSFB
>>  	bool
>>  	select BOOT_VESA_SUPPORT
>> diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
>> index fb7b0c08c56d..ad67a1738c0f 100644
>> --- a/drivers/firmware/Makefile
>> +++ b/drivers/firmware/Makefile
>> @@ -18,6 +18,7 @@ obj-$(CONFIG_RASPBERRYPI_FIRMWARE) += raspberrypi.o
>>  obj-$(CONFIG_FW_CFG_SYSFS)	+= qemu_fw_cfg.o
>>  obj-$(CONFIG_RISCV_SSE)		+= riscv_sse.o
>>  obj-$(CONFIG_RISCV_SSE_TEST)	+= riscv_sse_test.o
>> +obj-$(CONFIG_RISCV_DBLTRP)	+= riscv_dbltrp.o
> 
> As previously mentioned, I'd like to see all of these riscv specific
> things in a riscv directory.

Acked, I was not aware of that.

> 
>>  obj-$(CONFIG_SYSFB)		+= sysfb.o
>>  obj-$(CONFIG_SYSFB_SIMPLEFB)	+= sysfb_simplefb.o
>>  obj-$(CONFIG_TI_SCI_PROTOCOL)	+= ti_sci.o
>> diff --git a/drivers/firmware/riscv_dbltrp.c b/drivers/firmware/riscv_dbltrp.c
>> new file mode 100644
>> index 000000000000..72f9a067e87a
>> --- /dev/null
>> +++ b/drivers/firmware/riscv_dbltrp.c
>> @@ -0,0 +1,95 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * Copyright (C) 2023 Rivos Inc.
>> + */
>> +
>> +#define pr_fmt(fmt) "riscv-dbltrp: " fmt
>> +
>> +#include <linux/cpu.h>
>> +#include <linux/init.h>
>> +#include <linux/riscv_dbltrp.h>
>> +#include <linux/riscv_sse.h>
>> +
>> +#include <asm/sbi.h>
>> +
>> +static bool double_trap_enabled;
>> +
>> +static int riscv_sse_dbltrp_handle(uint32_t evt, void *arg,
>> +				   struct pt_regs *regs)
>> +{
>> +	__show_regs(regs);
>> +	panic("Double trap !\n");
>> +
>> +	return 0;
>> +}
>> +
>> +struct cpu_dbltrp_data {
>> +	int error;
>> +};
>> +
>> +static void
>> +sbi_cpu_enable_double_trap(void *data)
> 
> This should easily fit on one line.
> 
>> +{
>> +	struct sbiret ret;
>> +	struct cpu_dbltrp_data *cdd = data;
>> +
>> +	ret = sbi_ecall(SBI_EXT_FWFT, SBI_EXT_FWFT_SET,
>> +			SBI_FWFT_DOUBLE_TRAP_ENABLE, 1, 0, 0, 0, 0);
>> +
>> +	if (ret.error) {
>> +		cdd->error = 1;
> 
> If this is a boolean, make it a boolean please. All the code in this
> patch treats it as one.
> 
>> +		pr_err("Failed to enable double trap on cpu %d\n", smp_processor_id());
>> +	}
>> +}
>> +
>> +static int sbi_enable_double_trap(void)
>> +{
>> +	struct cpu_dbltrp_data cdd = {0};
>> +
>> +	on_each_cpu(sbi_cpu_enable_double_trap, &cdd, 1);
>> +	if (cdd.error)
>> +		return -1;
> 
> Can this be an errno please?
> 
>> +
>> +	double_trap_enabled = true;
>> +
>> +	return 0;
>> +}
>> +
>> +bool riscv_double_trap_enabled(void)
>> +{
>> +	return double_trap_enabled;
>> +}
>> +EXPORT_SYMBOL(riscv_double_trap_enabled);
> 
> Can we just use double_trap everywhere? dbltrp reads like sound that a
> beatboxer would make and this looks a lot nicer than the other functions
> in the file...

Ahah you gave me a good laugh :D

> 
>> +
>> +static int __init riscv_dbltrp(void)
> 
> I think this function is missing an action work - init or probe?
> 
>> +{
>> +	struct sse_event *evt;
>> +
>> +	if (!riscv_has_extension_unlikely(RISCV_ISA_EXT_SSDBLTRP)) {
>> +		pr_err("Ssdbltrp extension not available\n");
>> +		return 1;
>> +	}
>> +
>> +	if (!sbi_probe_extension(SBI_EXT_FWFT)) {
>> +		pr_err("Can not enable double trap, SBI_EXT_FWFT is not available\n");
>> +		return 1;
>> +	}
>> +
>> +	if (sbi_enable_double_trap()) {
>> +		pr_err("Failed to enable double trap on all cpus\n");
>> +		return 1;
> 
> Why do we return 1s here, but an errno via PTR_ERR() below?
> Shouldn't all of these be returning a negative errono?
> This particular one should probably propagate the error it got from
> sbi_enable_double_trap().

Indeed, I'll use some errno everywhere.

Thanks,

Clément

> 
> Cheers,
> Conor.
> 
>> +	}
>> +
>> +	evt = sse_event_register(SBI_SSE_EVENT_LOCAL_DOUBLE_TRAP, 0,
>> +				 riscv_sse_dbltrp_handle, NULL);
>> +	if (IS_ERR(evt)) {
>> +		pr_err("SSE double trap register failed\n");
>> +		return PTR_ERR(evt);
>> +	}
>> +
>> +	sse_event_enable(evt);
>> +	pr_info("Double trap handling registered\n");
>> +
>> +	return 0;
>> +}
>> +device_initcall(riscv_dbltrp);
>> diff --git a/include/linux/riscv_dbltrp.h b/include/linux/riscv_dbltrp.h
>> new file mode 100644
>> index 000000000000..6de4f43fae6b
>> --- /dev/null
>> +++ b/include/linux/riscv_dbltrp.h
>> @@ -0,0 +1,19 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/*
>> + * Copyright (C) 2023 Rivos Inc.
>> + */
>> +
>> +#ifndef __LINUX_RISCV_DBLTRP_H
>> +#define __LINUX_RISCV_DBLTRP_H
>> +
>> +#if defined(CONFIG_RISCV_DBLTRP)
>> +bool riscv_double_trap_enabled(void);
>> +#else
>> +
>> +static inline bool riscv_double_trap_enabled(void)
>> +{
>> +	return false;
>> +}
>> +#endif
>> +
>> +#endif /* __LINUX_RISCV_DBLTRP_H */
>> -- 
>> 2.43.0
>>

