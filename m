Return-Path: <devicetree+bounces-191274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC32AEEB0F
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 01:53:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 33ABF1BC386C
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 23:54:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C6AC2571B3;
	Mon, 30 Jun 2025 23:53:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="iqGeJorB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD2EE23E340
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 23:53:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751327622; cv=none; b=oSPEhfvqk/He1JV56ozDF3ZY4wjxqudhavAYdxPy7fnvq+vuFlGPQH2eGZry9JX5Rkwslz51exWOX3dYlcGoYzK85cvdln77dJRU5H5/60vSaRC9anb9+Optq6cwSplIbDRKgTXznooyMy114eZXcECd6Wk6Bba+N6WvWgW6CQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751327622; c=relaxed/simple;
	bh=TS7vEuQWBJcxDghDWCxq1ngFn6a9nIZCWEH/+8tlAGM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EkIVcOFPowgTVpmPief6idMq+2KgXRRsRH1SsWAkxQw6f1JM5ZXNvbWQX4+0J0ICV6Zn5Es4X/gITFYYQB/NPXE65ufUzUj7kR5r68okmqsZnFzVseq/6pBPqg07GXfW0mCOtcNcwt7UFYjUwniGPa4HJ5QBsTDw3509OrQ8skI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=iqGeJorB; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-748d982e92cso3936322b3a.1
        for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 16:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1751327620; x=1751932420; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nLmrsb9MSa00XeFqXiUpnd2esuyL+q8kuURuOkPtn/Q=;
        b=iqGeJorBB1eT8rHVm2T722M0jsXsOARtkUj5xwe3JsDf0G24J921UQp6ANti2W9Ggy
         oEGmgmuVnNvcMrx0D6p0xvcR7Z/pRjiaoRff4maEm/jZ/CUTCJgcyOqnU3hcnNSRRhAX
         XVA1WAXiebTFZ258RFQCUobKBR581VA5Z9nzZg4H4YbkoUgqPCB24B2UzPcUUaZ71+/T
         GXHJQ1hfWglNP+zgCnTrPft4OuwN1ldQus0A69eiWJgp7kA2PmK0hGb7ntDkPwYvqgG7
         /LQGrmPhwBrgveua2H5R4YVcrf2rmIYe/iAUZnmk8gYWNzAmBHVxYVsjR/8VVT4XFzPr
         +QLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751327620; x=1751932420;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nLmrsb9MSa00XeFqXiUpnd2esuyL+q8kuURuOkPtn/Q=;
        b=Wej6p2vE4AMI+309iAx0/amY5+yKr3WOwCqZ7SwHJ2D+tUeIzVx+UTnxqvwjEc1xUu
         LADiHRwxAgmcXFRCC0tboPlIqObymowAVeQ5mPvN3mtDKzHM05nSpbYDaq3R5sPmSzII
         qrdPrvgWbVvJQNQtBjCR+Zl+EcXk7uzDTrMb5zpgSALMpOnlTM5sQc/EDhoumkv5rfyY
         Ub1F7z8vDwxxRg1aHrCM9vY32GKys6E+AaM3gMWwRdSr71mJme2a7SiIPWaJv4cLBdGc
         vzSAa7zUYyjhBs01Wu4LO9YUpmcUWijx5aLshZXOW2DoGRtGBYVWvRtrw/C59pL+6LF2
         Of9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUZzWPBHTcb8Q1RUcxrZiqpGKHnQsnF2hJk5mEXzSYJvmM4DlYc2OP/JuLjupNG1Y/QHGPIrNpT3XtR@vger.kernel.org
X-Gm-Message-State: AOJu0YwFS2Np/38zLQik4XZ3dBh+kTurcnhSjshz7tezSdZswUhVSMTW
	ayw0TnnYby7uWZXY2wMlbsQzQWwy9nzHT0NSRfNkxxPiKjoyLR2M5mqGSuMyW866bg==
