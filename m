Return-Path: <devicetree+bounces-66895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A548E8C5820
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 16:39:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1F5B71F23239
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2024 14:39:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5034917BB24;
	Tue, 14 May 2024 14:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="hf2ZhyaL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AE65144D01
	for <devicetree@vger.kernel.org>; Tue, 14 May 2024 14:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715697544; cv=none; b=deBIDsz5Nre+mngA9h27aa/MFZ9dhGQLToBjUczZKgliWQuRf44VTOz+3qmTscDFN+6Q0IB7y4zuY81vf9dvaH2Q+4ANLUdq7IfNlPXnSQPofswKudGWzrK7jspdGzhQz0jHsshtPqg54xzcYc1tYgpG9L3CVuRbfkdqUdl6NEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715697544; c=relaxed/simple;
	bh=WNcVowLF738bBUYU9q9s1F6x75YSSD23yiDfQaIObKk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IJnH03IAG1+rzsSXse/IZE6CHzahLcuvRLlDYANqUZxDF6E+RaMCUhqMtvKYXpZhVAr8p6/nXc9TKNGHTscI+7JPcSphLXAc7aFRmgQj3q2cKEDG6lILaFemIqg/hl56IncGn7X5TuMpl6dOp24bv1vs5qTleZqpEavm6RzFN+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=hf2ZhyaL; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-6f44dc475f4so4482583b3a.2
        for <devicetree@vger.kernel.org>; Tue, 14 May 2024 07:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1715697542; x=1716302342; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WNcVowLF738bBUYU9q9s1F6x75YSSD23yiDfQaIObKk=;
        b=hf2ZhyaLwrr+qO/oaKUFMagLFXBzs6PTYrkee0DviHfHAYr7sV8MBmFCNNRd/HuLw4
         FQ0yh3R4XCWoE9dcPSG47LS/SoNQrHLl9oI0SnzlifxmTf5ji2Fti6gdK1NgCvcCvPCL
         eDReSiaMYhMTmRSBCaW1OjU1ep4brBnhXS+ImulkMrbJ6PKDM7uX8RyG7lNC831AezJM
         pdDiIMbYVvNaabbnViLrGEmm1/3bwTUcXDyOXszTBnCAbvgtVPpFIYQdunIt+R8J6zRY
         Yls7qZ4ynbs/RmHAtYopeUGNqksqsj/s5IIeYUXTCNha1sT1OcT7HmFFFmqcJqqFUQRg
         7jOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715697542; x=1716302342;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WNcVowLF738bBUYU9q9s1F6x75YSSD23yiDfQaIObKk=;
        b=IKB2Z0hQv4SL4YkLk0A61wJ7AVOtySrH70IMrpf/5VAwjCm6eKSdyBzWjj2nVSxnU+
         V7mlWZEKOieCxvhjKtWwD0ktAYVn9MQAXwpU5pLwG7qRXbftd21K1TniFplF5ZhrVjyg
         kiJlY+y46B11rCmR68iWqubzSTSIgCCyMQx+WTrF+iCsFA5ioR8cCrtsaleDD3wWZTtt
         DOI10Ze/w7mra8krrmTnAuzzsNaHQIfrKZ55KVQx7B1rgl+3EB5hIy0hs55PZz5Nd8eQ
         F61STPAQZAECR7ZgiF2ksjYCbGg78oiMbA64qbDETUJz0WgfpoEvCLaZL9Y8Eaq3uZ0U
         jGwg==
X-Forwarded-Encrypted: i=1; AJvYcCUtl2AZwseiuWkjYu+GeMT5m8N/Q/aH/WmHpxMc93zo/y7FiXgMDuAdfIoFr6519LWmZgwbZJeJA9Cmjea/bVXd4kwOnTzrksiKjA==
X-Gm-Message-State: AOJu0Yw4fWtFRVyVNp7wfIrQK70GtT6l28cXm+ds6e5HadEP/lzideNn
	YT7ABs9CiEfx6+O5fRe6vXb+f9t3d9kGCtC0k5qz1C/98Eu3aze/rTWeN4Wyw9s=
