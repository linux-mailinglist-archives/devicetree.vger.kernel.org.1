Return-Path: <devicetree+bounces-215318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE5AB511E2
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 10:57:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1425B56266C
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 08:57:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A7023115B5;
	Wed, 10 Sep 2025 08:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="vmSmM908"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A7DD3115AE
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 08:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757494618; cv=none; b=FU8b01+8X3aGnjx++3vSJOGNh+h7/y+qV7lzCDZd8GWe99Kh8D2x9ywL4nbiEFDuOnoX1zGe3kCuYseIMvUu2BPu/gaBAJ+57I7iAkWnRi93O6WPCvoyMd+Apgts4fb4jCgpF4wxAh/jTfPtNWKyOmASIP6qXXPGPyNeXAIprIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757494618; c=relaxed/simple;
	bh=RMF005p9u9dfBw7QNthPu/NejOw7XiP7uoknr3J7Uko=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=jd88LeVEYXljgCfEs2OHUHS6hYvuYIGGQqDslp6Zh2Ic4cHYA6LwCeNWc+eu9OsDWL4oY8inaC3SJBieg/JZFjK7PrUXkMMqRRva2UXQ9LAJnAWA7Tgpfn+M9g3qm8/ktuMDyPN2hoLjVoCh2zfAhVs/j30Y6VRqGauuLKFi1YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=vmSmM908; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 24FA5C6B3AC;
	Wed, 10 Sep 2025 08:56:39 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E0E72606D4;
	Wed, 10 Sep 2025 08:56:54 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C79FE102F1D2E;
	Wed, 10 Sep 2025 10:56:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1757494614; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=qo2BlmEUSD/J8v+xzmhhSNhPkQC0w+4Piainj47b+IU=;
	b=vmSmM908Ow2DoozMw2yMHS167Mej8C9ju6lL/Gg899huQ+nJBJFri8u4BDtkXL8M22LPIe
	0Ht8uTa91iphxBPGQjo3x0oGM33tLvd0o771n3UnzYqpZq82ioH3gU0+hIOssSAQFzfvUV
	F7px4NXyWWOt5UirxxI9Q02/0rCyKAarA2CSZzcKLlroxQrsjNfQJg5OqrQQIfUP0EytbY
	4KioQUzyA1b9vSF+6yZ98w9mcB5rSVlEY4S6qXoo9xj6AEAI7pd86r+G5y61WdWaClSBzb
	rvNGaTbwMSCSdyMptAn46evHaf2zgYUpErZgSemIRLBlQSYic8ROyK/1pBsarg==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Binbin Zhou <zhoubb.aaron@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Keguang Zhang <keguang.zhang@gmail.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Huacai Chen <chenhuacai@kernel.org>, Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>, 
 loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
 linux-mtd@lists.infradead.org
In-Reply-To: <cover.1756991031.git.zhoubinbin@loongson.cn>
References: <cover.1756991031.git.zhoubinbin@loongson.cn>
Subject: Re: [PATCH v4 0/7] mtd: rawnand: loongson: Add Loongson-2K nand
 controller support
Message-Id: <175749461059.461240.3393347019053494264.b4-ty@bootlin.com>
Date: Wed, 10 Sep 2025 10:56:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2
X-Last-TLS-Session-Version: TLSv1.3

On Thu, 04 Sep 2025 21:06:32 +0800, Binbin Zhou wrote:
> This patchset adds support for the Loongson-2K0500/Loongson-2K1000 NAND
> controllers, which are similar to the Loongson-1C NAND controller.
> 
> They support a maximum capacity of 16GB FLASH per chip, with a maximum
> page size of 8KB. The chip supports up to 4 chip selects and 4 RDY signals.
> 
> The key difference between the Loongson-2K NAND controllers is that the
> Loongson-2K1000 explicitly configures the DMA controller routing, while
> the Loongson-2K0500 defaults to using APBDMA0.
> 
> [...]

Applied to nand/next, thanks!

[1/7] mtd: rawnand: loongson1: Rename the prefix from ls1x to loongson
      commit: 7a1e3a452a574ef337c4c2cd9202332a1ae9cd94
[2/7] mtd: rawnand: loongson: Add 6-byte NAND ID reading support
      commit: fb1dd6b6722b5187a4fa7385d0be60b28c0f9936
[3/7] mtd: rawnand: loongson: Add nand chip select support
      commit: 7ad5bdf88d7295c295a363a5daf481b283acedc2
[4/7] dt-bindings: mtd: loongson,ls1b-nand-controller: Document the Loongson-2K0500 NAND controller
      commit: 4a2bab7ccceb14b48e86794b87104248c75aa587
[5/7] mtd: rawnand: loongson: Add Loongson-2K0500 NAND controller support
      commit: e55bbdd4a4b654dfe8ee8649b3be1db82319d6c0
[6/7] dt-bindings: mtd: loongson,ls1b-nand-controller: Document the Loongson-2K1000 NAND controller
      commit: 0b1ae6480c3be58ad31afe757cbf1069ae072bb1
[7/7] mtd: rawnand: loongson: Add Loongson-2K1000 NAND controller support
      commit: 5808ae66f22e665c7131816e146548f2d7903ae1

Patche(s) should be available on mtd/linux.git and will be
part of the next PR (provided that no robot complains by then).

Kind regards,
Miquèl


