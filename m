Return-Path: <devicetree+bounces-12623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 359AA7DA8A5
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 20:36:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6736F1C20969
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 18:36:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00F60D26D;
	Sat, 28 Oct 2023 18:36:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="XPD1tQNe";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="M3mwqGYR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E06F33C7
	for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 18:36:25 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54D68ED;
	Sat, 28 Oct 2023 11:36:24 -0700 (PDT)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1698518182;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=y+JcIxwCXoDSqf+artDzmxw4NchEsdASLJbThyKqdKo=;
	b=XPD1tQNetxvEMQ5Fs4mzhtA/G5HWxqiD9ADxCIt7lYfraNqzOMel6WUxppBbqdi0bgI8aZ
	3rPQzNZs9PUl2jp/jDJY2L4QntS1kpl91bgcoQ8MwxMNYCKU40QO7P9NsDtqVkoHPAClvL
	l9Ypj6JGrlL6oh82hFpbPRFKtkzuzehhR65XTPO0nAGcN9vge7E/sYR1ZlCZlBdTUGXvum
	fYXhCUPu6U1EscBv3oubTAhyVMdv3h8CHa+y5E4EtnPUo0zDFZy+A0MI5NJV9UW1cJ1lan
	V7JKOjHUv+9AL7BsjcQiBzM9/OdO3TClZ5ZNgh66xWjZ4stz3rc6q78CJ+tyyQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1698518182;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=y+JcIxwCXoDSqf+artDzmxw4NchEsdASLJbThyKqdKo=;
	b=M3mwqGYRAOI6KGdDqVCILcqh8Ql5h8OW+P1CEwmVfh4n9f9Nn8Lo5wD7FszZtGyZKCGF0j
	WXB1fuwq/1Jxa9Bw==
To: =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Anup Patel
 <apatel@ventanamicro.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand
 <frowand.list@gmail.com>, Conor Dooley <conor+dt@kernel.org>, Marc Zyngier
 <maz@kernel.org>, Atish Patra <atishp@atishpatra.org>, Andrew Jones
 <ajones@ventanamicro.com>, Sunil V L <sunilvl@ventanamicro.com>, Saravana
 Kannan <saravanak@google.com>, Anup Patel <anup@brainfault.org>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v11 09/14] irqchip/riscv-imsic: Add support for PCI MSI
 irqdomain
In-Reply-To: <87jzrbf5cw.fsf@all.your.base.are.belong.to.us>
References: <20231023172800.315343-1-apatel@ventanamicro.com>
 <20231023172800.315343-10-apatel@ventanamicro.com>
 <8734y0rwtw.fsf@all.your.base.are.belong.to.us>
 <CAK9=C2UVgTd-a0671Lab_ZeOPWP3=wHY+pydKHqaR-Yg65YhrA@mail.gmail.com>
 <87jzrbf5cw.fsf@all.your.base.are.belong.to.us>
Date: Sat, 28 Oct 2023 20:36:22 +0200
Message-ID: <87y1fmzja1.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 25 2023 at 10:55, Bj=C3=B6rn T=C3=B6pel wrote:
>> Now for IMSIC-PCI domain, the PCI framework expects the
>> pci_msi_mask/unmask_irq() functions to be called but if
>> we directly point pci_msi_mask/unmask_irq() in the IMSIC-PCI
>> irqchip then IMSIC-BASE (parent domain) irq_mask/umask
>> won't be called hence the IRQ won't be masked/unmask.
>> Due to this, we call both pci_msi_mask/unmask_irq() and
>> irq_chip_mask/unmask_parent() for IMSIC-PCI domain.
>
> Ok. I wont dig more into it for now! If the interrupt is disabled at
> PCI, it seems a bit overkill to *also* mask it at the IMSIC level...

Only _if_ the device provides MSI masking, but that extra mask/unmask is
not the end of the world.

Thanks,

        tglx

