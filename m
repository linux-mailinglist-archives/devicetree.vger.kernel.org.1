Return-Path: <devicetree+bounces-304514-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLfeDrY0Gmp+2AgAu9opvQ
	(envelope-from <devicetree+bounces-304514-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 02:52:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E67DD60A74D
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 02:52:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BEEBD30FACBF
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 00:47:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BAED2DB791;
	Sat, 30 May 2026 00:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H32NhTPj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA72325B0BC
	for <devicetree@vger.kernel.org>; Sat, 30 May 2026 00:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780102020; cv=none; b=sRKH3QzjVCWK8Bj8b1B0aLV7fSdScOyYNGkSp+1IIzj14oOvBNACYS6WreLtpqJP29tfSb45+6+fTkihi440yPGvCMGv+N/5er2pUHPOWt0x92/Izit5N2NLDRLonYN9RUkJb/iF5pHi4FHL9Mqh//jDF8ENOb4bM/Q6MP0v4pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780102020; c=relaxed/simple;
	bh=5Nt7gKmduhlOCg1fxqzeanGpBTgCuiomlbblsE9mU0M=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=AAqJQ/CrfEs+q63alkREg12laUPKv5hSTDrGbFrpC+4w2thrW2cpQIhcZ7j1YcM7ZxAYicjLZ408vDX5gzMB4Rbi7SzevRNA/G2ghEwDNyCcWPrFOul5tDONs0737yC37Hp6T0+2mCac/UoaIJAcLnZqgqF7Rg12k8UVGwJXZ1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H32NhTPj; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60A271F00898;
	Sat, 30 May 2026 00:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780102018;
	bh=rwVPTeeGzTFbvnJQSElhPdpI7xBeRNI5eErQqGtwyEM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=H32NhTPjTqDvTkbYx15maVYaLkp7CImbhrKAZ7khf+2hVsqxX3tWH8ShGu1OqiBu6
	 3r7Lynv3xe4LB7UbJvBOxM37OV3Bpv99UsaT3CpdIjVBYoqjm73CAgRLoHGdUTVSTw
	 4k9g7nDJEVMOwck8nPkFpYPdOlTA0Q+tsPhs0HwV1Dw6nYLQIH5Fxk3CL3VUjQ9KRY
	 2ed11KwOB0oL6WQkr/ntulwY43iZ8KbJ6ipD7rjaiN10zwLmoQLtmAUfOevD63UaPq
	 0CZxi2km+Bjl1nU2YIkO6BV1GSYhcGc98dnZTOMPt7oqjO0jaS1j4VHRxYDX438/8R
	 G8rIF3PGH2q0g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] net: usb: Add Infineon XMM6260 Baseband modem
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Svyatoslav Ryhel" <clamor95@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260523084408.50346-3-clamor95@gmail.com>
References: <20260523084408.50346-3-clamor95@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 30 May 2026 00:46:58 +0000
Message-Id: <20260530004658.60A271F00898@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
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
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-304514-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: E67DD60A74D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] The driver uses bit flags as ad-hoc locks to guard state transitio=
ns, leading to race conditions.
- [High] The IPC wake state is updated non-atomically across multiple indep=
endent bit flags, exposing corrupted intermediate states.
- [High] The delayed work `modem_work` is not cancelled if `probe()` fails =
after IRQ registration, leading to a potential use-after-free.
- [High] Failure of `regulator_enable()` is ignored, leading to an unbalanc=
ed `regulator_disable()` later.
--

commit df5934ca9fa2794b5f5c3e72cad2823772ca0bd8
Author: Svyatoslav Ryhel <clamor95@gmail.com>
Subject: net: usb: Add Infineon XMM6260 Baseband modem support

This adds support for the Infineon/Intel XMM6260 3G modem, which connects
via the application processor's USB line in HSIC mode. The driver handles
the modem configuration and exposes the USB interface.

> diff --git a/drivers/net/usb/baseband-xmm6260.c b/drivers/net/usb/baseban=
d-xmm6260.c
> new file mode 100644
> index 0000000000000..6710e46f41704
> --- /dev/null
> +++ b/drivers/net/usb/baseband-xmm6260.c

[ ... ]

