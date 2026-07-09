Return-Path: <devicetree+bounces-323702-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fulnAc2LT2qrjQIAu9opvQ
	(envelope-from <devicetree+bounces-323702-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:53:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E1D730B3D
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:53:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QB+2oykV;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323702-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-323702-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C03563004078
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 11:53:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EA70416CEF;
	Thu,  9 Jul 2026 11:53:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E0EE41325F
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 11:53:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783598009; cv=none; b=MiucsXuANCWyqFkIG7g82RlAVtp8yPoMXipwc63Iqo6ALjI+lemOI9+ne6RWlGJUBRblaa3fAg1x11xFpIl2JjxdwKDHT9bazxIBgV2BAiKMKdWpUm9+BmY5uMFigQRpzxq2xyE8o3tQRKJvOO0Ndlfj34ldcdYRrKvvrarRwuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783598009; c=relaxed/simple;
	bh=5lKLHWci4lXSGS/0U0xzyDdaHDz/ad3Byxyi37S/4Ls=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=d+oZaqOR/UUWbFR8RH24AbTn+jDjLJOxl6at1bLgpXCvuoINCAe03Rkav3ocA0D92t/k0UF6gsRblCJF2PhoBCVeMrNo4Ki7r6/xfFxPlP+6aYg7AMceuoCNE6Avv5Mb2L9XAI2Et/MP9qr0jPWYUI/4yyeB7DKa+kEJkUpru+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QB+2oykV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 024BE1F00A3D;
	Thu,  9 Jul 2026 11:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783598008;
	bh=jGsQI0+o9gXc0IEdU270aPtgUVaILoqtrwT5UP1xmd4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QB+2oykVPGiYN5sfBX2hZZHjyU6yIS/xXDzvNMM03HYXDNp6i7+dQgdN4PPlZtLs9
	 qejLGEzICsxBwjDFMIeCScl4+vz+NLKwFhmZfrrfa4h884/wUT1YrTG78pkQmEEYlC
	 BG+DM52MhhX6fCFnNn846ou1fkz+bBVi4Q63XsuzZifIbFYmJV9TMshdLQ0SEHdhVc
	 gnXAMje1GM+lCjrA2iCVLuPpwkVA4Mc/p4gZ7H3Vn74W47AAdre+RG5gvMBL/cE23e
	 YPleKLrlsC2TuI4jCM4e4FJhdQ16vIJW0voe67GwJ0X8hOQt+6YJBv/P6tg7OAj9mW
	 DFjczvSSPDPjA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 09/12] drm/mediatek: mtk_dp: Move max link rate to
 SoC specific data
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org
In-Reply-To: <20260709113148.49090-10-angelogioacchino.delregno@collabora.com>
References: <20260709113148.49090-1-angelogioacchino.delregno@collabora.com>
 <20260709113148.49090-10-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 11:53:27 +0000
Message-Id: <20260709115328.024BE1F00A3D@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-323702-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 04E1D730B3D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] For eDP, mode validation and bus format negotiation incorrectly us=
e the SoC's hardware maximum link rate rather than considering the board's =
device tree limit and the sink's DPCD capabilities.
--

--- Patch [9]: [PATCH v4 09/12] drm/mediatek: mtk_dp: Move max link rate to=
 SoC specific data ---
commit 77698e671819e17e65d99b3fb9908f2be60bc613
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
drm/mediatek: mtk_dp: Move max link rate to SoC specific data

This commit moves the hardware maximum link rate from static initialization
to SoC-specific data to prepare for supporting MT8196 eDP IP which has a
higher maximum link rate.

> diff --git a/drivers/gpu/drm/mediatek/mtk_dp.c b/drivers/gpu/drm/mediatek=
/mtk_dp.c
> index e2a6001fc0ccc..ea970a9bfe936 100644
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
This isn't a bug introduced by this patch, but does this blind initializati=
on
cause mode validation to falsely accept unsupported high-bandwidth modes?

Because mtk_dp_bridge_mode_valid() and=20
mtk_dp_bridge_atomic_get_input_bus_fmts() are called before atomic_enable()=
=20
during mode enumeration, they evaluate available bandwidth using this=20
un-negotiated train_info.link_rate:

mtk_dp_bridge_mode_valid() {
        ...
        u32 rate =3D drm_dp_bw_code_to_link_rate(mtk_dp->train_info.link_ra=
te) *
                   lane_count_min;
        ...
}

For eDP connections, actual link training is deferred until=20
mtk_dp_bridge_atomic_enable(). Using the un-negotiated rate here ignores th=
e=20
board's device tree limit (max-linkrate-mhz) and the sink's DPCD capabiliti=
es.

Can this result in configuring a display mode that exceeds the actual link
bandwidth, leading to link training failures or black screens, and failing
to fall back to bandwidth-saving formats like YUV422?

>  	mtk_dp->train_info.lane_count =3D mtk_dp->max_lanes;
>  	mtk_dp->train_info.cable_plugged_in =3D plugged_in;
>

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709113148.4909=
0-1-angelogioacchino.delregno@collabora.com?part=3D9

