Return-Path: <devicetree+bounces-308480-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ri6/KPcIJ2pDqgIAu9opvQ
	(envelope-from <devicetree+bounces-308480-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 20:24:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E9027659B0C
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 20:24:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZT58sg61;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308480-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308480-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D67E1308F376
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 18:09:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E36E3D75C0;
	Mon,  8 Jun 2026 18:09:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5297384CCD
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 18:09:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780942189; cv=none; b=jHJyjiauo7gIKZWqlCVAxyP6knoYfciKhb/ZeosIOE8sG7CUQyKYlgeY3WqLnXsmUNAVJT65GBkil93vQYRfSS4c4JlU7oq+vx2801TlJkdqTQ6byd++hoE11+pH96a6d2jGurILA6B0fkY5gq+PTjFWPWmQXwME8N/gRGR8+TM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780942189; c=relaxed/simple;
	bh=dPfcG4Fc703mtDcGfZCUeIsSh9HXGdXdNmE5C2yXEP0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ACBBvB+yllK7BSmYMh5d8UVaXcGb/8wBV6Lf6HbJOTxIWsVTromnZYVle82UqWmrBCuagDw7I9knDL38SYAjrxpsXdasI+uX3XvGovZLZl4thg1OJm9Xq18Pfp0KAzwaRaU5DZ0LbfpCy0UyHXsBgXEs70ioAdXMA8vrEsCMnfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZT58sg61; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1A341F00898;
	Mon,  8 Jun 2026 18:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780942187;
	bh=qzr3U3wR2B4G6mUWOTOv9GVv/gHDCaOI+1xGOeK40gc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZT58sg61t+bUZgzOETtmAO+SS2LpciOHv8ZNYLAnABQWToj0B3IgcITd4HcblDzi3
	 5ED8h7tLQgREwydfXon+TYBLhovcvSBKiNjvCgYLF1fGRXXAsA6qQSuW7dN9I4J+PR
	 A63XdH9vzNUvMcu11rez/XzZfKxIsOfMuXT65qb48slV8qUz+5Tqvdwj9GJXzaHYeY
	 prhWOm0jz/qo6eEjxUNTnijOp22qUGK5i76Tx5ubPEx6v17f8As03+lc+Kb3h49odK
	 qmIn7KnUuh7oLZE0YTQG2WIvVVt5LFaVgp4pP5BZDxFaKdEzde7ddOlmbja+qD0p/Q
	 /G0YLVE3BL9Vw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V6 2/6] power: supply: sgm41542: Add SG Micro sgm41542
 charger
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chris Morgan" <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260608175521.67449-3-macroalpha82@gmail.com>
References: <20260608175521.67449-3-macroalpha82@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jun 2026 18:09:46 +0000
Message-Id: <20260608180946.F1A341F00898@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308480-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:macroalpha82@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sg-micro.de:url,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E9027659B0C

Thank you for your contribution! Sashiko AI review found 7 potential issue(=
s) to consider:
- [High] Invalid pointer dereference of I2C client device during IRQ wake t=
eardown.
- [High] Watchdog timer bits are always written as zero, silently permanent=
ly disabling the watchdog.
- [High] Hardware watchdog will incorrectly trigger and reset device limits=
 during system suspend.
- [High] TOCTOU race in probe causes integer underflow that applies extreme=
 maximum current limits.
- [High] Ignored return value of `enable_irq_wake()` results in unbalanced =
decrement during teardown.
- [Medium] Ignored return value from `devm_add_action_or_reset()` leaves de=
vice without expected wakeup capabilities.
- [Medium] Unprotected concurrent writes to the unused `sgm->state` field c=
auses a data race.
--

commit a4ca3f3960debe0f5d998a1b64ed909e6c09a1bf
Author: Chris Morgan <macromorgan@hotmail.com>
Subject: power: supply: sgm41542: Add SG Micro sgm41542 charger

This commit adds support for the SG Micro SGM41542 charger and boost
converter. The driver is adapted from the Rockchip BSP and confirmed
with the vendor datasheet.

