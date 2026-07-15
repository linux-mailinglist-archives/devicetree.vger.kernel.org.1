Return-Path: <devicetree+bounces-326947-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +ZYYK3N6V2qyOwEAu9opvQ
	(envelope-from <devicetree+bounces-326947-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:17:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 281D575E018
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:17:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WERkBgi9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326947-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-326947-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1F8B83034B41
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:16:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CD68453498;
	Wed, 15 Jul 2026 12:16:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA50A44B663
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 12:16:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784117773; cv=none; b=IorW0pAi2kL4N6nDFygwhuBDeFbvBt2EYArGaFs2aegF4WCAuEUipAEIRe+YA3uC2VcWCDqk2OOhuUDBXFvvP2oN1rLnKUM7+mf1satVV0DjaFc+dVuHsLZS3DyGU4Q3oipqxHX8CNw+hMcT/LEo5HP3wIZBWCUuhmZoO6VJEWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784117773; c=relaxed/simple;
	bh=QxzK8XXntq2R1kM8gdqpulsQjVgmjcKiLADzEDk75U0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=RFPaEVf7Egq/zxJdgnBUUbA4qWlx600p0YYt713Elk33gpLduoXURt6uASISxIQaX3vFNLJqZ+oG7r4pMKXM0VGP4te/VfdgHEI7X0HOZJQKAnHicrbsJYVVFBGUZo59z7C2SKpTlmK8joAx368PRUM++KVi4W7yfrcrfrNN+Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WERkBgi9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 420601F000E9;
	Wed, 15 Jul 2026 12:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784117771;
	bh=Aju1Nm/1Oz33HHPZzL+hjfKIwC7EYZvZoblTL7P+vPI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WERkBgi9UzGHznyTGWlVsWqQbuRGdVtr/BEPBuyCa9LQ5gP/G8qTjdy+o+WD2ukvs
	 46fq9j1gkoj1WpVAmMcH6z5+PNxy5+6hl0l6R/mv5YI9iVOqVbT1KOZjUyd5JQhdAB
	 03vogw+Lm760nzS043H/y0O7J/jugOjSt4P2umEB3AeiXDsMtE+bBKBas1KTdJ6rym
	 ETfQrbIbD6lgZRtNL4cj9M5yLQSq93kGSgMct4/tb2Ae9ZDGSncqw2cONBBYT5/stm
	 xKbOaxuag/cw8UP+GDtXFnUeOLRAQ85SjzJw8igMie4HetKPvFV0UeCLD7SVA8XQ9y
	 3EHcG0YSp5e9w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 09/11] drm/mediatek: mtk_dsi: Enable PM Runtime on
 probe
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260715114916.19690-10-angelogioacchino.delregno@collabora.com>
References: <20260715114916.19690-1-angelogioacchino.delregno@collabora.com>
 <20260715114916.19690-10-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 12:16:10 +0000
Message-Id: <20260715121611.420601F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-326947-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,smtp.kernel.org:mid,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 281D575E018

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Critical] Enabling PM runtime causes a kernel panic because the DSI devi=
ce is never resumed, leaving its power domain off during register access.
--

--- Patch [9]: [PATCH v5 09/11] drm/mediatek: mtk_dsi: Enable PM Runtime on=
 probe ---
commit a4d6ef16908de6080f4fae3e792889c6f09b7a22
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

drm/mediatek: mtk_dsi: Enable PM Runtime on probe

This commit enables PM runtime for the Mediatek DSI device during probe.
It assumes the display pipeline's power-on functions will handle resuming
and suspending the DSI device to manage its power domains.

> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediate=
k/mtk_dsi.c
> index 4d8a02cbee385..dc0c4e867179c 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -1733,6 +1733,10 @@ static int mtk_dsi_probe(struct platform_device *p=
dev)
>  	if (ret)
>  		return dev_err_probe(&pdev->dev, ret, "Failed to request DSI irq\n");
> =20
> +	ret =3D devm_pm_runtime_enable(dev);
> +	if (ret)
> +		return ret;

[Severity: Critical]
Will this cause a kernel panic when the DSI registers are accessed later?

The commit message indicates that mtk_ddp_comp_power_on() will handle
resuming the DSI device. However, looking at the display initialization,
mtk_crtc_atomic_enable() only powers on the first component in the pipeline:

drivers/gpu/drm/mediatek/mtk_crtc.c:mtk_crtc_atomic_enable() {
        ...
        struct mtk_ddp_comp *comp =3D mtk_crtc->ddp_comp[0];
        ...
        ret =3D mtk_ddp_comp_power_on(comp);
        ...
}

Since ddp_comp[0] is typically an OVL or RDMA component rather than the DSI,
the DSI device is never resumed and remains in the RPM_SUSPENDED state
with its power domain off.

When mtk_dsi_poweron() is subsequently called, it attempts to access the
suspended hardware registers:

drivers/gpu/drm/mediatek/mtk_dsi.c:mtk_dsi_poweron() {
        ...
        mtk_dsi_enable(dsi);

        /* Bypass shadow and force commit only if the register is present */
        if (data->reg_adv[DSI_SHADOW_DEBUG])
                writel(FORCE_COMMIT | BYPASS_SHADOW,
                       dsi->regs + data->reg_adv[DSI_SHADOW_DEBUG]);

        mtk_dsi_reset_engine(dsi);
        mtk_dsi_phy_timconfig(dsi);
        ...
}

Does mtk_dsi_poweron() or an earlier path need to call
pm_runtime_resume_and_get() directly before accessing these registers to
prevent a synchronous external abort?

> +
>  	ret =3D mipi_dsi_host_register(&dsi->host);
>  	if (ret < 0)
>  		return dev_err_probe(dev, ret, "Failed to register DSI host\n");

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260715114916.1969=
0-1-angelogioacchino.delregno@collabora.com?part=3D9

