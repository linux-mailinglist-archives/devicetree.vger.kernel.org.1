Return-Path: <devicetree+bounces-42013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EACE856210
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 12:48:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C77AE1F26941
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 11:48:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF6ED12BE85;
	Thu, 15 Feb 2024 11:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPYNgNP3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9855812B17C;
	Thu, 15 Feb 2024 11:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707997670; cv=none; b=pr5uwrVRKSSbkVPHwua8pOwRzPWMxvw2Q2sux0W49172FgmtpKNt1Ih2oiUjzAMIXeyY/hPuANdd3guLuyeedIvXEKYmKi/p1PiXTvGUBjEPDw7GS9lhgfIbwlguLc/os+17tNW4LO0CTwnPTA7yiqSJcJ1/X03eCBr1iEYnc28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707997670; c=relaxed/simple;
	bh=IvhtK4NnjopFMtWUJDl89y51jh2nXTnQDnXwhvzRRts=;
	h=Date:Message-ID:From:To:Cc:Subject:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YZLmuMp2fJpj92SbDQgArcyWpPBgu5869Vxyk6ckIRKt+8zqWF0071QKMBfP7c7Xg+WUiiQXD00ar25Vd4/J9EyoF72LCUVivtLwfd+RV0ekUaKPj9voyrGAXyWC5pQ78rzOffYS9ysKRAo4mT7gU3yBQLZCmnbW7VPhBbOxd+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPYNgNP3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DA8CC43390;
	Thu, 15 Feb 2024 11:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707997670;
	bh=IvhtK4NnjopFMtWUJDl89y51jh2nXTnQDnXwhvzRRts=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=EPYNgNP3iDA5jyXFdr3i5AMJjnDbD2fVqsKizWPxyDdTn41VHa7W4ym6b6zPcrQWG
	 oeP0yUCaD5B8i2jNYmqDc8VHWFS+329nYZx1r5K4ra4UPVoMgGNkzlVQhYZXYB2rj0
	 6zlVKmy9RhJ4oHnYCOKodqr2AC46XNiH31ZUSOg8MJKjqdTucUO4yj2cN+eER4Rgrm
	 QUfAqlw/07CiLojlOv+KR61lV5iTczboDOuvNQbfoXvRk4dngMIKQAcSLevJQOYNak
	 mlUhgcuJ3gtQ3Ek0C0WZ8GiAQsa4va0/1NsZzcfteoRrapSMt3UDh65s1BjC++VyWU
	 K0YwJRlhRhIUQ==
Received: from sofa.misterjones.org ([185.219.108.64] helo=goblin-girl.misterjones.org)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <maz@kernel.org>)
	id 1raaDT-003Tve-Iq;
	Thu, 15 Feb 2024 11:47:47 +0000
Date: Thu, 15 Feb 2024 11:47:46 +0000
Message-ID: <86plwy3q59.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,	Paul Walmsley
 <paul.walmsley@sifive.com>,	Thomas Gleixner <tglx@linutronix.de>,	Rob
 Herring <robh+dt@kernel.org>,	Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>,	Frank Rowand <frowand.list@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,	=?UTF-8?B?QmrDtnJuIFTDtnBlbA==?=
 <bjorn@kernel.org>,	Atish Patra <atishp@atishpatra.org>,	Andrew Jones
 <ajones@ventanamicro.com>,	Sunil V L <sunilvl@ventanamicro.com>,	Saravana
 Kannan <saravanak@google.com>,	Anup Patel <anup@brainfault.org>,
	linux-riscv@lists.infradead.org,	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,	devicetree@vger.kernel.org
Subject: Re: [PATCH v12 01/25] irqchip/gic-v3: Make gic_irq_domain_select() robust for zero parameter count
In-Reply-To: <20240127161753.114685-2-apatel@ventanamicro.com>
References: <20240127161753.114685-1-apatel@ventanamicro.com>
	<20240127161753.114685-2-apatel@ventanamicro.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL-LB/10.8 EasyPG/1.0.0 Emacs/29.1
 (aarch64-unknown-linux-gnu) MULE/6.0 (HANACHIRUSATO)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
X-SA-Exim-Connect-IP: 185.219.108.64
X-SA-Exim-Rcpt-To: apatel@ventanamicro.com, palmer@dabbelt.com, paul.walmsley@sifive.com, tglx@linutronix.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, frowand.list@gmail.com, conor+dt@kernel.org, bjorn@kernel.org, atishp@atishpatra.org, ajones@ventanamicro.com, sunilvl@ventanamicro.com, saravanak@google.com, anup@brainfault.org, linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false

On Sat, 27 Jan 2024 16:17:29 +0000,
Anup Patel <apatel@ventanamicro.com> wrote:
> 
> From: Thomas Gleixner <tglx@linutronix.de>
> 
> Currently the irqdomain select callback is only invoked when the parameter
> count of the fwspec arguments is not zero. That makes sense because then
> the match is on the firmware node and eventually on the bus_token, which is
> already handled in the core code.
> 
> The upcoming support for per device MSI domains requires to do real bus
> token specific checks in the MSI parent domains with a zero parameter
> count.
> 
> Make the gic-v3 select() callback handle that case.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Marc Zyngier <maz@kernel.org>

Acked-by: Marc Zyngier <maz@kernel.org>

	M.

-- 
Without deviation from the norm, progress is not possible.

