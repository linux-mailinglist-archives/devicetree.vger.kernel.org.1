Return-Path: <devicetree+bounces-317808-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4nepD57CQ2q0gwoAu9opvQ
	(envelope-from <devicetree+bounces-317808-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:20:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9121B6E4C4A
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:20:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LlQQjWyx;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317808-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317808-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 581B730179F3
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:19:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45AD341C30E;
	Tue, 30 Jun 2026 13:19:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C9BE41C2EA;
	Tue, 30 Jun 2026 13:19:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782825566; cv=none; b=iJH60BAANO1UJUwCw0ha+jUQERn+3e6DK+cJoqYBlxGy2BnyHM77/Y/9rw92uUczeR6MthK3mPGNhssyY1OaZ55kO7L1hKykz34DlxUgoRA5uceGvd93m0/oVAxYxFd1uw5DDzH+2M4DHibYJB5uERPYHsCi3RyTFUm/wTJZ264=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782825566; c=relaxed/simple;
	bh=1FkcqdOGqEDn13KLVgWBY0vMUbZS3S1TLLEJwcdQ8gA=;
	h=From:Subject:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=nK3FokztuAB+GKgzrU54dst/jnyjt54LmzM2o1ttL3uU/ziDrhJiKo/ZE9djVQ+pNQwijlBBgMQwl0lmZcKnbhwrWLLmjgcD3K9RKu+FM1bn/NBEdD3q1zAN0rpZp3UMMXWpJErHwVYZ4GQt0k7Rj2RNtQfWC7MhShGlIerO18I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LlQQjWyx; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B00081F000E9;
	Tue, 30 Jun 2026 13:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782825564;
	bh=X2huV41tJ0rz8l0aDtoqZqmqn9ylvKGcaUxEC++7rR8=;
	h=From:Subject:Reply-To:Cc:In-Reply-To:References:Date;
	b=LlQQjWyxYIgd5RQfxzCRSXT3munQUYGNFy8m7AUrqWXixrxJG+u1fA9hS94lkQqyQ
	 UWUfHIhdAtJRYjEyi3FElTOFQdKQJbn7a3RS/h4f8CTtWXN5WnfH/F3QhNtwb2Nn+C
	 tjy3/utkBuF+HhMeENDotyNwlac44OFA4Ly+o5lOnTQzyZZWOkXhofn4/mED1pQCHB
	 ocOI5hh3Zi9PMmZb9rPhwLZfYn6tmCyVzQnye59pd4gfn6mipwFxTnrQEWuUQKnzNX
	 6PaDUxoFTPeRzTYa1HoX6wEqDiFoW/B1m1uAxeo67bxddbKG2u/xbKZz5yg60U+Sxr
	 sOVop1h8QdPuw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 5/5] watchdog: aaeon: Add watchdog driver for
 SRG-IMX8P MCU
Reply-To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, linux-watchdog@vger.kernel.org, conor+dt@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, devicetree@vger.kernel.org
In-Reply-To: <20260630-dev-b4-aaeon-mcu-driver-v6-5-d66b5fcbd2f0@bootlin.com>
References: <20260630-dev-b4-aaeon-mcu-driver-v6-0-d66b5fcbd2f0@bootlin.com>
 <20260630-dev-b4-aaeon-mcu-driver-v6-5-d66b5fcbd2f0@bootlin.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 13:19:23 +0000
Message-Id: <20260630131923.B00081F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_TO(2.00)[];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317808-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid,bootlin.com:email];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:linux-watchdog@vger.kernel.org,m:conor+dt@kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9121B6E4C4A

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Missing PM hooks to stop the hardware watchdog during system suspe=
nd.
- [Medium] The `timeout-sec` device tree property is ignored because the dr=
iver reads it from the child MFD device instead of the parent device.
--

commit 0395f10fd7f7a423d535b7eff45bb1cf967808e5
Author: Thomas Perrot (Schneider Electric) <thomas.perrot@bootlin.com>

watchdog: aaeon: Add watchdog driver for SRG-IMX8P MCU

Add watchdog driver for the Aaeon SRG-IMX8P embedded controller.
This driver provides system monitoring and recovery capabilities
through the MCU's watchdog timer.

> diff --git a/drivers/watchdog/aaeon_mcu_wdt.c b/drivers/watchdog/aaeon_mc=
u_wdt.c
> new file mode 100644
> --- /dev/null
> +++ b/drivers/watchdog/aaeon_mcu_wdt.c

[ ... ]

> +static int aaeon_mcu_wdt_probe(struct platform_device *pdev)
> +{
> +	struct device *dev =3D &pdev->dev;

[ ... ]

> +	/*
> +	 * The MCU firmware has a fixed hardware timeout of 25 seconds that
> +	 * cannot be changed. The watchdog core handles automatic pinging to
> +	 * support software timeouts longer than the hardware limit. The default
> +	 * software timeout of 240 seconds can be overridden via the DT
> +	 * timeout-sec property or the watchdog_timeout kernel boot parameter.
> +	 */
> +	wdt->timeout =3D AAEON_MCU_WDT_TIMEOUT;
> +	wdt->min_timeout =3D AAEON_MCU_WDT_MIN_TIMEOUT;
> +	wdt->max_timeout =3D AAEON_MCU_WDT_MAX_TIMEOUT;
> +	wdt->max_hw_heartbeat_ms =3D AAEON_MCU_WDT_HEARTBEAT_MS;
> +	watchdog_init_timeout(wdt, timeout, dev);

[Severity: Medium]
Does this pass the correct device for reading the DT timeout-sec property?

Since dev is a child platform device instantiated by the MFD core, it typic=
ally
lacks an of_node. Should this be dev->parent instead, so that
device_property_read_u32() in the watchdog core can successfully find the
timeout-sec property?

> +
> +	watchdog_set_drvdata(wdt, data);
> +	watchdog_stop_on_reboot(wdt);

[ ... ]

> +	return devm_watchdog_register_device(dev, wdt);
> +}
> +
> +static struct platform_driver aaeon_mcu_wdt_driver =3D {
> +	.driver		=3D {
> +		.name	=3D "aaeon-mcu-wdt",
> +	},
> +	.probe		=3D aaeon_mcu_wdt_probe,
> +};

[Severity: High]
Will this cause unexpected system resets during suspend?

If the system enters suspend while the watchdog is active, the watchdog cor=
e's
ping worker is frozen. Since there are no PM hooks provided here to stop the
hardware timer or configure it for sleep, will the MCU's 25-second hardware
watchdog tick down and reset the board if suspend lasts longer than 25 seco=
nds?

> +
> +module_platform_driver(aaeon_mcu_wdt_driver);
> +
> +MODULE_ALIAS("platform:aaeon-mcu-wdt");

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260630-dev-b4-aae=
on-mcu-driver-v6-0-d66b5fcbd2f0@bootlin.com?part=3D5

