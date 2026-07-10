Return-Path: <devicetree+bounces-324654-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9gvHD2BfUWqHDQMAu9opvQ
	(envelope-from <devicetree+bounces-324654-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 23:08:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B194573EA27
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 23:08:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Da5yIo8x;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324654-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-324654-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 70DDB30315F5
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 21:08:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 043F23B27C4;
	Fri, 10 Jul 2026 21:08:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 992CE3B3880
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 21:08:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783717721; cv=none; b=W8Aio++ZspIAdPOO2W6Enij/tdeF3ujVOQiEC6UrNrftr7UKUxelv/lGFPJoyfZzWdFE9IEkb97YkYCj/lhiCxlFElhr0jZi1Ahvq4FMFq+GwRkSlIsKOEgcD1e1TpcY9rCWpGmFGKPZiRVouU1sKHs3IiX2yeA6r7k9XlA4VfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783717721; c=relaxed/simple;
	bh=hOdkAiyG++LYJqdhz35QXst+EPLZ+5FkOYE2maGanVE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lsku0CJG/7dX11qKZxb+Pw76EKdOrFyYWGVes8Xfy8lTTwjohbNRgps6AvIWFGC0KkUQHVX8b1OkDbtYn0QdBNbKR7WAaCMia89z5V3Nbo+q49033FxSZBpG3UCUb9ytTkZAlpxkgtr4YL42/A9vi9jnlxn3L7abUaeV9pnRu5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Da5yIo8x; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD6821F00A3A;
	Fri, 10 Jul 2026 21:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783717720;
	bh=5znRkjOiaWb6d47mql8YBzFgqWg2ATySWumk0S3yWUw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Da5yIo8xUc+aAVAQ5HjXDu9LSmfZEiDjGEfsz7kfTG+a3hWkaLrAiitCV60LllFif
	 L5dvlt7zh8L1wyrktuGSWJ70iQle00McyCyc+K1c0eeBo4aCfsr8Fl+13esFkTUON5
	 iVp1bujA2ADwmT4yIr2IS6cIPrcgE3BJuHJ+qjgbCgsZaFH6NhPbouc9nuKMFp8SFT
	 q5Z9U5fSJPe2HnrRyQ0/TkZtOXPYOtsm6AetqruWD3EhcQIlL/A3/8gXpDWfy1El3C
	 ECzY2IWbWPOCrvW+M9IyxvEufGkSFqtAFeiQb11rLxgKlxNxhAmQDlMuw6UefmY/jC
	 /O1DuXGct5WRA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 12/36] phy: rockchip: usbdp: Limit DP lane count to
 muxed lanes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-12-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
 <20260710-rockchip-usbdp-cleanup-v12-12-8b41a9a9bef0@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 21:08:39 +0000
Message-Id: <20260710210839.BD6821F00A3A@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-324654-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:neil.armstrong@linaro.org,m:conor+dt@kernel.org,m:linux-phy@lists.infradead.org,m:olteanv@gmail.com,m:vkoul@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,linaro.org,lists.infradead.org,gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,collabora.com:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B194573EA27

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Missing lock / data race on shared driver state during PHY configu=
ration
- [High] Incomplete fix: DP lane bounds check is bypassed during voltage-on=
ly configurations
--

--- Patch [12]: [PATCH v12 12/36] phy: rockchip: usbdp: Limit DP lane count=
 to muxed lanes ---
commit f343affd6c4a3599ea8955fa27e07174fef51eb5
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

phy: rockchip: usbdp: Limit DP lane count to muxed lanes

This patch adds a check to ensure the DP controller does not request more
lanes than the PHY is configured to support. This protects against USB3
usage corruption.

Link: https://lore.kernel.org/linux-phy/20260612165546.98E1F1F000E9@smtp.ke=
rnel.org/

> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rock=
chip/phy-rockchip-usbdp.c
> index c4d62b234ea80..b172ce6a722ee 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -1099,6 +1099,9 @@ static int rk_udphy_dp_phy_verify_link_rate(struct =
rk_udphy *udphy,
>  static int rk_udphy_dp_phy_verify_lanes(struct rk_udphy *udphy,
>  					struct phy_configure_opts_dp *dp)
>  {
> +	if (dp->lanes > udphy->dp_lanes)
> +		return -EINVAL;
> +

[Severity: High]
This is a pre-existing issue, but is there a data race when accessing
udphy->dp_lanes here?

It appears this lockless read creates a TOCTOU vulnerability against
concurrent Type-C mode switches. The dw-dp driver invokes link training
concurrently with TCPM Type-C events invoking rk_udphy_typec_mux_set().

Since rk_udphy_dp_phy_configure() and rk_udphy_dp_phy_verify_lanes()
read and write shared variables without acquiring udphy->mutex (only the
generic phy->mutex is held):

drivers/phy/rockchip/phy-rockchip-usbdp.c:rk_udphy_dp_phy_configure() {
        ...
        if (dp->set_voltages) {
                for (i =3D 0; i < udphy->lanes; i++) {
                        lane =3D udphy->dp_lane_sel[i];
        ...
}

Can this lead to hardware PHY corruption if DRM and TCPM use independent
workqueues with no common lock?

[Severity: High]
This isn't a bug introduced by this patch, but does this new check fully
protect the voltage configuration path?

If the dw-dp driver splits link training and first calls phy_configure()
with set_lanes =3D true, it caches dp->lanes into udphy->lanes.=20

If it later calls it with set_voltages =3D true and set_lanes =3D false, th=
is
bounds check in rk_udphy_dp_phy_verify_lanes() is bypassed.

If a Type-C event reduces the available udphy->dp_lanes before the second
call, the set_voltages block iterates up to the cached udphy->lanes:

drivers/phy/rockchip/phy-rockchip-usbdp.c:rk_udphy_dp_phy_configure() {
        ...
        if (dp->set_voltages) {
                for (i =3D 0; i < udphy->lanes; i++) {
                        lane =3D udphy->dp_lane_sel[i];
        ...
}

Could this override active USB3 lanes and corrupt the USB3 PHY state?

>  	switch (dp->lanes) {
>  	case 1:
>  	case 2:

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710-rockchip-u=
sbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com?part=3D12

