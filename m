Return-Path: <devicetree+bounces-324060-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DSDkG370T2pRrAIAu9opvQ
	(envelope-from <devicetree+bounces-324060-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 21:20:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC200734E1A
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 21:20:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=AFqO4tOo;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324060-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324060-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CEDBF3028C99
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 19:20:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA2F33AC0C9;
	Thu,  9 Jul 2026 19:20:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70AF13A9616
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 19:20:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783624807; cv=none; b=XbnvCzp5zkfJLdAHEzNnwF3j2ZxWjpHddt+BHquUVMfbQXwsvF3Q/V/R5GFdHenKF3kqYJpH9/AFVx6M1z4j926kuo/a6eTjY6UXf7c0snAOc43cxR+HI+7GgT3WxFY9sBCxHuFcVAg0R/yac7ZR3SKdSeQ2EF6kL9allyVoQ7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783624807; c=relaxed/simple;
	bh=7DpJGoxfweEZtBfvoj3pfeT6eTmnoLv34PG/QWLyypo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pDuW8dAgVjDqzNHJKayStH2G4y8MM8pshaqp/gb4G+QHdKI3tny0AZqobhfgO1y9MFAnAVwHPXO7xehmarNke4sDngnC2V+wRr5ZXbzRM9te3ZJqyTFqXqErxiJElvhtwu+gWsYb1uUSf5GwGo4+96OtGwIKC24ZMwZKZnQ7IAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFqO4tOo; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D36B1F000E9;
	Thu,  9 Jul 2026 19:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783624806;
	bh=JOoYQRRMp/4bQLfHT7UKwwFS3tOvWyyYjCNy0bIanP8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AFqO4tOoNNFAEoLYJmjyu/SQD3JyRwFaKveh1SXYhWsnL54mc4i5usBB7dSs3lGEc
	 IJOQPitHiw3ugO/OuTLrMkF6AFNmiBW+Vi74v+DPCNE3309IkapjjQy22NBc0fylKM
	 SgEGuYbm0mlnuaGAv1Fs3AbiG98ySluC+WdYPJ2iyk96K04lelrYlRizLHUfBpWjcQ
	 /MVkPlY40+FQ6teToITEDFyWGAha+Ln1y9ajZ/CDqAn19jtzHeZaENYA6GxzTKMU1j
	 vONODRn08j3PmYOjdRfhVKk4v5qtixPYaigf9D35RKPN4FkaRU3REjeGi2QmC1FLjT
	 aTWzUpHHP+Zqg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 02/36] phy: rockchip: usbdp: Update mode_change
 after error handling
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org
In-Reply-To: <20260709-rockchip-usbdp-cleanup-v11-2-a149ac60f76c@collabora.com>
References: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
 <20260709-rockchip-usbdp-cleanup-v11-2-a149ac60f76c@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 19:20:04 +0000
Message-Id: <20260709192005.9D36B1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-324060-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:olteanv@gmail.com,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:neil.armstrong@linaro.org,m:vkoul@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,lists.infradead.org,vger.kernel.org,kernel.org,linaro.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CC200734E1A

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

Pre-existing issues:
- [High] When changing the PHY mode from DP-only to a state that includes U=
SB (e.g., DP+USB), the U3 port remains permanently disabled, breaking USB 3=
.0 functionality.
- [High] The PHY is left permanently enabled and clocks leak due to flawed =
mode-checking in the power off path during Type-C role switches.
- [High] Re-initializing the PHY during a mode change while the USB control=
ler is active disables PHY clocks without re-routing the DWC3 clock, leadin=
g to a fatal SError on register access.
--

--- Patch [2]: [PATCH v11 02/36] phy: rockchip: usbdp: Update mode_change a=
fter error handling ---
commit 1bc42e532da1064edae3f14df8f37ade40a0072d
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Update mode_change after error handling

If rk_udphy_init() or rk_udphy_setup() fails, the reinit will not be
tried again. Fix this by only updating the variable after all potential
errors have been handled.

Link: https://lore.kernel.org/linux-phy/20260612163835.8D5471F000E9@smtp.ke=
rnel.org/

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index fba35510d88ce..a5ffdf7a6e76b 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -1000,15 +1000,14 @@ static int rk_udphy_power_on(struct rk_udphy *udp=
hy, u8 mode)
>  	}
> =20
>  	if (udphy->status =3D=3D UDPHY_MODE_NONE) {
> -		udphy->mode_change =3D false;
>  		ret =3D rk_udphy_setup(udphy);
>  		if (ret)
>  			return ret;
> =20
>  		if (udphy->mode & UDPHY_MODE_USB)
>  			rk_udphy_u3_port_disable(udphy, false);
> -	} else if (udphy->mode_change) {
>  		udphy->mode_change =3D false;
> +	} else if (udphy->mode_change) {
>  		udphy->status =3D UDPHY_MODE_NONE;
>  		if (udphy->mode =3D=3D UDPHY_MODE_DP)
>  			rk_udphy_u3_port_disable(udphy, true);

[Severity: High]
This isn't a bug introduced by this patch, but does this lead to a fatal
SError when changing to a mode that includes USB?

If a mode change to DP+USB triggers rk_udphy_power_on(), the code skips cal=
ling
rk_udphy_u3_port_disable(udphy, true). It then unconditionally calls
rk_udphy_disable(udphy) below, which turns off the PHY clocks.

Because the USB3 port wasn't disabled to safely re-route the clock, and the
DWC3 driver isn't notified via phy_notify_reset(), the active DWC3 controll=
er
could crash the system when it touches its registers.

> =20
>  		rk_udphy_disable(udphy);
>  		ret =3D rk_udphy_setup(udphy);
>  		if (ret)
>  			return ret;
> +		udphy->mode_change =3D false;
>  	}

[Severity: High]
This isn't a bug introduced by this patch, but does this skip re-enabling t=
he
U3 port when the new mode requires USB?

When changing the PHY mode from DP-only to a state that includes USB (e.g.,
DP+USB), the U3 port remains permanently disabled. The mode change block
fails to call rk_udphy_u3_port_disable(udphy, false) to re-enable it for the
newly added USB 3.0 mode, leaving USB functionality broken until a power cy=
cle.

[Severity: High]
This isn't a bug introduced by this patch, but can the PHY be left
permanently enabled during Type-C role switches?

When the Type-C mux changes mode from DP+USB to DP-only, udphy->mode loses
the UDPHY_MODE_USB bit immediately.

Later, when the USB core calls rk_udphy_usb3_phy_exit():

drivers/phy/rockchip/phy-rockchip-usbdp.c:rk_udphy_usb3_phy_exit() {
	...
	/* DP only or high-speed */
	if (!(udphy->mode & UDPHY_MODE_USB) || udphy->hs)
		goto unlock;

	rk_udphy_power_off(udphy, UDPHY_MODE_USB);
	...
}

It sees the new mode and skips calling rk_udphy_power_off(). Even if it
were called, rk_udphy_power_off() also refuses to act if the requested
mode is absent from udphy->mode:

drivers/phy/rockchip/phy-rockchip-usbdp.c:rk_udphy_power_off() {
	...
	if (!(udphy->mode & mode)) {
		dev_info(udphy->dev, "mode 0x%02x is not support\n", mode);
		return;
	}
	...
}

Consequently, udphy->status incorrectly retains the USB bit, preventing
rk_udphy_disable() from ever powering down the PHY and leaking clocks.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-rockchip-u=
sbdp-cleanup-v11-0-a149ac60f76c@collabora.com?part=3D2

