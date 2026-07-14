Return-Path: <devicetree+bounces-326524-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Fd6RC6qaVmrO+wAAu9opvQ
	(envelope-from <devicetree+bounces-326524-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:23:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FAC0758B48
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:23:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=j2voWa3x;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326524-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326524-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4D697301DED0
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 20:22:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48E962EEE67;
	Tue, 14 Jul 2026 20:22:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0A02EDD6B
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 20:22:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784060571; cv=none; b=NJNXTy/NB1mlRK8/m6TaRlrOhXJmEvdPc2P+q4eRjuLX1xE+DI46iMSTOeOfl2FbR600cqj/IPixJ1FFz3onszJ5tn+sYQLj/FHhoPnQiZcqzKwVkCfycyl0gaSHZjdpD9NVLozuXion8FzcHYOiBZlFwAyLweqAb2z85QgZzCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784060571; c=relaxed/simple;
	bh=pReN0uZNq8XmXhY9C0IrF2YTSsl0fojPET/zhJAdsa0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=u9HOMB+96gqZnX7xRC9pku8y04uBS9/XbL1BB2oZ6SoKSb00qelR1ouPsglMS/ibmlcwDY+D9yHL0C8jQfmmnfU+LOkxN7qX14D+/Xs0nvSyaVc7eB6U5+LdqhDGmMPZaXY0ymttrGkryXBADVydK4UDBJA8bf5O6/3lQJ/hjMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2voWa3x; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16B7F1F000E9;
	Tue, 14 Jul 2026 20:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784060569;
	bh=MHSqA7occ7hGC7US8NOfu7naZc8W6e5MV9v/apQ1gtA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=j2voWa3xzxpKMmshz8lxOgqyUze+wfldWL/08xWQBu2KQ4B1bnZXKEJqMkLJILS6i
	 XGz529QHqF2prZiGZquBWjIcLVyzthv6m02XLyGRVCCiAvA6WDeMxexErg32pEhDH8
	 3x56nhQS2UjB/jxyvqb4twt+KGarA65GfmDAEGpFdA14uOpTWBLdYb1l39Z4pBTEWi
	 /RPmaPPRESvLaKtKONKpcvj+LegkCWerFOwZvQ5W6EsIePNJc4H9OJTpvEVhCxbSKm
	 SpBquaNM0d1NIY/RuQEr6qjtQKJydEndqbN6L1pBWekPThtMCp2ki0SSAyU7MxZU4k
	 dczoRVGq9+Hqg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 21/35] phy: rockchip: usbdp: Properly handle
 TYPEC_STATE_SAFE and TYPEC_STATE_USB
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, conor+dt@kernel.org
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-21-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
 <20260714-rockchip-usbdp-cleanup-v13-21-6cb3e769d4c5@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 20:22:48 +0000
Message-Id: <20260714202249.16B7F1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-326524-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:vkoul@kernel.org,m:linux-phy@lists.infradead.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,lists.infradead.org,vger.kernel.org,linaro.org,gmail.com];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,collabora.com:email,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8FAC0758B48

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Incomplete hardware reconfiguration when exiting DP AltMode leaves=
 USB3 permanently broken.
- [High] Resource leak due to checking `udphy->mode` instead of `udphy->sta=
tus` during PHY exit and power off.
--

--- Patch [21]: [PATCH v13 21/35] phy: rockchip: usbdp: Properly handle TYP=
EC_STATE_SAFE and TYPEC_STATE_USB ---
commit 00cf3afa847e665c47f5fa7b9e7cf40b3d920a4f
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Properly handle TYPEC_STATE_SAFE and TYPEC_STATE_USB

This commit updates the Rockchip USB/DP Combo PHY driver to handle Type-C
safe and USB states. This is intended to ensure that the muxing is properly
updated when exiting DP AltMode.

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
This isn't a bug introduced by this patch, but does this fully resolve the
problem when transitioning back to USB-only mode?

When the Type-C framework exits DP AltMode (entering TYPEC_STATE_SAFE or
TYPEC_STATE_USB), rk_udphy_typec_mux_set() updates udphy->mode and sets
udphy->phy_needs_reinit =3D true. However, it appears the hardware is never
actually reconfigured to reflect this.

The hardware is only reconfigured inside rk_udphy_power_on(), which checks
phy_needs_reinit. Because the USB subsystem already powered on the USB PHY
before DP was connected, it holds a power reference and will not call
phy_power_on() again due to a Type-C mux change.

Furthermore, when the DP driver calls phy_power_off() during AltMode exit,
rk_udphy_power_off() clears the UDPHY_MODE_DP flag from udphy->status but d=
oes
not check phy_needs_reinit or trigger hardware reconfiguration.

Does this leave the hardware PHY stuck in 4-lane DP mode with the U3 port
disabled, breaking USB3 functionality after unplugging the DP cable?


[Severity: High]
This is also a pre-existing issue, but could the way udphy->mode is updated
during these mux transitions lead to a resource leak?

If rk_udphy_typec_mux_set() switches udphy->mode to UDPHY_MODE_DP (4-lane D=
P)
while the USB3 PHY is actively in use, udphy->mode loses the UDPHY_MODE_USB
bit.

Later, if the USB3 driver is unbound or the system suspends,
rk_udphy_usb3_phy_exit() is called:

rk_udphy_usb3_phy_exit() {
    ...
    if (!(udphy->mode & UDPHY_MODE_USB) || udphy->hs)
        goto unlock;
    ...
}

Because the check uses udphy->mode instead of udphy->status, it returns ear=
ly
and skips rk_udphy_power_off(). This leaves UDPHY_MODE_USB permanently set =
in
udphy->status.

Additionally, rk_udphy_power_off() also incorrectly validates against
udphy->mode instead of udphy->status:

rk_udphy_power_off() {
    ...
    if (!(udphy->mode & mode)) {
        dev_info(udphy->dev, "mode 0x%02x is not support\n", mode);
        return;
    }
    ...
}

Because udphy->status never returns to 0 (UDPHY_MODE_NONE), rk_udphy_disabl=
e()
is never called. Does this leave the PHY fully powered indefinitely, preven=
ting
the system from entering low-power suspend states?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-rockchip-u=
sbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com?part=3D21

