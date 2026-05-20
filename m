Return-Path: <devicetree+bounces-300617-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKDlK5uqDWox1QUAu9opvQ
	(envelope-from <devicetree+bounces-300617-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 14:35:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C95358DC7E
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 14:35:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 487063010EE0
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 12:32:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 688A83DD53B;
	Wed, 20 May 2026 12:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnqYFKVC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E180373BE0
	for <devicetree@vger.kernel.org>; Wed, 20 May 2026 12:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779280347; cv=none; b=UP+q/oVGfoJztjBsdjagogxdwiSljhjaMNbmrieXczqeivmoStRHJEb2Fpy42Y0wVsPgcoPXZC8qtxaN+lguaefsv+tzyk24KPshecRNE7Y+N6oHShwHhdoxONVCtpDwYZ2MD9Skcrhf6O/UbEaKE0bmdQd+rP8JpeG5e2oXpno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779280347; c=relaxed/simple;
	bh=A/yHZX2IBqXiZgYerJ4DAcH7PdLXGVb+lvkeocA5cVo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Vk03oM6qTkl2Wa5+6pnXbieFZ++8NWt6vmkj8k7zDH5pN1UOe3v0S0Lovts+vNnK5ckl1wmldmCMNhD+nGYybQ1RaHZzW+B1+9ZAIwc7AQoE5LoqSCLkc+Yp+pojByOfRySsV3CjmLrITuuaAMhSb6Yp49xmvCodDOfJo3liHAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnqYFKVC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A52731F000E9;
	Wed, 20 May 2026 12:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779280346;
	bh=eo/4EYoBjeQQUHJXsNKIbQTSU0gKddxfMvMAXZdeS+0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mnqYFKVCSbvR/khuDuB8yn54Z/MN7+7ljPfNaXsJ1JEKMiYlNEl3Pol9b5Gx1SFw8
	 iLx7jVjhTcTl0nLwmv0nvEmqKat4+ZYsSexRX42QZqU8rRQmZ5VYXxOck4SruWw7pP
	 UyO/AN2Tb7GiNHKg6UB2Jb8EncS74WphBcCfi/hoPHS2iJqwySic6nYltuUebhMFsW
	 61akXvXqFV8v0TOTyBtV+XYsiAZVCfQmKImzw/Qu7Rju4UtrpcnzejrgXOCTZEUATP
	 noVxVSaOhACDZUhI2htMfk+bWCRyIbyqHPQ5Su9ZjsMEpzeWAOwP5g3w0wRQLrybpG
	 LL+WWB14TurAw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 05/17] media: ti: j721e-csi2rx: allocate DMA channel
 based on context index
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rishikesh Donadkar" <r-donadkar@ti.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260520120022.539913-6-r-donadkar@ti.com>
References: <20260520120022.539913-6-r-donadkar@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 May 2026 12:32:25 +0000
Message-Id: <20260520123225.A52731F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-300617-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,ti.com:email]
X-Rspamd-Queue-Id: 1C95358DC7E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Asymmetric teardown order in device removal causes the context to =
be destroyed before the async notifier is unregistered, leading to a Use-Af=
ter-Free.
--

commit 01daa1621b3fa2d32690b729a7af218eef61295a
Author: Pratyush Yadav <p.yadav@ti.com>

media: ti: j721e-csi2rx: allocate DMA channel based on context index

With multiple contexts, there needs to be a different DMA channel for
each context. Earlier, the DMA channel name was hard coded to "rx0" for
the sake of simplicity. Generate the DMA channel name based on its index
and get the channel corresponding to the context.

> diff --git a/drivers/media/platform/ti/j721e-csi2rx/j721e-csi2rx.c b/driv=
ers/media/platform/ti/j721e-csi2rx/j721e-csi2rx.c
> index 4adfae425f192..c781b312cea82 100644
> --- a/drivers/media/platform/ti/j721e-csi2rx/j721e-csi2rx.c
> +++ b/drivers/media/platform/ti/j721e-csi2rx/j721e-csi2rx.c
> @@ -1036,9 +1036,11 @@ static int ti_csi2rx_init_dma(struct ti_csi2rx_ctx=
 *ctx)
>  	struct dma_slave_config cfg =3D {
>  		.src_addr_width =3D DMA_SLAVE_BUSWIDTH_16_BYTES,
>  	};
> +	char name[5];
>  	int ret;
> =20
> -	ctx->dma.chan =3D dma_request_chan(ctx->csi->dev, "rx0");
> +	snprintf(name, sizeof(name), "rx%u", ctx->idx);
> +	ctx->dma.chan =3D dma_request_chan(ctx->csi->dev, name);
>  	if (IS_ERR(ctx->dma.chan))
>  		return PTR_ERR(ctx->dma.chan);
> =20

[Severity: High]
This isn't a bug introduced by this patch, but I noticed a potential
use-after-free regression regarding context cleanup during device removal
that was not fixed by subsequent commits in this patch series.

In ti_csi2rx_remove(), ti_csi2rx_cleanup_ctx() is called before
ti_csi2rx_cleanup_notifier():

drivers/media/platform/ti/j721e-csi2rx/j721e-csi2rx.c:ti_csi2rx_remove() {
	...
	for (i =3D 0; i < TI_CSI2RX_NUM_CTX; i++)
		ti_csi2rx_cleanup_ctx(&csi->ctx[i]);

	ti_csi2rx_cleanup_notifier(csi);
	...
}

If a subdevice probes concurrently and triggers the async notifier completi=
on
callback, the callback will attempt to register video devices for contexts
that have already had their resources (such as mutexes, DMA channels, and
vb2_queues) destroyed by ti_csi2rx_cleanup_ctx().

If userspace opens this newly registered video node, it will access freed
memory and destroyed locks, which could result in a use-after-free or memory
corruption.

Should the async notifier be unregistered before cleaning up the context
resources to ensure proper synchronization?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260520120022.5399=
13-1-r-donadkar@ti.com?part=3D5

