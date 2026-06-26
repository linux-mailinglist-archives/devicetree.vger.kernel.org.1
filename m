Return-Path: <devicetree+bounces-315971-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3Rp8Ba8tPmrKAwkAu9opvQ
	(envelope-from <devicetree+bounces-315971-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 09:43:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7396CB083
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 09:43:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="WZL4E/wr";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315971-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-315971-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1E0AA3008462
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 07:43:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EEAA3E3C53;
	Fri, 26 Jun 2026 07:43:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4508D3E1233
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 07:43:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782459816; cv=none; b=Oa8zL75LW9sxg3B14VzRNfroyNnzyQCAl/nYztf11+kOLce1t/vV4QA4stow/p66nNhOR4hLgLDb1paCgUaxw7Zne4GSstDLWbB0/2/UjwkPf5nX9XfcFX/1uQORZS1t9zv9cO86PB+n7c+YXYrldXe3PLU0Uj06cjcePhgwsDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782459816; c=relaxed/simple;
	bh=IgKmSM8QF28nMPbuhNUW6jkkgHTlGCGRO+9GkOrvnNI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=EY0i8NzgXwy/IHEa9uB1+sxVqWN/wzm0VWegrgA0mMtAcAcG/YjKXwQmVmvvhSGuHDhgg8pG/9lvEOa4pTvlqjREKbqJKkQ+SHUXv+knScrg2ANYBz0bLBDpHw3mxrBQ62gg1NKTAARvs4UT1yMYYa41Vo6ZJ3xi4682VBu6p7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZL4E/wr; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E6201F000E9;
	Fri, 26 Jun 2026 07:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782459814;
	bh=yjBAGz6Z7JMFntLenGjxPnk87dPiqlf31pTKM2hJe2o=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WZL4E/wrBTm0zkj81AQUG6qjsMDB8ydtKXpeajEszzBOnfN16fADUd3lIfnRMixxb
	 dw25a1mv/ilC2QwafcaQqMySMaCzVzdvbnLde8X6PL0+FRj3if2/g1e5o4t1L0486m
	 d4uOVLLqqkU78z9Ec89rEysQ/BCMl0Y5h8GccwQZk0LdknWwA/IdrxTrg7X88ubJii
	 vgBuS8Ic4bYjobX3Ts2bcBVVMkGJHcrF3e80/XcUw/5+UdoAq01WAd9VjP5BZZbjLJ
	 X4mclD4N7lSZTOgyL6XIb3ucvwou+GFaXCDO/+B1B7m2IZg7/e3A89xZXVZtMo/jka
	 DtvqdVXEkcxbg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/4] firmware: raspberrypi: Add reboot mode support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gregor Herburger" <gregor.herburger@linutronix.de>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260626-rpi-tryboot-v1-3-490b1c4c4970@linutronix.de>
References: <20260626-rpi-tryboot-v1-0-490b1c4c4970@linutronix.de>
 <20260626-rpi-tryboot-v1-3-490b1c4c4970@linutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Jun 2026 07:43:33 +0000
Message-Id: <20260626074334.8E6201F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315971-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:gregor.herburger@linutronix.de,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,linutronix.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EE7396CB083

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Mixing managed (devm) and manual API calls for reboot mode registr=
ation causes a double-free and a use-after-free on device removal.
- [High] Ignoring the return value of `devm_reboot_mode_register` leads to =
a NULL pointer dereference or double free if registration fails.
--

commit c4eb702fd9dc0d615bc8a99fbb83befc50f8971f
Author: Gregor Herburger <gregor.herburger@linutronix.de>

firmware: raspberrypi: Add reboot mode support

The Raspberry Pi firmware has a tryboot mode where it tries to boot from
another partition. This patch adds support for this by registering a reboot
mode driver.

> diff --git a/drivers/firmware/raspberrypi.c b/drivers/firmware/raspberryp=
i.c
> --- a/drivers/firmware/raspberrypi.c
> +++ b/drivers/firmware/raspberrypi.c
> @@ -306,6 +323,12 @@ static int rpi_firmware_probe(struct platform_device=
 *pdev)
>  	rpi_register_hwmon_driver(dev, fw);
>  	rpi_register_clk_driver(dev);
> =20
> +	fw->reboot_mode.dev =3D dev;
> +	fw->reboot_mode.write =3D rpi_firmware_reboot_mode_write;
> +	ret =3D devm_reboot_mode_register(dev, &fw->reboot_mode);
> +	if (ret)
> +		dev_err(dev, "Failed to register reboot mode: %d\n", ret);
> +
>  	return 0;
>  }

[Severity: High]
Should we return the error code here instead of returning 0?

If devm_reboot_mode_register() fails, the probe succeeds but the internal
list head for the reboot mode might remain uninitialized.=20

Later during device removal, rpi_firmware_remove() calls
reboot_mode_unregister() unconditionally. This could lead to a null pointer
dereference when iterating the uninitialized list, or a double free if the
failure occurred inside the register function and it already freed the
resources.

[ ... ]

> @@ -323,6 +346,8 @@ static void rpi_firmware_remove(struct platform_devic=
e *pdev)
>  {
>  	struct rpi_firmware *fw =3D platform_get_drvdata(pdev);
> =20
> +	reboot_mode_unregister(&fw->reboot_mode);
> +

[Severity: High]
Could this manual unregister cause a double-free and use-after-free?

Since devm_reboot_mode_register() is used in probe, the devres cleanup will
automatically unregister the reboot mode when the device is removed.

By manually calling reboot_mode_unregister() here:
1. It frees the strings in the list.
2. rpi_firmware_put(fw) drops the reference, potentially freeing the fw
   structure.
3. The devres cleanup runs devm_reboot_mode_release() upon returning,
   accessing the freed fw structure and attempting to unregister and free
   the strings a second time.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260626-rpi-tryboo=
t-v1-0-490b1c4c4970@linutronix.de?part=3D3

