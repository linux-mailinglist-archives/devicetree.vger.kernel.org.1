Return-Path: <devicetree+bounces-242083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 267ADC86033
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 17:42:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 95E0D3B1870
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 16:42:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 392B432936C;
	Tue, 25 Nov 2025 16:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="BRKm/5Yq";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="omlDhUqq"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A03FC32937A;
	Tue, 25 Nov 2025 16:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764088935; cv=none; b=e3SeORlxwcpjh7z1iwpMKXUizMvIWt4ilIEvfPSERceGQrVjhYmrXOCs6Pk5k50TqnFmTIbFuGdb/vL3pUj9GDwBGRtxk1L2cPlYum1al8AnMUnqWpPMESg+6AxJ7SF31IejzZ7vR/whLI0WsQn/anByVaEgC59WghHHbxZ0gYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764088935; c=relaxed/simple;
	bh=fhhNh+EOxybtGt0uhXwHndJQIlmn5lQfFonu/UzNLSY=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Lg4iXbkL5coP/CHVm2b2gGqpHJXvh+uv7BFy+DaFZLllhJ6NNo3jArn4PQDs7N8QQAHkBlw83DzJOAJDfKq8WGoq+26KtLQp8PLghAZan1jKCXsI0o52BU7aukmqrHTxv5AVKRPRdukLQmoeOiVQvEZBBqhLcPjJJnt6A2ASDjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=BRKm/5Yq; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=omlDhUqq; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1764088931;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=RqI/He4CXhxTqt1ORMpFG3AopoID5E8hGxslNMITl9U=;
	b=BRKm/5YqnAEslcwBxsyMTHuzR9ldnsuWz5QiEuNFqf6Se/BSvMJiR62denHc38fMMV4/eH
	64t5YjC0QO/W2zS2TC0JL0kvOFnBWPZHF9jcRRykf+l27iFAt+a8QrveFiHX9863iZL5T8
	U8B4peXW0sJ3fWr0chktkJW9MxnnqjpknThCAy58LcqvYP2Hl5tWO8o1MPrnDe2CiwY4kB
	rFceVWN50zghNvXg7aWDItckZ3VYOCi66Kgx39EdPemmB5IVLoy5cxJAyZ3nxXRfCgE4Hu
	vueYJUllGCVGlcc2AVMUHXKWOdq+2JlKWCKT6HVlVrCOyb0fMOCS6SoyurqXbA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1764088931;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=RqI/He4CXhxTqt1ORMpFG3AopoID5E8hGxslNMITl9U=;
	b=omlDhUqqI0HGAMnbqE8yDvcl2p3bPEETMZA4RakZOyDhFjiNjQm864/EESg8nt/uuNgwwB
	kpjfamcMhA9S/5Dw==
To: niliqiang <ni_liqiang@126.com>, maz@kernel.org
Cc: ajones@ventanamicro.com, anup@brainfault.org, apatel@ventanamicro.com,
 atishp@atishpatra.org, bjorn@kernel.org, conor+dt@kernel.org,
 dai.hualiang@zte.com.cn, deng.weixian@zte.com.cn,
 devicetree@vger.kernel.org, frowand.list@gmail.com, guo.chang2@zte.com.cn,
 hu.yuye@zte.com.cn, krzysztof.kozlowski+dt@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, liu.qingtao2@zte.com.cn,
 liu.wenhong35@zte.com.cn, ni.liqiang@zte.com.cn, ni_liqiang@126.com,
 palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org,
 saravanak@google.com, sunilvl@ventanamicro.com, wu.jiabao@zte.com.cn
Subject: Re: [PATCH v16 6/9] irqchip: Add RISC-V advanced PLIC driver for
 direct-mode
In-Reply-To: <20251125160731.4902-1-ni_liqiang@126.com>
References: <87ms4eflvt.wl-maz@kernel.org>
 <20251125160731.4902-1-ni_liqiang@126.com>
Date: Tue, 25 Nov 2025 17:42:09 +0100
Message-ID: <87qztmgj32.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Wed, Nov 26 2025 at 00:07, niliqiang wrote:
> We've noticed that PCIe enumeration order tends to vary across system reboots (for example: first
> boot showed PC08->PC06->PC10->PC07->PC11->PC09, while second boot showed
> PC09->PC06->PC08->PC11->PC07->PC10), even though the ACPI firmware consistently reports the root
> bridge sequence as PC06->PC07->PC08->PC09->PC10->PC11.
>
> In our testing, we found that adjusting the registration priority of the aplic driver seems to help
> ensure the interrupt controller initializes before PCI enumeration, leading to more consistent
> device ordering.

You're repeating yourself over and over, but you're missing the point.

The ACPI table does not provide a sequence, it provides a collection and
it's nowhere written in stone that this collection has to be processed
in order.

If you want a sequence then put dependencies into the table and be done
with it, no?

Thanks,

        tglx

