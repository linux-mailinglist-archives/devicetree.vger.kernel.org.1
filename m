Return-Path: <devicetree+bounces-320406-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7YnfJutPSGplowAAu9opvQ
	(envelope-from <devicetree+bounces-320406-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 02:12:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D4FBF70636A
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 02:12:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=HinwGBJV;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320406-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320406-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9015E3025906
	for <lists+devicetree@lfdr.de>; Sat,  4 Jul 2026 00:12:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02111126C17;
	Sat,  4 Jul 2026 00:12:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C016B72622
	for <devicetree@vger.kernel.org>; Sat,  4 Jul 2026 00:12:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783123944; cv=none; b=PD9UeqjmxFtYMeX149GW9mo4GSkZawtAoNT3QdXowPhcm08J7Q/kAeNdbJypm/FQD48Mun0DyzyfEpfzmGbFKceQ1slHojuUz7YpnqN1OCjSWb0XGAfnhtla5h3YnaHfU/WgDTnULPvFduKseNOhHJgeRx4c1/OdF+kZ+rfPdo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783123944; c=relaxed/simple;
	bh=7045sN+u1ODI+1fU+jGgyjs1ccIuEOYzMtJgTr8kSGU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pNTwxH8MEOrsJIqq9b8tQhxtBXvgLJDnwyFAAHBeo8mD0bvcpjwSzkWOy20AgTsDa+wtT9gRQLMrcigo8CjI56BzrXqvbiHTGRwMVxX52QYWh65PxMZ8nvUKAOzg0wGS9hncglvJdOBGBXvupGKnxGqhqwSyQIxdWeKjPZ/nQ1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HinwGBJV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E508E1F00A3A;
	Sat,  4 Jul 2026 00:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783123943;
	bh=Ua5Kp3M4Vt0UXZ4B2mLogiAGsTTUuKKWiWzqRMPI7Y0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HinwGBJVE2SwokcNy+kxORomgveChwUNyK54YmsIvWI8tGypbdvdfiHJrD14NaMgi
	 k7S51y+Hk+PMYseEvutylmuv1UWT12oascXVbwK+nopoFvlwgj+lgR/o1r14uwTrVC
	 C/8wz77fK8+dNbAa1IUT0P/IRw0BtExD9xcT7rK5399GpsqB72BxXQd20lB1OU4+Zr
	 Y0MXbcR8CvxxZ86bnnDd6dkc4ygWUt4+eygFP38JGIO1J0wrJ/SMbbbmk5Ll3+eDf8
	 ti0TcUqFI291iOHIwjD57UzJQlafbQvlOskFo2aBtPMOREMCYPXPwIkLSHxi71cS6U
	 6a7+fy2IKDlrg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 32/36] phy: rockchip: usbdp: Drop -EPROBE_DEFER hack
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, conor+dt@kernel.org
In-Reply-To: <20260703-rockchip-usbdp-cleanup-v10-32-a392711ca8a9@collabora.com>
References: <20260703-rockchip-usbdp-cleanup-v10-0-a392711ca8a9@collabora.com>
 <20260703-rockchip-usbdp-cleanup-v10-32-a392711ca8a9@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 04 Jul 2026 00:12:22 +0000
Message-Id: <20260704001222.E508E1F00A3A@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-320406-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:olteanv@gmail.com,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:linux-phy@lists.infradead.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com,linaro.org,lists.infradead.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:email,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D4FBF70636A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The commit message incorrectly claims that the driver performs a r=
eset during its probe routine, which can lead to a permanent DWC3 probe fai=
lure when initialized by U-Boot.
--

commit 6fe2e9f6ad72e10da5478abbe129b4525d89b28f
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Drop -EPROBE_DEFER hack

This commit removes the -EPROBE_DEFER fallback from rk_udphy_status_check().
It relies on a hardware reset in the probe routine to avoid the PLL locking
timeout.

>     The hack to return -EPROBE_DEFER when the lcpll lock timeouts is no
>     longer needed. The driver now does a reset during its probe routine
>     marking everything as off and later on does a re-init, which avoids
>     the problem.

[Severity: High]
Is this description accurate? Looking at rk_udphy_probe(), the hardware res=
et
appears to be missing.

If the bootloader (U-Boot) initializes and leaves the USB PHY active, and
rk_udphy_probe() fails to assert the hardware resets, the PHY remains activ=
e.
When DWC3 later probes and calls phy_init(), it attempts to re-initialize t=
he
PHY.

Because DWC3 registers its PHY notifier after calling phy_init(), it misses
the PHY_NOTIFY_PRE_RESET event and fails to soft-reset the USB MAC. The
active DWC3 MAC can interfere with the PHY's PLL lock, causing the
rk_udphy_status_check() to timeout.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index 5d151fff9eeba..3fb6eea2979b9 100644
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
Does propagating this timeout instead of returning -EPROBE_DEFER cause the
DWC3 probe to fail permanently rather than retrying?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703-rockchip-u=
sbdp-cleanup-v10-0-a392711ca8a9@collabora.com?part=3D32

