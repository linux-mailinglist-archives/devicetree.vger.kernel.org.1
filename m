Return-Path: <devicetree+bounces-137567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD348A0980E
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 18:02:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A9AFB16142B
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 17:02:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC342212B0A;
	Fri, 10 Jan 2025 17:02:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD821C5F2A;
	Fri, 10 Jan 2025 17:02:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.176.79.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736528542; cv=none; b=ZKgelf0fSehEZay4ozAslxy4mWdxs5j8hPN9b5n7LAusrJzYtV/Lb50g4mcY6UQr3CKvg7WqyD/fwK2uSAmUziCOXP4ySiPPo21QDcAk/qIAn69x3Rxr5yMF9ymcBsqDcj6NsoVeuXgkyhYL8V0k+ED+Xtq3lmrrPS9et1L1pfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736528542; c=relaxed/simple;
	bh=J6M9dhk4IIFE56GZx3HkDdu0CLJOZM4bllASwBo0miQ=;
	h=Date:From:To:CC:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YVKEH6GqtEYiGve+1IOSy6k0i6zns2sHzsi9Wv5j3pKDypYVYRcP7eNglMkH5W0wsFrEjctB3Al/EGbTFdx+OH6sYwO3s8JWOLbT54wzroTJK5WWp/rnwVv1kXgmrMVg5+XVGGA1NCMOIJwL8dDAk4BoymlG2esBEd9syJjfqBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=185.176.79.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.18.186.231])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4YV7G72NMwz67K2K;
	Sat, 11 Jan 2025 01:01:03 +0800 (CST)
Received: from frapeml500003.china.huawei.com (unknown [7.182.85.28])
	by mail.maildlp.com (Postfix) with ESMTPS id 30E121408F9;
	Sat, 11 Jan 2025 01:02:18 +0800 (CST)
Received: from localhost (10.203.177.99) by frapeml500003.china.huawei.com
 (7.182.85.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.39; Fri, 10 Jan
 2025 18:02:17 +0100
Date: Fri, 10 Jan 2025 17:02:11 +0000
From: Alireza Sanaee <alireza.sanaee@huawei.com>
To: Mark Rutland <mark.rutland@arm.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <robh@kernel.org>, <linuxarm@huawei.com>,
	<shameerali.kolothum.thodi@huawei.com>, <Jonathan.Cameron@huawei.com>,
	<jiangkunkun@huawei.com>, <yangyicong@hisilicon.com>, <zhao1.liu@intel.com>
Subject: Re: [PATCH] arm64: of: handle multiple threads in ARM cpu node
Message-ID: <20250110170211.00004ac2@huawei.com>
In-Reply-To: <Z4FJZPRg75YIUR2l@J2N7QTR9R3>
References: <20250110161057.445-1-alireza.sanaee@huawei.com>
	<Z4FJZPRg75YIUR2l@J2N7QTR9R3>
Organization: Huawei
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.42; x86_64-w64-mingw32)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: lhrpeml100010.china.huawei.com (7.191.174.197) To
 frapeml500003.china.huawei.com (7.182.85.28)

On Fri, 10 Jan 2025 16:23:00 +0000
Mark Rutland <mark.rutland@arm.com> wrote:

Hi Mark,

Thanks for prompt feedback.

Please look inline.

> On Fri, Jan 10, 2025 at 04:10:57PM +0000, Alireza Sanaee wrote:
> > Update `of_parse_and_init_cpus` to parse reg property of CPU node as
> > an array based as per spec for SMT threads.
> > 
> > Spec v0.4 Section 3.8.1:  
> 
> Which spec, and why do we care?

For the spec, this is what I looked
into https://github.com/devicetree-org/devicetree-specification/releases/download/v0.4/devicetree-specification-v0.4.pdf 
Section 3.8.1 

Sorry I didn't put the link in there.

One limitation with the existing approach is that it is not really
possible to describe shared caches for SMT cores as they will be seen
as separate CPU cores in the device tree. Is there anyway to do so?

More discussion over sharing caches for threads
here https://lore.kernel.org/kvm/20241219083237.265419-1-zhao1.liu@intel.com/

> 
> > The value of reg is a <prop-encoded-**array**> that defines a unique
> > CPU/thread id for the CPU/threads represented by the CPU node.
> > **If a CPU supports more than one thread (i.e.  multiple streams of
> > execution) the reg property is an array with 1 element per
> > thread**.  The address-cells on the /cpus node specifies how many
> > cells each element of the array takes. Software can determine the
> > number of threads by dividing the size of reg by the parent node's
> > address-cells.  
> 
> We already have systems where each thread gets a unique CPU node under
> /cpus, so we can't rely on this to determine the topology.

I assume we can generate unique values even in reg array, but probably
makes things more complicated.

