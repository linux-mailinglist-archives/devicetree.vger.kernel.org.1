Return-Path: <devicetree+bounces-320059-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WGW2OG2bR2ppcAAAu9opvQ
	(envelope-from <devicetree+bounces-320059-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 13:22:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC39701C8E
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 13:22:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="UUH/uk67";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320059-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320059-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1A291300796E
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 11:17:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55C9F3ACA77;
	Fri,  3 Jul 2026 11:17:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA9B43C2761
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 11:17:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783077475; cv=none; b=V+efWky65U/ErXy9x69pCQ6rubRPGEWEhn5dUQOGPndvxeaGQrXN/L6eQ1StTVYVVG7K/us1vHiUMUH5orwKcibmEUtnXsUR9t1+4YoD0qppS84cBzOymfhexw3yQiOh7gKBRTL9AvSKFnUGZH5jmye4999RGR+DzUUscg31DGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783077475; c=relaxed/simple;
	bh=23WjWVGUcKQbznWndFyqarhxCj1Czuf1d7pPqTuxMho=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=HYPfzErvVRUgyyN/+iH9oinZn8nA2/KFWUcX3QhQptxvs7odFqqygGyKi0pBelKeiicWGjquRFm9DFGFwAXN3DWRmZU2AEx/rWL04zW126l5btYu1T9BpxYUlMtTjDpn3WAwinDBeR+DxLkSD2mzjgEYeF3FYkofi0nicD2roIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUH/uk67; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAB3F1F000E9;
	Fri,  3 Jul 2026 11:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783077472;
	bh=lDA17M0X+hspqXdrjjAxpSBK1FR2pkbleEQNM27ThaQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UUH/uk67Slv64iyeCPz9NjVuwQQzuIB8hGbey80mHHqnRMwBx4AMGyabTDeK95iJM
	 eiInlIWzwDeRARF/kB7hgjqzJqUKh2BLLxPS/IGXmybkmRo3BKiQU3tGrcCFjX+rE2
	 eaHmqq2wQN1Ty2bhU4LE/4k1vDmEGHTms/6dCkEHXoEhXfiPMRctMAIroMozLIkjmZ
	 WnE/8qQCvsx7+1m2FeoxEed62kGDuwES/2i/HUzxxa7qeqFtegFDyaSMzSsK6hN8Vh
	 Xj4T/x4YrqHOH7qFl2GNjfSQ7C1OSAhHQ5P75vyZGwRZ12y4rprmIUhYhh/DOC3JFu
	 R31vRRjijC2kA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 02/13] device property: Add
 fwnode_graph_get_next_port_endpoint()
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chen-Yu Tsai" <wenst@chromium.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260703110317.1283411-3-wenst@chromium.org>
References: <20260703110317.1283411-1-wenst@chromium.org>
 <20260703110317.1283411-3-wenst@chromium.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 11:17:51 +0000
Message-Id: <20260703111751.EAB3F1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320059-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,chromium.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4EC39701C8E

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [High] fwnode_graph_get_next_port_endpoint() breaks graph abstraction by =
hardcoding name matching, which fails for ACPI nodes.

Pre-existing issues:
- [High] Preexisting bug in fwnode_get_next_child_node() causing Use-After-=
Free and infinite loops when crossing from primary to secondary fwnodes.
--

commit 94e97ca138e57ff4e7c6032a05de92b5aec2bd3d
Author: Chen-Yu Tsai <wenst@chromium.org>

device property: Add fwnode_graph_get_next_port_endpoint()

This introduces a helper function to get the endpoint under a known port
firmware node. It is intended to be used in USB power sequencing to check
whether a graph connection exists and if the other side is a supported
connector type.

diff --git a/drivers/base/property.c b/drivers/base/property.c
index c5e7e00f1b0cd..7f1fff3b55c74 100644
--- a/drivers/base/property.c
+++ b/drivers/base/property.c
[ ... ]
@@ -1099,6 +1099,31 @@ int fwnode_irq_get_byname(const struct fwnode_handle=
 *fwnode, const char *name)
 }
 EXPORT_SYMBOL(fwnode_irq_get_byname);
=20
> +/**
> + * fwnode_graph_get_next_port_endpoint - Get next endpoint firmware node=
 in port
> + * @port: Pointer to the target port firmware node
> + * @prev: Previous endpoint node or %NULL to get the first
> + *
> + * The caller is responsible for calling fwnode_handle_put() on the retu=
rned
> + * fwnode pointer. Note that this function also puts a reference to @prev
> + * unconditionally.
> + *
> + * Return: an endpoint firmware node pointer or %NULL if no more endpoin=
ts
> + * are available.
> + */
> +struct fwnode_handle *fwnode_graph_get_next_port_endpoint(const struct f=
wnode_handle *port,
> +							  struct fwnode_handle *prev)
> +{
> +	do {
> +		prev =3D fwnode_get_next_child_node(port, prev);

[Severity: High]
This is a pre-existing issue, but does calling fwnode_get_next_child_node()
here expose a use-after-free and infinite loop when the parent has both
primary and secondary fwnodes?

When the primary iterator completes, it drops its reference to the child
node and returns NULL. The fwnode_get_next_child_node() function then passes
this already freed primary child directly to the secondary iterator:

drivers/base/property.c:fwnode_get_next_child_node() {
    ...
    next =3D fwnode_call_ptr_op(fwnode, get_next_child_node, child);
    if (next)
        return next;

    /* When no more children in primary, continue with secondary */
    return fwnode_call_ptr_op(fwnode->secondary, get_next_child_node, child=
);
}

Would the secondary iterator drop the reference again and cause a double
free?=20

Could this also create an infinite loop where the secondary iterator treats
the invalid node as missing, returns its first child, and passes it back to
the primary iterator on the next loop iteration?

> +		if (fwnode_name_eq(prev, "endpoint"))

[Severity: High]
Does this hardcoded string match cause a regression for ACPI-based devices
relying on this API?

ACPI graph endpoint nodes are natively identified by the endpoint property,
and their names often do not directly match "endpoint" (as seen in
is_acpi_graph_node).

By bypassing the graph fwnode abstractions like graph_get_next_endpoint,
will this silently fail to find graph endpoints on ACPI platforms?

> +			break;
> +	} while (prev);
> +
> +	return prev;
> +}
> +EXPORT_SYMBOL_GPL(fwnode_graph_get_next_port_endpoint);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703110317.1283=
411-1-wenst@chromium.org?part=3D2

