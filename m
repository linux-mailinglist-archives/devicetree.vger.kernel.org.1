Return-Path: <devicetree+bounces-299188-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNAlNyLICmqf8AQAu9opvQ
	(envelope-from <devicetree+bounces-299188-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 10:04:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6E656857C
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 10:04:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D79133006146
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 08:04:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EE6C3E1206;
	Mon, 18 May 2026 08:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/F7NBRY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D99A3E0730
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 08:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779091438; cv=none; b=n3OFPCjYM3WtuA8gfzegalhoS1B/GaHbiZyzEwGCZWk9okV0NcXQu7QlHjKUjJRlE3MsJrWBVtjnHeqZaLGndDlH0qLJ9oNZGYcNdOnBp9S5KIcRkwoFl515Y3/AvOTCNvsWg7NtSE/e7MJqosOG+5iM4qCMSKkkhO9RIFnyDf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779091438; c=relaxed/simple;
	bh=GY4EQg30ANKnxF3o+/QFJFcHfQtw8MfgGMzicktSz1I=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JkK8nB0OAIeCCPq4mwHPrb+afuDkvZGRNYSa15jNNWEsVSc07cIhjM3QS44VsEY58e7NB3iY/iq3R0HdPucS+6tjDNg0P926AQq5eWI4ANNbScLgVi4xNiocUd4eDvLxDUeFpYmOOgb1aPfz5sae8kqAU69J5z1Depi2N71mqXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/F7NBRY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6562AC2BCC6;
	Mon, 18 May 2026 08:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779091437;
	bh=GY4EQg30ANKnxF3o+/QFJFcHfQtw8MfgGMzicktSz1I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=H/F7NBRY8jRLzki3KDl23MblPl77olqQdPXF/aPRD1TsNyNZ3oGdXJxHAc4LC/cWQ
	 0i9JUw7ZmLKgdWiLZZ6oOmEfbd8jHP00KI+ebQig5jvF33YB8WDPkKURqbUnmZjFxF
	 Ah/TB4voQePS5garwyxY64ZiSRfFv1R6PFN983qyrH8GTxI7ge88zt/vu3LmFkgh9O
	 J3DUL0i1C1dHu8g0g+z8UD2ouHDAVjvVpsJ4E7YEFXKXVWN+wIaxv0n9o2MlY90GOf
	 RPqvy+VCWrxedHAiSA6aIEwdFxJiKArioqDEWBHnUy4YG4kZ3IZCm4Nm3T9WiW4u3j
	 B2o5p+6xMsCRw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/2] drm/panel: simple: add NEC NL6448BC33-70C
Reply-To: sashiko-reviews@lists.linux.dev
To: "Steffen Trumtrar" <s.trumtrar@pengutronix.de>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260518-v7-1-topic-panel-simple-nl6448bc33-v3-2-21ea14a6e835@pengutronix.de>
References: <20260518-v7-1-topic-panel-simple-nl6448bc33-v3-2-21ea14a6e835@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 08:03:56 +0000
Message-Id: <20260518080357.6562AC2BCC6@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 9F6E656857C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-299188-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto,pengutronix.de:email]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The horizontal and vertical display timings incorrectly map fron=
t porch, back porch, and sync pulse length values, swapping them in the add=
itive configuration.
--

commit 7c39ee64a0bc09df1a4fc9c15180db0749bff494
Author: Steffen Trumtrar <s.trumtrar@pengutronix.de>

drm/panel: simple: add NEC NL6448BC33-70C

This commit adds support for the NEC NL6448BC33-70C 10.4" 640x480 LCD modul=
e.

> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel=
/panel-simple.c
> index 236bd56208ccf..0bf50b1ed69e6 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -3659,6 +3659,32 @@ static const struct panel_desc nec_nl4827hc19_05b =
=3D {
[ ... ]
> +static const struct drm_display_mode nec_nl6448bc33_70c_mode =3D {
> +	.clock =3D 25175,
> +	.hdisplay =3D 640,
> +	.hsync_start =3D 640 + 16,
> +	.hsync_end =3D 640 + 16 + 48,
> +	.htotal =3D 640 + 16 + 48 + 96,

Are the sync pulse length and back porch values transposed here?

The additive timing formula is hsync_end =3D hsync_start + hsync_len and
htotal =3D hsync_end + hback_porch. This configuration results in an hsync_=
len
of 48 and an hback_porch of 96. Standard 640x480 timing with a 25.175 MHz
clock typically uses an hsync_len of 96 and an hback_porch of 48.

> +	.vdisplay =3D 480,
> +	.vsync_start =3D 480 + 2,
> +	.vsync_end =3D 480 + 2 + 31,
> +	.vtotal =3D 480 + 2 + 31 + 31,

Does this code similarly transpose the vertical timings?

This setup yields a vsync_len of 31 lines, which seems abnormally large
for an LCD panel. Could this cause the panel to fail to sync or incorrectly
shift the displayed image?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518-v7-1-topic=
-panel-simple-nl6448bc33-v3-0-21ea14a6e835@pengutronix.de?part=3D2

