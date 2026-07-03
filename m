Return-Path: <devicetree+bounces-320393-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 19dRBgNLSGqDogAAu9opvQ
	(envelope-from <devicetree+bounces-320393-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 01:51:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6041D70629D
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 01:51:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=GTaRHMDM;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320393-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320393-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0F182302451C
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 23:51:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3FD52010EE;
	Fri,  3 Jul 2026 23:51:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EBFD1F91F6
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 23:51:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783122687; cv=none; b=rLKCrPBhx3R5rs+XszAROHFBp2Rk+NnFI+U1aWRSvF95Y5CQh7DBV2Rd7t1dPwfIYcQ+mDRukA0dSPiQJ4q/WRzhItQWYK6eaX3tGrXc7MKEHp2mMyymgvdwRWLRajqqdd0VfOHGk7RRdQvkxN+4gVBh2UoTVD6yUccL9Fo7YVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783122687; c=relaxed/simple;
	bh=oeW9r225z5RyljrGg9FA5CRfdX2WylcoLl9IFLBctQg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Q1FsaZERGZLtB/symACDeJXY6DEcOfcqvzeC2f8jMssF7yKtAVmo2EdArXbxPFxSoxKjtEPpd8i4NZxof5VZE/xh/ehfuz1qUz3xpUuYItwNbuFhPLmETs/4WAZ5AeHGZQ22wL3yOqR+qda+fsO5ZBmusWl64pNsB3cG2aksdDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTaRHMDM; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AAD61F000E9;
	Fri,  3 Jul 2026 23:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783122686;
	bh=1NUHqpKeItz1ST6Da95aUGP0/syDLD2WjmyABM6M9mU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GTaRHMDMJdFVzT5Ouyo7ND2uolDTlcNyxUKO8lEzAtPHlA111GrWC9VuG04AfoRpi
	 OCxaaMrX1Mh8nqzFOzy7fdiWwdjLbbbTx1tHJ0ojF0i2cfixEQF27jAARXJadvc5Lx
	 vhkZtWDD/giDYhBfDxx8W5rkzWSTDWE3wdL9D3XDxtTUnT4w23Gdg28vTbvdTKjtkp
	 HV0WkXsyRfgKWHMXAyK/9Zzu65q4mD0sOjsZl8eBk978U86xg8qn2ZKSLyzwsSYk3k
	 INg9Cj3g5MGih8qlBWQ8p/o28V/kDbqY3Ablz0aPFERNRLG2dhqH+y9CvW9WfpDV2v
	 yMDBGGaBCmSIw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 20/36] phy: rockchip: usbdp: Factor out lane_mux_sel
 setup
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: conor+dt@kernel.org, vkoul@kernel.org, robh@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20260703-rockchip-usbdp-cleanup-v10-20-a392711ca8a9@collabora.com>
References: <20260703-rockchip-usbdp-cleanup-v10-0-a392711ca8a9@collabora.com>
 <20260703-rockchip-usbdp-cleanup-v10-20-a392711ca8a9@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 23:51:25 +0000
Message-Id: <20260703235126.0AAD61F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-320393-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:conor+dt@kernel.org,m:vkoul@kernel.org,m:robh@kernel.org,m:olteanv@gmail.com,m:neil.armstrong@linaro.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,linaro.org,lists.infradead.org,vger.kernel.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6041D70629D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Overwriting udphy->dp_lanes in rk_udphy_set_typec_state destroys t=
he hardware lane limit, leading to uninitialized array access.
--

commit b5a0ae84556b392b692f17a4e792243cb346f579
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Factor out lane_mux_sel setup

This commit factors out the Type-C state logic into a new helper function
rk_udphy_set_typec_state() to reduce code duplication when configuring the
USB+DP lane_mux_sel.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index 4b454798c4ed4..4e54020d17551 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -582,6 +582,42 @@ static void rk_udphy_mode_set(struct rk_udphy *udphy=
, u8 mode)
>  	udphy->mode =3D mode;
>  }
> =20
> +static void rk_udphy_set_typec_state(struct rk_udphy *udphy, unsigned lo=
ng state)
> +{
> +	u8 mode;
> +
> +	switch (state) {
> +	case TYPEC_DP_STATE_C:
> +	case TYPEC_DP_STATE_E:
> +		udphy->lane_mux_sel[0] =3D PHY_LANE_MUX_DP;
> +		udphy->lane_mux_sel[1] =3D PHY_LANE_MUX_DP;
> +		udphy->lane_mux_sel[2] =3D PHY_LANE_MUX_DP;
> +		udphy->lane_mux_sel[3] =3D PHY_LANE_MUX_DP;
> +		mode =3D UDPHY_MODE_DP;
> +		udphy->dp_lanes =3D 4;
                ^^^^^^^^^^^^^^^^^^^
[Severity: High]
This is a pre-existing issue, but does overwriting udphy->dp_lanes here
destroy the hardware lane limit?

The variable udphy->dp_lanes seems to be overloaded. It is initially
populated from the device tree to represent the physical hardware lane
limit (e.g., 2 lanes). However, it is unconditionally overwritten here
to represent the requested Type-C state.

If a 2-lane PHY receives a 4-lane Type-C request, udphy->dp_lanes becomes 4.
Does this defeat the hardware limit check if (dp->lanes > udphy->dp_lanes)
in rk_udphy_dp_phy_verify_lanes() (added in a subsequent patch in this
series)?

If the hardware limit check is defeated, the DP controller might configure
4 lanes, causing rk_udphy_dp_phy_configure() to iterate 4 times and access
uninitialized elements in the dp_lane_sel array:

drivers/phy/rockchip/phy-rockchip-usbdp.c:rk_udphy_dp_phy_configure()
        ...
	if (dp->set_voltages) {
		for (i =3D 0; i < udphy->lanes; i++) {
			lane =3D udphy->dp_lane_sel[i];
        ...

Since dp_lane_sel[2] and dp_lane_sel[3] would be 0 (due to devm_kzalloc),
could this result in lane 0 being misconfigured multiple times, overriding
its intended settings and corrupting the USB3 state?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703-rockchip-u=
sbdp-cleanup-v10-0-a392711ca8a9@collabora.com?part=3D20

