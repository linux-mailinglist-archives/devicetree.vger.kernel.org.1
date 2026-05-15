Return-Path: <devicetree+bounces-298450-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yPDGNM5VB2p7zAIAu9opvQ
	(envelope-from <devicetree+bounces-298450-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 19:20:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC93554D8D
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 19:20:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E563B31DB2E3
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 16:13:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72A973FBB48;
	Fri, 15 May 2026 16:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUiLap8j"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5233F929D
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 16:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778861515; cv=none; b=L28dB6z4YH+m+M0ueeMP2J5uOuh3VeAlnJSN0Ao6ejdlA+HstapD4U+J87T6PSJwIfpd+Fx4M38ATbjjwCCEQKY6ONo3IEXnLxOr9InXxWCiyVEg6yOHwFCHqbdKKzljxIaVJX6o+YndAx1D3CMdN2tWNBkEMe9iwPBeTGEns5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778861515; c=relaxed/simple;
	bh=+wX9CJCWleDvzX2V2jYmbl6Wtx3VAnhUYvdTe77+kVQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=S0XdJ8u0HtDpz3Y+oMN0kc2iKGJGp48FmN+3Q09pKWiH+u0tNYbG1qrRHyu7QeAlPElyfuJKk+2oyNyIhFi/mWFKpHB4aZKNfe11Yjr0gDNmJ9nrEnu53FX0KGwtb6oi5jZIhMtAPxtbu7gg0b38hJTFIrAKCkpflfE3Kjlp/Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUiLap8j; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBA47C2BCB0;
	Fri, 15 May 2026 16:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778861515;
	bh=+wX9CJCWleDvzX2V2jYmbl6Wtx3VAnhUYvdTe77+kVQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=BUiLap8jVFyEfmTWNZLOTdU6gqGTCopBQzs5WrJlJraMzejZOA1xGZvPX16GqqVLE
	 /WqHRWuBMZtyY/C5M7Y9vOV8vIU66tYkdIlVEjeyPXikk2iORTudiVcnXgLPGLgFW9
	 lCbBaMcCzucPCrJSEyHH3KdHoOxZMegVp3hYAcy93P/GtFIfpruoODsBPhtwTQ8qwG
	 GdatEK2Q8yefwYpflUC2JH5kkrIXlmGnlx7bbybkWG/7tnL8pTzxl8gqV/XghNeoux
	 9BacTPh4QNCa+fZ7z4V0jxGJ665gxYc5PMnHg0NsafjDDcu+9yz4LZUgguO4S+KwlL
	 vzzeb6YFuLrQA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 21/28] media: rockchip: rga: share the interrupt when
 an external iommu is used
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?U3ZlbiBQw7xzY2hlbA==?= <s.pueschel@pengutronix.de>
Cc: krzk+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260515-spu-rga3-v6-21-e547152eb9c9@pengutronix.de>
References: <20260515-spu-rga3-v6-21-e547152eb9c9@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 16:11:54 +0000
Message-Id: <20260515161154.BBA47C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 3BC93554D8D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298450-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,pengutronix.de:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [Critical] Accessing hardware registers without ensuring power/clock stat=
e in shared interrupt handler.
- [High] Unconditional `IRQ_HANDLED` return from shared interrupt handler d=
efeats spurious IRQ detection.
- [High] Data race on the `RGA_INT` register due to lockless ISR execution.
- [High] Early IRQ registration introduces a NULL pointer dereference windo=
w.
--

commit 9f93e8eca57c7b5671e83f97e16709aa91786176
Author: Michael Olbrich <m.olbrich@pengutronix.de>

media: rockchip: rga: share the interrupt when an external iommu is used

The RGA3 and the corresponding iommu share the interrupt. So in that
case, request a shared interrupt so that the iommu driver can request
it as well.

> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index e3c99c3f7c5be..cda3cecb1ce8c 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -767,7 +767,8 @@ static int rga_probe(struct platform_device *pdev)
>  		goto err_put_clk;
>  	}
> =20
> -	ret =3D devm_request_irq(rga->dev, irq, rga_isr, 0,
> +	ret =3D devm_request_irq(rga->dev, irq, rga_isr,
> +			       rga_has_internal_iommu(rga) ? 0 : IRQF_SHARED,
>  			       dev_name(rga->dev), rga);

By enabling IRQF_SHARED, the rga_isr handler can be triggered by interrupts
from other devices (like the IOMMU) at any time. Does the current ISR safely
handle these shared interrupts?

Looking at rga_isr(), it always returns IRQ_HANDLED even when the interrupt
was not generated by this device:

drivers/media/platform/rockchip/rga/rga.c:rga_isr() {
	if (rga->hw->handle_irq(rga)) {
		...
	}

	return IRQ_HANDLED;
}

Should the handler return IRQ_NONE when it determines the interrupt wasn't
generated by its hardware, to avoid defeating the kernel's spurious IRQ
detection?

Additionally, because the IRQ is requested here before the driver is fully
initialized, could an immediate shared interrupt cause a NULL pointer
dereference?

drivers/media/platform/rockchip/rga/rga.c:rga_isr() {
	...
	if (rga->hw->handle_irq(rga)) {
		...
		struct rga_ctx *ctx =3D rga->curr;

		WARN_ON(!ctx);

		rga->curr =3D NULL;

		src =3D v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
	...
}

If the hardware happens to have a pending interrupt bit, rga->curr will be
NULL, and the code assigns NULL to ctx, then attempts to dereference
ctx->fh.m2m_ctx.

Could this early registration also cause the ISR to attempt to access
hardware registers while the device's clocks and power domains are disabled?

Because the driver uses PM runtime, the device may be suspended when a shar=
ed
interrupt fires. Is it necessary to verify pm_runtime_active(rga->dev)
before reading registers in the ISR to avoid a synchronous external abort?

Finally, could this lead to a data race on the RGA_INT register?

With IRQF_SHARED, rga_isr() can run asynchronously on another CPU while
device_run() is executing:

drivers/media/platform/rockchip/rga/rga.c:device_run() {
	...
	rga->hw->start(rga, vb_to_rga(src), vb_to_rga(dst));
}

If device_run() calls rga->hw->start() to write 0x600 to the RGA_INT regist=
er
to enable interrupts, while rga_isr() locklessly performs a read-modify-wri=
te
on RGA_INT, could the ISR silently overwrite the configuration with 0,
disabling RGA interrupts mid-job?

>  	if (ret < 0) {
>  		dev_err(rga->dev, "failed to request irq\n");

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515-spu-rga3-v=
6-0-e547152eb9c9@pengutronix.de?part=3D21

