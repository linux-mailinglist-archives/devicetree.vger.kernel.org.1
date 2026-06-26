Return-Path: <devicetree+bounces-316242-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jULxEfHsPmozNAkAu9opvQ
	(envelope-from <devicetree+bounces-316242-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 23:19:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 949376D0380
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 23:19:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QGHqam8F;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316242-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-316242-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6733C300EF4D
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 21:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CFC83AEF35;
	Fri, 26 Jun 2026 21:19:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E690719995E
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 21:19:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782508782; cv=none; b=SSTzrY3k0x5tEtTNff3RaWjZrDSNaT8DB7ApMr4sLZyzyrDH090v20MwKW6xw+lXNZab8bBIb/X1fOmupHE44DZdW+Wif+v/sSNnSQP8vexS6k9vUC7oMw8ud5wsnDhcthCFR8tXBEmyIdu4ClZUpNRWfnie+bGsRMnsFYDGxDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782508782; c=relaxed/simple;
	bh=G33EXfj+FNCxtxCLc5LyNibGgYb+giEbq8+TP+VLe5g=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oc4U+k0qHXevqQ1qqO6s1QHI8EqnF7BZU7Je/Kh5KjBCbHuXAVntCKEoFyv8SMyKfc3KaraizBfehsbPMJzmu68FcKzc9JvuxFQGr0TpBmOencsUPXshFo3kvMh3juDiEIdkQrltvxirpwuq3fY8a3H5ryiLkoTjVPuAIiSX+aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGHqam8F; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 414EB1F000E9;
	Fri, 26 Jun 2026 21:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782508781;
	bh=/qHtjDulENvWJOViH550S5KqvWhwQPXGZfm2aT/Pk/U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QGHqam8FjwuseQ6RToCGJVtUQYYDzDxsR/MQXhuLKo1chO4+tLTXAYsHbBoHNoIFn
	 ST2yR0u2+2pQYHnY9maNsG0icodc0JnHbZpdlNmBIdrMBx9AXbSxQTMRU7LrTtL7ck
	 LX+e70JuvlgPPv+qlt7fVU191Iu6d3AUkpReiw6InnfxZdjyk0oJJMr8T+EmoirCrI
	 1dmklckeZHQ16rdklCfoIpHjxmB3Ldvpdfeyp+aCZFviups4oxPBjrhwc5VFLipDCm
	 YIYQvbMKScJD4QyJDF/AQj0aG9trt/aHtDEt6Dw5t9j9+R6tRb/Pc0oUS9PrK6AZvH
	 +9MHOQGggtfBg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 12/29] phy: rockchip: usbdp: Support single-lane DP
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260626-rockchip-usbdp-cleanup-v8-12-47f682987895@collabora.com>
References: <20260626-rockchip-usbdp-cleanup-v8-0-47f682987895@collabora.com>
 <20260626-rockchip-usbdp-cleanup-v8-12-47f682987895@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Jun 2026 21:19:40 +0000
Message-Id: <20260626211941.414EB1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-316242-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:neil.armstrong@linaro.org,m:vkoul@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:olteanv@gmail.com,m:linux-phy@lists.infradead.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,vger.kernel.org,gmail.com,lists.infradead.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,rock-chips.com:email,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 949376D0380

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Unclocked PHY register access caused by returning 0 on unsupported=
 mode in `rk_udphy_power_on`.
--

commit 835e45901918a9b24aa9d7ccd7b8538db264146b
Author: Zhang Yubing <yubing.zhang@rock-chips.com>

phy: rockchip: usbdp: Support single-lane DP

Implement support for using just a single DisplayPort line.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
[ ... ]
> @@ -1083,18 +1072,17 @@ static int rk_udphy_dp_phy_exit(struct phy *phy)
>  static int rk_udphy_dp_phy_power_on(struct phy *phy)
>  {
[ ... ]
>  	ret =3D rk_udphy_power_on(udphy, UDPHY_MODE_DP);
>  	if (ret)
>  		goto unlock;
> =20
> -	rk_udphy_dplane_enable(udphy, dp_lanes);
> +	rk_udphy_dplane_enable(udphy, udphy->dp_lanes);
> =20
>  	rk_udphy_dplane_select(udphy);

[Severity: High]
This is a pre-existing issue, but I noticed a potential problem in how
we handle the return value of rk_udphy_power_on() here.

If the DP controller powers on the DP PHY when DP mode is not currently
enabled, such as before Type-C negotiation completes or when forced by
userspace bypassing HPD checks, rk_udphy_power_on() returns 0 for
unsupported modes.

Because the return value is 0, execution proceeds to rk_udphy_dplane_enable=
()
and rk_udphy_dplane_select(). Can this cause a kernel crash or SError
resulting from an MMIO access to unclocked UDPHY_PMA registers?

Should rk_udphy_power_on() return an error code like -EOPNOTSUPP instead of
0 when the mode is not supported, so the check here can properly abort?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260626-rockchip-u=
sbdp-cleanup-v8-0-47f682987895@collabora.com?part=3D12

