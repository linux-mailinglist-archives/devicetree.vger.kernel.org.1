Return-Path: <devicetree+bounces-151519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DF6A46167
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 14:56:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F52E3A7864
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 13:56:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EB1621D5A9;
	Wed, 26 Feb 2025 13:56:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556CB84A2B;
	Wed, 26 Feb 2025 13:56:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740578202; cv=none; b=lO6I/LozFGPB713wvPgVkP04KfjvA66FVDVqyhq2keVxTDKk0l56ZEdLmSEQniNNmkFCEvlPOfzgCI61eXUB0rM9VBR0Pb9Qo83U9pcy0VsHSSHhHikJ6c08OH3aqrMdXHKQbwXh13GuWyHTnzfnlJdO0MGBJ00GzeGquDCZ45s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740578202; c=relaxed/simple;
	bh=U9JYgXlhNDPZ4KKWBvxoTR0Ovs8uIhSzmgYhtbuhjuw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MoVqdRw2ig2YNe55hXUVcBtx5ayCe1AvW6iRiireSJWOt/ymijYLqrzQthAQ2Pd/Ak9W8+Jgdzv8fDaJjkNkxNucDVmCn3i5mseqPvwIoxTDdGjYnKDT8gR11+Din9QZ7rbpKff/yhX1FAx0nn5QN8vU8Uv7GBH1hBtRMbs9Kdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
Received: from localhost (unknown [116.232.55.252])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dlan)
	by smtp.gentoo.org (Postfix) with ESMTPSA id 3A33E34309B;
	Wed, 26 Feb 2025 13:56:38 +0000 (UTC)
Date: Wed, 26 Feb 2025 13:56:35 +0000
From: Yixun Lan <dlan@gentoo.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Conor Dooley <conor@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Alex Elder <elder@riscstar.com>, Yangyu Chen <cyy@cyyself.name>,
	Jisheng Zhang <jszhang@kernel.org>,
	Jesse Taube <mr.bossman075@gmail.com>,
	Inochi Amaoto <inochiama@outlook.com>,
	Icenowy Zheng <uwu@icenowy.me>,
	Meng Zhang <zhangmeng.kevin@linux.spacemit.com>,
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev
Subject: Re: [PATCH v7 0/4] riscv: spacemit: add gpio support for K1 SoC
Message-ID: <20250226135635-GYA45740@gentoo>
References: <20250226-03-k1-gpio-v7-0-be489c4a609b@gentoo.org>
 <20250226010108-GYA44567@gentoo>
 <CACRpkdY7nzzu3-+FwpSYqmX+O559LoXHiqcvP2OxkhX+9f-3wg@mail.gmail.com>
 <20250226115957-GYA45508@gentoo>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250226115957-GYA45508@gentoo>

Hi Linus Walleij:

I went ahead and made further progress on this, and now
the 3 cell interrupts model work fine, although still few issues left

see patch below

