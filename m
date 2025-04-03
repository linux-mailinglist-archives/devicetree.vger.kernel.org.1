Return-Path: <devicetree+bounces-162987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D20D2A7A8E7
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 19:51:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1FF651781DF
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 17:50:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C198252907;
	Thu,  3 Apr 2025 17:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEWoXS8y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241D5250C16;
	Thu,  3 Apr 2025 17:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743702613; cv=none; b=OlOMd/7NyAqHxcJKV6IyDKplIOjfLQ3QPHU/WlkL+Q7NYMGwvDhcMg/Nm7Kv5bAtWJf9Zq6/AL80SxARN+bxQwKjnQStolqKy/P792fCRvo5uvvJMNpJlMMRQv7RsFQ4rxXyAKIdaGWtDBf7QCaEP42N5+6OV0bG1LR7h+qOrOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743702613; c=relaxed/simple;
	bh=UPGMlSF/FpTS0gjQBFwpi/aCoqZhru+VpIxxEDgIdLI=;
	h=Date:Message-ID:From:To:Cc:Subject:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NLR1aos9ZWUZrj6/GH8iKZnvJY7BjzF6hEIHF+8jFnjrCYIyPMXOb4XaUOMHWeZ71IsBUyBtvhGrNImIqQv18yxQ/UM/29pnQeTxXAxWvH/CcPdxNlNoi7qRVKhvHpst3AZeeJCvEGXZZqpS/wPmvjgOkoGs+IcPJ1nONMxFfYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEWoXS8y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85771C4CEE3;
	Thu,  3 Apr 2025 17:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743702612;
	bh=UPGMlSF/FpTS0gjQBFwpi/aCoqZhru+VpIxxEDgIdLI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=oEWoXS8y3UmyKJpgkuIIsrxk5K4An9PBriFGth1yrBYy779+IfJV2I03pxIyeiMmd
	 G7Lru65enhHMrC/Wnx5vSVhuV5qEl5WochlbZiqrgmOXSkREVPGFIu/vNM9UYBgpon
	 +dnjB6bnPDIlWGDAerxUvFwlpZQI61VUH6OOoIvog8Hs99r/xo6WkVjpC1DN36QBzd
	 MrBKYJyNYm6bIaGXviKy5Li+OQhOd8/IglAKk6PG+0eP36R/Opz3b9PTHiO8S1+oTI
	 PtTvza/cAW9Q3KpIxIdsTY1MTzLBe5DMdNH+v++0ug3gHUshvVoDLYpa0r0P9EeMCl
	 kyjfG2XMT6jqA==
Received: from sofa.misterjones.org ([185.219.108.64] helo=lobster-girl.misterjones.org)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <maz@kernel.org>)
	id 1u0Ohe-0022Kw-1K;
	Thu, 03 Apr 2025 18:50:10 +0100
Date: Thu, 03 Apr 2025 18:50:12 +0100
Message-ID: <8734epyw17.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Christian Bruel <christian.bruel@foss.st.com>
Cc: <tglx@linutronix.de>,
	<robh@kernel.org>,
	<krzk+dt@kernel.org>,
	<conor+dt@kernel.org>,
	<mcoquelin.stm32@gmail.com>,
	<alexandre.torgue@foss.st.com>,
	<linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>,
	<linux-stm32@st-md-mailman.stormreply.com>
Subject: Re: [PATCH 2/3] irqchip/gic: Use 0x10000 offset to access GICC_DIR on STM32MP2
In-Reply-To: <20250403122805.1574086-3-christian.bruel@foss.st.com>
References: <20250403122805.1574086-1-christian.bruel@foss.st.com>
	<20250403122805.1574086-3-christian.bruel@foss.st.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL-LB/10.8 EasyPG/1.0.0 Emacs/30.1
 (aarch64-unknown-linux-gnu) MULE/6.0 (HANACHIRUSATO)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
X-SA-Exim-Connect-IP: 185.219.108.64
X-SA-Exim-Rcpt-To: christian.bruel@foss.st.com, tglx@linutronix.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false

On Thu, 03 Apr 2025 13:28:04 +0100,
Christian Bruel <christian.bruel@foss.st.com> wrote:
> 
> When GIC_4KNOT64K bit in the GIC configuration register is
> 0 (64KB), address block is modified in such a way than only the
> first 4KB of the GIC cpu interface are accessible with default
> offsets.
> With this bit mapping GICC_DIR register is accessible at
> offset 0x10000 instead of 0x1000, thus remap accordingly

And I'm pretty sure the whole of the GICC range is correctly
accessible at offset 0xF000, giving you the full 8kB you need. That's
because each page of the GIC is aliased over two 64kB blocks, as per
the integration guidelines so that MMU isolation can be provided on a
64kB boundary.

Funnily enough, all it takes is to adjust GICC region. You can either:

- make it 128kB wide, and the driver will take care of it (details in
  gic_check_eoimode()). On one of my boxes that is similarly
  configured, I get:

  [    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
  [    0.000000] GIC: Adjusting CPU interface base to 0x00000000780af000
  [    0.000000] Root IRQ handler: gic_handle_irq
  [    0.000000] GIC: Using split EOI/Deactivate mode

  See below for what I expect to be the correct fix.
  
- make it 8kB wide from offset 0xF000.

Unless the ST HW folks have been even more creative, none of this
overly complicated stuff should be necessary. Just describe the HW
correctly.

	M.

diff --git a/arch/arm64/boot/dts/st/stm32mp251.dtsi b/arch/arm64/boot/dts/st/stm32mp251.dtsi
index f3c6cdfd7008..97b7a7106a02 100644
--- a/arch/arm64/boot/dts/st/stm32mp251.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp251.dtsi
@@ -120,7 +120,7 @@ intc: interrupt-controller@4ac00000 {
 		#address-cells = <1>;
 		interrupt-controller;
 		reg = <0x0 0x4ac10000 0x0 0x1000>,
-		      <0x0 0x4ac20000 0x0 0x2000>,
+		      <0x0 0x4ac20000 0x0 0x20000>,
 		      <0x0 0x4ac40000 0x0 0x2000>,
 		      <0x0 0x4ac60000 0x0 0x2000>;
 	};

-- 
Jazz isn't dead. It just smells funny.

