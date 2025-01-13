Return-Path: <devicetree+bounces-137992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9550EA0B62D
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 12:59:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 651C63A3482
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 11:58:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D42D91CAA9A;
	Mon, 13 Jan 2025 11:59:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB7F522CF02;
	Mon, 13 Jan 2025 11:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.176.79.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736769540; cv=none; b=ULYnwG4fzuAmz9Z103otIUyjdWfH6yiGVCwb/GR/+JS/Tu7h0bzUqdmIUDFCYBS2O+HpzpbtHlnLTB6nLTsGfs/uUXH56O6XSW5Tgk6gwGbwZzA9Z9vLxPudDgfmQEpYLnTYCe87BQnhM4wxgQqkj9zqNK+JtkvrtC2y3tPkVng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736769540; c=relaxed/simple;
	bh=jdaZOpd+6otjgr312EaVcV+7PpIPVPcp+ZkS1FqhF9M=;
	h=Date:From:To:CC:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tgETb0INQUPhsjVh7ZEdhpLOU2hLSe8rhstfrJApn0e8uKbdWamp9Xa8RAqLD6eL7UqQmI8T9pAL5l6oX69C0yBv4v/dTmewimPCFoBMbtjWUDPz6IIKe2wlZjxJiMK1WFL9657ER0Z+Gs5bQSI4MvZuSLS6nQaJUl80TdYftXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=185.176.79.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.18.186.231])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4YWrN90pJ2z6M4t2;
	Mon, 13 Jan 2025 19:57:13 +0800 (CST)
Received: from frapeml500003.china.huawei.com (unknown [7.182.85.28])
	by mail.maildlp.com (Postfix) with ESMTPS id 37EBA140A70;
	Mon, 13 Jan 2025 19:58:55 +0800 (CST)
Received: from localhost (10.203.177.99) by frapeml500003.china.huawei.com
 (7.182.85.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.39; Mon, 13 Jan
 2025 12:58:54 +0100
Date: Mon, 13 Jan 2025 11:58:49 +0000
From: Alireza Sanaee <alireza.sanaee@huawei.com>
To: Mark Rutland <mark.rutland@arm.com>
CC: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "robh@kernel.org" <robh@kernel.org>, Linuxarm
	<linuxarm@huawei.com>, Shameerali Kolothum Thodi
	<shameerali.kolothum.thodi@huawei.com>, Jonathan Cameron
	<jonathan.cameron@huawei.com>, jiangkunkun <jiangkunkun@huawei.com>,
	yangyicong <yangyicong@huawei.com>, "zhao1.liu@intel.com"
	<zhao1.liu@intel.com>
Subject: Re: [PATCH] arm64: of: handle multiple threads in ARM cpu node
Message-ID: <20250113115849.00006fee@huawei.com>
In-Reply-To: <Z4FYHvbVhMHrGQI4@J2N7QTR9R3>
References: <20250110161057.445-1-alireza.sanaee@huawei.com>
	<Z4FJZPRg75YIUR2l@J2N7QTR9R3>
	<20250110170211.00004ac2@huawei.com>
	<Z4FYHvbVhMHrGQI4@J2N7QTR9R3>
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
X-ClientProxiedBy: lhrpeml100002.china.huawei.com (7.191.160.241) To
 frapeml500003.china.huawei.com (7.182.85.28)

On Fri, 10 Jan 2025 17:25:50 +0000
Mark Rutland <mark.rutland@arm.com> wrote:

Hi Mark,

Just resending, but without the screenshot mistakenly attached to
the other email. Sorry about that.

> On Fri, Jan 10, 2025 at 05:02:11PM +0000, Alireza Sanaee wrote:
> > On Fri, 10 Jan 2025 16:23:00 +0000
> > Mark Rutland <mark.rutland@arm.com> wrote:
> > 
> > Hi Mark,
> > 
> > Thanks for prompt feedback.
> > 
> > Please look inline.
> >   
> > > On Fri, Jan 10, 2025 at 04:10:57PM +0000, Alireza Sanaee wrote:  
> > > > Update `of_parse_and_init_cpus` to parse reg property of CPU
> > > > node as an array based as per spec for SMT threads.
> > > > 
> > > > Spec v0.4 Section 3.8.1:    
> > > 
> > > Which spec, and why do we care?  
> > 
> > For the spec, this is what I looked
> > into https://github.com/devicetree-org/devicetree-specification/releases/download/v0.4/devicetree-specification-v0.4.pdf 
> > Section 3.8.1 
> > 
> > Sorry I didn't put the link in there.  
> 
> Ok, so that's "The devicetree specification v0.4 from ${URL}", rather
> than "Spec v0.4".

:) sure, I will be more precise in my future correspondences.

