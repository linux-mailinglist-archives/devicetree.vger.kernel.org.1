Return-Path: <devicetree+bounces-313813-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RdzCFwVONWpgsAYAu9opvQ
	(envelope-from <devicetree+bounces-313813-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 16:11:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB7A6A64D9
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 16:11:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ILxPKt3L;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313813-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-313813-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A0D25300E298
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 14:11:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA608375F8E;
	Fri, 19 Jun 2026 14:11:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D91D380FFD
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 14:11:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781878275; cv=none; b=Lj+TzuKibPP6Oh3bFhr2Ex7YotTnwdw/BTA+IWTTB/lsMSrSnJ3pMBSyhW9CFQHZgBKU4AKHzRZkCTwAbmEVwJpMrHVXSFxZuRUZylHcyxOJcITYMWydCdYVnOTN5vHRCPaVdFK4qKiIU2/nxCijZYCXcwWMC0hl3m11LeMYyw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781878275; c=relaxed/simple;
	bh=IHFSIM7j8H+WiUWv6Jm6mIduOrcCuKr70mGIjMlRv+I=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=aJvHErMIBWF8MKyqJQis6ZeBMOZhPqKUeNVm0Yo3xgKim4wWfUyIz3iawSE3djMG+EShdI8ivDQm79EszzDnJAA4rRQ383g8Nx8qt4pipLN6/T7ZWx3fc3Op/Kwg6pw1fmPJ0XFN+otwFC6qIjODjeNpkf9S29jbdOvGumLBYZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILxPKt3L; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D98E41F000E9;
	Fri, 19 Jun 2026 14:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781878272;
	bh=v4soPLi1wD1ebgTajnyq0tmtMr1Mc/pqY16NNISzfYw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ILxPKt3LG0yka8IHdr4gPziueNPjDJNaZz6d0Vmc3R4yQWjOMap6Kz6qFOPaD/JIi
	 qOfReHPnew5jYKD9M0hPhqJ0eL6cDmzu0RFCBkTMDwm6WbywKphS3ZjbmteGA4ltUA
	 o62umJ5AeVkxn9VILQo2gicUFd60cALB7rOhxpL6KazusTCmQGnJxZDBwk+dfOVDlO
	 vg8fc+0gQ59RixA4ouh6qpsq02+MLSFdZ8kymUBZFIkI5u4GX+KqlQihtCHvgQye5Y
	 Hg3RkJJr19YUyhY3w+ZmV3iKbJ9XV51RAx3cfp8NeivNj3GXkCirTKtriMjPTn4lhu
	 gt4OjLc8UpWhA==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH net-next v8 05/12] net: phylink: support late PCS
 provider attach
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260618125752.1223-6-ansuelsmth@gmail.com>
References: <20260618125752.1223-1-ansuelsmth@gmail.com>
 <20260618125752.1223-6-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jun 2026 14:11:11 +0000
Message-Id: <20260619141111.D98E41F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313813-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ansuelsmth@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
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
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3DB7A6A64D9

Thank you for your contribution! Sashiko AI review found 7 potential issue(=
s) to consider:
- [Critical] Unconditional `list_add()` in `pcs_provider_notify()` leads to=
 list corruption for shared PCS providers.
- [Critical] Missing PCS removal handling leads to Use-After-Free in `pl->p=
cs_list`.
- [High] TOCTOU race in `phylink_create()` allows a late PCS provider to be=
 permanently missed.
- [High] Incorrect fwnode used for `pcs-handle` lookup silently breaks late=
 attach on multi-port devices (e.g. DSA).
- [High] Late attach updates supported interfaces but leaves ethtool linkmo=
des stale.
- [High] `pcs_provider_notify()` ignores subsequent PCS instances if a MAC =
requires multiple PCSs from the same provider fwnode.
- [High] Self-deadlock due to unconditional `rtnl_lock()` acquisition in th=
e PCS notifier callback.
--