> +static void set_ipc_ap_wake(struct baseband_xmm_data *priv,
> +			    enum baseband_xmm_ipc_ap_wake_state state)
> +{
> +	for (int i =3D 0; i < BASEBAND_XMM_IPC_AP_WAKE_MAX; i++)
> +		if (state & BIT(i))
> +			set_bit(i, priv->state);
> +		else
> +			clear_bit(i, priv->state);
> +}

[Severity: High]
Is it possible for the IRQ handler to read an invalid intermediate state he=
re?
Since the bits are updated sequentially without a lock, transitioning from
state 3 to 0 could momentarily expose state 2. This could potentially cause
the threaded IRQ handler using get_ipc_ap_wake() to execute the wrong branch
of its state machine.

[ ... ]

> +static void baseband_xmm_reset(struct baseband_xmm_data *priv)
> +{
> +	int ret;
> +
> +	set_bit(BASEBAND_XMM_STATE_PROTECTED, priv->state);
> +
> +	if (!test_bit(BASEBAND_XMM_STATE_POWERED, priv->state)) {
> +		ret =3D regulator_enable(priv->vbat_supply);
> +		if (ret)
> +			dev_err(priv->dev,
> +				"failed to enable vbat power supply\n");
> +
> +		set_bit(BASEBAND_XMM_STATE_POWERED, priv->state);
> +	}

[Severity: High]
If regulator_enable() fails, the driver proceeds and unconditionally sets t=
he
BASEBAND_XMM_STATE_POWERED bit. Does this lead to an unbalanced
regulator_disable() later in baseband_xmm_poweroff()? Disabling a regulator
that was never successfully enabled could trigger a kernel warning and turn
off the regulator for other shared consumers.

[ ... ]

> +static void baseband_xmm_poweroff(struct baseband_xmm_data *priv)
> +{
> +	/*
> +	 * The test_bit check prevents poweroff from being recursively
> +	 * called during USB device deregistration. USB device
> +	 * deregistration can be triggered by the driver by calling this
> +	 * function or by some external event. The first case will cause
> +	 * a recursive call by the notifier if not handled, while the
> +	 * second case requires this call to handle the USB controller
> +	 * properly.
> +	 */
> +	if (test_bit(BASEBAND_XMM_STATE_POWEROFF, priv->state))
> +		return;
> +
> +	set_bit(BASEBAND_XMM_STATE_PROTECTED, priv->state);
> +	set_bit(BASEBAND_XMM_STATE_POWEROFF, priv->state);

[Severity: High]
Can concurrent calls bypass these checks and cause a double teardown? Becau=
se
test_bit() followed by set_bit() is not an atomic operation, concurrent cal=
ls
from the workqueue, USB notifier, and rfkill callbacks could simultaneously
observe BASEBAND_XMM_STATE_POWEROFF as false. This could result in duplicate
pwrseq_power_off() and regulator_disable() calls. Should a proper mutex be
used instead of bit flags for synchronization?

[ ... ]

> +static int baseband_xmm_probe(struct platform_device *pdev)
> +{

[ ... ]

> +	ret =3D devm_request_threaded_irq(dev, priv->irq, NULL,
> +					&baseband_hostwake_interrupt,
> +					IRQF_ONESHOT | irqflags,
> +					"modem-hostwake", priv);
> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				     "failed to register IRQ %d\n", priv->irq);
> +
> +	priv->rfkill_dev =3D rfkill_alloc("xmm-modem", dev, RFKILL_TYPE_WWAN,
> +					&baseband_xmm_rfkill_ops, priv);
> +	if (!priv->rfkill_dev)
> +		return -ENOMEM;
> +
> +	ret =3D rfkill_register(priv->rfkill_dev);
> +	if (ret) {
> +		rfkill_destroy(priv->rfkill_dev);
> +		return dev_err_probe(dev, ret,
> +				     "failed to register WWAN rfkill\n");
> +	}

[Severity: High]
If probe() fails at rfkill_register() or later, is there a risk of a
use-after-free with the delayed work? The IRQ is registered and enabled
beforehand, which could cause the interrupt handler to schedule modem_work.
Since the devres framework automatically frees the priv structure and tears
down the IRQ but does not cancel the scheduled delayed work, the work might
execute later and dereference the freed priv pointer.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260523084408.5034=
6-1-clamor95@gmail.com?part=3D2

