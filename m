Return-Path: <devicetree+bounces-315823-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AXFwCTttPWo13AgAu9opvQ
	(envelope-from <devicetree+bounces-315823-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 20:02:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 054806C814B
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 20:02:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=AvzxBEUG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315823-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315823-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0924B3002537
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 18:02:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A87CA25B099;
	Thu, 25 Jun 2026 18:02:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9228526ED3D
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 18:02:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782410548; cv=none; b=ChTbrvmSt7847o3xPYtuQJGgKe/+aSKIfG77jGvkY29y0zRK4jiWOqpAaSH7112aWoRzUbqd0V8sytrPkCGLmexBLUSLlZNNRfImAmIp6bW6B9h0F4M6mXp0f+Q3CCcqvjUWIrX4Z9LbBry2QlSkaMgyXBhvfbTpO6v68bPTd+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782410548; c=relaxed/simple;
	bh=jlVtfEB5b8oLYVkkEO9qgJiZ13ZGSW/53/pSStSpTK0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=byG6/IjkQsLDPbiodGFWJ6Q+xDIuQinIsNyrQduWiDW0fXgbMEXcew801U4+pHrJ5qDz976XQODOOZafgCjisMipTudJmp6EQvTC5aOUN4N+8s7LpcxsawKZH+/YOvqUq9DWas8LitXBsp23EDqaP6pDqs8QyYCEf9Y6IlA35uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AvzxBEUG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 918561F000E9;
	Thu, 25 Jun 2026 18:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782410547;
	bh=qp+j19o9eQBXmJskJCQZ+Cd2lf/2ZpvnSfl99eK32VU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AvzxBEUGvWpRgma9xPLx7zssqZ98zPK7wWhQJhX3x+GksLEgJsEYz8boKsyO0gr1T
	 v0B0MFYMM0tErgAP6NvesgcD8UqYP6G0KjAQUYi2aSmsngVq+LYN+q4QaJdQ9B0sRy
	 S5P4MYvJqgi1pqx9+MnoQcxB72t7q6hpYK9MXE7pm6j4Jhw+aIUZe/8jfIgWeSOYtC
	 HxZH3oKaN4379ocokpEfTpog3fMUoTuLb/qZT5Ti0aQ4vxZ94/AeDRpJUBwldLWw/b
	 vMB0atPfqhJcJexoV6PVxPQWKdoB7YYd21RNyOwXpecpHzycychL+pFTyqHQ6mYvYf
	 Hp8vUbjOrB/eA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 12/27] phy: rockchip: usbdp: Add missing mode_change
 update
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260625-rockchip-usbdp-cleanup-v7-12-38eb3cf654fd@collabora.com>
References: <20260625-rockchip-usbdp-cleanup-v7-0-38eb3cf654fd@collabora.com>
 <20260625-rockchip-usbdp-cleanup-v7-12-38eb3cf654fd@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 18:02:25 +0000
Message-Id: <20260625180226.918561F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-315823-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:olteanv@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:linux-phy@lists.infradead.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,linaro.org,lists.infradead.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,lists.linux.dev:replyto,smtp.kernel.org:mid,collabora.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 054806C814B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] When dynamically exiting DisplayPort Alternate Mode, the PHY mode =
is not updated to reflect the new state, which can silently prevent USB Sup=
erSpeed from powering on. A subsequent patch in the series attempts to fix =
this but fails due to a logical bug.
--

commit a13f2ad68259618e56bf0f7f6e7be4e8d3391f8e
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Add missing mode_change update

This commit introduces a new helper rk_udphy_mode_set() to update the
available modes. It ensures the mode_change flag is set when required
so that DisplayPort properly re-initializes.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index 1067ddf2d7422..f079715f7da21 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c

[ ... ]

> @@ -1394,10 +1403,7 @@ static int rk_udphy_typec_mux_set(struct typec_mux=
_dev *mux,
>  			usleep_range(750, 800);
>  			rk_udphy_dp_hpd_event_trigger(udphy, true);
>  		} else if (data->status & DP_STATUS_HPD_STATE) {
> -			if (udphy->mode !=3D mode) {
> -				udphy->mode =3D mode;
> -				udphy->mode_change =3D true;
> -			}
> +			rk_udphy_mode_set(udphy, mode);

[Severity: High]
This isn't a bug introduced by this patch, but there is a pre-existing issue
in rk_udphy_typec_mux_set() regarding how state transitions are handled.

When dynamically exiting DisplayPort Alternate Mode, does the driver
silently prevent USB SuperSpeed from powering on?

If a user unplugs a DP accessory, the Type-C subsystem sends a mux state
update with state->mode set to TYPEC_STATE_SAFE or TYPEC_STATE_USB, and
state->alt set to NULL.

The code evaluates this condition:

    if (state->mode >=3D TYPEC_STATE_MODAL || !state->alt ||
        state->alt->svid !=3D USB_TYPEC_DP_SID)
        return 0;

For TYPEC_STATE_SAFE and TYPEC_STATE_USB, state->alt is NULL. This makes
!state->alt evaluate to true. Because of the || operator, the entire
statement evaluates to true, causing the function to return 0 and
ignore the event entirely instead of repowering the PHY correctly.

A later patch in the series ("phy: rockchip: usbdp: Properly handle
TYPEC_STATE_SAFE and TYPEC_STATE_USB") attempts to fix this, but the logic
in that patch still contains this error because it fails to restrict the
state->alt checks to only the modal states.

Could the condition be grouped to properly handle the non-modal states?

>  			rk_udphy_dp_hpd_event_trigger(udphy, true);
>  		} else {
>  			rk_udphy_dp_hpd_event_trigger(udphy, false);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260625-rockchip-u=
sbdp-cleanup-v7-0-38eb3cf654fd@collabora.com?part=3D12

