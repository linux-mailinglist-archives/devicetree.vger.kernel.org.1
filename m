Return-Path: <devicetree+bounces-315593-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DoqlLen8PGqlvQgAu9opvQ
	(envelope-from <devicetree+bounces-315593-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 12:03:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D84C6C476B
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 12:03:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="Qi/n/BWT";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315593-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315593-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E4F2330B7C27
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 10:01:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52B14176238;
	Thu, 25 Jun 2026 10:01:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42885230BD9
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 10:01:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782381667; cv=none; b=XC0KzGTHL+LiEmXtV0wCznCOLKg58FhTLmE5ugF0CVOOhKW6NfmrLiJoEbEd3UElBpmJ/bYFllMv4EOaRXTj9jAekhoPAuEeKcpyuq00DHmjvbV+f3c0FD05+gl2hN/xYyhJIBhlm008zXYFtMxOhxg+rPcQrusUEteptdEVMwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782381667; c=relaxed/simple;
	bh=THAmlVjiTPf5hMbB2NGZ37K80OW6NMDPh21TtUlOgY8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=L0ojUM0zHpeLgbyg6hGHtwwQFw26p2pvIlNp9yIUtEkP4kg+e/zNZVx9udsz+TQPk3sJtk2RE/F+/SyjiGlvLfi+UWHgC3TaMHF4WVQwMqPgOUSw2voc2JnF3eFA0Z9gMLUf3R1STAoscnr4oBbeM0JFxJHl8pX8HctyYA81j5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qi/n/BWT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4553F1F000E9;
	Thu, 25 Jun 2026 10:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782381665;
	bh=EsE76Z4xRSFuaUsnBBypJxmuqqG+w7zMjPB5P48Qr30=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Qi/n/BWTuFVm8wnsXRkvBBwNjqwtUdYjgx9lz4U+3x6qbzmGu5ug8F7gBgXirTkyq
	 JTquM+ALNCoO+35pq3rBrC+i97FWSKQM8OWLblC+6ishhCeYD6QgBbM1VNjubMew5/
	 jTfRnf3WaFnn5U8iKlaKmTGJhmXr1TvXq1YW5mGJOzUjp7elGW6aQteafaAXSL0LmS
	 ijcx1MOEUpFpewf2AyG2uZF3FOLFD1n5lMDIcbB4cR8hT7yQ0cyQY3e7CjTpNfxB2V
	 TcDV4KgRkqTJvBpenuV/OaL7z41mka8ROuo0f3iDi2L5OwwQaezOkYRIStK99p5vE5
	 3PLKKk2agZOQg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 4/7] drm/verisilicon: make axi and ahb clocks
 optional
Reply-To: sashiko-reviews@lists.linux.dev
To: "Joey Lu" <a0987203069@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org
In-Reply-To: <20260625094449.708386-5-a0987203069@gmail.com>
References: <20260625094449.708386-1-a0987203069@gmail.com>
 <20260625094449.708386-5-a0987203069@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 10:01:04 +0000
Message-Id: <20260625100105.4553F1F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315593-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:a0987203069@gmail.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0D84C6C476B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Possible NULL pointer dereference in the IRQ handler if an interru=
pt triggers before DRM initialization completes.
--

commit 2cd6077ab2fb5ed065ee2cef55004b713c80f827
Author: Joey Lu <a0987203069@gmail.com>

drm/verisilicon: make axi and ahb clocks optional

The Nuvoton MA35D1 SoC integrates a DCUltraLite display controller whose
AXI and AHB bus clocks share a single gate enable bit with the display
core clock, so the clock driver does not expose them separately. This
patch makes the axi and ahb clocks optional in the probe.

> diff --git a/drivers/gpu/drm/verisilicon/vs_dc.c b/drivers/gpu/drm/verisi=
licon/vs_dc.c
> index 9729b693d360e..fd1f5fe67a68b 100644
> --- a/drivers/gpu/drm/verisilicon/vs_dc.c
> +++ b/drivers/gpu/drm/verisilicon/vs_dc.c
[ ... ]
> @@ -90,13 +90,13 @@ static int vs_dc_probe(struct platform_device *pdev)
>  		return PTR_ERR(dc->core_clk);
>  	}
> =20
> -	dc->axi_clk =3D devm_clk_get_enabled(dev, "axi");
> +	dc->axi_clk =3D devm_clk_get_optional_enabled(dev, "axi");
>  	if (IS_ERR(dc->axi_clk)) {

[Severity: High]
This is a pre-existing issue, but is it possible for an interrupt to trigger
a NULL pointer dereference during probe if the bootloader left the display
active?

Looking further down in vs_dc_probe(), the IRQ handler is registered before
vs_drm_initialize() is called:

	ret =3D devm_request_irq(dev, irq, vs_dc_irq_handler, 0,
			       dev_name(dev), dc);
	if (ret) {
		dev_err(dev, "can't request irq\n");
		goto err_rst_assert;
	}

	dev_set_drvdata(dev, dc);

	ret =3D vs_drm_initialize(dc, pdev);

If a pending interrupt (such as VSYNC) fires immediately after
devm_request_irq() is called, vs_dc_irq_handler() will be triggered and will
eventually call vs_drm_handle_irq().

Looking at vs_drm_handle_irq() in vs_drm.c, it unconditionally dereferences
the drm_dev pointer:

	if (dc->drm_dev->crtcs[i])
		drm_crtc_handle_vblank(&dc->drm_dev->crtcs[i]->base);

Since vs_drm_initialize() hasn't allocated or assigned dc->drm_dev yet,
could this cause a kernel panic during boot on platforms where the bootload=
er
leaves interrupts enabled?

Would it be safer to request the IRQ after the DRM device is fully
initialized, or to mask interrupts in the hardware before registering the
handler?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260625094449.7083=
86-1-a0987203069@gmail.com?part=3D4

