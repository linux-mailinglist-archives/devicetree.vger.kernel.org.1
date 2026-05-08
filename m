Return-Path: <devicetree+bounces-294678-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DpKHdtJ/mllowAAu9opvQ
	(envelope-from <devicetree+bounces-294678-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 22:38:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A16C4FB8B9
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 22:38:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0BBA73007893
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 20:38:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CE8837B03C;
	Fri,  8 May 2026 20:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ye+gssjJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F7A33F5AB
	for <devicetree@vger.kernel.org>; Fri,  8 May 2026 20:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778272728; cv=none; b=dOcplswbmD3lXdt8AolOmvUBNVIGWby5MJxZYMzsZbDXY0bkddJ0mowMrVc4Lz4tloLJL0H1LAAW2+QI6AnDlTu0UXp0Uq0YvGVE81EhJJf9xosAHpLqmvUYt2M/RjY4pQvGveLHXRQp7LKSbUT30tcArmzQEjW1U/y4n9TegAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778272728; c=relaxed/simple;
	bh=HWNOuzsso981DDmbnyyTrenS6u7al/e9uAD0pgZ2SXg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=okugEAkxGnFzrY63AMjRpyeACSdWMwGDzJAspy056NgEIzegVK3VE1bDBG9hqUK6vLG6OjayB9XKd9XSQQZCBrKPVnuzGI4FOLkewHCYuUoew1IefF43Nzxq5kKZgMHcs+cnVttAnRB1nK1+MMzX7qwUriV9IHBHbozZuJoY9as=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ye+gssjJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8197FC2BCB0;
	Fri,  8 May 2026 20:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778272727;
	bh=HWNOuzsso981DDmbnyyTrenS6u7al/e9uAD0pgZ2SXg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=Ye+gssjJnPLhBnzlHbdwoaLOA9BmtHSgn1C2o8M3kpuvtPvzcM4Ok5j5gaLrYceh/
	 UH+BZXpk0R+2N51fHSJzNdFCdycohn1bJVVxy6DRevyCbOYWwEhqHEQVnXNx8lZbRh
	 yHMhoR3UeaQ9eiwwbXT0+HFHo9OJu4GlHtbFlI6xRTSY3L0d/KEbNs2VS1EGnDZf1/
	 J7qi7QLbQs6GAtmhAtzwBDBglMAlxA8C1e7N0v2P9tdg13TP87bou+JmVVAFTBv2Ja
	 k0FXt9050ZP5Qgb+Ye/YDQdWlCbOEseOfcj8llY7yRTNKbsSfGYw1iyKb2s9C35xX8
	 j69uD0IE5n49A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/4] drm: renesas: rz-du: Move mode_valid logic to
 per-SoC clock limits
Reply-To: sashiko@lists.linux.dev
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260508111744.771659-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260508111744.771659-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 08 May 2026 20:38:46 +0000
Message-Id: <20260508203847.8197FC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 1A16C4FB8B9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-294678-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,renesas.com:email];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
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
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Moving the pixel clock limits from an output-specific check to a g=
lobal per-SoC limit drops the DPAD0 clock limit for RZ/G2L and prevents set=
ting per-interface limits.
--

commit df71add63cd01bd86e697f0d293fcfc2d68de83e
Author: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

drm: renesas: rz-du: Move mode_valid logic to per-SoC clock limits

This commit shifts pixel clock validation from a hardcoded encoder output
check to per-SoC limits defined in rzg2l_du_device_info. It adds clock
bounds for RZ/G2UL and checks these limits against the display mode clock.

> diff --git a/drivers/gpu/drm/renesas/rz-du/rzg2l_du_encoder.c b/drivers/g=
pu/drm/renesas/rz-du/rzg2l_du_encoder.c
> index 5e6dd16705e60..2fb79d11ab151 100644
> --- a/drivers/gpu/drm/renesas/rz-du/rzg2l_du_encoder.c
> +++ b/drivers/gpu/drm/renesas/rz-du/rzg2l_du_encoder.c
> @@ -50,8 +50,12 @@ rzg2l_du_encoder_mode_valid(struct drm_encoder *encode=
r,
>  			    const struct drm_display_mode *mode)
>  {
>  	struct rzg2l_du_encoder *renc =3D to_rzg2l_encoder(encoder);
> +	struct rzg2l_du_device *rcdu =3D to_rzg2l_du_device(renc->base.dev);
> +	const struct rzg2l_du_device_info *info =3D rcdu->info;
> =20
> -	if (renc->output =3D=3D RZG2L_DU_OUTPUT_DPAD0 && mode->clock > 83500)
> +	if (info->mode_clock_min && mode->clock < info->mode_clock_min)
> +		return MODE_CLOCK_LOW;
> +	if (info->mode_clock_max && mode->clock > info->mode_clock_max)
>  		return MODE_CLOCK_HIGH;

Does replacing the output-specific check with a global per-SoC limit
unintentionally drop the 83.5 MHz restriction for DPAD0 on SoCs with
multiple outputs?

Looking at rzg2l_du_r9a07g044_info in rzg2l_du_drv.c, the RZ/G2L SoC
supports both DSI0 and DPAD0 outputs, but no mode_clock_max is set for it
by this patch. This means DPAD0 on RZ/G2L loses its original 83.5 MHz
limit.

If a global mode_clock_max were added to the RZ/G2L info struct to restore
this limit, wouldn't it incorrectly throttle the DSI0 interface as well?

Should these limits be placed in struct rzg2l_du_output_routing instead
so that per-interface limits can still be enforced?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260508111744.7716=
59-1-prabhakar.mahadev-lad.rj@bp.renesas.com?part=3D3

