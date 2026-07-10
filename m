Return-Path: <devicetree+bounces-324675-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rUZDGMxkUWqXDwMAu9opvQ
	(envelope-from <devicetree+bounces-324675-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 23:31:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C8B73EF44
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 23:31:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=a7GxQVFp;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324675-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324675-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 31061305896A
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 21:30:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D1423BB681;
	Fri, 10 Jul 2026 21:28:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C611F3B7B84
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 21:28:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783718886; cv=none; b=FTDU893U/wnz8ZK58AWJaUB9xHtRbhZEPncgy+9S+GtVl3TKoeIvt6fzgbbmDCSdJuD/4f92DSyqHaLpBhwbnMyAOFeheBrOPlrXoXhowt/e2yaNPWFY0KYi8lXrOqciEj9q+mmv9rUx48RcGAvEQ3nwGiVQFErFnUVUa6iH+J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783718886; c=relaxed/simple;
	bh=Z0s+6zK+UBU6iPVkLrT0WN63/Wvwzzsj2nL/ojt63Cw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=l2MF8t5ngJPDx4MqqRt3j2zLoGXWeMzCyQtjqAk03aiwI884ILlntq3xtKecm4BaCoLYy/VF20yyaZ+l/AbapwbwE2BXGAc+r/KCRjSfdKhvHIAQmTZUdaHAQeoKNdcEmKty7sLA61wO2/iidY/+QugeOvY3NbFOO1bJGMRwhIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7GxQVFp; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F40C11F000E9;
	Fri, 10 Jul 2026 21:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783718885;
	bh=oCn8tsmUndVASYmqSorJAdC9hc49PfBmBl/j9ynNRnw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=a7GxQVFpsy9hyA5HVwaAHrzMO1H1pGLeHEmv/VY7JU2216hTPnsUIeh+TK4RMYHdJ
	 9EhnS9h50GSITibPDEQ5HV/HI2TNj5NFvkBi457wVe0P2dm/F4FcIvPSyPDviwwgSo
	 gU+iWQ/AP7q5swE6RPQENmu1EIebh2pg/YaLDTDisBcfCjv9ZQoKsyvu+Q3dvJRLXp
	 xNqmOEFppIjUvcRfqcfkz5fLa4AUSGvMBPJNJ6FdjJMCxwvWiPgAqOCrZ84K8PpICH
	 zGyOtMI3WzSyXbqzqo0GIpwTG2POJaqMTjce0tayAkjH3myeVFMt97mbu7emA1gDxj
	 rrU9ad2G+bi5A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 32/36] phy: rockchip: usbdp: Drop -EPROBE_DEFER hack
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, devicetree@vger.kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-32-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
 <20260710-rockchip-usbdp-cleanup-v12-32-8b41a9a9bef0@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 21:28:04 +0000
Message-Id: <20260710212804.F40C11F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324675-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:linux-phy@lists.infradead.org,m:olteanv@gmail.com,m:devicetree@vger.kernel.org,m:neil.armstrong@linaro.org,m:vkoul@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com,vger.kernel.org,linaro.org,kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp,collabora.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 09C8B73EF44

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Removal of -EPROBE_DEFER fallback causes permanent initialization =
failures due to missing probe-time reset
--

--- Patch [32]: [PATCH v12 32/36] phy: rockchip: usbdp: Drop -EPROBE_DEFER =
hack ---
commit 98ed05cf436c46697d07d16fcc060eda63439bf7
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Drop -EPROBE_DEFER hack

This commit removes the -EPROBE_DEFER fallback for LCPLL lock timeouts in
rk_udphy_status_check(). It states that a reset during the probe routine
now avoids the problem.

>     The hack to return -EPROBE_DEFER when the lcpll lock timeouts is no
>     longer needed. The driver now does a reset during its probe routine
>     marking everything as off and later on does a re-init, which avoids
>     the problem.

[Severity: High]
Is this description accurate? Looking at rk_udphy_probe(), it appears the
probe-time reset was removed in a prior patch, meaning the driver does not
actually perform a reset during probe:

drivers/phy/rockchip/phy-rockchip-usbdp.c:rk_udphy_probe() {
    ...
	udphy->dev =3D dev;
	ret =3D rk_udphy_parse_dt(udphy);
	if (ret)
		return ret;

	mutex_init(&udphy->mutex);
	platform_set_drvdata(pdev, udphy);
    ...
}

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index 0333e846ce343..cf173276bfc01 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -750,17 +750,7 @@ static int rk_udphy_status_check(struct rk_udphy *ud=
phy)
>  					       (val & CMN_ANA_LCPLL_LOCK_DONE), 200, 100000);
>  		if (ret) {
>  			dev_err(udphy->dev, "cmn ana lcpll lock timeout\n");
> -			/*
> -			 * If earlier software (U-Boot) enabled USB once already
> -			 * the PLL may have problems locking on the first try.
> -			 * It will be successful on the second try, so for the
> -			 * time being a -EPROBE_DEFER will solve the issue.
> -			 *
> -			 * This requires further investigation to understand the
> -			 * root cause, especially considering that the driver is
> -			 * asserting all reset lines at probe time.
> -			 */
> -			return -EPROBE_DEFER;
> +			return ret;
>  		}

[Severity: High]
Does returning the actual error code instead of -EPROBE_DEFER cause a perma=
nent
initialization failure here?

Since the probe routine lacks the hardware reset assertion, if the bootload=
er
leaves the DWC3 controller running, it can corrupt the PHY state when the P=
HY
is later reset.

If another consumer like DisplayPort probes first, or DWC3 is not loaded,
phy_power_on() will assert the PHY reset.

Because DWC3 wouldn't have registered its pre-reset notifier to isolate the
PIPE interface, the PHY LCPLL will fail to lock. Without the -EPROBE_DEFER
fallback, this lock timeout becomes a fatal -ETIMEDOUT error and permanently
breaks the driver.

> =20
>  		if (!udphy->flip) {

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710-rockchip-u=
sbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com?part=3D32

