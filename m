Return-Path: <devicetree+bounces-317523-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +hVPD1OLQ2rIawoAu9opvQ
	(envelope-from <devicetree+bounces-317523-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:24:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C875D6E21BF
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:24:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CZ+HiLWF;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317523-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317523-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E6B663067F38
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:18:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFA63383318;
	Tue, 30 Jun 2026 09:18:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 705683612FE;
	Tue, 30 Jun 2026 09:18:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782811122; cv=none; b=HHVj7abWBXd6BX3kixeuuG+ZumBsaAiklupZHcO2rTU/ICveoESBhk4z27S1UuX0wGawYj3K6VCwvWldO/6Ot/fQdCa1oVA08bpeiMZAiYHEpVAQorSlUBGP97bDoFz/PWZiEFIeBD9u6M7dG5lvjiK7r2IA2bdzodkCv4skpAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782811122; c=relaxed/simple;
	bh=mmWScPHgRxacOGDoAgUetRwD2us8734CYQ2jreV0enQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=EaToZqGFV2jqPLYsRcVqHnjtjw07cee5Y6V/18m0gyk76RgQMZbxbl3As3SvbYoKi4eeZyp4bVSJNpa9radymCi/y4EuqGpFq9Op4uOzJFavQGXvJKnEx5EoAij3Qcj5sZkp4E6W1ZziGcfBlkWTuVpZBRxrN3ntaFDU4MLlV+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZ+HiLWF; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E340E1F00A3D;
	Tue, 30 Jun 2026 09:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782811121;
	bh=3HbL/bxS5NfZBSjM72YgGg9R81gM7YXM63shB1q8IO0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CZ+HiLWFguKIZEf7sUxf0OJBO9Xufj4qK4XGI2WfBZeeAwX/AUR7eGHBZQOzzRjxY
	 CoHaJJyvJEWy4/17aMeKYMBU08FNeYJbuxc7zjKZKxi7y7YeTUgrX6XYlQBXYPMyPE
	 URoThKT7lMZRu8NRFfmZLK/LaVvlNR0ixY+XASrRLqnL0Jb8e9mmo5DWEWo2lf/O0D
	 Cl1ehmAsNrUWMOU9VL21Y8b18/obmKV/StAsQQFQCU9+DCAQUrozk+WK7pEYo4t8D4
	 WY7A5UUfyqZCyY9g3mrY2sVkXdwZQ34+/Y8axaeeE8v5Qnhb4CYfp91xIAAYyaS0Uc
	 bWkrG6XZWhEPA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 14/19] drm/xe/i2c: use platform_device_set_fwnode()
Reply-To: sashiko-reviews@lists.linux.dev
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, imx@lists.linux.dev, Frank.Li@kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260629-pdev-fwnode-ref-v2-14-8abe2513f96e@oss.qualcomm.com>
References: <20260629-pdev-fwnode-ref-v2-0-8abe2513f96e@oss.qualcomm.com>
 <20260629-pdev-fwnode-ref-v2-14-8abe2513f96e@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 09:18:40 +0000
Message-Id: <20260630091840.E340E1F00A3D@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317523-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bartosz.golaszewski@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:imx@lists.linux.dev,m:Frank.Li@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C875D6E21BF

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Missing cancel_work_sync() in driver teardown and error paths allo=
ws a pending background work to execute after the 'xe_i2c' structure is fre=
ed.
--

commit 1ceae3ee709a0fb69c698acf7a00cab2a5e1829c
Author: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

drm/xe/i2c: use platform_device_set_fwnode()

Ahead of reworking the reference counting logic for platform devices,
encapsulate the assignment of the firmware node for dynamically allocated
platform devices with the provided helper.

> diff --git a/drivers/gpu/drm/xe/xe_i2c.c b/drivers/gpu/drm/xe/xe_i2c.c
> index 706783863d07d..af4ebd93ad8e6 100644
> --- a/drivers/gpu/drm/xe/xe_i2c.c
> +++ b/drivers/gpu/drm/xe/xe_i2c.c
> @@ -123,7 +123,7 @@ static int xe_i2c_register_adapter(struct xe_i2c *i2c)
>  	}
> =20
>  	pdev->dev.parent =3D i2c->drm_dev;
> -	pdev->dev.fwnode =3D fwnode;
> +	platform_device_set_fwnode(pdev, fwnode);
>  	i2c->adapter_node =3D fwnode;
>  	i2c->pdev =3D pdev;
> =20

[Severity: High]
This is a pre-existing issue, but I noticed a potential use-after-free
involving the background work item in this file.

If platform_device_add() (called just below this block) triggers the bus
notifier but ultimately fails, the asynchronously scheduled i2c->work remai=
ns
pending.

When xe_i2c_probe() handles the error by unregistering the notifier and
returning, devres immediately frees the i2c structure. Later, when the work
executes, could it write to i2c->client[0] in freed memory?

The xe_i2c_probe() error path currently does this:

err_unregister_notifier:
	bus_unregister_notifier(&i2c_bus_type, &i2c->bus_notifier);

	return ret;

A similar scenario appears to exist in the standard teardown path, as
xe_i2c_remove() does not cancel the pending work:

static void xe_i2c_remove(void *arg)
{
	...
	bus_unregister_notifier(&i2c_bus_type, &i2c->bus_notifier);
	xe_i2c_unregister_adapter(i2c);
	xe_i2c_remove_irq(i2c);
}

Should cancel_work_sync(&i2c->work) be added to both the probe error path
and the remove function to ensure the work item doesn't execute after the
structure is freed?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-pdev-fwnod=
e-ref-v2-0-8abe2513f96e@oss.qualcomm.com?part=3D14