Link: https://github.com/rockchip-linux/kernel/blob/develop-6.6/drivers/pow=
er/supply/sgm41542_charger.c
Link: https://www.sg-micro.de/rect/assets/1e8de70b-657e-4156-be68-a64fdbe8e=
418/SGM41541_SGM41542.pdf

> diff --git a/drivers/power/supply/sgm41542_charger.c b/drivers/power/supp=
ly/sgm41542_charger.c
> new file mode 100644
> index 0000000000000..f6aff2c2335d5
> --- /dev/null
> +++ b/drivers/power/supply/sgm41542_charger.c
> @@ -0,0 +1,1057 @@
[ ... ]
> +static int sgm4154x_set_input_curr_lim(struct sgm4154x_device *sgm, int =
iindpm)
> +{
> +	int reg_val;
> +	int ret;
> +
> +	if (iindpm < SGM4154X_IINDPM_I_MIN_UA)
> +		return -EINVAL;
> +
> +	/*
> +	 * Per the datasheet, values between 100000uA and 3100000uA work
> +	 * as expected with the register defined as having a step of
> +	 * 100000 and a min/max of 100000 (0x00) through 3100000 (0x1e).
> +	 * The register value of 0x1f however corresponds to 3800000uA not
> +	 * 3200000uA as one would expect.
> +	 */
> +	if ((iindpm > SGM4154X_IINDPM_I_MAX_UA) || (iindpm > sgm->init_data.ili=
m))
> +		iindpm =3D min(SGM4154X_IINDPM_I_MAX_UA, sgm->init_data.ilim);
> +
> +	if (iindpm > 3100000 && iindpm < SGM4154X_IINDPM_I_MAX_UA)
> +		iindpm =3D 3100000;
> +
> +	if (iindpm =3D=3D SGM4154X_IINDPM_I_MAX_UA)
> +		reg_val =3D 0x1f;
> +	else
> +		reg_val =3D (iindpm - SGM4154X_IINDPM_I_MIN_UA) / SGM4154X_IINDPM_STEP=
_UA;

[Severity: High]
Does this logic underflow if called early?

If sysfs limits are set before sgm4154x_hw_init() runs in probe,
sgm->init_data.ilim will still be 0. This would cause iindpm to be clamped
to 0, and the step calculation above would evaluate to:
reg_val =3D (0 - 100000) / 100000 =3D -1

When passed to regmap_update_bits(), the -1 will be masked against 0x1F,
resulting in 0x1F. This would inadvertently apply the maximum 3.8A limit
to the upstream power supply instead of the lowest limit.

> +
> +	ret =3D regmap_update_bits(sgm->regmap,
> +				 SGM4154X_CHRG_CTRL_0,
> +				 SGM4154X_IINDPM_I_MASK,
> +				 reg_val);
[ ... ]
> +static int sgm4154x_set_watchdog_timer(struct sgm4154x_device *sgm, u8 t=
ime)
> +{
> +	int ret;
> +
> +	if (time > 3)
> +		return -EINVAL;
> +
> +	ret =3D regmap_update_bits(sgm->regmap,
> +				 SGM4154X_CHRG_CTRL_5,
> +				 SGM4154X_WDT_TIMER_MASK,
> +				 time);

[Severity: High]
Since SGM4154X_WDT_TIMER_MASK spans bits 4 and 5 (GENMASK(5, 4)), shouldn't
the time parameter (values 0-3) be shifted left by 4 before updating the
register?

Passing the unshifted value here causes the regmap_update_bits masking logic
to evaluate to (time & 0x30), which is always 0. This effectively disables
the hardware watchdog permanently.

> +
> +	if (ret) {
[ ... ]
> +static int sgm4154x_charger_get_property(struct power_supply *psy,
> +					 enum power_supply_property psp,
> +					 union power_supply_propval *val)
> +{
> +	struct sgm4154x_device *sgm =3D power_supply_get_drvdata(psy);
> +	struct sgm4154x_state state;
> +	int ret;
> +
> +	ret =3D sgm4154x_get_state(sgm, &state);
> +	if (ret) {
> +		dev_err(sgm->dev, "get state error!\n");
> +		return ret;
> +	}
> +	sgm->state =3D state;

[Severity: Medium]
Could this concurrent, unprotected write to sgm->state cause a data race
between sysfs readers and the IRQ handler below?

Since the sgm->state field is completely unused elsewhere in the driver,
can we safely remove it entirely to avoid the regression?

> +
> +	switch (psp) {
[ ... ]
> +static irqreturn_t sgm4154x_irq_handler_thread(int irq, void *private)
> +{
> +	struct sgm4154x_device *sgm4154x =3D private;
> +	struct sgm4154x_state state;
> +	int ret;
> +
> +	ret =3D sgm4154x_get_state(sgm4154x, &state);
> +	if (ret) {
> +		dev_err(sgm4154x->dev, "get state error!\n");
> +		return IRQ_NONE;
> +	}
> +	sgm4154x->state =3D state;

[Severity: Medium]
Could this concurrent, unprotected write to sgm4154x->state cause a data ra=
ce?

> +	if (state.vbus_gd) {
[ ... ]
> +static void sgm4154x_disable_irq_wake(void *data)
> +{
> +	struct sgm4154x_device *sgm =3D data;
> +	struct i2c_client *client =3D to_i2c_client(sgm->dev->parent);
> +
> +	disable_irq_wake(client->irq);

[Severity: High]
Is it possible this casts the wrong device pointer?

sgm->dev is already the I2C client's device, so sgm->dev->parent points to
the upstream I2C adapter. Casting the adapter via to_i2c_client() and
accessing client->irq will read arbitrary memory, potentially corrupting a
random IRQ descriptor's wake state when passed to disable_irq_wake().

> +}
[ ... ]
> +static int sgm4154x_probe(struct i2c_client *client)
> +{
> +	struct device *dev =3D &client->dev;
> +	struct sgm4154x_device *sgm;
> +	int ret;
[ ... ]
> +	sgm->sgm_monitor_wq =3D devm_alloc_ordered_workqueue(dev, "sgm-monitor-=
wq",
> +			WQ_MEM_RECLAIM | WQ_FREEZABLE);

[Severity: High]
Is it safe to use a freezable workqueue here without providing PM suspend
callbacks to disable the hardware watchdog?

If the system suspends while the watchdog is active, the workqueue will pau=
se
and the watchdog will expire, resetting the charger configuration and
clearing the thermal/current limits established during probe.

> +	if (!sgm->sgm_monitor_wq)
> +		return -EINVAL;
> +
> +	ret =3D devm_delayed_work_autocancel(dev, &sgm->sgm_delay_work,
> +					   sgm_charger_work);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Unable to register delayed work\n");
> +
> +	ret =3D sgm4154x_power_supply_init(sgm, dev);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Failed to register power supply\n");
> +
> +	ret =3D sgm4154x_hw_init(sgm);

[Severity: High]
Does registering the power supply earlier expose the sysfs interface to
userspace before sgm4154x_hw_init() has populated the limits in
sgm->init_data?

If userspace writes to the input limit early, the uninitialized zeros will =
be
used in sgm4154x_set_input_curr_lim() which may trigger the underflow
mentioned above.

> +	if (ret)
> +		return dev_err_probe(dev, ret, "Cannot initialize the chip.\n");
> +
> +	if (client->irq) {
> +		ret =3D devm_request_threaded_irq(dev, client->irq, NULL,
> +						sgm4154x_irq_handler_thread,
> +						IRQF_TRIGGER_FALLING |
> +						IRQF_ONESHOT,
> +						"sgm41542-irq", sgm);
> +		if (ret)
> +			return ret;
> +
> +		enable_irq_wake(client->irq);

[Severity: High]
If the IRQ controller doesn't support wakeup and enable_irq_wake() fails,
does ignoring the error here result in an unbalanced disable_irq_wake() call
during teardown?

> +		devm_add_action_or_reset(dev, sgm4154x_disable_irq_wake, sgm);

[Severity: Medium]
Also, does ignoring the return value of devm_add_action_or_reset() risk
leaving the device without its teardown handler if the devm allocation fail=
s?

> +	}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608175521.6744=
9-1-macroalpha82@gmail.com?part=3D2

