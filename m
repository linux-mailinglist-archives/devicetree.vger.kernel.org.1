Return-Path: <devicetree+bounces-311542-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3IAGI6VEL2p79wQAu9opvQ
	(envelope-from <devicetree+bounces-311542-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 02:17:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E10A468297E
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 02:17:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VN22ZDVY;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311542-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311542-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 612053005D05
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 00:17:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6DE817A300;
	Mon, 15 Jun 2026 00:17:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC0954A0C
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 00:17:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781482641; cv=none; b=nDNUG+cmJKM/mngnHluwXjz115+ZZ73iX2gKZiey3qfytKi8DwNBmqh2iJ2VuBm+QOgAvmdAChhYCTBuK4LrUcAUWNIBWKkDg7gNCo9kZ6KVUwo2f6Or1ukrB4cIP+K2wu4u32koYIBnkWrl5k9DkMnzP3R1zqbSTa4x2MXZDUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781482641; c=relaxed/simple;
	bh=bqxNl/P6d29/vZ/DXbiDWCw0uU70gob4mdPu5NBQo68=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=tgogCRRJ8T4h1vIoMnFhBLOVgaSIf+y8/ucANkNb48dAMUKK5p76NTnTKBigOmCyv1n7PseaNLjjqhvaD+sL+AGWmN7InnatdexSNr6253f9MAClrXaIP7HfAVk9v8vAUqZMsGODbI5TMYAtNT1WEAXr0R4+Ee7YeN2gYTsmxmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VN22ZDVY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C39A1F000E9;
	Mon, 15 Jun 2026 00:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781482640;
	bh=TeleR8b6oZ63JIpS+Q77i0lyZ3TTh1J6938G8aEtEKE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VN22ZDVYcSvPC9MLeTRhxVlJlrRIef5mqIgcl2/tPd7FX1WUwJlF5/Y0uGAYueeVZ
	 N51QtimnYvGn4zaJ6v6JxfObGVIC45Z0yas2wDiYdqYcZnFH9lrwVrDB+2uNh9pUdr
	 Yu85pWbBM4VKC5ept52U3g6s6f22ur8ZMOPNNVNseiAICOt3zPxsz6SNVP+ZfrKkr6
	 Aq524M9JSjU4Et/utX5CIhxLvR/AeqgrmjYUB4l3xUCSKHrqq1d0qzqK6Tn9n3OnT4
	 IoC4gHl2Df6AFjfFDRMr7HRfHsy2xrnARjjj/fPRxP+E10/3cNs17N4RYkSYb52+i4
	 M9rhrbRk8f1Xw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 4/4] Revert "dt-bindings: display: panel:
 panel-simple: Add lg,sw49410 compatible"
Reply-To: sashiko-reviews@lists.linux.dev
To: "Paul Sajna" <sajattack@postmarketos.org>
Cc: conor+dt@kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260614-judyln-panel-v3-4-07f4134441bd@postmarketos.org>
References: <20260614-judyln-panel-v3-4-07f4134441bd@postmarketos.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 00:17:19 +0000
Message-Id: <20260615001720.1C39A1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-311542-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,postmarketos.org:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sajattack@postmarketos.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E10A468297E

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Missing drm_panel_remove() on the mipi_dsi_attach() error path in =
probe causes a Use-After-Free.
- [High] Panel reset is erroneously asserted before sending DSI sleep comma=
nds in the unprepare sequence.
--

commit 591497f012912dfaa02eb5ec6c5c1e0d8e61f126
Author: Paul Sajna <sajattack@postmarketos.org>

Revert "dt-bindings: display: panel: panel-simple: Add lg,sw49410 compatibl=
e"

This reverts commit a74c2e55ab66519ffa2069ac9ae83cd937bff4c4. The panel
isn't actually panel-simple-compatible.

> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple=
.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> index 3e41ed0ef5d51..1abdc8698a865 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> @@ -200,8 +200,6 @@ properties:
>        - lemaker,bl035-rgb-002
>          # LG 7" (800x480 pixels) TFT LCD panel
>        - lg,lb070wv8
> -        # LG 6.1" (1440x3120) IPS LCD panel
> -      - lg,sw49410

[Severity: High]
This isn't a bug introduced by this patch, but while looking at the sw49410
panel driver code, I noticed a missing drm_panel_remove() on the
mipi_dsi_attach() error path in probe which causes a use-after-free:

drivers/gpu/drm/panel/panel-lg-sw49410.c:sw49410_panel_probe() {
	drm_panel_add(&ctx->panel);

	/* This panel only supports DSC; unconditionally enable it */
	dsi->dsc =3D &ctx->dsc;
...
	return mipi_dsi_attach(dsi);
}

If mipi_dsi_attach() fails, the function returns an error without calling
drm_panel_remove(). Because ctx was allocated with devm_drm_panel_alloc(),
the kernel devres mechanism will free ctx upon probe failure.

This leaves a dangling pointer in the global panel_list. Any subsequent
operations iterating over panel_list (such as another driver calling
drm_panel_get()) will dereference the freed memory, causing a
use-after-free kernel panic.

Could we add a call to drm_panel_remove() to the error path here?

[Severity: High]
This is a pre-existing issue, but the panel reset is erroneously asserted
before sending DSI sleep commands in the unprepare sequence:

drivers/gpu/drm/panel/panel-lg-sw49410.c:sw49410_panel_unprepare() {
	gpiod_set_value(ctx->reset_gpio, 1);
	struct mipi_dsi_multi_context dsi_ctx =3D { .dsi =3D ctx->dsi };

	mipi_dsi_dcs_set_display_off_multi(&dsi_ctx);
	mipi_dsi_dcs_enter_sleep_mode_multi(&dsi_ctx);
}

The reset GPIO is asserted (gpiod_set_value(ctx->reset_gpio, 1)) before
executing the MIPI DCS sleep commands.

Attempting to send MIPI DCS commands to a panel that is held in hardware
reset will cause the DSI host to fail to communicate, resulting in severe
command timeouts and error logs. The unprepare sequence is functionally
broken because the panel cannot gracefully enter sleep mode.

Should the panel reset be delayed until after the DSI sleep commands are
sent?

>          # Logic Technologies LT161010-2NHC 7" WVGA TFT Cap Touch Module
>        - logictechno,lt161010-2nhc

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260614-judyln-pan=
el-v3-0-07f4134441bd@postmarketos.org?part=3D4

