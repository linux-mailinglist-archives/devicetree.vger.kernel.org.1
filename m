Return-Path: <devicetree+bounces-308499-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YbBrCOAPJ2oMrAIAu9opvQ
	(envelope-from <devicetree+bounces-308499-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 20:54:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2F2659E3B
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 20:54:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="exk/Q1Hn";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308499-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-308499-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6ED413036EBE
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 18:52:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8649F3BF678;
	Mon,  8 Jun 2026 18:52:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED9C3B4439
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 18:52:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780944734; cv=none; b=qR5DjMLxLnl+kgZiDJx0D0TqoD2ZlHIvk8jCuIfXyPq2TEJxLdmmUZO9m9XCfqtNfwL2PXVNgdtHSO37yKqEODIW+qLSoEfan2JCFAXwhenb8O54zkiWzdICyrH2snZw5YhxE6NZpUBAPr10MPkfdszcZo0bHGveRcXu5SdSt68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780944734; c=relaxed/simple;
	bh=bIi5s7l1Ea4AiUiWlLMaC2AFbTKEVaCSda/bYKQSrYM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=t4WlqnclYKPJt/i7VqlFf7LoSE1RmXsOUrPboSDmzNXHNkouqCPaS8/g3A/bZSEfwHyQXQB0YYicafakcfzyOk8jOYgqai/8kYLl4q1yPoLpx5G0DOz7IEFWohB6FxH0zR6n2mzsLMi8aiW6ZzOE9Br2HNPIQNOryhxd+PFKGJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exk/Q1Hn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D3D11F00893;
	Mon,  8 Jun 2026 18:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780944733;
	bh=gcz4jibTG256tk/lCwoK1eSIisT42A15aP7csXjGcfY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=exk/Q1HnUIlFFl8pyvgd6X+XPL6+h+BMgvVjYD/FXJLhuj+6knDB0LCAXe2um5UHS
	 V6br3YUGUL9I1ldMyUdzdR405c/Izt88lQUxgb/o/Ls+qi18afEVnzBMrWTydPT5qe
	 ga3xvsgnbUR3SjdM5G1Yc6xmtJsgAxGNdPA1XU3H+OcBMxZnF2Dx44L5zNVpOXjdL7
	 /Fd2hE5AQhyUyTKsC0MAzk9WYx9UN7EzaOPNHQ/MgX3g4pFALEfqghLBhWgFEG7RIH
	 TGliYZNkS6KuI2IcfZftz80tl60Q/gCEWGObicmrpEQi5x3eNcBUyqNGC3kp/iwFAP
	 UypKr0PRZqa1A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 3/5] iio: adc: versal-sysmon: add I2C driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Salih Erim" <salih.erim@amd.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260608183801.1257051-4-salih.erim@amd.com>
References: <20260608183801.1257051-4-salih.erim@amd.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jun 2026 18:52:12 +0000
Message-Id: <20260608185213.2D3D11F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308499-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:salih.erim@amd.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,amd.com:email,lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7E2F2659E3B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Unconditional probe failure for I2C devices due to incorrect handl=
ing of optional IRQ.
--

commit f3303ed1c4a2a87b882fc5ca294a42e9cb520b70
Author: Salih Erim <salih.erim@amd.com>

iio: adc: versal-sysmon: add I2C driver

This commit adds an I2C transport driver for the Versal SysMon block, allow=
ing
an external master to read voltage and temperature measurements. It explici=
tly
omits event support as the I2C path does not have an interrupt line.

> diff --git a/drivers/iio/adc/versal-sysmon-i2c.c b/drivers/iio/adc/versal=
-sysmon-i2c.c
> new file mode 100644
> --- /dev/null
> +++ b/drivers/iio/adc/versal-sysmon-i2c.c
[ ... ]
> +static int sysmon_i2c_probe(struct i2c_client *client)
> +{
> +	struct regmap *regmap;
> +
> +	regmap =3D devm_regmap_init(&client->dev, NULL, client,
> +				  &sysmon_i2c_regmap_config);
> +	if (IS_ERR(regmap))
> +		return PTR_ERR(regmap);
> +
> +	/* I2C has no IRQ connection; events are not supported */
> +	return sysmon_core_probe(&client->dev, regmap);

[Severity: High]
Will this unconditionally fail to probe when called from the I2C driver?

Looking at sysmon_core_probe() in versal-sysmon-core.c, it attempts to
get an IRQ and treats any negative return as a fatal error:

int sysmon_core_probe(struct device *dev, struct regmap *regmap)
{
	...
	irq =3D fwnode_irq_get(dev_fwnode(dev), 0);
	if (irq < 0)
		return dev_err_probe(dev, irq, "failed to get IRQ\n");

Since the I2C device tree node lacks an interrupts property, fwnode_irq_get=
()
will return a negative error code (such as -EINVAL), which causes the probe
to fail entirely before it can successfully initialize the device.

Should the core probe gracefully handle missing optional IRQs so that the
I2C driver can succeed?

> +}
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608183801.1257=
051-1-salih.erim@amd.com?part=3D3

