Return-Path: <devicetree+bounces-313394-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id na8NIBbJM2oTGQYAu9opvQ
	(envelope-from <devicetree+bounces-313394-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 12:31:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E910769F580
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 12:31:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Dy+eQ0u8;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313394-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313394-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EEC76302B821
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 10:28:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71E383EE1F1;
	Thu, 18 Jun 2026 10:28:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E533EF64F
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 10:28:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781778487; cv=none; b=Mi/P0ZDnpGu28+liutuf9NVZPwRRA1KRSX8gLeHyrrYnwPhppH4l1vzcRHRn+DjnAlgdE7RP1m1UvJEm0avDCNAo4dTNbqeNNUBvfmSWcW5CWfliXYQeZ6EwM1ULWJxDmfimaNcpMNihNsdhnIYRxwCm8gPJTUhVKbuEl4hcqqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781778487; c=relaxed/simple;
	bh=vH15nRvaexShInPq1AKyVt+dnyALHsL9Mtnewj4JDy0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hPKhBVytTwwJtM2wCSDXqHR9T6HnJEA1ev2vEs9KqVnmD36VUkPmKB+j4rUJXM1dgPjIWjMy3aOIJHd6tUkNRn3eaxFsOY05DO2mdmeznu/Y/Fb3s81e/yZbZPC7yZ/y0lir7mm4xUOLB0X92FjsxRvDYo5P42Gjw5AORaK1pPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dy+eQ0u8; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 659B01F00A3F;
	Thu, 18 Jun 2026 10:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781778482;
	bh=iIu+iRChme9fY43gsZBd2els9BnGw56e68zyb1pmIsw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Dy+eQ0u8TqnGvz5eETeN1z91PZEH/t7U7+LT5FhrEQmgXvrr8U1AfqSuu4055dnIo
	 vhRSAB+vzs2Mq99qe9DptuP9rAQtCdOFqYJnzMDBeQ7eybQI1lUumFuiPJxu50/Wme
	 h2iZPmEUSrDryrRzc5XeRbvGl5r1NIMZ8Q2TpiSGQ+7TeT7VJqbwbu14ORPzTXvZwF
	 G7o9NQvAfJEPiPeyT++vd/Vp+XG5ETVX9PeWm7IUNY3sBkSSO2E8xN46yEIQNu7f0A
	 tpkFFt11QJTr/kINXtOLKlOwLe1sBe4QrIg2ssXZc2SChYL8hIqHwsQNYRnZIft1ZO
	 h3VWyoyB6RPfA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 3/5] iio: adc: versal-sysmon: add I2C driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Salih Erim" <salih.erim@amd.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260618101414.3462934-4-salih.erim@amd.com>
References: <20260618101414.3462934-1-salih.erim@amd.com>
 <20260618101414.3462934-4-salih.erim@amd.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jun 2026 10:28:01 +0000
Message-Id: <20260618102802.659B01F00A3F@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313394-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:salih.erim@amd.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E910769F580

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] I2C transfer buffers are allocated on the stack, which can cause a=
 kernel panic if the underlying I2C adapter driver uses DMA.
- [High] I2C regmap backend is executed in hardirq and spinlock context if =
an IRQ is erroneously specified in the device tree, causing a 'scheduling w=
hile atomic' panic.
--

commit f508dce27e50e63598a76da221a58f66b1a7c5f1
Author: Salih Erim <salih.erim@amd.com>

iio: adc: versal-sysmon: add I2C driver

Add an I2C transport driver for the Versal SysMon block. The SysMon
provides an I2C slave interface that allows an external master to
read voltage and temperature measurements through the same register
map used by the MMIO path.

[ ... ]
> diff --git a/drivers/iio/adc/versal-sysmon-i2c.c b/drivers/iio/adc/versal=
-sysmon-i2c.c
> new file mode 100644
> index 0000000000000..e9a7629159ab1
> --- /dev/null
> +++ b/drivers/iio/adc/versal-sysmon-i2c.c
> @@ -0,0 +1,134 @@
[ ... ]
> +static int sysmon_i2c_reg_read(void *context, unsigned int reg,
> +			       unsigned int *val)
> +{
> +	struct i2c_client *client =3D context;
> +	u8 write_buf[8] =3D { };
> +	u8 read_buf[4];

[Severity: High]
Is it safe to pass these stack-allocated buffers to i2c_master_send() and
i2c_master_recv()?

If the underlying I2C adapter driver uses DMA for the transfer, it will
attempt to map these addresses using the DMA API. With CONFIG_VMAP_STACK
enabled, kernel stacks are placed in vmalloc space which cannot be mapped
for DMA, leading to a kernel panic.

Should these buffers be dynamically allocated, or perhaps embedded in a
device-managed structure? This same pattern appears to be present in
sysmon_i2c_reg_write() as well.

> +	int ret;
> +
> +	put_unaligned_le16(reg >> 2, &write_buf[SYSMON_I2C_REG_OFS]);
> +	write_buf[SYSMON_I2C_INSTR_OFS] =3D SYSMON_I2C_INSTR_READ;
[ ... ]
> +static int sysmon_i2c_probe(struct i2c_client *client)
> +{
> +	struct device *dev =3D &client->dev;
> +	struct regmap *regmap;
> +
> +	regmap =3D devm_regmap_init(dev, NULL, client, &sysmon_i2c_regmap_confi=
g);
> +	if (IS_ERR(regmap))
> +		return PTR_ERR(regmap);
> +
> +	/* I2C has no IRQ connection; events are not supported */
> +	return devm_versal_sysmon_core_probe(dev, regmap);

[Severity: High]
Does this code adequately prevent the core driver from registering an IRQ?

The commit message notes that events are not supported because the I2C regm=
ap
backend cannot be called from atomic context. However,
devm_versal_sysmon_core_probe() unconditionally fetches the IRQ from the
device tree:

devm_versal_sysmon_core_probe()
    irq =3D fwnode_irq_get(dev_fwnode(dev), 0);
    if (irq > 0) {
        ...
        sysmon_init_interrupt(sysmon, dev, indio_dev, irq);
    }

If a misconfigured device tree provides an interrupts property for the I2C
node, the core driver will successfully register the hardirq handler
sysmon_iio_irq(). When the interrupt fires, the handler takes sysmon->irq_l=
ock
(which is a spinlock) and calls regmap_read(). This routes back to
sysmon_i2c_reg_read(). Because the I2C transfer functions can sleep, this
would result in a 'scheduling while atomic' panic.

Could the I2C probe explicitly inform the core to bypass IRQ initialization,
instead of relying solely on the device tree being configured correctly?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618101414.3462=
934-1-salih.erim@amd.com?part=3D3

