Return-Path: <devicetree+bounces-12682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BC87DAE10
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 20:53:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0D0C4B20CC2
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 19:53:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9345010A26;
	Sun, 29 Oct 2023 19:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYRXQ30H"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDB41078D
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 19:53:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46471C433C8;
	Sun, 29 Oct 2023 19:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698609208;
	bh=lmudrSFAHZUzHPWgKrth9d+IMU9R0eRDc3eGd1MXJC4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=BYRXQ30H7zG0VuXvZAImgIlhy7I8o0cO6u74yfM2MHH0xc7shZ1zPeV2NrW/FjYxm
	 i4M3G+IwBNXrgeZp3ir7RiYdAXCQ21w9+g2mLWKgb4yZLNGvf15tGfJJ8JL5yaPcEq
	 qBB0vaSNa3IHDUzD7YZPYbnbbfWpmSVIikUNp0bt+QECZyY+Cvos8qOifeaL0DKm8V
	 B8G6oz2+1L1rKMk4wfU5chSopqlaNhyqJQrmmQ6EM1kahfNdN2MaPEIqrYWIKZinDD
	 UXmf+XJb9cuLyPTCuIg838uJhSmMdiQHs5+J8kT0pLfy4AXYne4Dm49zDSNV8mDFwo
	 9nksLDpGRohlw==
From: =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>, Anup Patel <apatel@ventanamicro.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand
 <frowand.list@gmail.com>, Conor Dooley <conor+dt@kernel.org>, Marc Zyngier
 <maz@kernel.org>, Atish Patra <atishp@atishpatra.org>, Andrew Jones
 <ajones@ventanamicro.com>, Sunil V L <sunilvl@ventanamicro.com>, Saravana
 Kannan <saravanak@google.com>, Anup Patel <anup@brainfault.org>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v11 09/14] irqchip/riscv-imsic: Add support for PCI MSI
 irqdomain
In-Reply-To: <87y1fmzja1.ffs@tglx>
References: <20231023172800.315343-1-apatel@ventanamicro.com>
 <20231023172800.315343-10-apatel@ventanamicro.com>
 <8734y0rwtw.fsf@all.your.base.are.belong.to.us>
 <CAK9=C2UVgTd-a0671Lab_ZeOPWP3=wHY+pydKHqaR-Yg65YhrA@mail.gmail.com>
 <87jzrbf5cw.fsf@all.your.base.are.belong.to.us> <87y1fmzja1.ffs@tglx>
Date: Sun, 29 Oct 2023 20:53:25 +0100
Message-ID: <87bkchfbnu.fsf@all.your.base.are.belong.to.us>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thomas Gleixner <tglx@linutronix.de> writes:

> On Wed, Oct 25 2023 at 10:55, Bj=C3=B6rn T=C3=B6pel wrote:
>>> Now for IMSIC-PCI domain, the PCI framework expects the
>>> pci_msi_mask/unmask_irq() functions to be called but if
>>> we directly point pci_msi_mask/unmask_irq() in the IMSIC-PCI
>>> irqchip then IMSIC-BASE (parent domain) irq_mask/umask
>>> won't be called hence the IRQ won't be masked/unmask.
>>> Due to this, we call both pci_msi_mask/unmask_irq() and
>>> irq_chip_mask/unmask_parent() for IMSIC-PCI domain.
>>
>> Ok. I wont dig more into it for now! If the interrupt is disabled at
>> PCI, it seems a bit overkill to *also* mask it at the IMSIC level...
>
> Only _if_ the device provides MSI masking, but that extra mask/unmask is
> not the end of the world.

Yikes -- so MSI masking is optional. Ick. :-( Thanks for the excellent
MSI vs MSI-X post in the other thread, BTW. Great stuff!

