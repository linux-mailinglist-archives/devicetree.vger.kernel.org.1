Return-Path: <devicetree+bounces-12546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C5E7D9F3E
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 20:02:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9CC6E282474
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 18:02:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62DFA3B781;
	Fri, 27 Oct 2023 18:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="Cnym3aE/";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="/Bh6SXcT"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D17C539848
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 18:02:33 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79F32F3;
	Fri, 27 Oct 2023 11:02:32 -0700 (PDT)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1698429751;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=275/pEO9JSbT2rFQuOaMcx49ECFedNGNEcjTI6T5tHQ=;
	b=Cnym3aE/MF04lGmNEJ/rj7eiBbiNdk+shih3rRLBMz4VyD7Zf6m1qZDw33ZcSbXjM994/L
	n6Rk+EubSPDLkicm+IKTuemcD7T8eF0mb/zrxvI+QurSlI361oSl3j+xaEd6NM99jeC5B8
	vMv4AuFABxjznTyXaVjxyUEe1ArpgGvLfaSMkxV6XDOPgKQq5x8woyBt3MSK8YJuynjHH9
	8K2qLSMgNUeq97IGvbfvvb9fxKIOjlvJYPkka+EN7oiFdT16YioWtxK3lhrz55Id3XsN8+
	zGmxT6zssPwUwkJaR3y/SKHilgsR0nI87zc6lfm32GtrGP9ssWa+b26zRKP71A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1698429751;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=275/pEO9JSbT2rFQuOaMcx49ECFedNGNEcjTI6T5tHQ=;
	b=/Bh6SXcTZYFvCff2EuZ0kRFjPMNMy5Z1grSfncXKCX8u1pJkSJwkiFCPhQ/sQo7G+WpZwX
	zz0lNb02UgKn53AQ==
To: Claudiu <claudiu.beznea@tuxon.dev>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 geert+renesas@glider.be, magnus.damm@gmail.com, mturquette@baylibre.com,
 sboyd@kernel.org, prabhakar.mahadev-lad.rj@bp.renesas.com
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, Claudiu
 Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: Re: [PATCH 4/7] irqchip/renesas-rzg2l: implement restriction when
 writing ISCR register
In-Reply-To: <20231023102223.1309614-5-claudiu.beznea.uj@bp.renesas.com>
References: <20231023102223.1309614-1-claudiu.beznea.uj@bp.renesas.com>
 <20231023102223.1309614-5-claudiu.beznea.uj@bp.renesas.com>
Date: Fri, 27 Oct 2023 20:02:30 +0200
Message-ID: <878r7o2bbd.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 23 2023 at 13:22, Claudiu wrote:
> In hardware manual of RZ/G2L (r01uh0914ej0130-rzg2l-rzg2lc.pdf)

This filename is completely useless.

> is available the following statement with regards to clearing
> interrupts

The RZ/G2L manual describes the operation to clear interrupts

> though ISCR register:

through the ISCR ...

>
> [Write operation]
> When "Falling-edge detection", "Rising-edge detection" or
> "Falling/Rising-edge detection" is set in ISCR.:
> - In case ISTAT is 1
> 	0: IRQn interrupt detection status is cleared.
> 	1: Invalid to write.
> - In case ISTAT is 0
> 	Invalid to write.
> When =E2=80=9CLow-level detection=E2=80=9D is set in IITSR.:
> 	Invalid to write.
>
> Thus, take into account interrupt type when clearing interrupts though

take the interrupt type into account... through the ISCR ...

> ISCR register.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
>  drivers/irqchip/irq-renesas-rzg2l.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/irqchip/irq-renesas-rzg2l.c b/drivers/irqchip/irq-re=
nesas-rzg2l.c
> index 9ce0d6d67486..1ed9cb7178fa 100644
> --- a/drivers/irqchip/irq-renesas-rzg2l.c
> +++ b/drivers/irqchip/irq-renesas-rzg2l.c
> @@ -73,11 +73,17 @@ static void rzg2l_irq_eoi(struct irq_data *d)
>  	unsigned int hw_irq =3D irqd_to_hwirq(d) - IRQC_IRQ_START;
>  	struct rzg2l_irqc_priv *priv =3D irq_data_to_priv(d);
>  	u32 bit =3D BIT(hw_irq);
> -	u32 reg;
> +	u32 iitsr, iscr;
>=20=20
> -	reg =3D readl_relaxed(priv->base + ISCR);
> -	if (reg & bit)
> -		writel_relaxed(reg & ~bit, priv->base + ISCR);
> +	iscr =3D readl_relaxed(priv->base + ISCR);
> +	iitsr =3D readl_relaxed(priv->base + IITSR);
> +
> +	/*
> +	 * ISCR could be cleared only if type is falling-edge, rising-edge or

ISCR can only be cleared if the type is ...

> +	 * falling/rising-edge.
> +	 */
> +	if ((iscr & bit) && (iitsr & IITSR_IITSEL_MASK(hw_irq)))
> +		writel_relaxed(iscr & ~bit, priv->base + ISCR);
>  }
>=20=20
>  static void rzg2l_tint_eoi(struct irq_data *d)