> 
> > One limitation with the existing approach is that it is not really
> > possible to describe shared caches for SMT cores as they will be
> > seen as separate CPU cores in the device tree. Is there anyway to
> > do so?  
> 
> Can't the existing cache bindings handle that? e.g. give both threads
> a next-level-cache pointing to the shared L1?

Unfortunately, I have tested this recently, there are some leg work to
be able to even enable that, and does not work right now.

> 
> > More discussion over sharing caches for threads
> > here https://lore.kernel.org/kvm/20241219083237.265419-1-zhao1.liu@intel.com/  
> 
> In that thread Rob refers to earlier discussions, so I don't think
> that thread alone has enough context.

https://lore.kernel.org/linux-devicetree/CAL_JsqLGEvGBQ0W_B6+5cME1UEhuKXadBB-6=GoN1tmavw9K_w@mail.gmail.com/

This was the earlier discussion, where Rob pointed me towards
investigating this approach (this patch).

> 
> > > > The value of reg is a <prop-encoded-**array**> that defines a
> > > > unique CPU/thread id for the CPU/threads represented by the CPU
> > > > node. **If a CPU supports more than one thread (i.e.  multiple
> > > > streams of execution) the reg property is an array with 1
> > > > element per thread**.  The address-cells on the /cpus node
> > > > specifies how many cells each element of the array takes.
> > > > Software can determine the number of threads by dividing the
> > > > size of reg by the parent node's address-cells.    
> > > 
> > > We already have systems where each thread gets a unique CPU node
> > > under /cpus, so we can't rely on this to determine the topology.  
> > 
> > I assume we can generate unique values even in reg array, but
> > probably makes things more complicated.  
> 
> The other bindings use phandles to refer to threads, and phandles
> point to nodes in the dt, so it's necessary for threads to be given
> separate nodes.
> 
> Note that the CPU topology bindings use that to describe threads, see
> 
>   Documentation/devicetree/bindings/cpu/cpu-topology.txt

Noted. Makes sense.

> 
> > > Further, there are bindings which rely on being able to address
> > > each CPU/thread with a unique phandle (e.g. for affinity of PMU
> > > interrupts), which this would break.  
> 
> > > Regardless, as above I do not think this is a good idea. While it
> > > allows the DT to be written in a marginally simpler way, it makes
> > > things more complicated for the kernel and is incompatible with
> > > bindings that we already support.
> > > 
> > > If anything "the spec" should be relaxed here.  
> > 
> > Hi Rob,
> > 
> > If this approach is too disruptive, then shall we fallback to the
> > approach where go share L1 at next-level-cache entry?  
> 
> Ah, was that previously discussed, and were there any concerns against
> that approach?
> 
> To be clear, my main concern here is that threads remain represented
> as distinct nodes under /cpus; I'm not wedded to the precise solution
> for representing shared caches.

This was basically what comes to mind as a
non-invasive preliminary solution. That said
there were no discussions over downsides or advantages of having a
separate layer for l1-cache YET. 

But if it is something reasonable, I can look into it.  

> 
> Mark.
> 
> 

Thanks,
Alireza