> 
> Further, there are bindings which rely on being able to address each
> CPU/thread with a unique phandle (e.g. for affinity of PMU
> interrupts), which this would break.
> 
> > An accurate example of 1 core with 2 SMTs:
> > 
> > 	cpus {
> > 		#size-cells = <0x00>;
> > 		#address-cells = <0x01>;
> > 
> > 		cpu@0 {
> > 			phandle = <0x8000>;
> > 			**reg = <0x00 0x01>;**
> > 			enable-method = "psci";
> > 			compatible = "arm,cortex-a57";
> > 			device_type = "cpu";
> > 		};
> > 	};
> > 
> > Instead of:
> > 
> > 	cpus {
> > 		#size-cells = <0x00>;
> > 		#address-cells = <0x01>;
> > 
> > 		cpu@0 {
> > 			phandle = <0x8000>;
> > 			reg = <0x00>;
> > 			enable-method = "psci";
> > 			compatible = "arm,cortex-a57";
> > 			device_type = "cpu";
> > 		};
> > 
> > 		cpu@1 {
> > 			phandle = <0x8001>;
> > 			reg = <0x01>;
> > 			enable-method = "psci";
> > 			compatible = "arm,cortex-a57";
> > 			device_type = "cpu";
> > 		};
> > 	};
> > 
> > which is **NOT** accurate.  
> 
> It might not follow "the spec" you reference (and haven't named), but
> I think it's a stretch to say it's inaccurate.
> 
> Regardless, as above I do not think this is a good idea. While it
> allows the DT to be written in a marginally simpler way, it makes
> things more complicated for the kernel and is incompatible with
> bindings that we already support.
> 
> If anything "the spec" should be relaxed here.

Hi Rob,

If this approach is too disruptive, then shall we fallback to the
approach where go share L1 at next-level-cache entry?

Thanks,
Alireza
> 
> Mark.
> 
> > 
> > Signed-off-by: Alireza Sanaee <alireza.sanaee@huawei.com>
> > ---
> >  arch/arm64/kernel/smp.c | 74
> > +++++++++++++++++++++++------------------ 1 file changed, 41
> > insertions(+), 33 deletions(-)
> > 
> > diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> > index 3b3f6b56e733..8dd3b3c82967 100644
> > --- a/arch/arm64/kernel/smp.c
> > +++ b/arch/arm64/kernel/smp.c
> > @@ -689,53 +689,61 @@ static void __init
> > acpi_parse_and_init_cpus(void) static void __init
> > of_parse_and_init_cpus(void) {
> >  	struct device_node *dn;
> > +	u64 hwid;
> > +	u32 tid;
> >  
> >  	for_each_of_cpu_node(dn) {
> > -		u64 hwid = of_get_cpu_hwid(dn, 0);
> > +		tid = 0;
> >  
> > -		if (hwid & ~MPIDR_HWID_BITMASK)
> > -			goto next;
> > +		while (1) {
> > +			hwid = of_get_cpu_hwid(dn, tid++);
> > +			if (hwid == ~0ULL)
> > +				break;
> >  
> > -		if (is_mpidr_duplicate(cpu_count, hwid)) {
> > -			pr_err("%pOF: duplicate cpu reg properties
> > in the DT\n",
> > -				dn);
> > -			goto next;
> > -		}
> > +			if (hwid & ~MPIDR_HWID_BITMASK)
> > +				goto next;
> >  
> > -		/*
> > -		 * The numbering scheme requires that the boot CPU
> > -		 * must be assigned logical id 0. Record it so that
> > -		 * the logical map built from DT is validated and
> > can
> > -		 * be used.
> > -		 */
> > -		if (hwid == cpu_logical_map(0)) {
> > -			if (bootcpu_valid) {
> > -				pr_err("%pOF: duplicate boot cpu
> > reg property in DT\n",
> > -					dn);
> > +			if (is_mpidr_duplicate(cpu_count, hwid)) {
> > +				pr_err("%pOF: duplicate cpu reg
> > properties in the DT\n",
> > +				       dn);
> >  				goto next;
> >  			}
> >  
> > -			bootcpu_valid = true;
> > -			early_map_cpu_to_node(0,
> > of_node_to_nid(dn)); -
> >  			/*
> > -			 * cpu_logical_map has already been
> > -			 * initialized and the boot cpu doesn't
> > need
> > -			 * the enable-method so continue without
> > -			 * incrementing cpu.
> > +			 * The numbering scheme requires that the
> > boot CPU
> > +			 * must be assigned logical id 0. Record
> > it so that
> > +			 * the logical map built from DT is
> > validated and can
> > +			 * be used.
> >  			 */
> > -			continue;
> > -		}
> > +			if (hwid == cpu_logical_map(0)) {
> > +				if (bootcpu_valid) {
> > +					pr_err("%pOF: duplicate
> > boot cpu reg property in DT\n",
> > +					       dn);
> > +					goto next;
> > +				}
> > +
> > +				bootcpu_valid = true;
> > +				early_map_cpu_to_node(0,
> > of_node_to_nid(dn)); +
> > +				/*
> > +				 * cpu_logical_map has already been
> > +				 * initialized and the boot cpu
> > doesn't need
> > +				 * the enable-method so continue
> > without
> > +				 * incrementing cpu.
> > +				 */
> > +				continue;
> > +			}
> >  
> > -		if (cpu_count >= NR_CPUS)
> > -			goto next;
> > +			if (cpu_count >= NR_CPUS)
> > +				goto next;
> >  
> > -		pr_debug("cpu logical map 0x%llx\n", hwid);
> > -		set_cpu_logical_map(cpu_count, hwid);
> > +			pr_debug("cpu logical map 0x%llx\n", hwid);
> > +			set_cpu_logical_map(cpu_count, hwid);
> >  
> > -		early_map_cpu_to_node(cpu_count,
> > of_node_to_nid(dn));
> > +			early_map_cpu_to_node(cpu_count,
> > of_node_to_nid(dn)); next:
> > -		cpu_count++;
> > +			cpu_count++;
> > +		}
> >  	}
> >  }
> >  
> > -- 
> > 2.43.0
> > 
> >   
> 


