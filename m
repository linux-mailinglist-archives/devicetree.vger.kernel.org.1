Return-Path: <devicetree+bounces-318965-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kikrNXKrRWrGDgsAu9opvQ
	(envelope-from <devicetree+bounces-318965-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 02:06:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E3C6F28D1
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 02:06:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ThBo3ABZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318965-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-318965-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 11C5D30221F6
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 00:06:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49051625;
	Thu,  2 Jul 2026 00:06:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638B3431E64
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 00:06:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782950767; cv=none; b=lDBa49IvREw9Vf+XdCv3ON0acHYrBZyEwRBujmuYQDsYotak72QOfRtR599D3DE3d6KdwBZ4U4J74CmLF7XT66VX8NQdCWSV4JSbj2DRMCIZXDN7PeOSqjipB08pF6i2PiNeFOMLHnRPE4mE7ofv/ZHgiLSVVde/5JS+fVQA0lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782950767; c=relaxed/simple;
	bh=3j1hUFCaSDonQK1tDcef+Sk0h85YMzNgrKp/TEN3JPk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hD18Ag3/cukTvL7qcCVhol34T2JIf/PPrv6Owvx/KrB3cvS/c//AMCqCITwt4/g3CD3V8MWOVARlKVU2/1TpiV+odzYGD1nV/xckUwnHmv6U+/QgvN+6BRhrY8n9+VrYhrqhwSmHIZig1clTao6UNwleLFOW/j2fEyyBTpM7NBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ThBo3ABZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA63C1F000E9;
	Thu,  2 Jul 2026 00:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782950762;
	bh=2ucsyRRJrI9ex/hcluclZIldMZXICSV6DnPiAbJVZPY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ThBo3ABZd+qksnOl0BDBG6lt28gn6R2+z6am37gOcWzQwdIv6GzyFq3uUryWzPtCf
	 ZF1EoOlMU1BAPuiUrdW+Le8Fa8l2w7cWPwbIKR5xiDDO970NcpKv49EWTDIJzIC3Sv
	 gxWmwSbqMIvy/uF6DzTUV/8AkjmNaxBeCU79+XCQvDljbxabeLpXUGp/e43naMnjek
	 PQbBEwUAduKmuhLJ+e07gBaYG20aX3Hk+3rTxhGtsLd/eO2rfBNHOI1CrTFOFdyikr
	 R0SDb1YOkt+s8d4ibpVZCIVfNj/M0kIbEsET+Jj5HtOxnBA7IvA3Vw1NOYXXIBDwK2
	 bx/kS5wgov3Sw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 38/38] phy: rockchip: usbdp: Power optimizations
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, olteanv@gmail.com
In-Reply-To: <20260702-rockchip-usbdp-cleanup-v9-38-e31efbb62d2e@collabora.com>
References: <20260702-rockchip-usbdp-cleanup-v9-0-e31efbb62d2e@collabora.com>
 <20260702-rockchip-usbdp-cleanup-v9-38-e31efbb62d2e@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 00:06:00 +0000
Message-Id: <20260702000601.AA63C1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-318965-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:vkoul@kernel.org,m:linux-phy@lists.infradead.org,m:neil.armstrong@linaro.org,m:devicetree@vger.kernel.org,m:olteanv@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,lists.infradead.org,linaro.org,vger.kernel.org,gmail.com];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 05E3C6F28D1

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] DP-only PHY initialization will always fail with a timeout because=
 `rk_udphy_status_check()` was not updated to use the new `mode` parameter,=
 causing it to poll uninitialized USB PLLs.
--

commit dfd202b9c15655907ae97e937e85e69b72eb2e33
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Power optimizations

This patch changes the initialization routine to request power only
for software requested modes rather than all hardware supported modes.
This reduces wasted power when certain ports are not in use.

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index d056da53cb1c8..7f90f666076c3 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
[ ... ]
> @@ -837,7 +837,7 @@ static int rk_udphy_init(struct rk_udphy *udphy)
>  	udelay(1);
> =20
>  	/*  Step 5: deassert cmn/lane rstn */
> -	if (udphy->hw_mode & UDPHY_MODE_USB) {
> +	if (mode & UDPHY_MODE_USB) {
>  		ret =3D rk_udphy_reset_deassert(udphy, "cmn");
>  		if (ret)
>  			goto assert_resets;

[Severity: High]
Does this cause DP-only initialization to fail with a timeout?

Because rk_udphy_status_check() wasn't updated to take the new mode
parameter, it still checks udphy->hw_mode & UDPHY_MODE_USB:

drivers/phy/rockchip/phy-rockchip-usbdp.c:rk_udphy_status_check() {
	...
	if (udphy->hw_mode & UDPHY_MODE_USB) {
		ret =3D regmap_read_poll_timeout(udphy->pma_regmap, CMN_ANA_LCPLL_DONE_OF=
FSET,
	...
}

If software requests DP-only mode, the USB resets are safely left asserted
here in rk_udphy_init().

However, when rk_udphy_init() later calls rk_udphy_status_check(), it will
still try to poll the uninitialized USB LCPLL because hw_mode still supports
USB. This will inevitably time out after 100ms and cause the entire DP
initialization to abort.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702-rockchip-u=
sbdp-cleanup-v9-0-e31efbb62d2e@collabora.com?part=3D38

