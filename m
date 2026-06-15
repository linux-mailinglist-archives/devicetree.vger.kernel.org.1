Return-Path: <devicetree+bounces-311543-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id M3UJO6hEL2p89wQAu9opvQ
	(envelope-from <devicetree+bounces-311543-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 02:17:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0A4682981
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 02:17:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hoNvYfSG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311543-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311543-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E7E4030067B9
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 00:17:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAD802E401;
	Mon, 15 Jun 2026 00:17:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 902D54A0C
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 00:17:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781482653; cv=none; b=geTAfNqCrtGAcQ7Dc1y5E/GMyRBxX3inrTFtkELEQi8vgDixNs8wjUbKvzklfrXUHvJPDnUu4hUCGyEZhdxg/WwWYlnxqW+BVMcEPMZrtzyTg/tZl9Q71QKXiqJbW0P337rflQbpYK5aVFBw/NUKNJiG49XXGHbus3J/dvkF+Wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781482653; c=relaxed/simple;
	bh=PyfJw9avy6rVH4mdqTOcU6mSV2nIWBGMa0hueKrMngc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GyPhpcTbDbNuNPDWpIFStO2oRpb0Ii/Gdxb85dF9aQbZO39MfQBX3OQ06oZ5GCKHmsZ6kEN1BTfuQ0W0O3oU3h5hnCkR93vV0BFsAGQgi5CN2V/57OaiO40z8xOuzykgkAgEO/npCtLC2hKa15CREDjG1th6253ZBaqPMqyMVVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoNvYfSG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E20EF1F000E9;
	Mon, 15 Jun 2026 00:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781482652;
	bh=bkg4OeOIcwwOnOaOevDw5KNxb45k8KO+LmgAiyCyxvs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hoNvYfSGTQog8EySiAHhquR1AWGjHCyDGOKTfdPFLKAVk5kN4xewKNZBybxxBTR1k
	 pIHDEilwZSo+FB4+X42FTgu+Rf7cxgiWoInbrzTrEh++Xeq7bRjtxPLUce/0R+L3pr
	 x9guBHrvHnU+Ktwz6ToSVG1fUQONvpw8Am0L4ulZiL6OGhSjfeEHDbykGN1t9wWl9A
	 GXW+heUrBHn463UzMzaIa5MAB4zHO0lyN9NPjJTLeQUNACHgdB6ZUwSYlGejw3vLEs
	 EwTXzMzVkhccNzX9eNaAMWduNrrnDbBWvKA2vYwzZGuATkiyH71BhdsreYb7TISING
	 WkKaNgiUTh1zg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/4] dt-bindings: display: panel: Add documentation
 for lg,sw49410-lh609qh1
Reply-To: sashiko-reviews@lists.linux.dev
To: "Paul Sajna" <sajattack@postmarketos.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260614-judyln-panel-v3-2-07f4134441bd@postmarketos.org>
References: <20260614-judyln-panel-v3-2-07f4134441bd@postmarketos.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 00:17:30 +0000
Message-Id: <20260615001731.E20EF1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-311543-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,postmarketos.org:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sajattack@postmarketos.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4B0A4682981

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Sending DSI commands in `unprepare` after asserting the reset GPIO=
 will cause DSI transmission timeouts.
- [High] The `MIPI_DSI_MODE_LPM` flag toggle for the PPS transfer is wrappe=
d around the wrong function, rendering it ineffective.
- [Medium] The `compatible` property definition enforces an incorrect gener=
ic-first string order and mismatches the device tree example, causing valid=
ation to fail.
--

commit faf055f392f23751b6b923b1d2e80556b912da18
Author: Paul Sajna <sajattack@postmarketos.org>

dt-bindings: display: panel: Add documentation for lg,sw49410-lh609qh1

This commit documents the bindings for the LG LH609QH1 MIPI DSI panel. It
also introduces the DRM panel driver for the SW49410 controller found in the
LG G7 ThinQ smartphone.

> diff --git a/Documentation/devicetree/bindings/display/panel/lg,sw49410.y=
aml b/Documentation/devicetree/bindings/display/panel/lg,sw49410.yaml
> new file mode 100644
> index 0000000000000..4c4bf4d89353f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/lg,sw49410.yaml
> @@ -0,0 +1,79 @@
[ ... ]
> +properties:
> +  compatible:
> +    items:
> +      - const: lg,sw49410
> +      - const: lg,sw49410-lh609qh1

[Severity: Medium]
Does the compatible array enforce a generic-to-specific order?

Device tree standard typically dictates specific-to-generic ordering.
Additionally, since the device tree example further down only provides a
single string:

	compatible =3D "lg,sw49410-lh609qh1";

Will this single-string example fail validation against the two-item schema
constraint defined here?

> +
> +  reg:
[ ... ]
> diff --git a/drivers/gpu/drm/panel/panel-lg-sw49410.c b/drivers/gpu/drm/p=
anel/panel-lg-sw49410.c
> new file mode 100644
> index 0000000000000..02d1b85c3affb
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-lg-sw49410.c
> @@ -0,0 +1,528 @@
[ ... ]
> +static int sw49410_panel_program(struct sw49410_panel *ctx)
> +{
> +	struct mipi_dsi_multi_context dsi_ctx =3D { .dsi =3D ctx->dsi };
> +	struct drm_dsc_picture_parameter_set pps;
[ ... ]
> +	ctx->dsi->mode_flags &=3D ~MIPI_DSI_MODE_LPM;
> +
> +	drm_dsc_pps_payload_pack(&pps, &ctx->dsc);
> +
> +	ctx->dsi->mode_flags |=3D MIPI_DSI_MODE_LPM;
> +
> +	mipi_dsi_picture_parameter_set_multi(&dsi_ctx, &pps);

[Severity: High]
Are the MIPI_DSI_MODE_LPM flags being toggled around the right function?

This code wraps the local memory packing function drm_dsc_pps_payload_pack()
instead of the actual transmission function
mipi_dsi_picture_parameter_set_multi().=20

Does this mean the PPS command is still incorrectly sent in low-power mode?

> +
> +	mipi_dsi_compression_mode_ext_multi(&dsi_ctx, true, MIPI_DSI_COMPRESSIO=
N_DSC, 1);
[ ... ]
> +static int sw49410_panel_unprepare(struct drm_panel *panel)
> +{
> +	struct sw49410_panel *ctx =3D to_sw49410_panel(panel);
> +
> +	gpiod_set_value(ctx->reset_gpio, 1);
> +	struct mipi_dsi_multi_context dsi_ctx =3D { .dsi =3D ctx->dsi };
> +
> +	mipi_dsi_dcs_set_display_off_multi(&dsi_ctx);
> +	mipi_dsi_dcs_enter_sleep_mode_multi(&dsi_ctx);

[Severity: High]
Could asserting the reset GPIO before sending DSI commands lead to
transmission timeouts?

Because the panel is already put into reset by gpiod_set_value(..., 1),
it seems like it won't be able to acknowledge the display_off and
enter_sleep_mode commands sent immediately after.

> +	mipi_dsi_msleep(&dsi_ctx, 100);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260614-judyln-pan=
el-v3-0-07f4134441bd@postmarketos.org?part=3D2

