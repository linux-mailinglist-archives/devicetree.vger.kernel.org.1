Return-Path: <devicetree+bounces-317654-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Bh9yNzGkQ2p+eAoAu9opvQ
	(envelope-from <devicetree+bounces-317654-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:10:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB5B6E3640
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:10:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="KOGYEz/0";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317654-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-317654-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3BB93309DADD
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:02:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 615E640911B;
	Tue, 30 Jun 2026 10:57:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1ED3CBE69
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 10:57:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782817023; cv=none; b=ZgRyscTDHRaeFeQ6BX4dZYvWoxJpugD+bHtzjuKbTd8kgD4eMTo1jXDobIRHXSipOmeZN9Ae/ikQK1NKLxBvCeYeqcPcemUVXV4JT+zGX4a1ids+dr6VIAchKOm7Fpuc7Vg55J0/u2ijGn9VXbNIUvgWgUMeDFhO88gil/lRBmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782817023; c=relaxed/simple;
	bh=ov3kb4yH+iOWRxWdyoXEUQ4PtyrHIjXCo3GXcG1ywrU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=khmeMhtzbqc457s1yDE9xhDi2tgEAIPcUuHIvSYXV7PzZhZ1VzxgnAr3/Acz9JRpiDaM3n4dknm8yWtCxYSJFJHoIKVxn9FNaRO30aCozSEF0+9Rek+aUp81dcNngg78nnnLpQLYejYW06+gl7EZF0UekC7LWVokghqmAOUggNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOGYEz/0; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D0471F00A3A;
	Tue, 30 Jun 2026 10:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782817021;
	bh=tckWTZyl+fbwDvg9BriAJ7XwKDaJtFh0rbTkh0zqusg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KOGYEz/0mB83TXbuUzvThjyzDhjWguiB0vce0fFP6Fll0N9xFYLXfwYORSgsWmg+j
	 YTdQpzq1ZR/eDv4weXIKtRCW2ATyXDUxVbkcgi1/HAuwZ4wIpOU3ezPyN+TqxI+4ba
	 ImWH3h798U6p+u5UvyRGIQ53ayK99kyT7Csg/G0VAYPSZZu4HtMpMkuObfljAVABve
	 Y9cMZyszxw0OMikjlmV+KtLtzDVinGuP8txfO3fdvXUJAa7/2ZhYSt50C/yHMF0Qh4
	 zGtIPzCpueAGt/yIub5c+JcQPtGQkK/JCGhrxxC9G7XMsyhu3ysQjmXuyiA8ttAcKU
	 SsbDDSRQWYv8w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 2/2] bus: simple-pm-bus: Populate child nodes at
 probe
Reply-To: sashiko-reviews@lists.linux.dev
To: "Herve Codina" <herve.codina@bootlin.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260630102717.413501-3-herve.codina@bootlin.com>
References: <20260630102717.413501-1-herve.codina@bootlin.com>
 <20260630102717.413501-3-herve.codina@bootlin.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 10:57:01 +0000
Message-Id: <20260630105701.7D0471F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317654-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:herve.codina@bootlin.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,bootlin.com:email,lists.linux.dev:replyto,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,smtp.kernel.org:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6CB5B6E3640

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Time-of-Check to Time-of-Use (TOCTOU) race with the mutable driver=
_override sysfs attribute causes state mismatch and resource leaks.
- [High] The driver leaks clock enable counts during removal because pm_run=
time_disable() is called without synchronously suspending the device.
--

commit 8879d2bb547d47c5c484809ff15676d13cfec9a8
Author: Herve Codina <herve.codina@bootlin.com>

bus: simple-pm-bus: Populate child nodes at probe

The simple-pm-bus driver didn't populate child devices during probe when us=
ed
with busses other than a compatible "simple-pm-bus", confusing fw_devlink.
This commit explicitly populates child nodes during probe for those compati=
ble
devices to ensure proper devlink creation and consumer removal ordering.

> diff --git a/drivers/bus/simple-pm-bus.c b/drivers/bus/simple-pm-bus.c
> index 4b2a793dfbd90..d969bf19a4e95 100644
> --- a/drivers/bus/simple-pm-bus.c
> +++ b/drivers/bus/simple-pm-bus.c

[ ... ]

> @@ -78,7 +80,7 @@ static void simple_pm_bus_remove(struct platform_device=
 *pdev)
>  {
>  	const void *data =3D of_device_get_match_data(&pdev->dev);
> =20
> -	if (device_has_driver_override(&pdev->dev) || data)
> +	if (device_has_driver_override(&pdev->dev))

[Severity: High]
This isn't a bug introduced by this patch, but is it safe to rely on
device_has_driver_override() here during removal?

The driver_override sysfs attribute is mutable. If it is changed by a user
after probe() but before remove(), the control flow in remove() will skip
of_platform_depopulate() and pm_runtime_disable(), causing state mismatches.

If the override is cleared after being set during probe, remove() might
attempt to depopulate children it never populated and disable PM runtime it
never enabled.

Could this rely on the driver's own internal state (like dev_get_drvdata())
instead of checking a mutable sysfs attribute?

>  		return;
> =20
>  	dev_dbg(&pdev->dev, "%s\n", __func__);
> @@ -86,7 +88,8 @@ static void simple_pm_bus_remove(struct platform_device=
 *pdev)
>  	if (pdev->dev.of_node)
>  		of_platform_depopulate(&pdev->dev);
> =20
> -	pm_runtime_disable(&pdev->dev);
> +	if (!data)
> +		pm_runtime_disable(&pdev->dev);

[Severity: High]
This is a pre-existing issue, but does calling pm_runtime_disable() here
without synchronously suspending the device leak clock enable counts?

of_platform_depopulate() removes the children, which may asynchronously drop
the bus's PM usage counter. Calling pm_runtime_disable() immediately
afterward cancels any pending async suspend requests.

If the parent bus remains RPM_ACTIVE when pm_runtime_disable() completes,
devm will free the clock structures without disabling them, permanently
leaking the clock references.

Should the driver synchronously suspend the device before disabling runtime=
 PM?

>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260630102717.4135=
01-1-herve.codina@bootlin.com?part=3D2

