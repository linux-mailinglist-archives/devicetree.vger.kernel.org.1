Return-Path: <devicetree+bounces-137562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 118E2A0973A
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 17:24:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0EFA9169683
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 16:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0AB121324E;
	Fri, 10 Jan 2025 16:23:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A7D9213249;
	Fri, 10 Jan 2025 16:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736526191; cv=none; b=eYsExklQamu0x3lEiSofjl4s/Jy5n0sMgTczEWD8VWPDgi/X1w6AUZosxkYjHW3QhKZIWLoM4ammsdoARM0IRXbHoeqZT4PsT72Tj9bppBaFDcyaaTl3NRsFjJDk/8K4UqgHMrbRMpQVxJRzRkjJGu1xrnmco41eLMM710rYKDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736526191; c=relaxed/simple;
	bh=T0xwsR4zHpSZVLh5QzbQBaB91UlZ+nb8NyXg/b0K8zU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=erNqpMAyYHDM0SHAJ0xXypXOIHwH6CsuTd5QQAuWysplDWcZZ6VrOKvafM+PLQeK/qGfI5lhDiPydATZN97+qRhM4q2W9qY9PJvrbe9DlLgJsBNEeJTrzqwBY3pGBhlPwJ5MhR1w0wyAh28suZoEzhT6HeTQdyINSBTeZpEZNOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CE5F9497;
	Fri, 10 Jan 2025 08:23:36 -0800 (PST)
Received: from J2N7QTR9R3 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 846453F66E;
	Fri, 10 Jan 2025 08:23:06 -0800 (PST)
Date: Fri, 10 Jan 2025 16:23:00 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Alireza Sanaee <alireza.sanaee@huawei.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, robh@kernel.org, linuxarm@huawei.com,
	shameerali.kolothum.thodi@huawei.com, Jonathan.Cameron@huawei.com,
	jiangkunkun@huawei.com, yangyicong@hisilicon.com
Subject: Re: [PATCH] arm64: of: handle multiple threads in ARM cpu node
Message-ID: <Z4FJZPRg75YIUR2l@J2N7QTR9R3>
References: <20250110161057.445-1-alireza.sanaee@huawei.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250110161057.445-1-alireza.sanaee@huawei.com>

On Fri, Jan 10, 2025 at 04:10:57PM +0000, Alireza Sanaee wrote:
> Update `of_parse_and_init_cpus` to parse reg property of CPU node as
> an array based as per spec for SMT threads.
> 
> Spec v0.4 Section 3.8.1:

Which spec, and why do we care?

> The value of reg is a <prop-encoded-**array**> that defines a unique
> CPU/thread id for the CPU/threads represented by the CPU node.  **If a CPU
> supports more than one thread (i.e.  multiple streams of execution) the
> reg property is an array with 1 element per thread**.  The address-cells
> on the /cpus node specifies how many cells each element of the array
> takes. Software can determine the number of threads by dividing the size
> of reg by the parent node's address-cells.

We already have systems where each thread gets a unique CPU node under
/cpus, so we can't rely on this to determine the topology.

Further, there are bindings which rely on being able to address each
CPU/thread with a unique phandle (e.g. for affinity of PMU interrupts),
which this would break.

> An accurate example of 1 core with 2 SMTs:
> 
> 	cpus {
> 		#size-cells = <0x00>;
> 		#address-cells = <0x01>;
> 
> 		cpu@0 {
> 			phandle = <0x8000>;
> 			**reg = <0x00 0x01>;**
> 			enable-method = "psci";
> 			compatible = "arm,cortex-a57";
> 			device_type = "cpu";
> 		};
> 	};
> 
> Instead of:
> 
> 	cpus {
> 		#size-cells = <0x00>;
> 		#address-cells = <0x01>;
> 
> 		cpu@0 {
> 			phandle = <0x8000>;
> 			reg = <0x00>;
> 			enable-method = "psci";
> 			compatible = "arm,cortex-a57";
> 			device_type = "cpu";
> 		};
> 
> 		cpu@1 {
> 			phandle = <0x8001>;
> 			reg = <0x01>;
> 			enable-method = "psci";
> 			compatible = "arm,cortex-a57";
> 			device_type = "cpu";
> 		};
> 	};
> 
> which is **NOT** accurate.