X-Gm-Gg: ASbGncvDQVn0rrSZMRAU+4Df8lSA9QR4NePt46I4Oe+lGWU2gnMntbYkfFL/mBelvJE
	qVV2oPw3HasU4TCeUktWTEDl7LFtKUEnOCi+HjZRdcN9D/9t4PbovXgR8x5EfmP85InmrirxqBm
	Q+NDE0ldG9O0DzLLDgaodLhE0NOi9Xc2w/jL5bxoctRYGmG4Z18BwIGUfZKVN427BOuJ5E0Ji0B
	0e7yXa5dzsUT7rto1wZ7iNxjFWrK6xhE9HqoWte3jD0kib+Fh9/NvPSjPSMPNledYV+jRjY31h8
	cSr5Qsyx6T9YdJW8peRN8N954HFrhnFNGPgeeKiswS8I8ljvTuR4YzP92J7Eh67u6L25Kssb8S3
	LFQ8V05+8goldHyfHy9/35pM3xck=
X-Google-Smtp-Source: AGHT+IHFfA0RW6W3l7ApHpmaY/sI86v37ObPRx8yz/wJIGFT6rhIyaVTwsyxBA5pGyd0PknPIZnd/Q==
X-Received: by 2002:a05:6a00:1ac7:b0:748:e1e4:71ec with SMTP id d2e1a72fcca58-74af6f57628mr20519016b3a.12.1751327619831;
        Mon, 30 Jun 2025 16:53:39 -0700 (PDT)
Received: from google.com (96.41.145.34.bc.googleusercontent.com. [34.145.41.96])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74af557b5c8sm10098279b3a.83.2025.06.30.16.53.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jun 2025 16:53:39 -0700 (PDT)
Date: Mon, 30 Jun 2025 16:53:35 -0700
From: William McVicker <willmcvicker@google.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	lorenzo.pieralisi@linaro.org, Hans de Goede <hansg@kernel.org>,
	Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Rob Herring <robh@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Arnd Bergmann <arnd@arndb.de>, John Stultz <jstultz@google.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	"open list:GENERIC INCLUDE/ASM HEADER FILES" <linux-arch@vger.kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" <devicetree@vger.kernel.org>
Subject: Re: [PATCH RFC] timer: of: Create a platform_device before the
 framework is initialized
Message-ID: <aGMjfxIvbCkyR5rw@google.com>
References: <20250625085715.889837-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250625085715.889837-1-daniel.lezcano@linaro.org>

Hi Daniel,

