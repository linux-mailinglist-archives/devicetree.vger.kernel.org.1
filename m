Return-Path: <devicetree+bounces-158088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD10A64870
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 10:59:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4EA818915DE
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 09:59:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9303B230272;
	Mon, 17 Mar 2025 09:59:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA7E22F397
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 09:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742205569; cv=none; b=r79wi1cuTjaj3isf6L/BqKv8m6X6bsrYOo4ibLHLGxHNrtX/b1BJe9t6GQ4InNQ13vEEfD4+PfKsM8pBB1SX50CtTSyH2gRjAZJkKLr1E/4ycBO/FN26KHdBxwCbk953Y+oT0FiDPEknlWq7LpRjCmMfxV4ugD0oeztOdE11pj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742205569; c=relaxed/simple;
	bh=eLTZeaMW6RqboQrRfMoLdJ3QLbgZhIQQ6M3lPH/kUsg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Zd7r1hDmonq1c2HrlaRXbiu6KGutDHq0EpKsX+8qFaCUAqGybjjecuG1hJiD5BC7462GYk89ZuLESyBuuO4puJa1V41hBHAC88wdbdX9ejHnkIepn6+zIZc49SPvgTl3FWctsVaw/DbPLiDk5FuRz6CIeI43SGh3Rl2Fox44gP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tu7FP-0006dd-GS; Mon, 17 Mar 2025 10:59:03 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tu7FO-000Dti-1d;
	Mon, 17 Mar 2025 10:59:02 +0100
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tu7FO-0018Rw-2T;
	Mon, 17 Mar 2025 10:59:02 +0100
Date: Mon, 17 Mar 2025 10:59:02 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Kory Maincent <kory.maincent@bootlin.com>
Cc: Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Donald Hunter <donald.hunter@gmail.com>,
	Rob Herring <robh@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
	Simon Horman <horms@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	netdev@vger.kernel.org, linux-doc@vger.kernel.org,
	Kyle Swenson <kyle.swenson@est.tech>,
	Dent Project <dentproject@linuxfoundation.org>,
	kernel@pengutronix.de,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next v6 04/12] net: pse-pd: Add support for PSE power
 domains
Message-ID: <Z9fyZkAOB602cFJY@pengutronix.de>
References: <20250304-feature_poe_port_prio-v6-0-3dc0c5ebaf32@bootlin.com>
 <20250304-feature_poe_port_prio-v6-4-3dc0c5ebaf32@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250304-feature_poe_port_prio-v6-4-3dc0c5ebaf32@bootlin.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Tue, Mar 04, 2025 at 11:18:53AM +0100, Kory Maincent wrote:
> +/**
> + * pse_flush_pw_ds - flush all PSE power domains of a PSE
> + * @pcdev: a pointer to the initialized PSE controller device
> + */
> +static void pse_flush_pw_ds(struct pse_controller_dev *pcdev)
> +{
> +	struct pse_power_domain *pw_d;
> +	int i;
> +
> +	for (i = 0; i < pcdev->nr_lines; i++) {
> +		if (!pcdev->pi[i].pw_d)
> +			continue;
> +
> +		pw_d = xa_load(&pse_pw_d_map, pcdev->pi[i].pw_d->id);
> +		if (pw_d) {
> +			regulator_put(pw_d->supply);
> +			xa_erase(&pse_pw_d_map, pw_d->id);
> +		}
> +	}
> +}
> +
> +/**
> + * devm_pse_alloc_pw_d - allocate a new PSE power domain for a device
> + * @dev: device that is registering this PSE power domain
> + *
> + * Return: Pointer to the newly allocated PSE power domain or error pointers
> + */
> +static struct pse_power_domain *devm_pse_alloc_pw_d(struct device *dev)
> +{
> +	struct pse_power_domain *pw_d;
> +	int index, ret;
> +
> +	pw_d = devm_kzalloc(dev, sizeof(*pw_d), GFP_KERNEL);
> +	if (!pw_d)
> +		return ERR_PTR(-ENOMEM);
> +
> +	ret = xa_alloc(&pse_pw_d_map, &index, pw_d, XA_LIMIT(1, INT_MAX), GFP_KERNEL);

#define PSE_PW_D_LIMIT INT_MAX

XA_LIMIT(1, PSE_PW_D_LIMIT)

> +	if (ret)
> +		return ERR_PTR(ret);
> +
> +	pw_d->id = index;
> +	return pw_d;
> +}
> +
> +/**
> + * pse_register_pw_ds - register the PSE power domains for a PSE
> + * @pcdev: a pointer to the PSE controller device
> + *
> + * Return: 0 on success and failure value on error
> + */
> +static int pse_register_pw_ds(struct pse_controller_dev *pcdev)
> +{
> +	int i;
> +
> +	for (i = 0; i < pcdev->nr_lines; i++) {
> +		struct regulator_dev *rdev = pcdev->pi[i].rdev;
> +		struct pse_power_domain *pw_d;
> +		struct regulator *supply;
> +		bool present = false;
> +		unsigned long index;
> +
> +		/* No regulator or regulator parent supply registered.
> +		 * We need a regulator parent to register a PSE power domain
> +		 */
> +		if (!rdev || !rdev->supply)
> +			continue;
> +

Should we use xa_lock() before iteration over the map?

> +		xa_for_each(&pse_pw_d_map, index, pw_d) {
> +			/* Power supply already registered as a PSE power
> +			 * domain.
> +			 */
> +			if (regulator_is_equal(pw_d->supply, rdev->supply)) {
> +				present = true;
> +				pcdev->pi[i].pw_d = pw_d;
> +				break;
> +			}
> +		}
> +		if (present)
> +			continue;
> +
> +		pw_d = devm_pse_alloc_pw_d(pcdev->dev);
> +		if (IS_ERR_OR_NULL(pw_d))
> +			return PTR_ERR(pw_d);

It is better to break the loop and roll back previous allocations.

> +
> +		supply = regulator_get(&rdev->dev, rdev->supply_name);
> +		if (IS_ERR(supply)) {
> +			xa_erase(&pse_pw_d_map, pw_d->id);
> +			return PTR_ERR(supply);

same here.

> +		}
> +
> +		pw_d->supply = supply;
> +		pcdev->pi[i].pw_d = pw_d;
> +	}
> +
> +	return 0;
> +}
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

