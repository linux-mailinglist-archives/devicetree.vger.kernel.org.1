Return-Path: <devicetree+bounces-12321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E020B7D8F57
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 09:13:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D90B1C209CF
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 07:13:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F826B651;
	Fri, 27 Oct 2023 07:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="XCkoYDbb";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="0GPEJyc9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DABBB64D;
	Fri, 27 Oct 2023 07:13:02 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F94A1AA;
	Fri, 27 Oct 2023 00:13:01 -0700 (PDT)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1698390779;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=48pzFigEfE7Y5axy5bcPf8T1YrV6Mt9jdZdUUrCruyY=;
	b=XCkoYDbbxdX8izcFbwr8Eqjrpz/IiZy9OFMLMIUw7C3IcXXWldxRkgIF+qkBVvurs9azkC
	VRBfNjf3U2uU3Jr8NS35HosDFVl2KEJOdkmzgT9QALLmizg63zjmrVpQKRGlgpTY4frTm8
	tGyF8vIaxbs1mBQcAqrBDz1DsKqhfOd66TLWMZ6oamJ34XQm3KEY8iOPyKm4cS5VgSpi7A
	JOLEKuh3/xAr+LDy+DBDr/iitqpzDIOye3l2r0AWUbvyp9HkLKdOwyuM7rr9EeGLVwxoaM
	Qn2NGk7BqG3q0DvssdOQ+/CSlNLrYVOhnNTxhmYe6VpKA27BQW0zdYsOBVQ0/A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1698390779;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=48pzFigEfE7Y5axy5bcPf8T1YrV6Mt9jdZdUUrCruyY=;
	b=0GPEJyc9w2S/lUYqu7AA2vKxe6BhOXt+9gTUXhCjKjqqzZFEPd3MBo+FLJYfoWdVvHFdQ4
	OUu9Wdk8ZnijuBDQ==
To: Yu Chien Peter Lin <peterlin@andestech.com>, acme@kernel.org,
 adrian.hunter@intel.com, ajones@ventanamicro.com,
 alexander.shishkin@linux.intel.com, andre.przywara@arm.com,
 anup@brainfault.org, aou@eecs.berkeley.edu, atishp@atishpatra.org,
 conor+dt@kernel.org, conor.dooley@microchip.com, conor@kernel.org,
 devicetree@vger.kernel.org, dminus@andestech.com, evan@rivosinc.com,
 geert+renesas@glider.be, guoren@kernel.org, heiko@sntech.de,
 irogers@google.com, jernej.skrabec@gmail.com, jolsa@kernel.org,
 jszhang@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-perf-users@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-sunxi@lists.linux.dev,
 locus84@andestech.com, magnus.damm@gmail.com, mark.rutland@arm.com,
 mingo@redhat.com, n.shubin@yadro.com, namhyung@kernel.org,
 palmer@dabbelt.com, paul.walmsley@sifive.com, peterlin@andestech.com,
 peterz@infradead.org, prabhakar.mahadev-lad.rj@bp.renesas.com,
 rdunlap@infradead.org, robh+dt@kernel.org, samuel@sholland.org,
 sunilvl@ventanamicro.com, tim609@andestech.com, uwu@icenowy.me,
 wens@csie.org, will@kernel.org, ycliang@andestech.com
Subject: Re: [RFC PATCH v3 RESEND 02/13] irqchip/riscv-intc: Allow large
 non-standard hwirq number
In-Reply-To: <20231023004100.2663486-3-peterlin@andestech.com>
References: <20231023004100.2663486-1-peterlin@andestech.com>
 <20231023004100.2663486-3-peterlin@andestech.com>
Date: Fri, 27 Oct 2023 09:12:59 +0200
Message-ID: <87a5s44jyc.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Mon, Oct 23 2023 at 08:40, Yu Chien Peter Lin wrote:
> Currently, the implementation of the RISC-V INTC driver uses the
> interrupt cause as hwirq and has a limitation of supporting a
> maximum of 64 hwirqs. However, according to the privileged spec,
> interrupt causes >= 16 are defined for platform use.
>
> This limitation prevents us from fully utilizing the available
> local interrupt sources. Additionally, the hwirqs used on RISC-V
> are sparse, with only interrupt numbers 1, 5 and 9 (plus Sscofpmf
> or T-Head's PMU irq) being currently used for supervisor mode.
>
> The patch switches to using irq_domain_create_tree() which

git grep "This patch" Documentation/process/

> creates the radix tree map, allowing us to handle a larger
> number of hwirqs.

Who is 'us'? We are not part of the chip and please write out 'hardware
interrupts'

> @@ -24,10 +24,8 @@ static asmlinkage void riscv_intc_irq(struct pt_regs *regs)
>  {
>  	unsigned long cause = regs->cause & ~CAUSE_IRQ_FLAG;
>  
> -	if (unlikely(cause >= BITS_PER_LONG))
> -		panic("unexpected interrupt cause");
> -
> -	generic_handle_domain_irq(intc_domain, cause);
> +	if (generic_handle_domain_irq(intc_domain, cause))
> +		pr_warn("Failed to handle interrupt (cause: %ld)\n", cause);

pr_warn_once() or at least pr_warn_ratelimited().

>  }
>  
>  /*
> @@ -117,8 +115,8 @@ static int __init riscv_intc_init_common(struct fwnode_handle *fn)
>  {
>  	int rc;
>  
> -	intc_domain = irq_domain_create_linear(fn, BITS_PER_LONG,
> -					       &riscv_intc_domain_ops, NULL);
> +	intc_domain = irq_domain_create_tree(fn, &riscv_intc_domain_ops,
> +					     NULL);

Put it into one line. Linebreaking arguments is really only required
when the line length is exceedingly long. This one is not.


