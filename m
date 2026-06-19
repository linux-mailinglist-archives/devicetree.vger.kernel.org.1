Return-Path: <devicetree+bounces-313811-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4bLiAk1PNWpWsQYAu9opvQ
	(envelope-from <devicetree+bounces-313811-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 16:16:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 637DC6A65A3
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 16:16:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=UiKxNQGg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313811-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313811-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2D4AB30530CE
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 14:11:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 553B9381AE3;
	Fri, 19 Jun 2026 14:11:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD86D3783A1
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 14:11:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781878272; cv=none; b=WUBkYkbihwfAyRBluCJhfuBR4tAz3K2tCez77h3Bby4FLVEMX7l5xPpAFWTBIhc+gL21/q98iD1PnsW9dlqohqWmb0JNWE7ajV3LOdeH+PMqBEEFeMdtCMVLyfx5XjtNz7ze7ielUzoYU7c1GmelvXn4h6plqorpN/rdy7tyd/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781878272; c=relaxed/simple;
	bh=XgjNESYgLGZMpP784wE2Qp3THyw8X/D40ZG454MxiK4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GJ/103Gfowu8+dX8cG3PGR//WGvD1e/+D7anaHsYIGBVnxd8wLiljUP5nk93KQ/sBK+5BtNRSKt7vB6rimV18Ht/2bJn515Z71LnZGM86bBXgmILSPcRzegbshOkph2RjfuUIKs6lhVavNX9TAUcNIuli5DJCht8RWBthofpgy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UiKxNQGg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F4451F00A3A;
	Fri, 19 Jun 2026 14:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781878270;
	bh=Rl19mVG6eFVr/1LLwWW0pRWCZnuVfLWmVhBY9nHDsJE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UiKxNQGgDyQNz3R4FnZyJ0koIFdhqpka+oVglz55cakxVJbBAu4av9/72PG0b0eqM
	 EKbxfZz6/0a8afL5TqAOF6sVyRQJjDg4PnDfu1Mv2N673cbttXDZubOEv9HTYHE5SS
	 cP1q+ytT22v/z25R8lvJNPmbX5jZIkDGxjhnVfr42bamKHdHOLBe6GaXrjcXg10vIe
	 +J72iffjk+Ci/l4+bu07F+uWz7UatFSVmEQBaPQ7QpgayKFSvlBEiF5+WYVgSj6QWk
	 03o9IASVEbYmZPXPzAMfkKCq5qr7BQlC+ymypDsJ7OIe+8etq1a0EW91IlAGQAOLWq
	 ejdGq4at114SQ==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH net-next v8 04/12] net: pcs: implement Firmware node
 support for PCS driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260618125752.1223-5-ansuelsmth@gmail.com>
References: <20260618125752.1223-1-ansuelsmth@gmail.com>
 <20260618125752.1223-5-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jun 2026 14:11:10 +0000
Message-Id: <20260619141110.6F4451F00A3A@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313811-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ansuelsmth@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
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
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 637DC6A65A3

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] The PCS provider framework lacks module reference counting, exposi=
ng consumers to Use-After-Free crashes during concurrent driver removal.
- [Medium] `fwnode_phylink_pcs_count()` silently truncates the PCS count on=
 Device Tree errors instead of propagating them.
- [Low] Dead code and illogical condition in `fwnode_parse_pcsspec`.
--

commit 31d56c9668ba31e1d161e00a93f5481143830f95
Author: Christian Marangi <ansuelsmth@gmail.com>

net: pcs: implement Firmware node support for PCS driver

Implement the foundation of Firmware node support for PCS driver.
This implements a simple Provider API where a PCS driver can
expose multiple PCS with an xlate .get function.

> diff --git a/drivers/net/pcs/pcs.c b/drivers/net/pcs/pcs.c
> new file mode 100644
> index 0000000000000..0cc4daf7beeae
> --- /dev/null
> +++ b/drivers/net/pcs/pcs.c
[ ... ]
> +static int fwnode_parse_pcsspec(const struct fwnode_handle *fwnode,
> +				int index, const char *name,
> +				struct fwnode_reference_args *out_args)
> +{
> +	int ret;
> +
> +	if (!fwnode)
> +		return -EINVAL;
> +
> +	if (name) {
> +		index =3D fwnode_property_match_string(fwnode, "pcs-names",
> +						     name);
> +		if (index < 0)
> +			return index;
> +	}
> +
> +	ret =3D fwnode_property_get_reference_args(fwnode, "pcs-handle",
> +						 "#pcs-cells",
> +						 -1, index, out_args);
> +	if (ret || (name && index < 0))
> +		return ret;
> +
> +	return 0;
> +}

[Severity: Low]
Is the condition (name && index < 0) needed here?=20

The earlier check:

	if (name) {
		index =3D fwnode_property_match_string(fwnode, "pcs-names",
						     name);
		if (index < 0)
			return index;
	}

already returns early if name is present and index is less than zero, so
index will always be >=3D 0 when we reach this final check.

[ ... ]
> +static struct phylink_pcs *
> +fwnode_pcs_get_from_pcsspec(struct fwnode_reference_args *pcsspec)
> +{
> +	struct fwnode_pcs_provider *provider;
> +	struct phylink_pcs *pcs =3D ERR_PTR(-ENODEV);
> +
> +	if (!pcsspec)
> +		return ERR_PTR(-EINVAL);
> +
> +	mutex_lock(&fwnode_pcs_mutex);
> +	list_for_each_entry(provider, &fwnode_pcs_providers, link) {
> +		if (provider->fwnode =3D=3D pcsspec->fwnode) {
> +			pcs =3D provider->get(pcsspec, provider->data);
> +			if (!IS_ERR(pcs))
> +				break;
> +		}
> +	}
> +	mutex_unlock(&fwnode_pcs_mutex);
> +
> +	return pcs;
> +}

[Severity: High]
Is there a way to prevent the provider module from being unloaded while the
consumer is actively using the PCS?

It looks like this framework doesn't capture the module owner (e.g. by pass=
ing
THIS_MODULE to fwnode_pcs_add_provider) or use try_module_get() when handing
the pointer to the consumer in fwnode_pcs_get_from_pcsspec().

If a consumer calls fwnode_pcs_get() but hasn't yet linked the PCS to its
pl->pcs_list (meaning pcs->phylink is still NULL), and the provider unbinds
during this window, phylink_release_pcs() might act as a no-op. The provider
could free the PCS memory while the consumer still holds the pointer, leadi=
ng
to a use-after-free crash.

[ ... ]
> +unsigned int fwnode_phylink_pcs_count(struct fwnode_handle *fwnode)
> +{
> +	struct fwnode_reference_args out_args;
> +	int index =3D 0;
> +	int ret;
> +
> +	while (true) {
> +		ret =3D fwnode_property_get_reference_args(fwnode, "pcs-handle",
> +							 "#pcs-cells",
> +							 -1, index, &out_args);
> +		/* We expect to reach an -ENOENT error while counting */
> +		if (ret)
> +			break;
> +
> +		fwnode_handle_put(out_args.fwnode);
> +		index++;
> +	}
> +
> +	return index;
> +}

[Severity: Medium]
Does this function silently truncate the count on malformed device tree nod=
es?

If fwnode_property_get_reference_args() returns a critical error like -EINV=
AL,
the loop breaks and returns the current index. Because the function returns=
 an
unsigned int, negative error codes aren't propagated to the caller.=20

Could this mask actual configuration errors and cause the MAC driver to pro=
ceed
with an incomplete PCS configuration instead of failing the probe?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618125752.1223=
-1-ansuelsmth@gmail.com?part=3D4

