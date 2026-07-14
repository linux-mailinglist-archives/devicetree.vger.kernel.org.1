Return-Path: <devicetree+bounces-326487-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gvE3MbOVVmoP+QAAu9opvQ
	(envelope-from <devicetree+bounces-326487-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:01:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F8F7588F1
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:01:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=oxiLstHe;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326487-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326487-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 82DF53114FE7
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 19:54:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35C8A435509;
	Tue, 14 Jul 2026 19:54:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB8CE37A82E
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 19:54:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784058859; cv=none; b=BPz8y2TeCGPTT7SvNwxYRiEKdq/jGL3iwvKLZegFiFYSx5SshKQhAwv7NQj56R6vsSKChPsFSO9kM/9aU0FO7NZhuhRQMVNOKF4qovQ+yqx6eDTvD/TjFGi1k82a8kzq5EHKO8jxjMRTIeoyxqkbCEb4Sy/hTVFMIw2IoDr7B68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784058859; c=relaxed/simple;
	bh=z4TNfT40WeIapgYpi1vgsGm1RQHey1SzmtxNvKdKDVs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=OrTdOmNI2CefBOuTJOJwOuJhvLpH+XDC/cNmU6ymtToe3akT1KqtEQFUPuWOCWO527HIgdazr0JlpWFcJy1o8648YDxHghvpHsn+xR4/SQG2pJOZQn/ThVF7AE7eRVRm2Bu6hvpLpMI1MbeF8ES3l9jRgIbEcICBXOrHXFetZmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxiLstHe; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C8C91F000E9;
	Tue, 14 Jul 2026 19:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784058857;
	bh=GKwk8o438WlpFTg0T9EkOBKX6Io2q4+YhJxzyFYieTI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oxiLstHe0cfckh7Wn3vAo7vz3m0+4VYY3cTHNwuBkWZYbNb3TsjRhvbHNWpS2qOUW
	 KOh0D/rQPwPBRr3Qu605NMu9Z5Grrvl9wES1+3wR/JXTs12WUCN3N10Py8KdxniBaE
	 KEZyRESctGChYBmtlNWNPHV56td+xAa/SR51URjJTjGkMyUB5a/3pmK1MNHIbG5v2M
	 Gn7dNw/jUd1ARtThZNvuyvMD0MDqAQlopMVMvIBRDrjVQLwApE6vUU1X3iQMdqZrpF
	 kWNgtv+DaS9GFU/j6z+jPagZ4AXYzuBgrg7Jnm+AI3JEuxrsszYbnMBDaAAxkLE5ps
	 srWcC9+lt2Wmw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 02/35] phy: rockchip: usbdp: Update mode_change
 after error handling
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-2-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
 <20260714-rockchip-usbdp-cleanup-v13-2-6cb3e769d4c5@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 19:54:16 +0000
Message-Id: <20260714195417.0C8C91F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-326487-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:linux-phy@lists.infradead.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,linaro.org,gmail.com,lists.infradead.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,collabora.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D6F8F7588F1

Thank you for your contribution! Sashiko AI review found 7 potential issue(=
s) to consider:

Pre-existing issues:
- [High] State tracking corruption in `rk_udphy_power_on` drops active cons=
umer modes.
- [High] USB3 port remains disabled in system controller when switching fro=
m DP-only to DP+USB mode.
- [High] Dynamically disabling PHY clocks without USB controller coordinati=
on causes SErrors.
- [High] Type-C disconnects (TYPEC_STATE_SAFE) or USB-only transitions are =
ignored, stranding PHY state.
- [High] Missing mutex protection in `rk_udphy_dp_phy_configure` allows con=
current access to shared PHY state.
- [Medium] Probe error paths and driver unbind leak clock references.
- [Medium] U3 port remains enabled in system controller when initializing i=
nto DP-only mode.
--

--- Patch [2]: [PATCH v13 02/35] phy: rockchip: usbdp: Update mode_change a=
fter error handling ---
commit 5e684d6b433ae738bd5f378d7294d9e76a2199d9
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Update mode_change after error handling

This commit delays resetting the mode_change flag in rk_udphy_power_on()
until after all potential errors are handled. This ensures that if
rk_udphy_setup() fails, the reinitialization attempt won't be silently
skipped on subsequent tries.

Closes: https://lore.kernel.org/linux-phy/20260612163835.8D5471F000E9@smtp.=
kernel.org/

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -1000,15 +1000,14 @@ static int rk_udphy_power_on(struct rk_udphy *udp=
hy, u8 mode)

[ ... ]

