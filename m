Return-Path: <devicetree+bounces-320795-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xER+EhHrSmr5JgEAu9opvQ
	(envelope-from <devicetree+bounces-320795-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 01:38:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDDF70BC1F
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 01:38:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ideasonboard.com header.s=mail header.b=X+nTM1Up;
	dmarc=pass (policy=none) header.from=ideasonboard.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320795-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320795-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 71E3D3008781
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 23:38:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45289371867;
	Sun,  5 Jul 2026 23:38:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0D83370D7B
	for <devicetree@vger.kernel.org>; Sun,  5 Jul 2026 23:38:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783294734; cv=none; b=YByTVIVbB0rqvtTXVDxJSnpUCjCRN2Knzv15osTWhpyhaskBHllnwXrtOs4IlZR/RUt4LCgtq+qa3+F43JNE4X5jcvLPQAO/aTU7iTjfQYsuYVdxz9mv+Z90+r9KKVwoNGoultxuIGlKgQulQeTdfCkOHYC5BvWQo0fHU423+pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783294734; c=relaxed/simple;
	bh=CKr70Bl7SDnv+itCSOhLjyRNH9/JCWI6hs/gsrk/9BY=;
	h=Message-ID:From:To:Cc:Subject:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=avUYY/DxTZmsS3okjSvKZwbfeM59CZjyk+T6nqdPKgHKigxf+Omcw5iUlWnyR0uLbRoNnMUwyzsec9RzIIwXq8lnPFwNPwZN6TsYMks/SA51yAwTKMEMem0ZZbxlSD6dxtAAvMRQVnXa6pMJGn/kO6O+xKHfv7IRWs1cB8fJyUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=X+nTM1Up; arc=none smtp.client-ip=213.167.242.64
Received: from killaraus.ideasonboard.com (2001-14ba-70f3-e800--a06.rev.dnainternet.fi [IPv6:2001:14ba:70f3:e800::a06])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 98FA2741;
	Mon,  6 Jul 2026 01:38:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1783294683;
	bh=CKr70Bl7SDnv+itCSOhLjyRNH9/JCWI6hs/gsrk/9BY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=X+nTM1UpQGaDjCCbrKs8a926nKNRXlYJu4kGjmk0blxy95UwK+eDTDWd+PkdzvCQh
	 dSHgpjB+bUEcjTOaoKvZUARoiv3ku1BiZwqJzi1oKhuMZODrGTJZQ0SckKGBnDtuZS
	 GEOZIOXk5rvt+tNieFvB+91Ra+vsz/rkaGK950xM=
Message-ID: <1ad604017b0d28663842a86aa036340b@killaraus.ideasonboard.com>
From: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, conor+dt@kernel.org,
 wsa+renesas@sang-engineering.com
Subject: Re: [PATCH 3/4] drm/bridge: display-connector: Support hardcoded EDID
 for VGA connectors
Date: Mon, 06 Jul 2026 02:38:49 +0300
In-Reply-To: <20260705214453.5195C1F000E9@smtp.kernel.org>
References:
 <20260705213542.28987-1-laurent.pinchart+renesas@ideasonboard.com>
 <20260705213542.28987-4-laurent.pinchart+renesas@ideasonboard.com>
 <20260705214453.5195C1F000E9@smtp.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ideasonboard.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-320795-lists,devicetree=lfdr.de,renesas];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:wsa+renesas@sang-engineering.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[laurent.pinchart@ideasonboard.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[laurent.pinchart@ideasonboard.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	RCPT_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9CDDF70BC1F

Hello,

This is the friendly mail bot of Laurent Pinchart. You have sent him
what appears to be an e-mail generated by an LLM. In order to preserve
his mental health, the e-mail has been automatically ignored.

Thank you,

Laurent's spam bot

On Sun, 05 Jul 2026 21:44:52 +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
>=20
> Pre-existing issues:
> - [High] Use-After-Free of devm-managed resources and missing asynchronous =
cleanup during device removal when the driver is unbound.
> --
>=20
> commit 48f63e147d7554f73cd9df360e29fd0b0ddb5d8d
> Author: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
>=20
> drm/bridge: display-connector: Support hardcoded EDID for VGA connectors
>=20
> This commit adds support for parsing a hardcoded EDID blob from the device =
tree
> for VGA connectors when DDC signals are not connected. It also ensures that
> specifying both a DDC bus and a hardcoded EDID returns an error during prob=
e.
>=20
> > diff --git a/drivers/gpu/drm/bridge/display-connector.c b/drivers/gpu/drm=
/bridge/display-connector.c
> > index eb3412ec30a07..225a8e987d086 100644
> > --- a/drivers/gpu/drm/bridge/display-connector.c
> > +++ b/drivers/gpu/drm/bridge/display-connector.c
>=20
> [ ... ]
>=20
> > @@ -64,6 +67,9 @@ static enum drm_connector_status display_connector_dete=
ct(struct drm_bridge *bri
> >  	if (conn->bridge.ddc && drm_probe_ddc(conn->bridge.ddc))
> >  		return connector_status_connected;
> > =20
> > +	if (conn->edid)
> > +		return connector_status_connected;
> > +
>=20
> [Severity: High]
> This isn't a bug introduced by this patch, but does device removal have a
> use-after-free vulnerability when the driver is unbound via sysfs?
>=20
> Looking at display_connector_detect() in=20
> drivers/gpu/drm/bridge/display-connector.c, if the driver is bound and atta=
ched
> to a DRM encoder, and then unbound via sysfs:
>=20
> 1. display_connector_remove() calls drm_bridge_remove() but does not call
>    disable_irq() or cancel_work_sync(&conn->hpd_work).
> 2. The bridge structure is kept alive because the DRM core still holds a
>    reference count.
> 3. The driver core's devres_release_all() runs and frees conn->hpd_gpio and
>    the IRQ.
>=20
> If the DRM core then polls detect, it will execute display_connector_detect=
():
>=20
> 	if (conn->hpd_gpio) {
> 		if (gpiod_get_value_cansleep(conn->hpd_gpio))
> 			...
>=20
> Will this dereference the devres-freed conn->hpd_gpio?
>=20
> Additionally, if the concurrent hpd_work executes, will it attempt to lock
> bridge->hpd_mutex which was already destroyed by drm_bridge_remove()?
>=20
> >  	switch (conn->bridge.type) {
> >  	case DRM_MODE_CONNECTOR_DVIA:
>=20
> [ ... ]
>=20

