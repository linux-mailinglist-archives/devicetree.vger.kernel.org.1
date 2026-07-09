Return-Path: <devicetree+bounces-323634-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hLcOOvl+T2qkiAIAu9opvQ
	(envelope-from <devicetree+bounces-323634-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:59:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDD272FF8A
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:59:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=MkZeryl4;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323634-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323634-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5B1B9303B9E4
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 10:57:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8047410D01;
	Thu,  9 Jul 2026 10:55:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E68403FF889
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 10:55:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783594543; cv=none; b=WGrfXMzXrMfejnAa1J25VXwsaV56yU3/qIrgCu1noUdLjSzGGtNjx7ADweRJF7ADo3tkXGRHj2ELb5Y5XXnc4Lk+RamuBMKfV+mTsBsZV6BhIjyofENpmUagT8o5EnWeSaVtP9syC9E4qtO1LG8bywoH5B4rJYFwBo0npASSdFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783594543; c=relaxed/simple;
	bh=Ph2gK7pzc+6EmP9UsvUEduuAZmfeaBdA2dHqAUb6V8k=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=MpoeK59yLzotFAutNvALRuEbkAtKvgGktlFxR1F/6gD5bFcBdOQJXWJ2kFYw28RZJ3MuGTajUOu+LnrMauSgvfR+EMEtpCGShVQC7lTc9XzrPmiRl6WcQiJwgKwBY8HKYsK9Ka14k6n0cnScrRLZTVrmVAp80TLiq6e4otfzxDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MkZeryl4; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C9881F000E9;
	Thu,  9 Jul 2026 10:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783594541;
	bh=tf9oZZKqSghvS3L8/u3qi7e6/W2zTuEntclukppiZA0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MkZeryl46GovW7lLV7wOWw0Z6glrjgkXLzJ8t0+RixHqgRL9c36uDh5Tki1cXIthL
	 YBlVAV53A8VCgTu7s3uwB3VYDBw8i75hFL8L9R54E1vi8vznjlt9u+P6P1iaa7eLVm
	 Vnq/IWh7C32yXcanqZsce6A2nqx/PnuSxZUOvsMztlo0K0MYIGki+qBlMhHgwSsq5S
	 2iwNgMEWo5IGU/lpZ99UwDp96GU2pKQWXAFegwYYhQqdq1nM44i+/QS/XfbAMT3Iq0
	 szEY/VLzlgOOhH/J0W0BNwMZ4vIEQ55R7kRYNX4TvqftMdzFHr9xGZNl2G2pkeJqFc
	 ituXFAZ8LFdgA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 06/11] drm/mediatek: mtk_dp: Use PHY API for PHY
 power sequences
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org
In-Reply-To: <20260709100617.42583-7-angelogioacchino.delregno@collabora.com>
References: <20260709100617.42583-1-angelogioacchino.delregno@collabora.com>
 <20260709100617.42583-7-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 10:55:41 +0000
Message-Id: <20260709105541.7C9881F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-323634-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,collabora.com:email,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8BDD272FF8A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Race condition during driver removal allows the HPD interrupt to r=
e-arm a deleted timer, causing a Use-After-Free.
--

--- Patch [6]: [PATCH v2 06/11] drm/mediatek: mtk_dp: Use PHY API for PHY p=
ower sequences ---
commit 7b2bea0e460b138dc02e659a05248e8bd5c96d86
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

    drm/mediatek: mtk_dp: Use PHY API for PHY power sequences
   =20
    The PHY driver has gained support for .power_on() and .power_off()
    callbacks. This commit updates the driver to use the API provided
    phy_power_on() and phy_power_off() functions instead of writing into
    PHY registers from this driver.

> diff --git a/drivers/gpu/drm/mediatek/mtk_dp.c b/drivers/gpu/drm/mediatek=
/mtk_dp.c
> index 5c73572d153b5..b4cb1996a3314 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dp.c

[ ... ]

[Severity: High]
This isn't a bug introduced by this patch, but is there a race condition
during driver removal that could lead to a Use-After-Free?

In mtk_dp_remove(), the driver deletes the debounce_timer but does not disa=
ble
the device-managed hardware IRQ:

drivers/gpu/drm/mediatek/mtk_dp.c:mtk_dp_remove() {
	...
	if (mtk_dp->data->bridge_type !=3D DRM_MODE_CONNECTOR_eDP)
		timer_delete_sync(&mtk_dp->debounce_timer);
}

If an HPD interrupt fires between mtk_dp_remove() returning and the devres
cleanup phase that frees the IRQ, the interrupt handler executes and can
re-arm the timer:

drivers/gpu/drm/mediatek/mtk_dp.c:mtk_dp_hpd_event_thread() {
	...
	if (status & MTK_DP_THREAD_CABLE_STATE_CHG) {
		...
		if (!mtk_dp->train_info.cable_plugged_in) {
			...
			mod_timer(&mtk_dp->debounce_timer,
				  jiffies + msecs_to_jiffies(100) - 1);
		}
	...
}

Shortly after, devres frees the mtk_dp structure. When this re-armed timer
subsequently expires, could it access the freed mtk_dp memory and cause
memory corruption?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709100617.4258=
3-1-angelogioacchino.delregno@collabora.com?part=3D6

