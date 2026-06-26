Return-Path: <devicetree+bounces-316239-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Uz3iJHbsPmofNAkAu9opvQ
	(envelope-from <devicetree+bounces-316239-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 23:17:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F085D6D0369
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 23:17:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Ts9xbBd3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316239-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-316239-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 02281300853C
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 21:17:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 387493A0E81;
	Fri, 26 Jun 2026 21:17:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2369BEEA8
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 21:17:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782508659; cv=none; b=HS5iTKj+cNl2gAvo7dwYOeeatUVencxUVL3FxdhA/XKGYQIwWpNZDbtoYqLZ+E0y4IYDVPbQGLJeyB2B8por2XhzqENe4fPnrg5k+zSMHXBuVNIjfXBq117c7arjnCkC9wlc3zkptlFpKnAVz+kFjf71oOYi/3p06g1/1DcSLMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782508659; c=relaxed/simple;
	bh=2BkA1CjPw/ssQzdQlWbupw16c6HJHc6ZCTkeaJ9qhI8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Z1M7+A6dGkKywiLcOsDMb25QyQDCd1Tsp2DlQPX3J037c1t3P4KN03mkibC9K9eEQgTA7EzQmjWyWDHT/vbC6agwIKKdFVV8JS74muxjxzEAJSOV/sYV1/mZQmxYGwida5DbQrkvPgPUmppiMw/mCJaA0y4pStENnrpLQueeoGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ts9xbBd3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38CCC1F000E9;
	Fri, 26 Jun 2026 21:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782508657;
	bh=K0hiYeRKLlQf/feAsch7WFukT1+Bz6EvirZMzdpt4ao=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Ts9xbBd3ZPnYRKuuEHvEr0YVGSYL3f1Fx242RS5UaW3PB0dfS4IBYsfQ7UJ5zvFyU
	 RmT0GP5GDddVdaye08IkGpK0VLJQ131wyVBQi9Kd4KmsKhol0r+Hug4xCmLyeUxjTv
	 EKa0mzwNN+Q+Ecsej8GuE0mnw0QNXqNJLNwCIPWguTLDTvy9cNMpqjP4jGYnc83fNj
	 NknRAzmNzlCKvwJ/ZlPmdNUs9ZcZd3gXDRs/VQdArfGl9QZK50JvqMSHJEoMqF5j/h
	 PzH8SMZNENmXerm+/CjgmLyBpMbJbZbocHZyp0zU2+8I64cBEoIS4/x5+Ttml01XRO
	 BxIP6aQ30gHbg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 13/29] phy: rockchip: usbdp: Limit DP lane count to
 muxed lanes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260626-rockchip-usbdp-cleanup-v8-13-47f682987895@collabora.com>
References: <20260626-rockchip-usbdp-cleanup-v8-0-47f682987895@collabora.com>
 <20260626-rockchip-usbdp-cleanup-v8-13-47f682987895@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Jun 2026 21:17:36 +0000
Message-Id: <20260626211737.38CCC1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-316239-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:olteanv@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:linux-phy@lists.infradead.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,linaro.org,lists.infradead.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,collabora.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F085D6D0369

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] This problem wasn't introduced by this patch, but the patch's fix =
is incomplete. The lane count validation added to prevent DP configurations=
 from corrupting USB3 PHY state is bypassed during voltage-only updates. If=
 the Type-C state dynamically reduces the available DP lanes, `udphy->dp_la=
nes` is updated but the cached `udphy->lanes` remains stale. A subsequent v=
oltage-only update will iterate up to the stale `udphy->lanes` and write DP=
 voltage configurations to the physically reassigned USB3 lanes, corrupting=
 the USB3 PHY state.
--

commit e11a3cd1b181c4fdc9e18a16f2893d3ae7465cb5
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Limit DP lane count to muxed lanes

This commit limits the DisplayPort lane count to 2 if the PHY is
restricted due to USB3 usage. It aims to prevent USB3 state corruption
during voltage configuration.

Closes: https://lore.kernel.org/linux-phy/20260612165546.98E1F1F000E9@smtp.=
kernel.org/

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index 5c38da0dadd22..6de8ac3f91441 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -1132,6 +1132,9 @@ static int rk_udphy_dp_phy_verify_link_rate(struct =
rk_udphy *udphy,
>  static int rk_udphy_dp_phy_verify_lanes(struct rk_udphy *udphy,
>  					struct phy_configure_opts_dp *dp)
>  {
> +	if (dp->lanes > udphy->dp_lanes)
> +		return -EINVAL;
> +

[Severity: High]
This isn't a bug introduced by this patch, but is the fix incomplete for
voltage-only updates?

If a Type-C event renegotiates the connection and restricts udphy->dp_lanes
to 2, udphy->lanes could still hold a stale value (like 4).

Looking at rk_udphy_dp_phy_configure(), the lane verification is skipped
if dp->set_lanes is false:

drivers/phy/rockchip/phy-rockchip-usbdp.c:rk_udphy_dp_phy_configure() {
	...
	if (dp->set_lanes) {
		ret =3D rk_udphy_dp_phy_verify_lanes(udphy, dp);
		if (ret)
			return ret;
	}
	...
}

If the driver then issues a phy_configure() with set_lanes=3Dfalse and
set_voltages=3Dtrue, the voltage loop will iterate using the stale
udphy->lanes value:

drivers/phy/rockchip/phy-rockchip-usbdp.c:rk_udphy_dp_phy_configure() {
	...
	if (dp->set_voltages) {
		for (i =3D 0; i < udphy->lanes; i++) {
			lane =3D udphy->dp_lane_sel[i];
	...
}

Could this still result in writing DP voltage configurations to reassigned
USB3 lanes, corrupting the USB3 PHY state?

>  	switch (dp->lanes) {
>  	case 1:
>  	case 2:
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260626-rockchip-u=
sbdp-cleanup-v8-0-47f682987895@collabora.com?part=3D13

