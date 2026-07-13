Return-Path: <devicetree+bounces-325542-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2gnPGuzmVGpZgwAAu9opvQ
	(envelope-from <devicetree+bounces-325542-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 15:23:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BE87F74B88F
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 15:23:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=P6KxQ0cn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325542-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325542-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3B23A3005D16
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:15:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B68C641F7EA;
	Mon, 13 Jul 2026 13:15:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8922741C2F7
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 13:15:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783948534; cv=none; b=cKJWeBf81I/OFI9SojVKDDsAS6a90jeBzk+3EVOB1+PeAaeVY5D93qKpz3PCH4pNO5Qzyvb235a1aFqjLGFX8oVnN+MSK2ASVreRgzYqoEqu/9bTmQdhidex6dLdb2LLyeeXvo7Zouw4J9BaFaGDt+AvevrU7I3oU8oO+UMigfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783948534; c=relaxed/simple;
	bh=2nvby13gYKHa5g0Gy15IIB8ilwmQiHcNkUTit3xCxro=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qb4ObTSsP9alVg9CCezmegUgVMMg7VXc7xp0zRj+qzwL1O/BdttnBIqH+cDIBkRYGVG1Ahdb3b6sJtUyCf/ti/aPclPPpMs4AH7dYAcLvpTw0tk7hrMLNii/4CeORMW1B5pzOHU1k4M2BeGXCHXUZxXNJ29qtIvWWPUfDHeu/Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6KxQ0cn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DA851F000E9;
	Mon, 13 Jul 2026 13:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783948533;
	bh=Dhkcbz+N3wYEK/ZSy8CeOucjKFKqLJRhFxjxDlvWE8g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=P6KxQ0cn6hbGJvDNpwrpGEMlA1y6OrX/6OEIzkAcMiPmN8etkPmsI/fvSD/LavCHe
	 KQEUk2XiqypyN15iEVnmW+sGUYSSfpMq1scYEPJ2BxHdQuEQS87oB2AMAbzfo8j2Ra
	 z18Wgixfu/aL5ZGIboklZPEiNsUVO8dJUndAnKNlCCtTyz9Q7u8ZMV4+koBpugCzzV
	 EiMA7ePrweO7xCLlfoXm20wRxfxIypUwphAIuaJjf4pGK6HQJ3npHMohjArmkFhpi6
	 2MI9HSh3gVNLi6DbxTQ2C79yq7olm9izmHNvv5ywDJSwbwWlwOdzFOj5x76GrxDqKv
	 AcoJLeoQQI3EA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 08/10] drm/mediatek: mtk_dsi: Enable PM Runtime on
 probe
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org
In-Reply-To: <20260713130103.34654-9-angelogioacchino.delregno@collabora.com>
References: <20260713130103.34654-1-angelogioacchino.delregno@collabora.com>
 <20260713130103.34654-9-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 13:15:32 +0000
Message-Id: <20260713131533.1DA851F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-325542-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:email,smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BE87F74B88F

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Missing PM Runtime Resume / System Crash
- [Medium] Resource Leak / Async PM Runtime Race
--

--- Patch [8]: [PATCH v3 08/10] drm/mediatek: mtk_dsi: Enable PM Runtime on=
 probe ---
commit b7932646865a258fb9d31cc5baae149e48665e6a
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

drm/mediatek: mtk_dsi: Enable PM Runtime on probe

Enable PM Runtime at the end of mtk_dsi_probe() so that the
mediatek-drm mtk_ddp_comp_power_on() function is able to do
pm_runtime_resume_and_get() and, analogously, the function
mtk_ddp_comp_power_off() to pm_runtime_put() for the DSI
device.

This makes sure that the power domains for the DSI IP are
turned on and off when necessary.

> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediate=
k/mtk_dsi.c
> index 573299f0e63b6..6e1482b201196 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -1716,6 +1716,10 @@ static int mtk_dsi_probe(struct platform_device *p=
dev)
>  	if (ret)
>  		return dev_err_probe(&pdev->dev, ret, "Failed to request DSI irq\n");
> =20
> +	ret =3D devm_pm_runtime_enable(dev);

[Severity: High]
Does this actually resume the DSI device when needed?

The commit message mentions that mtk_ddp_comp_power_on() will handle the
pm_runtime_resume_and_get() for the DSI device. However, looking at
mtk_crtc_atomic_enable(), mtk_ddp_comp_power_on() seems to only be called
for the very first component in the display pipeline:

drivers/gpu/drm/mediatek/mtk_crtc.c:mtk_crtc_atomic_enable() {
	...
	struct mtk_ddp_comp *comp =3D mtk_crtc->ddp_comp[0];
	...
	ret =3D mtk_ddp_comp_power_on(comp);
	...
}

Since DSI is typically an encoder at the end of the pipeline, it appears
it is never passed to this function. Will this lead to the device remaining
in RPM_SUSPENDED, potentially causing synchronous external aborts (crashes)
when DSI hardware registers are accessed later in mtk_dsi_poweron() or
mtk_dsi_host_transfer()?

[Severity: Medium]
Can this lead to a PM domain reference leak during driver unbind?

The commit message notes that mtk_ddp_comp_power_off() handles the
pm_runtime_put() for the DSI device. Because pm_runtime_put() queues an
asynchronous suspend, if the display is disabled during module unload,
the CRTC disable path will queue this async suspend right before
mtk_dsi_remove() executes.

The devres cleanup registered here by devm_pm_runtime_enable() will then
call pm_runtime_disable(), which cancels all pending asynchronous PM work.
Does this leave the device in RPM_ACTIVE and leak the PM domain reference?

> +	if (ret)
> +		return ret;
> +
>  	ret =3D mipi_dsi_host_register(&dsi->host);
>  	if (ret < 0)
>  		return dev_err_probe(dev, ret, "Failed to register DSI host\n");

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713130103.3465=
4-1-angelogioacchino.delregno@collabora.com?part=3D8

