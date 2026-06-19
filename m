Return-Path: <devicetree+bounces-313889-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BmhvLfhkNWoyvAYAu9opvQ
	(envelope-from <devicetree+bounces-313889-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 17:49:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B3D6A6D43
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 17:49:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VYnjZ+jP;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313889-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313889-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BE44730A9CF1
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 15:44:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAC223B42E4;
	Fri, 19 Jun 2026 15:43:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167623B5E15
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 15:43:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781883835; cv=none; b=LtjpRCuwhJm+744eiUOykL0RyG7Cu7I6ig1byop9mUo6mmWy4HOo23l8/C+KDFNZMqn3nO1KCPU3AACJI4NtdgW/9jt5rYhcj4Qpv8RCyBB0Z1msTZt4+k3jspHAiGvp29rlaZ4gN5tnp3WkSFwLKfjwfWrKfQwdK/tIkLZpf9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781883835; c=relaxed/simple;
	bh=76NBmxxvoDdMmkeo9gfX1/5WtAec93npMWVxkLJi8Hg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=AsHndu/uEYqp1sesl3q4TYYOiud0m72O/bceUlmyBfwc/+DC89Qx+3+ut4jpodBbSW4fkZIIVxvkOauUb/9sx8iWsPJtIoPpU6obJxt4jUFgVjXIDN8s4UVQBXeCFfnupNr8C1yI1QScSGEueL0eHmPUDe0MHD5EhBB2+AyYaTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYnjZ+jP; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 071321F000E9;
	Fri, 19 Jun 2026 15:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781883829;
	bh=fyBH5aldO8sRIuALawQfQb8xw7cN0FNGojZKcuhi0w4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VYnjZ+jPebkwPoIJnGg2Ogn4aUMdQM+/Jg0XrVbT1kqr/KL730xiqVrQ/XjgQmyGn
	 icdLbIiqGEu5vAfFXDhHsKLbHgk9Qtwr8czgzJtzvHcso+8SFg7izESvYbdifJWov1
	 i82lLVYgKuubLRPsMMQ2ElOdWuBSC4Z7EG9gEhml65BJi5qOTFCiNdGPrF8MLueHWj
	 AUjp0oRbcMdMBjnPj1dhxA2rOBqCeV4o4nrCctwjaDrYGOvrmi3pQ4QdiPdmXxRiPI
	 jbahEa5iCSxfaVDI7m4+bOih77qfrfRJLFiAJueZJ4vm55Qu7HAWAodoD6b7t9+KKd
	 1uknW0gFr+rRg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 04/23] phy: rockchip: usbdp: Fix
 devm_clk_bulk_get_all check
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: conor+dt@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, robh@kernel.org
In-Reply-To: <20260619-rockchip-usbdp-cleanup-v6-4-3bb1f54b3f35@collabora.com>
References: <20260619-rockchip-usbdp-cleanup-v6-0-3bb1f54b3f35@collabora.com>
 <20260619-rockchip-usbdp-cleanup-v6-4-3bb1f54b3f35@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jun 2026 15:43:48 +0000
Message-Id: <20260619154349.071321F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313889-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:conor+dt@kernel.org,m:vkoul@kernel.org,m:devicetree@vger.kernel.org,m:olteanv@gmail.com,m:neil.armstrong@linaro.org,m:linux-phy@lists.infradead.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,linaro.org,lists.infradead.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 32B3D6A6D43

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The device tree parsing logic is vulnerable to a NULL pointer dere=
ference if 'clock-names' is missing or incomplete.
--

commit 5e5a7a4f6db0a44a4bac43001ea4d179c3798c6d
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Fix devm_clk_bulk_get_all check

This commit fixes the return value check for devm_clk_bulk_get_all()
so that deferred probe errors are properly propagated instead of being
masked.

Link: https://lore.kernel.org/linux-phy/20260612164107.C7DB21F000E9@smtp.ke=
rnel.org/

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index 12dfdd470a782..2845a012eafcc 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -427,8 +427,8 @@ static int rk_udphy_clk_init(struct rk_udphy *udphy, =
struct device *dev)
>  	int i;
> =20
>  	udphy->num_clks =3D devm_clk_bulk_get_all(dev, &udphy->clks);
> -	if (udphy->num_clks < 1)
> -		return -ENODEV;
> +	if (udphy->num_clks < 0)
> +		return udphy->num_clks;
> =20
>  	/* used for configure phy reference clock frequency */
>  	for (i =3D 0; i < udphy->num_clks; i++) {

[Severity: High]
This is a pre-existing issue, but could this cause a null pointer dereferen=
ce
if the device tree is missing the 'clock-names' property?

Looking at devm_clk_bulk_get_all(), it relies on of_clk_bulk_get(), which
initializes clks[i].id to a null pointer. If the device tree specifies
'clocks' but omits 'clock-names' (or has fewer names than clocks), the id
field appears to remain null.

Since strncmp() does not safely handle null pointers, passing it directly
might trigger an oops during driver probe:

rk_udphy_clk_init()
  devm_clk_bulk_get_all()
  // udphy->clks[i].id is potentially null
  ...
  strncmp(udphy->clks[i].id, "refclk", 6)

Would it make sense to verify udphy->clks[i].id is valid before comparing i=
t?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260619-rockchip-u=
sbdp-cleanup-v6-0-3bb1f54b3f35@collabora.com?part=3D4

