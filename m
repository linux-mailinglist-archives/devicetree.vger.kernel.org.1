Return-Path: <devicetree+bounces-324055-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id q8IbGID1T2qQrAIAu9opvQ
	(envelope-from <devicetree+bounces-324055-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 21:24:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FB8734ECB
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 21:24:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=NSC0uzjn;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324055-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324055-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 201CA3044822
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 19:19:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CADD839732C;
	Thu,  9 Jul 2026 19:19:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B62F4499B0
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 19:19:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783624750; cv=none; b=tHLKvVfys/BN0HcjPXmnEmE3MOHclGy92DTcVZnzo4g7Ud/hWmlJgONfUTyCTG6wmAQhIyMUmOYByHYxa1Uj6iugba3n2gnlOJgdnBMSeHf9LsibS7b+CkApsvqBsAge17Gxp4Dkj38YWIjTSDkTq41S4K8QdinM1+RrtaucPRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783624750; c=relaxed/simple;
	bh=PiOPzN/KZuqMBIIEYIRZ1yJ+nJh20q2OpcWMwqMWROI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hNs1K3kl1Pr2VWYIfyvmWIFU6QAPlsG4B6yiQxfDEj6whHh/aKLL3K1qhE6+Ca0UdtLkXHzxVmIyg1CJN8Q/OzqHXxFzHy5SFzyByFrafH+40O2Dc8F64sM6xqyEZO3t7CMt2vj4d8tzwZw5IjfqeZCNMsg2mLqjxX9/ibV6mVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSC0uzjn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB4CE1F000E9;
	Thu,  9 Jul 2026 19:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783624749;
	bh=D7PyYNnJtBJFBh0HdoUr8sPu42LL28HopR2/MUc47lk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NSC0uzjneYUzz9Lw0cGPalbNWvoYTccngmIBU4+Hou/jEuA7Un10rrVhYJzV8v11q
	 e4jeGRt7hM57+ptkK6MXMXuBL3DFF/kZTyQMQuUVtMOxpLXxXLUTICLixwICIgTbYX
	 W86UUjc7tDL2HcptKOpkxApE4Dj/D2cHAoaKJ6uj2CD57xWVHbogJPU+4kO7oYosAA
	 GG61wLNVoH3axT2cTHn9OpQIDnLxNxBPxElIiwPN5cuN07PmKChrBV0Ol+AVb1ddl0
	 bqyRx5aRKIgGFjL6zTaRP/QVPeO0OVnR1zB25nYgLSc7Hm9HTNSi9xxU+qZonk0SHA
	 RN56im2nKErrQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 10/36] phy: rockchip: usbdp: Add missing mode_change
 update
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260709-rockchip-usbdp-cleanup-v11-10-a149ac60f76c@collabora.com>
References: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
 <20260709-rockchip-usbdp-cleanup-v11-10-a149ac60f76c@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 19:19:08 +0000
Message-Id: <20260709191908.AB4CE1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-324055-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:olteanv@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:linux-phy@lists.infradead.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,collabora.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B5FB8734ECB

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The newly introduced rk_udphy_mode_set() helper incorrectly return=
s early if the logical mode matches, failing to trigger PHY hardware reinit=
ialization on Type-C cable orientation flips.
--

--- Patch [10]: [PATCH v11 10/36] phy: rockchip: usbdp: Add missing mode_ch=
ange update ---
commit 3a5a910ac8d7d8bee622a7fda0b441c254a882fe
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Add missing mode_change update

This commit introduces a new helper rk_udphy_mode_set() to update available
modes and set the mode_change flag. It aims to fix an issue where missing
re-initialization caused DisplayPort to stop working.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index 982315535caf7..7540c897dde13 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c

[ ... ]

> @@ -617,6 +617,15 @@ static void rk_udphy_dp_hpd_event_trigger(struct rk_=
udphy *udphy, bool hpd)
>  	rk_udphy_grfreg_write(udphy->vogrf, &cfg->vogrfcfg[udphy->id].hpd_trigg=
er, hpd);
>  }
> =20
> +static void rk_udphy_mode_set(struct rk_udphy *udphy, u8 mode)
> +{
> +	if (udphy->mode =3D=3D mode)
> +		return;
> +
> +	udphy->mode_change =3D true;
> +	udphy->mode =3D mode;
> +}
> +
>  static void rk_udphy_set_typec_default_mapping(struct rk_udphy *udphy)
>  {
>  	if (udphy->flip) {
> @@ -647,7 +656,7 @@ static void rk_udphy_set_typec_default_mapping(struct=
 rk_udphy *udphy)
>  		gpiod_set_value_cansleep(udphy->sbu2_dc_gpio, 1);
>  	}
> =20
> -	udphy->mode =3D UDPHY_MODE_DP_USB;
> +	rk_udphy_mode_set(udphy, UDPHY_MODE_DP_USB);

[Severity: High]
Will this early return in rk_udphy_mode_set() prevent PHY re-initialization
during a Type-C cable orientation flip?

When the cable is rapidly flipped and replugged, the USB driver might keep =
the
PHY powered on temporarily due to runtime PM autosuspend, meaning udphy->st=
atus
can remain UDPHY_MODE_USB.=20

In this scenario, rk_udphy_set_typec_default_mapping() recalculates the new
reversed physical lane mappings and calls the new helper:

rk_udphy_orien_sw_set() ->
   rk_udphy_set_typec_default_mapping() ->
      // physical lane mappings are updated here
      rk_udphy_mode_set(udphy, UDPHY_MODE_DP_USB);

Since udphy->mode is already UDPHY_MODE_DP_USB, the helper returns early
without setting mode_change to true.=20

Consequently, when DP power-on occurs in rk_udphy_power_on(), the hardware
initialization step is skipped because mode_change is false. The hardware's
lane mux registers are never updated with the new reversed mappings, which
causes DisplayPort to fail.

Does the mode_change flag need to be set during an orientation change even =
if
the logical mode remains the same?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-rockchip-u=
sbdp-cleanup-v11-0-a149ac60f76c@collabora.com?part=3D10

