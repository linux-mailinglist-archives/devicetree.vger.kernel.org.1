Return-Path: <devicetree+bounces-320796-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fZXaIzjrSmoAJwEAu9opvQ
	(envelope-from <devicetree+bounces-320796-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 01:39:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEBB70BC26
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 01:39:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ideasonboard.com header.s=mail header.b=ZRbH4EAh;
	dmarc=pass (policy=none) header.from=ideasonboard.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320796-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320796-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 991633008781
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 23:39:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 833F337188A;
	Sun,  5 Jul 2026 23:39:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332B9171CD
	for <devicetree@vger.kernel.org>; Sun,  5 Jul 2026 23:39:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783294773; cv=none; b=rJD66glHpZIqVOOrpSKM4O/NgshIU/F1/1gaCNcuk0Ibzj7P6Bj97jJ5Ah5z0i5IFEAt43juM3Dqy6uhXtxzNHERBSDJnm2YVjajQ5YPca35hxW9sSF5UDAoWVQKMt8uYl4i2lI1ycpLjGkIjLItP3XXhFjQT/i+yTSmeoTNSGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783294773; c=relaxed/simple;
	bh=sFpMSXqUvGE4yJSP0OG1nAhmmKiQHFdbFlu0SECL2yU=;
	h=Message-ID:From:To:Cc:Subject:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=oQO/ipHxzEy6O58R0edDGCF1GcJKZ70c1QaXLk0xGUcwMCjIQM7de2aJIuR5A5wK3LRmuXoD1HCAqrNmeVG9WPCNzrcb+MPlXwdakLhlChlLeADriN5Jp57m2cdu3kg3ktLYWWMCr9p6iyj35x5C9jZo64hBpygo26eqXjs8+RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=ZRbH4EAh; arc=none smtp.client-ip=213.167.242.64
Received: from killaraus.ideasonboard.com (2001-14ba-70f3-e800--a06.rev.dnainternet.fi [IPv6:2001:14ba:70f3:e800::a06])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 10840BE;
	Mon,  6 Jul 2026 01:38:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1783294723;
	bh=sFpMSXqUvGE4yJSP0OG1nAhmmKiQHFdbFlu0SECL2yU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ZRbH4EAhGXzJo0IxQlwEbNkhNc0FRrdzESVRLy8HD1yEK6o3Bg6NOzlHfR0mGx/7K
	 4Y6ctG5ffR6S+IjBoFA0Ii3Mawgo1H7mpoym29xYjEfH4Gp1yVsT/SkRSOJ1jMk71Z
	 BVT2FslwLfPDJCP8ys6xfa7FtmuVK46qLeRYQGGM=
Message-ID: <c697251333ed949722f60571578a0639@killaraus.ideasonboard.com>
From: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
To: sashiko-reviews@lists.linux.dev
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 robh@kernel.org, conor+dt@kernel.org, wsa+renesas@sang-engineering.com
Subject: Re: [PATCH 4/4] [DNI] arm64: dts: renesas: salvator: Add overlay for
 Dell P1911 VGA display
Date: Mon, 06 Jul 2026 02:39:28 +0300
In-Reply-To: <20260705213741.334241F000E9@smtp.kernel.org>
References:
 <20260705213542.28987-1-laurent.pinchart+renesas@ideasonboard.com>
 <20260705213542.28987-5-laurent.pinchart+renesas@ideasonboard.com>
 <20260705213741.334241F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-320796-lists,devicetree=lfdr.de,renesas];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:wsa+renesas@sang-engineering.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,ideasonboard.com:from_mime,ideasonboard.com:email,ideasonboard.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CFEBB70BC26

Hello,

This is the friendly mail bot of Laurent Pinchart. You have sent him
what appears to be an e-mail generated by an LLM. In order to preserve
his mental health, the e-mail has been automatically ignored.

Thank you,

Laurent's spam bot

On Sun, 05 Jul 2026 21:37:40 +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
> - [Medium] The patch is explicitly marked as test-only and should not be me=
rged.
> --
>=20
> commit ec00db7021fbc2f550a150a0512dfc7596a53df2
> Author: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
>=20
> arm64: dts: renesas: salvator: Add overlay for Dell P1911 VGA display
>=20
> This patch adds an overlay to hardcode the EDID of a Dell P1911 VGA display
> connector to the VGA port of the Salvator board.=20
>=20
> > Add an overlay that hardcodes the EDID of the Dell P1911 VGA display
> > connector to the VGA port of the Salvator board. This is meant to test
> > EDID hardcoding and should not be merged upstream.
>=20
> [Severity: Medium]
> The commit message explicitly states this is meant to test EDID hardcoding =

> and should not be merged upstream.
>=20
> Was this patch accidentally included in this series, or is it intended to be
> dropped by the maintainer before final merging?
>=20

