Return-Path: <devicetree+bounces-315393-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xCBQF4xFPGrmlwgAu9opvQ
	(envelope-from <devicetree+bounces-315393-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 23:01:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C456C1511
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 23:00:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Jig9OzJR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315393-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-315393-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D9A2E3010BA3
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 21:00:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CDD4383981;
	Wed, 24 Jun 2026 21:00:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8BC35DA47;
	Wed, 24 Jun 2026 21:00:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782334856; cv=none; b=YMjb0ZgXYrKvCDBaEb8NO9c+/92FxSziQE4bYPxVyDUCsk8Ve4SuN0Lf1ynKDfP24pltM43/kQPIIFwZrrPngTyVq7DBRSOnKWbdzgRIc0AT9beGPDkmcIQhAIbrFSyy2bAzVBj1zHm7ktHOUtqSMR2ChuTvXs3IdoxNC6XxbjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782334856; c=relaxed/simple;
	bh=OBSxNhckJE4toB/IJbxOp9rmwQwoCbl9R/htO6gI2cU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BClt9f6/ryqPs6RqUDaxSYljUcyHp+fKxs8G28jw5QEInN/d8PYA45Gy0XL7SIOll8zlYvH+3SjzUiGd8hOfZWFgBJaKQuaiN46v7BgdDjv4whLvJ3GauihsSxdPjei3Y4n3PdHRbZSZavddMSH15fcWwruvmNyULWSW97H0hDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jig9OzJR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 388821F000E9;
	Wed, 24 Jun 2026 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782334854;
	bh=JUSv3Kvi3Rrq6C5X4QdDmrA+ZIccYCnkAjqfM49iUs0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Jig9OzJREAG3KigqFLYaVdwQ9PglSztaNTfK2oZl5RPMfs/7JenrKb9LkBXyoSpKd
	 q7Ou8e+rzjfDcsb8mTK26YVtA4f6KTaPZGh0gM4Ntm3mq+srhFeeca0Yo1FT6GgrWU
	 ABedVeDL+OtouL+UKMhPqtBOkxFOhfnbU1eUfxXvq03U897nOx1Ujnt742RpTKcn1W
	 /8gtYcp7+8/rZcL33WKfqJ75v4UMMEv0Oxb5mrfPyDaB9O9MXJx616OfAOAKnc2WRh
	 02VKMzkyMAsH5s2EcHya+1Wj8vwktXkMsWqgomQBwzCJ4G6J5sey5buuXHPAgkdWuI
	 KJqSK0ahll3Pg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 3/9] media: subdev: Add media_async_register_subdev()
 helper
Reply-To: sashiko-reviews@lists.linux.dev
To: Frank.Li@oss.nxp.com
Cc: conor+dt@kernel.org, Frank.Li@kernel.org, robh@kernel.org, imx@lists.linux.dev, devicetree@vger.kernel.org
In-Reply-To: <20260624-imx8qxp_pcam-v6-3-4b3f45920d2f@nxp.com>
References: <20260624-imx8qxp_pcam-v6-0-4b3f45920d2f@nxp.com>
 <20260624-imx8qxp_pcam-v6-3-4b3f45920d2f@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Jun 2026 21:00:53 +0000
Message-Id: <20260624210054.388821F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315393-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,nxp.com:email];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@oss.nxp.com,m:conor+dt@kernel.org,m:Frank.Li@kernel.org,m:robh@kernel.org,m:imx@lists.linux.dev,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C9C456C1511

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] Heap Buffer Overflow during endpoint parsing
- [High] NULL Pointer Dereference of `sd->internal_ops`
- [Medium] Resource Leak / Subsystem Guideline Violation due to goto and sc=
ope-based cleanup mixing
- [Low] Code Quality / Misspelled diagnostic messages
--

commit 050e10af8571659357b0d6bb808eab4e58871636
Author: Frank Li <Frank.Li@nxp.com>

media: subdev: Add media_async_register_subdev() helper

This commit introduces media_async_register_subdev() to register a V4L2
sub-device with the asynchronous framework. It parses the firmware graph
and sets up common notifiers and media pads. This aims to reduce duplicated
code and simplify error handling in V4L2 sub-device drivers.

