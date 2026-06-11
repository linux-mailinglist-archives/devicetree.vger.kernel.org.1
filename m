Return-Path: <devicetree+bounces-310348-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6gwNEU2QKmrdsQMAu9opvQ
	(envelope-from <devicetree+bounces-310348-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 12:39:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E44670E8A
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 12:39:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Y1jD8xzx;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310348-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-310348-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5966E301532A
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 10:39:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E8DB3CAE66;
	Thu, 11 Jun 2026 10:39:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC2B2EA154
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 10:39:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781174346; cv=none; b=CDvQnG6v+XFhNhq71wY+fMbaCKc4BQOCCLMGSmLihHzHiIvQjL/pMaOBUpohfZcwEIItsMixQOebXsQIXWXkqt/8GFbefy1KSYZxtsk68YdjhUmKHR0mGJVll8lVdpr3GAdePanI4IRflng9PSo70q5KfrKWxaTA+X1VsEsn/SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781174346; c=relaxed/simple;
	bh=9JDbcpb5pqvwdBFiyCkzzoaR2c/JW5tTQuNiyq07WGo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=J5i9kp9vt34o3qCjOAZ3F5lvBgRSGNx3KgQzrbXspQ0SMVKWFx1XXJLPgtgkXuEOXvVReab5tIbGeLRSYeoxBOSCrKzmZD9AdXrLblRrndy4ab6fte535vE9X4eqah22gzRhG+k3wJXsKIPrayTgfeITjQ/CbSRMLDarYxl5C4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1jD8xzx; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CB131F00893;
	Thu, 11 Jun 2026 10:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781174344;
	bh=c7Nh6QsawFszUfZ1QEQZjN00rW0CkxlPRNjhq2DXxFA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Y1jD8xzxA4Ynie8ze7HmV/m2b0yAoshiACAPCEN11OReUiPBbwjtuFcwQJLVdtBt7
	 82nILTDQ5zIHMKU7KARt4S8SC0s7JmMb9Y5rk8vAFvf81xnkwZ97NGKVyQPLQ3lJQi
	 QYVqirshgxbxvPA+6gmFzncHx06j7b5Rix02UiX1lQMYaQmlQ2HYmUwcDKofabbzX7
	 PoDyUWKxFLvthGyz9AlkOlQUmugvJRYvCsAS9wj5cvrtr9vhw1nnDewsx5Hv/PrGWO
	 DqgAFLp7sZrVaI53L1xKzFGa9xfRDOcSFA5Usu1nJoagzb09T1Xn2LHcBAERhJoJvq
	 QnPUlKUB+ztww==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] of: property: Fix of_fwnode_get_reference_args() with
 negative index
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alban Bedel" <alban.bedel@lht.dlh.de>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260611102806.2643869-1-alban.bedel@lht.dlh.de>
References: <20260611102806.2643869-1-alban.bedel@lht.dlh.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Jun 2026 10:39:03 +0000
Message-Id: <20260611103904.7CB131F00893@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-310348-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:alban.bedel@lht.dlh.de,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,dlh.de:email,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D6E44670E8A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Integer overflow in the bounds check of `software_node_get_referen=
ce_args` allows out-of-bounds memory read and potential kernel panic.
--

commit c268eb898558d8f55476cb8562a12b6fa754123b
Author: Alban Bedel <alban.bedel@lht.dlh.de>

of: property: Fix of_fwnode_get_reference_args() with negative index

This commit catches negative index values that are implicitly cast to
unsigned in the fwnode API before they are passed to the OF backend.
It ensures out-of-bounds indices return -ENOENT instead of -EINVAL.

Link: https://lore.kernel.org/linux-leds/aimVRwJPhlGxsIUj@tom-desktop/T/#mc=
43cbf7e0599991b56dd0d9680714d28d145fbc8

> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index 136946f8b746f..eace2d1847b99 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -1157,6 +1157,13 @@ of_fwnode_get_reference_args(const struct fwnode_h=
andle *fwnode,
>  	unsigned int i;
>  	int ret;
> =20
> +	/* This function should return -ENOENT for out of bound indexes,
> +	 * but the OF API uses signed indexes and consider negative indexes
> +	 * as invalid. Catch them here to correctly implement the fwnode API.
> +	 */
> +	if ((int)index < 0)
> +		return -ENOENT;

[Severity: High]
This is a pre-existing issue, but does this exact same implicit cast pattern
cause a regression in the software node backend?

Looking at software_node_get_reference_args() in drivers/base/swnode.c:

drivers/base/swnode.c:software_node_get_reference_args() {
    ...
    if ((index + 1) * sizeof(*ref) > prop->length)
        return -ENOENT;

    ref_array =3D prop->pointer;
    ref =3D &ref_array[index];
    ...
}

If index is 0xffffffff (from a -1 return value implicitly cast to unsigned),
index + 1 wraps around to 0. The check 0 * sizeof(*ref) evaluates as not
greater than prop->length, completely bypassing the bounds check.

Could this lead to an out-of-bounds array access when computing
&ref_array[index], causing a panic when dereferenced?

Should a similar check for negative indices be added to the swnode backend?

> +
>  	if (nargs_prop)
>  		ret =3D of_parse_phandle_with_args(to_of_node(fwnode), prop,
>  						 nargs_prop, index, &of_args);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260611102806.2643=
869-1-alban.bedel@lht.dlh.de?part=3D1

