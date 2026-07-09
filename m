Return-Path: <devicetree+bounces-324058-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Zb/oIk70T2pGrAIAu9opvQ
	(envelope-from <devicetree+bounces-324058-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 21:19:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E759D734DFA
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 21:19:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VnH1e6OV;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324058-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-324058-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DF01F300C27C
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 19:19:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04A3939BFFA;
	Thu,  9 Jul 2026 19:19:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C29A83AC0C9
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 19:19:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783624778; cv=none; b=aqvor+fkimA8T7a0dN5KeiXS70OLa7+0FbWCwpYdjJYtlNOhuhxPTMVKAEXMKG7RY9/qE91IusT+ReHRzkCYEQ6xU8k1CXi/kCg4YDAt7BLuzmkyq9kbGVcdyxJNmBGA6yT+L4zXur7Sh5VAuCjfqI1Pqr8f5NgOqcM7QP5dwIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783624778; c=relaxed/simple;
	bh=h+EAgZJWFVaZaeV1V4R3gtm/nMMQN6yEpbQj/1nZ0Qk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Wzxlccosu22shfSAAudCF9jTNEylvAZ/x3aZeRjIkVw5BV1PYrGQbNEXSnTYsfpK32Mu18LGSspN56XEzFakvBtwTgH/x4TuvENWvUCuTyBoOLDjqnLNSe0t/3ryj5g3WFh0/fqiEnNLD3yHOZ0LKbeOxefiGYI13bvRxeKLWp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnH1e6OV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDFD71F000E9;
	Thu,  9 Jul 2026 19:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783624777;
	bh=g5miDljJqao7S4Sh+VBQ1sHdrSY05MvhvMgonTbu7P8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VnH1e6OVvsCqdIrvjEacn/9Q+OD1oP1mTB9MCSMVT5YqIQ8wRsrUD6/TJzzd/wMa8
	 /4HcvEJAlYGqRTxrdm1WW/j16ua1yxqEh7SFLUbwjEJnwcb+fAVbZ2Txyj4SnR5JZE
	 lfRTO0mOyziCx4/PRr2C22QqlFczpW4Y0wpRcrWkzPwpymO2PIYjF/2B4sufaRld1T
	 IoacJakSMdHNOaTlG5yIWj8xEzs3LO8hir2Auj7ox4RRrf4ZcvJaYOKG6An27GA609
	 LYJRHWDvYbMuF4N9PewFx43QVxj1HgHtt+YrpeMabGHBzMPsnxbfuWZLNsaW6bUqdX
	 O6PLUJ9tt13Qw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 11/36] phy: rockchip: usbdp: Support single-lane DP
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com
In-Reply-To: <20260709-rockchip-usbdp-cleanup-v11-11-a149ac60f76c@collabora.com>
References: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
 <20260709-rockchip-usbdp-cleanup-v11-11-a149ac60f76c@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 19:19:36 +0000
Message-Id: <20260709191936.CDFD71F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324058-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:conor+dt@kernel.org,m:linux-phy@lists.infradead.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:olteanv@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,lists.infradead.org,vger.kernel.org,gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp,rock-chips.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E759D734DFA

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Missing bounds check for requested DP lanes allows out-of-bounds r=
egister corruption.
- [High] Data race and unprotected register access in `rk_udphy_dp_phy_conf=
igure()` due to missing mutex lock.
--

--- Patch [11]: [PATCH v11 11/36] phy: rockchip: usbdp: Support single-lane=
 DP ---
commit 543954c74eaa703430fe27a5fd2cfce0594a6d78
Author: Zhang Yubing <yubing.zhang@rock-chips.com>

phy: rockchip: usbdp: Support single-lane DP

Implement support for using just a single DisplayPort line.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index 7540c897dde13..c4d62b234ea80 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -193,6 +193,7 @@ struct rk_udphy {
>  	int id;
> =20
>  	bool dp_in_use;
> +	int dp_lanes;

[Severity: High]
This isn't a bug introduced by this patch, but does the requested lane
count need to be bounded against the newly added udphy->dp_lanes?

If a DRM bridge calls phy_configure() with dp->lanes =3D 4 when
udphy->dp_lanes =3D 2, it seems rk_udphy_dp_phy_verify_lanes() will
accept it:

drivers/phy/rockchip/phy-rockchip-usbdp.c:rk_udphy_dp_phy_verify_lanes() {
	switch (dp->lanes) {
	case 1:
	case 2:
	case 4:
		/* valid lane count. */
		udphy->lanes =3D dp->lanes;
		break;
...
}

Would this cause rk_udphy_dp_phy_configure() to iterate out-of-bounds of
the DP-assigned lanes and apply DP voltage/pre-emphasis settings to USB
PMA analog registers, potentially corrupting the USB3 PHY state?

[ ... ]

> @@ -1050,18 +1039,17 @@ static int rk_udphy_dp_phy_exit(struct phy *phy)
>  static int rk_udphy_dp_phy_power_on(struct phy *phy)
>  {
>  	struct rk_udphy *udphy =3D phy_get_drvdata(phy);
> -	int ret, dp_lanes;
> +	int ret;
> =20
>  	mutex_lock(&udphy->mutex);

[Severity: High]
This is a pre-existing issue, but while rk_udphy_dp_phy_power_on() acquires
udphy->mutex before modifying driver state, rk_udphy_dp_phy_configure()
appears to access shared state and hardware registers without this lock:

drivers/phy/rockchip/phy-rockchip-usbdp.c:rk_udphy_dp_phy_configure() {
	struct rk_udphy *udphy =3D phy_get_drvdata(phy);
	struct phy_configure_opts_dp *dp =3D &opts->dp;
        ...
        /* No mutex_lock(&udphy->mutex) here */
        ...
}

Can a Type-C event (like a cable flip or alt mode change) concurrently
trigger rk_udphy_typec_mux_set() and race with rk_udphy_dp_phy_configure()?

Could this data race on udphy->lane_mux_sel and concurrent writes to the
pma_regmap lead to hardware corruption or link training failures?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-rockchip-u=
sbdp-cleanup-v11-0-a149ac60f76c@collabora.com?part=3D11

