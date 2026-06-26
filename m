Return-Path: <devicetree+bounces-316243-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UW1SBHnuPmpqNAkAu9opvQ
	(envelope-from <devicetree+bounces-316243-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 23:26:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF706D03D0
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 23:26:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=EObZh9zm;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316243-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-316243-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E8C8C301225A
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 21:24:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 899C93BF66D;
	Fri, 26 Jun 2026 21:24:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77A103BB9FA
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 21:24:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782509066; cv=none; b=uG1Ex+aSeSr4+Nc2t0AA9SWimZ/01KjkTuTcfbAleYq/k/SADNin+d9JHdVIjFUeZ7/NgdP0tG7LCqOqmehKGacsVwk0NlVFFDBMI+Hl6/AG+w6TCGG5pFZXmQihY2oTR9NF8EhKuqFp49wi/pgYQI8pC0mYKlTdV6fnPV89gmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782509066; c=relaxed/simple;
	bh=pRHlm3g4LdZsHzuqUd64BDZ4WMlzOqRPlzGETWGQCY8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=eML3GGRw/+vGB+boqva7zseof50zpTaotuQm+4lOY1Q2KdtW5eEkCANWBDoI4xXwYnhvIEbAVft+sbYveaMNZfM98TuG7K+NFbrM9MIySlcpj+og9DSbDbeqU3REw9nG5uuLiMX8Aj63GCNMcp7y4G5Uq1HZ/sWD9iHs3L+0r3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EObZh9zm; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C215E1F000E9;
	Fri, 26 Jun 2026 21:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782509065;
	bh=meyCxyyq6wQlMw5UNwqs2YmBFT9UPIYc/BxRbXbjDOU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EObZh9zmorohAFFsTgCq4pCuBVadLBbS5O5/h9EE0tEcI2bxJSSCAuz5pDoQht5U/
	 ZIYSZesGn3GMM5+T1/fiG+bP7mqgFgJCayvYHTVdNVRVr3+nkDMnPT94v5KjAx6GcC
	 5ZaIUvuZic7WIyxsDtsQgjyy+kJbJboQGI8RaIAiiVJ6y1xGDtzluckW9tm4vUwZVI
	 K02J0KrwHuRsCyHYSYKOSZY38gw2s8n1wKYZKUDUY8dD2a4VKHWQgQECQZREy9DwEX
	 qxRInXmg0Dn0SsKMdcMpqDs/oxl5/ul1c7FoGoHVUwifudf/Y1wtEvHgbASTjQ42f/
	 g9jD3UzU0K8tA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 28/29] phy: rockchip: usbdp: Avoid xHCI SErrors
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: neil.armstrong@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org
In-Reply-To: <20260626-rockchip-usbdp-cleanup-v8-28-47f682987895@collabora.com>
References: <20260626-rockchip-usbdp-cleanup-v8-0-47f682987895@collabora.com>
 <20260626-rockchip-usbdp-cleanup-v8-28-47f682987895@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Jun 2026 21:24:24 +0000
Message-Id: <20260626212424.C215E1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-316243-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:neil.armstrong@linaro.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:linux-phy@lists.infradead.org,m:olteanv@gmail.com,m:vkoul@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,vger.kernel.org,lists.infradead.org,gmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,collabora.com:email,lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5CF706D03D0

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Unconditionally re-enabling the USB3 port during PHY re-initializa=
tion overrides the High-Speed only (hs) configuration, potentially leading =
to an SError on subsequent PHY power off.
--

commit 9d1b08c311cabde1792e9f8ef67ab6b7a5f76005
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Avoid xHCI SErrors

This patch avoids xHCI SErrors by disabling the USB3 port before
re-initializing it when switching between USB3-only, USB3 + DP and DP-only
modes.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index dc166392ba199..7c8b9eaaf3526 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -1033,8 +1033,8 @@ static int rk_udphy_power_on(struct rk_udphy *udphy=
, u8 mode)
>  			rk_udphy_u3_port_disable(udphy, false);

[Severity: High]
This is a pre-existing issue, but does this unconditionally re-enable the
USB3 port and override the High-Speed only (hs) configuration?

If the system is configured with a high-speed only USB device, the PHY
initialization via rk_udphy_usb3_phy_init() correctly disables the USB3 port
to safely route the xHCI PIPE clock to the UTMI fallback.

When a DisplayPort cable is plugged in, rk_udphy_power_on() is called. Since
udphy->mode still contains UDPHY_MODE_USB for combo modes, this code
switches the clock source back to the PHY, overriding the disablement.

When the DP cable is disconnected, rk_udphy_dp_phy_power_off() drops the
status to UDPHY_MODE_NONE and powers off the PHY. At this point, the active
xHCI controller runs without a clock, causing an immediate SError on its
next register access.

Should the re-enable conditions here, and similarly after the PHY
re-initialization further down in this function, check if high-speed only
is disabled?

For example:
if ((udphy->mode & UDPHY_MODE_USB) && !udphy->hs)

>  		udphy->phy_needs_reinit =3D false;
>  	} else if (udphy->phy_needs_reinit) {
> -		if (udphy->mode =3D=3D UDPHY_MODE_DP)
> -			rk_udphy_u3_port_disable(udphy, true);
> +		rk_udphy_u3_port_disable(udphy, true);
> +		udelay(10);
> =20
>  		ret =3D rk_udphy_init(udphy);
>  		if (ret)

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260626-rockchip-u=
sbdp-cleanup-v8-0-47f682987895@collabora.com?part=3D28

