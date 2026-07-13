Return-Path: <devicetree+bounces-325389-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JIw7Eb+8VGpvqQMAu9opvQ
	(envelope-from <devicetree+bounces-325389-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:23:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BE7749C02
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:23:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=GxNvFjYQ;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325389-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325389-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E34333039F42
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 10:23:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4967F3E8340;
	Mon, 13 Jul 2026 10:23:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1A913E7BA8
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 10:23:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783938191; cv=none; b=bNdAETf/OJ96mMbL0rsiAvOlhlz3pzk7E1i+v8llyuOTVeoIFJaf8noIt4GbECQtcPxSpDT6vAl9mdZbq3ubv4gwRzpO3hqU4D4ypOIY8rvuDB6vip4FLgnXJfKFp4IO9ttbr1ZKT4X8MODQ6TWzXkXTPL7WMCgjUfdg17ppWUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783938191; c=relaxed/simple;
	bh=X8cuIXtopoWc9zCLnT+N8MNhFJHYRABATsbD/+0fiB8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=OSUf+WNfCGOkCPJEZCrmGdLe6vnR54icKRprXT87Z7utOlaWStJ4D6BBbjMkImBMQVR53I04LG4v6kRSL5dEy0nMzDuqYCjdddZADgpxJH3mi68p/YG6QOmCfMplg10VpNAOsve/DPUzdYEBxwTYQp9onBP17Wnrtkz7+aGYZ/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxNvFjYQ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E5BA1F00A3D;
	Mon, 13 Jul 2026 10:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783938189;
	bh=+e3CTCf4aSRG0U8Lx9oR45akZsrFOTfpaOFmTeAii8s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GxNvFjYQBMNljqUutkSilmxnqW8ljZ/R6b6VAhUYglIcsCn5t9koZ/naZX+pnWzUd
	 eqdUUztO4ni07tktCCxEUZMnVF/afQZ1s7JBOsieYWn0g3cEfKZRtJ99HP9qkKroxL
	 K26qKrA6hTKPdR50f+dwtNRpD1+c9fTXTrovhCeMa4/PRJb5Xumk/MZoqB17faGMy1
	 oObRKuMjhl8C+iFzSfNijA/ajIdywOvelUIxEZcVbyP0lqUruVCh0uR6PuO6I8LLQj
	 cN+MZhvf9078KnVXYPJZ1evohkytLWdn2YxSrqUrjmAsZvYHAtZQTw26F+RkvPuSa4
	 c18f3jK425kRg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 08/10] drm/mediatek: mtk_dsi: Enable PM Runtime on
 probe
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org
In-Reply-To: <20260713095837.16590-9-angelogioacchino.delregno@collabora.com>
References: <20260713095837.16590-1-angelogioacchino.delregno@collabora.com>
 <20260713095837.16590-9-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 10:23:08 +0000
Message-Id: <20260713102309.4E5BA1F00A3D@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-325389-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,vger.kernel.org:from_smtp,collabora.com:email,smtp.kernel.org:mid];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B7BE7749C02

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Missing cleanup of DSI host registration on devm_pm_runtime_enable=
() failure.
- [High] The DSI device is never runtime-resumed by mtk_ddp_comp_power_on()=
, leaving its power domain off and causing hardware access faults.
- [High] devm_pm_runtime_enable() is called too late in the probe sequence,=
 creating a race condition with DRM device binding.
--

--- Patch [8]: [PATCH v2 08/10] drm/mediatek: mtk_dsi: Enable PM Runtime on=
 probe ---
commit a3706ccca44411c23c1950cb6ce7edfa10269c16
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

drm/mediatek: mtk_dsi: Enable PM Runtime on probe
   =20
Enable PM Runtime at the end of mtk_dsi_probe() so that the
mediatek-drm mtk_ddp_comp_power_on() function is able to do
pm_runtime_resume_and_get() and, analogously, the function
mtk_ddp_comp_power_off() to pm_runtime_put() for the DSI
device.
   =20
This makes sure that the power domains for the DSI IP are
turned on and off when necessary.
   =20
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>

> Enable PM Runtime at the end of mtk_dsi_probe() so that the
> mediatek-drm mtk_ddp_comp_power_on() function is able to do
> pm_runtime_resume_and_get() and, analogously, the function
> mtk_ddp_comp_power_off() to pm_runtime_put() for the DSI
> device.

[Severity: High]
Does mtk_ddp_comp_power_on() actually get called for the DSI device?

Looking at mtk_crtc_atomic_enable(), it only powers on the first component =
in
the pipeline:

drivers/gpu/drm/mediatek/mtk_crtc.c:mtk_crtc_atomic_enable() {
    ...
    struct mtk_ddp_comp *comp =3D mtk_crtc->ddp_comp[0];
    ...
    ret =3D mtk_ddp_comp_power_on(comp);
    ...
}

Since the DSI device is an encoder/bridge at the end of the pipeline (e.g.,
ddp_comp[6]), it won't be resumed here, leaving it in RPM_SUSPENDED state.
Will this cause hardware access faults when DSI registers are subsequently
accessed?

> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediate=
k/mtk_dsi.c
> index 5af44c13bd5ac..5fbaa7d580d35 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -1684,6 +1684,10 @@ static int mtk_dsi_probe(struct platform_device *p=
dev)
>  	dsi->bridge.of_node =3D dev->of_node;
>  	dsi->bridge.type =3D DRM_MODE_CONNECTOR_DSI;
> =20
> +	ret =3D devm_pm_runtime_enable(dev);
> +	if (ret)
> +		return ret;

[Severity: High]
If this returns early, will it leak the DSI host registration?

Earlier in mtk_dsi_probe(), mipi_dsi_host_register(&dsi->host) adds the host
to a global list. Since there is no mipi_dsi_host_unregister() call on this
error path, and the devres-managed mtk_dsi structure will be freed, does th=
is
leave a dangling pointer in the MIPI DSI host list that could lead to a
use-after-free?

[Severity: High]
Is it safe to enable PM runtime after registering the DSI host?

By calling mipi_dsi_host_register() earlier in the function, the DSI host
becomes visible to dependent panel drivers that may probe synchronously:

mtk_dsi_probe()
  mipi_dsi_host_register()
    -> panel probe triggers
      mipi_dsi_attach()
        mtk_dsi_host_attach()
          component_add()
            -> DRM master bind triggers if all components are ready

Since devm_pm_runtime_enable() hasn't executed yet, PM runtime isn't ready
when the display pipeline starts initializing. Would it be better to move
devm_pm_runtime_enable() before mipi_dsi_host_register() to avoid this race?

> +
>  	return 0;
>  }
>

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713095837.1659=
0-1-angelogioacchino.delregno@collabora.com?part=3D8

