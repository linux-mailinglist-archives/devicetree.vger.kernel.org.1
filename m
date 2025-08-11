Return-Path: <devicetree+bounces-203413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E51B213DA
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 20:10:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A71A91906C1D
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 18:10:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D67E2D6E59;
	Mon, 11 Aug 2025 18:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="XPD/ANhg"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C76022D6E55
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 18:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754935797; cv=none; b=ahdfUvAF90LfGQSvxveRlPPxX8awiAcios1cdBr6ZVJ+75ZLugZmMFwomD7U1JajBBNaMDowiayZFbCdZ4Ir4KNaK/7fZuOGP8D4TQsB0xpNSGA87HbrDdKkaTTlgbTm53Que4YGndhhfhufH/NO6Ql+SZdOymEIVh8+D6+Kvkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754935797; c=relaxed/simple;
	bh=IHfWofOH+O8x7iEleneRbecji0kLTS0PrMQu3tYrRws=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jeEnXHF/YEu5cpcFYicg+LSHUdzVZkpnMq8FuMcpSSWMFRh+G7ayQ4/kkNMJ2+gZZVckG5UO/p7NTkU4JXMSXotCKgeZ/M/qUj8xXuA9YDvjYizZ/Wo5NZbKEvSn5t6tYzOlto+iQeqdDIOtEksLiIxjEiH85+Tg4lGuXXf+n7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=XPD/ANhg; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 669D122D9F;
	Mon, 11 Aug 2025 20:09:54 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eLziFljdYo3b; Mon, 11 Aug 2025 20:09:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1754935793; bh=IHfWofOH+O8x7iEleneRbecji0kLTS0PrMQu3tYrRws=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=XPD/ANhgW9xWWTr4p+xWiPkL5CU9ohz8GwQIi0EKiAQOwkZOxWoZGbq/6ydmL3fYk
	 tRJQ6qyoq9mbBlqh0+sNevKPhCuAS0+D4xc5g+gqt2ol4dv4RuWc4F9GGcytrizENA
	 47wdzaLjJi6/ThRQEKxVUlyWBv/Hxsg5RwUyRT/1rsqDNRbpIcEfY8SBZCCZkIZIK2
	 3Pto6QtDaCXcpdeaSQBqmP3ySp2unP9RcRmelgtT2Ih1AJoQvMODaO7ezwazBrJPFQ
	 gCtlM6g71MbHBbBi8InA+blfhNRg7xrYrVM+1DoCnCD8msEgk5ADA5UKDWBPdZ9UMg
	 9j83PhPZt+EUA==
Date: Mon, 11 Aug 2025 18:09:45 +0000
From: Yao Zi <ziyao@disroot.org>
To: Binbin Zhou <zhoubinbin@loongson.cn>,
	Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Keguang Zhang <keguang.zhang@gmail.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>
Cc: Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>,
	loongarch@lists.linux.dev, devicetree@vger.kernel.org,
	linux-mtd@lists.infradead.org
Subject: Re: [PATCH v2 6/8] mtd: rawnand: loongson: Add Loongson-2K0500 NAND
 controller support
Message-ID: <aJox6R9eCZ5vSc7H@pie>
References: <cover.1754890670.git.zhoubinbin@loongson.cn>
 <89732d64415077ecd9f74c5853c542e62c0dfe26.1754890670.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <89732d64415077ecd9f74c5853c542e62c0dfe26.1754890670.git.zhoubinbin@loongson.cn>

On Mon, Aug 11, 2025 at 02:03:13PM +0800, Binbin Zhou wrote:
> The Loongson-2K0500 NAND controller is similar to the Loongson-1C.
> 
> It supports a maximum capacity of 16GB FLASH per chip with a maximum
> page size of 8KB, and it supports up to 4 chip selects and 4 RDY
> signals.
> 
> Its DMA controller is defaulted to APBDMA0.
> 
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  drivers/mtd/nand/raw/Kconfig                  |  2 +-
>  .../mtd/nand/raw/loongson-nand-controller.c   | 55 ++++++++++++++++++-
>  2 files changed, 54 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
> index d9e3f13666ac..7b0c5d06aa95 100644
> --- a/drivers/mtd/nand/raw/Kconfig
> +++ b/drivers/mtd/nand/raw/Kconfig
> @@ -464,7 +464,7 @@ config MTD_NAND_NUVOTON_MA35
>  
>  config MTD_NAND_LOONGSON
>  	tristate "Loongson NAND controller"
> -	depends on LOONGSON1_APB_DMA || COMPILE_TEST
> +	depends on LOONGSON1_APB_DMA || LOONGSON2_APB_DMA || COMPILE_TEST

Why is this dependency necessary? I think the DMA operations are done
through DMAengine API, and thus the consumer decouples with the DMA
provider. If so, I think the depends line should be removed, instead of
extended.

Regards,
Yao Zi

>  	select REGMAP_MMIO
>  	help
>  	  Enables support for NAND controller on Loongson family chips.

