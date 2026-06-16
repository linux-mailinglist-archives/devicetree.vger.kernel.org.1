Return-Path: <devicetree+bounces-312598-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EQ+dL39gMWoViQUAu9opvQ
	(envelope-from <devicetree+bounces-312598-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 16:41:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B08690983
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 16:41:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=dO9WqRP+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312598-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-312598-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E103F32207A7
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 14:32:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54C4136F8F5;
	Tue, 16 Jun 2026 14:32:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5172E7367
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 14:32:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781620341; cv=none; b=lg/OKv0E2sXhyROYZkYHYUDf3YdvD/hINdl0ogzFafQo/7WJLyIx9Nt515S26X8A2kaQ4AoScAWlfmKwRHmwGK5TVhNf+Xk6uhfvSCHaPMy2LIdbhKGjx33NEtEpaOb1UeapRY/WY5j3zkDPWyULUx5m4fopsfc9YFAkmK6S8cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781620341; c=relaxed/simple;
	bh=c6RN95c1sFS1NbeJrUsUXFOTV4g3+4W0vr5yRU1cEV8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=T6KspFTWWcR/j2ffPkB/mw0VD5zZTUYxRr0OkI7k1YEe6PLwcCT4EhTMZnR5yZdmrcRwbVLrOc1In0jnOUxKGPAiofB1oCMV5UqrHGyVXaNMxfoEq8wUJU1MZ8ATyQbBJ3P++LMfpVyGhUTxr3lmSK8vf2t6YxU7QlifgeRpo0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dO9WqRP+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96F321F000E9;
	Tue, 16 Jun 2026 14:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781620339;
	bh=X6FhCf4+L/pvVIzS3V/NnoolwFkO9twN0xbZ08BVKiU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dO9WqRP+KBCCLQsaWrJK0W75fOIxNxUceSRcAE3iH1NKFzru/QVhvYqAmO6VPLMOA
	 AYoNzrh07/D2p/k0aMtvyC6sj+nRAvrFTQ1llpmvKDgpX7qMl7k0D+BdwPrvvaNwQk
	 Y07RnwP91nywHmZOveF5Ukn0UqIrDP2lTY0qyKQTzYaCKQ3w8Rzxx7O2/p23dX4qrn
	 e4aoroS+PPGlF34pGeYtJjQHRCvvbLs2nk4FU6tfEnG6aVu1wpNPjiqtZHk35U3hgL
	 nJo/IVSyi+hb+03SGmVQPGk+hieSxWVm1DW8r6eMx63yScG1Kr80XFTWHpLIb+WQ6u
	 EjlONqazfduzQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v7 05/12] net: phylink: support late PCS
 provider attach
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260615122950.22281-6-ansuelsmth@gmail.com>
References: <20260615122950.22281-6-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jun 2026 14:32:18 +0000
Message-Id: <20260616143219.96F321F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312598-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ansuelsmth@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 50B08690983

Thank you for your contribution! Sashiko AI review found 5 potential issue(=
s) to consider:
- [High] Use-After-Free in PCS global notifier list due to missing unregist=
er in `phylink_create()` error paths.
- [High] NULL pointer dereference due to uninitialized `pl->config` in the =
PCS notifier callback.
- [High] List corruption race between `phylink_create()` and `fwnode_pcs_ad=
d_provider()`.
- [High] Use-After-Free of `phylink_pcs` structure in `pcs_provider_notify(=
)` due to missing reference counting.
- [Medium] TOCTOU race condition in `phylink_create()` causes missed PCS at=
tachments.
--

commit e3c74d4cdf92d51d1f16bc8736f6fb1e1800f91d
Author: Christian Marangi <ansuelsmth@gmail.com>

net: phylink: support late PCS provider attach

This patch adds support for late PCS provider attachment by introducing a
global notifier. Phylink instances subscribe to this notifier and react to
FWNODE_PCS_PROVIDER_ADD events by linking the new PCS and refreshing
supported interfaces.

> diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
> index ca4dad4b140a0..0734c98498a99 100644
> --- a/drivers/net/phy/phylink.c
> +++ b/drivers/net/phy/phylink.c

[ ... ]

> @@ -1997,6 +1999,51 @@ static int phylink_fill_available_pcs(struct phyli=
nk *pl,
>  	return ret;
>  }
> =20
> +static int pcs_provider_notify(struct notifier_block *self,
> +			       unsigned long val, void *data)
> +{
> +	struct phylink *pl =3D container_of(self, struct phylink, fwnode_pcs_nb=
);
> +	struct fwnode_handle *pcs_fwnode =3D data;
> +	struct phylink_pcs *pcs;
> +
> +	/* Check if the just added PCS provider is
> +	 * in the phylink instance pcs-handle property.
> +	 */
> +	pcs =3D fwnode_phylink_pcs_get_from_fwnode(dev_fwnode(pl->config->dev),
> +						 pcs_fwnode);

[Severity: High]
Could this cause a NULL pointer dereference?=20

The notifier is registered in phylink_create() before pl->config is=20
initialized. If a concurrent thread adds a PCS provider immediately after=20
registration, won't pcs_provider_notify() attempt to access pl->config->dev=
=20
while it is still NULL?

> +	if (IS_ERR(pcs))
> +		return NOTIFY_DONE;
> +
> +	/* Add the PCS */
> +	rtnl_lock();

[Severity: High]
Does this code risk a use-after-free?=20

The phylink_pcs pointer is retrieved without incrementing a reference count=
,=20
and then the thread can sleep while waiting for rtnl_lock().=20

If the module providing the PCS is concurrently unbound during this wait,=20
freeing the phylink_pcs structure, will this code dereference the freed=20
pointer once the lock is acquired?

> +
> +	mutex_lock(&pl->state_mutex);
> +
> +	/* Link PCS with phylink */
> +	list_add(&pcs->list, &pl->pcs_list);

[Severity: High]
Is it possible for the list to become corrupted here?=20

If phylink_fill_available_pcs() finds the newly added PCS and links it to=20
pl->pcs_list during phylink_create(), and then the delayed=20
FWNODE_PCS_PROVIDER_ADD notification fires right after, won't=20
pcs_provider_notify() unconditionally add the exact same pcs structure=20
to the list again?

[ ... ]

> @@ -2068,6 +2115,12 @@ struct phylink *phylink_create(struct phylink_conf=
ig *config,
>  				 pl->supported_interfaces,
>  				 pcs->supported_interfaces);
> =20
> +	/* Register notifier for late PCS attach */
> +	if (!phy_interface_empty(config->pcs_interfaces)) {
> +		pl->fwnode_pcs_nb.notifier_call =3D pcs_provider_notify;
> +		register_fwnode_pcs_notifier(&pl->fwnode_pcs_nb);
> +	}
> +

[Severity: Medium]
Is there a race condition window here?=20

If a new PCS provider is added concurrently between the earlier call to=20
phylink_fill_available_pcs() and the registration of the notifier here,=20
will the FWNODE_PCS_PROVIDER_ADD event fire before the notifier is active,=
=20
causing the PCS to be permanently missed?

>  	pl->config =3D config;
>  	if (config->type =3D=3D PHYLINK_NETDEV) {
>  		pl->netdev =3D to_net_dev(config->dev);

[Severity: High]
If phylink_create() encounters an error later in the function (like an=20
invalid config->type or phylink_parse_mode() failing), does this leave=20
a dangling pointer in the global notifier chain since=20
unregister_fwnode_pcs_notifier() isn't called before kfree(pl)?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615122950.2228=
1-1-ansuelsmth@gmail.com?part=3D5

