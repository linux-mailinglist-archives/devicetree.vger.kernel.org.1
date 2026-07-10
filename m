Return-Path: <devicetree+bounces-324674-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5uIjIaNlUWrVDwMAu9opvQ
	(envelope-from <devicetree+bounces-324674-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 23:35:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8A973EFF4
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 23:35:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VzdgVQ19;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324674-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-324674-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8EA133066E32
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 21:29:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18B0C3C4551;
	Fri, 10 Jul 2026 21:27:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EBA53BFAD1
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 21:27:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783718843; cv=none; b=uLF86aaX7z1J+dDfVWHhk2TdMv2QqO1dNwRsK/HOlYCpi8D3ThNPmwzI3nUVQ98/W82cd3VxnQcP50DCEjfHd2MIWFvEzNhnb7azJ72ZskyuSZ820CGWEPeQ6hY5BKArmuUN7to6NZ+F/IEjWxFai7WKi+BxNl4KMIdAjiUvJlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783718843; c=relaxed/simple;
	bh=7topajca82I6XIBtv6QR8E2zuNkz/ONU+7ZDOCw47YA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PmPcRDTq6+GJrW051K9loNKAJYdO5DaOH1tXTcH3Ok354xc8VpoB3h7EVI2hQD22j8ExtzK+RLZ+tS70NWK22Z39bVvc/WuNx2bFhIEKIoxwGC9ERXic2nS4Naq0ED7W7bFzVgQiNaBllDD2uoMAOGlhcEpgDCo2q6VTKBNQeGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzdgVQ19; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD1B11F00A3A;
	Fri, 10 Jul 2026 21:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783718842;
	bh=8S8Mofq9IKUBUaxon8iIKcDpSZ04bKxkifE/NwiLI5s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VzdgVQ198salTdIcJehYJetIxeNLa74ZvIVrFV9jGFaIgHI5s2nBxLvQWzwQH6kMG
	 eZHS/0VpHYRwIUXGr45CKfDXu3ByMs+G4gFo3jlbChn4pRk+N+yBeHsfnIfnighEWX
	 EvSeWYJbu+mhyqAHX6TwO7xBRO1+KXr6qyoIG2/5zVkDa+d0QvrFIeGng3oP64B4LM
	 tY+G/MGOC/LDk5x2TGyZqu7Gb6e1rVV0ot9MlJWT776kB+ZCFVksoBnQlmdLFRYYn6
	 9wUqurbi4A2EmErF+sjQCWW24xveF7ypB0maKwFzAgXRmN6MSjy1abimDumTwo1jvr
	 ChG8WdJdGLFdg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 35/36] phy: rockchip: usbdp: Re-init PHY on mux
 change
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-35-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
 <20260710-rockchip-usbdp-cleanup-v12-35-8b41a9a9bef0@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 21:27:21 +0000
Message-Id: <20260710212721.CD1B11F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324674-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:olteanv@gmail.com,m:linux-phy@lists.infradead.org,m:vkoul@kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,lists.infradead.org,linaro.org];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EB8A973EFF4

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Uncoordinated PHY reset during Type-C mode change pulls the rug ou=
t from under the active DisplayPort controller, leading to lost DP configur=
ation, race conditions with DRM, and potential hardware SErrors.
--

--- Patch [35]: [PATCH v12 35/36] phy: rockchip: usbdp: Re-init PHY on mux =
change ---
commit 94db902f39e3cb43921400824c3bb5833e6b7bf2
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Re-init PHY on mux change

Ensure that the right part of the PHY are powered up when the
mode changes. This ensures the PHY is re-initialized in the
following two scenarios, which are currently broken:
cable orientation changes without DP being involved and
switching from DP-only into a mode with USB support.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index c5ad300620a65..ecf0ed0139f69 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -1383,7 +1383,7 @@ static int rk_udphy_typec_mux_set(struct typec_mux_=
dev *mux,
> =20
>  	rk_udphy_set_typec_state(udphy, state->mode);
> =20
> -	return 0;
> +	return rk_udphy_update_power_state(udphy);

[Severity: High]
Will this cause an uncoordinated PHY reset that breaks the active DisplayPo=
rt
controller?

When rk_udphy_update_power_state() detects a mode change, it calls
rk_udphy_init(), which forcefully resets the PHY and disables the DP lanes:

drivers/phy/rockchip/phy-rockchip-usbdp.c:rk_udphy_init() {
    ...
	/* Step 3: configure lane mux */
	regmap_update_bits(udphy->pma_regmap, CMN_LANE_MUX_AND_EN_OFFSET,
			   CMN_DP_LANE_MUX_ALL | CMN_DP_LANE_EN_ALL,
			   FIELD_PREP(CMN_DP_LANE_MUX_N(3), udphy->lane_mux_sel[3]) |
               ...
			   FIELD_PREP(CMN_DP_LANE_EN_ALL, 0));
    ...
}

If TCPM synchronously calls rk_udphy_typec_mux_set() during an altmode
renegotiation (such as switching from DP-only to DP+USB), the DP controller
might still be active because DRM handles the associated HPD disconnect
asynchronously on a different workqueue.

Could resetting the PHY while the DP controller is still active and its clo=
ck
is stopped trigger an SError or leave the display link permanently broken?

>  }
> =20
>  static void rk_udphy_typec_mux_unregister(void *data)

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710-rockchip-u=
sbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com?part=3D35

