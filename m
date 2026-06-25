Return-Path: <devicetree+bounces-315826-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nbIhOWFuPWpi3AgAu9opvQ
	(envelope-from <devicetree+bounces-315826-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 20:07:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACD26C8196
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 20:07:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bzRk+pVU;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315826-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315826-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EF21A30262C3
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 18:07:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E4082FFDEA;
	Thu, 25 Jun 2026 18:07:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E629245019
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 18:07:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782410822; cv=none; b=Dk9Pw03+NMz7AmFLneemdtGx4KKgp22L/qVVaKrINY75S2cYYP795BzGEdZD0wiIKRIKD4SBwtFbMQcC8tBw86KhDqhMHyadfNfco9iZumcxbUpQFr9JnrnAxOB+Bv7u4gBIqEPYo2xGb2Jm1rQh0/YUsnWu8QvQmjFdagB7lHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782410822; c=relaxed/simple;
	bh=6H5HIli4mH391tt2UnTsr0qhBr7rIDvscFcpOa523dw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=iy4ul9ElxOpIhelSLJ0AIEfdzzRMG6YWqfVgY3LVF9IbWddJKAQmevh0bcS+xJjNe+TV1fSedp5HVkbhT56aI2N48q/STtr/O/eZp6+WLB/84CNhyXXk+5YZVKiRDu/ZqTxAwhA5wxMT98dCuUSNw32G/3D4U/cWSvLW7BeXXsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzRk+pVU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A26CA1F000E9;
	Thu, 25 Jun 2026 18:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782410821;
	bh=EaZbnQOn0MPQvWZ6F+LS+fFsMM8oBssvZ/nEnaaaFHw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bzRk+pVUBFClFeonxzXcMhYFVdExZNrPnrnu6Ap+zv/OWxvCIVik7//dUx5jG/zCG
	 Gtv9DwUrHKGpedvdWVHEoDiWj8uA/d7c9mpPbX46dNTc4gPgjBeBtNl+bth0NH8PSa
	 vK7PVdQXFxeAvAqtfnUQNA4LHair3LGDIPSFfxox7ajOfHB12DC5QbUrt/DgKFyLXC
	 n2k8AHwtNd4LFHfhUKEnxHKk7pY1/gfUNqHl8ZhH7Ydm6zZ89S1d9eL5RJVO9T9llK
	 0srsQLNUX07MH54M1Ns/lu9n+vHjoVTpXMdysUXgcR24bxcXjzIli9nMUXcZQxL34D
	 WyEdiBjLLeRpA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 08/27] phy: rockchip: usbdp: Limit DP lane count to
 muxed lanes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, devicetree@vger.kernel.org, vkoul@kernel.org
In-Reply-To: <20260625-rockchip-usbdp-cleanup-v7-8-38eb3cf654fd@collabora.com>
References: <20260625-rockchip-usbdp-cleanup-v7-0-38eb3cf654fd@collabora.com>
 <20260625-rockchip-usbdp-cleanup-v7-8-38eb3cf654fd@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 18:07:00 +0000
Message-Id: <20260625180700.A26CA1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-315826-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:linux-phy@lists.infradead.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:devicetree@vger.kernel.org,m:vkoul@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,linaro.org,gmail.com,vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,collabora.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4ACD26C8196

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The target patch introduces a validation check against `udphy->dp_=
lanes`, but this struct member does not exist at this point in the patch se=
ries, causing a fatal build error. Even if it did exist, it is not initiali=
zed, leading to permanent validation failure.
--

commit 4d319652ccfe3b1db53193c06a94733191acf3bc
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Limit DP lane count to muxed lanes

This commit adds a check to limit the DP lane count to the number of muxed
lanes available on the PHY, preventing the DP controller from requesting
4 lanes when restricted to 2.

Closes: https://lore.kernel.org/linux-phy/20260612165546.98E1F1F000E9@smtp.=
kernel.org/

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index 121dd78d8c161..2324f9050f638 100644
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
Does this break the build at this point in the patch series?

It appears that the dp_lanes member of struct rk_udphy is not yet declared
or initialized at this point in the tree. This would cause a compilation
failure and break git bisect. Additionally, if the field were present but
uninitialized, it would evaluate to 0 and cause this check to unconditional=
ly
return -EINVAL, breaking DisplayPort configuration.

I understand this is resolved later in the patch series by commit
02003c09070591a7 ("phy: rockchip: usbdp: Support single-lane DP"), which
adds and correctly initializes the dp_lanes struct member. Could the struct
member addition be moved to this commit to ensure the build remains fully
bisectable?

>  	switch (dp->lanes) {
>  	case 1:
>  	case 2:

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260625-rockchip-u=
sbdp-cleanup-v7-0-38eb3cf654fd@collabora.com?part=3D8