It might not follow "the spec" you reference (and haven't named), but I
think it's a stretch to say it's inaccurate.

Regardless, as above I do not think this is a good idea. While it allows
the DT to be written in a marginally simpler way, it makes things more
complicated for the kernel and is incompatible with bindings that we
already support.

If anything "the spec" should be relaxed here.

Mark.

> 
> Signed-off-by: Alireza Sanaee <alireza.sanaee@huawei.com>
> ---
>  arch/arm64/kernel/smp.c | 74 +++++++++++++++++++++++------------------
>  1 file changed, 41 insertions(+), 33 deletions(-)
> 
> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index 3b3f6b56e733..8dd3b3c82967 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -689,53 +689,61 @@ static void __init acpi_parse_and_init_cpus(void)
>  static void __init of_parse_and_init_cpus(void)
>  {
>  	struct device_node *dn;
> +	u64 hwid;
> +	u32 tid;
>  
>  	for_each_of_cpu_node(dn) {
> -		u64 hwid = of_get_cpu_hwid(dn, 0);
> +		tid = 0;
>  
> -		if (hwid & ~MPIDR_HWID_BITMASK)
> -			goto next;
> +		while (1) {
> +			hwid = of_get_cpu_hwid(dn, tid++);
> +			if (hwid == ~0ULL)
> +				break;
>  
> -		if (is_mpidr_duplicate(cpu_count, hwid)) {
> -			pr_err("%pOF: duplicate cpu reg properties in the DT\n",
> -				dn);
> -			goto next;
> -		}
> +			if (hwid & ~MPIDR_HWID_BITMASK)
> +				goto next;
>  
> -		/*
> -		 * The numbering scheme requires that the boot CPU
> -		 * must be assigned logical id 0. Record it so that
> -		 * the logical map built from DT is validated and can
> -		 * be used.
> -		 */
> -		if (hwid == cpu_logical_map(0)) {
> -			if (bootcpu_valid) {
> -				pr_err("%pOF: duplicate boot cpu reg property in DT\n",
> -					dn);
> +			if (is_mpidr_duplicate(cpu_count, hwid)) {
> +				pr_err("%pOF: duplicate cpu reg properties in the DT\n",
> +				       dn);
>  				goto next;
>  			}
>  
> -			bootcpu_valid = true;
> -			early_map_cpu_to_node(0, of_node_to_nid(dn));
> -
>  			/*
> -			 * cpu_logical_map has already been
> -			 * initialized and the boot cpu doesn't need
> -			 * the enable-method so continue without
> -			 * incrementing cpu.
> +			 * The numbering scheme requires that the boot CPU
> +			 * must be assigned logical id 0. Record it so that
> +			 * the logical map built from DT is validated and can
> +			 * be used.
>  			 */
> -			continue;
> -		}
> +			if (hwid == cpu_logical_map(0)) {
> +				if (bootcpu_valid) {
> +					pr_err("%pOF: duplicate boot cpu reg property in DT\n",
> +					       dn);
> +					goto next;
> +				}
> +
> +				bootcpu_valid = true;
> +				early_map_cpu_to_node(0, of_node_to_nid(dn));
> +
> +				/*
> +				 * cpu_logical_map has already been
> +				 * initialized and the boot cpu doesn't need
> +				 * the enable-method so continue without
> +				 * incrementing cpu.
> +				 */
> +				continue;
> +			}
>  
> -		if (cpu_count >= NR_CPUS)
> -			goto next;
> +			if (cpu_count >= NR_CPUS)
> +				goto next;
>  
> -		pr_debug("cpu logical map 0x%llx\n", hwid);
> -		set_cpu_logical_map(cpu_count, hwid);
> +			pr_debug("cpu logical map 0x%llx\n", hwid);
> +			set_cpu_logical_map(cpu_count, hwid);
>  
> -		early_map_cpu_to_node(cpu_count, of_node_to_nid(dn));
> +			early_map_cpu_to_node(cpu_count, of_node_to_nid(dn));
>  next:
> -		cpu_count++;
> +			cpu_count++;
> +		}
>  	}
>  }
>  
> -- 
> 2.43.0
> 
> 

