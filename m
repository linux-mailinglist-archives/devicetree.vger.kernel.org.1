Return-Path: <devicetree+bounces-326072-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id N/EHBDEOVmpuygAAu9opvQ
	(envelope-from <devicetree+bounces-326072-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 12:23:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 489127535C3
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 12:23:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZyheAOxJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326072-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326072-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E025D3014962
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 10:20:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3520336494C;
	Tue, 14 Jul 2026 10:20:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0051365A03
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 10:20:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784024428; cv=none; b=m/HVsE5tU5z950jB0RvlVmUPS17Jzns+D7mfOBDO/Jperq2+BMwSpVxXuXZLIYcGRdj3P4EuUuAnrzFztHX/u4pbdZLX4wKvTJacG2F8PsuLkxJ1TlQz7DX9zBOqLaoYBEMxpj/vha4hNIGoXChxRmiqyT8KXJhDjCrr6kW7SIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784024428; c=relaxed/simple;
	bh=3+1nwTN8YOP3de9oonqsCDwxOdz0GnaNE6/DZBRFy14=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lfRITu5bUbCG3CJiuNU/5m8KPYGH+btuBYd0k0ypnTEOZdc/fVdiOM+q9aqU8JJdHSoTz2LhqVq4siJP3TH0vDaa1uoXzDZMqdsMqXad5gRyHQ5Q0rAGz/gwTDA3DdzrUpf0XrxV9UAAkEM6cRI7IHGRrrO48bR3ne0G3I91OUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyheAOxJ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 510E01F000E9;
	Tue, 14 Jul 2026 10:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784024426;
	bh=ZScVYZ8poWtq8BGB0ii8vZJEoswk2dbw3WrnJPdkMG0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZyheAOxJBZurZud2IyFgu8KQj4mcBPs/u2kQ/vtZqCNngePbypIA9hCsH7jXUUQ9B
	 q+y0YgtFl84czVDT2FageQ78ghJDjmG9NVk/fAbIA/XNTmRwFfa/MEPOwrYPXeqi6y
	 7UijBnFhPJ41M2ccDfaRflMX0noLFlKA+FZdmg5VCL/H4uEFMdOwRxo0IgCOlu/Zjj
	 B2ptrVBqxVMBIUabN8MZVzg/QWBkiF73vOr0A4PjUxt0dSHriZyVzEYuYbLYc8n3pO
	 1Dn8LEYcLJyFGmshY4d8y/VLh8YOq5SI0xGOD+kDcferr2e6JMpI1kRgCdEctKykoP
	 GK3/DUj41GDog==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 2/8] i3c: master: Fix IBI request and free cleanup
 paths
Reply-To: sashiko-reviews@lists.linux.dev
To: "Lakshay Piplani" <lakshay.piplani@nxp.com>
Cc: conor+dt@kernel.org, linux-i3c@lists.infradead.org, "Alexandre Belloni" <alexandre.belloni@bootlin.com>, robh@kernel.org, Frank.Li@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260714092053.2461482-3-lakshay.piplani@nxp.com>
References: <20260714092053.2461482-1-lakshay.piplani@nxp.com>
 <20260714092053.2461482-3-lakshay.piplani@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 10:20:25 +0000
Message-Id: <20260714102026.510E01F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326072-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lakshay.piplani@nxp.com,m:conor+dt@kernel.org,m:linux-i3c@lists.infradead.org,m:alexandre.belloni@bootlin.com,m:robh@kernel.org,m:Frank.Li@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 489127535C3

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [High] Bypassing the core cleanup paths when `dev->ibi` is cleared by a c=
ontroller callback causes a permanent leak of the IBI workqueue (including =
its rescuer kthread) and potentially the `ibi` object itself.

Pre-existing issues:
- [High] Potential use-after-free of IBI pool during workqueue destruction =
if IBI disable fails.
--

--- Patch [2]: [PATCH v14 2/8] i3c: master: Fix IBI request and free cleanu=
p paths ---
commit e0d1c57d2924f66898a40232f7e52ca0e1be0aea
Author: Lakshay Piplani <lakshay.piplani@nxp.com>

i3c: master: Fix IBI request and free cleanup paths

This commit attempts to fix a workqueue leak in the IBI request failure path
by destroying the workqueue before freeing the IBI object. It also adds che=
cks
to avoid touching dev->ibi after controller callbacks if they have already
cleared it, aiming to prevent NULL pointer dereferences.

> diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
> index 3b1c342be2bc5..ba37f71badac8 100644
> --- a/drivers/i3c/master.c
> +++ b/drivers/i3c/master.c
> @@ -3702,8 +3702,18 @@ int i3c_dev_request_ibi_locked(struct i3c_dev_desc=
 *dev,
> =20
>  	dev->ibi =3D ibi;
>  	ret =3D master->ops->request_ibi(dev, req);
> -	if (ret) {
> -		kfree(ibi);
> +
> +	/*
> +	 * The controller callback may have already released and cleared dev->i=
bi
> +	 * when the request is forwarded by a virtual controller. Only clean up=
 the
> +	 * IBI object if the callback left dev->ibi valid.
> +	 */
> +	if (ret && dev->ibi) {
> +		/* Avoid leaking the workqueue allocated for this IBI request. */
> +		if (dev->ibi->wq)
> +			destroy_workqueue(dev->ibi->wq);
> +
> +		kfree(dev->ibi);
>  		dev->ibi =3D NULL;
>  	}

[Severity: High]
Does this logic introduce a permanent leak of the IBI workqueue and the loc=
al
ibi object?

Since the core framework dynamically allocated ibi and ibi->wq earlier in
i3c_dev_request_ibi_locked(), if master->ops->request_ibi() fails and the
callback cleared dev->ibi, the check if (ret && dev->ibi) will be false.

Because the callback does not own these resources and cannot safely destroy
the framework's workqueue, the workqueue (including its rescuer kthread) and
the ibi object will be skipped during cleanup and leak permanently.

[ ... ]

> @@ -3743,6 +3753,13 @@ void i3c_dev_free_ibi_locked(struct i3c_dev_desc *=
dev)
> =20
>  	master->ops->free_ibi(dev);

[Severity: High]
This isn't a bug introduced by this patch, but can this lead to a
use-after-free of the IBI pool memory if disabling the IBI fails?

Earlier in i3c_dev_free_ibi_locked(), if the IBI is still enabled, it tries
to disable it via i3c_dev_disable_ibi_locked(). If that disable fails
(e.g., due to a hardware timeout), it returns an error without waiting for
pending IBIs to finish, and we proceed directly to master->ops->free_ibi(de=
v).

This callback immediately frees the generic IBI pool. Subsequently,
destroy_workqueue() is called below, which synchronously drains
any executing IBI handler works. Since these pending work items reside insi=
de
the newly-freed pool, won't the rescuer thread dereference freed memory as
the workqueue drains?

> +	/*
> +	 * The controller callback may have already released dev->ibi, for exam=
ple
> +	 * when the request was forwarded by a virtual controller.
> +	 */
> +	if (!dev->ibi)
> +		return;

[Severity: High]
Similar to the request path above, does this early return bypass the
destruction of the workqueue and cause a resource leak?

If the controller callback cleared dev->ibi on the free path, we return
early and skip the destroy_workqueue(dev->ibi->wq) step, leaking the
workqueue and its rescuer thread.

> +
>  	if (dev->ibi->wq) {
>  		destroy_workqueue(dev->ibi->wq);
>  		dev->ibi->wq =3D NULL;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714092053.2461=
482-1-lakshay.piplani@nxp.com?part=3D2

