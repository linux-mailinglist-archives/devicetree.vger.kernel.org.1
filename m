Return-Path: <devicetree+bounces-311088-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ujHHOjg5LGrcNwQAu9opvQ
	(envelope-from <devicetree+bounces-311088-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:52:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8E567B15F
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:52:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jHQIakx9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311088-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311088-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2BA79300119C
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:52:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EAB83F20FA;
	Fri, 12 Jun 2026 16:52:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0FC38737E
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 16:52:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781283124; cv=none; b=O1SLmcqmsykVDEG1g3xFXkwxoYD4012Bfwq6MRXfGdcV4hj2/3efJyiPfs6k8q2H+3qiN9psd8xnOEYO/VEanXyMnXXZoyFfLcH0JOJR0kbMVXXh8WQJJsLI0GwLIQOZDfNX6aVO152U5/XcDlueVV2az1Q7Av9xll2vIs8zXMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781283124; c=relaxed/simple;
	bh=T/pQCBzRSDc5gIPV7TfqAo/h9W5IrIeBPD8DswnOulQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=iUEnN3w3kKamTMR/fz87nl+B7fo+OxGdBMoiKhf5nyiOZUnwhS9rIvtHR6OD6FmMNK1eh2vX6iE/oRFR9eQC5nLuOq063xOHzXQJCb5HJFAsqWQOoDOT7pLxGRiI+3Rv9cb3l8GHCp2EIoD4sR4aOElVpKEYT4VlEptniiKT0jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHQIakx9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A480A1F000E9;
	Fri, 12 Jun 2026 16:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781283123;
	bh=/xL5lxno5eFzvLuETBDtARKdEehzYZ62HoRJOsoRVi4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jHQIakx9ZCFc/edP7ZgYzIP8e5i+vrSlCqYS/fzh7QwOR6O7iSsyGkOoe8cPWvfUx
	 LFoT2XVxKwYXHeSVj1/ts7Ot53P/2pCte7VIixMdJt6I+tSLafLi+W5tV7DSF7aPFt
	 8C4I9H2Q09GptyRfwB0Jm5esupG255bJNzcItCLVJkXdUDJhNBp8pfVYBzU5L2F8gE
	 nsCsilgNmTas4+3l6uivy//PgREiQZI14J66h/sd3pnyoBL1UANZOOKUU9QWGyeSVV
	 OoWntmX7ojchlQ75hHKL1IMoQ6FVnhaeHUHE/ccwTadX19mmqrE3IeGMZj/i6whPNw
	 7xUU9Hstw4i5Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 13/18] phy: rockchip: usbdp: Rename mode_change to
 phy_needs_reinit
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, vkoul@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260612-rockchip-usbdp-cleanup-v5-13-efc83069869f@collabora.com>
References: <20260612-rockchip-usbdp-cleanup-v5-13-efc83069869f@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 16:52:02 +0000
Message-Id: <20260612165202.A480A1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-311088-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:robh@kernel.org,m:vkoul@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:linux-phy@lists.infradead.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,linaro.org,gmail.com,lists.infradead.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,collabora.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EB8E567B15F

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] If `rk_udphy_init()` fails during a mode change or orientation swi=
tch, the PHY is left in a reset state but `udphy->status` is not updated an=
d `phy_needs_reinit` is permanently lost. Subsequent operations will silent=
ly fail to reinitialize the PHY.
--

commit c4618d1b0b4a42d4505fb255a32ef513dc21e759
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Rename mode_change to phy_needs_reinit

This patch renames the mode_change property to phy_needs_reinit. The rename
prepares the driver to also trigger a PHY re-initialization when the cable
orientation changes, not just when the mode changes.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index 7255c80e0fe2f..a3b4e2e0f5786 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
[ ... ]
> @@ -968,15 +968,15 @@ static int rk_udphy_power_on(struct rk_udphy *udphy=
, u8 mode)
>  	}
> =20
>  	if (udphy->status =3D=3D UDPHY_MODE_NONE) {
> -		udphy->mode_change =3D false;
> +		udphy->phy_needs_reinit =3D false;
>  		ret =3D rk_udphy_setup(udphy);
>  		if (ret)
>  			return ret;
> =20
>  		if (udphy->mode & UDPHY_MODE_USB)
>  			rk_udphy_u3_port_disable(udphy, false);
> -	} else if (udphy->mode_change) {
> -		udphy->mode_change =3D false;
> +	} else if (udphy->phy_needs_reinit) {
> +		udphy->phy_needs_reinit =3D false;
>  		if (udphy->mode =3D=3D UDPHY_MODE_DP)
>  			rk_udphy_u3_port_disable(udphy, true);
> =20

[Severity: High]
This isn't a bug introduced by this patch, but if rk_udphy_init() fails
immediately after this block, the PHY is left in a reset state while the
udphy->phy_needs_reinit flag is permanently lost.

When changing modes on an already active PHY, rk_udphy_power_on() calls
rk_udphy_init() which immediately asserts all PHY resets. If rk_udphy_init()
subsequently fails (e.g., due to a PLL lock timeout), it leaves the resets
asserted and returns an error.

However, udphy->phy_needs_reinit is cleared right before this, and
udphy->status is not rolled back. As a result, the driver's state tracker
still believes the previously active modes are operational, but the hardwar=
e is
completely in reset.

Will future calls to rk_udphy_power_on() see phy_needs_reinit =3D=3D false =
and
skip initialization, permanently breaking the active interfaces until a full
system reboot or module reload?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612-rockchip-u=
sbdp-cleanup-v5-0-efc83069869f@collabora.com?part=3D13

