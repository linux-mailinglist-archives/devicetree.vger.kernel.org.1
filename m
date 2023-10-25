Return-Path: <devicetree+bounces-11984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0607D74FD
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 21:59:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4CD0E1C20C57
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 19:59:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F85D328A6;
	Wed, 25 Oct 2023 19:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="UfFMIM7e";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="UAS7JqC/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21BE2D631
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 19:59:18 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C705F93;
	Wed, 25 Oct 2023 12:59:17 -0700 (PDT)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1698263956;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=sT6BK5Z8FPdXb0R3Y4NYE9GeqC6Wv7eahDU+D60e1Ps=;
	b=UfFMIM7eQiozcUjqpRZh5qaxkLEq8/25fz8PmjlZuV6PIoFovao2Bbs1sW3O6KSyMaSrGK
	YZGvmLN3vsXfmUYzVQ6BV1J674CzA1EDPI1HwadW711XopPlJD2r2UmR0G3a313p3h9l19
	IZYw4JC/qYr0vkr0mwcrKY+gW5ZmopG2f1htxgsLdH/O5PadMrsoCiT4c7SXFw79gqTios
	YV9lR8jbxXDjU3KhWoNYZy0dj5Es19ds0W3hoOHQMb8ll/4qLnZyKrJTzggDTqG83UARCI
	MjbvIPxf3DCmqYONVcFQFnJUM6wSAKq8p+Gx83HGq/ybjtRGujc4q3EeQ3aKqA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1698263956;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=sT6BK5Z8FPdXb0R3Y4NYE9GeqC6Wv7eahDU+D60e1Ps=;
	b=UAS7JqC/0l/WnQ7ztOlbqaFHo826mHKYl/aPVpUn6S9Ppdw/RBzfQ1kws4/1EYbO9PUovO
	rJ/FsqYvfBY4irBQ==
To: Anup Patel <apatel@ventanamicro.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand
 <frowand.list@gmail.com>, Conor Dooley <conor+dt@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>, =?utf-8?B?QmrDtnJuIFTDtnBlbA==?=
 <bjorn@kernel.org>, Atish
 Patra <atishp@atishpatra.org>, Andrew Jones <ajones@ventanamicro.com>,
 Sunil V L <sunilvl@ventanamicro.com>, Saravana Kannan
 <saravanak@google.com>, Anup Patel <anup@brainfault.org>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Anup Patel <apatel@ventanamicro.com>
Subject: Re: [PATCH v11 09/14] irqchip/riscv-imsic: Add support for PCI MSI
 irqdomain
In-Reply-To: <20231023172800.315343-10-apatel@ventanamicro.com>
References: <20231023172800.315343-1-apatel@ventanamicro.com>
 <20231023172800.315343-10-apatel@ventanamicro.com>
Date: Wed, 25 Oct 2023 21:59:15 +0200
Message-ID: <87bkcm5v8s.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Mon, Oct 23 2023 at 22:57, Anup Patel wrote:
> The Linux PCI framework requires it's own dedicated MSI irqdomain so
> let us create PCI MSI irqdomain as child of the IMSIC base irqdomain.

Same here. Please don't add new incarnations of that and switch over to
per device MSI domains which is the most future proof mechanism.

Thanks,

        tglx


