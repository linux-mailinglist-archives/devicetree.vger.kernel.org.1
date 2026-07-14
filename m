Return-Path: <devicetree+bounces-326513-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uq8/JheYVmqk+gAAu9opvQ
	(envelope-from <devicetree+bounces-326513-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:12:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA17758A56
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:12:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=cPrtZvb6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326513-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-326513-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 99BA930093A3
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 20:12:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F30CE423EAD;
	Tue, 14 Jul 2026 20:12:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD823DDDDB
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 20:11:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784059920; cv=none; b=JVr/qwD6YlzmVa4ZnWPROOEtXqtnsBYWcDGQIAB3C1P/0aYksvsAL3ZaxmwVk2uDV+iNfwTWEElJIxAAVrLI1tg2kaYaZB1SIRlL9QzMo9eMZCMn/DWky4zmqcPP0R4BSB69G5Qu5osXsyH7PnauXbxY8cj1LsGpp2m0iAkTnnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784059920; c=relaxed/simple;
	bh=qa7zIZNMq1+MlW38yyTjL5Fl7EAGmFZ9caXD+/JcI+g=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=OHSnMrmV6snJAJD7W8iL5oTkvmAm/dtTYAiWsm1ip8eJiWImWkChJttZUQKu5De6NN51+WInf0rC0+mA1vRolXSCGIwoQcMj/UOFPFxkcwqZKH0gQRJ/MGv8Se45arYH8BmMWG0TUClqUVjgANco9Uzz89CAvRUyoPN6JDam9/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPrtZvb6; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 333E51F000E9;
	Tue, 14 Jul 2026 20:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784059919;
	bh=5wOUEQakUr6ljQwCBFQfnA4S0mb7s7p0pA6XYOUrJM8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cPrtZvb61c9Ka/ggOwKzAOxQekP4siJLUiykJRbTIQd8VOHgfPFfF75UkLmLo3Wld
	 q94TF5gABCbEWZ0Qt5RD1volaQbC4tRaBLRHovv+uTPa4fZXGVkD8mNh2FzGLz7pPx
	 y1sy2g3Se0B8OWePPDHKDzOWBb3nXYTrAp418zrq+A6soHhjPNse5jb/Awje/dJozQ
	 G8S3PU6COWA7mpd3G8RstOmtoNBXmp3pswoCpVEsiH7x/hd8IOOMtj0rQ/1xBMuCxD
	 /g3pcwEWltavrFmtoMdq6kcHBkm5QTznauy6DNXdXfMReROQOznOdd+cdtfIUASxbK
	 a4JLmw+TOXYPQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 12/35] phy: rockchip: usbdp: Limit DP lane count to
 muxed lanes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: conor+dt@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-12-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
 <20260714-rockchip-usbdp-cleanup-v13-12-6cb3e769d4c5@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 20:11:58 +0000
Message-Id: <20260714201159.333E51F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326513-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:conor+dt@kernel.org,m:olteanv@gmail.com,m:linux-phy@lists.infradead.org,m:robh@kernel.org,m:vkoul@kernel.org,m:devicetree@vger.kernel.org,m:neil.armstrong@linaro.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,linaro.org];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,collabora.com:email,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8FA17758A56

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Missing locking in `rk_udphy_dp_phy_configure` causes a TOCTOU rac=
e and state desynchronization against Type-C events, bypassing the newly ad=
ded lane bounds check.
--

--- Patch [12]: [PATCH v13 12/35] phy: rockchip: usbdp: Limit DP lane count=
 to muxed lanes ---
commit 51fd699581be62fd9931337e9c0dc6e4f2302b10
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Limit DP lane count to muxed lanes
   =20
In theory the DP controller could request 4 lanes when the PHY is
restricted to 2 lanes as the other half is used by USB3.

With the current user (DW-DP) this cannot happen, but as the check is
cheap and users might change in the future protect things accordingly.
Not doing so would corrupt USB3 usage by the following code configuring
the voltages.

Fixes: 2f70bbddeb45 ("phy: rockchip: add usbdp combo phy driver")
Reported-by: Sashiko <sashiko-bot@kernel.org>
Closes: https://lore.kernel.org/linux-phy/20260612165546.98E1F1F000E9@smtp.=
kernel.org/
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index c4d62b234ea80..b172ce6a722ee 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -1099,6 +1099,9 @@ static int rk_udphy_dp_phy_verify_link_rate(struct =
rk_udphy *udphy,
>  static int rk_udphy_dp_phy_verify_lanes(struct rk_udphy *udphy,
>  					struct phy_configure_opts_dp *dp)
>  {
> +	if (dp->lanes > udphy->dp_lanes)
> +		return -EINVAL;
> +

[Severity: High]
This isn't a bug introduced by this patch, but can a race condition still
bypass this new check and corrupt USB3 lanes?

If a Type-C event occurs and rk_udphy_typec_mux_set() reduces udphy->dp_lan=
es
from 4 to 2 while updating udphy->lane_mux_sel for USB3, it does so under
udphy->mutex. However, rk_udphy_dp_phy_configure() lacks mutex protection a=
nd
operates on a cached udphy->lanes value.

If the DRM driver subsequently calls rk_udphy_dp_phy_configure() to update
voltages (with set_voltages =3D 1 and set_lanes =3D 0), this verify functio=
n is
skipped entirely:

drivers/phy/rockchip/phy-rockchip-usbdp.c:rk_udphy_dp_phy_configure() {
    ...
	if (dp->set_lanes) {
		ret =3D rk_udphy_dp_phy_verify_lanes(udphy, dp);
		if (ret)
			return ret;
	}
    ...
}

Because the check is skipped, the configuration loop iterates using the sta=
le
cached udphy->lanes =3D=3D 4:

drivers/phy/rockchip/phy-rockchip-usbdp.c:rk_udphy_dp_phy_configure() {
    ...
	if (dp->set_voltages) {
		for (i =3D 0; i < udphy->lanes; i++) {
			lane =3D udphy->dp_lane_sel[i];
			...
			rk_udphy_dp_set_voltage(udphy, udphy->bw, dp->voltage[i],
						dp->pre[i], lane);
		}
	}
    ...
}

Could this overwrite the TRSV registers of physical lanes now assigned to
USB3, corrupting active USB3 data streams? Should rk_udphy_dp_phy_configure=
()
hold udphy->mutex to prevent state desynchronization?

>  	switch (dp->lanes) {
>  	case 1:
>  	case 2:

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-rockchip-u=
sbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com?part=3D12

