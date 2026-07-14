Return-Path: <devicetree+bounces-326379-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cEN3I/5xVmrC5gAAu9opvQ
	(envelope-from <devicetree+bounces-326379-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 19:29:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC3D7576E9
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 19:29:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Wwc2238u;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326379-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326379-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 40F92314EDB2
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 17:27:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE83839CCFA;
	Tue, 14 Jul 2026 17:27:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C2B4D98E6;
	Tue, 14 Jul 2026 17:27:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784050078; cv=none; b=gldGu58szJ1V+ag2jt6zKXYsBG8AWW1z86g5ZqehSj8FyKQVAZw3YRvNI7zjd4K/PJuNRAJfxXuHTioXLTp9QF8MJpPgakiPi9t+xLEghYWJt7VZBZJbifjTg2R2BzGxxX1IvDmXnM2nfwO+xYFaRb1nR3TzY26rA7lk9H5J3UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784050078; c=relaxed/simple;
	bh=GkbwF1NR+ygXMaygMALF3UT2Nv5v0wnzkxaqU6dsIeY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=LjCvGOKa0gdKIfe+XLWDYUlHsAjRHBammYfl/+uQwdKrhH2qV8cIc3ZmwWq6pwEoBXipYrEK8N5S96KSnxhAk1CqcHd9JP1/CmCYCa8Xbu358XoWr9/aP0QyKbO7q2o16PI+mCo6cRpZXYI2flGTU+n0x2sJT4rZhI7Feb9jEuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wwc2238u; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E12F91F000E9;
	Tue, 14 Jul 2026 17:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784050077;
	bh=f1/rcfRvpMycbS6cbcUVK18my4ZXamQGSdKvk6yVHBM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Wwc2238uF2JqF+6jTGDpX+CHZ45ytAyy4WKI8/TlbRL8mP72Uw8yQrGydFkQpyfEP
	 N8vx39AjPk8cO8Exp70sSytmNwf3e+nNCcw0U3R2eQodCqC4p52uhlGtnpVePOeVXz
	 NShwkb9B9Fv8y7x1ufmWynsZUxaDnbJ4CiWDczCgznaWDrHzao/YzL41CfTiW1cB26
	 0/xzKgXKfxToTli9KsSNjVT/kgWMynkYvjIHtSgABnjiVqQ465gtWjFA5i4vbhDe3A
	 SVXWuxSaHiXt+qHTEgfryv01DyIH6f17kpbLU8saeiWSswp6zdYypC5qQCBXkX3ZrT
	 E6WJTy9EcNdbA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v23 03/13] power: reset: reboot-mode: Add support for
 predefined reboot modes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Shivendra Pratap" <shivendra.pratap@oss.qualcomm.com>
Cc: mfd@lists.linux.dev, devicetree@vger.kernel.org, lee@kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260714-arm-psci-system_reset2-vendor-reboots-v23-3-e7453c548c21@oss.qualcomm.com>
References: <20260714-arm-psci-system_reset2-vendor-reboots-v23-0-e7453c548c21@oss.qualcomm.com>
 <20260714-arm-psci-system_reset2-vendor-reboots-v23-3-e7453c548c21@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 17:27:56 +0000
Message-Id: <20260714172756.E12F91F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-326379-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,qualcomm.com:email,lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:shivendra.pratap@oss.qualcomm.com,m:mfd@lists.linux.dev,m:devicetree@vger.kernel.org,m:lee@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DBC3D7576E9

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Hardcoded non-unique device naming causes cross-instance destructi=
on of sysfs state on probe failure.
--

--- Patch [3]: [PATCH v23 03/13] power: reset: reboot-mode: Add support for=
 predefined reboot modes ---
commit 7f64e78c4dace557cca8c3399655be137b5cc95f
Author: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>

power: reset: reboot-mode: Add support for predefined reboot modes
   =20
Extend the reboot-mode framework to handle predefined modes alongside
those defined in device tree. Drivers can now define their own
reboot-modes and register them via the framework. A centralized init
call has been added to the reboot-mode framework and adopted by
existing drivers.

> diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/rebo=
ot-mode.c
> --- a/drivers/power/reset/reboot-mode.c
> +++ b/drivers/power/reset/reboot-mode.c
[ ... ]
> @@ -267,7 +317,7 @@ static inline void reboot_mode_unregister_device(stru=
ct reboot_mode_driver *rebo
>  	if (!priv)
>  		return;
> =20
> -	reboot_mode_release_list(priv);
> +	reboot_mode_release_list(&priv->head);
>  	kfree(priv);
>  }

[Severity: High]
This is a pre-existing issue, but does the hardcoded use of the generic
driver name for the sysfs device cause cross-instance destruction if
multiple instances of a reboot-mode driver are probed?

If the device tree defines multiple instances (e.g. syscon-reboot-mode),
the first instance successfully creates a sysfs device using
reboot->dev->driver->name:

reboot_mode_create_device() {
        ...
        priv->reboot_mode_device =3D device_create(&reboot_mode_class, NULL=
, 0,
                                                 (void *)priv, "%s",
                                                 reboot->dev->driver->name);
}

The second instance would fail device_create() with -EEXIST due to the
name collision. During its error path cleanup,
reboot_mode_unregister_device() searches for the device by the same
generic driver name:

reboot_mode_unregister_device() {
        ...
        reboot_mode_device =3D class_find_device(&reboot_mode_class, NULL,
                                               reboot->dev->driver->name,
                                               reboot_mode_match_by_name);
        ...
        device_unregister(reboot_mode_device);
       =20
        if (!priv)
                return;
       =20
        ...
        kfree(priv);
}

Could this erroneously find the first successfully probed instance's sysfs
device, unregister it, and free its priv data, leaving the first instance
silently corrupted? Would it be safer to use a unique instance name like
dev_name(reboot->dev) for device_create() instead?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-arm-psci-s=
ystem_reset2-vendor-reboots-v23-0-e7453c548c21@oss.qualcomm.com?part=3D3