commit 101d55ca1c5df8e03923c9d69f42065ce0d1aab9
Author: Christian Marangi <ansuelsmth@gmail.com>

net: phylink: support late PCS provider attach

This commit adds support for late PCS provider attachment in phylink.
It creates a global notifier chain for PCS providers and allows phylink
instances to subscribe and dynamically add PCS providers when they become
available.

> diff --git a/drivers/net/pcs/pcs.c b/drivers/net/pcs/pcs.c
> index 0cc4daf7beeae..7a9d91b2a34da 100644
> --- a/drivers/net/pcs/pcs.c
> +++ b/drivers/net/pcs/pcs.c
[ ... ]
> @@ -150,6 +167,38 @@ struct phylink_pcs *fwnode_pcs_get(struct fwnode_han=
dle *fwnode, unsigned int in
>  }
>  EXPORT_SYMBOL_GPL(fwnode_pcs_get);
> =20
> +struct phylink_pcs *
> +fwnode_phylink_pcs_get_from_fwnode(struct fwnode_handle *fwnode,
> +				   struct fwnode_handle *pcs_fwnode)
> +{
> +	struct fwnode_reference_args pcsspec;
> +	int index =3D 0;
> +	int ret;
> +
> +	/* Loop until we find a matching PCS node or
> +	 * fwnode_parse_pcsspec() returns error
> +	 * if we don't have any other PCS reference to check.
> +	 */
> +	while (true) {
> +		ret =3D fwnode_parse_pcsspec(fwnode, index, NULL, &pcsspec);
> +		if (ret)
> +			return ERR_PTR(ret);
> +
> +		/* Exit loop if we found the matching PCS node */
> +		if (pcsspec.fwnode =3D=3D pcs_fwnode) {
> +			fwnode_handle_put(pcsspec.fwnode);
> +			break;
> +		}

[Severity: High]
Does breaking out of the loop on the first match ignore subsequent PCS=20
instances if a MAC requires multiple PCSs from the same provider?

If a phylink instance is configured to use multiple PCSs from the same=20
provider, it seems the subsequent indices will never be discovered since th=
e=20
notifier only fires once per provider fwnode.

> +
> +		/* Check the next PCS reference */
> +		fwnode_handle_put(pcsspec.fwnode);
> +		index++;
> +	}
> +
> +	return fwnode_pcs_get(fwnode, index);
> +}
> +EXPORT_SYMBOL_GPL(fwnode_phylink_pcs_get_from_fwnode);
> +
>  unsigned int fwnode_phylink_pcs_count(struct fwnode_handle *fwnode)
>  {
>  	struct fwnode_reference_args out_args;
> diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
> index 064d6f5a06da4..b9a212bd12064 100644
> --- a/drivers/net/phy/phylink.c
> +++ b/drivers/net/phy/phylink.c
[ ... ]
> @@ -2000,6 +2002,53 @@ static int phylink_fill_available_pcs(struct phyli=
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
> +	rtnl_lock();

[Severity: High]
Can this unconditional lock acquisition cause a self-deadlock?

Because the provider addition is emitted via a synchronous blocking notifie=
r,=20
if a network driver or subsystem calls fwnode_pcs_add_provider() from a=20
context that already holds rtnl_lock(), wouldn't this attempt to acquire=20
the lock a second time?

> +
> +	/* Check if the just added PCS provider is
> +	 * in the phylink instance pcs-handle property.
> +	 */
> +	pcs =3D fwnode_phylink_pcs_get_from_fwnode(dev_fwnode(pl->config->dev),
> +						 pcs_fwnode);

[Severity: High]
Does this use the correct fwnode for multi-port devices like DSA switches?

It looks like pl->config->dev points to the parent switch's device, not the=
=20
individual port. If the port-specific fwnode passed to phylink_create() isn=
't=20
used here, will this search the switch's root device node instead and silen=
tly=20
fail to find the pcs-handle?

> +	if (IS_ERR(pcs)) {
> +		rtnl_unlock();
> +		return NOTIFY_DONE;
> +	}
> +
> +	/* Add the PCS */
> +	mutex_lock(&pl->state_mutex);
> +
> +	/* Link PCS with phylink */
> +	list_add(&pcs->list, &pl->pcs_list);

[Severity: Critical]
Could this unconditional list addition corrupt the list if a single PCS=20
provider is shared by multiple phylink instances?

If a single PCS provider is referenced by multiple ports on a switch,=20
pcs_provider_notify() will trigger for each phylink instance. Since the=20
list head inside struct phylink_pcs can only be part of one list at a time,=
=20
won't the second list_add() corrupt the first phylink instance's pcs_list?

> +	pcs->phylink =3D pl;
> +
> +	/* Refresh supported interfaces */
> +	phy_interface_copy(pl->supported_interfaces,
> +			   pl->config->supported_interfaces);
> +	list_for_each_entry(pcs, &pl->pcs_list, list)
> +		phy_interface_or(pl->supported_interfaces,
> +				 pl->supported_interfaces,
> +				 pcs->supported_interfaces);

[Severity: High]
Is a call to phylink_validate() needed here to update the ethtool linkmodes?

This updates the supported interfaces mask with the PCS capabilities, but=20
without recalculating pl->supported and pl->link_config.advertising, will=20
the device fail to advertise or negotiate the new speeds and duplexes enabl=
ed=20
by the late-attached PCS?

> +
> +	/* Force an interface reconfig if major config fail */
> +	if (pl->major_config_failed)
> +		pl->force_major_config =3D true;
> +
> +	mutex_unlock(&pl->state_mutex);
> +
> +	rtnl_unlock();
> +
> +	phylink_run_resolve(pl);
> +
> +	return NOTIFY_OK;
> +}
[ ... ]
> @@ -2124,6 +2173,12 @@ struct phylink *phylink_create(struct phylink_conf=
ig *config,
>  	if (ret < 0)
>  		goto unlink_pcs_list;
> =20
> +	/* Register notifier for late PCS attach */
> +	if (!phy_interface_empty(config->pcs_interfaces)) {
> +		pl->fwnode_pcs_nb.notifier_call =3D pcs_provider_notify;
> +		register_fwnode_pcs_notifier(&pl->fwnode_pcs_nb);
> +	}

[Severity: High]
Is there a race condition between the initial scan for available PCS=20
providers and the registration of this late-attach notifier?

In phylink_create(), the initial scan happens here:

	ret =3D phylink_fill_available_pcs(pl, config);
	if (ret < 0)
		goto free_pl;

If a PCS provider driver probes and triggers the provider add notification=
=20
after phylink_fill_available_pcs() but before register_fwnode_pcs_notifier(=
)=20
is called, won't the notification be permanently missed?

> +
>  	return pl;
> =20
>  unlink_pcs_list:
> diff --git a/include/linux/pcs/pcs.h b/include/linux/pcs/pcs.h
> index b7cfdd680b2ab..45e8f96662db2 100644
> --- a/include/linux/pcs/pcs.h
> +++ b/include/linux/pcs/pcs.h
> @@ -4,7 +4,36 @@
> =20
>  #include <linux/phylink.h>
> =20
> +enum fwnode_pcs_notify_event {
> +	FWNODE_PCS_PROVIDER_ADD,
> +};

[Severity: Critical]
Is there a missing mechanism to handle PCS provider removal?

Without a corresponding remove event, when a PCS provider driver is unbound=
=20
and frees the struct phylink_pcs, phylink is not notified. Since phylink=20
retains the freed PCS pointer in pl->pcs_list, won't subsequent operations=
=20
like phylink_resolve() iterate over the list and trigger a use-after-free?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618125752.1223=
-1-ansuelsmth@gmail.com?part=3D5

