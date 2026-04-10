Return-Path: <devicetree+bounces-286528-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wG+7ChQL2WnnlQgAu9opvQ
	(envelope-from <devicetree+bounces-286528-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 16:37:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFC73D8B80
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 16:37:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F09223011159
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 14:37:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 233353D413B;
	Fri, 10 Apr 2026 14:37:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyKzbjNn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00C5C3D2FFD;
	Fri, 10 Apr 2026 14:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775831826; cv=none; b=kNl5tlpwFWxqIqbQE4YtBl4/1NQpXHo3d66eLzcl9vidOO0VfsLOBmv+LC/RdaweKjO2WlnVCYU6MTtaaBvyJmUK/kc13vVk0YXBztzwKhOXjelqAocwhgTRYCVh0e6lEqOliyR04IdXsMD8qg/CpzpovJ9m72n0s4sjOF/ANIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775831826; c=relaxed/simple;
	bh=lIPy10seU4u6dXsty190ZSW7/g5QTmitfsih214NoVk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=XzvMk53cXzIaehBdEuL6Bw8eZyAuceP+5SXwAYRUjIzQ14xUjiN/vOK4mSLSqepjgxn2rawrBwLz70XiRsGlDpIJdBJHX/1ac7a/ZfSqn59Mlg/FoP7kwfq03Toe6nTLssOTHgDK2jrxKhSvG7e/XGfsBWxpgpDqeGK304q0wLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyKzbjNn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7D06C2BC87;
	Fri, 10 Apr 2026 14:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775831825;
	bh=lIPy10seU4u6dXsty190ZSW7/g5QTmitfsih214NoVk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=UyKzbjNn66GEdbJqVrbPMv7CyLVNPazndTrSz+P4e0qN6uRb4EHUnrKH9qEYBTURK
	 whoeDOK8e/ItAp/cFxz5jn+8fMaRPD0yfdN5QZLTVV6sCgzzkAKtQrt8HyhLpaRfmS
	 8KOULMvM6l88OtOcunsXZNdVdaT6flJZ1GQYxCVI3x34zAfusBnUH62WhVrB3QksyD
	 AsvW21nshwfq7VJyTaUKD0K3CyHDKCA2vzyeGOI0Ur3ZCUdq0dKQjhdLziz4kcmJWQ
	 eYWdyxeFFz0Lz8BvhjDAAiTiwsamKku9/YuyEVNK+9zqiDIAkTh15zrDH0OUjdf5nB
	 CvDUqRl7Yi3zA==
From: Thomas Gleixner <tglx@kernel.org>
To: Changhuang Liang <changhuang.liang@starfivetech.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, Ley Foon Tan
 <leyfoon.tan@starfivetech.com>, Changhuang Liang
 <changhuang.liang@starfivetech.com>
Subject: Re: [PATCH v1 4/5] irqchip: starfive: Increase the interrupt source
 number up to 64
In-Reply-To: <20260410090106.622781-5-changhuang.liang@starfivetech.com>
References: <20260410090106.622781-1-changhuang.liang@starfivetech.com>
 <20260410090106.622781-5-changhuang.liang@starfivetech.com>
Date: Fri, 10 Apr 2026 16:37:02 +0200
Message-ID: <877bqe286p.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spamd-Result: default: False [4.34 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-286528-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tglx@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BBFC73D8B80
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 10 2026 at 02:01, Changhuang Liang wrote:

> From: Mason Huo <mason.huo@starfivetech.com>
>
> StarFive JHB100 SoC interrupt controller actually supports 64 interrupt
> sources, the original code only supported up to 32. now it is extended
> to 64.
>
> Signed-off-by: Mason Huo <mason.huo@starfivetech.com>
> Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>
> ---
>  drivers/irqchip/irq-starfive-jhb100-intc.c | 43 ++++++++++++++--------
>  1 file changed, 28 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/irqchip/irq-starfive-jhb100-intc.c b/drivers/irqchip/irq-starfive-jhb100-intc.c
> index 312a4634870a..d5ecbb603a58 100644
> --- a/drivers/irqchip/irq-starfive-jhb100-intc.c
> +++ b/drivers/irqchip/irq-starfive-jhb100-intc.c
> @@ -18,10 +18,11 @@
>  #include <linux/reset.h>
>  #include <linux/spinlock.h>
>  
> -#define STARFIVE_INTC_SRC0_CLEAR	0x10
> -#define STARFIVE_INTC_SRC0_MASK		0x14
> -#define STARFIVE_INTC_SRC0_INT		0x1c
> +#define STARFIVE_INTC_SRC_CLEAR(n)	(0x10 + ((n) * 0x20))
> +#define STARFIVE_INTC_SRC_MASK(n)	(0x14 + ((n) * 0x20))
> +#define STARFIVE_INTC_SRC_INT(n)	(0x1c + ((n) * 0x20))
>  
> +#define STARFIVE_INTC_NUM		2
>  #define STARFIVE_INTC_SRC_IRQ_NUM	32
>  
>  struct starfive_irq_chip {
> @@ -53,18 +54,26 @@ static void starfive_intc_bit_clear(struct starfive_irq_chip *irqc,
>  static void starfive_intc_unmask(struct irq_data *d)
>  {
>  	struct starfive_irq_chip *irqc = irq_data_get_irq_chip_data(d);
> +	int i, bitpos;
> +
> +	i = d->hwirq / STARFIVE_INTC_SRC_IRQ_NUM;
> +	bitpos = d->hwirq % STARFIVE_INTC_SRC_IRQ_NUM;
>  
>  	raw_spin_lock(&irqc->lock);
> -	starfive_intc_bit_clear(irqc, STARFIVE_INTC_SRC0_MASK, BIT(d->hwirq));
> +	starfive_intc_bit_clear(irqc, STARFIVE_INTC_SRC_MASK(i), BIT(bitpos));
>  	raw_spin_unlock(&irqc->lock);
>  }

As you are touching this code, please convert the locking to guard()

  	guard(raw_spinlock)(&irqc->lock);
	starfive_intc_bit_clear(irqc, STARFIVE_INTC_SRC0_MASK, BIT(d->hwirq));


> +	for (i = 0; i < STARFIVE_INTC_NUM; i++) {

  for (int i = 0; ...)

Thanks,

        tglx

