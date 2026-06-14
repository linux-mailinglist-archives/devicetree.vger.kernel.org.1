Return-Path: <devicetree+bounces-311426-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Gr1wGdhqLmqlvgQAu9opvQ
	(envelope-from <devicetree+bounces-311426-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 10:48:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BD34F680B4A
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 10:48:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=m0YFa103;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311426-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-311426-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ACD92300B3E4
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 08:48:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7986E2F90C5;
	Sun, 14 Jun 2026 08:48:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A80288C0E
	for <devicetree@vger.kernel.org>; Sun, 14 Jun 2026 08:48:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781426900; cv=none; b=XI2eWtukPJw0Nz/MoiGoQWqqy/pP671ndyxoUagem3haWVd05Nf45cpN+I/jtZ8zDHykCa3VX0tEeMmdD5euLil08g2QCFp+6MUB2TsPYL55U5I1NntcCdnDrVb7+usQbQGIMUIY4FjGCOu6JnUJwbt7+/kUf3QUNLCdaHYUYnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781426900; c=relaxed/simple;
	bh=MMY8dgGmn4OwQQAVhGFVLHZHhT1MvfS8AyDz06sq0tI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ElMLioQM4bRQhj8cnVpz/Mh0vlcZylMEYKHVbENZQ0r9S2erxuVsSWvTzM9LxaGtk6Mfn60qLiK5cORIu3Rwu9sc77+s8ZpTSTH8+Ys4TJkt75ykLzAJDojroLJF3d0/Ogr2YlZPfRKd2sZ1JQklIuPwfWLr3TXWgm6EUzL5+q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0YFa103; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B21311F000E9;
	Sun, 14 Jun 2026 08:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781426899;
	bh=sDGbkSMSNDPv/TMiz2heq5B79AN0OnCOCPdDOEj1aaY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=m0YFa1039rtQtXxARfXeroS2gelvUAd1O0DdILRp770nqZbb06guXHI07DuhWYK8P
	 9P7jld9CKLrAGtIGoKbuvDw2mUBPDeaNZ/E+5WkqXtUNt0i4rQM5AxO7O7rAMctRXA
	 KCFm3lWd3vsKfm+svGevd9O+n7iaaa9JNbjORAU/umYcpsyE4KF5SIYR/Bt4NoniDX
	 lbJnvmIOz/lHGIxrH+jozFI4yM4Qxn4+UDjqESkovtvpoo5VZE34qQTlckrcwSLh0L
	 VB09RXw62316ud8jLKwmx3ltpamvCGMCgGk+TFvJvSoccPuNnEyWaIOK5ZBAMRTFfk
	 H4nivB/qX7ugg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] spi: qcom-geni: Add property to force GSI mode
Reply-To: sashiko-reviews@lists.linux.dev
To: "Pengyu Luo" <mitltlatltl@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260614083424.464132-2-mitltlatltl@gmail.com>
References: <20260614083424.464132-2-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 14 Jun 2026 08:48:18 +0000
Message-Id: <20260614084818.B21311F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311426-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:mitltlatltl@gmail.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BD34F680B4A

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Forcing GSI mode via `qcom,force-gsi-mode` fails to update the har=
dware configuration registers (`SE_FIFO_IF_DISABLE` and `SE_DMA_IF_EN`), le=
aving the hardware and software in inconsistent states.
- [Medium] The new `qcom,force-gsi-mode` property is functionally redundant=
 and bypasses the existing `qcom,enable-gsi-dma` property, muddying the dev=
ice tree bindings.
--

commit 7902ba1d5ce1661e61400f2f7a40e6f1185b3264
Author: Pengyu Luo <mitltlatltl@gmail.com>

spi: qcom-geni: Add property to force GSI mode

This commit introduces a "qcom,force-gsi-mode" property to force the
controller into GSI mode during initialization for devices that do not
disable FIFO mode by default.

> diff --git a/drivers/spi/spi-geni-qcom.c b/drivers/spi/spi-geni-qcom.c
> index 26e723cfea61e..eece7312f7805 100644
> --- a/drivers/spi/spi-geni-qcom.c
> +++ b/drivers/spi/spi-geni-qcom.c
[ ... ]
> @@ -655,6 +656,9 @@ static int spi_geni_init(struct spi_geni_master *mas)
>  		mas->oversampling =3D 1;
> =20
>  	fifo_disable =3D readl(se->base + GENI_IF_DISABLE_RO) & FIFO_IF_DISABLE;
> +	if (mas->force_gsi_mode)
> +		fifo_disable =3D 1;
> +

[Severity: High]
Does overriding this local variable actually configure the hardware for GSI=
 DMA
mode?

Looking at the hardware initialization, geni_load_se_fw() is the only place
where SE_FIFO_IF_DISABLE and SE_DMA_IF_EN are written. By just overriding
fifo_disable here, the driver will attempt to use GENI_GPI_DMA mode while
the hardware's core FIFO interface might still be enabled and the DMA
interface disabled.

Could this lead to DMA failures, timeouts, or lockups since the software and
hardware states are inconsistent?

>  	switch (fifo_disable) {
>  	case 1:
>  		ret =3D spi_geni_grab_gpi_chan(mas);
[ ... ]
> @@ -1133,6 +1137,9 @@ static int spi_geni_probe(struct platform_device *p=
dev)
>  	if (ret)
>  		return ret;
> =20
> +	if (device_property_read_bool(&pdev->dev, "qcom,force-gsi-mode"))
> +		mas->force_gsi_mode =3D true;
> +

[Severity: Medium]
Is this new property functionally redundant?

The subsystem already supports the qcom,enable-gsi-dma device tree property
to configure GSI DMA mode, which is parsed in geni_load_se_firmware().

Would introducing qcom,force-gsi-mode create overlapping bindings for the
same hardware configuration and pollute the device tree ABI?

It seems this new property might be introduced to work around an internal
software parsing order issue where geni_load_se_firmware() is skipped if the
firmware is already loaded.

>  	ret =3D spi_geni_init(mas);
>  	if (ret)
>  		return ret;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260614083424.4641=
32-1-mitltlatltl@gmail.com?part=3D2