> diff --git a/drivers/media/v4l2-core/v4l2-fwnode.c b/drivers/media/v4l2-c=
ore/v4l2-fwnode.c
> index 62a3a452f7884..169059654478f 100644
> --- a/drivers/media/v4l2-core/v4l2-fwnode.c
> +++ b/drivers/media/v4l2-core/v4l2-fwnode.c
[ ... ]
> @@ -1302,6 +1303,160 @@ int __v4l2_async_register_subdev_sensor(struct v4=
l2_subdev *sd, struct module *m
[ ... ]
> +static int
> +v4l2_async_nf_parse_fwnode(struct device *dev, struct media_pad *pads,
> +			   struct v4l2_async_notifier *notifier)
> +{
> +	struct v4l2_subdev *sd =3D notifier->sd;
> +	struct v4l2_async_connection *asd;
> +	struct media_pad *pad;
> +	int ret;
> +
> +	if (!sd->internal_ops->set_pad_by_ep)

[Severity: High]
If a driver passes a subdevice without internal_ops initialized, will this
dereference a NULL pointer?

> +		return dev_err_probe(dev, -EINVAL,
> +				     "Missed valiate_endpoint() callback\n");

[Severity: Low]
This isn't a bug, but there's a typo in "valiate" and it references the wro=
ng
callback name (set_pad_by_ep).

> +	pad =3D pads;
> +
> +	fwnode_graph_for_each_endpoint_scoped(dev_fwnode(dev), ep) {
> +		u32 flags;
> +
> +		ret =3D v4l2_fwnode_endpoint_parse(ep, &pad->vep);
> +		if (ret)
> +			return dev_err_probe(dev, ret, "failed to parse endpoint\n");
> +
> +		ret =3D sd->internal_ops->set_pad_by_ep(sd, pad);
> +		if (ret < 0)
> +			return dev_err_probe(dev, ret, "Can support endponit\n");

[Severity: Low]
This isn't a bug, but "endponit" is misspelled, and the logic seems inverted
since this prints on an error path where the endpoint cannot be supported.

> +
> +		flags =3D pad->flags;
> +
> +		pad++;

[Severity: High]
Could this loop write out of bounds of the pads array?

In __media_async_register_subdev(), ep_count is calculated with:

	ep_count =3D fwnode_graph_get_endpoint_count(dev_fwnode(dev), 0);

which only counts endpoints that have a remote connection, and the pads
array is allocated to exactly that size.

Since fwnode_graph_for_each_endpoint_scoped() unconditionally iterates over
all endpoints, if the firmware graph contains any unconnected endpoints, wo=
n't
this execute more times than ep_count and write into adjacent heap memory?

> +
> +		if (flags & MEDIA_PAD_FL_SOURCE)
> +			continue; /* Bypass source port */
> +
> +		notifier->ops =3D &v4l2_common_notifier_ops;
> +
> +		asd =3D v4l2_async_nf_add_fwnode_remote(notifier, ep,
> +						      struct v4l2_async_connection);
> +		if (IS_ERR(asd))
> +			return dev_err_probe(dev, PTR_ERR(asd),
> +					      "failed to add notifier\n");
> +	}
> +
> +	return 0;
> +}
[ ... ]
> +int __media_async_register_subdev(struct v4l2_subdev *sd, struct module =
*module)
> +{
> +	struct device *dev =3D sd->dev;
> +	u32 ep_count;
> +	int ret;
> +
> +	if (WARN_ON(!sd->dev))
> +		return -ENODEV;
> +
> +	struct v4l2_async_notifier *notifier __free(kfree) =3D kzalloc_obj(*not=
ifier);
> +	if (!notifier)
> +		return -ENOMEM;
> +
> +	v4l2_async_subdev_nf_init(notifier, sd);
> +
> +	ep_count =3D fwnode_graph_get_endpoint_count(dev_fwnode(dev), 0);
> +	if (!ep_count)
> +		return dev_err_probe(dev, -EINVAL, "No connected endpoints\n");
> +
> +	struct media_pad *pads __free(kfree) =3D kzalloc_objs(struct media_pad,=
 ep_count);
> +	if (!pads)
> +		return -ENOMEM;
> +
> +	ret =3D v4l2_async_nf_parse_fwnode(dev, pads, notifier);
> +	if (ret < 0)
> +		return ret;

[Severity: Medium]
If v4l2_async_nf_parse_fwnode() fails, does returning directly bypass
the v4l2_async_nf_cleanup() call that would normally happen via the
out_cleanup label?

The notifier itself is freed via cleanup helpers, but it seems the
v4l2_async_connection structures allocated in the parse loop and their fwno=
de
references will be leaked if we don't explicitly call v4l2_async_nf_cleanup=
().

> +
> +	ret =3D media_entity_pads_init(&sd->entity, ep_count, pads);
> +	if (ret)
> +		goto out_cleanup;
> +
> +	ret =3D v4l2_async_nf_register(notifier);
> +	if (ret < 0)
> +		goto out_cleanup;
> +
> +	ret =3D v4l2_subdev_init_finalize(sd);
> +	if (ret)
> +		goto out_unregister;
> +
> +	ret =3D __v4l2_async_register_subdev(sd, module);
> +	if (ret < 0)
> +		goto out_unregister;

[Severity: Medium]
If __v4l2_async_register_subdev() fails, we jump to out_unregister, which
cleans up the notifier and returns.

Does this leak the active_state allocated earlier by
v4l2_subdev_init_finalize(sd) since v4l2_subdev_cleanup() is bypassed?

> +
> +	sd->subdev_notifier =3D no_free_ptr(notifier);
> +	retain_and_null_ptr(pads);
> +
> +	return 0;
> +
> +out_unregister:
> +	v4l2_async_nf_unregister(notifier);
> +
> +out_cleanup:
> +	v4l2_async_nf_cleanup(notifier);
> +
> +	return ret;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260624-imx8qxp_pc=
am-v6-0-4b3f45920d2f@nxp.com?part=3D3

