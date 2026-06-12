Return-Path: <devicetree+bounces-311079-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ues8KmU2LGoZNwQAu9opvQ
	(envelope-from <devicetree+bounces-311079-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:40:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA7F67B01C
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:40:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bzz6wV3J;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311079-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311079-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 34C4D301544C
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:38:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EC513E51EC;
	Fri, 12 Jun 2026 16:38:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6443721773D
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 16:38:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781282317; cv=none; b=j70E5jWiEppVgHLUzSUiTWNv7D7XgFKbqPKsLZsdTrPkjBqMn4ZwBVFCKp9vNvXdgcw9FOQ9HMuEYSOXG2YWpzI7cnhAKw4JNM2z+w3abg4qXfo9u4kiv1mcT44ApucqsRYkkpiNQHA0IlB15PKd4bfCEjfWeb5dqvYZT7jtoDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781282317; c=relaxed/simple;
	bh=RLRsy1dM4Ror35YK6sJF2mQKlunbxTDJFwWX+fyoVoI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Nwb6ISZjOBmzuXANLdQ5vtnJ75hrXRAmgAwul8BaefG4bbmbhpNVCw6dihDShAP0hyJPDwSEdEaTmVYAuS+M6iYTQEYTHZyZfzVfyatSaHzkua+U83miWbzGbUc+/oXSrqE8xTleHOAV4zNaFBLo0+GW4DyH57NmUIdPW+USSpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzz6wV3J; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D5471F000E9;
	Fri, 12 Jun 2026 16:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781282316;
	bh=QUwoA2La5hrRAZoRb8RcYx50H7iw1ZedS5O39tRcvv0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bzz6wV3Jk0QxRGg5BllRx3qrB0qLEBdgiffID9PbPrPgjCH10lEw2KXfG31JcHLEX
	 ezK3nhoQcaGYnJMs8SGerwOEiy6SHwlYgnLoa800drA2czsRfUL4QUjPATWzp6sWnQ
	 adcBnRYDkH89UDgzUUoei1/gGhVr/PhMC3dGYoZOpHI0gvbsoqU7MdVYWqQyVXddAX
	 PxPWwq89hBr8gUfqWa9SoLHFe/s5jD9ijQZ3QBZn0C1t+z78jbtTigdlOnUC54AX1X
	 gZ2gJxJ3syx/fKHqLLbRvWXFDuie+XNH6KpfPXaee5dzpBawg1Zugl23G7GrlSgPvZ
	 hEnuBeIzc2IJA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 02/18] phy: rockchip: usbdp: Do not lose USB3 PHY
 status
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260612-rockchip-usbdp-cleanup-v5-2-efc83069869f@collabora.com>
References: <20260612-rockchip-usbdp-cleanup-v5-2-efc83069869f@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 16:38:35 +0000
Message-Id: <20260612163835.8D5471F000E9@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311079-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:linux-phy@lists.infradead.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,vger.kernel.org,linaro.org,gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DCA7F67B01C

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [High] State desynchronization on `rk_udphy_init` failure causes subseque=
nt power-on retries to falsely return success without re-initializing the h=
ardware, leading to dead PHY or bus hangs.

Pre-existing issues:
- [High] Subsystem power-off requests permanently leak `udphy->status` bits=
 if the Type-C mode has physically changed, causing a perpetual resource le=
ak of the PHY clocks.
--

commit 93e296ece1bf03449fcdb7d0485cb77da80dd9b7
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Do not lose USB3 PHY status

This commit fixes an issue where the USB3 tracking information is lost
when the DisplayPort is re-initialized. It does this by preventing the
status variable from being cleared during mode changes in the PHY driver.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index fba35510d88ce..744cc7c642f49 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -1009,7 +1009,6 @@ static int rk_udphy_power_on(struct rk_udphy *udphy=
, u8 mode)
>  			rk_udphy_u3_port_disable(udphy, false);
>  	} else if (udphy->mode_change) {
>  		udphy->mode_change =3D false;
> -		udphy->status =3D UDPHY_MODE_NONE;

[Severity: High]
If rk_udphy_init() fails (for example, returning -EPROBE_DEFER after a lock
timeout), will this lead to a permanent state desynchronization?

By removing the clearing of udphy->status, if the initialization fails,
udphy->mode_change is already set to false but udphy->status remains
non-zero.

If the subsystem later retries rk_udphy_power_on(), it will see
udphy->status !=3D UDPHY_MODE_NONE and udphy->mode_change =3D=3D false. Cou=
ld
this cause it to bypass all initialization, blindly update the status, and
falsely return success while the PHY hardware remains disabled and in reset?

[Severity: High]
This is a pre-existing issue, but removing the forced clearing of
udphy->status here exposes a potential permanent resource leak of the PHY
clocks.

Looking at rk_udphy_power_off():

	if (!(udphy->mode & mode)) {
		dev_info(udphy->dev, "mode 0x%02x is not support\n", mode);
		return;
	}

and rk_udphy_usb3_phy_exit():

	if (!(udphy->mode & UDPHY_MODE_USB) || udphy->hs)
		return 0;

If the Type-C multiplexer switches from DP_USB to a DP_ONLY mode,
udphy->mode loses the USB bit. If the USB controller then unbinds and calls
phy_exit() while in DP_ONLY mode, the early returns above prevent clearing
the UDPHY_MODE_USB bit from udphy->status.

When DP eventually powers off, will udphy->status remain non-zero due to
this orphaned USB bit, preventing rk_udphy_disable() from ever executing
and leaking the PHY clocks and power?

>  		if (udphy->mode =3D=3D UDPHY_MODE_DP)
>  			rk_udphy_u3_port_disable(udphy, true);
>

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612-rockchip-u=
sbdp-cleanup-v5-0-efc83069869f@collabora.com?part=3D2

