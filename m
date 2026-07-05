Return-Path: <devicetree+bounces-320781-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jxbkLFnQSmoBIAEAu9opvQ
	(envelope-from <devicetree+bounces-320781-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 23:44:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3ED70B812
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 23:44:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=UUC3O1qk;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320781-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320781-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2638D30073F4
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 21:44:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65D26371049;
	Sun,  5 Jul 2026 21:44:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248D53655C0
	for <devicetree@vger.kernel.org>; Sun,  5 Jul 2026 21:44:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783287895; cv=none; b=m4qSG1FsGIIyn269Y1YcIhbUjTAZ6Da0OUBgPdkPZFw+czVl9oN1iXdUIz/y3WmgfD5xXo6pmz/mzGwuUpN/CO5/Cj0I7BTjgaAzY1MXWFergkaIyYFbiYWKcWNXb7XoKRex1vfeVaenSWcHVJFq9Sw5tGKBJGX+O7/RNUEUaO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783287895; c=relaxed/simple;
	bh=4isn7coX6+qS0lMF4d5P3/Y8lVCiuTgyrMO8nqLpFs8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=si9dB+4TQz6n04XQug6pv9Sz+En3QBO2kTXBdsvAYbj49w4boBKqnq9ISCq2FNSLOnnFYrJgXKUgDZPwFnr8cPqne+rTQxlqRsL1Gq5rCKb5HTaANNhtb8ZPGyDj4BMcO90RMvmXw+rYmRSbt1W/C1nzdpGFFaqImTe+hUJgEG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUC3O1qk; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5195C1F000E9;
	Sun,  5 Jul 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783287893;
	bh=dh3N2oIogZcdyO5Fv7nBsba8L/DMUWLRgHZHLd7VQrE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UUC3O1qkcUPl2vv/EtLof1kts8ZC0ZbpMZ4o4cWCF09WUq9R7juw6IhhzKgxnGm7r
	 DO0FmAXqFsn/g7qPFFYznMlN5eAyeAApyq23Il+KTW0U85vuAQbWtUSPBxotAw0ohY
	 oS77uOiTW6d8u53MoywY0f2F9tirZc0gazKoZFjnjhVwXVBfnuPirdrsIcyUoPPWaP
	 YADg1zgC5dSDvtH6miXxc/PV/lsSMnyzL0P9miQPLm1RUXSQ/fOe/pBkSMbiHTRAlB
	 uN0aJtFaPGsn0Cointp5al2auvCzYz2nOj8x1gZrB8M3wC29iKfUEYe0faiJwDI/GY
	 BytRXXCLPh3Kg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/4] drm/bridge: display-connector: Support hardcoded
 EDID for VGA connectors
Reply-To: sashiko-reviews@lists.linux.dev
To: "Laurent Pinchart" <laurent.pinchart+renesas@ideasonboard.com>
Cc: robh@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, conor+dt@kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260705213542.28987-4-laurent.pinchart+renesas@ideasonboard.com>
References: <20260705213542.28987-1-laurent.pinchart+renesas@ideasonboard.com>
 <20260705213542.28987-4-laurent.pinchart+renesas@ideasonboard.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 05 Jul 2026 21:44:52 +0000
Message-Id: <20260705214453.5195C1F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-320781-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,ideasonboard.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:laurent.pinchart+renesas@ideasonboard.com,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:wsa+renesas@sang-engineering.com,m:laurent.pinchart@ideasonboard.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1C3ED70B812

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Use-After-Free of devm-managed resources and missing asynchronous =
cleanup during device removal when the driver is unbound.
--

commit 48f63e147d7554f73cd9df360e29fd0b0ddb5d8d
Author: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>

drm/bridge: display-connector: Support hardcoded EDID for VGA connectors

This commit adds support for parsing a hardcoded EDID blob from the device =
tree
for VGA connectors when DDC signals are not connected. It also ensures that
specifying both a DDC bus and a hardcoded EDID returns an error during prob=
e.

> diff --git a/drivers/gpu/drm/bridge/display-connector.c b/drivers/gpu/drm=
/bridge/display-connector.c
> index eb3412ec30a07..225a8e987d086 100644
> --- a/drivers/gpu/drm/bridge/display-connector.c
> +++ b/drivers/gpu/drm/bridge/display-connector.c

[ ... ]

> @@ -64,6 +67,9 @@ static enum drm_connector_status display_connector_dete=
ct(struct drm_bridge *bri
>  	if (conn->bridge.ddc && drm_probe_ddc(conn->bridge.ddc))
>  		return connector_status_connected;
> =20
> +	if (conn->edid)
> +		return connector_status_connected;
> +

[Severity: High]
This isn't a bug introduced by this patch, but does device removal have a
use-after-free vulnerability when the driver is unbound via sysfs?

Looking at display_connector_detect() in=20
drivers/gpu/drm/bridge/display-connector.c, if the driver is bound and atta=
ched
to a DRM encoder, and then unbound via sysfs:

1. display_connector_remove() calls drm_bridge_remove() but does not call
   disable_irq() or cancel_work_sync(&conn->hpd_work).
2. The bridge structure is kept alive because the DRM core still holds a
   reference count.
3. The driver core's devres_release_all() runs and frees conn->hpd_gpio and
   the IRQ.

If the DRM core then polls detect, it will execute display_connector_detect=
():

	if (conn->hpd_gpio) {
		if (gpiod_get_value_cansleep(conn->hpd_gpio))
			...

Will this dereference the devres-freed conn->hpd_gpio?

Additionally, if the concurrent hpd_work executes, will it attempt to lock
bridge->hpd_mutex which was already destroyed by drm_bridge_remove()?

>  	switch (conn->bridge.type) {
>  	case DRM_MODE_CONNECTOR_DVIA:

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260705213542.2898=
7-1-laurent.pinchart+renesas@ideasonboard.com?part=3D3

