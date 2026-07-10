Return-Path: <devicetree+bounces-324653-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ve0NAFRfUWqBDQMAu9opvQ
	(envelope-from <devicetree+bounces-324653-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 23:08:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB1173EA11
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 23:08:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Cl5FPucM;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324653-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324653-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 15B273008C9F
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 21:08:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B09F93AFCEB;
	Fri, 10 Jul 2026 21:08:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AD60347535
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 21:08:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783717710; cv=none; b=tUDuugDK234KE8izTdPG4mF3co6LHZf0eoeLpZbqGnex5nSrFnCMTPsUEytgFHrs5aotXP/stws8dELvQa70sAsc3IiiHayY08fOLcwWCzpBYStSNGR7+TqF+0ER5H2E1LBQNqZV/XscyECImu0jdx4PplrdLDjt2eVs/paQ78o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783717710; c=relaxed/simple;
	bh=fCY/947aJzuzkTRU1VzK/gKdQ1VAiPsORJRgbmceV50=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lwbzdQS3UX9BymtYU8sCrNL9jM9RACT7tuMJ0myPObOVSvlKMVD8MxIJoFWNHqUE1aI7+SVx1cEdIsPgRZfn262T0RXLO/An+KptxboFskxCNpadaVzb6REUy43/s++p79ZZ8rSP5Z78S59OAA6IG7k6tGpMbPS0nPFjPsQ8KIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cl5FPucM; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A98441F000E9;
	Fri, 10 Jul 2026 21:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783717709;
	bh=TmrZCUi7i9cpiKGGpYc5TFXRmMnjaloY6YqWjEd+Qlk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Cl5FPucMuBXWoxEryswGMcikbz2GVjZ1OmpSOdfRNL04l6BcC72TE4RTz6qJN9wQD
	 BSXGu3bchPW6VjdmIeLQzUfQoc4Qxf1wiSFS3gJbCy+qnhwAOFT3mZssm0nuMAcADQ
	 xusuxlUl5ZSzHXTyEawoQQBThdCxqCkc1H5fRqmMQl5oR5m+lc5YdY1dlECglnw2E1
	 25hj0jaZtpoDuF2Uq7oWnR21EwFuVAkEie3RXSezmp0h+0GatWZxyiGYKFQWpn71bB
	 6vx+UXKy6jTnp6TvNGxhDoaxfXVChPFK1yyLsnyTRah/xZPk8o6VIf726ivTUwzp+s
	 7CbNR8RxLaecg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 06/36] phy: rockchip: usbdp: Drop seamless DP
 takeover
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, vkoul@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, conor+dt@kernel.org
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-6-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
 <20260710-rockchip-usbdp-cleanup-v12-6-8b41a9a9bef0@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 21:08:28 +0000
Message-Id: <20260710210828.A98441F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324653-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:vkoul@kernel.org,m:robh@kernel.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,kernel.org,linaro.org,gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ECB1173EA11

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Missing hardware reset at probe leads to system lockups if bootloa=
der leaves PHY active
--

--- Patch [6]: [PATCH v12 06/36] phy: rockchip: usbdp: Drop seamless DP tak=
eover ---
commit 871e6d2aea7ac2c888b4917f93fff1eda368209d
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Drop seamless DP takeover

This patch removes support for seamless DP takeover from the bootloader,
noting that the current DRM drivers do not support it and the code is
untested. It removes the initial status check and corresponding reset logic.

Closes: https://lore.kernel.org/linux-phy/20260612164107.C7DB21F000E9@smtp.=
kernel.org/

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index 3fc8222fcaec2..6cb9f6b4dbf6d 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c

[ ... ]

> @@ -1495,10 +1468,6 @@ static int rk_udphy_probe(struct platform_device *=
pdev)
>  	if (ret)
>  		return ret;
> =20
> -	ret =3D rk_udphy_get_initial_status(udphy);
> -	if (ret)
> -		return ret;
> -

[Severity: High]
Does removing this initial status check leave the PHY hardware in an unmana=
ged
state if the bootloader enabled it?

Without this initialization step, the driver no longer explicitly manages t=
he
PHY resets or increments the clock enable count during probe. If a bootload=
er
leaves the PHY active (such as for a display splash screen or USB fastboot),
and the consumer driver is not loaded or defers probing, the clock framewor=
k's
clk_disable_unused will execute at late_initcall and cut the unclaimed PHY
clocks.

On Rockchip SoCs, cutting clocks to an un-reset, active peripheral frequent=
ly
causes an AXI bus hang or prevents the power domain from safely shutting do=
wn.
Is an explicit reset still needed in rk_udphy_probe() to ensure the hardware
is put into a quiescent state during boot?

>  	mutex_init(&udphy->mutex);
>  	platform_set_drvdata(pdev, udphy);
>

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710-rockchip-u=
sbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com?part=3D6

