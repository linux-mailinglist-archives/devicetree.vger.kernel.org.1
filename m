Return-Path: <devicetree+bounces-322138-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id I4rBDJENTWofuQEAu9opvQ
	(envelope-from <devicetree+bounces-322138-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:30:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F0171CA38
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:30:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CtTgMoTi;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322138-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-322138-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4224B3015C28
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 14:29:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF90842A171;
	Tue,  7 Jul 2026 14:28:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8CE42F71A
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 14:28:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783434499; cv=none; b=X0vCDk9pjXjDPaWOuzaEL7gMjTj1JimaWI6DuGLiDmFSKmDezI6P81pbxIWnC93uEdF3+KLJETCx1fudOC5ED7Ur8cx2Wktv1CxDOGrsZA6yEWVhVPbc/i9zuvguEhVyHWrO0NfrSkm5uVuOHmtrL2zSYjw7vXg/fnAisdtrH/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783434499; c=relaxed/simple;
	bh=RnBO8GvLZWBzSRhkDfw0A3UiNTRSY545Ssz20vNwOgE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=nyJUKIMLWcWOOTkh8kVw3ZK0Wp+rx0SO/23FYWgc4UEPsfXTVvwbpJSg57SN5UYomUOGqatASG/vvMhp6HaQOXBDHmZQ+tfY3YdGx6pZ0f1OAhMMa2IwWQaQObjU0nba33cCHiT+aTeCO2jjG06McBEjE4c/rE6UAsOFgQb0f6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CtTgMoTi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 695821F00A3A;
	Tue,  7 Jul 2026 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783434496;
	bh=Nms9/XZgwR9douNdc28TyXxyzdrvEOBewOrL1S/fLgI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CtTgMoTiDmUKRF+AunWWAqJT/IJh/zgOfsCeWoSL4Jewbx9slF4TKppyZR2uLVgy6
	 skc3zofrZAZFq0AOuw/LermFiV38jHg2emZIjUMvkOFKN2rxwh0+ah/fAGcLCvSfFe
	 ntubjONyryzm1SZc8LnHpfT7+V53KcMyo8wSUaWfyKASRsa+aj5dyfnGiqCDfYUmJf
	 bO6mbBIe5puaJ+GNxtEyI3N4WHTsr5x2KZK3lAZbwasii0J1NSPQlZ5+fkh2LMOIXM
	 OEEC/7i++JSaSfLdkzv1nUIY0rQ7mT9wUvH0z3ToH5aIiPPwWF35FP/pSzkzGCbPZ/
	 eTpi/hPtTjyxQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 09/12] phy: phy-mtk-dp: Rewrite and document default
 driving param macros
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: dri-devel@lists.freedesktop.org, vkoul@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260707141931.191172-10-angelogioacchino.delregno@collabora.com>
References: <20260707141931.191172-1-angelogioacchino.delregno@collabora.com>
 <20260707141931.191172-10-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 14:28:15 +0000
Message-Id: <20260707142816.695821F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-322138-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:dri-devel@lists.freedesktop.org,m:vkoul@kernel.org,m:olteanv@gmail.com,m:neil.armstrong@linaro.org,m:linux-phy@lists.infradead.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,kernel.org,gmail.com,linaro.org,lists.infradead.org,vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,smtp.kernel.org:mid,collabora.com:email,lists.linux.dev:replyto,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 92F0171CA38

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The patch uses `FIELD_PREP_CONST` (and earlier patches in the serie=
s use `FIELD_PREP`) without explicitly including `<linux/bitfield.h>`.
--

--- Patch [9]: [PATCH v2 09/12] phy: phy-mtk-dp: Rewrite and document defau=
lt driving param macros ---
commit e682fc4989b37eaa003ac03d4d2a9a69b306a63b
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

phy: phy-mtk-dp: Rewrite and document default driving param macros

This commit rewrites the default driving parameters for the PHY using
FIELD_PREP_CONST. It also adds definitions and comments to explain what
these parameters are supposed to set.

> diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy=
-mtk-dp.c
> index d0ef8e8f6670c..9a800d6b91c3f 100644
> --- a/drivers/phy/mediatek/phy-mtk-dp.c
> +++ b/drivers/phy/mediatek/phy-mtk-dp.c
> @@ -85,51 +85,47 @@

[ ... ]

> +#define XTP_LN_TX_LCTXC_SW2_PRE1	GENMASK(5, 0)
> +#define XTP_LN_TX_LCTXC_SW3_PRE0	GENMASK(13, 8)
> +
> +#define BUILD_DRIVING_PARAM_0(sw0_pre0, sw0_pre1, sw0_pre2, sw0_pre3) (	\
> +	FIELD_PREP_CONST(XTP_LN_TX_LCTXC_SW0_PRE0, sw0_pre0) |		\

[Severity: Low]
This isn't a bug, but should linux/bitfield.h be explicitly included since
this code now uses FIELD_PREP_CONST?=20

Relying on implicit inclusions can cause build breakages in the future if a
header like linux/phy/phy.h or linux/regmap.h stops including it.

> +	FIELD_PREP_CONST(XTP_LN_TX_LCTXC_SW0_PRE1, sw0_pre1) |		\
> +	FIELD_PREP_CONST(XTP_LN_TX_LCTXC_SW0_PRE2, sw0_pre2) |		\
> +	FIELD_PREP_CONST(XTP_LN_TX_LCTXC_SW0_PRE3, sw0_pre3)		\
> +)

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707141931.1911=
72-1-angelogioacchino.delregno@collabora.com?part=3D9

