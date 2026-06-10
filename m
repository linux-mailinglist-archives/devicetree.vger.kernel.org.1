Return-Path: <devicetree+bounces-309593-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UOaNJsIoKWr7RgMAu9opvQ
	(envelope-from <devicetree+bounces-309593-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:05:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E35846679CE
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:05:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kT9zESSi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309593-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309593-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 545D833DCA56
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 08:56:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE36C3B95F6;
	Wed, 10 Jun 2026 08:55:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82C63B7B96
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 08:55:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781081705; cv=none; b=OK/cRZb71u0AH4ozAKxJbZNHQLjWS2QRmpiKe8GkrHpoy2uEt6fug30ABkAf7J1Cf26idkIVj797NYMHoPUq8K21ouOEz9h9XhkdwlaP6eieO1WzW9vvGtBvFU06As3FhT9qyCa2pXdD51yIm/9rXOb639I8TFcfqWJoFJtPrsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781081705; c=relaxed/simple;
	bh=/u4Ocaun+kNY0Aq81L6/HbjD+g6b28403yF0NyAW9Tc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=RjJSB4KDp4WPX0zd1AmungytU4nvaRr6COmEDTlYXW6gob0WAxwpPxFdACWRgPja8KQXLim8e8v/6gZa3xztXMurRQq5elBRLDizzRZKHWfQteyFUzt8qS7Gww7joVPsoDy+vs8NudmukrpKvLBUjSSxk9s/1EIV//1U0HxDKu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kT9zESSi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24D521F00893;
	Wed, 10 Jun 2026 08:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781081704;
	bh=B3pEkNlrL+311+nTDSlI+Spu+0X2NGo3ZGOPQkcokqQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kT9zESSi4zQvQ25yrRc8oUUk5U4b9UzfD2lJuiesJMd9vWWqZRFVlzGFbnAjOq869
	 +QG0QQ1FT6D09T1P45lBvG8TgkLo28al5pHgnnIMwiQWpD+Dcuhs5n1rXc5HohJQd0
	 1jsAYlpWWR4fRXMYIEPAAvueH6FMv7z7PH1kWvCS4I5b3CPL3KowiB8/e9oj8o64nm
	 Z59NFUaRoV0aL3SFdlfhKI8DmWdWs0It9YReYY4eKtzHK85XboCeOnyHI3U9QgO9Fg
	 yVR5cKtPz3Lz4J0ZP2Kr7HhG3tAQT97jghbvM0WyhfoJfYQ5ISGB3h9TFxwjFBf1de
	 cqxv3Lszj4Sdg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 01/16] device property: Add
 fwnode_graph_get_port_by_id()
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chen-Yu Tsai" <wenst@chromium.org>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260610084053.2059858-2-wenst@chromium.org>
References: <20260610084053.2059858-2-wenst@chromium.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 08:55:03 +0000
Message-Id: <20260610085504.24D521F00893@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309593-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,chromium.org:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E35846679CE

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] fwnode_graph_get_port_by_id() incorrectly fails to find valid port=
s if they lack active endpoints, have unconnected endpoints, or are connect=
ed to disabled devices.
--

commit 4e84277140473261d2e5a644f3a43bf00c37b050
Author: Chen-Yu Tsai <wenst@chromium.org>

device property: Add fwnode_graph_get_port_by_id()

This commit introduces the fwnode_graph_get_port_by_id() helper to retrieve
a port firmware node matching a given id. It is intended for cases where
drivers need a reference to the port firmware node, such as USB power
sequencing integration.

> diff --git a/drivers/base/property.c b/drivers/base/property.c
> --- a/drivers/base/property.c
> +++ b/drivers/base/property.c

[ ... ]

> @@ -1346,6 +1346,28 @@ int fwnode_graph_parse_endpoint(const struct fwnod=
e_handle *fwnode,
>  }
>  EXPORT_SYMBOL(fwnode_graph_parse_endpoint);
> =20
> +/**
> + * fwnode_graph_get_port_by_id - get the port matching a given id
> + * @fwnode: parent fwnode_handle containing the graph
> + * @id: id of the port
> + *
> + * Return: A 'port' firmware node pointer with refcount incremented.
> + *
> + * The caller is responsible for calling fwnode_handle_put() on the retu=
rned
> + * fwnode pointer.
> + */
> +struct fwnode_handle *fwnode_graph_get_port_by_id(struct fwnode_handle *=
fwnode, u32 id)
> +{
> +	struct fwnode_handle *ep;
> +
> +	ep =3D fwnode_graph_get_endpoint_by_id(fwnode, id, 0, FWNODE_GRAPH_ENDP=
OINT_NEXT);

[Severity: High]
Will this fail to find valid ports if they lack active endpoints or have
disabled remote targets?

By calling fwnode_graph_get_endpoint_by_id() without passing the
FWNODE_GRAPH_DEVICE_DISABLED flag, it appears this enforces an implicit
availability check. This skips any endpoints that are unconnected or whose
remote target is disabled.

Additionally, since port discovery is routed exclusively through endpoint
iteration, will this completely miss valid port nodes that contain no
endpoint child nodes?

> +	if (!ep)
> +		return NULL;
> +
> +	return fwnode_get_next_parent(ep);
> +}
> +EXPORT_SYMBOL_GPL(fwnode_graph_get_port_by_id);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610084053.2059=
858-1-wenst@chromium.org?part=3D1