X-Google-Smtp-Source: AGHT+IHdkOKBG0DyoFSxyrRHAS+ghpUAA5spIffvQqpiXqFnRsKCPZ4PJ12xD5NX3np4aQAOmlluRg==
X-Received: by 2002:a05:6a00:14d1:b0:6e7:20a7:9fc0 with SMTP id d2e1a72fcca58-6f4e03a70c4mr15441852b3a.34.1715697541813;
        Tue, 14 May 2024 07:39:01 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f4d2b26ceasm9183891b3a.187.2024.05.14.07.39.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 May 2024 07:39:01 -0700 (PDT)
Date: Tue, 14 May 2024 07:38:59 -0700
From: Deepak Gupta <debug@rivosinc.com>
To: =?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <cleger@rivosinc.com>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
	Atish Patra <atishp@atishpatra.org>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org, Ved Shanbhogue <ved@rivosinc.com>
Subject: Re: [RFC PATCH 5/7] riscv: add double trap driver
Message-ID: <ZkN3gyfL1hUcjPgD@debug.ba.rivosinc.com>
References: <20240418142701.1493091-1-cleger@rivosinc.com>
 <20240418142701.1493091-6-cleger@rivosinc.com>
 <Ziw//90J0WfOY/tl@debug.ba.rivosinc.com>
 <e33b8eba-85f0-44b7-8a6f-802a6979f6c8@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e33b8eba-85f0-44b7-8a6f-802a6979f6c8@rivosinc.com>