On 12:00 Wed 26 Feb     , Yixun Lan wrote:
> Hi Linus Walleij:
> 
> On 11:24 Wed 26 Feb     , Linus Walleij wrote:
> > On Wed, Feb 26, 2025 at 2:01 AM Yixun Lan <dlan@gentoo.org> wrote:
> > 
> > > Current this v7 version work great with request irq from gpio, like:
> > >         pin = devm_gpiod_get_optional(dev, "myirq", GPIOD_IN);
> > >         irq = gpiod_to_irq(pin);
> > >         devm_request_threaded_irq(dev, irq, ..)
> > >
> > > but have problem if request irq via of_irq_get(), something like this:
> > > DT part
> > >         mytst {
> > >                 ..
> > >                 interrupt-parent = <&gpio>;
> > >                 interrupts = <1 28 IRQ_TYPE_EDGE_RISING>;
> > >                 interrupt-names = "wakeup";
> > >         }
> > >
> > > In source code
> > >         irq = of_irq_get_byname(dev->of_node, "wakeup");
> > >
> > > I've made an attempt to patch gpiolib to support three cells "interrupts"
> > > syntax, but still fail, it always get last gpio irqchip of four, thus using
> > > the wrong pin (e.g: will always get 3 from gpiochips 0, 1, 2, 3)
> > 
> > Right, we need a proper patch to fix this.
> > 
> > Can you paste your patch so I can see if I can spot/fix
> > the problem?
> > 
> > I think the irq cell parser needs to call out to
> > of_node_instance_match() - or similar - as well.
> do you have any suggestion where to implement this similar function?
> 
> I actually miss this logic, the patch here only support parsing
> interrupts with 3 cells
> 
> diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
> index 679ed764cb14..9aa88c3fa485 100644
> --- a/drivers/gpio/gpiolib.c
> +++ b/drivers/gpio/gpiolib.c
> @@ -1454,6 +1454,10 @@ static int gpiochip_hierarchy_irq_domain_translate(struct irq_domain *d,
>  		return irq_domain_translate_twocell(d, fwspec, hwirq, type);
>  	}
>  
> +	if (is_of_node(fwspec->fwnode) && fwspec->param_count == 3) {
> +		return irq_domain_translate_threecell(d, fwspec, hwirq, type);
> +	}
> +
>  	/* This is for board files and others not using DT */
>  	if (is_fwnode_irqchip(fwspec->fwnode)) {
>  		int ret;
> @@ -1758,7 +1762,8 @@ static const struct irq_domain_ops gpiochip_domain_ops = {
>  	.map	= gpiochip_irq_map,
>  	.unmap	= gpiochip_irq_unmap,
>  	/* Virtually all GPIO irqchips are twocell:ed */
> -	.xlate	= irq_domain_xlate_twocell,
> +	/* FIXME: force switch to three cells */
> +	.xlate	= irq_domain_xlate_threecell,
>  };
>  
>  static struct irq_domain *gpiochip_simple_create_domain(struct gpio_chip *gc)
> diff --git a/include/linux/irqdomain.h b/include/linux/irqdomain.h
> index e432b6a12a32..69a9540ec253 100644
> --- a/include/linux/irqdomain.h
> +++ b/include/linux/irqdomain.h
> @@ -568,10 +568,18 @@ int irq_domain_xlate_onecell(struct irq_domain *d, struct device_node *ctrlr,
>  int irq_domain_xlate_twocell(struct irq_domain *d, struct device_node *ctrlr,
>  			const u32 *intspec, unsigned int intsize,
>  			irq_hw_number_t *out_hwirq, unsigned int *out_type);
> +int irq_domain_xlate_threecell(struct irq_domain *d, struct device_node *ctrlr,
> +			const u32 *intspec, unsigned int intsize,
> +			irq_hw_number_t *out_hwirq, unsigned int *out_type);
>  int irq_domain_xlate_onetwocell(struct irq_domain *d, struct device_node *ctrlr,
>  			const u32 *intspec, unsigned int intsize,
>  			irq_hw_number_t *out_hwirq, unsigned int *out_type);
>  
> +int irq_domain_translate_threecell(struct irq_domain *d,
> +				 struct irq_fwspec *fwspec,
> +				 unsigned long *out_hwirq,
> +				 unsigned int *out_type);
> +
>  int irq_domain_translate_twocell(struct irq_domain *d,
>  				 struct irq_fwspec *fwspec,
>  				 unsigned long *out_hwirq,
> diff --git a/kernel/irq/irqdomain.c b/kernel/irq/irqdomain.c
> index ec6d8e72d980..995e5e0ec2db 100644
> --- a/kernel/irq/irqdomain.c
> +++ b/kernel/irq/irqdomain.c
> @@ -1132,6 +1132,17 @@ int irq_domain_xlate_twocell(struct irq_domain *d, struct device_node *ctrlr,
>  }
>  EXPORT_SYMBOL_GPL(irq_domain_xlate_twocell);
>  
> +int irq_domain_xlate_threecell(struct irq_domain *d, struct device_node *ctrlr,
> +			const u32 *intspec, unsigned int intsize,
> +			irq_hw_number_t *out_hwirq, unsigned int *out_type)
> +{
> +	struct irq_fwspec fwspec;
> +
> +	of_phandle_args_to_fwspec(ctrlr, intspec, intsize, &fwspec);
> +	return irq_domain_translate_threecell(d, &fwspec, out_hwirq, out_type);
> +}
> +EXPORT_SYMBOL_GPL(irq_domain_xlate_threecell);
> +
>  /**
>   * irq_domain_xlate_onetwocell() - Generic xlate for one or two cell bindings
>   * @d:		Interrupt domain involved in the translation
> @@ -1216,6 +1227,19 @@ int irq_domain_translate_twocell(struct irq_domain *d,
>  }
>  EXPORT_SYMBOL_GPL(irq_domain_translate_twocell);
>  
> +int irq_domain_translate_threecell(struct irq_domain *d,
> +				 struct irq_fwspec *fwspec,
> +				 unsigned long *out_hwirq,
> +				 unsigned int *out_type)
> +{
> +	if (WARN_ON(fwspec->param_count < 3))
> +		return -EINVAL;
> +	*out_hwirq = fwspec->param[1];
> +	*out_type = fwspec->param[2] & IRQ_TYPE_SENSE_MASK;
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(irq_domain_translate_threecell);
> +
>  int irq_domain_alloc_descs(int virq, unsigned int cnt, irq_hw_number_t hwirq,
>  			   int node, const struct irq_affinity_desc *affinity)
>  {
> 

sounds we need to implement .select() or .match() in irq_domain_ops,
then find the irq_domain.. here is a prototype version 

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 9aa88c3fa485..73caba47bd2d 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -1758,9 +1758,25 @@ static void gpiochip_irq_unmap(struct irq_domain *d, unsigned int irq)
 	irq_set_chip_data(irq, NULL);
 }
 
+static int gpiochip_irq_select(struct irq_domain *d, struct irq_fwspec *fwspec,
+			enum irq_domain_bus_token bus_token)
+{
+	struct fwnode_handle *fwnode = fwspec->fwnode;
+	struct gpio_chip *gc = d->host_data;
+	unsigned int index = fwspec->param[0];
+
+	if (gc->of_gpio_n_cells == 3 && gc->of_node_instance_match)
+		return gc->of_node_instance_match(gc, index);
+
+	return ((fwnode != NULL) && (d->fwnode == fwnode) &&
+		((bus_token == DOMAIN_BUS_ANY) ||
+		(d->bus_token == bus_token)));
+}
+
 static const struct irq_domain_ops gpiochip_domain_ops = {
 	.map	= gpiochip_irq_map,
 	.unmap	= gpiochip_irq_unmap,
+	.select	= gpiochip_irq_select,
 	/* Virtually all GPIO irqchips are twocell:ed */
 	/* FIXME: force switch to three cells */
 	.xlate	= irq_domain_xlate_threecell,
diff --git a/kernel/irq/irqdomain.c b/kernel/irq/irqdomain.c
index 995e5e0ec2db..c4d18267e86e 100644
--- a/kernel/irq/irqdomain.c
+++ b/kernel/irq/irqdomain.c
@@ -553,7 +553,7 @@ struct irq_domain *irq_find_matching_fwspec(struct irq_fwspec *fwspec,
 	 */
 	mutex_lock(&irq_domain_mutex);
 	list_for_each_entry(h, &irq_domain_list, link) {
-		if (h->ops->select && bus_token != DOMAIN_BUS_ANY)
+		if (h->ops->select /* && bus_token != DOMAIN_BUS_ANY */)
 			rc = h->ops->select(h, fwspec, bus_token);
 		else if (h->ops->match)
 			rc = h->ops->match(h, to_of_node(fwnode), bus_token);
-- 
Yixun Lan (dlan)
Gentoo Linux Developer
GPG Key ID AABEFD55

