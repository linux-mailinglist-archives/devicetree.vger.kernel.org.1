Return-Path: <devicetree+bounces-316232-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5a2zEBzrPmr1MwkAu9opvQ
	(envelope-from <devicetree+bounces-316232-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 23:11:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 86BBB6D0309
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 23:11:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Qr5Jlw8e;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316232-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316232-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 52F15300D458
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 21:11:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 243CD3A7F7A;
	Fri, 26 Jun 2026 21:11:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B45437D124
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 21:11:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782508313; cv=none; b=P7E4nAClUMejCkch0Fubk8uLrvMWImqxzP8Gx2IS1p1pKm/kJAHbfosbRwomZhrr13/T08FNmusefzPyWKKArsy+xvNdjEmXFXMfsoF3e46UshPtbrD+cVhCzad8B8PJ4jCVp0uO5gJY3o927ZJRDGRKw57iykmTVYUHcQoZRc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782508313; c=relaxed/simple;
	bh=2bMSfDxse70Kqf/F/uP5O/ZUVm5247cs6YJLiO7ePYU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=nQTJtsFitY1owDd2d/YQs8ZQKoIb+naq+wc4qj/JgKa+0kMQfohxbQhI9H16Z7S6C3Ag24uxx0Iz2iJSYMkl+fsDQNw7wAiWzEZ4N6M9NhyFQPHBX/zMAj5TwxUoJN7tMFzgG/GHviSdnoYXLbvr65a57ckPO+LuBi+qxk37FZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qr5Jlw8e; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2332F1F000E9;
	Fri, 26 Jun 2026 21:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782508311;
	bh=y7pZiLQeaytZMgQeQIifYpqOvUTnF5RVOku7B6TDsqc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Qr5Jlw8esNq4NgE+ksKJKeIvXAXWp0oAWuMlDCrPOzAdz64uEXn0qiMmHhu8FfZK2
	 6F5J85i5ZiqFU1vxgJRM2ywRgNCADpM7tgXjtORaiw6z9xoWU4GuwUw2bZVpKAR6qJ
	 AO1y1rEIlfSVYz6rJgiBHPWLBocob1nSZJGSns9WqR1l1+NwpnUD+uxQJkZixHoAN0
	 1FuSLltkCgqz4o/hKtu/SX/3upxt4B2lioXc/GSY4mzusb+vB9HN3wWadCqzcfiZ2X
	 dXlELXX7Y6wAyED1XpxyzRKI+baYCc7oQfmF82VMVcMnqLRc58Ej0C1t6XxgWs68KO
	 Tbxa89UP1u0Ig==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 07/29] phy: rockchip: usbdp: Handle
 rk_udphy_reset_deassert_all errors in init check
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, olteanv@gmail.com, robh@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20260626-rockchip-usbdp-cleanup-v8-7-47f682987895@collabora.com>
References: <20260626-rockchip-usbdp-cleanup-v8-0-47f682987895@collabora.com>
 <20260626-rockchip-usbdp-cleanup-v8-7-47f682987895@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Jun 2026 21:11:50 +0000
Message-Id: <20260626211151.2332F1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-316232-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:conor+dt@kernel.org,m:olteanv@gmail.com,m:robh@kernel.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,lists.infradead.org,vger.kernel.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,collabora.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 86BBB6D0309

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [Medium] The return value of `regmap_read` is ignored, leading to the use=
 of an uninitialized stack variable.
- [Medium] The patch fails to address identical reset deassertion vulnerabi=
lities in `rk_udphy_init`, leaving the driver susceptible to the exact same=
 SError it claims to fix.
--

commit af7a83cb1b1746054cd095d5743210c65397d6b1
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Handle rk_udphy_reset_deassert_all errors in init che=
ck

This commit fixes a theoretical SError issue by ensuring that the return
value of rk_udphy_reset_deassert_all is checked. It bails out early if
deasserting the reset lines fails before attempting further register access.

Reported-by: Sashiko <sashiko-bot@kernel.org>
Closes: https://sashiko.dev/#/message/20260619154903.2225A1F000E9%40smtp.ke=
rnel.org

> Fix theoretical issue, that failure to deassert the reset lines would
> result in an SError in follow-up register access. Note, that this cannot
> happen with current code, since the Rockchip reset driver never returns
> any errors for (de)asserting reset lines.

[Severity: Medium]
This is a pre-existing issue, but does this same vulnerability still exist =
in
rk_udphy_init() where reset deassertions are also unchecked?

For example:

drivers/phy/rockchip/phy-rockchip-usbdp.c:rk_udphy_init() {
	...
	rk_udphy_reset_deassert(udphy, "pma_apb");
	rk_udphy_reset_deassert(udphy, "pcs_apb");

	/* Step 2: set init sequence and phy refclk */
	ret =3D regmap_multi_reg_write(udphy->pma_regmap, ...
	...
}

If rk_udphy_reset_deassert() fails here, wouldn't the follow-up
regmap_multi_reg_write() trigger the exact same SError?

Should the reset deassertions in rk_udphy_init() also be checked?

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index f7ff55f03b7cf..b8de0a47a6165 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -936,7 +936,9 @@ static int rk_udphy_get_initial_status(struct rk_udph=
y *udphy)
>  		return ret;
>  	}
> =20
> -	rk_udphy_reset_deassert_all(udphy);
> +	ret =3D rk_udphy_reset_deassert_all(udphy);
> +	if (ret)
> +		goto exit;
> =20
>  	regmap_read(udphy->pma_regmap, CMN_LANE_MUX_AND_EN_OFFSET, &value);
>  	if (FIELD_GET(CMN_DP_LANE_MUX_ALL, value) && FIELD_GET(CMN_DP_LANE_EN_A=
LL, value)) {

[Severity: Medium]
This is a pre-existing issue, but does this code evaluate an uninitialized
variable if the read fails?

If regmap_read() fails and returns an error, value is not initialized, and
the subsequent FIELD_GET() checks will operate on uninitialized stack memor=
y.

Should the return value of regmap_read() be checked here?

>  		dev_info(udphy->dev, "Started with DP PHY pre-enabled; seamless takeov=
er unsupported\n");
>  		rk_udphy_grfreg_write(udphy->vogrf, &cfg->vogrfcfg[udphy->id].hpd_trig=
ger, false);
>  	}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260626-rockchip-u=
sbdp-cleanup-v8-0-47f682987895@collabora.com?part=3D7

