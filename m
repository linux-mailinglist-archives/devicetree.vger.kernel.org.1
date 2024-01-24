Return-Path: <devicetree+bounces-34628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA4583A603
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 10:54:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A4C82924A1
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 09:54:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE91818046;
	Wed, 24 Jan 2024 09:54:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342801864A
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 09:54:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706090051; cv=none; b=nEybXQ8BUD5sc9KM2T6diaqQ3olwPpbFlCfAhMIetalLcnqgxRoT5SpPK9TMUHms/0LZbhoaVZDiJMnkksFdX/jJq+XQDpLzEJ+eOcxJZTIYv4fRC/evCrbW+S+NVfDE9EXTSxbaQmjVHh7MtdnwMQ41o2cx/khmf/HAElQtTVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706090051; c=relaxed/simple;
	bh=bBQz4OTYCWei7l4zTOrS5Adh5pXLDEyLA6TLAKN59PU=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=SXUJBrypXFcJSwX5+8csT4FGcmk5BgTDK/AY/T8b4MesVEEYyyou2g6MuUGRLhKS7lHslkRSSxYOTPWundq6yAF993Qb1d23wuVlTFXnGz8y83oDJL4cvNivWpYXR12wx8G4X7w0a6U4YyRDAgBNYSvcWBZazmWmSlxx2lVf2X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rSZxE-0004u2-1P; Wed, 24 Jan 2024 10:53:56 +0100
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rSZxC-0021lZ-3y; Wed, 24 Jan 2024 10:53:54 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rSZxC-0006Io-0A;
	Wed, 24 Jan 2024 10:53:54 +0100
Message-ID: <31bbe5787708b7de770cab96a9072fe6db39347b.camel@pengutronix.de>
Subject: Re: [PATCH v1 2/2] irqchip: Add StarFive external interrupt
 controller
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Changhuang Liang <changhuang.liang@starfivetech.com>, Thomas Gleixner
 <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Ley Foon Tan <leyfoon.tan@starfivetech.com>, Jack Zhu
	 <jack.zhu@starfivetech.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Date: Wed, 24 Jan 2024 10:53:53 +0100
In-Reply-To: <20240111023201.6187-3-changhuang.liang@starfivetech.com>
References: <20240111023201.6187-1-changhuang.liang@starfivetech.com>
	 <20240111023201.6187-3-changhuang.liang@starfivetech.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Mi, 2024-01-10 at 18:32 -0800, Changhuang Liang wrote:
[...]
> diff --git a/drivers/irqchip/irq-starfive-jh8100-intc.c b/drivers/irqchip=
/irq-starfive-jh8100-intc.c
> new file mode 100644
> index 000000000000..be8224111cf2
> --- /dev/null
> +++ b/drivers/irqchip/irq-starfive-jh8100-intc.c
> @@ -0,0 +1,180 @@
[...]
> +struct starfive_irq_chip {
> +	void __iomem *base;
> +	struct irq_domain *root_domain;
> +	struct clk *clk;
> +	struct reset_control *rst;

Since rst is never used outside of starfive_intc_init, there is no need
to store it here.

[...]
> +static int __init starfive_intc_init(struct device_node *intc,
> +				     struct device_node *parent)
> +{
> +	struct starfive_irq_chip *irqc;
> +	int ret;
> +	int parent_irq;
> +
> +	irqc =3D kzalloc(sizeof(*irqc), GFP_KERNEL);
> +	if (!irqc)
> +		return -ENOMEM;
> +
> +	irqc->base =3D of_iomap(intc, 0);
> +	if (!irqc->base) {
> +		pr_err("Unable to map IC registers\n");
> +		ret =3D -ENXIO;
> +		goto err_free;
> +	}
> +
> +	irqc->rst =3D of_reset_control_get_by_index(intc, 0);

Please use of_reset_control_get_exclusive(intc, NULL) instead.

> +	if (IS_ERR(irqc->rst)) {
> +		pr_err("Unable to get reset control\n");
> +		ret =3D PTR_ERR(irqc->rst);

Consider printing the error code via %pe.


regards
Philipp

