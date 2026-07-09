Return-Path: <devicetree+bounces-323620-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KSdlAl59T2oziAIAu9opvQ
	(envelope-from <devicetree+bounces-323620-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:52:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6569D72FE45
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:52:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="R/jW8wrv";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323620-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323620-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 18853307AF06
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 10:47:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 283383FFADA;
	Thu,  9 Jul 2026 10:47:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF003F7A88
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 10:47:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783594064; cv=none; b=eF4pO3dA3TZCygpcQeuOge0TYtaKMBz5EGsPA/s2yMN7oP4Fio6ImiXtGgcM7mQZcqRykFrwUJmE3WMl6OhejjdPxiVLWjmcTZnW4u+Gu9syTCBCwhMDQCLJFDRgeqRE7lfeJI1UynJ08IBwcCRoDh8RdLzknIJMFJgg/EnYmmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783594064; c=relaxed/simple;
	bh=kUawqPO6xoT/lhqVwxW0SjQsE5u6MZjKe/+SqApHAfM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=LclgKwJpjJqeKdNQmQvyBkp0rGIDLiYqfitySkmclAPIlS7wW6iqF26QJ0jyQUkp3QZGG53JJ76srK1AJbz9ltwFX6HkXdU9iND40QEp0KECwXcswomYMVQat+tkhsGtmBGJsP5Gy6I6krRABvnZ+pPh4LuJF1/kBVjTaMbmOnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/jW8wrv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5487A1F000E9;
	Thu,  9 Jul 2026 10:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783594062;
	bh=4gdq3iURDqADJ4o8X5+XR8dL0ApUrHFEcU005U5spLs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=R/jW8wrvbcHxepcTKDfgBf71Ly3r6TA7FwXslwahauBebguCw27YR4JKqekCtg3kN
	 C7tJQqTm9AF7I0UE4LwFJchDWYX22TVOJ7a9lJkY2w+9FCfBLq0IboqsQp7g0P82+A
	 WfxoWyhOsL8eY92upSR5Wn4MkYh1K9YS1WKLXyZgR5y8EbHy163QJDUEyU4MK2VaVW
	 zZiyleoOkpZpPX2JPu6aMR+DiGsRFCFVbMbu9rqOqxPnPIYRTZoOC0VmsVkz+mnJIX
	 hlLK3cYNBslhzkS1czyh50asSFxCoSpJakVORZwxXgezTCjdzaUxqYlVj2p6RfL1FT
	 Q+/XjvvtJY9Nw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 08/11] drm/mediatek: mtk_dp: Move max link rate to
 SoC specific data
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260709103431.46616-9-angelogioacchino.delregno@collabora.com>
References: <20260709103431.46616-1-angelogioacchino.delregno@collabora.com>
 <20260709103431.46616-9-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 10:47:41 +0000
Message-Id: <20260709104742.5487A1F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-323620-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,collabora.com:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6569D72FE45

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] mtk_dp_bridge_mode_valid() uses the SoC's absolute maximum link ra=
te for mode validation instead of the negotiated limit, leading to unsuppor=
table display modes being accepted.
--

--- Patch [8]: [PATCH v3 08/11] drm/mediatek: mtk_dp: Move max link rate to=
 SoC specific data ---
commit 47b5711a6d2bc56c41f2725702c27dbf19ea9ba4
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
drm/mediatek: mtk_dp: Move max link rate to SoC specific data

This patch moves the maximum link rate to SoC specific data instead of
statically assigning it. This is in preparation for adding support for the
MT8196 eDP IP which supports a higher maximum link rate.

> diff --git a/drivers/gpu/drm/mediatek/mtk_dp.c b/drivers/gpu/drm/mediatek=
/mtk_dp.c
> index cabfc833c0a80..ea90462b26f5e 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dp.c
[ ... ]
> @@ -1469,7 +1470,7 @@ static void mtk_dp_initialize_priv_data(struct mtk_=
dp *mtk_dp)
>  {
>  	bool plugged_in =3D (mtk_dp->bridge.type =3D=3D DRM_MODE_CONNECTOR_eDP);
> =20
> -	mtk_dp->train_info.link_rate =3D DP_LINK_BW_5_4;
> +	mtk_dp->train_info.link_rate =3D mtk_dp->data->hw_max_link_rate;

[Severity: High]
This is a pre-existing issue, but does setting mtk_dp->train_info.link_rate
to the SoC's absolute maximum bypass the board-level and sink limits during
mode validation?

In mtk_dp_bridge_mode_valid(), the available bandwidth is calculated using
the unbounded mtk_dp->train_info.link_rate:

	u32 rate =3D drm_dp_bw_code_to_link_rate(mtk_dp->train_info.link_rate) *
		   lane_count_min;

Since mtk_dp_parse_capabilities() parses the sink's DPCD capabilities into
rx_cap but doesn't update train_info.link_rate, this bandwidth calculation
appears to ignore both the board-level limit (mtk_dp->max_linkrate) and the
sink's negotiated limit (rx_cap).

Because the actual link training will cap the rate to the limits, could this
cause mtk_dp_bridge_mode_valid() to erroneously accept unsupportable
high-bandwidth modes, resulting in display corruption or black screens when
those modes are sent over a lower-bandwidth trained link?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709103431.4661=
6-1-angelogioacchino.delregno@collabora.com?part=3D8

