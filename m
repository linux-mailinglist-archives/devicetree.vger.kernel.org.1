Return-Path: <devicetree+bounces-321815-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id V0QZKAO2TGokogEAu9opvQ
	(envelope-from <devicetree+bounces-321815-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 10:17:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 33403718FBF
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 10:17:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=HFx1bAqD;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321815-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-321815-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A28B43001FCB
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 08:17:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F72330D41D;
	Tue,  7 Jul 2026 08:17:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0950526F2B9;
	Tue,  7 Jul 2026 08:17:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783412225; cv=none; b=gdt1lythyHmHq8Q/RFQgvGU8WiJItKtKsMH7rUp0jidHqZ2K3GwWGq/tLPqzBSCA/A5WaZBcKbXTlt/QtPJkbCsrXpMvWkgEYF3ZwMEL/EJmHFtrp6m1VEUXKiB7YgJYvekV6H72R6RvnjHpt11r+6djpRaarR3Kr6EUSp5zcf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783412225; c=relaxed/simple;
	bh=mEr1KdXxHudSFqFmnxi4MJTgUjdPkfs9rh899k4SYOQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=RHj3xt2Cobt4AeMsDrT8QJloZe+qVUfdRt6G5fLWFeCvEOdUxmXymLvBO/jKT4yBweCjrB0TS1iOljT3d7nEnX7f6rsPJhMaJbpGml13Ia//uwW8QpEgI3JZMrDfYOXw0VEIrf/mFEjqsUy6YshYCVwHzK/wfqG51chtVeaxgB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFx1bAqD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 443B51F000E9;
	Tue,  7 Jul 2026 08:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783412223;
	bh=9QHfejCwCFHVTnua7eG3aMl31B3p2Jiye6Z6joMIFFw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HFx1bAqD2EO3vZijc+tYql5hBMX9jhDCJKFz9hUrubghNwnTrdEDXuG4xvJXpoEYt
	 GpNDJH8xNyC7vnIGUZeAC1vH3Uyhhe4QMzGhK6dmp5JX6HWg6d5Uw5aqK0PvFwTGUQ
	 SRknkbC2cuGSMGtYnQb0yqkB1Vz5DPwhAlUFurcyEXOQyxY4dgBSFNXF63Em0QvVTO
	 SsXjMnl6B9SEBluqXsiAdzMENhtWgUldGQJ8eMCec91bTaNyRskB+fQgDpJNLqh8Ww
	 a/tUqSM2ey2tzIENEhzBUM2VqvM5X+0OboAGJuu2sR46d5/FzznhrOwwsLmBDmBJ5Q
	 RQ438AX1e39Ew==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 5/5] watchdog: aaeon: Add watchdog driver for
 SRG-IMX8P MCU
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?VGhvbWFzIFBlcnJvdCAoU2NobmVpZGVyIEVsZWN0cmljKQ==?= <thomas.perrot@bootlin.com>
Cc: linux-watchdog@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, Frank.Li@kernel.org
In-Reply-To: <20260707-dev-b4-aaeon-mcu-driver-v7-5-ca6c59abd672@bootlin.com>
References: <20260707-dev-b4-aaeon-mcu-driver-v7-0-ca6c59abd672@bootlin.com>
 <20260707-dev-b4-aaeon-mcu-driver-v7-5-ca6c59abd672@bootlin.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 08:17:02 +0000
Message-Id: <20260707081703.443B51F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	TO_EXCESS_BASE64(1.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-321815-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:thomas.perrot@bootlin.com,m:linux-watchdog@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:Frank.Li@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,vger.kernel.org:from_smtp,sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 33403718FBF

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] The hardware watchdog is not stopped during system suspend if it w=
as started by the bootloader but not yet opened by userspace, leading to a =
system reset.
- [High] The watchdog core's ping worker is not stopped on suspend, leading=
 to I2C transactions on a suspended MFD parent.
- [Medium] The driver's `min_timeout` is incorrectly set to 1, violating th=
e API contract for the hardware's fixed 25-second timeout.
--

