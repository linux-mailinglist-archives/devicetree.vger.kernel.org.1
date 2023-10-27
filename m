Return-Path: <devicetree+bounces-12354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B41947D907B
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 09:59:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6A06F281FBF
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 07:59:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEF9E8F7E;
	Fri, 27 Oct 2023 07:59:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="U3KBVLxE";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="p+PouVqq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1E921171E
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:59:43 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B300111;
	Fri, 27 Oct 2023 00:59:42 -0700 (PDT)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1698393580;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=aOK7A0+CdflYOBnvO1eKKbv3VLmXZEl1oDj0wejWb7w=;
	b=U3KBVLxElVmocznmPNDgJZtMo4VLmm2nd4LaDnabibfZIjHeIXVWV6H/8HzLdMtAdQXCi5
	DzyHMeICFUFGqr6AK5eZ8Uv49cXILfyzxHIzbyoZR4U6oi8+jRb79gYZQReiG7Hg1Bvjt4
	7aknQauCBlKL3NR3GyI7Ixp+b2fxXQXqUvkY0eU2a+L/Pi4pSbhQByPWlkKn7326JhAeQ8
	2+1iwInpzWBCPbVzI0uXAXKj2CBvOP6bvgVZ/cZPcY2Kenz99llr0oYsEMphhc3aWOJUt+
	hkxUoE/TMxHOkgCGYNLQXKQEB5rcZ1yaLRniTeo/6xWPCqZYuH9ilqHnRaUQrw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1698393580;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=aOK7A0+CdflYOBnvO1eKKbv3VLmXZEl1oDj0wejWb7w=;
	b=p+PouVqqHVKIXhO4ioC+yLKjjEE/QX88ImmuCIA9EcgteoMBReRCHxJhi3s8GuV2dIYbqI
	JMnXP5hdx90+uDBQ==
To: Anup Patel <apatel@ventanamicro.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Marc Zyngier <maz@kernel.org>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Atish Patra
 <atishp@atishpatra.org>, Andrew
 Jones <ajones@ventanamicro.com>, Sunil V L <sunilvl@ventanamicro.com>,
 Saravana Kannan <saravanak@google.com>, Anup Patel <anup@brainfault.org>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Anup Patel <apatel@ventanamicro.com>, Atish
 Patra <atishp@rivosinc.com>
Subject: Re: [PATCH 1/3] RISC-V: Don't fail in riscv_of_parent_hartid() for
 disabled HARTs
In-Reply-To: <20231025142820.390238-2-apatel@ventanamicro.com>
References: <20231025142820.390238-1-apatel@ventanamicro.com>
 <20231025142820.390238-2-apatel@ventanamicro.com>
Date: Fri, 27 Oct 2023 09:59:40 +0200
Message-ID: <87y1fo3383.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Wed, Oct 25 2023 at 19:58, Anup Patel wrote:
> The riscv_of_processor_hartid() used by riscv_of_parent_hartid() fails
> for HARTs disabled in the DT. This results in the following warning
> thrown by the RISC-V INTC driver for the E-core on SiFive boards:
>
> [    0.000000] riscv-intc: unable to find hart id for /cpus/cpu@0/interrupt-controller
>
> The riscv_of_parent_hartid() is only expected to read the hartid from
> the DT so we should directly call of_get_cpu_hwid() instead of calling

We should? Or maybe not?

Please write precise changelogs and use imperative wording as documented
in Documentation/process.

