Return-Path: <devicetree+bounces-320056-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7cPKGxybR2pKcAAAu9opvQ
	(envelope-from <devicetree+bounces-320056-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 13:21:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D69E5701C61
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 13:20:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=MMfbwuiM;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320056-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-320056-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CA0B4302F7E0
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 11:15:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5A603C342A;
	Fri,  3 Jul 2026 11:15:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CED63C1969
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 11:15:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783077331; cv=none; b=n6qUIPkPtdYkiTo9fv9IFJ9kyozvGOuGWWiHFr/rtu2+JYZ+eUVhm+yB8cbP/oQ2299wvigyUGhKSe5TH2Q6DWpYn3MjZtieERzSzd0jrGMD0/IWkiyhbdHVnRVY8otbqV8YEs88tsJlheweSuq69JUsYoWVm7EZV3p+qus3dBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783077331; c=relaxed/simple;
	bh=Bv355jU4po1WEupbmCll2VCBMXPHblaGOYfIs/hABwI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=LQVx8A6GomLdVa8sZQzPBPi2h2MUa9QyL4BmB6vWOxarLk299XY0Js6bmh3LXidOu4YNVpqLnnFqE6SMC8PdFjI4BX/iA3PWlhEQHEmL86GxR/p2YsYVy2DJR8PKHLFJ46cL4S/g+o5hE/8D7Qgyy5jpmh34p7HYEVF2RiQ9FUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMfbwuiM; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9A891F000E9;
	Fri,  3 Jul 2026 11:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783077330;
	bh=trmaukF36sNJep6/PUMtLAdfcJDVNVLbHV4DrFACsiY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MMfbwuiMIu5Gl/Vx9uX5VUC0tcKzORHkO9JKDwvQ2YYivjl1fHNQORtmwn7ZioRZK
	 OSsV6NsA49mYFvx3692ijbWxQazYr0w8L2ALqtL51RPQCD0B4/FbYeu0cFIuL0tJST
	 E7oPyktLs3/YGsdEb3ameZYobRwO393B9kzjcK3sZKA+vI3352DtpNUps0tlmdmCXC
	 CA4LE57GAuSFFjDCMm4RMvtSOhGrijPc9DwEm9X54dQ2gzww18x9wdcml3hQyw/N+C
	 umjglNet3cV6ftU13VBiYiHBtMFCHHS1zJo1d0gJLWpkkkf7Zz+UOpE6G5GhJhBieD
	 iKraxeoSR0z0A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 01/13] device property: Add
 fwnode_graph_get_port_by_id()
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chen-Yu Tsai" <wenst@chromium.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260703110317.1283411-2-wenst@chromium.org>
References: <20260703110317.1283411-1-wenst@chromium.org>
 <20260703110317.1283411-2-wenst@chromium.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 11:15:29 +0000
Message-Id: <20260703111529.E9A891F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320056-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,chromium.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D69E5701C61

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] `fwnode_graph_get_port_by_id()` fails to find a port if its endpoi=
nts are unconnected or connected to disabled remote devices due to missing =
`FWNODE_GRAPH_DEVICE_DISABLED` flag.
- [Medium] `fwnode_graph_get_port_by_id()` cannot find valid port nodes tha=
t do not contain any endpoints, diverging from `of_graph_get_port_by_id()` =
behavior.
--

commit c798c3e5cfa59227921f3fc93df8113ad82e4544
Author: Chen-Yu Tsai <wenst@chromium.org>

device property: Add fwnode_graph_get_port_by_id()

This commit introduces fwnode_graph_get_port_by_id() to allow drivers to
obtain a reference to a port firmware node by its ID. The helper is
implemented by finding the matching endpoint first and then returning its
parent node. It is intended to support upcoming USB power sequencing
integration.

> diff --git a/drivers/base/property.c b/drivers/base/property.c
> index e08eadd66f4f9..c5e7e00f1b0cd 100644
> --- a/drivers/base/property.c
> +++ b/drivers/base/property.c
[ ... ]
> @@ -1346,6 +1346,28 @@ int fwnode_graph_parse_endpoint(const struct fwnod=
e_handle *fwnode,
[ ... ]
> +struct fwnode_handle *fwnode_graph_get_port_by_id(struct fwnode_handle *=
fwnode, u32 id)
> +{
> +	struct fwnode_handle *ep;
> +

[Severity: Medium]
Could this regression cause the function to miss port nodes that are
completely empty of endpoints?

Because this relies on fwnode_graph_get_endpoint_by_id() (which iterates ov=
er
endpoints), if a port node is defined in firmware solely to hold properties
(like vbus-supply) but has no endpoint child nodes, this function will retu=
rn
NULL. This seems to diverge from the behavior of of_graph_get_port_by_id(),
which correctly finds empty port nodes.

[Severity: High]
Does this call need the FWNODE_GRAPH_DEVICE_DISABLED flag to avoid a
regression where ports with disabled or unconnected remote devices are skip=
ped?

By omitting FWNODE_GRAPH_DEVICE_DISABLED, fwnode_graph_get_endpoint_by_id()
evaluates with enabled_only =3D true. If a port's remote device is disabled
in the device tree, or if the port is unconnected, it will skip those
endpoints and return NULL. This could cause USB port devices to lose their
firmware node association if the remote connector is disabled, preventing
subsystems from reading the port's properties.

> +	ep =3D fwnode_graph_get_endpoint_by_id(fwnode, id, 0, FWNODE_GRAPH_ENDP=
OINT_NEXT);
> +	if (!ep)
> +		return NULL;
> +
> +	return fwnode_get_next_parent(ep);
> +}
> +EXPORT_SYMBOL_GPL(fwnode_graph_get_port_by_id);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703110317.1283=
411-1-wenst@chromium.org?part=3D1

