Return-Path: <devicetree+bounces-139652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B74E3A167CE
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 08:59:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6AA1B188293D
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 08:00:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6207E1917EB;
	Mon, 20 Jan 2025 07:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Nd9dX8IV"
X-Original-To: devicetree@vger.kernel.org
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F5B190679
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 07:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.200
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737359994; cv=none; b=nRKZodbKwYpYsQ6OH6d3X8HtOnqN4gwa5tv6WwkadryaWFwubNnoAR+BNeFCxoSVNIJLzAWzVjtc74Bo5E/h+Jc5AJ/f9flnh0d7jPKvwYkAZrsgvdhl3t4qMMb9+mQu5/nyaIaW7Ieec6Ezlr1vtPxdcbdQqmUVo6TrvmVYHfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737359994; c=relaxed/simple;
	bh=xxjgdaSrFekKd2GuwjSsoOxFEvLxAJwNyHb1Kn7XhAs=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BObL5JukieTNSktvgwlDxfRjt1qx0mAefeLCijWGGcZeOL0lWXUEHlld7MiGnmTq2mtHQPs9F/DryGx4qTJb4N/bDLoCBCXTEkoPSvM9yucXxeWz1ImjOZA88gSAXSsg/O836SkbPT55Sy16JP074jIRtsSPC2lrNMeN75tCS2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Nd9dX8IV; arc=none smtp.client-ip=217.70.183.200
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 2B5BA20004;
	Mon, 20 Jan 2025 07:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1737359981;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=r93WodtBM0brBEyryxMY6tgcrQ4E84ljww2FK8nR7r8=;
	b=Nd9dX8IVi6ORv8DQftpHS2EyDhLnYWz4TpMMuLMl9r/saMiUqwOcYGG/jjtedjA9tHoWHj
	x+qA27lLMZ7cSjeugCZ1K+wOHXSQDh+7mV9QknqHJuo7IdZbSXPScqoNPxVwU/ysYcUh2/
	fQ4zZF/wFgDkOZd8yz1dcKxc6Za58CBgYP20TPf0Tnj1xv/n/XVYEQ03xaKp7GWH7jym1y
	MW8fGFs78uKFfVdP5w8GEvp3zOsJfyXVy4cFkar7L45MBr5bLTaOuW887EEFUpVS46vFgR
	R8qFPZAJGxHVgcQ9tOtguiS+rYZRe3yqj+TEVcCbbGayVX+HWWwBwPdfc54wfQ==
Date: Mon, 20 Jan 2025 08:59:39 +0100
From: Herve Codina <herve.codina@bootlin.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham
 I <kishon@kernel.org>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 2/3] irqchip: LAN966X_OIC should depend on
 MFD_LAN966X_PCI
Message-ID: <20250120085939.1a559304@bootlin.com>
In-Reply-To: <84393e59efa7a76b89d4164fd64ca85b8739f6ee.1737118595.git.geert+renesas@glider.be>
References: <cover.1737118595.git.geert+renesas@glider.be>
	<84393e59efa7a76b89d4164fd64ca85b8739f6ee.1737118595.git.geert+renesas@glider.be>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com

Hi Geert,

On Fri, 17 Jan 2025 14:04:37 +0100
Geert Uytterhoeven <geert+renesas@glider.be> wrote:

> The Microchip LAN966x outband interrupt controller is only present on
> Microchip LAN966x SoCs, and only used in PCI endpoint mode.  Hence add a
> dependency on MCHP_LAN966X_PCI, to prevent asking the user about this
> driver when configuring a kernel without Microchip LAN966x PCIe support.
> 
> Fixes: 3e3a7b35332924c8 ("irqchip: Add support for LAN966x OIC")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> v2:
>   - Drop dependency on SOC_LAN966, as the OIC is used only in LAN966x
>     PCI endpoint mode,
>   - Replace MFD_LAN966X_PCI by MCHP_LAN966X_PCI, as the latter is the
>     symbol that ended upstream.
> ---
>  drivers/irqchip/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 

Thanks for this patch!

Acked-by: Herve Codina <herve.codina@bootlin.com>

Best regards,
Hervé

