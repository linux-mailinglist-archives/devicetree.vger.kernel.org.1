Return-Path: <devicetree+bounces-300937-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sF0HHUVJDmoM9gUAu9opvQ
	(envelope-from <devicetree+bounces-300937-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 01:52:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FA059CF78
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 01:52:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 08D093104AB4
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 23:33:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE18D3BE14A;
	Wed, 20 May 2026 23:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKBrclEj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83652355F2A
	for <devicetree@vger.kernel.org>; Wed, 20 May 2026 23:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779320027; cv=none; b=pdIuomV+Xhn/GXeSSztawVXa6kTz+0+A5yZHifhuwpxRRwcjIzxpLuNRol3bJkm72Sh/mIyfqmQHh+HYQfK5HTjH3vXmdHYHulYizKy39x0CTAnB3zbr3tndkn8PRwnlxhJQFjEcwdUhZ5w2FsqtebzB4nUBjO3v4Sl6f/pko9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779320027; c=relaxed/simple;
	bh=cjTYJ2S4GVYuucIuUli1Qf7rKs+Ort2Z4DuY62RWKic=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Lv2OTXj4uZ0QgkY+cAcAOKWPEj+/hFhZTFq6+u5nIyBm9tUbZ0InmqKMZ2PbVAL5s1PO4QdexicwuNZmRP9sTjjqSEgrC1dWuY6U76E5Jx5t13YnuplyyU21takAjn+Cw0OxMyLo7KfhUe49BYbs9fg6vxE6AjJ82q86w6sqDNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKBrclEj; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBF031F000E9;
	Wed, 20 May 2026 23:33:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779320026;
	bh=HlwKcJJgi0hcd6lSLK9VSLhik+k8RD8oGmXhFeuSRm8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lKBrclEjPsPxAQKqQI07SEvLuB/FDc1Pjf5te5mD8LKB96dAgzRW7AYs37f/UdtgI
	 qdYJ3Gej++e2IH4cJCLY5UTTVKqc3nsyKXjtaffACnTxcVEh9boPvzRvaQW/h2oyqZ
	 wM8uvogKDnGGTMUk8JKQW43N5BhGms12W2unmTjXxXZXEsbsgDX937rJYAGV6d8JxZ
	 W6/epBtw/R8ZjyC79S4/rgBXB8LTKAI6cgGT5zS9LUcQO6001dzQ4GZhaPS8v21Y4R
	 fKMctTDNR/WNQiUNAKfJ8T6bSQRtF0AnA9lE3slsBL2YfAQBRroVQsC+nm4VAf4iCZ
	 SkohtXPZADedg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 21/28] media: rockchip: rga: share the interrupt when
 an external iommu is used
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?U3ZlbiBQw7xzY2hlbA==?= <s.pueschel@pengutronix.de>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260521-spu-rga3-v7-21-3f33e8c7145f@pengutronix.de>
References: <20260521-spu-rga3-v7-21-3f33e8c7145f@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 May 2026 23:33:45 +0000
Message-Id: <20260520233345.DBF031F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
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
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-300937-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,pengutronix.de:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 02FA059CF78
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [Critical] Accessing hardware registers in the shared interrupt handler w=
hile the device is runtime suspended causes a bus fault and system crash.
- [High] The interrupt handler unconditionally returns `IRQ_HANDLED`, viola=
ting shared interrupt semantics and breaking spurious interrupt detection.

Pre-existing issues:
- [High] Missing early returns after `WARN_ON` checks leads to deterministi=
c NULL pointer dereferences in the interrupt handler.
--

commit d55d317809ea4314d29aae5edd3429021099007b
Author: Michael Olbrich <m.olbrich@pengutronix.de>

media: rockchip: rga: share the interrupt when an external iommu is used

This commit updates the RGA driver to request a shared interrupt when
paired with an external IOMMU, allowing both drivers to share the IRQ line.

> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index e3c99c3f7c5be..cda3cecb1ce8c 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -767,7 +767,8 @@ static int rga_probe(struct platform_device *pdev)
[ ... ]
> -	ret =3D devm_request_irq(rga->dev, irq, rga_isr, 0,
> +	ret =3D devm_request_irq(rga->dev, irq, rga_isr,
> +			       rga_has_internal_iommu(rga) ? 0 : IRQF_SHARED,

[Severity: Critical]
If the external IOMMU triggers an interrupt while the RGA device is idle
and its clocks are disabled via rga_runtime_suspend(), will rga_isr() still
attempt to read the hardware registers?

Since rga->hw->handle_irq(rga) directly reads RGA_INT, could this cause an
external abort or bus fault? Does the ISR need to verify the device's
power state with pm_runtime_active() before accessing registers?

[Severity: High]
With IRQF_SHARED added, does rga_isr() correctly return IRQ_NONE when the
RGA hardware didn't generate the interrupt?

If it unconditionally returns IRQ_HANDLED even when rga->hw->handle_irq(rga)
returns false, could this defeat the spurious interrupt detection mechanism
and lead to lockups during an interrupt storm?

[Severity: High]
This is a pre-existing issue, but does adding IRQF_SHARED make the
WARN_ON(!ctx) check in rga_isr() susceptible to a NULL pointer dereference?

If an IOMMU interrupt fires while RGA is idle and rga->curr is NULL, and
reading gated registers returns 0xFFFFFFFF, handle_irq might incorrectly
return true. Since the WARN_ON(!ctx) lacks an early return, will this
proceed to call v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx) and dereference
the NULL pointer?

>  			       dev_name(rga->dev), rga);
>  	if (ret < 0) {
>  		dev_err(rga->dev, "failed to request irq\n");

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260521-spu-rga3-v=
7-0-3f33e8c7145f@pengutronix.de?part=3D21

