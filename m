Return-Path: <devicetree+bounces-324652-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jz7AGxtgUWq2DQMAu9opvQ
	(envelope-from <devicetree+bounces-324652-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 23:11:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C8273EA85
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 23:11:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="cYxrpbS/";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324652-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324652-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C0BA3037DE2
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 21:07:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDE2A390C8D;
	Fri, 10 Jul 2026 21:07:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EAA8347535
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 21:07:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783717668; cv=none; b=gLwTt4y+yYaE+QQlFkzo5Rmvd/aWnSqB6e/xE2uL7R7hSXeGhf5gURcihzhl3p25E9aG2hdQoqQU3S6CQi6IS7LFnY0kXhMw6oC9rH8FJMkGhBsPPJ4URK51VeFAPBoCik1hwySXfL+pzNDXr2ZzC631h+7kDadDjL0tyMDyQkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783717668; c=relaxed/simple;
	bh=Bk+oyhKjoVGxSG8tJnKilQjza8UXkNfQs2mgARltQQc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=efMxoW0obeg4CCEM6S0T7pfkl8g0tDv6Oi+RUHEsDJYscgowYrGfzat3DnkIv90cpuijeKFhbxujXWnzZee7yCln8N7B1p6RASX5CoFqoiDEJ38j/VMOZFAhwyGUBw0mc4PRqSKmnbM9rJpEjygO+IoaGBJsp5taC/ftiMWszxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYxrpbS/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E752F1F000E9;
	Fri, 10 Jul 2026 21:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783717667;
	bh=7dchypg2t5RA7C2oLIg2jyC66usHbCwahs5TrnmSHL8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cYxrpbS/IVKgZBUZfPN+W53R8Haa3E7clcVLb6U6B1381W2CVrBcMXcCef2Jfsiis
	 CMWEVFG8/FqebZNKOUAFY7I1w5YAcP2HOyid8hLQLkHxbeU9EkESuyrn5xiX+FC0rE
	 t1PDmLlhvA2Iox1r8wYkv13KUmbg2Nga4WZespnhiUvqBo51sYgePcZafoe7R/PzEr
	 nLvjdK3iy2aDG857mZ+l6C4Oho2wJOtWGFF9GUC6kAojdmkhHbRR04N1VnZ/52x9bC
	 MtoNTH1stzLvVu6vWiifyUQb0fgmHgUni88DA5aAyUd+Op306tSJ2SawbLjAtcmkjn
	 Lrmt/0JNBPXXQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 05/36] phy: rockchip: usbdp: Handle missing
 clock-names DT property gracefully
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-5-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
 <20260710-rockchip-usbdp-cleanup-v12-5-8b41a9a9bef0@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 21:07:46 +0000
Message-Id: <20260710210746.E752F1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-324652-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:devicetree@vger.kernel.org,m:linux-phy@lists.infradead.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,kernel.org,linaro.org,gmail.com];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,collabora.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C5C8273EA85

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Missing NULL check for clock IDs when iterating over clocks, leadi=
ng to a NULL pointer dereference with non-compliant device trees.
- [Medium] Resource leak of clock enable counts on probe error paths and up=
on driver unbinding due to missing `.remove` callback.
--

--- Patch [5]: [PATCH v12 05/36] phy: rockchip: usbdp: Handle missing clock=
-names DT property gracefully ---
commit a11924d81c315e2223d2b7de676184666d98b48a
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Handle missing clock-names DT property gracefully

This commit fixes a NULL pointer dereference in rk_udphy_clk_init() by
ensuring the clock ID is not NULL before calling strncmp(). This gracefully
handles cases where the device tree specifies 'clocks' but misses the requi=
red
'clock-names' property.

Closes: https://sashiko.dev/#/message/20260619154349.071321F000E9%40smtp.ke=
rnel.org

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index 2845a012eafcc..3fc8222fcaec2 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -432,6 +432,9 @@ static int rk_udphy_clk_init(struct rk_udphy *udphy, =
struct device *dev)
> =20
>  	/* used for configure phy reference clock frequency */
>  	for (i =3D 0; i < udphy->num_clks; i++) {
> +		if (!udphy->clks[i].id)
> +			continue;
> +

[Severity: High]
This is a pre-existing issue, but does the same NULL pointer dereference
exist in other rockchip PHY drivers when 'clock-names' is missing?

For example, looking at rockchip_usb2phy_clk480m_register() in
phy-rockchip-inno-usb2.c:

	for (i =3D 0; i < rphy->num_clks; i++) {
		if (!strncmp(rphy->clks[i].id, "phyclk", 6)) {
			refclk =3D rphy->clks[i].clk;

And similarly in rockchip_combphy_parse_dt() in phy-rockchip-naneng-combphy=
.c:

	for (i =3D 0; i < priv->num_clks; i++) {
		if (!strncmp(priv->clks[i].id, "ref", 3)) {
			priv->refclk =3D priv->clks[i].clk;

Do these drivers also need similar checks before calling strncmp() to avoid
crashing with non-compliant device trees?

>  		if (!strncmp(udphy->clks[i].id, "refclk", 6)) {
>  			udphy->refclk =3D udphy->clks[i].clk;
>  			break;

[Severity: Medium]
This is a pre-existing issue, but does this driver leak clock enable counts
during probe failures or upon unbinding?

Looking at rk_udphy_probe(), if rk_udphy_get_initial_status() detects that
the hardware was already enabled, it leaves the clocks manually enabled.
However, if a subsequent step fails, such as the orientation-switch setup:

	if (device_property_present(dev, "orientation-switch")) {
		ret =3D rk_udphy_setup_orien_switch(udphy);
		if (ret)
			return ret;
	}

The error path returns directly without disabling the clocks. If this fails
with -EPROBE_DEFER, will the leaked clock enable count increment on each
retry?

Additionally, the driver appears to lack a .remove callback entirely:

static struct platform_driver rk_udphy_driver =3D {
	.probe		=3D rk_udphy_probe,
	.driver		=3D {
		.name	=3D "rockchip-usbdp-phy",

Does unbinding the driver while the PHY is active leave the clocks
permanently enabled and reset states deasserted?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710-rockchip-u=
sbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com?part=3D5

