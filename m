Return-Path: <devicetree+bounces-12544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5805C7D9F2A
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 19:57:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F1F08B21129
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 17:57:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7D523B2A6;
	Fri, 27 Oct 2023 17:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="PGWexmfR";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="Jekz+x5N"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3261F1946F
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 17:57:45 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97CB81AD;
	Fri, 27 Oct 2023 10:57:43 -0700 (PDT)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1698429462;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=oCqnF8tdiSzXrkWRZWP57lvyo1MUb2GIYlUOd343qS4=;
	b=PGWexmfRM/2TEUOSrK+HsNczBVzbibItnW+ilemIFDRGz24XswlG0KPJuaCs45xmx0GnbZ
	X8B0R6oDn/6AKLzb39H0WosRRdX7EOQTopYJ4bLIM0R0aXO6XrVLzznhyWaC62jCdUg/Nv
	5OOTnd4QIE1WbFtRJzj8dxWYzMBnFdTW6dc/m6FR9SWS20et65VwWBYuG35VYfJ2+k8GKT
	oj1IKFIKPZr1jmFOgBaqi+ufajYBIgQ4ZSANH6NE8EP8Y5XvsnZxLMxj7bsRar6iFzB70n
	jmOBpVrTA4AWZns6DiO3XjnI3a3O7DNFZIsWQKJMXpMgjTHwNn0k21xNgHx98A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1698429462;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=oCqnF8tdiSzXrkWRZWP57lvyo1MUb2GIYlUOd343qS4=;
	b=Jekz+x5Nqppl3XpdyShxtU4jCvvzPHhfCnjZSp4RxZdxTBZaVoPYoC2jmZJQDt+D3Q8Y0W
	HSzt//btUKckQ5Dw==
To: Claudiu <claudiu.beznea@tuxon.dev>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 geert+renesas@glider.be, magnus.damm@gmail.com, mturquette@baylibre.com,
 sboyd@kernel.org, prabhakar.mahadev-lad.rj@bp.renesas.com
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, Claudiu
 Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: Re: [PATCH 6/7] irqchip/renesas-rzg2l: use tabs instead of spaces
In-Reply-To: <20231023102223.1309614-7-claudiu.beznea.uj@bp.renesas.com>
References: <20231023102223.1309614-1-claudiu.beznea.uj@bp.renesas.com>
 <20231023102223.1309614-7-claudiu.beznea.uj@bp.renesas.com>
Date: Fri, 27 Oct 2023 19:57:41 +0200
Message-ID: <87edhg2bje.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Mon, Oct 23 2023 at 13:22, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Use tabs instead of spaces in definition of TINT_EXTRACT_HWIRQ()
> and TINT_EXTRACT_GPIOINT() macros.

Wrong ordering. Cleanups first, features last.

> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
>  drivers/irqchip/irq-renesas-rzg2l.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/irqchip/irq-renesas-rzg2l.c b/drivers/irqchip/irq-renesas-rzg2l.c
> index e5e158bf028d..ce50745bba87 100644
> --- a/drivers/irqchip/irq-renesas-rzg2l.c
> +++ b/drivers/irqchip/irq-renesas-rzg2l.c
> @@ -56,8 +56,8 @@
>  #define IITSR_IITSEL_EDGE_BOTH		3
>  #define IITSR_IITSEL_MASK(n)		IITSR_IITSEL((n), 3)
>  
> -#define TINT_EXTRACT_HWIRQ(x)           FIELD_GET(GENMASK(15, 0), (x))
> -#define TINT_EXTRACT_GPIOINT(x)         FIELD_GET(GENMASK(31, 16), (x))
> +#define TINT_EXTRACT_HWIRQ(x)		FIELD_GET(GENMASK(15, 0), (x))
> +#define TINT_EXTRACT_GPIOINT(x)		FIELD_GET(GENMASK(31, 16), (x))
>  
>  /**
>   * struct rzg2l_irqc_reg_cache - register cache