On Tue, May 14, 2024 at 10:06:31AM +0200, Cl�ment L�ger wrote:
>
>
>On 27/04/2024 01:59, Deepak Gupta wrote:
>> On Thu, Apr 18, 2024 at 04:26:44PM +0200, Cl�ment L�ger wrote:
>>> Add a small driver to request double trap enabling as well as
>>> registering a SSE handler for double trap. This will also be used by KVM
>>> SBI FWFT extension support to detect if it is possible to enable double
>>> trap in VS-mode.
>>>
>>> Signed-off-by: Cl�ment L�ger <cleger@rivosinc.com>
>>> ---
>>> arch/riscv/include/asm/sbi.h��� |� 1 +
>>> drivers/firmware/Kconfig������� |� 7 +++
>>> drivers/firmware/Makefile������ |� 1 +
>>> drivers/firmware/riscv_dbltrp.c | 95 +++++++++++++++++++++++++++++++++
>>> include/linux/riscv_dbltrp.h��� | 19 +++++++
>>> 5 files changed, 123 insertions(+)
>>> create mode 100644 drivers/firmware/riscv_dbltrp.c
>>> create mode 100644 include/linux/riscv_dbltrp.h
>>>
>>> diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
>>> index 744aa1796c92..9cd4ca66487c 100644
>>> --- a/arch/riscv/include/asm/sbi.h
>>> +++ b/arch/riscv/include/asm/sbi.h
>>> @@ -314,6 +314,7 @@ enum sbi_sse_attr_id {
>>> #define SBI_SSE_ATTR_INTERRUPTED_FLAGS_SPIE��� (1 << 2)
>>>
>>> #define SBI_SSE_EVENT_LOCAL_RAS������� 0x00000000
>>> +#define SBI_SSE_EVENT_LOCAL_DOUBLE_TRAP��� 0x00000001
>>> #define SBI_SSE_EVENT_GLOBAL_RAS��� 0x00008000
>>> #define SBI_SSE_EVENT_LOCAL_PMU������� 0x00010000
>>> #define SBI_SSE_EVENT_LOCAL_SOFTWARE��� 0xffff0000
>>> diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
>>> index 59f611288807..a037f6e89942 100644
>>> --- a/drivers/firmware/Kconfig
>>> +++ b/drivers/firmware/Kconfig
>>> @@ -197,6 +197,13 @@ config RISCV_SSE_TEST
>>> ����� Select if you want to enable SSE extension testing at boot time.
>>> ����� This will run a series of test which verifies SSE sanity.
>>>
>>> +config RISCV_DBLTRP
>>> +��� bool "Enable Double trap handling"
>>> +��� depends on RISCV_SSE && RISCV_SBI
>>> +��� default n
>>> +��� help
>>> +����� Select if you want to enable SSE double trap handler.
>>> +
>>> config SYSFB
>>> ����bool
>>> ����select BOOT_VESA_SUPPORT
>>> diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
>>> index fb7b0c08c56d..ad67a1738c0f 100644
>>> --- a/drivers/firmware/Makefile
>>> +++ b/drivers/firmware/Makefile
>>> @@ -18,6 +18,7 @@ obj-$(CONFIG_RASPBERRYPI_FIRMWARE) += raspberrypi.o
>>> obj-$(CONFIG_FW_CFG_SYSFS)��� += qemu_fw_cfg.o
>>> obj-$(CONFIG_RISCV_SSE)������� += riscv_sse.o
>>> obj-$(CONFIG_RISCV_SSE_TEST)��� += riscv_sse_test.o
>>> +obj-$(CONFIG_RISCV_DBLTRP)��� += riscv_dbltrp.o
>>> obj-$(CONFIG_SYSFB)������� += sysfb.o
>>> obj-$(CONFIG_SYSFB_SIMPLEFB)��� += sysfb_simplefb.o
>>> obj-$(CONFIG_TI_SCI_PROTOCOL)��� += ti_sci.o
>>> diff --git a/drivers/firmware/riscv_dbltrp.c
>>> b/drivers/firmware/riscv_dbltrp.c
>>> new file mode 100644
>>> index 000000000000..72f9a067e87a
>>> --- /dev/null
>>> +++ b/drivers/firmware/riscv_dbltrp.c
>>> @@ -0,0 +1,95 @@
>>> +// SPDX-License-Identifier: GPL-2.0-only
>>> +/*
>>> + * Copyright (C) 2023 Rivos Inc.
>>> + */
>>
>> nit: fix copyright year
>>> +
>>> +#define pr_fmt(fmt) "riscv-dbltrp: " fmt
>>> +
>>> +#include <linux/cpu.h>
>>> +#include <linux/init.h>
>>> +#include <linux/riscv_dbltrp.h>
>>> +#include <linux/riscv_sse.h>
>>> +
>>> +#include <asm/sbi.h>
>>> +
>>> +static bool double_trap_enabled;
>>> +
>>> +static int riscv_sse_dbltrp_handle(uint32_t evt, void *arg,
>>> +������������������ struct pt_regs *regs)
>>> +{
>>> +��� __show_regs(regs);
>>> +��� panic("Double trap !\n");
>>> +
>>> +��� return 0;
>> Curious:
>> Does panic return?
>> What's the point of returning from here?
>
>Hi Deepak,
>
>No, panic() does not return and indeed, the "return 0" is useless. It's
>a leftover of a previous implementation without panic in order to keep
>GCC mouth shut ;).
>
>>
>>> +}
>>> +
>>> +struct cpu_dbltrp_data {
>>> +��� int error;
>>> +};
>>> +
>>> +static void
>>> +sbi_cpu_enable_double_trap(void *data)
>>> +{
>>> +��� struct sbiret ret;
>>> +��� struct cpu_dbltrp_data *cdd = data;
>>> +
>>> +��� ret = sbi_ecall(SBI_EXT_FWFT, SBI_EXT_FWFT_SET,
>>> +����������� SBI_FWFT_DOUBLE_TRAP_ENABLE, 1, 0, 0, 0, 0);
>>> +
>>> +��� if (ret.error) {
>>> +������� cdd->error = 1;
>>> +������� pr_err("Failed to enable double trap on cpu %d\n",
>>> smp_processor_id());
>>> +��� }
>>> +}
>>> +
>>> +static int sbi_enable_double_trap(void)
>>> +{
>>> +��� struct cpu_dbltrp_data cdd = {0};
>>> +
>>> +��� on_each_cpu(sbi_cpu_enable_double_trap, &cdd, 1);
>>> +��� if (cdd.error)
>>> +������� return -1;
>>
>> There is a bug here. If `sbi_cpu_enable_double_trap` failed on all cpus
>> but last cpu.
>> Then cdd.error would not record error and will be reflect as if double
>> trap was enabled.
>
>cdd.error is only written in case of error by the per-cpu callbacks, so
>it is only set if enabled failed. Is there something I'm missing ?

No. Sorry I missed that detail. lgtm.

>
>Thanks,
>
>Cl�ment
>
>>
>> Its less likely to happen that FW would return success for one cpu and
>> fail for others.
>> But there is non-zero probablity here.
>>
>

