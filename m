Return-Path: <devicetree+bounces-297237-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAJkH30cBWqtSgIAu9opvQ
	(envelope-from <devicetree+bounces-297237-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 02:51:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D0253C73E
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 02:51:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4935E304996C
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 00:51:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D74C2F6904;
	Thu, 14 May 2026 00:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8n7HxSC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B95A2F5313
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 00:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778719861; cv=none; b=fSpoB6/YxyxI5nh0bKr8+siY0VMFYQHjA4SMCSG+s07fKpwlyqdYxwbK1Cd+E8HWzTdIX/eQBkRafCgLeigpMGaOl87qoYRIdpsQX8pzReqx6EdIJaETjNHZk2GQlAsJhhF2ChTeB4wsj8jqNR2IP+eglisCxAubERHUy9EeB/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778719861; c=relaxed/simple;
	bh=I4HTsFn267db23sgeYge7oHGyZ0z7GVCK46SYN0tW9E=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XmnjRm8WyDTqjjdVBJQErffzkbOEAxOYyzHylkGUSh+lVdym/EgCIlsrIE+TY5CnBpFl+zhpUBoXxsMQa3gMG4KumgvAXTUOAQi5v56GJ7QkkWGh1kwtXC1EXBH2JpAajWGkdiuJDuedut8pHjkzPnF9sMjt+Nw7IalOICER7ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8n7HxSC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4896C2BCB3;
	Thu, 14 May 2026 00:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778719861;
	bh=I4HTsFn267db23sgeYge7oHGyZ0z7GVCK46SYN0tW9E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=O8n7HxSCwr5p6fIivB9zbIdcZAJfi7Uv+9aFoHbOkLWzh/f2R5LCc+Qy+bADSgOyl
	 Vcg6HjCio+8GaKh7Qxc0TGDH0ZpHOYlQ1fhd4GnOH0Z1iJvxVGcGizOXwWkEh/CZwm
	 tFkPdoMiZPvO0LVcl7XEXylgIP2em1zLve5fXMQD010Koo8dJGUHv/UiOD2G3flzBQ
	 Ge6ZhmEcUF+0uNuDuRV5reUW1fFvP75II1cgYn/EtAlYoel4wn2VFdV/dj1VDWo46C
	 lYltys3A4RKfnqgDi2hqn3Y0usNdCbjRVT0X7BTpLjUN+6n2wqHQ5A8ci02WMfvU7S
	 DN8shhbcnleDA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 05/16] ASoC: rsnd: Add RZ/G3E SoC probing and
 register map
Reply-To: sashiko-reviews@lists.linux.dev
To: "John Madieu" <john.madieu.xa@bp.renesas.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, wsa+renesas@sang-engineering.com, robh@kernel.org
In-Reply-To: <20260512182631.3842065-6-john.madieu.xa@bp.renesas.com>
References: <20260512182631.3842065-6-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 00:51:00 +0000
Message-Id: <20260514005100.B4896C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: C4D0253C73E
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
	TAGGED_FROM(0.00)[bounces-297237-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,renesas.com:email];
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
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Unmapped PIO data registers cause an IRQ storm and log spam if PIO=
 fallback occurs on RZ/G3E.
--

commit c024509f93a46087ccbea869fbbcef923ba14644
Author: John Madieu <john.madieu.xa@bp.renesas.com>

ASoC: rsnd: Add RZ/G3E SoC probing and register map

This commit adds support for the RZ/G3E audio subsystem, which has a differ=
ent
register layout compared to R-Car generations. It introduces the new SoC's
register layouts and probe support.

> diff --git a/sound/soc/renesas/rcar/gen.c b/sound/soc/renesas/rcar/gen.c
> index d1f20cde66be1..05d5f656fb01c 100644
> --- a/sound/soc/renesas/rcar/gen.c
> +++ b/sound/soc/renesas/rcar/gen.c
[ ... ]
> +static int rsnd_rzg3e_probe(struct rsnd_priv *priv)
> +{
[ ... ]
> +	static const struct rsnd_regmap_field_conf conf_ssi[] =3D {
> +		RSND_GEN_M_REG(SSICR,			0x00,	0x40),
> +		RSND_GEN_M_REG(SSISR,			0x04,	0x40),
> +		RSND_GEN_M_REG(SSIWSR,			0x20,	0x40),
> +	};

If the RZ/G3E audio subsystem falls back to PIO mode (e.g., if DMA channel
allocation fails or the pio-transfer device tree property is set), will this
cause an interrupt storm?

The conf_ssi regmap for RZ/G3E intentionally omits the SSITDR and SSIRDR
data registers.

If PIO mode is engaged, rsnd_ssi_start() enables the Data Interrupt (DIEN).
When the interrupt fires, rsnd_ssi_pio_interrupt() will attempt to access
SSIRDR or SSITDR. Because they are missing from this regmap, the access will
be intercepted and skipped, returning an unsupported register access error.

Because the hardware FIFO is never serviced, the level-triggered DIRQ
condition is never cleared, resulting in an IRQ storm that hangs the CPU
and floods the kernel log.

A later commit in the series claims "SSI always operates in BUSIF mode
with no PIO fallback", but should this constraint be explicitly enforced
in the code to prevent this IRQ storm from occurring?

> +	int ret;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260512182631.3842=
065-1-john.madieu.xa@bp.renesas.com?part=3D5