On 06/25/2025, Daniel Lezcano wrote:
> In the context of the time keeping and the timers, some platforms have
> timers which need to be initialized very early. It is the case of the
> ARM platform which do not have the architected timers.
> 
> The macro TIMER_OF_DECLARE adds an entry in the timer init functions
> array at compile time and the function timer_probe is called from the
> timer_init() function in kernel/time.c
> 
> This array contains a t-uple with the init function and the compatible
> string.
> 
> The init function has a device node pointer parameter.
> 
> The timer_probe() function browses the of nodes and find the ones
> matching the compatible string given when using the TIMER_OF_DECLARE
> macro. It then calls the init function with the device node as a
> pointer.
> 
> But there are some platforms where there are multiple timers like the
> ARM64 with the architected timers. Those are always initialized very
> early and the other timers can be initialized later.
> 
> For this reason we find timer drivers with the platform_driver
> incarnation. Consequently their init functions are different, they
> have a platform_device pointer parameter and rely on the devm_
> function for rollbacking.
> 
> To summarize, we have:
>  - TIMER_OF_DECLARE with init function prototype:
>    int (*init)(struct device_node *np);
> 
>  - module_platform_driver (and variant) with the probe function
>    prototype:
>    int (*init)(struct platform_device *pdev);
> 
> The current situation with the timers is the following:
> 
>  - Two platforms can have the same timer hardware, hence the same
>    driver but one without alternate timers and the other with multiple
>    timers. For example, the Exynos platform has only the Exynos MCT on
>    ARM but has the architeched timers in addition on the ARM64.
> 
>  - The timer drivers can be modules now which was not the case until
>    recently. TIMER_OF_DECLARE do not allow the build as a module.
> 
> It results in duplicate init functions (one with rollback and one with
> devm_) and different way to declare the driver (TIMER_OF_DECLARE and
> module_platform_driver).
> 
> This proposed change is to unify the prototyping of the init functions
> to receive a platform_device pointer as parameter. Consequently, it
> will allow a smoother and nicer module conversion and a huge cleanup
> of the init functions by removing all the rollback code from all the
> timer drivers. It introduces a TIMER_OF_DECLARE_PDEV macro.
> 
> If the macro is used a platform_device is manually allocated and
> initialized with the needed information for the probe
> function. Otherwise module_platform_driver can be use instead with the
> same probe function without the timer_probe() initialization.
> 
> I don't have an expert knowledge of the platform_device internal
> subtilitie so I'm not sure if this approach is valid. However, it has
> been tested on a Rockchip board with the "rockchip,rk3288-timer" and
> verified the macro and the devm_ rollback work correctly.
> 
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: Hans de Goede <hansg@kernel.org>
> Cc: Ilpo Järvinen <ilpo.jarvinen@linux.intel.com>
> Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/clocksource/timer-probe.c | 61 ++++++++++++++++++++++++++++++-
>  include/asm-generic/vmlinux.lds.h |  2 +
>  include/linux/clocksource.h       |  3 ++
>  include/linux/of.h                |  5 +++
>  4 files changed, 70 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clocksource/timer-probe.c b/drivers/clocksource/timer-probe.c
> index b7860bc0db4b..6b2b341b8c95 100644
> --- a/drivers/clocksource/timer-probe.c
> +++ b/drivers/clocksource/timer-probe.c
> @@ -7,13 +7,18 @@
>  #include <linux/init.h>
>  #include <linux/of.h>
>  #include <linux/clocksource.h>
> +#include <linux/platform_device.h>
>  
>  extern struct of_device_id __timer_of_table[];
> +extern struct of_device_id __timer_pdev_of_table[];
>  
>  static const struct of_device_id __timer_of_table_sentinel
>  	__used __section("__timer_of_table_end");
>  
> -void __init timer_probe(void)
> +static const struct of_device_id __timer_pdev_of_table_sentinel
> +	__used __section("__timer_pdev_of_table_end");
> +
> +static int __init timer_of_probe(void)
>  {
>  	struct device_node *np;
>  	const struct of_device_id *match;
> @@ -38,6 +43,60 @@ void __init timer_probe(void)
>  		timers++;
>  	}
>  
> +	return timers;
> +}
> +
> +static int __init timer_pdev_of_probe(void)
> +{
> +	struct device_node *np;
> +	struct platform_device *pdev;
> +	const struct of_device_id *match;
> +	of_init_fn_pdev init_func;
> +	unsigned int timers = 0;
> +	int ret;
> +
> +	for_each_matching_node_and_match(np, __timer_pdev_of_table, &match) {
> +		if (!of_device_is_available(np))
> +			continue;
> +
> +		init_func = match->data;
> +
> +		pdev = platform_device_alloc(of_node_full_name(np), -1);
> +		if (!pdev)
> +			continue;
> +
> +		ret = device_add_of_node(&pdev->dev, np);
> +		if (ret) {
> +			platform_device_put(pdev);
> +			continue;
> +		}
> +
> +		dev_set_name(&pdev->dev, pdev->name);
> +
> +		ret = init_func(pdev);
> +		if (!ret) {
> +			timers++;
> +			continue;
> +		}
> +
> +		if (ret != -EPROBE_DEFER)
> +			pr_err("Failed to initialize '%pOF': %d\n", np,
> +			       ret);
> +
> +		device_remove_of_node(&pdev->dev);
> +
> +		platform_device_put(pdev);
> +	}
> +
> +	return timers;
> +}
> +
> +void __init timer_probe(void)
> +{
> +	unsigned timers = 0;
> +
> +	timers += timer_of_probe();
> +	timers += timer_pdev_of_probe();
>  	timers += acpi_probe_device_table(timer);
>  
>  	if (!timers)
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index fa5f19b8d53a..97606499c8d7 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -318,6 +318,7 @@ defined(CONFIG_AUTOFDO_CLANG) || defined(CONFIG_PROPELLER_CLANG)
>  	KEEP(*(__##name##_of_table_end))
>  
>  #define TIMER_OF_TABLES()	OF_TABLE(CONFIG_TIMER_OF, timer)
> +#define TIMER_PDEV_OF_TABLES()	OF_TABLE(CONFIG_TIMER_OF, timer_pdev)
>  #define IRQCHIP_OF_MATCH_TABLE() OF_TABLE(CONFIG_IRQCHIP, irqchip)
>  #define CLK_OF_TABLES()		OF_TABLE(CONFIG_COMMON_CLK, clk)
>  #define RESERVEDMEM_OF_TABLES()	OF_TABLE(CONFIG_OF_RESERVED_MEM, reservedmem)
> @@ -714,6 +715,7 @@ defined(CONFIG_AUTOFDO_CLANG) || defined(CONFIG_PROPELLER_CLANG)
>  	CLK_OF_TABLES()							\
>  	RESERVEDMEM_OF_TABLES()						\
>  	TIMER_OF_TABLES()						\
> +	TIMER_PDEV_OF_TABLES()						\
>  	CPU_METHOD_OF_TABLES()						\
>  	CPUIDLE_METHOD_OF_TABLES()					\
>  	KERNEL_DTB()							\
> diff --git a/include/linux/clocksource.h b/include/linux/clocksource.h
> index 65b7c41471c3..0eeabd207040 100644
> --- a/include/linux/clocksource.h
> +++ b/include/linux/clocksource.h
> @@ -289,6 +289,9 @@ extern int clocksource_i8253_init(void);
>  #define TIMER_OF_DECLARE(name, compat, fn) \
>  	OF_DECLARE_1_RET(timer, name, compat, fn)
>  
> +#define TIMER_OF_DECLARE_PDEV(name, compat, fn) \
> +	OF_DECLARE_PDEV(timer_pdev, name, compat, fn)
> +
>  #ifdef CONFIG_TIMER_PROBE
>  extern void timer_probe(void);
>  #else
> diff --git a/include/linux/of.h b/include/linux/of.h
> index a62154aeda1b..a312a6f5ecc1 100644
> --- a/include/linux/of.h
> +++ b/include/linux/of.h
> @@ -1540,9 +1540,12 @@ static inline int of_get_available_child_count(const struct device_node *np)
>  	_OF_DECLARE_STUB(table, name, compat, fn, fn_type)
>  #endif
>  
> +struct platform_device;
> +
>  typedef int (*of_init_fn_2)(struct device_node *, struct device_node *);
>  typedef int (*of_init_fn_1_ret)(struct device_node *);
>  typedef void (*of_init_fn_1)(struct device_node *);
> +typedef int (*of_init_fn_pdev)(struct platform_device *);
>  
>  #define OF_DECLARE_1(table, name, compat, fn) \
>  		_OF_DECLARE(table, name, compat, fn, of_init_fn_1)
> @@ -1550,6 +1553,8 @@ typedef void (*of_init_fn_1)(struct device_node *);
>  		_OF_DECLARE(table, name, compat, fn, of_init_fn_1_ret)
>  #define OF_DECLARE_2(table, name, compat, fn) \
>  		_OF_DECLARE(table, name, compat, fn, of_init_fn_2)
> +#define OF_DECLARE_PDEV(table, name, compat, fn) \
> +		_OF_DECLARE(table, name, compat, fn, of_init_fn_pdev)

To support auto-module loading you'll need to also define the
MODULE_DEVICE_TABLE() as part of TIMER_OF_DECLARE_PDEV().

I haven't tested the patch yet, but aside from my comment above it LGTM.

Thanks,
Will

>  
>  /**
>   * struct of_changeset_entry	- Holds a changeset entry
> -- 
> 2.43.0
> 

