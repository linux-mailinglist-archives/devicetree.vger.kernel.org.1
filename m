Return-Path: <devicetree+bounces-297252-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNb1DbQvBWr9TAIAu9opvQ
	(envelope-from <devicetree+bounces-297252-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 04:13:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A51D653CF34
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 04:13:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9F62B3015A79
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 02:13:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6467F32ABC0;
	Thu, 14 May 2026 02:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdeaqhGW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41970319847
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 02:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778724784; cv=none; b=pWAOcAQgfr90P/8Gg9W432n6ktzp7Pw3LAuQ9A/uHKvccHhBEyoPR4xKdAFzBooq7df6S58pJNJ7Rthco6HXU7zz03HO0bIftCSx2cbTDjTZwwgQWcu/681IlLTHmq6CWF2M/2PoeLhZ4Y4w4b1Y1gVzh3P2lrKOnJ76+0Xq8MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778724784; c=relaxed/simple;
	bh=MQUypza3VTxyvSjpuQA1EJv5W5cxJtbFZSvb1llZYKw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=OaUTevU1ylSWGsI58690UmpD66AOHKjAMVWscUPArtz1fx36Yso7QIXAHXM4J4TZiGE+StBJD6Jd3mrQ+KQobq8ES8h+SmXLjojVDDCbFHZCiRBJzRBtXhnyH5ONYXBZljpFk7Nu7/g3+A4+l4GT0sB2Mu3HDi7ZNLMOft0qxFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdeaqhGW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E402C19425;
	Thu, 14 May 2026 02:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778724783;
	bh=MQUypza3VTxyvSjpuQA1EJv5W5cxJtbFZSvb1llZYKw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=RdeaqhGWKyfdWnFwJ5Y3w4Wxbyo3ljrg2vBFjA19t2k9BAxwAfEtR1o/TDPRzYb2o
	 nKVFdpb4ntqQKhoFQ6ghiBD5vTfpmBiXGhXnCdu4WwW6sXcycV5I2jHGZm9Gj6KPYH
	 0TKD6aZMZOanQmqjaiRYCx76qbfq3V/K3oA4obSkBP29UMwScKj6NEAvL5PgEK5GOx
	 lrUlS/8kYKCI1TXJdwTZTEs8U+iCgWKipvG6hccdEPWs19iTr2ic9b7/vmLUVCWNTU
	 ESiPXhSlR8uEqTp80VAQ3vruwbI5Is+kkV4a6ZrfeuEA8BtimVaIIigENVcJSONik9
	 sjGt2IYgzJ2tQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 08/16] ASoC: rsnd: Add RZ/G3E DMA address calculation
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "John Madieu" <john.madieu.xa@bp.renesas.com>
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260512182631.3842065-9-john.madieu.xa@bp.renesas.com>
References: <20260512182631.3842065-9-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 02:13:03 +0000
Message-Id: <20260514021303.8E402C19425@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: A51D653CF34
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297252-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,renesas.com:email];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Unchecked NULL pointer dereference in rsnd_rzg3e_dma_addr() when S=
SIU module is not present.
- [Low] Missing parentheses around macro arguments in RZ/G3E DMA address ca=
lculation macros.
--

commit 8ac44d32c9e0b39cce390dd7dede7d192b0f5ad7
Author: John Madieu <john.madieu.xa@bp.renesas.com>

ASoC: rsnd: Add RZ/G3E DMA address calculation support

This commit adds a dedicated DMA address calculation function for the
RZ/G3E platform, which has different DMA register base addresses and offsets
compared to other R-Car platforms.

> diff --git a/sound/soc/renesas/rcar/dma.c b/sound/soc/renesas/rcar/dma.c
> index 24c23cb893906..ede0123d40eb5 100644
> --- a/sound/soc/renesas/rcar/dma.c
> +++ b/sound/soc/renesas/rcar/dma.c

[ ... ]

> +/* RZ/G3E DMA address macros */
> +#define RDMA_SSI_I_N_G3E(addr, i)	(addr ##_reg + 0x0000F000 + (0x1000 * =
i))
> +#define RDMA_SSI_O_N_G3E(addr, i)	(addr ##_reg + 0x0000F000 + (0x1000 * =
i))

This isn't a bug, but could the 'i' parameter be wrapped in parentheses?

While 'i' is currently passed as a single variable ('id'), using (0x1000 * =
(i))
would prevent incorrect address calculations due to operator precedence if =
an
expression is ever passed as an argument in the future.

Does it make sense to update the SRC and CMD macros below as well?

> +
> +#define RDMA_SSIU_I_N_G3E(addr, i, j)	(addr ##_reg + 0x0000F000 + (0x100=
0 * (i)) + (((j) / 4) * 0xA000) + (((j) % 4) * 0x400) - (0x4000 * ((i) / 9)=
 * ((j) / 4)))
> +#define RDMA_SSIU_O_N_G3E(addr, i, j)	RDMA_SSIU_I_N_G3E(addr, i, j)

[ ... ]

> +static dma_addr_t
> +rsnd_rzg3e_dma_addr(struct rsnd_dai_stream *io,
> +		    struct rsnd_mod *mod, int is_play, int is_from)
> +{
> +	struct rsnd_priv *priv =3D rsnd_io_to_priv(io);
> +	phys_addr_t ssi_reg =3D rsnd_gen_get_phy_addr(priv, RSND_BASE_SSI);
> +	phys_addr_t src_reg =3D rsnd_gen_get_phy_addr(priv, RSND_BASE_SCU);
> +	int id    =3D rsnd_mod_id(mod);
> +	int busif =3D rsnd_mod_id_sub(rsnd_io_to_mod_ssiu(io));

Can this result in a NULL pointer dereference?

If the ALSA stream does not have an SSIU module attached (like when the
device tree omits the SSIU node, or the SSI is configured for PIO mode via
the pio-transfer property), rsnd_io_to_mod_ssiu(io) will return NULL.

Looking at rsnd_mod_id_sub(), it unconditionally dereferences the pointer:

sound/soc/renesas/rcar/core.c:rsnd_mod_id_sub() {
        if ((mod)->ops->id_sub)
                return (mod)->ops->id_sub(mod);
       =20
        return 0;
}

Could this trigger a panic on stream open in valid configurations like
[SRC] -> [SSI (PIO)]?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260512182631.3842=
065-1-john.madieu.xa@bp.renesas.com?part=3D8