--- Patch [5]: [PATCH v7 5/5] watchdog: aaeon: Add watchdog driver for SRG-=
IMX8P MCU ---
commit 7a0cc8bfbb00c11d5c1b8e4bd30df8f3d386356e
Author: Thomas Perrot (Schneider Electric) <thomas.perrot@bootlin.com>

watchdog: aaeon: Add watchdog driver for SRG-IMX8P MCU

Add watchdog driver for the Aaeon SRG-IMX8P embedded controller.
This driver provides system monitoring and recovery capabilities
through the MCU's watchdog timer.

> diff --git a/drivers/watchdog/aaeon_mcu_wdt.c b/drivers/watchdog/aaeon_mc=
u_wdt.c
> new file mode 100644
> index 0000000000000..9ff559a69fd7b
> --- /dev/null
> +++ b/drivers/watchdog/aaeon_mcu_wdt.c
[ ... ]
> +static int aaeon_mcu_wdt_probe(struct platform_device *pdev)
> +{
[ ... ]
> +	wdt->timeout =3D AAEON_MCU_WDT_TIMEOUT;
> +	wdt->min_timeout =3D AAEON_MCU_WDT_MIN_TIMEOUT;

[Severity: Medium]
Is it correct to set min_timeout to 1 here?

Since the hardware has a fixed 25-second timeout, the watchdog core's ping
worker can only extend timeouts, not shorten them. If a user requests a
timeout shorter than 25 seconds, the core will accept it, but the system
will still take the full 25 seconds to reboot.

Should min_timeout be set to 25 to reject impossible configurations?

> +	wdt->max_hw_heartbeat_ms =3D AAEON_MCU_WDT_HEARTBEAT_MS;
> +	watchdog_init_timeout(wdt, timeout, dev->parent);
> +
> +	watchdog_set_drvdata(wdt, data);

[Severity: High]
Does this driver need to call watchdog_stop_ping_on_suspend() here?

Because max_hw_heartbeat_ms is set, the watchdog core spawns a kthread
worker to periodically ping the hardware. Without registering the PM
notifier to stop the ping worker on suspend, the unfrozen kthread could
call aaeon_mcu_wdt_ping() while the parent I2C/MFD device is already
suspended.

Could this lead to I2C bus lockups or transfer failures during sleep?

> +	watchdog_stop_on_reboot(wdt);
> +	dev_set_drvdata(dev, wdt);
> +
> +	ret =3D aaeon_mcu_wdt_status(wdt, &enabled);
> +	if (ret)
> +		return ret;
> +
> +	if (enabled)
> +		set_bit(WDOG_HW_RUNNING, &wdt->status);
> +
> +	return devm_watchdog_register_device(dev, wdt);
> +}
> +
> +static int aaeon_mcu_wdt_suspend(struct device *dev)
> +{
> +	struct watchdog_device *wdt =3D dev_get_drvdata(dev);
> +
> +	if (watchdog_active(wdt))
> +		return aaeon_mcu_wdt_stop(wdt);

[Severity: High]
Will this properly handle the case where the bootloader started the watchdog
but userspace hasn't opened it yet?

In that scenario, watchdog_active() is false but WDOG_HW_RUNNING is set.
This suspend routine would return early, leaving the 25-second hardware
timer running. This might trigger an unintended system reset while the
system is asleep.

Should this also check watchdog_hw_running()?

> +
> +	return 0;
> +}
> +
> +static int aaeon_mcu_wdt_resume(struct device *dev)
> +{
> +	struct watchdog_device *wdt =3D dev_get_drvdata(dev);
> +
> +	if (watchdog_active(wdt))
> +		return aaeon_mcu_wdt_start(wdt);

[Severity: High]
Similar to the suspend callback, if the watchdog was solely in the
WDOG_HW_RUNNING state, it won't be restarted on resume.

Would checking watchdog_hw_running() ensure it resumes correctly?

> +
> +	return 0;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707-dev-b4-aae=
on-mcu-driver-v7-0-ca6c59abd672@bootlin.com?part=3D5