>  	if (udphy->status =3D=3D UDPHY_MODE_NONE) {
> -		udphy->mode_change =3D false;
>  		ret =3D rk_udphy_setup(udphy);
>  		if (ret)
>  			return ret;
> =20
>  		if (udphy->mode & UDPHY_MODE_USB)
>  			rk_udphy_u3_port_disable(udphy, false);
> -	} else if (udphy->mode_change) {
>  		udphy->mode_change =3D false;
> +	} else if (udphy->mode_change) {

[Severity: Medium]
This is a pre-existing issue, but does this block leave the U3 port enabled
when initializing into DP-only mode?

If the PHY is completely powered off and the Type-C mux selects DP-only mod=
e,
the DP consumer calls rk_udphy_power_on().

While this block handles initialization, it lacks the logic to call
rk_udphy_u3_port_disable(udphy, true). If the USB consumer is not bound or
initialized yet, does the GRF register for the U3 port retain its previous
state, potentially causing unexpected behavior or minor power drain?

>  		udphy->status =3D UDPHY_MODE_NONE;

[Severity: High]
This is a pre-existing issue, but does this aggressively clear the state and
drop active consumer modes?

If both DP and USB consumers are active, and a Type-C event triggers a mode
change, the first consumer to call rk_udphy_power_on() executes this block.
By forcefully overwriting udphy->status =3D UDPHY_MODE_NONE before
re-initializing, and only appending the caller's mode at the end
(udphy->status |=3D mode), isn't the other active consumer's state flag
permanently lost?

If that first consumer later calls rk_udphy_power_off(), wouldn't the status
evaluate to 0 and completely disable the PHY, crashing the other consumer
which is still running?

>  		if (udphy->mode =3D=3D UDPHY_MODE_DP)
>  			rk_udphy_u3_port_disable(udphy, true);

[ ... ]

>  		rk_udphy_disable(udphy);

[Severity: High]
This isn't a bug introduced by this patch, but can dynamically disabling PHY
clocks without coordinating with the USB controller cause SErrors?

When a Type-C mode change occurs while the USB controller (DWC3) is active,
this block calls rk_udphy_disable(), which immediately cuts the PHY clocks.

Because there is no coordination (like phy_notify_reset) to quiesce DWC3 or
reroute its clock via rk_udphy_u3_port_disable(udphy, true) before the
disable call, will any active DWC3 register access instantly cause an SError
kernel panic?

>  		ret =3D rk_udphy_setup(udphy);
>  		if (ret)
>  			return ret;
> +		udphy->mode_change =3D false;
>  	}

[Severity: High]
This is a pre-existing issue, but does this branch leave the USB 3.0 port
disabled?

When the Type-C port switches from DP-only to DP+USB mode, the USB3 port was
previously disabled via GRF registers. This branch resets the PHY and clears
mode_change, but it never explicitly calls rk_udphy_u3_port_disable(udphy,
false) to re-enable it.

Since the USB consumer's initialization relies on rk_udphy_power_on() to
handle this, will any dynamic transition from DP-only to DP+USB via cable
flip or replug leave the USB3 port broken?


[Severity: High]
This isn't a bug introduced by this patch, but are Type-C disconnects being
ignored in rk_udphy_typec_mux_set()?

Looking at rk_udphy_typec_mux_set(), the mode update is improperly gated
behind an alt-mode check:

drivers/phy/rockchip/phy-rockchip-usbdp.c:rk_udphy_typec_mux_set() {
    ...
    if (state->alt && state->alt->svid =3D=3D USB_TYPEC_DP_SID) {
        struct typec_displayport_data *data =3D state->data;

        if (!data) {
    ...
}

On Type-C cable unplug or a transition to USB-only mode, state->mode is
TYPEC_STATE_SAFE or TYPEC_STATE_USB, so state->alt is NULL. Since the mode
update logic is strictly guarded by the SVID check, it gets completely
bypassed.

Does this leave udphy->mode indefinitely retaining the old DP state, breaki=
ng
subsequent USB connections and preventing proper PHY power down?


[Severity: High]
This is a pre-existing issue, but is there missing mutex protection in
rk_udphy_dp_phy_configure()?

This function accesses and mutates shared state without acquiring
udphy->mutex:

drivers/phy/rockchip/phy-rockchip-usbdp.c:rk_udphy_dp_phy_configure() {
    ...
    if (dp->set_rate) {
        udphy->link_rate =3D dp->link_rate;
    ...
}

Since rk_udphy_dp_phy_configure() is invoked by the DP subsystem during link
training, it reads shared state like udphy->lane_mux_sel and modifies
udphy->bw and udphy->link_rate.

Meanwhile, an asynchronous Type-C event running rk_udphy_typec_mux_set()
modifies these exact arrays while holding the mutex. Can this race condition
lead to reading torn lane mappings and programming incorrect hardware
registers?


[Severity: Medium]
This isn't a bug introduced by this patch, but do the probe error paths and
driver unbind leak clock references?

In rk_udphy_probe(), clocks can be enabled if the bootloader left the PHY
active:

drivers/phy/rockchip/phy-rockchip-usbdp.c:rk_udphy_probe() {
    ...
    ret =3D rk_udphy_get_initial_status(udphy);
    if (ret)
        return ret;

    mutex_init(&udphy->mutex);
    platform_set_drvdata(pdev, udphy);
    ...
}

If a subsequent step in the probe fails (such as devm_phy_create), or if the
driver is unbound, there appears to be no corresponding
clk_bulk_disable_unprepare() execution or .remove callback to release these
clocks. Does this cause a clock reference count leak?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-rockchip-u=
sbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com?part=3D2

