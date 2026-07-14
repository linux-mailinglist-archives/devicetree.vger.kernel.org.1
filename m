Return-Path: <devicetree+bounces-326493-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6iwVJRWVVmqX+AAAu9opvQ
	(envelope-from <devicetree+bounces-326493-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 21:59:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B0275886F
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 21:59:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Dx3LujzA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326493-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326493-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0CAB1307207A
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 19:58:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C7E843A7FD;
	Tue, 14 Jul 2026 19:58:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E309C3ED5DE
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 19:58:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784059118; cv=none; b=eyiaOhHCbT4hH3+uGmLHQEOYZiU19Bu4c42nqTxXk9GunSAhuILcpsVba7cyZQsaEkE+ddQ19pE/SZyPIts+mzleUR0D2UNDV2E6eK6euVCfbWuORTlXZLoyY7VlPNVG8EUDheXQd1X94dEAjyTXFd3i/7ft09lt0KWDcxjSPH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784059118; c=relaxed/simple;
	bh=j8mHFe8UjgPMFvD6ooci0E0L4Q4nz1iDgAS6jbUzGSo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=K2JQ7Gmr+pucwWsfpSqJblgffo9xcYZp+tXrxUFsp61yXeq0CJG6VpQXSfUE9eau8wY59ApUnBi5iAruefOxo1cfbAtGkNlCjjQx0wsXIyIRIWCcXgRuubkJs8R/Uhz9iwCQqimiMdn4yS7eycfRebUrxK5dG6E4921kW8qjx+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dx3LujzA; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45C8C1F00A3A;
	Tue, 14 Jul 2026 19:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784059116;
	bh=aGitlCzPrMPaNylSmWm9QFlHiQweLEH7GcpNFL69zfI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Dx3LujzAjncLeWnt1VhD+TsRmjxZQg08LMLzBiqtuentdw40gO1rMGI56vpIDOAbX
	 WwjKeoXoWtVygytta8a73N8UofrznByWSpV1us5v78+MzHHvPMhdB/OKgLj/Ml5EJJ
	 WVInZK+qInASoKe64Cx5R9v5lxKMOKMkuq0y0m+jDXShAimNRbPhnyC27OepbidKxK
	 diX10rY/cvwCR/UQTkMsKaZPPJvjZ2w6OoVIqAGikyul8fRLanlbLyyMgzwY4PbLz7
	 zRV20ym6OGZqRHjBPFRUk7NpldLjvsDymn2o6Z63qCyum7useVGmfWxq3QregGx6d/
	 FSd0pIMMTBbDw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 18/35] phy: rockchip: usbdp: Rename mode_change to
 phy_needs_reinit
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-18-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
 <20260714-rockchip-usbdp-cleanup-v13-18-6cb3e769d4c5@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 19:58:35 +0000
Message-Id: <20260714195836.45C8C1F00A3A@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-326493-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:linux-phy@lists.infradead.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,linaro.org,gmail.com,lists.infradead.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,collabora.com:email,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 08B0275886F

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Unclocked register access leading to system hang when an unsupport=
ed PHY mode is requested.
--

--- Patch [18]: [PATCH v13 18/35] phy: rockchip: usbdp: Rename mode_change =
to phy_needs_reinit ---
commit fe40e70a3614f2ec7c81e0e8bd7039efe25202c3
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Rename mode_change to phy_needs_reinit

This commit renames the mode_change property to phy_needs_reinit to better
reflect that a re-initialization is required not just on mode changes, but
also on cable orientation changes.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index 24108816e3b95..e44d19c9d1193 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c

[ ... ]

> @@ -951,15 +951,15 @@ static int rk_udphy_power_on(struct rk_udphy *udphy=
, u8 mode)
> =20
>  		if (udphy->mode & UDPHY_MODE_USB)
>  			rk_udphy_u3_port_disable(udphy, false);
> -		udphy->mode_change =3D false;
> -	} else if (udphy->mode_change) {
> +		udphy->phy_needs_reinit =3D false;
> +	} else if (udphy->phy_needs_reinit) {

[Severity: High]
This is a pre-existing issue, but can returning 0 for unsupported modes
lead to unclocked register accesses and system hangs?

In rk_udphy_power_on(), if the requested mode is not supported by the
hardware, the function prints an info message and returns 0 (success)
instead of an error:

        if (!(udphy->mode & mode)) {
                dev_info(udphy->dev, "mode 0x%02x is not support\n", mode);
                return 0;
        }

This success return tricks the caller into proceeding to access unclocked
hardware:

rk_udphy_dp_phy_power_on() {
        ...
        ret =3D rk_udphy_power_on(udphy, UDPHY_MODE_DP);
        if (ret)
                goto unlock;

        rk_udphy_dp_lane_enable(udphy, udphy->dp_lanes);
        ...
}

Because the mode was unsupported, the clocks are not enabled. Accessing
the registers in rk_udphy_dp_lane_enable() will then crash the system.

Similarly, rk_udphy_dp_phy_power_off() unconditionally accesses hardware
registers before checking if the mode was supported and powered on:

rk_udphy_dp_phy_power_off() {
        ...
        mutex_lock(&udphy->mutex);
        rk_udphy_dp_lane_enable(udphy, 0);
        rk_udphy_power_off(udphy, UDPHY_MODE_DP);
        ...
}

Does it make sense to return an error code like -EOPNOTSUPP for
unsupported modes, and guard the register accesses in the power-off path?

>  		if (udphy->mode =3D=3D UDPHY_MODE_DP)
>  			rk_udphy_u3_port_disable(udphy, true);
> =20
>  		ret =3D rk_udphy_init(udphy);
>  		if (ret)
>  			return ret;
> -		udphy->mode_change =3D false;
> +		udphy->phy_needs_reinit =3D false;
>  	}
> =20
>  	udphy->status |=3D mode;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-rockchip-u=
sbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com?part=3D18

