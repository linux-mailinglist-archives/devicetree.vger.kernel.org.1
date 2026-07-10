Return-Path: <devicetree+bounces-324665-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aFc3EpZhUWokDgMAu9opvQ
	(envelope-from <devicetree+bounces-324665-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 23:18:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A247373EB58
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 23:18:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ipCMgIh+;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324665-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324665-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ADA33300D6A3
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 21:18:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 775393B52F0;
	Fri, 10 Jul 2026 21:18:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E283B19D2
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 21:18:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783718292; cv=none; b=MaykMz4d8JQZ5uT9InPo2lkhlHOiPk3k9wlTWalUeyKHhPnYZ74dUpPrZdu2ljBD0s4jQBQ0lAsePuatZJNZqbXNUKFpPsTqnFrq3HJ14d7p5Go/ataOof1gsQch6YM/j+t17uOvf+4/drRmyCFCFQt3mhq14Qb5MZdEhR/VdPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783718292; c=relaxed/simple;
	bh=OyxAVarR14txNAnvO1XUiC1H1KMmqFqaxcAbjFtAVOw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=N143kakfPkUYIdFlLzn1AoBkEL2DZ6KfCjvP7VbgZdwguMMPJZ0+RWbdV8jfGzvPtgxLvNhuc/gXQaeTk93xssT/xK7hPgzhxWjnzlFIXariZ2omKnCgwophFxvIdD+HD6jzlZES/yMMlKM4txeg7Mr3APq+kHJemTaAoZgDCHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipCMgIh+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F52E1F000E9;
	Fri, 10 Jul 2026 21:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783718290;
	bh=KU/h5+v031E5lMrCi2/2Pe1XScdyKJyroAIgt9YDWiY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ipCMgIh+JDxGYZgdYjeGirKJTH9D1fGS9GaNvPdDOC+o23uYIoa5MK9cmiuW8yIo4
	 oKdgKbJVS8b44gGHvDiOuguslaGhrK5TjdslDLfNJXxwrvOOHWUpeg+c3lSU0wJlbM
	 Iwfd45IElZ8gQWygfSfHV0cWT8/HPrdfzRkOAGgX23XERSD9df5L90DsKNFQ02+oak
	 UcN7M+5PwxIrKXj3jr1cxv3sClCZy+v30Ld9bCkO3IdJ9ZTfhYppzmrnqanilB+ctu
	 30/Aytc3PoLyd/h+9iZaLVToFpey6AlDFWkNqHA6dmaL7Nr0tlDiaYW31DkJmoytWB
	 IEvD8RrBgEZmw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 21/36] phy: rockchip: usbdp: Properly handle
 TYPEC_STATE_SAFE and TYPEC_STATE_USB
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-21-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
 <20260710-rockchip-usbdp-cleanup-v12-21-8b41a9a9bef0@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 21:18:08 +0000
Message-Id: <20260710211809.4F52E1F000E9@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324665-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:vkoul@kernel.org,m:linux-phy@lists.infradead.org,m:robh@kernel.org,m:olteanv@gmail.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,lists.infradead.org,gmail.com,vger.kernel.org,linaro.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,collabora.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A247373EB58

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Incomplete handling of TYPEC_STATE_USB and TYPEC_STATE_SAFE leaves=
 the PHY stuck in DP mode, breaking USB3 recovery.
--

--- Patch [21]: [PATCH v12 21/36] phy: rockchip: usbdp: Properly handle TYP=
EC_STATE_SAFE and TYPEC_STATE_USB ---
commit 92ff6f90dbbc1f6a2eb9a05f21ddd0b835b0116d
Author: Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: phy: rockchip: usbdp: Properly handle TYPEC_STATE_SAFE and TYPEC_S=
TATE_USB

This commit modifies the typec mux handler to process TYPEC_STATE_SAFE
and TYPEC_STATE_USB modes. It removes the condition that ignored mux
events not involving DP AltMode to allow muxing to be updated when
exiting DP AltMode.

Closes: https://sashiko.dev/#/message/20260619155020.CC7361F000E9%40smtp.ke=
rnel.org

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index 4e54020d17551..0399cbf96e195 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -1293,17 +1293,26 @@ static const struct phy_ops rk_udphy_usb3_phy_ops=
 =3D {
>  	.owner		=3D THIS_MODULE,
>  };
> =20
> +static bool rk_udphy_is_supported_mode(struct typec_mux_state *state)
> +{
> +	/* Handle Safe State and USB State */
> +	if (state->mode < TYPEC_STATE_MODAL)
> +		return true;
> +
> +	/* Handle DP AltMode */
> +	if (state->alt && state->alt->svid =3D=3D USB_TYPEC_DP_SID)
> +		return true;
> +
> +	return false;
> +}
> +
>  static int rk_udphy_typec_mux_set(struct typec_mux_dev *mux,
>  				  struct typec_mux_state *state)
>  {
>  	struct rk_udphy *udphy =3D typec_mux_get_drvdata(mux);
> =20
> -	/*
> -	 * Ignore mux events not involving DP AltMode, because
> -	 * the mode field is being reused, e.g. state->mode =3D=3D 4
> -	 * could be either TYPEC_MODE_USB4 or TYPEC_DP_STATE_C.
> -	 */
> -	if (!state->alt || state->alt->svid !=3D USB_TYPEC_DP_SID)
> +	/* Ignore mux events not involving USB or DP */
> +	if (!rk_udphy_is_supported_mode(state))
>  		return 0;
> =20
>  	mutex_lock(&udphy->mutex);

[Severity: High]
This is a pre-existing issue, but since this patch explicitly aims to
fix muxing when exiting DP AltMode, is a hardware update missing here?

When exiting DP AltMode, TCPM sends a TYPEC_STATE_USB or TYPEC_STATE_SAFE
mux event. rk_udphy_typec_mux_set() updates the software state by calling
rk_udphy_set_typec_state() which sets udphy->phy_needs_reinit =3D true.

However, because the USB controller (DWC3) is already powered on, it
doesn't call phy_power_on() again. The DP controller calls phy_power_off()
when disabled, but rk_udphy_dp_phy_power_off() only clears the DP status
bit and doesn't re-evaluate phy_needs_reinit.

Because of this, rk_udphy_init() is never called and the hardware
CMN_LANE_MUX_AND_EN_OFFSET is never reprogrammed. Does this leave the PHY
stuck in 4-lane DP mode and break USB3 recovery?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710-rockchip-u=
sbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com?part=3D21

