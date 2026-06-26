Return-Path: <devicetree+bounces-316236-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eNGnIC3sPmoSNAkAu9opvQ
	(envelope-from <devicetree+bounces-316236-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 23:16:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B34C6D0350
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 23:16:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Z1LKzZO6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316236-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316236-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A5512301AC1A
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 21:16:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C783E35675E;
	Fri, 26 Jun 2026 21:16:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5331C231830
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 21:16:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782508585; cv=none; b=I7u/TD/lVe3Cvql7Y5IdlrL1BoaeaBCgky6zok3t14ZG12kcGvp0AkE/Mfp70/q7YXRa30D0vTcR+qziKVqSZdYzubo71lI8x0slNeeV7E/kadLPGVZwJSSFnhacUHcuHE/jyqfP40zb1f2SzPZ4mendN+KqjJlvLIpzAdAsnAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782508585; c=relaxed/simple;
	bh=Pjwdfo5mWp8KqcTuUpjZJi6SXxmriNuZRtETo4v1zP4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lMt8BAZxt8L7dO+x4uPFYuz92kkCMKLO1H3/OVhIg5uIv/OB2Y1KyDX7avURPIW8RXfhgCHRmeD7XSJSORfUHTmtqqwgi5qHyjR8ZBWPZwEnL2muik4xQb+Fot/E9oPaMVFAjelxQ6rsv+YjTsU6jgqhW+bwm5b+x+qjX4z/up4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1LKzZO6; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A1B61F000E9;
	Fri, 26 Jun 2026 21:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782508583;
	bh=Oz0hQpoVBgE1fWYgGGRu9XbMpIBs/XffulZYwbOOWDw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Z1LKzZO6Mqsw9ZDL6kI3de5mxqdLtg3iqiccHISguaTyv+Xxwf9i9RQXLtrVn3rM/
	 Tms9YQkA9HsErjZUGUDyDaBHqCxaJTkAzxQ8h0D7jdrMUjz3iO9dLyJDi5rHC/UOOW
	 1mVqsD/SQnxzXau+s6ejjWtD+7NDOS8spGJDiQ5AjzSy6sCL7baMVelqtq46tTCcuc
	 aY/rnFk02eJBnePsdw4TRApy+8p2nETFTYnKtoxK/YibO3GlcIwxj6HffNZ+3mGTlo
	 sC66kt8wrViXSM6KwyfmKTcTjuuWoALFaPk9AtVXnduGESYaDAWCXFqwknoW8QTy6G
	 QHa1K7NQsGV/g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 03/29] phy: rockchip: usbdp: Do not lose USB3 PHY
 status
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260626-rockchip-usbdp-cleanup-v8-3-47f682987895@collabora.com>
References: <20260626-rockchip-usbdp-cleanup-v8-0-47f682987895@collabora.com>
 <20260626-rockchip-usbdp-cleanup-v8-3-47f682987895@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Jun 2026 21:16:23 +0000
Message-Id: <20260626211623.7A1B61F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-316236-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,lists.infradead.org,vger.kernel.org,linaro.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1B34C6D0350

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] USB3 reverse orientation changes are never programmed into the PHY=
 hardware because `rk_udphy_orien_sw_set` updates the software structs but =
fails to trigger a hardware re-initialization.
--

commit 2e0448207186d0a4562665690cfdad4abd051059
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Do not lose USB3 PHY status

This commit fixes an issue where the PHY status is lost during a DisplayPort
mode change. It ensures that the tracking information for USB3 is preserved
so the PHY isn't inadvertently disabled when DP is toggled off.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index a5ffdf7a6e76b..12dfdd470a782 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -1008,7 +1008,6 @@ static int rk_udphy_power_on(struct rk_udphy *udphy=
, u8 mode)
>  			rk_udphy_u3_port_disable(udphy, false);
>  		udphy->mode_change =3D false;
>  	} else if (udphy->mode_change) {
> -		udphy->status =3D UDPHY_MODE_NONE;

[Severity: High]
This isn't a bug introduced by this patch, but does keeping the USB mode bit
in the status flag prevent USB3 reverse orientation changes from being
programmed into the PHY hardware?

When a USB-C cable is flipped, the orientation switch handler=20
rk_udphy_orien_sw_set() updates the software state and requests a re-init:

    udphy->phy_needs_reinit =3D true;
    udphy->flip =3D flipped;
    rk_udphy_set_typec_default_mapping(udphy);

Later, rk_udphy_typec_mux_set() evaluates whether to apply this to the
hardware. However, it only calls rk_udphy_power_on() if the USB mode is not
already set in the status flag:

    if (... && !(udphy->status & UDPHY_MODE_USB) && ...)
        return rk_udphy_power_on(udphy, UDPHY_MODE_USB);

Since DWC3 keeps the PHY enabled permanently and the status flag retains
the USB mode, it appears rk_udphy_power_on() is never invoked to apply the
new lane mapping.

Could this cause the USB3 port to silently fail when plugged in reverse
orientation, since the hardware is never reconfigured?

>  		if (udphy->mode =3D=3D UDPHY_MODE_DP)
>  			rk_udphy_u3_port_disable(udphy, true);
>

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260626-rockchip-u=
sbdp-cleanup-v8-0-47f682987895@collabora.com?part=3D3

